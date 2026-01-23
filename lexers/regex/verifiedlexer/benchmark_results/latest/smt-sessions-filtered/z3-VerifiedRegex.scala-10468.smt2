; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540508 () Bool)

(assert start!540508)

(declare-fun b!5121012 () Bool)

(declare-fun e!3193819 () Bool)

(declare-datatypes ((C!28720 0))(
  ( (C!28721 (val!24012 Int)) )
))
(declare-datatypes ((List!59375 0))(
  ( (Nil!59251) (Cons!59251 (h!65699 C!28720) (t!372394 List!59375)) )
))
(declare-fun lt!2111207 () List!59375)

(declare-fun lt!2111210 () Int)

(declare-fun size!39533 (List!59375) Int)

(assert (=> b!5121012 (= e!3193819 (<= (size!39533 lt!2111207) lt!2111210))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14227 0))(
  ( (ElementMatch!14227 (c!880005 C!28720)) (Concat!23072 (regOne!28966 Regex!14227) (regTwo!28966 Regex!14227)) (EmptyExpr!14227) (Star!14227 (reg!14556 Regex!14227)) (EmptyLang!14227) (Union!14227 (regOne!28967 Regex!14227) (regTwo!28967 Regex!14227)) )
))
(declare-datatypes ((List!59376 0))(
  ( (Nil!59252) (Cons!59252 (h!65700 Regex!14227) (t!372395 List!59376)) )
))
(declare-datatypes ((Context!7222 0))(
  ( (Context!7223 (exprs!4111 List!59376)) )
))
(declare-fun z!4463 () (InoxSet Context!7222))

(declare-fun baseZ!46 () (InoxSet Context!7222))

(declare-fun lt!2111206 () C!28720)

(declare-fun derivationZipper!124 ((InoxSet Context!7222) List!59375) (InoxSet Context!7222))

(declare-fun derivationStepZipper!850 ((InoxSet Context!7222) C!28720) (InoxSet Context!7222))

(assert (=> b!5121012 (= (derivationZipper!124 baseZ!46 lt!2111207) (derivationStepZipper!850 z!4463 lt!2111206))))

(declare-fun testedP!265 () List!59375)

(declare-datatypes ((Unit!150389 0))(
  ( (Unit!150390) )
))
(declare-fun lt!2111212 () Unit!150389)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!71 ((InoxSet Context!7222) (InoxSet Context!7222) List!59375 C!28720) Unit!150389)

(assert (=> b!5121012 (= lt!2111212 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!71 baseZ!46 z!4463 testedP!265 lt!2111206))))

(declare-fun input!5745 () List!59375)

(declare-fun isPrefix!5632 (List!59375 List!59375) Bool)

(assert (=> b!5121012 (isPrefix!5632 lt!2111207 input!5745)))

(declare-fun lt!2111211 () Unit!150389)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1006 (List!59375 List!59375) Unit!150389)

(assert (=> b!5121012 (= lt!2111211 (lemmaAddHeadSuffixToPrefixStillPrefix!1006 testedP!265 input!5745))))

(declare-fun ++!13040 (List!59375 List!59375) List!59375)

(assert (=> b!5121012 (= lt!2111207 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251)))))

(declare-fun head!10943 (List!59375) C!28720)

(declare-fun getSuffix!3304 (List!59375 List!59375) List!59375)

(assert (=> b!5121012 (= lt!2111206 (head!10943 (getSuffix!3304 input!5745 testedP!265)))))

(declare-fun e!3193813 () Bool)

(declare-fun tp!1428713 () Bool)

(declare-fun setRes!30411 () Bool)

(declare-fun setElem!30411 () Context!7222)

(declare-fun setNonEmpty!30411 () Bool)

(declare-fun inv!78748 (Context!7222) Bool)

(assert (=> setNonEmpty!30411 (= setRes!30411 (and tp!1428713 (inv!78748 setElem!30411) e!3193813))))

(declare-fun setRest!30412 () (InoxSet Context!7222))

(assert (=> setNonEmpty!30411 (= z!4463 ((_ map or) (store ((as const (Array Context!7222 Bool)) false) setElem!30411 true) setRest!30412))))

(declare-fun b!5121013 () Bool)

(declare-fun tp!1428711 () Bool)

(assert (=> b!5121013 (= e!3193813 tp!1428711)))

(declare-fun b!5121014 () Bool)

(declare-fun e!3193816 () Bool)

(declare-fun tp!1428715 () Bool)

(assert (=> b!5121014 (= e!3193816 tp!1428715)))

(declare-fun setIsEmpty!30411 () Bool)

(assert (=> setIsEmpty!30411 setRes!30411))

(declare-fun res!2180548 () Bool)

(declare-fun e!3193817 () Bool)

(assert (=> start!540508 (=> (not res!2180548) (not e!3193817))))

(assert (=> start!540508 (= res!2180548 (isPrefix!5632 testedP!265 input!5745))))

(assert (=> start!540508 e!3193817))

(declare-fun e!3193815 () Bool)

(assert (=> start!540508 e!3193815))

(declare-fun condSetEmpty!30411 () Bool)

(assert (=> start!540508 (= condSetEmpty!30411 (= z!4463 ((as const (Array Context!7222 Bool)) false)))))

(assert (=> start!540508 setRes!30411))

(declare-fun e!3193812 () Bool)

(assert (=> start!540508 e!3193812))

(declare-fun condSetEmpty!30412 () Bool)

(assert (=> start!540508 (= condSetEmpty!30412 (= baseZ!46 ((as const (Array Context!7222 Bool)) false)))))

(declare-fun setRes!30412 () Bool)

(assert (=> start!540508 setRes!30412))

(declare-fun e!3193814 () Bool)

(assert (=> start!540508 e!3193814))

(declare-fun b!5121015 () Bool)

(declare-fun e!3193818 () Bool)

(assert (=> b!5121015 (= e!3193818 (not e!3193819))))

(declare-fun res!2180549 () Bool)

(assert (=> b!5121015 (=> res!2180549 e!3193819)))

(declare-fun knownP!20 () List!59375)

(declare-fun matchZipper!895 ((InoxSet Context!7222) List!59375) Bool)

(assert (=> b!5121015 (= res!2180549 (not (matchZipper!895 z!4463 (getSuffix!3304 knownP!20 testedP!265))))))

(assert (=> b!5121015 (isPrefix!5632 testedP!265 knownP!20)))

(declare-fun lt!2111208 () Unit!150389)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!767 (List!59375 List!59375 List!59375) Unit!150389)

(assert (=> b!5121015 (= lt!2111208 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!767 knownP!20 testedP!265 input!5745))))

(declare-fun b!5121016 () Bool)

(declare-fun tp_is_empty!37727 () Bool)

(declare-fun tp!1428712 () Bool)

(assert (=> b!5121016 (= e!3193815 (and tp_is_empty!37727 tp!1428712))))

(declare-fun b!5121017 () Bool)

(declare-fun res!2180544 () Bool)

(assert (=> b!5121017 (=> res!2180544 e!3193819)))

(declare-fun lt!2111209 () Int)

(assert (=> b!5121017 (= res!2180544 (= lt!2111209 lt!2111210))))

(declare-fun setIsEmpty!30412 () Bool)

(assert (=> setIsEmpty!30412 setRes!30412))

(declare-fun b!5121018 () Bool)

(declare-fun tp!1428709 () Bool)

(assert (=> b!5121018 (= e!3193812 (and tp_is_empty!37727 tp!1428709))))

(declare-fun b!5121019 () Bool)

(assert (=> b!5121019 (= e!3193817 e!3193818)))

(declare-fun res!2180546 () Bool)

(assert (=> b!5121019 (=> (not res!2180546) (not e!3193818))))

(assert (=> b!5121019 (= res!2180546 (>= lt!2111210 lt!2111209))))

(assert (=> b!5121019 (= lt!2111209 (size!39533 testedP!265))))

(assert (=> b!5121019 (= lt!2111210 (size!39533 knownP!20))))

(declare-fun b!5121020 () Bool)

(declare-fun res!2180551 () Bool)

(assert (=> b!5121020 (=> res!2180551 e!3193819)))

(assert (=> b!5121020 (= res!2180551 (not (= (derivationZipper!124 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5121021 () Bool)

(declare-fun res!2180547 () Bool)

(assert (=> b!5121021 (=> res!2180547 e!3193819)))

(assert (=> b!5121021 (= res!2180547 (>= lt!2111209 (size!39533 input!5745)))))

(declare-fun b!5121022 () Bool)

(declare-fun tp!1428714 () Bool)

(assert (=> b!5121022 (= e!3193814 (and tp_is_empty!37727 tp!1428714))))

(declare-fun b!5121023 () Bool)

(declare-fun res!2180552 () Bool)

(assert (=> b!5121023 (=> (not res!2180552) (not e!3193817))))

(assert (=> b!5121023 (= res!2180552 (isPrefix!5632 knownP!20 input!5745))))

(declare-fun tp!1428710 () Bool)

(declare-fun setElem!30412 () Context!7222)

(declare-fun setNonEmpty!30412 () Bool)

(assert (=> setNonEmpty!30412 (= setRes!30412 (and tp!1428710 (inv!78748 setElem!30412) e!3193816))))

(declare-fun setRest!30411 () (InoxSet Context!7222))

(assert (=> setNonEmpty!30412 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7222 Bool)) false) setElem!30412 true) setRest!30411))))

(declare-fun b!5121024 () Bool)

(declare-fun res!2180545 () Bool)

(assert (=> b!5121024 (=> res!2180545 e!3193819)))

(declare-fun lostCauseZipper!1109 ((InoxSet Context!7222)) Bool)

(assert (=> b!5121024 (= res!2180545 (lostCauseZipper!1109 z!4463))))

(declare-fun b!5121025 () Bool)

(declare-fun res!2180550 () Bool)

(assert (=> b!5121025 (=> (not res!2180550) (not e!3193818))))

(assert (=> b!5121025 (= res!2180550 (matchZipper!895 baseZ!46 knownP!20))))

(assert (= (and start!540508 res!2180548) b!5121023))

(assert (= (and b!5121023 res!2180552) b!5121019))

(assert (= (and b!5121019 res!2180546) b!5121025))

(assert (= (and b!5121025 res!2180550) b!5121015))

(assert (= (and b!5121015 (not res!2180549)) b!5121020))

(assert (= (and b!5121020 (not res!2180551)) b!5121024))

(assert (= (and b!5121024 (not res!2180545)) b!5121017))

(assert (= (and b!5121017 (not res!2180544)) b!5121021))

(assert (= (and b!5121021 (not res!2180547)) b!5121012))

(get-info :version)

(assert (= (and start!540508 ((_ is Cons!59251) input!5745)) b!5121016))

(assert (= (and start!540508 condSetEmpty!30411) setIsEmpty!30411))

(assert (= (and start!540508 (not condSetEmpty!30411)) setNonEmpty!30411))

(assert (= setNonEmpty!30411 b!5121013))

(assert (= (and start!540508 ((_ is Cons!59251) testedP!265)) b!5121018))

(assert (= (and start!540508 condSetEmpty!30412) setIsEmpty!30412))

(assert (= (and start!540508 (not condSetEmpty!30412)) setNonEmpty!30412))

(assert (= setNonEmpty!30412 b!5121014))

(assert (= (and start!540508 ((_ is Cons!59251) knownP!20)) b!5121022))

(declare-fun m!6182008 () Bool)

(assert (=> b!5121020 m!6182008))

(declare-fun m!6182010 () Bool)

(assert (=> b!5121024 m!6182010))

(declare-fun m!6182012 () Bool)

(assert (=> setNonEmpty!30412 m!6182012))

(declare-fun m!6182014 () Bool)

(assert (=> b!5121023 m!6182014))

(declare-fun m!6182016 () Bool)

(assert (=> setNonEmpty!30411 m!6182016))

(declare-fun m!6182018 () Bool)

(assert (=> b!5121019 m!6182018))

(declare-fun m!6182020 () Bool)

(assert (=> b!5121019 m!6182020))

(declare-fun m!6182022 () Bool)

(assert (=> b!5121025 m!6182022))

(declare-fun m!6182024 () Bool)

(assert (=> start!540508 m!6182024))

(declare-fun m!6182026 () Bool)

(assert (=> b!5121021 m!6182026))

(declare-fun m!6182028 () Bool)

(assert (=> b!5121012 m!6182028))

(assert (=> b!5121012 m!6182028))

(declare-fun m!6182030 () Bool)

(assert (=> b!5121012 m!6182030))

(declare-fun m!6182032 () Bool)

(assert (=> b!5121012 m!6182032))

(declare-fun m!6182034 () Bool)

(assert (=> b!5121012 m!6182034))

(declare-fun m!6182036 () Bool)

(assert (=> b!5121012 m!6182036))

(declare-fun m!6182038 () Bool)

(assert (=> b!5121012 m!6182038))

(declare-fun m!6182040 () Bool)

(assert (=> b!5121012 m!6182040))

(declare-fun m!6182042 () Bool)

(assert (=> b!5121012 m!6182042))

(declare-fun m!6182044 () Bool)

(assert (=> b!5121012 m!6182044))

(declare-fun m!6182046 () Bool)

(assert (=> b!5121015 m!6182046))

(assert (=> b!5121015 m!6182046))

(declare-fun m!6182048 () Bool)

(assert (=> b!5121015 m!6182048))

(declare-fun m!6182050 () Bool)

(assert (=> b!5121015 m!6182050))

(declare-fun m!6182052 () Bool)

(assert (=> b!5121015 m!6182052))

(check-sat tp_is_empty!37727 (not start!540508) (not b!5121020) (not b!5121015) (not setNonEmpty!30411) (not b!5121024) (not b!5121014) (not b!5121023) (not b!5121019) (not setNonEmpty!30412) (not b!5121021) (not b!5121016) (not b!5121025) (not b!5121022) (not b!5121012) (not b!5121013) (not b!5121018))
(check-sat)
(get-model)

(declare-fun d!1655091 () Bool)

(declare-fun lambda!251339 () Int)

(declare-fun forall!13616 (List!59376 Int) Bool)

(assert (=> d!1655091 (= (inv!78748 setElem!30412) (forall!13616 (exprs!4111 setElem!30412) lambda!251339))))

(declare-fun bs!1192790 () Bool)

(assert (= bs!1192790 d!1655091))

(declare-fun m!6182170 () Bool)

(assert (=> bs!1192790 m!6182170))

(assert (=> setNonEmpty!30412 d!1655091))

(declare-fun b!5121135 () Bool)

(declare-fun e!3193888 () Bool)

(declare-fun tail!10078 (List!59375) List!59375)

(assert (=> b!5121135 (= e!3193888 (isPrefix!5632 (tail!10078 testedP!265) (tail!10078 input!5745)))))

(declare-fun b!5121134 () Bool)

(declare-fun res!2180591 () Bool)

(assert (=> b!5121134 (=> (not res!2180591) (not e!3193888))))

(assert (=> b!5121134 (= res!2180591 (= (head!10943 testedP!265) (head!10943 input!5745)))))

(declare-fun b!5121133 () Bool)

(declare-fun e!3193890 () Bool)

(assert (=> b!5121133 (= e!3193890 e!3193888)))

(declare-fun res!2180594 () Bool)

(assert (=> b!5121133 (=> (not res!2180594) (not e!3193888))))

(assert (=> b!5121133 (= res!2180594 (not ((_ is Nil!59251) input!5745)))))

(declare-fun d!1655137 () Bool)

(declare-fun e!3193889 () Bool)

(assert (=> d!1655137 e!3193889))

(declare-fun res!2180592 () Bool)

(assert (=> d!1655137 (=> res!2180592 e!3193889)))

(declare-fun lt!2111267 () Bool)

(assert (=> d!1655137 (= res!2180592 (not lt!2111267))))

(assert (=> d!1655137 (= lt!2111267 e!3193890)))

(declare-fun res!2180593 () Bool)

(assert (=> d!1655137 (=> res!2180593 e!3193890)))

(assert (=> d!1655137 (= res!2180593 ((_ is Nil!59251) testedP!265))))

(assert (=> d!1655137 (= (isPrefix!5632 testedP!265 input!5745) lt!2111267)))

(declare-fun b!5121136 () Bool)

(assert (=> b!5121136 (= e!3193889 (>= (size!39533 input!5745) (size!39533 testedP!265)))))

(assert (= (and d!1655137 (not res!2180593)) b!5121133))

(assert (= (and b!5121133 res!2180594) b!5121134))

(assert (= (and b!5121134 res!2180591) b!5121135))

(assert (= (and d!1655137 (not res!2180592)) b!5121136))

(declare-fun m!6182172 () Bool)

(assert (=> b!5121135 m!6182172))

(declare-fun m!6182174 () Bool)

(assert (=> b!5121135 m!6182174))

(assert (=> b!5121135 m!6182172))

(assert (=> b!5121135 m!6182174))

(declare-fun m!6182176 () Bool)

(assert (=> b!5121135 m!6182176))

(declare-fun m!6182178 () Bool)

(assert (=> b!5121134 m!6182178))

(declare-fun m!6182180 () Bool)

(assert (=> b!5121134 m!6182180))

(assert (=> b!5121136 m!6182026))

(assert (=> b!5121136 m!6182018))

(assert (=> start!540508 d!1655137))

(declare-fun b!5121139 () Bool)

(declare-fun e!3193891 () Bool)

(assert (=> b!5121139 (= e!3193891 (isPrefix!5632 (tail!10078 knownP!20) (tail!10078 input!5745)))))

(declare-fun b!5121138 () Bool)

(declare-fun res!2180595 () Bool)

(assert (=> b!5121138 (=> (not res!2180595) (not e!3193891))))

(assert (=> b!5121138 (= res!2180595 (= (head!10943 knownP!20) (head!10943 input!5745)))))

(declare-fun b!5121137 () Bool)

(declare-fun e!3193893 () Bool)

(assert (=> b!5121137 (= e!3193893 e!3193891)))

(declare-fun res!2180598 () Bool)

(assert (=> b!5121137 (=> (not res!2180598) (not e!3193891))))

(assert (=> b!5121137 (= res!2180598 (not ((_ is Nil!59251) input!5745)))))

(declare-fun d!1655139 () Bool)

(declare-fun e!3193892 () Bool)

(assert (=> d!1655139 e!3193892))

(declare-fun res!2180596 () Bool)

(assert (=> d!1655139 (=> res!2180596 e!3193892)))

(declare-fun lt!2111268 () Bool)

(assert (=> d!1655139 (= res!2180596 (not lt!2111268))))

(assert (=> d!1655139 (= lt!2111268 e!3193893)))

(declare-fun res!2180597 () Bool)

(assert (=> d!1655139 (=> res!2180597 e!3193893)))

(assert (=> d!1655139 (= res!2180597 ((_ is Nil!59251) knownP!20))))

(assert (=> d!1655139 (= (isPrefix!5632 knownP!20 input!5745) lt!2111268)))

(declare-fun b!5121140 () Bool)

(assert (=> b!5121140 (= e!3193892 (>= (size!39533 input!5745) (size!39533 knownP!20)))))

(assert (= (and d!1655139 (not res!2180597)) b!5121137))

(assert (= (and b!5121137 res!2180598) b!5121138))

(assert (= (and b!5121138 res!2180595) b!5121139))

(assert (= (and d!1655139 (not res!2180596)) b!5121140))

(declare-fun m!6182182 () Bool)

(assert (=> b!5121139 m!6182182))

(assert (=> b!5121139 m!6182174))

(assert (=> b!5121139 m!6182182))

(assert (=> b!5121139 m!6182174))

(declare-fun m!6182184 () Bool)

(assert (=> b!5121139 m!6182184))

(declare-fun m!6182186 () Bool)

(assert (=> b!5121138 m!6182186))

(assert (=> b!5121138 m!6182180))

(assert (=> b!5121140 m!6182026))

(assert (=> b!5121140 m!6182020))

(assert (=> b!5121023 d!1655139))

(declare-fun d!1655141 () Bool)

(declare-fun c!880043 () Bool)

(assert (=> d!1655141 (= c!880043 ((_ is Cons!59251) testedP!265))))

(declare-fun e!3193896 () (InoxSet Context!7222))

(assert (=> d!1655141 (= (derivationZipper!124 baseZ!46 testedP!265) e!3193896)))

(declare-fun b!5121145 () Bool)

(assert (=> b!5121145 (= e!3193896 (derivationZipper!124 (derivationStepZipper!850 baseZ!46 (h!65699 testedP!265)) (t!372394 testedP!265)))))

(declare-fun b!5121146 () Bool)

(assert (=> b!5121146 (= e!3193896 baseZ!46)))

(assert (= (and d!1655141 c!880043) b!5121145))

(assert (= (and d!1655141 (not c!880043)) b!5121146))

(declare-fun m!6182188 () Bool)

(assert (=> b!5121145 m!6182188))

(assert (=> b!5121145 m!6182188))

(declare-fun m!6182190 () Bool)

(assert (=> b!5121145 m!6182190))

(assert (=> b!5121020 d!1655141))

(declare-fun d!1655143 () Bool)

(declare-fun lt!2111271 () List!59375)

(assert (=> d!1655143 (= (++!13040 testedP!265 lt!2111271) input!5745)))

(declare-fun e!3193899 () List!59375)

(assert (=> d!1655143 (= lt!2111271 e!3193899)))

(declare-fun c!880046 () Bool)

(assert (=> d!1655143 (= c!880046 ((_ is Cons!59251) testedP!265))))

(assert (=> d!1655143 (>= (size!39533 input!5745) (size!39533 testedP!265))))

(assert (=> d!1655143 (= (getSuffix!3304 input!5745 testedP!265) lt!2111271)))

(declare-fun b!5121151 () Bool)

(assert (=> b!5121151 (= e!3193899 (getSuffix!3304 (tail!10078 input!5745) (t!372394 testedP!265)))))

(declare-fun b!5121152 () Bool)

(assert (=> b!5121152 (= e!3193899 input!5745)))

(assert (= (and d!1655143 c!880046) b!5121151))

(assert (= (and d!1655143 (not c!880046)) b!5121152))

(declare-fun m!6182192 () Bool)

(assert (=> d!1655143 m!6182192))

(assert (=> d!1655143 m!6182026))

(assert (=> d!1655143 m!6182018))

(assert (=> b!5121151 m!6182174))

(assert (=> b!5121151 m!6182174))

(declare-fun m!6182194 () Bool)

(assert (=> b!5121151 m!6182194))

(assert (=> b!5121012 d!1655143))

(declare-fun d!1655145 () Bool)

(declare-fun e!3193905 () Bool)

(assert (=> d!1655145 e!3193905))

(declare-fun res!2180603 () Bool)

(assert (=> d!1655145 (=> (not res!2180603) (not e!3193905))))

(declare-fun lt!2111274 () List!59375)

(declare-fun content!10535 (List!59375) (InoxSet C!28720))

(assert (=> d!1655145 (= res!2180603 (= (content!10535 lt!2111274) ((_ map or) (content!10535 testedP!265) (content!10535 (Cons!59251 lt!2111206 Nil!59251)))))))

(declare-fun e!3193904 () List!59375)

(assert (=> d!1655145 (= lt!2111274 e!3193904)))

(declare-fun c!880049 () Bool)

(assert (=> d!1655145 (= c!880049 ((_ is Nil!59251) testedP!265))))

(assert (=> d!1655145 (= (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251)) lt!2111274)))

(declare-fun b!5121163 () Bool)

(declare-fun res!2180604 () Bool)

(assert (=> b!5121163 (=> (not res!2180604) (not e!3193905))))

(assert (=> b!5121163 (= res!2180604 (= (size!39533 lt!2111274) (+ (size!39533 testedP!265) (size!39533 (Cons!59251 lt!2111206 Nil!59251)))))))

(declare-fun b!5121161 () Bool)

(assert (=> b!5121161 (= e!3193904 (Cons!59251 lt!2111206 Nil!59251))))

(declare-fun b!5121164 () Bool)

(assert (=> b!5121164 (= e!3193905 (or (not (= (Cons!59251 lt!2111206 Nil!59251) Nil!59251)) (= lt!2111274 testedP!265)))))

(declare-fun b!5121162 () Bool)

(assert (=> b!5121162 (= e!3193904 (Cons!59251 (h!65699 testedP!265) (++!13040 (t!372394 testedP!265) (Cons!59251 lt!2111206 Nil!59251))))))

(assert (= (and d!1655145 c!880049) b!5121161))

(assert (= (and d!1655145 (not c!880049)) b!5121162))

(assert (= (and d!1655145 res!2180603) b!5121163))

(assert (= (and b!5121163 res!2180604) b!5121164))

(declare-fun m!6182196 () Bool)

(assert (=> d!1655145 m!6182196))

(declare-fun m!6182198 () Bool)

(assert (=> d!1655145 m!6182198))

(declare-fun m!6182200 () Bool)

(assert (=> d!1655145 m!6182200))

(declare-fun m!6182202 () Bool)

(assert (=> b!5121163 m!6182202))

(assert (=> b!5121163 m!6182018))

(declare-fun m!6182204 () Bool)

(assert (=> b!5121163 m!6182204))

(declare-fun m!6182206 () Bool)

(assert (=> b!5121162 m!6182206))

(assert (=> b!5121012 d!1655145))

(declare-fun b!5121167 () Bool)

(declare-fun e!3193906 () Bool)

(assert (=> b!5121167 (= e!3193906 (isPrefix!5632 (tail!10078 lt!2111207) (tail!10078 input!5745)))))

(declare-fun b!5121166 () Bool)

(declare-fun res!2180605 () Bool)

(assert (=> b!5121166 (=> (not res!2180605) (not e!3193906))))

(assert (=> b!5121166 (= res!2180605 (= (head!10943 lt!2111207) (head!10943 input!5745)))))

(declare-fun b!5121165 () Bool)

(declare-fun e!3193908 () Bool)

(assert (=> b!5121165 (= e!3193908 e!3193906)))

(declare-fun res!2180608 () Bool)

(assert (=> b!5121165 (=> (not res!2180608) (not e!3193906))))

(assert (=> b!5121165 (= res!2180608 (not ((_ is Nil!59251) input!5745)))))

(declare-fun d!1655147 () Bool)

(declare-fun e!3193907 () Bool)

(assert (=> d!1655147 e!3193907))

(declare-fun res!2180606 () Bool)

(assert (=> d!1655147 (=> res!2180606 e!3193907)))

(declare-fun lt!2111275 () Bool)

(assert (=> d!1655147 (= res!2180606 (not lt!2111275))))

(assert (=> d!1655147 (= lt!2111275 e!3193908)))

(declare-fun res!2180607 () Bool)

(assert (=> d!1655147 (=> res!2180607 e!3193908)))

(assert (=> d!1655147 (= res!2180607 ((_ is Nil!59251) lt!2111207))))

(assert (=> d!1655147 (= (isPrefix!5632 lt!2111207 input!5745) lt!2111275)))

(declare-fun b!5121168 () Bool)

(assert (=> b!5121168 (= e!3193907 (>= (size!39533 input!5745) (size!39533 lt!2111207)))))

(assert (= (and d!1655147 (not res!2180607)) b!5121165))

(assert (= (and b!5121165 res!2180608) b!5121166))

(assert (= (and b!5121166 res!2180605) b!5121167))

(assert (= (and d!1655147 (not res!2180606)) b!5121168))

(declare-fun m!6182208 () Bool)

(assert (=> b!5121167 m!6182208))

(assert (=> b!5121167 m!6182174))

(assert (=> b!5121167 m!6182208))

(assert (=> b!5121167 m!6182174))

(declare-fun m!6182210 () Bool)

(assert (=> b!5121167 m!6182210))

(declare-fun m!6182212 () Bool)

(assert (=> b!5121166 m!6182212))

(assert (=> b!5121166 m!6182180))

(assert (=> b!5121168 m!6182026))

(assert (=> b!5121168 m!6182042))

(assert (=> b!5121012 d!1655147))

(declare-fun d!1655149 () Bool)

(assert (=> d!1655149 (= (derivationZipper!124 baseZ!46 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) (derivationStepZipper!850 z!4463 lt!2111206))))

(declare-fun lt!2111278 () Unit!150389)

(declare-fun choose!37651 ((InoxSet Context!7222) (InoxSet Context!7222) List!59375 C!28720) Unit!150389)

(assert (=> d!1655149 (= lt!2111278 (choose!37651 baseZ!46 z!4463 testedP!265 lt!2111206))))

(assert (=> d!1655149 (= (derivationZipper!124 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1655149 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!71 baseZ!46 z!4463 testedP!265 lt!2111206) lt!2111278)))

(declare-fun bs!1192791 () Bool)

(assert (= bs!1192791 d!1655149))

(assert (=> bs!1192791 m!6182038))

(assert (=> bs!1192791 m!6182032))

(declare-fun m!6182214 () Bool)

(assert (=> bs!1192791 m!6182214))

(assert (=> bs!1192791 m!6182008))

(assert (=> bs!1192791 m!6182032))

(declare-fun m!6182216 () Bool)

(assert (=> bs!1192791 m!6182216))

(assert (=> b!5121012 d!1655149))

(declare-fun d!1655151 () Bool)

(assert (=> d!1655151 (isPrefix!5632 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)) input!5745)))

(declare-fun lt!2111281 () Unit!150389)

(declare-fun choose!37652 (List!59375 List!59375) Unit!150389)

(assert (=> d!1655151 (= lt!2111281 (choose!37652 testedP!265 input!5745))))

(assert (=> d!1655151 (isPrefix!5632 testedP!265 input!5745)))

(assert (=> d!1655151 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1006 testedP!265 input!5745) lt!2111281)))

(declare-fun bs!1192792 () Bool)

(assert (= bs!1192792 d!1655151))

(declare-fun m!6182218 () Bool)

(assert (=> bs!1192792 m!6182218))

(assert (=> bs!1192792 m!6182024))

(declare-fun m!6182220 () Bool)

(assert (=> bs!1192792 m!6182220))

(assert (=> bs!1192792 m!6182028))

(assert (=> bs!1192792 m!6182030))

(assert (=> bs!1192792 m!6182220))

(declare-fun m!6182222 () Bool)

(assert (=> bs!1192792 m!6182222))

(assert (=> bs!1192792 m!6182028))

(assert (=> b!5121012 d!1655151))

(declare-fun d!1655153 () Bool)

(declare-fun c!880051 () Bool)

(assert (=> d!1655153 (= c!880051 ((_ is Cons!59251) lt!2111207))))

(declare-fun e!3193909 () (InoxSet Context!7222))

(assert (=> d!1655153 (= (derivationZipper!124 baseZ!46 lt!2111207) e!3193909)))

(declare-fun b!5121169 () Bool)

(assert (=> b!5121169 (= e!3193909 (derivationZipper!124 (derivationStepZipper!850 baseZ!46 (h!65699 lt!2111207)) (t!372394 lt!2111207)))))

(declare-fun b!5121170 () Bool)

(assert (=> b!5121170 (= e!3193909 baseZ!46)))

(assert (= (and d!1655153 c!880051) b!5121169))

(assert (= (and d!1655153 (not c!880051)) b!5121170))

(declare-fun m!6182224 () Bool)

(assert (=> b!5121169 m!6182224))

(assert (=> b!5121169 m!6182224))

(declare-fun m!6182226 () Bool)

(assert (=> b!5121169 m!6182226))

(assert (=> b!5121012 d!1655153))

(declare-fun d!1655155 () Bool)

(assert (=> d!1655155 true))

(declare-fun lambda!251342 () Int)

(declare-fun flatMap!361 ((InoxSet Context!7222) Int) (InoxSet Context!7222))

(assert (=> d!1655155 (= (derivationStepZipper!850 z!4463 lt!2111206) (flatMap!361 z!4463 lambda!251342))))

(declare-fun bs!1192793 () Bool)

(assert (= bs!1192793 d!1655155))

(declare-fun m!6182228 () Bool)

(assert (=> bs!1192793 m!6182228))

(assert (=> b!5121012 d!1655155))

(declare-fun d!1655157 () Bool)

(declare-fun lt!2111284 () Int)

(assert (=> d!1655157 (>= lt!2111284 0)))

(declare-fun e!3193912 () Int)

(assert (=> d!1655157 (= lt!2111284 e!3193912)))

(declare-fun c!880056 () Bool)

(assert (=> d!1655157 (= c!880056 ((_ is Nil!59251) lt!2111207))))

(assert (=> d!1655157 (= (size!39533 lt!2111207) lt!2111284)))

(declare-fun b!5121177 () Bool)

(assert (=> b!5121177 (= e!3193912 0)))

(declare-fun b!5121178 () Bool)

(assert (=> b!5121178 (= e!3193912 (+ 1 (size!39533 (t!372394 lt!2111207))))))

(assert (= (and d!1655157 c!880056) b!5121177))

(assert (= (and d!1655157 (not c!880056)) b!5121178))

(declare-fun m!6182230 () Bool)

(assert (=> b!5121178 m!6182230))

(assert (=> b!5121012 d!1655157))

(declare-fun d!1655159 () Bool)

(assert (=> d!1655159 (= (head!10943 (getSuffix!3304 input!5745 testedP!265)) (h!65699 (getSuffix!3304 input!5745 testedP!265)))))

(assert (=> b!5121012 d!1655159))

(declare-fun d!1655161 () Bool)

(declare-fun lt!2111285 () Int)

(assert (=> d!1655161 (>= lt!2111285 0)))

(declare-fun e!3193913 () Int)

(assert (=> d!1655161 (= lt!2111285 e!3193913)))

(declare-fun c!880057 () Bool)

(assert (=> d!1655161 (= c!880057 ((_ is Nil!59251) testedP!265))))

(assert (=> d!1655161 (= (size!39533 testedP!265) lt!2111285)))

(declare-fun b!5121179 () Bool)

(assert (=> b!5121179 (= e!3193913 0)))

(declare-fun b!5121180 () Bool)

(assert (=> b!5121180 (= e!3193913 (+ 1 (size!39533 (t!372394 testedP!265))))))

(assert (= (and d!1655161 c!880057) b!5121179))

(assert (= (and d!1655161 (not c!880057)) b!5121180))

(declare-fun m!6182232 () Bool)

(assert (=> b!5121180 m!6182232))

(assert (=> b!5121019 d!1655161))

(declare-fun d!1655163 () Bool)

(declare-fun lt!2111286 () Int)

(assert (=> d!1655163 (>= lt!2111286 0)))

(declare-fun e!3193914 () Int)

(assert (=> d!1655163 (= lt!2111286 e!3193914)))

(declare-fun c!880058 () Bool)

(assert (=> d!1655163 (= c!880058 ((_ is Nil!59251) knownP!20))))

(assert (=> d!1655163 (= (size!39533 knownP!20) lt!2111286)))

(declare-fun b!5121181 () Bool)

(assert (=> b!5121181 (= e!3193914 0)))

(declare-fun b!5121182 () Bool)

(assert (=> b!5121182 (= e!3193914 (+ 1 (size!39533 (t!372394 knownP!20))))))

(assert (= (and d!1655163 c!880058) b!5121181))

(assert (= (and d!1655163 (not c!880058)) b!5121182))

(declare-fun m!6182234 () Bool)

(assert (=> b!5121182 m!6182234))

(assert (=> b!5121019 d!1655163))

(declare-fun d!1655165 () Bool)

(declare-fun lt!2111287 () Int)

(assert (=> d!1655165 (>= lt!2111287 0)))

(declare-fun e!3193915 () Int)

(assert (=> d!1655165 (= lt!2111287 e!3193915)))

(declare-fun c!880059 () Bool)

(assert (=> d!1655165 (= c!880059 ((_ is Nil!59251) input!5745))))

(assert (=> d!1655165 (= (size!39533 input!5745) lt!2111287)))

(declare-fun b!5121183 () Bool)

(assert (=> b!5121183 (= e!3193915 0)))

(declare-fun b!5121184 () Bool)

(assert (=> b!5121184 (= e!3193915 (+ 1 (size!39533 (t!372394 input!5745))))))

(assert (= (and d!1655165 c!880059) b!5121183))

(assert (= (and d!1655165 (not c!880059)) b!5121184))

(declare-fun m!6182236 () Bool)

(assert (=> b!5121184 m!6182236))

(assert (=> b!5121021 d!1655165))

(declare-fun bs!1192794 () Bool)

(declare-fun d!1655167 () Bool)

(assert (= bs!1192794 (and d!1655167 d!1655091)))

(declare-fun lambda!251343 () Int)

(assert (=> bs!1192794 (= lambda!251343 lambda!251339)))

(assert (=> d!1655167 (= (inv!78748 setElem!30411) (forall!13616 (exprs!4111 setElem!30411) lambda!251343))))

(declare-fun bs!1192795 () Bool)

(assert (= bs!1192795 d!1655167))

(declare-fun m!6182238 () Bool)

(assert (=> bs!1192795 m!6182238))

(assert (=> setNonEmpty!30411 d!1655167))

(declare-fun bs!1192796 () Bool)

(declare-fun b!5121189 () Bool)

(declare-fun d!1655169 () Bool)

(assert (= bs!1192796 (and b!5121189 d!1655169)))

(declare-fun lambda!251357 () Int)

(declare-fun lambda!251356 () Int)

(assert (=> bs!1192796 (not (= lambda!251357 lambda!251356))))

(declare-fun bs!1192797 () Bool)

(declare-fun b!5121190 () Bool)

(assert (= bs!1192797 (and b!5121190 d!1655169)))

(declare-fun lambda!251358 () Int)

(assert (=> bs!1192797 (not (= lambda!251358 lambda!251356))))

(declare-fun bs!1192798 () Bool)

(assert (= bs!1192798 (and b!5121190 b!5121189)))

(assert (=> bs!1192798 (= lambda!251358 lambda!251357)))

(declare-fun e!3193922 () Unit!150389)

(declare-fun Unit!150393 () Unit!150389)

(assert (=> b!5121190 (= e!3193922 Unit!150393)))

(declare-datatypes ((List!59378 0))(
  ( (Nil!59254) (Cons!59254 (h!65702 Context!7222) (t!372397 List!59378)) )
))
(declare-fun lt!2111307 () List!59378)

(declare-fun call!356640 () List!59378)

(assert (=> b!5121190 (= lt!2111307 call!356640)))

(declare-fun lt!2111304 () Unit!150389)

(declare-fun lemmaForallThenNotExists!323 (List!59378 Int) Unit!150389)

(assert (=> b!5121190 (= lt!2111304 (lemmaForallThenNotExists!323 lt!2111307 lambda!251356))))

(declare-fun call!356641 () Bool)

(assert (=> b!5121190 (not call!356641)))

(declare-fun lt!2111305 () Unit!150389)

(assert (=> b!5121190 (= lt!2111305 lt!2111304)))

(declare-fun bm!356635 () Bool)

(declare-fun toList!8266 ((InoxSet Context!7222)) List!59378)

(assert (=> bm!356635 (= call!356640 (toList!8266 z!4463))))

(declare-fun Unit!150394 () Unit!150389)

(assert (=> b!5121189 (= e!3193922 Unit!150394)))

(declare-fun lt!2111306 () List!59378)

(assert (=> b!5121189 (= lt!2111306 call!356640)))

(declare-fun lt!2111309 () Unit!150389)

(declare-fun lemmaNotForallThenExists!340 (List!59378 Int) Unit!150389)

(assert (=> b!5121189 (= lt!2111309 (lemmaNotForallThenExists!340 lt!2111306 lambda!251356))))

(assert (=> b!5121189 call!356641))

(declare-fun lt!2111311 () Unit!150389)

(assert (=> b!5121189 (= lt!2111311 lt!2111309)))

(declare-fun bm!356636 () Bool)

(declare-fun c!880070 () Bool)

(declare-fun exists!1479 (List!59378 Int) Bool)

(assert (=> bm!356636 (= call!356641 (exists!1479 (ite c!880070 lt!2111306 lt!2111307) (ite c!880070 lambda!251357 lambda!251358)))))

(declare-fun lt!2111310 () Bool)

(declare-datatypes ((Option!14700 0))(
  ( (None!14699) (Some!14699 (v!50712 List!59375)) )
))
(declare-fun isEmpty!31940 (Option!14700) Bool)

(declare-fun getLanguageWitness!819 ((InoxSet Context!7222)) Option!14700)

(assert (=> d!1655169 (= lt!2111310 (isEmpty!31940 (getLanguageWitness!819 z!4463)))))

(declare-fun forall!13618 ((InoxSet Context!7222) Int) Bool)

(assert (=> d!1655169 (= lt!2111310 (forall!13618 z!4463 lambda!251356))))

(declare-fun lt!2111308 () Unit!150389)

(assert (=> d!1655169 (= lt!2111308 e!3193922)))

(assert (=> d!1655169 (= c!880070 (not (forall!13618 z!4463 lambda!251356)))))

(assert (=> d!1655169 (= (lostCauseZipper!1109 z!4463) lt!2111310)))

(assert (= (and d!1655169 c!880070) b!5121189))

(assert (= (and d!1655169 (not c!880070)) b!5121190))

(assert (= (or b!5121189 b!5121190) bm!356635))

(assert (= (or b!5121189 b!5121190) bm!356636))

(declare-fun m!6182240 () Bool)

(assert (=> d!1655169 m!6182240))

(assert (=> d!1655169 m!6182240))

(declare-fun m!6182242 () Bool)

(assert (=> d!1655169 m!6182242))

(declare-fun m!6182244 () Bool)

(assert (=> d!1655169 m!6182244))

(assert (=> d!1655169 m!6182244))

(declare-fun m!6182246 () Bool)

(assert (=> b!5121190 m!6182246))

(declare-fun m!6182248 () Bool)

(assert (=> bm!356635 m!6182248))

(declare-fun m!6182250 () Bool)

(assert (=> bm!356636 m!6182250))

(declare-fun m!6182252 () Bool)

(assert (=> b!5121189 m!6182252))

(assert (=> b!5121024 d!1655169))

(declare-fun d!1655171 () Bool)

(declare-fun c!880073 () Bool)

(declare-fun isEmpty!31941 (List!59375) Bool)

(assert (=> d!1655171 (= c!880073 (isEmpty!31941 (getSuffix!3304 knownP!20 testedP!265)))))

(declare-fun e!3193925 () Bool)

(assert (=> d!1655171 (= (matchZipper!895 z!4463 (getSuffix!3304 knownP!20 testedP!265)) e!3193925)))

(declare-fun b!5121195 () Bool)

(declare-fun nullableZipper!1030 ((InoxSet Context!7222)) Bool)

(assert (=> b!5121195 (= e!3193925 (nullableZipper!1030 z!4463))))

(declare-fun b!5121196 () Bool)

(assert (=> b!5121196 (= e!3193925 (matchZipper!895 (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (tail!10078 (getSuffix!3304 knownP!20 testedP!265))))))

(assert (= (and d!1655171 c!880073) b!5121195))

(assert (= (and d!1655171 (not c!880073)) b!5121196))

(assert (=> d!1655171 m!6182046))

(declare-fun m!6182254 () Bool)

(assert (=> d!1655171 m!6182254))

(declare-fun m!6182256 () Bool)

(assert (=> b!5121195 m!6182256))

(assert (=> b!5121196 m!6182046))

(declare-fun m!6182258 () Bool)

(assert (=> b!5121196 m!6182258))

(assert (=> b!5121196 m!6182258))

(declare-fun m!6182260 () Bool)

(assert (=> b!5121196 m!6182260))

(assert (=> b!5121196 m!6182046))

(declare-fun m!6182262 () Bool)

(assert (=> b!5121196 m!6182262))

(assert (=> b!5121196 m!6182260))

(assert (=> b!5121196 m!6182262))

(declare-fun m!6182264 () Bool)

(assert (=> b!5121196 m!6182264))

(assert (=> b!5121015 d!1655171))

(declare-fun d!1655173 () Bool)

(declare-fun lt!2111312 () List!59375)

(assert (=> d!1655173 (= (++!13040 testedP!265 lt!2111312) knownP!20)))

(declare-fun e!3193926 () List!59375)

(assert (=> d!1655173 (= lt!2111312 e!3193926)))

(declare-fun c!880074 () Bool)

(assert (=> d!1655173 (= c!880074 ((_ is Cons!59251) testedP!265))))

(assert (=> d!1655173 (>= (size!39533 knownP!20) (size!39533 testedP!265))))

(assert (=> d!1655173 (= (getSuffix!3304 knownP!20 testedP!265) lt!2111312)))

(declare-fun b!5121197 () Bool)

(assert (=> b!5121197 (= e!3193926 (getSuffix!3304 (tail!10078 knownP!20) (t!372394 testedP!265)))))

(declare-fun b!5121198 () Bool)

(assert (=> b!5121198 (= e!3193926 knownP!20)))

(assert (= (and d!1655173 c!880074) b!5121197))

(assert (= (and d!1655173 (not c!880074)) b!5121198))

(declare-fun m!6182266 () Bool)

(assert (=> d!1655173 m!6182266))

(assert (=> d!1655173 m!6182020))

(assert (=> d!1655173 m!6182018))

(assert (=> b!5121197 m!6182182))

(assert (=> b!5121197 m!6182182))

(declare-fun m!6182268 () Bool)

(assert (=> b!5121197 m!6182268))

(assert (=> b!5121015 d!1655173))

(declare-fun b!5121201 () Bool)

(declare-fun e!3193927 () Bool)

(assert (=> b!5121201 (= e!3193927 (isPrefix!5632 (tail!10078 testedP!265) (tail!10078 knownP!20)))))

(declare-fun b!5121200 () Bool)

(declare-fun res!2180609 () Bool)

(assert (=> b!5121200 (=> (not res!2180609) (not e!3193927))))

(assert (=> b!5121200 (= res!2180609 (= (head!10943 testedP!265) (head!10943 knownP!20)))))

(declare-fun b!5121199 () Bool)

(declare-fun e!3193929 () Bool)

(assert (=> b!5121199 (= e!3193929 e!3193927)))

(declare-fun res!2180612 () Bool)

(assert (=> b!5121199 (=> (not res!2180612) (not e!3193927))))

(assert (=> b!5121199 (= res!2180612 (not ((_ is Nil!59251) knownP!20)))))

(declare-fun d!1655175 () Bool)

(declare-fun e!3193928 () Bool)

(assert (=> d!1655175 e!3193928))

(declare-fun res!2180610 () Bool)

(assert (=> d!1655175 (=> res!2180610 e!3193928)))

(declare-fun lt!2111313 () Bool)

(assert (=> d!1655175 (= res!2180610 (not lt!2111313))))

(assert (=> d!1655175 (= lt!2111313 e!3193929)))

(declare-fun res!2180611 () Bool)

(assert (=> d!1655175 (=> res!2180611 e!3193929)))

(assert (=> d!1655175 (= res!2180611 ((_ is Nil!59251) testedP!265))))

(assert (=> d!1655175 (= (isPrefix!5632 testedP!265 knownP!20) lt!2111313)))

(declare-fun b!5121202 () Bool)

(assert (=> b!5121202 (= e!3193928 (>= (size!39533 knownP!20) (size!39533 testedP!265)))))

(assert (= (and d!1655175 (not res!2180611)) b!5121199))

(assert (= (and b!5121199 res!2180612) b!5121200))

(assert (= (and b!5121200 res!2180609) b!5121201))

(assert (= (and d!1655175 (not res!2180610)) b!5121202))

(assert (=> b!5121201 m!6182172))

(assert (=> b!5121201 m!6182182))

(assert (=> b!5121201 m!6182172))

(assert (=> b!5121201 m!6182182))

(declare-fun m!6182270 () Bool)

(assert (=> b!5121201 m!6182270))

(assert (=> b!5121200 m!6182178))

(assert (=> b!5121200 m!6182186))

(assert (=> b!5121202 m!6182020))

(assert (=> b!5121202 m!6182018))

(assert (=> b!5121015 d!1655175))

(declare-fun d!1655177 () Bool)

(assert (=> d!1655177 (isPrefix!5632 testedP!265 knownP!20)))

(declare-fun lt!2111316 () Unit!150389)

(declare-fun choose!37653 (List!59375 List!59375 List!59375) Unit!150389)

(assert (=> d!1655177 (= lt!2111316 (choose!37653 knownP!20 testedP!265 input!5745))))

(assert (=> d!1655177 (isPrefix!5632 knownP!20 input!5745)))

(assert (=> d!1655177 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!767 knownP!20 testedP!265 input!5745) lt!2111316)))

(declare-fun bs!1192799 () Bool)

(assert (= bs!1192799 d!1655177))

(assert (=> bs!1192799 m!6182050))

(declare-fun m!6182272 () Bool)

(assert (=> bs!1192799 m!6182272))

(assert (=> bs!1192799 m!6182014))

(assert (=> b!5121015 d!1655177))

(declare-fun d!1655179 () Bool)

(declare-fun c!880075 () Bool)

(assert (=> d!1655179 (= c!880075 (isEmpty!31941 knownP!20))))

(declare-fun e!3193930 () Bool)

(assert (=> d!1655179 (= (matchZipper!895 baseZ!46 knownP!20) e!3193930)))

(declare-fun b!5121203 () Bool)

(assert (=> b!5121203 (= e!3193930 (nullableZipper!1030 baseZ!46))))

(declare-fun b!5121204 () Bool)

(assert (=> b!5121204 (= e!3193930 (matchZipper!895 (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20)) (tail!10078 knownP!20)))))

(assert (= (and d!1655179 c!880075) b!5121203))

(assert (= (and d!1655179 (not c!880075)) b!5121204))

(declare-fun m!6182274 () Bool)

(assert (=> d!1655179 m!6182274))

(declare-fun m!6182276 () Bool)

(assert (=> b!5121203 m!6182276))

(assert (=> b!5121204 m!6182186))

(assert (=> b!5121204 m!6182186))

(declare-fun m!6182278 () Bool)

(assert (=> b!5121204 m!6182278))

(assert (=> b!5121204 m!6182182))

(assert (=> b!5121204 m!6182278))

(assert (=> b!5121204 m!6182182))

(declare-fun m!6182280 () Bool)

(assert (=> b!5121204 m!6182280))

(assert (=> b!5121025 d!1655179))

(declare-fun b!5121209 () Bool)

(declare-fun e!3193933 () Bool)

(declare-fun tp!1428741 () Bool)

(declare-fun tp!1428742 () Bool)

(assert (=> b!5121209 (= e!3193933 (and tp!1428741 tp!1428742))))

(assert (=> b!5121014 (= tp!1428715 e!3193933)))

(assert (= (and b!5121014 ((_ is Cons!59252) (exprs!4111 setElem!30412))) b!5121209))

(declare-fun b!5121214 () Bool)

(declare-fun e!3193936 () Bool)

(declare-fun tp!1428745 () Bool)

(assert (=> b!5121214 (= e!3193936 (and tp_is_empty!37727 tp!1428745))))

(assert (=> b!5121022 (= tp!1428714 e!3193936)))

(assert (= (and b!5121022 ((_ is Cons!59251) (t!372394 knownP!20))) b!5121214))

(declare-fun b!5121215 () Bool)

(declare-fun e!3193937 () Bool)

(declare-fun tp!1428746 () Bool)

(declare-fun tp!1428747 () Bool)

(assert (=> b!5121215 (= e!3193937 (and tp!1428746 tp!1428747))))

(assert (=> b!5121013 (= tp!1428711 e!3193937)))

(assert (= (and b!5121013 ((_ is Cons!59252) (exprs!4111 setElem!30411))) b!5121215))

(declare-fun condSetEmpty!30419 () Bool)

(assert (=> setNonEmpty!30412 (= condSetEmpty!30419 (= setRest!30411 ((as const (Array Context!7222 Bool)) false)))))

(declare-fun setRes!30419 () Bool)

(assert (=> setNonEmpty!30412 (= tp!1428710 setRes!30419)))

(declare-fun setIsEmpty!30419 () Bool)

(assert (=> setIsEmpty!30419 setRes!30419))

(declare-fun tp!1428753 () Bool)

(declare-fun setElem!30419 () Context!7222)

(declare-fun setNonEmpty!30419 () Bool)

(declare-fun e!3193940 () Bool)

(assert (=> setNonEmpty!30419 (= setRes!30419 (and tp!1428753 (inv!78748 setElem!30419) e!3193940))))

(declare-fun setRest!30419 () (InoxSet Context!7222))

(assert (=> setNonEmpty!30419 (= setRest!30411 ((_ map or) (store ((as const (Array Context!7222 Bool)) false) setElem!30419 true) setRest!30419))))

(declare-fun b!5121220 () Bool)

(declare-fun tp!1428752 () Bool)

(assert (=> b!5121220 (= e!3193940 tp!1428752)))

(assert (= (and setNonEmpty!30412 condSetEmpty!30419) setIsEmpty!30419))

(assert (= (and setNonEmpty!30412 (not condSetEmpty!30419)) setNonEmpty!30419))

(assert (= setNonEmpty!30419 b!5121220))

(declare-fun m!6182282 () Bool)

(assert (=> setNonEmpty!30419 m!6182282))

(declare-fun b!5121221 () Bool)

(declare-fun e!3193941 () Bool)

(declare-fun tp!1428754 () Bool)

(assert (=> b!5121221 (= e!3193941 (and tp_is_empty!37727 tp!1428754))))

(assert (=> b!5121018 (= tp!1428709 e!3193941)))

(assert (= (and b!5121018 ((_ is Cons!59251) (t!372394 testedP!265))) b!5121221))

(declare-fun condSetEmpty!30420 () Bool)

(assert (=> setNonEmpty!30411 (= condSetEmpty!30420 (= setRest!30412 ((as const (Array Context!7222 Bool)) false)))))

(declare-fun setRes!30420 () Bool)

(assert (=> setNonEmpty!30411 (= tp!1428713 setRes!30420)))

(declare-fun setIsEmpty!30420 () Bool)

(assert (=> setIsEmpty!30420 setRes!30420))

(declare-fun setNonEmpty!30420 () Bool)

(declare-fun e!3193942 () Bool)

(declare-fun setElem!30420 () Context!7222)

(declare-fun tp!1428756 () Bool)

(assert (=> setNonEmpty!30420 (= setRes!30420 (and tp!1428756 (inv!78748 setElem!30420) e!3193942))))

(declare-fun setRest!30420 () (InoxSet Context!7222))

(assert (=> setNonEmpty!30420 (= setRest!30412 ((_ map or) (store ((as const (Array Context!7222 Bool)) false) setElem!30420 true) setRest!30420))))

(declare-fun b!5121222 () Bool)

(declare-fun tp!1428755 () Bool)

(assert (=> b!5121222 (= e!3193942 tp!1428755)))

(assert (= (and setNonEmpty!30411 condSetEmpty!30420) setIsEmpty!30420))

(assert (= (and setNonEmpty!30411 (not condSetEmpty!30420)) setNonEmpty!30420))

(assert (= setNonEmpty!30420 b!5121222))

(declare-fun m!6182284 () Bool)

(assert (=> setNonEmpty!30420 m!6182284))

(declare-fun b!5121223 () Bool)

(declare-fun e!3193943 () Bool)

(declare-fun tp!1428757 () Bool)

(assert (=> b!5121223 (= e!3193943 (and tp_is_empty!37727 tp!1428757))))

(assert (=> b!5121016 (= tp!1428712 e!3193943)))

(assert (= (and b!5121016 ((_ is Cons!59251) (t!372394 input!5745))) b!5121223))

(check-sat (not b!5121190) (not b!5121203) (not b!5121202) (not b!5121169) (not d!1655143) (not b!5121222) (not b!5121145) (not b!5121134) (not b!5121182) (not b!5121168) (not bm!356635) (not d!1655155) (not b!5121220) (not b!5121184) (not b!5121162) (not b!5121214) (not b!5121197) tp_is_empty!37727 (not d!1655171) (not d!1655179) (not d!1655145) (not b!5121138) (not b!5121223) (not b!5121167) (not b!5121180) (not bm!356636) (not b!5121151) (not b!5121140) (not b!5121166) (not d!1655091) (not d!1655151) (not b!5121221) (not d!1655167) (not b!5121200) (not setNonEmpty!30419) (not d!1655169) (not b!5121196) (not b!5121189) (not d!1655173) (not b!5121204) (not d!1655177) (not b!5121201) (not setNonEmpty!30420) (not b!5121215) (not d!1655149) (not b!5121209) (not b!5121178) (not b!5121195) (not b!5121135) (not b!5121139) (not b!5121163) (not b!5121136))
(check-sat)
(get-model)

(declare-fun d!1655251 () Bool)

(assert (=> d!1655251 (= (head!10943 knownP!20) (h!65699 knownP!20))))

(assert (=> b!5121138 d!1655251))

(declare-fun d!1655253 () Bool)

(assert (=> d!1655253 (= (head!10943 input!5745) (h!65699 input!5745))))

(assert (=> b!5121138 d!1655253))

(declare-fun bs!1192824 () Bool)

(declare-fun d!1655255 () Bool)

(assert (= bs!1192824 (and d!1655255 d!1655169)))

(declare-fun lambda!251375 () Int)

(assert (=> bs!1192824 (not (= lambda!251375 lambda!251356))))

(declare-fun bs!1192825 () Bool)

(assert (= bs!1192825 (and d!1655255 b!5121189)))

(assert (=> bs!1192825 (not (= lambda!251375 lambda!251357))))

(declare-fun bs!1192826 () Bool)

(assert (= bs!1192826 (and d!1655255 b!5121190)))

(assert (=> bs!1192826 (not (= lambda!251375 lambda!251358))))

(assert (=> d!1655255 true))

(declare-fun order!26791 () Int)

(declare-fun dynLambda!23600 (Int Int) Int)

(assert (=> d!1655255 (< (dynLambda!23600 order!26791 lambda!251356) (dynLambda!23600 order!26791 lambda!251375))))

(assert (=> d!1655255 (not (exists!1479 lt!2111307 lambda!251375))))

(declare-fun lt!2111340 () Unit!150389)

(declare-fun choose!37654 (List!59378 Int) Unit!150389)

(assert (=> d!1655255 (= lt!2111340 (choose!37654 lt!2111307 lambda!251356))))

(declare-fun forall!13619 (List!59378 Int) Bool)

(assert (=> d!1655255 (forall!13619 lt!2111307 lambda!251356)))

(assert (=> d!1655255 (= (lemmaForallThenNotExists!323 lt!2111307 lambda!251356) lt!2111340)))

(declare-fun bs!1192832 () Bool)

(assert (= bs!1192832 d!1655255))

(declare-fun m!6182442 () Bool)

(assert (=> bs!1192832 m!6182442))

(declare-fun m!6182444 () Bool)

(assert (=> bs!1192832 m!6182444))

(declare-fun m!6182446 () Bool)

(assert (=> bs!1192832 m!6182446))

(assert (=> b!5121190 d!1655255))

(assert (=> d!1655149 d!1655145))

(assert (=> d!1655149 d!1655141))

(declare-fun d!1655275 () Bool)

(assert (=> d!1655275 (= (derivationZipper!124 baseZ!46 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) (derivationStepZipper!850 z!4463 lt!2111206))))

(assert (=> d!1655275 true))

(declare-fun _$83!242 () Unit!150389)

(assert (=> d!1655275 (= (choose!37651 baseZ!46 z!4463 testedP!265 lt!2111206) _$83!242)))

(declare-fun bs!1192835 () Bool)

(assert (= bs!1192835 d!1655275))

(assert (=> bs!1192835 m!6182032))

(assert (=> bs!1192835 m!6182032))

(assert (=> bs!1192835 m!6182216))

(assert (=> bs!1192835 m!6182038))

(assert (=> d!1655149 d!1655275))

(declare-fun d!1655281 () Bool)

(declare-fun c!880108 () Bool)

(assert (=> d!1655281 (= c!880108 ((_ is Cons!59251) (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))))))

(declare-fun e!3193993 () (InoxSet Context!7222))

(assert (=> d!1655281 (= (derivationZipper!124 baseZ!46 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) e!3193993)))

(declare-fun b!5121303 () Bool)

(assert (=> b!5121303 (= e!3193993 (derivationZipper!124 (derivationStepZipper!850 baseZ!46 (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251)))) (t!372394 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251)))))))

(declare-fun b!5121304 () Bool)

(assert (=> b!5121304 (= e!3193993 baseZ!46)))

(assert (= (and d!1655281 c!880108) b!5121303))

(assert (= (and d!1655281 (not c!880108)) b!5121304))

(declare-fun m!6182458 () Bool)

(assert (=> b!5121303 m!6182458))

(assert (=> b!5121303 m!6182458))

(declare-fun m!6182460 () Bool)

(assert (=> b!5121303 m!6182460))

(assert (=> d!1655149 d!1655281))

(assert (=> d!1655149 d!1655155))

(assert (=> b!5121136 d!1655165))

(assert (=> b!5121136 d!1655161))

(declare-fun d!1655287 () Bool)

(declare-fun choose!37655 ((InoxSet Context!7222) Int) (InoxSet Context!7222))

(assert (=> d!1655287 (= (flatMap!361 z!4463 lambda!251342) (choose!37655 z!4463 lambda!251342))))

(declare-fun bs!1192836 () Bool)

(assert (= bs!1192836 d!1655287))

(declare-fun m!6182464 () Bool)

(assert (=> bs!1192836 m!6182464))

(assert (=> d!1655155 d!1655287))

(declare-fun b!5121311 () Bool)

(declare-fun e!3193996 () Bool)

(assert (=> b!5121311 (= e!3193996 (isPrefix!5632 (tail!10078 (tail!10078 knownP!20)) (tail!10078 (tail!10078 input!5745))))))

(declare-fun b!5121310 () Bool)

(declare-fun res!2180646 () Bool)

(assert (=> b!5121310 (=> (not res!2180646) (not e!3193996))))

(assert (=> b!5121310 (= res!2180646 (= (head!10943 (tail!10078 knownP!20)) (head!10943 (tail!10078 input!5745))))))

(declare-fun b!5121309 () Bool)

(declare-fun e!3193998 () Bool)

(assert (=> b!5121309 (= e!3193998 e!3193996)))

(declare-fun res!2180649 () Bool)

(assert (=> b!5121309 (=> (not res!2180649) (not e!3193996))))

(assert (=> b!5121309 (= res!2180649 (not ((_ is Nil!59251) (tail!10078 input!5745))))))

(declare-fun d!1655295 () Bool)

(declare-fun e!3193997 () Bool)

(assert (=> d!1655295 e!3193997))

(declare-fun res!2180647 () Bool)

(assert (=> d!1655295 (=> res!2180647 e!3193997)))

(declare-fun lt!2111345 () Bool)

(assert (=> d!1655295 (= res!2180647 (not lt!2111345))))

(assert (=> d!1655295 (= lt!2111345 e!3193998)))

(declare-fun res!2180648 () Bool)

(assert (=> d!1655295 (=> res!2180648 e!3193998)))

(assert (=> d!1655295 (= res!2180648 ((_ is Nil!59251) (tail!10078 knownP!20)))))

(assert (=> d!1655295 (= (isPrefix!5632 (tail!10078 knownP!20) (tail!10078 input!5745)) lt!2111345)))

(declare-fun b!5121312 () Bool)

(assert (=> b!5121312 (= e!3193997 (>= (size!39533 (tail!10078 input!5745)) (size!39533 (tail!10078 knownP!20))))))

(assert (= (and d!1655295 (not res!2180648)) b!5121309))

(assert (= (and b!5121309 res!2180649) b!5121310))

(assert (= (and b!5121310 res!2180646) b!5121311))

(assert (= (and d!1655295 (not res!2180647)) b!5121312))

(assert (=> b!5121311 m!6182182))

(declare-fun m!6182468 () Bool)

(assert (=> b!5121311 m!6182468))

(assert (=> b!5121311 m!6182174))

(declare-fun m!6182472 () Bool)

(assert (=> b!5121311 m!6182472))

(assert (=> b!5121311 m!6182468))

(assert (=> b!5121311 m!6182472))

(declare-fun m!6182474 () Bool)

(assert (=> b!5121311 m!6182474))

(assert (=> b!5121310 m!6182182))

(declare-fun m!6182476 () Bool)

(assert (=> b!5121310 m!6182476))

(assert (=> b!5121310 m!6182174))

(declare-fun m!6182478 () Bool)

(assert (=> b!5121310 m!6182478))

(assert (=> b!5121312 m!6182174))

(declare-fun m!6182480 () Bool)

(assert (=> b!5121312 m!6182480))

(assert (=> b!5121312 m!6182182))

(declare-fun m!6182482 () Bool)

(assert (=> b!5121312 m!6182482))

(assert (=> b!5121139 d!1655295))

(declare-fun d!1655299 () Bool)

(assert (=> d!1655299 (= (tail!10078 knownP!20) (t!372394 knownP!20))))

(assert (=> b!5121139 d!1655299))

(declare-fun d!1655301 () Bool)

(assert (=> d!1655301 (= (tail!10078 input!5745) (t!372394 input!5745))))

(assert (=> b!5121139 d!1655301))

(declare-fun d!1655303 () Bool)

(declare-fun e!3194004 () Bool)

(assert (=> d!1655303 e!3194004))

(declare-fun res!2180656 () Bool)

(assert (=> d!1655303 (=> (not res!2180656) (not e!3194004))))

(declare-fun lt!2111349 () List!59378)

(declare-fun noDuplicate!1075 (List!59378) Bool)

(assert (=> d!1655303 (= res!2180656 (noDuplicate!1075 lt!2111349))))

(declare-fun choose!37656 ((InoxSet Context!7222)) List!59378)

(assert (=> d!1655303 (= lt!2111349 (choose!37656 z!4463))))

(assert (=> d!1655303 (= (toList!8266 z!4463) lt!2111349)))

(declare-fun b!5121321 () Bool)

(declare-fun content!10536 (List!59378) (InoxSet Context!7222))

(assert (=> b!5121321 (= e!3194004 (= (content!10536 lt!2111349) z!4463))))

(assert (= (and d!1655303 res!2180656) b!5121321))

(declare-fun m!6182486 () Bool)

(assert (=> d!1655303 m!6182486))

(declare-fun m!6182488 () Bool)

(assert (=> d!1655303 m!6182488))

(declare-fun m!6182492 () Bool)

(assert (=> b!5121321 m!6182492))

(assert (=> bm!356635 d!1655303))

(declare-fun d!1655307 () Bool)

(assert (=> d!1655307 (= (head!10943 testedP!265) (h!65699 testedP!265))))

(assert (=> b!5121134 d!1655307))

(assert (=> b!5121134 d!1655253))

(declare-fun bs!1192848 () Bool)

(declare-fun d!1655311 () Bool)

(assert (= bs!1192848 (and d!1655311 d!1655169)))

(declare-fun lambda!251383 () Int)

(assert (=> bs!1192848 (not (= lambda!251383 lambda!251356))))

(declare-fun bs!1192849 () Bool)

(assert (= bs!1192849 (and d!1655311 b!5121189)))

(assert (=> bs!1192849 (not (= lambda!251383 lambda!251357))))

(declare-fun bs!1192850 () Bool)

(assert (= bs!1192850 (and d!1655311 b!5121190)))

(assert (=> bs!1192850 (not (= lambda!251383 lambda!251358))))

(declare-fun bs!1192851 () Bool)

(assert (= bs!1192851 (and d!1655311 d!1655255)))

(assert (=> bs!1192851 (not (= lambda!251383 lambda!251375))))

(declare-fun exists!1481 ((InoxSet Context!7222) Int) Bool)

(assert (=> d!1655311 (= (nullableZipper!1030 z!4463) (exists!1481 z!4463 lambda!251383))))

(declare-fun bs!1192852 () Bool)

(assert (= bs!1192852 d!1655311))

(declare-fun m!6182498 () Bool)

(assert (=> bs!1192852 m!6182498))

(assert (=> b!5121195 d!1655311))

(declare-fun d!1655315 () Bool)

(declare-fun lt!2111352 () Int)

(assert (=> d!1655315 (>= lt!2111352 0)))

(declare-fun e!3194009 () Int)

(assert (=> d!1655315 (= lt!2111352 e!3194009)))

(declare-fun c!880113 () Bool)

(assert (=> d!1655315 (= c!880113 ((_ is Nil!59251) (t!372394 testedP!265)))))

(assert (=> d!1655315 (= (size!39533 (t!372394 testedP!265)) lt!2111352)))

(declare-fun b!5121324 () Bool)

(assert (=> b!5121324 (= e!3194009 0)))

(declare-fun b!5121325 () Bool)

(assert (=> b!5121325 (= e!3194009 (+ 1 (size!39533 (t!372394 (t!372394 testedP!265)))))))

(assert (= (and d!1655315 c!880113) b!5121324))

(assert (= (and d!1655315 (not c!880113)) b!5121325))

(declare-fun m!6182500 () Bool)

(assert (=> b!5121325 m!6182500))

(assert (=> b!5121180 d!1655315))

(assert (=> d!1655177 d!1655175))

(declare-fun d!1655317 () Bool)

(assert (=> d!1655317 (isPrefix!5632 testedP!265 knownP!20)))

(assert (=> d!1655317 true))

(declare-fun _$69!360 () Unit!150389)

(assert (=> d!1655317 (= (choose!37653 knownP!20 testedP!265 input!5745) _$69!360)))

(declare-fun bs!1192860 () Bool)

(assert (= bs!1192860 d!1655317))

(assert (=> bs!1192860 m!6182050))

(assert (=> d!1655177 d!1655317))

(assert (=> d!1655177 d!1655139))

(declare-fun b!5121328 () Bool)

(declare-fun e!3194010 () Bool)

(assert (=> b!5121328 (= e!3194010 (isPrefix!5632 (tail!10078 (tail!10078 testedP!265)) (tail!10078 (tail!10078 input!5745))))))

(declare-fun b!5121327 () Bool)

(declare-fun res!2180659 () Bool)

(assert (=> b!5121327 (=> (not res!2180659) (not e!3194010))))

(assert (=> b!5121327 (= res!2180659 (= (head!10943 (tail!10078 testedP!265)) (head!10943 (tail!10078 input!5745))))))

(declare-fun b!5121326 () Bool)

(declare-fun e!3194012 () Bool)

(assert (=> b!5121326 (= e!3194012 e!3194010)))

(declare-fun res!2180662 () Bool)

(assert (=> b!5121326 (=> (not res!2180662) (not e!3194010))))

(assert (=> b!5121326 (= res!2180662 (not ((_ is Nil!59251) (tail!10078 input!5745))))))

(declare-fun d!1655319 () Bool)

(declare-fun e!3194011 () Bool)

(assert (=> d!1655319 e!3194011))

(declare-fun res!2180660 () Bool)

(assert (=> d!1655319 (=> res!2180660 e!3194011)))

(declare-fun lt!2111354 () Bool)

(assert (=> d!1655319 (= res!2180660 (not lt!2111354))))

(assert (=> d!1655319 (= lt!2111354 e!3194012)))

(declare-fun res!2180661 () Bool)

(assert (=> d!1655319 (=> res!2180661 e!3194012)))

(assert (=> d!1655319 (= res!2180661 ((_ is Nil!59251) (tail!10078 testedP!265)))))

(assert (=> d!1655319 (= (isPrefix!5632 (tail!10078 testedP!265) (tail!10078 input!5745)) lt!2111354)))

(declare-fun b!5121329 () Bool)

(assert (=> b!5121329 (= e!3194011 (>= (size!39533 (tail!10078 input!5745)) (size!39533 (tail!10078 testedP!265))))))

(assert (= (and d!1655319 (not res!2180661)) b!5121326))

(assert (= (and b!5121326 res!2180662) b!5121327))

(assert (= (and b!5121327 res!2180659) b!5121328))

(assert (= (and d!1655319 (not res!2180660)) b!5121329))

(assert (=> b!5121328 m!6182172))

(declare-fun m!6182508 () Bool)

(assert (=> b!5121328 m!6182508))

(assert (=> b!5121328 m!6182174))

(assert (=> b!5121328 m!6182472))

(assert (=> b!5121328 m!6182508))

(assert (=> b!5121328 m!6182472))

(declare-fun m!6182510 () Bool)

(assert (=> b!5121328 m!6182510))

(assert (=> b!5121327 m!6182172))

(declare-fun m!6182512 () Bool)

(assert (=> b!5121327 m!6182512))

(assert (=> b!5121327 m!6182174))

(assert (=> b!5121327 m!6182478))

(assert (=> b!5121329 m!6182174))

(assert (=> b!5121329 m!6182480))

(assert (=> b!5121329 m!6182172))

(declare-fun m!6182518 () Bool)

(assert (=> b!5121329 m!6182518))

(assert (=> b!5121135 d!1655319))

(declare-fun d!1655325 () Bool)

(assert (=> d!1655325 (= (tail!10078 testedP!265) (t!372394 testedP!265))))

(assert (=> b!5121135 d!1655325))

(assert (=> b!5121135 d!1655301))

(declare-fun bs!1192867 () Bool)

(declare-fun d!1655327 () Bool)

(assert (= bs!1192867 (and d!1655327 d!1655255)))

(declare-fun lambda!251392 () Int)

(assert (=> bs!1192867 (= lambda!251392 lambda!251375)))

(declare-fun bs!1192868 () Bool)

(assert (= bs!1192868 (and d!1655327 d!1655169)))

(assert (=> bs!1192868 (not (= lambda!251392 lambda!251356))))

(declare-fun bs!1192869 () Bool)

(assert (= bs!1192869 (and d!1655327 d!1655311)))

(assert (=> bs!1192869 (not (= lambda!251392 lambda!251383))))

(declare-fun bs!1192870 () Bool)

(assert (= bs!1192870 (and d!1655327 b!5121189)))

(assert (=> bs!1192870 (not (= lambda!251392 lambda!251357))))

(declare-fun bs!1192871 () Bool)

(assert (= bs!1192871 (and d!1655327 b!5121190)))

(assert (=> bs!1192871 (not (= lambda!251392 lambda!251358))))

(assert (=> d!1655327 true))

(assert (=> d!1655327 (< (dynLambda!23600 order!26791 lambda!251356) (dynLambda!23600 order!26791 lambda!251392))))

(assert (=> d!1655327 (exists!1479 lt!2111306 lambda!251392)))

(declare-fun lt!2111359 () Unit!150389)

(declare-fun choose!37657 (List!59378 Int) Unit!150389)

(assert (=> d!1655327 (= lt!2111359 (choose!37657 lt!2111306 lambda!251356))))

(assert (=> d!1655327 (not (forall!13619 lt!2111306 lambda!251356))))

(assert (=> d!1655327 (= (lemmaNotForallThenExists!340 lt!2111306 lambda!251356) lt!2111359)))

(declare-fun bs!1192875 () Bool)

(assert (= bs!1192875 d!1655327))

(declare-fun m!6182522 () Bool)

(assert (=> bs!1192875 m!6182522))

(declare-fun m!6182524 () Bool)

(assert (=> bs!1192875 m!6182524))

(declare-fun m!6182526 () Bool)

(assert (=> bs!1192875 m!6182526))

(assert (=> b!5121189 d!1655327))

(declare-fun d!1655331 () Bool)

(declare-fun c!880115 () Bool)

(assert (=> d!1655331 (= c!880115 (isEmpty!31941 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))))))

(declare-fun e!3194018 () Bool)

(assert (=> d!1655331 (= (matchZipper!895 (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) e!3194018)))

(declare-fun b!5121332 () Bool)

(assert (=> b!5121332 (= e!3194018 (nullableZipper!1030 (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265)))))))

(declare-fun b!5121333 () Bool)

(assert (=> b!5121333 (= e!3194018 (matchZipper!895 (derivationStepZipper!850 (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265)))) (tail!10078 (tail!10078 (getSuffix!3304 knownP!20 testedP!265)))))))

(assert (= (and d!1655331 c!880115) b!5121332))

(assert (= (and d!1655331 (not c!880115)) b!5121333))

(assert (=> d!1655331 m!6182262))

(declare-fun m!6182528 () Bool)

(assert (=> d!1655331 m!6182528))

(assert (=> b!5121332 m!6182260))

(declare-fun m!6182534 () Bool)

(assert (=> b!5121332 m!6182534))

(assert (=> b!5121333 m!6182262))

(declare-fun m!6182538 () Bool)

(assert (=> b!5121333 m!6182538))

(assert (=> b!5121333 m!6182260))

(assert (=> b!5121333 m!6182538))

(declare-fun m!6182540 () Bool)

(assert (=> b!5121333 m!6182540))

(assert (=> b!5121333 m!6182262))

(declare-fun m!6182542 () Bool)

(assert (=> b!5121333 m!6182542))

(assert (=> b!5121333 m!6182540))

(assert (=> b!5121333 m!6182542))

(declare-fun m!6182544 () Bool)

(assert (=> b!5121333 m!6182544))

(assert (=> b!5121196 d!1655331))

(declare-fun bs!1192882 () Bool)

(declare-fun d!1655333 () Bool)

(assert (= bs!1192882 (and d!1655333 d!1655155)))

(declare-fun lambda!251394 () Int)

(assert (=> bs!1192882 (= (= (head!10943 (getSuffix!3304 knownP!20 testedP!265)) lt!2111206) (= lambda!251394 lambda!251342))))

(assert (=> d!1655333 true))

(assert (=> d!1655333 (= (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (flatMap!361 z!4463 lambda!251394))))

(declare-fun bs!1192883 () Bool)

(assert (= bs!1192883 d!1655333))

(declare-fun m!6182546 () Bool)

(assert (=> bs!1192883 m!6182546))

(assert (=> b!5121196 d!1655333))

(declare-fun d!1655335 () Bool)

(assert (=> d!1655335 (= (head!10943 (getSuffix!3304 knownP!20 testedP!265)) (h!65699 (getSuffix!3304 knownP!20 testedP!265)))))

(assert (=> b!5121196 d!1655335))

(declare-fun d!1655337 () Bool)

(assert (=> d!1655337 (= (tail!10078 (getSuffix!3304 knownP!20 testedP!265)) (t!372394 (getSuffix!3304 knownP!20 testedP!265)))))

(assert (=> b!5121196 d!1655337))

(declare-fun d!1655339 () Bool)

(declare-fun res!2180667 () Bool)

(declare-fun e!3194033 () Bool)

(assert (=> d!1655339 (=> res!2180667 e!3194033)))

(assert (=> d!1655339 (= res!2180667 ((_ is Nil!59252) (exprs!4111 setElem!30411)))))

(assert (=> d!1655339 (= (forall!13616 (exprs!4111 setElem!30411) lambda!251343) e!3194033)))

(declare-fun b!5121362 () Bool)

(declare-fun e!3194034 () Bool)

(assert (=> b!5121362 (= e!3194033 e!3194034)))

(declare-fun res!2180668 () Bool)

(assert (=> b!5121362 (=> (not res!2180668) (not e!3194034))))

(declare-fun dynLambda!23601 (Int Regex!14227) Bool)

(assert (=> b!5121362 (= res!2180668 (dynLambda!23601 lambda!251343 (h!65700 (exprs!4111 setElem!30411))))))

(declare-fun b!5121363 () Bool)

(assert (=> b!5121363 (= e!3194034 (forall!13616 (t!372395 (exprs!4111 setElem!30411)) lambda!251343))))

(assert (= (and d!1655339 (not res!2180667)) b!5121362))

(assert (= (and b!5121362 res!2180668) b!5121363))

(declare-fun b_lambda!198929 () Bool)

(assert (=> (not b_lambda!198929) (not b!5121362)))

(declare-fun m!6182552 () Bool)

(assert (=> b!5121362 m!6182552))

(declare-fun m!6182554 () Bool)

(assert (=> b!5121363 m!6182554))

(assert (=> d!1655167 d!1655339))

(declare-fun d!1655341 () Bool)

(assert (=> d!1655341 (= (isEmpty!31940 (getLanguageWitness!819 z!4463)) (not ((_ is Some!14699) (getLanguageWitness!819 z!4463))))))

(assert (=> d!1655169 d!1655341))

(declare-fun bs!1192886 () Bool)

(declare-fun d!1655347 () Bool)

(assert (= bs!1192886 (and d!1655347 d!1655255)))

(declare-fun lambda!251401 () Int)

(assert (=> bs!1192886 (not (= lambda!251401 lambda!251375))))

(declare-fun bs!1192887 () Bool)

(assert (= bs!1192887 (and d!1655347 d!1655169)))

(assert (=> bs!1192887 (not (= lambda!251401 lambda!251356))))

(declare-fun bs!1192888 () Bool)

(assert (= bs!1192888 (and d!1655347 d!1655311)))

(assert (=> bs!1192888 (not (= lambda!251401 lambda!251383))))

(declare-fun bs!1192889 () Bool)

(assert (= bs!1192889 (and d!1655347 d!1655327)))

(assert (=> bs!1192889 (not (= lambda!251401 lambda!251392))))

(declare-fun bs!1192890 () Bool)

(assert (= bs!1192890 (and d!1655347 b!5121189)))

(assert (=> bs!1192890 (= lambda!251401 lambda!251357)))

(declare-fun bs!1192891 () Bool)

(assert (= bs!1192891 (and d!1655347 b!5121190)))

(assert (=> bs!1192891 (= lambda!251401 lambda!251358)))

(declare-fun lt!2111363 () Option!14700)

(declare-fun isDefined!11511 (Option!14700) Bool)

(assert (=> d!1655347 (= (isDefined!11511 lt!2111363) (exists!1481 z!4463 lambda!251401))))

(declare-fun e!3194040 () Option!14700)

(assert (=> d!1655347 (= lt!2111363 e!3194040)))

(declare-fun c!880124 () Bool)

(assert (=> d!1655347 (= c!880124 (exists!1481 z!4463 lambda!251401))))

(assert (=> d!1655347 (= (getLanguageWitness!819 z!4463) lt!2111363)))

(declare-fun b!5121371 () Bool)

(declare-fun getLanguageWitness!820 (Context!7222) Option!14700)

(declare-fun getWitness!672 ((InoxSet Context!7222) Int) Context!7222)

(assert (=> b!5121371 (= e!3194040 (getLanguageWitness!820 (getWitness!672 z!4463 lambda!251401)))))

(declare-fun b!5121372 () Bool)

(assert (=> b!5121372 (= e!3194040 None!14699)))

(assert (= (and d!1655347 c!880124) b!5121371))

(assert (= (and d!1655347 (not c!880124)) b!5121372))

(declare-fun m!6182560 () Bool)

(assert (=> d!1655347 m!6182560))

(declare-fun m!6182562 () Bool)

(assert (=> d!1655347 m!6182562))

(assert (=> d!1655347 m!6182562))

(declare-fun m!6182564 () Bool)

(assert (=> b!5121371 m!6182564))

(assert (=> b!5121371 m!6182564))

(declare-fun m!6182566 () Bool)

(assert (=> b!5121371 m!6182566))

(assert (=> d!1655169 d!1655347))

(declare-fun d!1655349 () Bool)

(declare-fun lt!2111366 () Bool)

(assert (=> d!1655349 (= lt!2111366 (forall!13619 (toList!8266 z!4463) lambda!251356))))

(declare-fun choose!37659 ((InoxSet Context!7222) Int) Bool)

(assert (=> d!1655349 (= lt!2111366 (choose!37659 z!4463 lambda!251356))))

(assert (=> d!1655349 (= (forall!13618 z!4463 lambda!251356) lt!2111366)))

(declare-fun bs!1192892 () Bool)

(assert (= bs!1192892 d!1655349))

(assert (=> bs!1192892 m!6182248))

(assert (=> bs!1192892 m!6182248))

(declare-fun m!6182568 () Bool)

(assert (=> bs!1192892 m!6182568))

(declare-fun m!6182570 () Bool)

(assert (=> bs!1192892 m!6182570))

(assert (=> d!1655169 d!1655349))

(declare-fun d!1655351 () Bool)

(declare-fun lt!2111367 () Int)

(assert (=> d!1655351 (>= lt!2111367 0)))

(declare-fun e!3194041 () Int)

(assert (=> d!1655351 (= lt!2111367 e!3194041)))

(declare-fun c!880125 () Bool)

(assert (=> d!1655351 (= c!880125 ((_ is Nil!59251) (t!372394 lt!2111207)))))

(assert (=> d!1655351 (= (size!39533 (t!372394 lt!2111207)) lt!2111367)))

(declare-fun b!5121373 () Bool)

(assert (=> b!5121373 (= e!3194041 0)))

(declare-fun b!5121374 () Bool)

(assert (=> b!5121374 (= e!3194041 (+ 1 (size!39533 (t!372394 (t!372394 lt!2111207)))))))

(assert (= (and d!1655351 c!880125) b!5121373))

(assert (= (and d!1655351 (not c!880125)) b!5121374))

(declare-fun m!6182572 () Bool)

(assert (=> b!5121374 m!6182572))

(assert (=> b!5121178 d!1655351))

(declare-fun d!1655353 () Bool)

(declare-fun lt!2111368 () Int)

(assert (=> d!1655353 (>= lt!2111368 0)))

(declare-fun e!3194042 () Int)

(assert (=> d!1655353 (= lt!2111368 e!3194042)))

(declare-fun c!880126 () Bool)

(assert (=> d!1655353 (= c!880126 ((_ is Nil!59251) (t!372394 knownP!20)))))

(assert (=> d!1655353 (= (size!39533 (t!372394 knownP!20)) lt!2111368)))

(declare-fun b!5121375 () Bool)

(assert (=> b!5121375 (= e!3194042 0)))

(declare-fun b!5121376 () Bool)

(assert (=> b!5121376 (= e!3194042 (+ 1 (size!39533 (t!372394 (t!372394 knownP!20)))))))

(assert (= (and d!1655353 c!880126) b!5121375))

(assert (= (and d!1655353 (not c!880126)) b!5121376))

(declare-fun m!6182574 () Bool)

(assert (=> b!5121376 m!6182574))

(assert (=> b!5121182 d!1655353))

(declare-fun d!1655355 () Bool)

(declare-fun e!3194044 () Bool)

(assert (=> d!1655355 e!3194044))

(declare-fun res!2180669 () Bool)

(assert (=> d!1655355 (=> (not res!2180669) (not e!3194044))))

(declare-fun lt!2111369 () List!59375)

(assert (=> d!1655355 (= res!2180669 (= (content!10535 lt!2111369) ((_ map or) (content!10535 (t!372394 testedP!265)) (content!10535 (Cons!59251 lt!2111206 Nil!59251)))))))

(declare-fun e!3194043 () List!59375)

(assert (=> d!1655355 (= lt!2111369 e!3194043)))

(declare-fun c!880127 () Bool)

(assert (=> d!1655355 (= c!880127 ((_ is Nil!59251) (t!372394 testedP!265)))))

(assert (=> d!1655355 (= (++!13040 (t!372394 testedP!265) (Cons!59251 lt!2111206 Nil!59251)) lt!2111369)))

(declare-fun b!5121379 () Bool)

(declare-fun res!2180670 () Bool)

(assert (=> b!5121379 (=> (not res!2180670) (not e!3194044))))

(assert (=> b!5121379 (= res!2180670 (= (size!39533 lt!2111369) (+ (size!39533 (t!372394 testedP!265)) (size!39533 (Cons!59251 lt!2111206 Nil!59251)))))))

(declare-fun b!5121377 () Bool)

(assert (=> b!5121377 (= e!3194043 (Cons!59251 lt!2111206 Nil!59251))))

(declare-fun b!5121380 () Bool)

(assert (=> b!5121380 (= e!3194044 (or (not (= (Cons!59251 lt!2111206 Nil!59251) Nil!59251)) (= lt!2111369 (t!372394 testedP!265))))))

(declare-fun b!5121378 () Bool)

(assert (=> b!5121378 (= e!3194043 (Cons!59251 (h!65699 (t!372394 testedP!265)) (++!13040 (t!372394 (t!372394 testedP!265)) (Cons!59251 lt!2111206 Nil!59251))))))

(assert (= (and d!1655355 c!880127) b!5121377))

(assert (= (and d!1655355 (not c!880127)) b!5121378))

(assert (= (and d!1655355 res!2180669) b!5121379))

(assert (= (and b!5121379 res!2180670) b!5121380))

(declare-fun m!6182576 () Bool)

(assert (=> d!1655355 m!6182576))

(declare-fun m!6182578 () Bool)

(assert (=> d!1655355 m!6182578))

(assert (=> d!1655355 m!6182200))

(declare-fun m!6182580 () Bool)

(assert (=> b!5121379 m!6182580))

(assert (=> b!5121379 m!6182232))

(assert (=> b!5121379 m!6182204))

(declare-fun m!6182582 () Bool)

(assert (=> b!5121378 m!6182582))

(assert (=> b!5121162 d!1655355))

(declare-fun d!1655357 () Bool)

(assert (=> d!1655357 (= (isEmpty!31941 (getSuffix!3304 knownP!20 testedP!265)) ((_ is Nil!59251) (getSuffix!3304 knownP!20 testedP!265)))))

(assert (=> d!1655171 d!1655357))

(assert (=> b!5121140 d!1655165))

(assert (=> b!5121140 d!1655163))

(declare-fun bs!1192893 () Bool)

(declare-fun d!1655359 () Bool)

(assert (= bs!1192893 (and d!1655359 d!1655091)))

(declare-fun lambda!251402 () Int)

(assert (=> bs!1192893 (= lambda!251402 lambda!251339)))

(declare-fun bs!1192894 () Bool)

(assert (= bs!1192894 (and d!1655359 d!1655167)))

(assert (=> bs!1192894 (= lambda!251402 lambda!251343)))

(assert (=> d!1655359 (= (inv!78748 setElem!30420) (forall!13616 (exprs!4111 setElem!30420) lambda!251402))))

(declare-fun bs!1192895 () Bool)

(assert (= bs!1192895 d!1655359))

(declare-fun m!6182584 () Bool)

(assert (=> bs!1192895 m!6182584))

(assert (=> setNonEmpty!30420 d!1655359))

(declare-fun bs!1192896 () Bool)

(declare-fun d!1655361 () Bool)

(assert (= bs!1192896 (and d!1655361 d!1655255)))

(declare-fun lambda!251405 () Int)

(assert (=> bs!1192896 (= (= (ite c!880070 lambda!251357 lambda!251358) lambda!251356) (= lambda!251405 lambda!251375))))

(declare-fun bs!1192897 () Bool)

(assert (= bs!1192897 (and d!1655361 d!1655169)))

(assert (=> bs!1192897 (not (= lambda!251405 lambda!251356))))

(declare-fun bs!1192898 () Bool)

(assert (= bs!1192898 (and d!1655361 d!1655311)))

(assert (=> bs!1192898 (not (= lambda!251405 lambda!251383))))

(declare-fun bs!1192899 () Bool)

(assert (= bs!1192899 (and d!1655361 d!1655347)))

(assert (=> bs!1192899 (not (= lambda!251405 lambda!251401))))

(declare-fun bs!1192900 () Bool)

(assert (= bs!1192900 (and d!1655361 d!1655327)))

(assert (=> bs!1192900 (= (= (ite c!880070 lambda!251357 lambda!251358) lambda!251356) (= lambda!251405 lambda!251392))))

(declare-fun bs!1192901 () Bool)

(assert (= bs!1192901 (and d!1655361 b!5121189)))

(assert (=> bs!1192901 (not (= lambda!251405 lambda!251357))))

(declare-fun bs!1192902 () Bool)

(assert (= bs!1192902 (and d!1655361 b!5121190)))

(assert (=> bs!1192902 (not (= lambda!251405 lambda!251358))))

(assert (=> d!1655361 true))

(assert (=> d!1655361 (< (dynLambda!23600 order!26791 (ite c!880070 lambda!251357 lambda!251358)) (dynLambda!23600 order!26791 lambda!251405))))

(assert (=> d!1655361 (= (exists!1479 (ite c!880070 lt!2111306 lt!2111307) (ite c!880070 lambda!251357 lambda!251358)) (not (forall!13619 (ite c!880070 lt!2111306 lt!2111307) lambda!251405)))))

(declare-fun bs!1192903 () Bool)

(assert (= bs!1192903 d!1655361))

(declare-fun m!6182586 () Bool)

(assert (=> bs!1192903 m!6182586))

(assert (=> bm!356636 d!1655361))

(declare-fun d!1655363 () Bool)

(declare-fun c!880128 () Bool)

(assert (=> d!1655363 (= c!880128 ((_ is Cons!59251) (t!372394 testedP!265)))))

(declare-fun e!3194045 () (InoxSet Context!7222))

(assert (=> d!1655363 (= (derivationZipper!124 (derivationStepZipper!850 baseZ!46 (h!65699 testedP!265)) (t!372394 testedP!265)) e!3194045)))

(declare-fun b!5121381 () Bool)

(assert (=> b!5121381 (= e!3194045 (derivationZipper!124 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (h!65699 testedP!265)) (h!65699 (t!372394 testedP!265))) (t!372394 (t!372394 testedP!265))))))

(declare-fun b!5121382 () Bool)

(assert (=> b!5121382 (= e!3194045 (derivationStepZipper!850 baseZ!46 (h!65699 testedP!265)))))

(assert (= (and d!1655363 c!880128) b!5121381))

(assert (= (and d!1655363 (not c!880128)) b!5121382))

(assert (=> b!5121381 m!6182188))

(declare-fun m!6182588 () Bool)

(assert (=> b!5121381 m!6182588))

(assert (=> b!5121381 m!6182588))

(declare-fun m!6182590 () Bool)

(assert (=> b!5121381 m!6182590))

(assert (=> b!5121145 d!1655363))

(declare-fun bs!1192904 () Bool)

(declare-fun d!1655365 () Bool)

(assert (= bs!1192904 (and d!1655365 d!1655155)))

(declare-fun lambda!251406 () Int)

(assert (=> bs!1192904 (= (= (h!65699 testedP!265) lt!2111206) (= lambda!251406 lambda!251342))))

(declare-fun bs!1192905 () Bool)

(assert (= bs!1192905 (and d!1655365 d!1655333)))

(assert (=> bs!1192905 (= (= (h!65699 testedP!265) (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (= lambda!251406 lambda!251394))))

(assert (=> d!1655365 true))

(assert (=> d!1655365 (= (derivationStepZipper!850 baseZ!46 (h!65699 testedP!265)) (flatMap!361 baseZ!46 lambda!251406))))

(declare-fun bs!1192906 () Bool)

(assert (= bs!1192906 d!1655365))

(declare-fun m!6182592 () Bool)

(assert (=> bs!1192906 m!6182592))

(assert (=> b!5121145 d!1655365))

(declare-fun d!1655367 () Bool)

(declare-fun e!3194047 () Bool)

(assert (=> d!1655367 e!3194047))

(declare-fun res!2180671 () Bool)

(assert (=> d!1655367 (=> (not res!2180671) (not e!3194047))))

(declare-fun lt!2111370 () List!59375)

(assert (=> d!1655367 (= res!2180671 (= (content!10535 lt!2111370) ((_ map or) (content!10535 testedP!265) (content!10535 lt!2111271))))))

(declare-fun e!3194046 () List!59375)

(assert (=> d!1655367 (= lt!2111370 e!3194046)))

(declare-fun c!880129 () Bool)

(assert (=> d!1655367 (= c!880129 ((_ is Nil!59251) testedP!265))))

(assert (=> d!1655367 (= (++!13040 testedP!265 lt!2111271) lt!2111370)))

(declare-fun b!5121385 () Bool)

(declare-fun res!2180672 () Bool)

(assert (=> b!5121385 (=> (not res!2180672) (not e!3194047))))

(assert (=> b!5121385 (= res!2180672 (= (size!39533 lt!2111370) (+ (size!39533 testedP!265) (size!39533 lt!2111271))))))

(declare-fun b!5121383 () Bool)

(assert (=> b!5121383 (= e!3194046 lt!2111271)))

(declare-fun b!5121386 () Bool)

(assert (=> b!5121386 (= e!3194047 (or (not (= lt!2111271 Nil!59251)) (= lt!2111370 testedP!265)))))

(declare-fun b!5121384 () Bool)

(assert (=> b!5121384 (= e!3194046 (Cons!59251 (h!65699 testedP!265) (++!13040 (t!372394 testedP!265) lt!2111271)))))

(assert (= (and d!1655367 c!880129) b!5121383))

(assert (= (and d!1655367 (not c!880129)) b!5121384))

(assert (= (and d!1655367 res!2180671) b!5121385))

(assert (= (and b!5121385 res!2180672) b!5121386))

(declare-fun m!6182594 () Bool)

(assert (=> d!1655367 m!6182594))

(assert (=> d!1655367 m!6182198))

(declare-fun m!6182596 () Bool)

(assert (=> d!1655367 m!6182596))

(declare-fun m!6182598 () Bool)

(assert (=> b!5121385 m!6182598))

(assert (=> b!5121385 m!6182018))

(declare-fun m!6182600 () Bool)

(assert (=> b!5121385 m!6182600))

(declare-fun m!6182602 () Bool)

(assert (=> b!5121384 m!6182602))

(assert (=> d!1655143 d!1655367))

(assert (=> d!1655143 d!1655165))

(assert (=> d!1655143 d!1655161))

(declare-fun d!1655369 () Bool)

(declare-fun res!2180673 () Bool)

(declare-fun e!3194048 () Bool)

(assert (=> d!1655369 (=> res!2180673 e!3194048)))

(assert (=> d!1655369 (= res!2180673 ((_ is Nil!59252) (exprs!4111 setElem!30412)))))

(assert (=> d!1655369 (= (forall!13616 (exprs!4111 setElem!30412) lambda!251339) e!3194048)))

(declare-fun b!5121387 () Bool)

(declare-fun e!3194049 () Bool)

(assert (=> b!5121387 (= e!3194048 e!3194049)))

(declare-fun res!2180674 () Bool)

(assert (=> b!5121387 (=> (not res!2180674) (not e!3194049))))

(assert (=> b!5121387 (= res!2180674 (dynLambda!23601 lambda!251339 (h!65700 (exprs!4111 setElem!30412))))))

(declare-fun b!5121388 () Bool)

(assert (=> b!5121388 (= e!3194049 (forall!13616 (t!372395 (exprs!4111 setElem!30412)) lambda!251339))))

(assert (= (and d!1655369 (not res!2180673)) b!5121387))

(assert (= (and b!5121387 res!2180674) b!5121388))

(declare-fun b_lambda!198935 () Bool)

(assert (=> (not b_lambda!198935) (not b!5121387)))

(declare-fun m!6182604 () Bool)

(assert (=> b!5121387 m!6182604))

(declare-fun m!6182606 () Bool)

(assert (=> b!5121388 m!6182606))

(assert (=> d!1655091 d!1655369))

(assert (=> b!5121200 d!1655307))

(assert (=> b!5121200 d!1655251))

(declare-fun d!1655371 () Bool)

(declare-fun e!3194051 () Bool)

(assert (=> d!1655371 e!3194051))

(declare-fun res!2180675 () Bool)

(assert (=> d!1655371 (=> (not res!2180675) (not e!3194051))))

(declare-fun lt!2111371 () List!59375)

(assert (=> d!1655371 (= res!2180675 (= (content!10535 lt!2111371) ((_ map or) (content!10535 testedP!265) (content!10535 lt!2111312))))))

(declare-fun e!3194050 () List!59375)

(assert (=> d!1655371 (= lt!2111371 e!3194050)))

(declare-fun c!880130 () Bool)

(assert (=> d!1655371 (= c!880130 ((_ is Nil!59251) testedP!265))))

(assert (=> d!1655371 (= (++!13040 testedP!265 lt!2111312) lt!2111371)))

(declare-fun b!5121391 () Bool)

(declare-fun res!2180676 () Bool)

(assert (=> b!5121391 (=> (not res!2180676) (not e!3194051))))

(assert (=> b!5121391 (= res!2180676 (= (size!39533 lt!2111371) (+ (size!39533 testedP!265) (size!39533 lt!2111312))))))

(declare-fun b!5121389 () Bool)

(assert (=> b!5121389 (= e!3194050 lt!2111312)))

(declare-fun b!5121392 () Bool)

(assert (=> b!5121392 (= e!3194051 (or (not (= lt!2111312 Nil!59251)) (= lt!2111371 testedP!265)))))

(declare-fun b!5121390 () Bool)

(assert (=> b!5121390 (= e!3194050 (Cons!59251 (h!65699 testedP!265) (++!13040 (t!372394 testedP!265) lt!2111312)))))

(assert (= (and d!1655371 c!880130) b!5121389))

(assert (= (and d!1655371 (not c!880130)) b!5121390))

(assert (= (and d!1655371 res!2180675) b!5121391))

(assert (= (and b!5121391 res!2180676) b!5121392))

(declare-fun m!6182608 () Bool)

(assert (=> d!1655371 m!6182608))

(assert (=> d!1655371 m!6182198))

(declare-fun m!6182610 () Bool)

(assert (=> d!1655371 m!6182610))

(declare-fun m!6182612 () Bool)

(assert (=> b!5121391 m!6182612))

(assert (=> b!5121391 m!6182018))

(declare-fun m!6182614 () Bool)

(assert (=> b!5121391 m!6182614))

(declare-fun m!6182616 () Bool)

(assert (=> b!5121390 m!6182616))

(assert (=> d!1655173 d!1655371))

(assert (=> d!1655173 d!1655163))

(assert (=> d!1655173 d!1655161))

(declare-fun d!1655373 () Bool)

(assert (=> d!1655373 (= (head!10943 lt!2111207) (h!65699 lt!2111207))))

(assert (=> b!5121166 d!1655373))

(assert (=> b!5121166 d!1655253))

(declare-fun d!1655375 () Bool)

(declare-fun lt!2111372 () Int)

(assert (=> d!1655375 (>= lt!2111372 0)))

(declare-fun e!3194052 () Int)

(assert (=> d!1655375 (= lt!2111372 e!3194052)))

(declare-fun c!880131 () Bool)

(assert (=> d!1655375 (= c!880131 ((_ is Nil!59251) lt!2111274))))

(assert (=> d!1655375 (= (size!39533 lt!2111274) lt!2111372)))

(declare-fun b!5121393 () Bool)

(assert (=> b!5121393 (= e!3194052 0)))

(declare-fun b!5121394 () Bool)

(assert (=> b!5121394 (= e!3194052 (+ 1 (size!39533 (t!372394 lt!2111274))))))

(assert (= (and d!1655375 c!880131) b!5121393))

(assert (= (and d!1655375 (not c!880131)) b!5121394))

(declare-fun m!6182618 () Bool)

(assert (=> b!5121394 m!6182618))

(assert (=> b!5121163 d!1655375))

(assert (=> b!5121163 d!1655161))

(declare-fun d!1655377 () Bool)

(declare-fun lt!2111373 () Int)

(assert (=> d!1655377 (>= lt!2111373 0)))

(declare-fun e!3194053 () Int)

(assert (=> d!1655377 (= lt!2111373 e!3194053)))

(declare-fun c!880132 () Bool)

(assert (=> d!1655377 (= c!880132 ((_ is Nil!59251) (Cons!59251 lt!2111206 Nil!59251)))))

(assert (=> d!1655377 (= (size!39533 (Cons!59251 lt!2111206 Nil!59251)) lt!2111373)))

(declare-fun b!5121395 () Bool)

(assert (=> b!5121395 (= e!3194053 0)))

(declare-fun b!5121396 () Bool)

(assert (=> b!5121396 (= e!3194053 (+ 1 (size!39533 (t!372394 (Cons!59251 lt!2111206 Nil!59251)))))))

(assert (= (and d!1655377 c!880132) b!5121395))

(assert (= (and d!1655377 (not c!880132)) b!5121396))

(declare-fun m!6182620 () Bool)

(assert (=> b!5121396 m!6182620))

(assert (=> b!5121163 d!1655377))

(declare-fun bs!1192907 () Bool)

(declare-fun d!1655379 () Bool)

(assert (= bs!1192907 (and d!1655379 d!1655091)))

(declare-fun lambda!251407 () Int)

(assert (=> bs!1192907 (= lambda!251407 lambda!251339)))

(declare-fun bs!1192908 () Bool)

(assert (= bs!1192908 (and d!1655379 d!1655167)))

(assert (=> bs!1192908 (= lambda!251407 lambda!251343)))

(declare-fun bs!1192909 () Bool)

(assert (= bs!1192909 (and d!1655379 d!1655359)))

(assert (=> bs!1192909 (= lambda!251407 lambda!251402)))

(assert (=> d!1655379 (= (inv!78748 setElem!30419) (forall!13616 (exprs!4111 setElem!30419) lambda!251407))))

(declare-fun bs!1192910 () Bool)

(assert (= bs!1192910 d!1655379))

(declare-fun m!6182622 () Bool)

(assert (=> bs!1192910 m!6182622))

(assert (=> setNonEmpty!30419 d!1655379))

(declare-fun d!1655381 () Bool)

(assert (=> d!1655381 (= (isEmpty!31941 knownP!20) ((_ is Nil!59251) knownP!20))))

(assert (=> d!1655179 d!1655381))

(declare-fun d!1655383 () Bool)

(declare-fun lt!2111374 () List!59375)

(assert (=> d!1655383 (= (++!13040 (t!372394 testedP!265) lt!2111374) (tail!10078 input!5745))))

(declare-fun e!3194054 () List!59375)

(assert (=> d!1655383 (= lt!2111374 e!3194054)))

(declare-fun c!880133 () Bool)

(assert (=> d!1655383 (= c!880133 ((_ is Cons!59251) (t!372394 testedP!265)))))

(assert (=> d!1655383 (>= (size!39533 (tail!10078 input!5745)) (size!39533 (t!372394 testedP!265)))))

(assert (=> d!1655383 (= (getSuffix!3304 (tail!10078 input!5745) (t!372394 testedP!265)) lt!2111374)))

(declare-fun b!5121397 () Bool)

(assert (=> b!5121397 (= e!3194054 (getSuffix!3304 (tail!10078 (tail!10078 input!5745)) (t!372394 (t!372394 testedP!265))))))

(declare-fun b!5121398 () Bool)

(assert (=> b!5121398 (= e!3194054 (tail!10078 input!5745))))

(assert (= (and d!1655383 c!880133) b!5121397))

(assert (= (and d!1655383 (not c!880133)) b!5121398))

(declare-fun m!6182624 () Bool)

(assert (=> d!1655383 m!6182624))

(assert (=> d!1655383 m!6182174))

(assert (=> d!1655383 m!6182480))

(assert (=> d!1655383 m!6182232))

(assert (=> b!5121397 m!6182174))

(assert (=> b!5121397 m!6182472))

(assert (=> b!5121397 m!6182472))

(declare-fun m!6182626 () Bool)

(assert (=> b!5121397 m!6182626))

(assert (=> b!5121151 d!1655383))

(assert (=> b!5121151 d!1655301))

(declare-fun d!1655385 () Bool)

(declare-fun lt!2111375 () List!59375)

(assert (=> d!1655385 (= (++!13040 (t!372394 testedP!265) lt!2111375) (tail!10078 knownP!20))))

(declare-fun e!3194055 () List!59375)

(assert (=> d!1655385 (= lt!2111375 e!3194055)))

(declare-fun c!880134 () Bool)

(assert (=> d!1655385 (= c!880134 ((_ is Cons!59251) (t!372394 testedP!265)))))

(assert (=> d!1655385 (>= (size!39533 (tail!10078 knownP!20)) (size!39533 (t!372394 testedP!265)))))

(assert (=> d!1655385 (= (getSuffix!3304 (tail!10078 knownP!20) (t!372394 testedP!265)) lt!2111375)))

(declare-fun b!5121399 () Bool)

(assert (=> b!5121399 (= e!3194055 (getSuffix!3304 (tail!10078 (tail!10078 knownP!20)) (t!372394 (t!372394 testedP!265))))))

(declare-fun b!5121400 () Bool)

(assert (=> b!5121400 (= e!3194055 (tail!10078 knownP!20))))

(assert (= (and d!1655385 c!880134) b!5121399))

(assert (= (and d!1655385 (not c!880134)) b!5121400))

(declare-fun m!6182628 () Bool)

(assert (=> d!1655385 m!6182628))

(assert (=> d!1655385 m!6182182))

(assert (=> d!1655385 m!6182482))

(assert (=> d!1655385 m!6182232))

(assert (=> b!5121399 m!6182182))

(assert (=> b!5121399 m!6182468))

(assert (=> b!5121399 m!6182468))

(declare-fun m!6182630 () Bool)

(assert (=> b!5121399 m!6182630))

(assert (=> b!5121197 d!1655385))

(assert (=> b!5121197 d!1655299))

(declare-fun d!1655387 () Bool)

(assert (=> d!1655387 (isPrefix!5632 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)) input!5745)))

(assert (=> d!1655387 true))

(declare-fun _$65!1766 () Unit!150389)

(assert (=> d!1655387 (= (choose!37652 testedP!265 input!5745) _$65!1766)))

(declare-fun bs!1192911 () Bool)

(assert (= bs!1192911 d!1655387))

(assert (=> bs!1192911 m!6182028))

(assert (=> bs!1192911 m!6182028))

(assert (=> bs!1192911 m!6182030))

(assert (=> bs!1192911 m!6182220))

(assert (=> bs!1192911 m!6182220))

(assert (=> bs!1192911 m!6182222))

(assert (=> d!1655151 d!1655387))

(assert (=> d!1655151 d!1655159))

(declare-fun d!1655389 () Bool)

(declare-fun e!3194057 () Bool)

(assert (=> d!1655389 e!3194057))

(declare-fun res!2180677 () Bool)

(assert (=> d!1655389 (=> (not res!2180677) (not e!3194057))))

(declare-fun lt!2111376 () List!59375)

(assert (=> d!1655389 (= res!2180677 (= (content!10535 lt!2111376) ((_ map or) (content!10535 testedP!265) (content!10535 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))))))

(declare-fun e!3194056 () List!59375)

(assert (=> d!1655389 (= lt!2111376 e!3194056)))

(declare-fun c!880135 () Bool)

(assert (=> d!1655389 (= c!880135 ((_ is Nil!59251) testedP!265))))

(assert (=> d!1655389 (= (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)) lt!2111376)))

(declare-fun b!5121403 () Bool)

(declare-fun res!2180678 () Bool)

(assert (=> b!5121403 (=> (not res!2180678) (not e!3194057))))

(assert (=> b!5121403 (= res!2180678 (= (size!39533 lt!2111376) (+ (size!39533 testedP!265) (size!39533 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))))))

(declare-fun b!5121401 () Bool)

(assert (=> b!5121401 (= e!3194056 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))))

(declare-fun b!5121404 () Bool)

(assert (=> b!5121404 (= e!3194057 (or (not (= (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251) Nil!59251)) (= lt!2111376 testedP!265)))))

(declare-fun b!5121402 () Bool)

(assert (=> b!5121402 (= e!3194056 (Cons!59251 (h!65699 testedP!265) (++!13040 (t!372394 testedP!265) (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))))))

(assert (= (and d!1655389 c!880135) b!5121401))

(assert (= (and d!1655389 (not c!880135)) b!5121402))

(assert (= (and d!1655389 res!2180677) b!5121403))

(assert (= (and b!5121403 res!2180678) b!5121404))

(declare-fun m!6182632 () Bool)

(assert (=> d!1655389 m!6182632))

(assert (=> d!1655389 m!6182198))

(declare-fun m!6182634 () Bool)

(assert (=> d!1655389 m!6182634))

(declare-fun m!6182636 () Bool)

(assert (=> b!5121403 m!6182636))

(assert (=> b!5121403 m!6182018))

(declare-fun m!6182638 () Bool)

(assert (=> b!5121403 m!6182638))

(declare-fun m!6182640 () Bool)

(assert (=> b!5121402 m!6182640))

(assert (=> d!1655151 d!1655389))

(assert (=> d!1655151 d!1655137))

(assert (=> d!1655151 d!1655143))

(declare-fun b!5121407 () Bool)

(declare-fun e!3194058 () Bool)

(assert (=> b!5121407 (= e!3194058 (isPrefix!5632 (tail!10078 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))) (tail!10078 input!5745)))))

(declare-fun b!5121406 () Bool)

(declare-fun res!2180679 () Bool)

(assert (=> b!5121406 (=> (not res!2180679) (not e!3194058))))

(assert (=> b!5121406 (= res!2180679 (= (head!10943 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))) (head!10943 input!5745)))))

(declare-fun b!5121405 () Bool)

(declare-fun e!3194060 () Bool)

(assert (=> b!5121405 (= e!3194060 e!3194058)))

(declare-fun res!2180682 () Bool)

(assert (=> b!5121405 (=> (not res!2180682) (not e!3194058))))

(assert (=> b!5121405 (= res!2180682 (not ((_ is Nil!59251) input!5745)))))

(declare-fun d!1655391 () Bool)

(declare-fun e!3194059 () Bool)

(assert (=> d!1655391 e!3194059))

(declare-fun res!2180680 () Bool)

(assert (=> d!1655391 (=> res!2180680 e!3194059)))

(declare-fun lt!2111377 () Bool)

(assert (=> d!1655391 (= res!2180680 (not lt!2111377))))

(assert (=> d!1655391 (= lt!2111377 e!3194060)))

(declare-fun res!2180681 () Bool)

(assert (=> d!1655391 (=> res!2180681 e!3194060)))

(assert (=> d!1655391 (= res!2180681 ((_ is Nil!59251) (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))))))

(assert (=> d!1655391 (= (isPrefix!5632 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)) input!5745) lt!2111377)))

(declare-fun b!5121408 () Bool)

(assert (=> b!5121408 (= e!3194059 (>= (size!39533 input!5745) (size!39533 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))))))

(assert (= (and d!1655391 (not res!2180681)) b!5121405))

(assert (= (and b!5121405 res!2180682) b!5121406))

(assert (= (and b!5121406 res!2180679) b!5121407))

(assert (= (and d!1655391 (not res!2180680)) b!5121408))

(assert (=> b!5121407 m!6182220))

(declare-fun m!6182642 () Bool)

(assert (=> b!5121407 m!6182642))

(assert (=> b!5121407 m!6182174))

(assert (=> b!5121407 m!6182642))

(assert (=> b!5121407 m!6182174))

(declare-fun m!6182644 () Bool)

(assert (=> b!5121407 m!6182644))

(assert (=> b!5121406 m!6182220))

(declare-fun m!6182646 () Bool)

(assert (=> b!5121406 m!6182646))

(assert (=> b!5121406 m!6182180))

(assert (=> b!5121408 m!6182026))

(assert (=> b!5121408 m!6182220))

(declare-fun m!6182648 () Bool)

(assert (=> b!5121408 m!6182648))

(assert (=> d!1655151 d!1655391))

(declare-fun d!1655393 () Bool)

(declare-fun c!880138 () Bool)

(assert (=> d!1655393 (= c!880138 ((_ is Nil!59251) lt!2111274))))

(declare-fun e!3194063 () (InoxSet C!28720))

(assert (=> d!1655393 (= (content!10535 lt!2111274) e!3194063)))

(declare-fun b!5121413 () Bool)

(assert (=> b!5121413 (= e!3194063 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121414 () Bool)

(assert (=> b!5121414 (= e!3194063 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 lt!2111274) true) (content!10535 (t!372394 lt!2111274))))))

(assert (= (and d!1655393 c!880138) b!5121413))

(assert (= (and d!1655393 (not c!880138)) b!5121414))

(declare-fun m!6182650 () Bool)

(assert (=> b!5121414 m!6182650))

(declare-fun m!6182652 () Bool)

(assert (=> b!5121414 m!6182652))

(assert (=> d!1655145 d!1655393))

(declare-fun d!1655395 () Bool)

(declare-fun c!880139 () Bool)

(assert (=> d!1655395 (= c!880139 ((_ is Nil!59251) testedP!265))))

(declare-fun e!3194064 () (InoxSet C!28720))

(assert (=> d!1655395 (= (content!10535 testedP!265) e!3194064)))

(declare-fun b!5121415 () Bool)

(assert (=> b!5121415 (= e!3194064 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121416 () Bool)

(assert (=> b!5121416 (= e!3194064 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 testedP!265) true) (content!10535 (t!372394 testedP!265))))))

(assert (= (and d!1655395 c!880139) b!5121415))

(assert (= (and d!1655395 (not c!880139)) b!5121416))

(declare-fun m!6182654 () Bool)

(assert (=> b!5121416 m!6182654))

(assert (=> b!5121416 m!6182578))

(assert (=> d!1655145 d!1655395))

(declare-fun d!1655397 () Bool)

(declare-fun c!880140 () Bool)

(assert (=> d!1655397 (= c!880140 ((_ is Nil!59251) (Cons!59251 lt!2111206 Nil!59251)))))

(declare-fun e!3194065 () (InoxSet C!28720))

(assert (=> d!1655397 (= (content!10535 (Cons!59251 lt!2111206 Nil!59251)) e!3194065)))

(declare-fun b!5121417 () Bool)

(assert (=> b!5121417 (= e!3194065 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121418 () Bool)

(assert (=> b!5121418 (= e!3194065 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 (Cons!59251 lt!2111206 Nil!59251)) true) (content!10535 (t!372394 (Cons!59251 lt!2111206 Nil!59251)))))))

(assert (= (and d!1655397 c!880140) b!5121417))

(assert (= (and d!1655397 (not c!880140)) b!5121418))

(declare-fun m!6182656 () Bool)

(assert (=> b!5121418 m!6182656))

(declare-fun m!6182658 () Bool)

(assert (=> b!5121418 m!6182658))

(assert (=> d!1655145 d!1655397))

(declare-fun d!1655399 () Bool)

(declare-fun lt!2111378 () Int)

(assert (=> d!1655399 (>= lt!2111378 0)))

(declare-fun e!3194066 () Int)

(assert (=> d!1655399 (= lt!2111378 e!3194066)))

(declare-fun c!880141 () Bool)

(assert (=> d!1655399 (= c!880141 ((_ is Nil!59251) (t!372394 input!5745)))))

(assert (=> d!1655399 (= (size!39533 (t!372394 input!5745)) lt!2111378)))

(declare-fun b!5121419 () Bool)

(assert (=> b!5121419 (= e!3194066 0)))

(declare-fun b!5121420 () Bool)

(assert (=> b!5121420 (= e!3194066 (+ 1 (size!39533 (t!372394 (t!372394 input!5745)))))))

(assert (= (and d!1655399 c!880141) b!5121419))

(assert (= (and d!1655399 (not c!880141)) b!5121420))

(declare-fun m!6182660 () Bool)

(assert (=> b!5121420 m!6182660))

(assert (=> b!5121184 d!1655399))

(declare-fun d!1655401 () Bool)

(declare-fun c!880142 () Bool)

(assert (=> d!1655401 (= c!880142 (isEmpty!31941 (tail!10078 knownP!20)))))

(declare-fun e!3194067 () Bool)

(assert (=> d!1655401 (= (matchZipper!895 (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20)) (tail!10078 knownP!20)) e!3194067)))

(declare-fun b!5121421 () Bool)

(assert (=> b!5121421 (= e!3194067 (nullableZipper!1030 (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20))))))

(declare-fun b!5121422 () Bool)

(assert (=> b!5121422 (= e!3194067 (matchZipper!895 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20)) (head!10943 (tail!10078 knownP!20))) (tail!10078 (tail!10078 knownP!20))))))

(assert (= (and d!1655401 c!880142) b!5121421))

(assert (= (and d!1655401 (not c!880142)) b!5121422))

(assert (=> d!1655401 m!6182182))

(declare-fun m!6182662 () Bool)

(assert (=> d!1655401 m!6182662))

(assert (=> b!5121421 m!6182278))

(declare-fun m!6182664 () Bool)

(assert (=> b!5121421 m!6182664))

(assert (=> b!5121422 m!6182182))

(assert (=> b!5121422 m!6182476))

(assert (=> b!5121422 m!6182278))

(assert (=> b!5121422 m!6182476))

(declare-fun m!6182666 () Bool)

(assert (=> b!5121422 m!6182666))

(assert (=> b!5121422 m!6182182))

(assert (=> b!5121422 m!6182468))

(assert (=> b!5121422 m!6182666))

(assert (=> b!5121422 m!6182468))

(declare-fun m!6182668 () Bool)

(assert (=> b!5121422 m!6182668))

(assert (=> b!5121204 d!1655401))

(declare-fun bs!1192912 () Bool)

(declare-fun d!1655403 () Bool)

(assert (= bs!1192912 (and d!1655403 d!1655155)))

(declare-fun lambda!251408 () Int)

(assert (=> bs!1192912 (= (= (head!10943 knownP!20) lt!2111206) (= lambda!251408 lambda!251342))))

(declare-fun bs!1192913 () Bool)

(assert (= bs!1192913 (and d!1655403 d!1655333)))

(assert (=> bs!1192913 (= (= (head!10943 knownP!20) (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (= lambda!251408 lambda!251394))))

(declare-fun bs!1192914 () Bool)

(assert (= bs!1192914 (and d!1655403 d!1655365)))

(assert (=> bs!1192914 (= (= (head!10943 knownP!20) (h!65699 testedP!265)) (= lambda!251408 lambda!251406))))

(assert (=> d!1655403 true))

(assert (=> d!1655403 (= (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20)) (flatMap!361 baseZ!46 lambda!251408))))

(declare-fun bs!1192915 () Bool)

(assert (= bs!1192915 d!1655403))

(declare-fun m!6182670 () Bool)

(assert (=> bs!1192915 m!6182670))

(assert (=> b!5121204 d!1655403))

(assert (=> b!5121204 d!1655251))

(assert (=> b!5121204 d!1655299))

(assert (=> b!5121168 d!1655165))

(assert (=> b!5121168 d!1655157))

(declare-fun bs!1192916 () Bool)

(declare-fun d!1655405 () Bool)

(assert (= bs!1192916 (and d!1655405 d!1655361)))

(declare-fun lambda!251409 () Int)

(assert (=> bs!1192916 (not (= lambda!251409 lambda!251405))))

(declare-fun bs!1192917 () Bool)

(assert (= bs!1192917 (and d!1655405 d!1655255)))

(assert (=> bs!1192917 (not (= lambda!251409 lambda!251375))))

(declare-fun bs!1192918 () Bool)

(assert (= bs!1192918 (and d!1655405 d!1655169)))

(assert (=> bs!1192918 (not (= lambda!251409 lambda!251356))))

(declare-fun bs!1192919 () Bool)

(assert (= bs!1192919 (and d!1655405 d!1655311)))

(assert (=> bs!1192919 (= lambda!251409 lambda!251383)))

(declare-fun bs!1192920 () Bool)

(assert (= bs!1192920 (and d!1655405 d!1655347)))

(assert (=> bs!1192920 (not (= lambda!251409 lambda!251401))))

(declare-fun bs!1192921 () Bool)

(assert (= bs!1192921 (and d!1655405 d!1655327)))

(assert (=> bs!1192921 (not (= lambda!251409 lambda!251392))))

(declare-fun bs!1192922 () Bool)

(assert (= bs!1192922 (and d!1655405 b!5121189)))

(assert (=> bs!1192922 (not (= lambda!251409 lambda!251357))))

(declare-fun bs!1192923 () Bool)

(assert (= bs!1192923 (and d!1655405 b!5121190)))

(assert (=> bs!1192923 (not (= lambda!251409 lambda!251358))))

(assert (=> d!1655405 (= (nullableZipper!1030 baseZ!46) (exists!1481 baseZ!46 lambda!251409))))

(declare-fun bs!1192924 () Bool)

(assert (= bs!1192924 d!1655405))

(declare-fun m!6182672 () Bool)

(assert (=> bs!1192924 m!6182672))

(assert (=> b!5121203 d!1655405))

(declare-fun b!5121425 () Bool)

(declare-fun e!3194068 () Bool)

(assert (=> b!5121425 (= e!3194068 (isPrefix!5632 (tail!10078 (tail!10078 lt!2111207)) (tail!10078 (tail!10078 input!5745))))))

(declare-fun b!5121424 () Bool)

(declare-fun res!2180683 () Bool)

(assert (=> b!5121424 (=> (not res!2180683) (not e!3194068))))

(assert (=> b!5121424 (= res!2180683 (= (head!10943 (tail!10078 lt!2111207)) (head!10943 (tail!10078 input!5745))))))

(declare-fun b!5121423 () Bool)

(declare-fun e!3194070 () Bool)

(assert (=> b!5121423 (= e!3194070 e!3194068)))

(declare-fun res!2180686 () Bool)

(assert (=> b!5121423 (=> (not res!2180686) (not e!3194068))))

(assert (=> b!5121423 (= res!2180686 (not ((_ is Nil!59251) (tail!10078 input!5745))))))

(declare-fun d!1655407 () Bool)

(declare-fun e!3194069 () Bool)

(assert (=> d!1655407 e!3194069))

(declare-fun res!2180684 () Bool)

(assert (=> d!1655407 (=> res!2180684 e!3194069)))

(declare-fun lt!2111379 () Bool)

(assert (=> d!1655407 (= res!2180684 (not lt!2111379))))

(assert (=> d!1655407 (= lt!2111379 e!3194070)))

(declare-fun res!2180685 () Bool)

(assert (=> d!1655407 (=> res!2180685 e!3194070)))

(assert (=> d!1655407 (= res!2180685 ((_ is Nil!59251) (tail!10078 lt!2111207)))))

(assert (=> d!1655407 (= (isPrefix!5632 (tail!10078 lt!2111207) (tail!10078 input!5745)) lt!2111379)))

(declare-fun b!5121426 () Bool)

(assert (=> b!5121426 (= e!3194069 (>= (size!39533 (tail!10078 input!5745)) (size!39533 (tail!10078 lt!2111207))))))

(assert (= (and d!1655407 (not res!2180685)) b!5121423))

(assert (= (and b!5121423 res!2180686) b!5121424))

(assert (= (and b!5121424 res!2180683) b!5121425))

(assert (= (and d!1655407 (not res!2180684)) b!5121426))

(assert (=> b!5121425 m!6182208))

(declare-fun m!6182674 () Bool)

(assert (=> b!5121425 m!6182674))

(assert (=> b!5121425 m!6182174))

(assert (=> b!5121425 m!6182472))

(assert (=> b!5121425 m!6182674))

(assert (=> b!5121425 m!6182472))

(declare-fun m!6182676 () Bool)

(assert (=> b!5121425 m!6182676))

(assert (=> b!5121424 m!6182208))

(declare-fun m!6182678 () Bool)

(assert (=> b!5121424 m!6182678))

(assert (=> b!5121424 m!6182174))

(assert (=> b!5121424 m!6182478))

(assert (=> b!5121426 m!6182174))

(assert (=> b!5121426 m!6182480))

(assert (=> b!5121426 m!6182208))

(declare-fun m!6182680 () Bool)

(assert (=> b!5121426 m!6182680))

(assert (=> b!5121167 d!1655407))

(declare-fun d!1655409 () Bool)

(assert (=> d!1655409 (= (tail!10078 lt!2111207) (t!372394 lt!2111207))))

(assert (=> b!5121167 d!1655409))

(assert (=> b!5121167 d!1655301))

(declare-fun b!5121429 () Bool)

(declare-fun e!3194071 () Bool)

(assert (=> b!5121429 (= e!3194071 (isPrefix!5632 (tail!10078 (tail!10078 testedP!265)) (tail!10078 (tail!10078 knownP!20))))))

(declare-fun b!5121428 () Bool)

(declare-fun res!2180687 () Bool)

(assert (=> b!5121428 (=> (not res!2180687) (not e!3194071))))

(assert (=> b!5121428 (= res!2180687 (= (head!10943 (tail!10078 testedP!265)) (head!10943 (tail!10078 knownP!20))))))

(declare-fun b!5121427 () Bool)

(declare-fun e!3194073 () Bool)

(assert (=> b!5121427 (= e!3194073 e!3194071)))

(declare-fun res!2180690 () Bool)

(assert (=> b!5121427 (=> (not res!2180690) (not e!3194071))))

(assert (=> b!5121427 (= res!2180690 (not ((_ is Nil!59251) (tail!10078 knownP!20))))))

(declare-fun d!1655411 () Bool)

(declare-fun e!3194072 () Bool)

(assert (=> d!1655411 e!3194072))

(declare-fun res!2180688 () Bool)

(assert (=> d!1655411 (=> res!2180688 e!3194072)))

(declare-fun lt!2111380 () Bool)

(assert (=> d!1655411 (= res!2180688 (not lt!2111380))))

(assert (=> d!1655411 (= lt!2111380 e!3194073)))

(declare-fun res!2180689 () Bool)

(assert (=> d!1655411 (=> res!2180689 e!3194073)))

(assert (=> d!1655411 (= res!2180689 ((_ is Nil!59251) (tail!10078 testedP!265)))))

(assert (=> d!1655411 (= (isPrefix!5632 (tail!10078 testedP!265) (tail!10078 knownP!20)) lt!2111380)))

(declare-fun b!5121430 () Bool)

(assert (=> b!5121430 (= e!3194072 (>= (size!39533 (tail!10078 knownP!20)) (size!39533 (tail!10078 testedP!265))))))

(assert (= (and d!1655411 (not res!2180689)) b!5121427))

(assert (= (and b!5121427 res!2180690) b!5121428))

(assert (= (and b!5121428 res!2180687) b!5121429))

(assert (= (and d!1655411 (not res!2180688)) b!5121430))

(assert (=> b!5121429 m!6182172))

(assert (=> b!5121429 m!6182508))

(assert (=> b!5121429 m!6182182))

(assert (=> b!5121429 m!6182468))

(assert (=> b!5121429 m!6182508))

(assert (=> b!5121429 m!6182468))

(declare-fun m!6182682 () Bool)

(assert (=> b!5121429 m!6182682))

(assert (=> b!5121428 m!6182172))

(assert (=> b!5121428 m!6182512))

(assert (=> b!5121428 m!6182182))

(assert (=> b!5121428 m!6182476))

(assert (=> b!5121430 m!6182182))

(assert (=> b!5121430 m!6182482))

(assert (=> b!5121430 m!6182172))

(assert (=> b!5121430 m!6182518))

(assert (=> b!5121201 d!1655411))

(assert (=> b!5121201 d!1655325))

(assert (=> b!5121201 d!1655299))

(assert (=> b!5121202 d!1655163))

(assert (=> b!5121202 d!1655161))

(declare-fun d!1655413 () Bool)

(declare-fun c!880143 () Bool)

(assert (=> d!1655413 (= c!880143 ((_ is Cons!59251) (t!372394 lt!2111207)))))

(declare-fun e!3194074 () (InoxSet Context!7222))

(assert (=> d!1655413 (= (derivationZipper!124 (derivationStepZipper!850 baseZ!46 (h!65699 lt!2111207)) (t!372394 lt!2111207)) e!3194074)))

(declare-fun b!5121431 () Bool)

(assert (=> b!5121431 (= e!3194074 (derivationZipper!124 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (h!65699 lt!2111207)) (h!65699 (t!372394 lt!2111207))) (t!372394 (t!372394 lt!2111207))))))

(declare-fun b!5121432 () Bool)

(assert (=> b!5121432 (= e!3194074 (derivationStepZipper!850 baseZ!46 (h!65699 lt!2111207)))))

(assert (= (and d!1655413 c!880143) b!5121431))

(assert (= (and d!1655413 (not c!880143)) b!5121432))

(assert (=> b!5121431 m!6182224))

(declare-fun m!6182684 () Bool)

(assert (=> b!5121431 m!6182684))

(assert (=> b!5121431 m!6182684))

(declare-fun m!6182686 () Bool)

(assert (=> b!5121431 m!6182686))

(assert (=> b!5121169 d!1655413))

(declare-fun bs!1192925 () Bool)

(declare-fun d!1655415 () Bool)

(assert (= bs!1192925 (and d!1655415 d!1655155)))

(declare-fun lambda!251410 () Int)

(assert (=> bs!1192925 (= (= (h!65699 lt!2111207) lt!2111206) (= lambda!251410 lambda!251342))))

(declare-fun bs!1192926 () Bool)

(assert (= bs!1192926 (and d!1655415 d!1655333)))

(assert (=> bs!1192926 (= (= (h!65699 lt!2111207) (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (= lambda!251410 lambda!251394))))

(declare-fun bs!1192927 () Bool)

(assert (= bs!1192927 (and d!1655415 d!1655365)))

(assert (=> bs!1192927 (= (= (h!65699 lt!2111207) (h!65699 testedP!265)) (= lambda!251410 lambda!251406))))

(declare-fun bs!1192928 () Bool)

(assert (= bs!1192928 (and d!1655415 d!1655403)))

(assert (=> bs!1192928 (= (= (h!65699 lt!2111207) (head!10943 knownP!20)) (= lambda!251410 lambda!251408))))

(assert (=> d!1655415 true))

(assert (=> d!1655415 (= (derivationStepZipper!850 baseZ!46 (h!65699 lt!2111207)) (flatMap!361 baseZ!46 lambda!251410))))

(declare-fun bs!1192929 () Bool)

(assert (= bs!1192929 d!1655415))

(declare-fun m!6182688 () Bool)

(assert (=> bs!1192929 m!6182688))

(assert (=> b!5121169 d!1655415))

(declare-fun b!5121446 () Bool)

(declare-fun e!3194077 () Bool)

(declare-fun tp!1428805 () Bool)

(declare-fun tp!1428806 () Bool)

(assert (=> b!5121446 (= e!3194077 (and tp!1428805 tp!1428806))))

(declare-fun b!5121443 () Bool)

(assert (=> b!5121443 (= e!3194077 tp_is_empty!37727)))

(assert (=> b!5121215 (= tp!1428746 e!3194077)))

(declare-fun b!5121445 () Bool)

(declare-fun tp!1428804 () Bool)

(assert (=> b!5121445 (= e!3194077 tp!1428804)))

(declare-fun b!5121444 () Bool)

(declare-fun tp!1428803 () Bool)

(declare-fun tp!1428807 () Bool)

(assert (=> b!5121444 (= e!3194077 (and tp!1428803 tp!1428807))))

(assert (= (and b!5121215 ((_ is ElementMatch!14227) (h!65700 (exprs!4111 setElem!30411)))) b!5121443))

(assert (= (and b!5121215 ((_ is Concat!23072) (h!65700 (exprs!4111 setElem!30411)))) b!5121444))

(assert (= (and b!5121215 ((_ is Star!14227) (h!65700 (exprs!4111 setElem!30411)))) b!5121445))

(assert (= (and b!5121215 ((_ is Union!14227) (h!65700 (exprs!4111 setElem!30411)))) b!5121446))

(declare-fun b!5121447 () Bool)

(declare-fun e!3194078 () Bool)

(declare-fun tp!1428808 () Bool)

(declare-fun tp!1428809 () Bool)

(assert (=> b!5121447 (= e!3194078 (and tp!1428808 tp!1428809))))

(assert (=> b!5121215 (= tp!1428747 e!3194078)))

(assert (= (and b!5121215 ((_ is Cons!59252) (t!372395 (exprs!4111 setElem!30411)))) b!5121447))

(declare-fun b!5121448 () Bool)

(declare-fun e!3194079 () Bool)

(declare-fun tp!1428810 () Bool)

(assert (=> b!5121448 (= e!3194079 (and tp_is_empty!37727 tp!1428810))))

(assert (=> b!5121214 (= tp!1428745 e!3194079)))

(assert (= (and b!5121214 ((_ is Cons!59251) (t!372394 (t!372394 knownP!20)))) b!5121448))

(declare-fun b!5121449 () Bool)

(declare-fun e!3194080 () Bool)

(declare-fun tp!1428811 () Bool)

(assert (=> b!5121449 (= e!3194080 (and tp_is_empty!37727 tp!1428811))))

(assert (=> b!5121223 (= tp!1428757 e!3194080)))

(assert (= (and b!5121223 ((_ is Cons!59251) (t!372394 (t!372394 input!5745)))) b!5121449))

(declare-fun b!5121450 () Bool)

(declare-fun e!3194081 () Bool)

(declare-fun tp!1428812 () Bool)

(declare-fun tp!1428813 () Bool)

(assert (=> b!5121450 (= e!3194081 (and tp!1428812 tp!1428813))))

(assert (=> b!5121222 (= tp!1428755 e!3194081)))

(assert (= (and b!5121222 ((_ is Cons!59252) (exprs!4111 setElem!30420))) b!5121450))

(declare-fun condSetEmpty!30423 () Bool)

(assert (=> setNonEmpty!30419 (= condSetEmpty!30423 (= setRest!30419 ((as const (Array Context!7222 Bool)) false)))))

(declare-fun setRes!30423 () Bool)

(assert (=> setNonEmpty!30419 (= tp!1428753 setRes!30423)))

(declare-fun setIsEmpty!30423 () Bool)

(assert (=> setIsEmpty!30423 setRes!30423))

(declare-fun tp!1428815 () Bool)

(declare-fun setElem!30423 () Context!7222)

(declare-fun e!3194082 () Bool)

(declare-fun setNonEmpty!30423 () Bool)

(assert (=> setNonEmpty!30423 (= setRes!30423 (and tp!1428815 (inv!78748 setElem!30423) e!3194082))))

(declare-fun setRest!30423 () (InoxSet Context!7222))

(assert (=> setNonEmpty!30423 (= setRest!30419 ((_ map or) (store ((as const (Array Context!7222 Bool)) false) setElem!30423 true) setRest!30423))))

(declare-fun b!5121451 () Bool)

(declare-fun tp!1428814 () Bool)

(assert (=> b!5121451 (= e!3194082 tp!1428814)))

(assert (= (and setNonEmpty!30419 condSetEmpty!30423) setIsEmpty!30423))

(assert (= (and setNonEmpty!30419 (not condSetEmpty!30423)) setNonEmpty!30423))

(assert (= setNonEmpty!30423 b!5121451))

(declare-fun m!6182690 () Bool)

(assert (=> setNonEmpty!30423 m!6182690))

(declare-fun condSetEmpty!30424 () Bool)

(assert (=> setNonEmpty!30420 (= condSetEmpty!30424 (= setRest!30420 ((as const (Array Context!7222 Bool)) false)))))

(declare-fun setRes!30424 () Bool)

(assert (=> setNonEmpty!30420 (= tp!1428756 setRes!30424)))

(declare-fun setIsEmpty!30424 () Bool)

(assert (=> setIsEmpty!30424 setRes!30424))

(declare-fun setElem!30424 () Context!7222)

(declare-fun tp!1428817 () Bool)

(declare-fun setNonEmpty!30424 () Bool)

(declare-fun e!3194083 () Bool)

(assert (=> setNonEmpty!30424 (= setRes!30424 (and tp!1428817 (inv!78748 setElem!30424) e!3194083))))

(declare-fun setRest!30424 () (InoxSet Context!7222))

(assert (=> setNonEmpty!30424 (= setRest!30420 ((_ map or) (store ((as const (Array Context!7222 Bool)) false) setElem!30424 true) setRest!30424))))

(declare-fun b!5121452 () Bool)

(declare-fun tp!1428816 () Bool)

(assert (=> b!5121452 (= e!3194083 tp!1428816)))

(assert (= (and setNonEmpty!30420 condSetEmpty!30424) setIsEmpty!30424))

(assert (= (and setNonEmpty!30420 (not condSetEmpty!30424)) setNonEmpty!30424))

(assert (= setNonEmpty!30424 b!5121452))

(declare-fun m!6182692 () Bool)

(assert (=> setNonEmpty!30424 m!6182692))

(declare-fun b!5121456 () Bool)

(declare-fun e!3194084 () Bool)

(declare-fun tp!1428820 () Bool)

(declare-fun tp!1428821 () Bool)

(assert (=> b!5121456 (= e!3194084 (and tp!1428820 tp!1428821))))

(declare-fun b!5121453 () Bool)

(assert (=> b!5121453 (= e!3194084 tp_is_empty!37727)))

(assert (=> b!5121209 (= tp!1428741 e!3194084)))

(declare-fun b!5121455 () Bool)

(declare-fun tp!1428819 () Bool)

(assert (=> b!5121455 (= e!3194084 tp!1428819)))

(declare-fun b!5121454 () Bool)

(declare-fun tp!1428818 () Bool)

(declare-fun tp!1428822 () Bool)

(assert (=> b!5121454 (= e!3194084 (and tp!1428818 tp!1428822))))

(assert (= (and b!5121209 ((_ is ElementMatch!14227) (h!65700 (exprs!4111 setElem!30412)))) b!5121453))

(assert (= (and b!5121209 ((_ is Concat!23072) (h!65700 (exprs!4111 setElem!30412)))) b!5121454))

(assert (= (and b!5121209 ((_ is Star!14227) (h!65700 (exprs!4111 setElem!30412)))) b!5121455))

(assert (= (and b!5121209 ((_ is Union!14227) (h!65700 (exprs!4111 setElem!30412)))) b!5121456))

(declare-fun b!5121457 () Bool)

(declare-fun e!3194085 () Bool)

(declare-fun tp!1428823 () Bool)

(declare-fun tp!1428824 () Bool)

(assert (=> b!5121457 (= e!3194085 (and tp!1428823 tp!1428824))))

(assert (=> b!5121209 (= tp!1428742 e!3194085)))

(assert (= (and b!5121209 ((_ is Cons!59252) (t!372395 (exprs!4111 setElem!30412)))) b!5121457))

(declare-fun b!5121458 () Bool)

(declare-fun e!3194086 () Bool)

(declare-fun tp!1428825 () Bool)

(declare-fun tp!1428826 () Bool)

(assert (=> b!5121458 (= e!3194086 (and tp!1428825 tp!1428826))))

(assert (=> b!5121220 (= tp!1428752 e!3194086)))

(assert (= (and b!5121220 ((_ is Cons!59252) (exprs!4111 setElem!30419))) b!5121458))

(declare-fun b!5121459 () Bool)

(declare-fun e!3194087 () Bool)

(declare-fun tp!1428827 () Bool)

(assert (=> b!5121459 (= e!3194087 (and tp_is_empty!37727 tp!1428827))))

(assert (=> b!5121221 (= tp!1428754 e!3194087)))

(assert (= (and b!5121221 ((_ is Cons!59251) (t!372394 (t!372394 testedP!265)))) b!5121459))

(declare-fun b_lambda!198937 () Bool)

(assert (= b_lambda!198935 (or d!1655091 b_lambda!198937)))

(declare-fun bs!1192930 () Bool)

(declare-fun d!1655417 () Bool)

(assert (= bs!1192930 (and d!1655417 d!1655091)))

(declare-fun validRegex!6212 (Regex!14227) Bool)

(assert (=> bs!1192930 (= (dynLambda!23601 lambda!251339 (h!65700 (exprs!4111 setElem!30412))) (validRegex!6212 (h!65700 (exprs!4111 setElem!30412))))))

(declare-fun m!6182694 () Bool)

(assert (=> bs!1192930 m!6182694))

(assert (=> b!5121387 d!1655417))

(declare-fun b_lambda!198939 () Bool)

(assert (= b_lambda!198929 (or d!1655167 b_lambda!198939)))

(declare-fun bs!1192931 () Bool)

(declare-fun d!1655419 () Bool)

(assert (= bs!1192931 (and d!1655419 d!1655167)))

(assert (=> bs!1192931 (= (dynLambda!23601 lambda!251343 (h!65700 (exprs!4111 setElem!30411))) (validRegex!6212 (h!65700 (exprs!4111 setElem!30411))))))

(declare-fun m!6182696 () Bool)

(assert (=> bs!1192931 m!6182696))

(assert (=> b!5121362 d!1655419))

(check-sat (not b_lambda!198939) (not d!1655415) (not b!5121459) (not bs!1192931) (not b!5121376) (not bs!1192930) (not b!5121431) (not d!1655287) (not b!5121403) (not d!1655383) (not b!5121327) (not b!5121385) (not b!5121416) (not b!5121396) tp_is_empty!37727 (not b!5121450) (not b!5121408) (not d!1655379) (not b!5121429) (not b!5121378) (not b!5121390) (not b!5121425) (not d!1655359) (not d!1655389) (not b!5121426) (not b!5121399) (not b!5121449) (not b!5121394) (not d!1655387) (not d!1655403) (not b!5121321) (not b!5121446) (not b!5121457) (not b!5121381) (not b!5121311) (not d!1655365) (not b!5121452) (not b!5121379) (not b!5121428) (not b!5121329) (not b!5121456) (not b!5121402) (not d!1655367) (not d!1655405) (not d!1655401) (not setNonEmpty!30423) (not d!1655349) (not b!5121407) (not b!5121332) (not b!5121451) (not setNonEmpty!30424) (not d!1655303) (not d!1655385) (not d!1655255) (not d!1655361) (not b!5121374) (not b!5121406) (not b!5121422) (not d!1655333) (not b!5121454) (not d!1655317) (not b!5121448) (not b!5121447) (not d!1655371) (not b!5121371) (not d!1655311) (not b!5121325) (not b!5121333) (not b!5121384) (not b!5121430) (not b!5121310) (not d!1655275) (not b!5121388) (not b!5121363) (not d!1655347) (not b!5121455) (not b!5121444) (not b!5121328) (not b!5121418) (not b!5121424) (not b!5121414) (not b!5121458) (not b!5121421) (not b!5121445) (not b!5121303) (not b!5121312) (not b!5121391) (not b_lambda!198937) (not d!1655327) (not d!1655331) (not b!5121397) (not d!1655355) (not b!5121420))
(check-sat)
(get-model)

(declare-fun d!1655461 () Bool)

(declare-fun res!2180712 () Bool)

(declare-fun e!3194125 () Bool)

(assert (=> d!1655461 (=> res!2180712 e!3194125)))

(assert (=> d!1655461 (= res!2180712 ((_ is Nil!59254) (toList!8266 z!4463)))))

(assert (=> d!1655461 (= (forall!13619 (toList!8266 z!4463) lambda!251356) e!3194125)))

(declare-fun b!5121515 () Bool)

(declare-fun e!3194126 () Bool)

(assert (=> b!5121515 (= e!3194125 e!3194126)))

(declare-fun res!2180713 () Bool)

(assert (=> b!5121515 (=> (not res!2180713) (not e!3194126))))

(declare-fun dynLambda!23604 (Int Context!7222) Bool)

(assert (=> b!5121515 (= res!2180713 (dynLambda!23604 lambda!251356 (h!65702 (toList!8266 z!4463))))))

(declare-fun b!5121516 () Bool)

(assert (=> b!5121516 (= e!3194126 (forall!13619 (t!372397 (toList!8266 z!4463)) lambda!251356))))

(assert (= (and d!1655461 (not res!2180712)) b!5121515))

(assert (= (and b!5121515 res!2180713) b!5121516))

(declare-fun b_lambda!198941 () Bool)

(assert (=> (not b_lambda!198941) (not b!5121515)))

(declare-fun m!6182754 () Bool)

(assert (=> b!5121515 m!6182754))

(declare-fun m!6182756 () Bool)

(assert (=> b!5121516 m!6182756))

(assert (=> d!1655349 d!1655461))

(assert (=> d!1655349 d!1655303))

(declare-fun d!1655467 () Bool)

(declare-fun res!2180716 () Bool)

(assert (=> d!1655467 (= res!2180716 (forall!13619 (toList!8266 z!4463) lambda!251356))))

(assert (=> d!1655467 true))

(assert (=> d!1655467 (= (choose!37659 z!4463 lambda!251356) res!2180716)))

(declare-fun bs!1192972 () Bool)

(assert (= bs!1192972 d!1655467))

(assert (=> bs!1192972 m!6182248))

(assert (=> bs!1192972 m!6182248))

(assert (=> bs!1192972 m!6182568))

(assert (=> d!1655349 d!1655467))

(declare-fun d!1655469 () Bool)

(assert (=> d!1655469 (= (flatMap!361 baseZ!46 lambda!251410) (choose!37655 baseZ!46 lambda!251410))))

(declare-fun bs!1192973 () Bool)

(assert (= bs!1192973 d!1655469))

(declare-fun m!6182758 () Bool)

(assert (=> bs!1192973 m!6182758))

(assert (=> d!1655415 d!1655469))

(declare-fun d!1655471 () Bool)

(declare-fun e!3194130 () Bool)

(assert (=> d!1655471 e!3194130))

(declare-fun res!2180717 () Bool)

(assert (=> d!1655471 (=> (not res!2180717) (not e!3194130))))

(declare-fun lt!2111391 () List!59375)

(assert (=> d!1655471 (= res!2180717 (= (content!10535 lt!2111391) ((_ map or) (content!10535 (t!372394 testedP!265)) (content!10535 lt!2111312))))))

(declare-fun e!3194129 () List!59375)

(assert (=> d!1655471 (= lt!2111391 e!3194129)))

(declare-fun c!880161 () Bool)

(assert (=> d!1655471 (= c!880161 ((_ is Nil!59251) (t!372394 testedP!265)))))

(assert (=> d!1655471 (= (++!13040 (t!372394 testedP!265) lt!2111312) lt!2111391)))

(declare-fun b!5121519 () Bool)

(declare-fun res!2180718 () Bool)

(assert (=> b!5121519 (=> (not res!2180718) (not e!3194130))))

(assert (=> b!5121519 (= res!2180718 (= (size!39533 lt!2111391) (+ (size!39533 (t!372394 testedP!265)) (size!39533 lt!2111312))))))

(declare-fun b!5121517 () Bool)

(assert (=> b!5121517 (= e!3194129 lt!2111312)))

(declare-fun b!5121520 () Bool)

(assert (=> b!5121520 (= e!3194130 (or (not (= lt!2111312 Nil!59251)) (= lt!2111391 (t!372394 testedP!265))))))

(declare-fun b!5121518 () Bool)

(assert (=> b!5121518 (= e!3194129 (Cons!59251 (h!65699 (t!372394 testedP!265)) (++!13040 (t!372394 (t!372394 testedP!265)) lt!2111312)))))

(assert (= (and d!1655471 c!880161) b!5121517))

(assert (= (and d!1655471 (not c!880161)) b!5121518))

(assert (= (and d!1655471 res!2180717) b!5121519))

(assert (= (and b!5121519 res!2180718) b!5121520))

(declare-fun m!6182760 () Bool)

(assert (=> d!1655471 m!6182760))

(assert (=> d!1655471 m!6182578))

(assert (=> d!1655471 m!6182610))

(declare-fun m!6182762 () Bool)

(assert (=> b!5121519 m!6182762))

(assert (=> b!5121519 m!6182232))

(assert (=> b!5121519 m!6182614))

(declare-fun m!6182764 () Bool)

(assert (=> b!5121518 m!6182764))

(assert (=> b!5121390 d!1655471))

(declare-fun d!1655473 () Bool)

(declare-fun lt!2111392 () Int)

(assert (=> d!1655473 (>= lt!2111392 0)))

(declare-fun e!3194131 () Int)

(assert (=> d!1655473 (= lt!2111392 e!3194131)))

(declare-fun c!880162 () Bool)

(assert (=> d!1655473 (= c!880162 ((_ is Nil!59251) lt!2111376))))

(assert (=> d!1655473 (= (size!39533 lt!2111376) lt!2111392)))

(declare-fun b!5121521 () Bool)

(assert (=> b!5121521 (= e!3194131 0)))

(declare-fun b!5121522 () Bool)

(assert (=> b!5121522 (= e!3194131 (+ 1 (size!39533 (t!372394 lt!2111376))))))

(assert (= (and d!1655473 c!880162) b!5121521))

(assert (= (and d!1655473 (not c!880162)) b!5121522))

(declare-fun m!6182766 () Bool)

(assert (=> b!5121522 m!6182766))

(assert (=> b!5121403 d!1655473))

(assert (=> b!5121403 d!1655161))

(declare-fun d!1655475 () Bool)

(declare-fun lt!2111393 () Int)

(assert (=> d!1655475 (>= lt!2111393 0)))

(declare-fun e!3194132 () Int)

(assert (=> d!1655475 (= lt!2111393 e!3194132)))

(declare-fun c!880163 () Bool)

(assert (=> d!1655475 (= c!880163 ((_ is Nil!59251) (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))))

(assert (=> d!1655475 (= (size!39533 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)) lt!2111393)))

(declare-fun b!5121523 () Bool)

(assert (=> b!5121523 (= e!3194132 0)))

(declare-fun b!5121524 () Bool)

(assert (=> b!5121524 (= e!3194132 (+ 1 (size!39533 (t!372394 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))))))

(assert (= (and d!1655475 c!880163) b!5121523))

(assert (= (and d!1655475 (not c!880163)) b!5121524))

(declare-fun m!6182768 () Bool)

(assert (=> b!5121524 m!6182768))

(assert (=> b!5121403 d!1655475))

(declare-fun d!1655477 () Bool)

(declare-fun res!2180719 () Bool)

(declare-fun e!3194133 () Bool)

(assert (=> d!1655477 (=> res!2180719 e!3194133)))

(assert (=> d!1655477 (= res!2180719 ((_ is Nil!59252) (t!372395 (exprs!4111 setElem!30411))))))

(assert (=> d!1655477 (= (forall!13616 (t!372395 (exprs!4111 setElem!30411)) lambda!251343) e!3194133)))

(declare-fun b!5121525 () Bool)

(declare-fun e!3194134 () Bool)

(assert (=> b!5121525 (= e!3194133 e!3194134)))

(declare-fun res!2180720 () Bool)

(assert (=> b!5121525 (=> (not res!2180720) (not e!3194134))))

(assert (=> b!5121525 (= res!2180720 (dynLambda!23601 lambda!251343 (h!65700 (t!372395 (exprs!4111 setElem!30411)))))))

(declare-fun b!5121526 () Bool)

(assert (=> b!5121526 (= e!3194134 (forall!13616 (t!372395 (t!372395 (exprs!4111 setElem!30411))) lambda!251343))))

(assert (= (and d!1655477 (not res!2180719)) b!5121525))

(assert (= (and b!5121525 res!2180720) b!5121526))

(declare-fun b_lambda!198943 () Bool)

(assert (=> (not b_lambda!198943) (not b!5121525)))

(declare-fun m!6182770 () Bool)

(assert (=> b!5121525 m!6182770))

(declare-fun m!6182772 () Bool)

(assert (=> b!5121526 m!6182772))

(assert (=> b!5121363 d!1655477))

(declare-fun bs!1192985 () Bool)

(declare-fun d!1655479 () Bool)

(assert (= bs!1192985 (and d!1655479 d!1655361)))

(declare-fun lambda!251419 () Int)

(assert (=> bs!1192985 (not (= lambda!251419 lambda!251405))))

(declare-fun bs!1192986 () Bool)

(assert (= bs!1192986 (and d!1655479 d!1655255)))

(assert (=> bs!1192986 (not (= lambda!251419 lambda!251375))))

(declare-fun bs!1192988 () Bool)

(assert (= bs!1192988 (and d!1655479 d!1655169)))

(assert (=> bs!1192988 (not (= lambda!251419 lambda!251356))))

(declare-fun bs!1192989 () Bool)

(assert (= bs!1192989 (and d!1655479 d!1655311)))

(assert (=> bs!1192989 (= lambda!251419 lambda!251383)))

(declare-fun bs!1192990 () Bool)

(assert (= bs!1192990 (and d!1655479 d!1655347)))

(assert (=> bs!1192990 (not (= lambda!251419 lambda!251401))))

(declare-fun bs!1192991 () Bool)

(assert (= bs!1192991 (and d!1655479 d!1655327)))

(assert (=> bs!1192991 (not (= lambda!251419 lambda!251392))))

(declare-fun bs!1192992 () Bool)

(assert (= bs!1192992 (and d!1655479 b!5121189)))

(assert (=> bs!1192992 (not (= lambda!251419 lambda!251357))))

(declare-fun bs!1192993 () Bool)

(assert (= bs!1192993 (and d!1655479 b!5121190)))

(assert (=> bs!1192993 (not (= lambda!251419 lambda!251358))))

(declare-fun bs!1192994 () Bool)

(assert (= bs!1192994 (and d!1655479 d!1655405)))

(assert (=> bs!1192994 (= lambda!251419 lambda!251409)))

(assert (=> d!1655479 (= (nullableZipper!1030 (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20))) (exists!1481 (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20)) lambda!251419))))

(declare-fun bs!1192995 () Bool)

(assert (= bs!1192995 d!1655479))

(assert (=> bs!1192995 m!6182278))

(declare-fun m!6182776 () Bool)

(assert (=> bs!1192995 m!6182776))

(assert (=> b!5121421 d!1655479))

(declare-fun d!1655483 () Bool)

(declare-fun res!2180721 () Bool)

(declare-fun e!3194135 () Bool)

(assert (=> d!1655483 (=> res!2180721 e!3194135)))

(assert (=> d!1655483 (= res!2180721 ((_ is Nil!59254) (ite c!880070 lt!2111306 lt!2111307)))))

(assert (=> d!1655483 (= (forall!13619 (ite c!880070 lt!2111306 lt!2111307) lambda!251405) e!3194135)))

(declare-fun b!5121527 () Bool)

(declare-fun e!3194136 () Bool)

(assert (=> b!5121527 (= e!3194135 e!3194136)))

(declare-fun res!2180722 () Bool)

(assert (=> b!5121527 (=> (not res!2180722) (not e!3194136))))

(assert (=> b!5121527 (= res!2180722 (dynLambda!23604 lambda!251405 (h!65702 (ite c!880070 lt!2111306 lt!2111307))))))

(declare-fun b!5121528 () Bool)

(assert (=> b!5121528 (= e!3194136 (forall!13619 (t!372397 (ite c!880070 lt!2111306 lt!2111307)) lambda!251405))))

(assert (= (and d!1655483 (not res!2180721)) b!5121527))

(assert (= (and b!5121527 res!2180722) b!5121528))

(declare-fun b_lambda!198945 () Bool)

(assert (=> (not b_lambda!198945) (not b!5121527)))

(declare-fun m!6182778 () Bool)

(assert (=> b!5121527 m!6182778))

(declare-fun m!6182780 () Bool)

(assert (=> b!5121528 m!6182780))

(assert (=> d!1655361 d!1655483))

(declare-fun d!1655485 () Bool)

(assert (=> d!1655485 (= (head!10943 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))) (h!65699 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))))))

(assert (=> b!5121406 d!1655485))

(assert (=> b!5121406 d!1655253))

(declare-fun d!1655487 () Bool)

(declare-fun e!3194138 () Bool)

(assert (=> d!1655487 e!3194138))

(declare-fun res!2180723 () Bool)

(assert (=> d!1655487 (=> (not res!2180723) (not e!3194138))))

(declare-fun lt!2111394 () List!59375)

(assert (=> d!1655487 (= res!2180723 (= (content!10535 lt!2111394) ((_ map or) (content!10535 (t!372394 (t!372394 testedP!265))) (content!10535 (Cons!59251 lt!2111206 Nil!59251)))))))

(declare-fun e!3194137 () List!59375)

(assert (=> d!1655487 (= lt!2111394 e!3194137)))

(declare-fun c!880164 () Bool)

(assert (=> d!1655487 (= c!880164 ((_ is Nil!59251) (t!372394 (t!372394 testedP!265))))))

(assert (=> d!1655487 (= (++!13040 (t!372394 (t!372394 testedP!265)) (Cons!59251 lt!2111206 Nil!59251)) lt!2111394)))

(declare-fun b!5121531 () Bool)

(declare-fun res!2180724 () Bool)

(assert (=> b!5121531 (=> (not res!2180724) (not e!3194138))))

(assert (=> b!5121531 (= res!2180724 (= (size!39533 lt!2111394) (+ (size!39533 (t!372394 (t!372394 testedP!265))) (size!39533 (Cons!59251 lt!2111206 Nil!59251)))))))

(declare-fun b!5121529 () Bool)

(assert (=> b!5121529 (= e!3194137 (Cons!59251 lt!2111206 Nil!59251))))

(declare-fun b!5121532 () Bool)

(assert (=> b!5121532 (= e!3194138 (or (not (= (Cons!59251 lt!2111206 Nil!59251) Nil!59251)) (= lt!2111394 (t!372394 (t!372394 testedP!265)))))))

(declare-fun b!5121530 () Bool)

(assert (=> b!5121530 (= e!3194137 (Cons!59251 (h!65699 (t!372394 (t!372394 testedP!265))) (++!13040 (t!372394 (t!372394 (t!372394 testedP!265))) (Cons!59251 lt!2111206 Nil!59251))))))

(assert (= (and d!1655487 c!880164) b!5121529))

(assert (= (and d!1655487 (not c!880164)) b!5121530))

(assert (= (and d!1655487 res!2180723) b!5121531))

(assert (= (and b!5121531 res!2180724) b!5121532))

(declare-fun m!6182782 () Bool)

(assert (=> d!1655487 m!6182782))

(declare-fun m!6182784 () Bool)

(assert (=> d!1655487 m!6182784))

(assert (=> d!1655487 m!6182200))

(declare-fun m!6182786 () Bool)

(assert (=> b!5121531 m!6182786))

(assert (=> b!5121531 m!6182500))

(assert (=> b!5121531 m!6182204))

(declare-fun m!6182788 () Bool)

(assert (=> b!5121530 m!6182788))

(assert (=> b!5121378 d!1655487))

(declare-fun d!1655489 () Bool)

(declare-fun lt!2111395 () Int)

(assert (=> d!1655489 (>= lt!2111395 0)))

(declare-fun e!3194143 () Int)

(assert (=> d!1655489 (= lt!2111395 e!3194143)))

(declare-fun c!880165 () Bool)

(assert (=> d!1655489 (= c!880165 ((_ is Nil!59251) (t!372394 (t!372394 lt!2111207))))))

(assert (=> d!1655489 (= (size!39533 (t!372394 (t!372394 lt!2111207))) lt!2111395)))

(declare-fun b!5121537 () Bool)

(assert (=> b!5121537 (= e!3194143 0)))

(declare-fun b!5121538 () Bool)

(assert (=> b!5121538 (= e!3194143 (+ 1 (size!39533 (t!372394 (t!372394 (t!372394 lt!2111207))))))))

(assert (= (and d!1655489 c!880165) b!5121537))

(assert (= (and d!1655489 (not c!880165)) b!5121538))

(declare-fun m!6182790 () Bool)

(assert (=> b!5121538 m!6182790))

(assert (=> b!5121374 d!1655489))

(declare-fun d!1655491 () Bool)

(declare-fun c!880166 () Bool)

(assert (=> d!1655491 (= c!880166 ((_ is Nil!59251) lt!2111370))))

(declare-fun e!3194144 () (InoxSet C!28720))

(assert (=> d!1655491 (= (content!10535 lt!2111370) e!3194144)))

(declare-fun b!5121539 () Bool)

(assert (=> b!5121539 (= e!3194144 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121540 () Bool)

(assert (=> b!5121540 (= e!3194144 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 lt!2111370) true) (content!10535 (t!372394 lt!2111370))))))

(assert (= (and d!1655491 c!880166) b!5121539))

(assert (= (and d!1655491 (not c!880166)) b!5121540))

(declare-fun m!6182792 () Bool)

(assert (=> b!5121540 m!6182792))

(declare-fun m!6182794 () Bool)

(assert (=> b!5121540 m!6182794))

(assert (=> d!1655367 d!1655491))

(assert (=> d!1655367 d!1655395))

(declare-fun d!1655493 () Bool)

(declare-fun c!880167 () Bool)

(assert (=> d!1655493 (= c!880167 ((_ is Nil!59251) lt!2111271))))

(declare-fun e!3194145 () (InoxSet C!28720))

(assert (=> d!1655493 (= (content!10535 lt!2111271) e!3194145)))

(declare-fun b!5121541 () Bool)

(assert (=> b!5121541 (= e!3194145 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121542 () Bool)

(assert (=> b!5121542 (= e!3194145 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 lt!2111271) true) (content!10535 (t!372394 lt!2111271))))))

(assert (= (and d!1655493 c!880167) b!5121541))

(assert (= (and d!1655493 (not c!880167)) b!5121542))

(declare-fun m!6182796 () Bool)

(assert (=> b!5121542 m!6182796))

(declare-fun m!6182798 () Bool)

(assert (=> b!5121542 m!6182798))

(assert (=> d!1655367 d!1655493))

(declare-fun d!1655495 () Bool)

(declare-fun lt!2111396 () Int)

(assert (=> d!1655495 (>= lt!2111396 0)))

(declare-fun e!3194146 () Int)

(assert (=> d!1655495 (= lt!2111396 e!3194146)))

(declare-fun c!880168 () Bool)

(assert (=> d!1655495 (= c!880168 ((_ is Nil!59251) (t!372394 lt!2111274)))))

(assert (=> d!1655495 (= (size!39533 (t!372394 lt!2111274)) lt!2111396)))

(declare-fun b!5121543 () Bool)

(assert (=> b!5121543 (= e!3194146 0)))

(declare-fun b!5121544 () Bool)

(assert (=> b!5121544 (= e!3194146 (+ 1 (size!39533 (t!372394 (t!372394 lt!2111274)))))))

(assert (= (and d!1655495 c!880168) b!5121543))

(assert (= (and d!1655495 (not c!880168)) b!5121544))

(declare-fun m!6182800 () Bool)

(assert (=> b!5121544 m!6182800))

(assert (=> b!5121394 d!1655495))

(declare-fun b!5121547 () Bool)

(declare-fun e!3194147 () Bool)

(assert (=> b!5121547 (= e!3194147 (isPrefix!5632 (tail!10078 (tail!10078 (tail!10078 testedP!265))) (tail!10078 (tail!10078 (tail!10078 knownP!20)))))))

(declare-fun b!5121546 () Bool)

(declare-fun res!2180729 () Bool)

(assert (=> b!5121546 (=> (not res!2180729) (not e!3194147))))

(assert (=> b!5121546 (= res!2180729 (= (head!10943 (tail!10078 (tail!10078 testedP!265))) (head!10943 (tail!10078 (tail!10078 knownP!20)))))))

(declare-fun b!5121545 () Bool)

(declare-fun e!3194149 () Bool)

(assert (=> b!5121545 (= e!3194149 e!3194147)))

(declare-fun res!2180732 () Bool)

(assert (=> b!5121545 (=> (not res!2180732) (not e!3194147))))

(assert (=> b!5121545 (= res!2180732 (not ((_ is Nil!59251) (tail!10078 (tail!10078 knownP!20)))))))

(declare-fun d!1655497 () Bool)

(declare-fun e!3194148 () Bool)

(assert (=> d!1655497 e!3194148))

(declare-fun res!2180730 () Bool)

(assert (=> d!1655497 (=> res!2180730 e!3194148)))

(declare-fun lt!2111397 () Bool)

(assert (=> d!1655497 (= res!2180730 (not lt!2111397))))

(assert (=> d!1655497 (= lt!2111397 e!3194149)))

(declare-fun res!2180731 () Bool)

(assert (=> d!1655497 (=> res!2180731 e!3194149)))

(assert (=> d!1655497 (= res!2180731 ((_ is Nil!59251) (tail!10078 (tail!10078 testedP!265))))))

(assert (=> d!1655497 (= (isPrefix!5632 (tail!10078 (tail!10078 testedP!265)) (tail!10078 (tail!10078 knownP!20))) lt!2111397)))

(declare-fun b!5121548 () Bool)

(assert (=> b!5121548 (= e!3194148 (>= (size!39533 (tail!10078 (tail!10078 knownP!20))) (size!39533 (tail!10078 (tail!10078 testedP!265)))))))

(assert (= (and d!1655497 (not res!2180731)) b!5121545))

(assert (= (and b!5121545 res!2180732) b!5121546))

(assert (= (and b!5121546 res!2180729) b!5121547))

(assert (= (and d!1655497 (not res!2180730)) b!5121548))

(assert (=> b!5121547 m!6182508))

(declare-fun m!6182802 () Bool)

(assert (=> b!5121547 m!6182802))

(assert (=> b!5121547 m!6182468))

(declare-fun m!6182804 () Bool)

(assert (=> b!5121547 m!6182804))

(assert (=> b!5121547 m!6182802))

(assert (=> b!5121547 m!6182804))

(declare-fun m!6182806 () Bool)

(assert (=> b!5121547 m!6182806))

(assert (=> b!5121546 m!6182508))

(declare-fun m!6182808 () Bool)

(assert (=> b!5121546 m!6182808))

(assert (=> b!5121546 m!6182468))

(declare-fun m!6182810 () Bool)

(assert (=> b!5121546 m!6182810))

(assert (=> b!5121548 m!6182468))

(declare-fun m!6182812 () Bool)

(assert (=> b!5121548 m!6182812))

(assert (=> b!5121548 m!6182508))

(declare-fun m!6182814 () Bool)

(assert (=> b!5121548 m!6182814))

(assert (=> b!5121429 d!1655497))

(declare-fun d!1655499 () Bool)

(assert (=> d!1655499 (= (tail!10078 (tail!10078 testedP!265)) (t!372394 (tail!10078 testedP!265)))))

(assert (=> b!5121429 d!1655499))

(declare-fun d!1655501 () Bool)

(assert (=> d!1655501 (= (tail!10078 (tail!10078 knownP!20)) (t!372394 (tail!10078 knownP!20)))))

(assert (=> b!5121429 d!1655501))

(declare-fun d!1655503 () Bool)

(declare-fun e!3194153 () Bool)

(assert (=> d!1655503 e!3194153))

(declare-fun res!2180735 () Bool)

(assert (=> d!1655503 (=> (not res!2180735) (not e!3194153))))

(declare-fun lt!2111398 () List!59375)

(assert (=> d!1655503 (= res!2180735 (= (content!10535 lt!2111398) ((_ map or) (content!10535 (t!372394 testedP!265)) (content!10535 lt!2111271))))))

(declare-fun e!3194152 () List!59375)

(assert (=> d!1655503 (= lt!2111398 e!3194152)))

(declare-fun c!880169 () Bool)

(assert (=> d!1655503 (= c!880169 ((_ is Nil!59251) (t!372394 testedP!265)))))

(assert (=> d!1655503 (= (++!13040 (t!372394 testedP!265) lt!2111271) lt!2111398)))

(declare-fun b!5121553 () Bool)

(declare-fun res!2180736 () Bool)

(assert (=> b!5121553 (=> (not res!2180736) (not e!3194153))))

(assert (=> b!5121553 (= res!2180736 (= (size!39533 lt!2111398) (+ (size!39533 (t!372394 testedP!265)) (size!39533 lt!2111271))))))

(declare-fun b!5121551 () Bool)

(assert (=> b!5121551 (= e!3194152 lt!2111271)))

(declare-fun b!5121554 () Bool)

(assert (=> b!5121554 (= e!3194153 (or (not (= lt!2111271 Nil!59251)) (= lt!2111398 (t!372394 testedP!265))))))

(declare-fun b!5121552 () Bool)

(assert (=> b!5121552 (= e!3194152 (Cons!59251 (h!65699 (t!372394 testedP!265)) (++!13040 (t!372394 (t!372394 testedP!265)) lt!2111271)))))

(assert (= (and d!1655503 c!880169) b!5121551))

(assert (= (and d!1655503 (not c!880169)) b!5121552))

(assert (= (and d!1655503 res!2180735) b!5121553))

(assert (= (and b!5121553 res!2180736) b!5121554))

(declare-fun m!6182816 () Bool)

(assert (=> d!1655503 m!6182816))

(assert (=> d!1655503 m!6182578))

(assert (=> d!1655503 m!6182596))

(declare-fun m!6182820 () Bool)

(assert (=> b!5121553 m!6182820))

(assert (=> b!5121553 m!6182232))

(assert (=> b!5121553 m!6182600))

(declare-fun m!6182824 () Bool)

(assert (=> b!5121552 m!6182824))

(assert (=> b!5121384 d!1655503))

(assert (=> d!1655387 d!1655391))

(assert (=> d!1655387 d!1655389))

(assert (=> d!1655387 d!1655159))

(assert (=> d!1655387 d!1655143))

(declare-fun d!1655507 () Bool)

(assert (=> d!1655507 (= (head!10943 (tail!10078 lt!2111207)) (h!65699 (tail!10078 lt!2111207)))))

(assert (=> b!5121424 d!1655507))

(declare-fun d!1655509 () Bool)

(assert (=> d!1655509 (= (head!10943 (tail!10078 input!5745)) (h!65699 (tail!10078 input!5745)))))

(assert (=> b!5121424 d!1655509))

(declare-fun b!5121557 () Bool)

(declare-fun e!3194154 () Bool)

(assert (=> b!5121557 (= e!3194154 (isPrefix!5632 (tail!10078 (tail!10078 (tail!10078 testedP!265))) (tail!10078 (tail!10078 (tail!10078 input!5745)))))))

(declare-fun b!5121556 () Bool)

(declare-fun res!2180737 () Bool)

(assert (=> b!5121556 (=> (not res!2180737) (not e!3194154))))

(assert (=> b!5121556 (= res!2180737 (= (head!10943 (tail!10078 (tail!10078 testedP!265))) (head!10943 (tail!10078 (tail!10078 input!5745)))))))

(declare-fun b!5121555 () Bool)

(declare-fun e!3194156 () Bool)

(assert (=> b!5121555 (= e!3194156 e!3194154)))

(declare-fun res!2180740 () Bool)

(assert (=> b!5121555 (=> (not res!2180740) (not e!3194154))))

(assert (=> b!5121555 (= res!2180740 (not ((_ is Nil!59251) (tail!10078 (tail!10078 input!5745)))))))

(declare-fun d!1655511 () Bool)

(declare-fun e!3194155 () Bool)

(assert (=> d!1655511 e!3194155))

(declare-fun res!2180738 () Bool)

(assert (=> d!1655511 (=> res!2180738 e!3194155)))

(declare-fun lt!2111399 () Bool)

(assert (=> d!1655511 (= res!2180738 (not lt!2111399))))

(assert (=> d!1655511 (= lt!2111399 e!3194156)))

(declare-fun res!2180739 () Bool)

(assert (=> d!1655511 (=> res!2180739 e!3194156)))

(assert (=> d!1655511 (= res!2180739 ((_ is Nil!59251) (tail!10078 (tail!10078 testedP!265))))))

(assert (=> d!1655511 (= (isPrefix!5632 (tail!10078 (tail!10078 testedP!265)) (tail!10078 (tail!10078 input!5745))) lt!2111399)))

(declare-fun b!5121558 () Bool)

(assert (=> b!5121558 (= e!3194155 (>= (size!39533 (tail!10078 (tail!10078 input!5745))) (size!39533 (tail!10078 (tail!10078 testedP!265)))))))

(assert (= (and d!1655511 (not res!2180739)) b!5121555))

(assert (= (and b!5121555 res!2180740) b!5121556))

(assert (= (and b!5121556 res!2180737) b!5121557))

(assert (= (and d!1655511 (not res!2180738)) b!5121558))

(assert (=> b!5121557 m!6182508))

(assert (=> b!5121557 m!6182802))

(assert (=> b!5121557 m!6182472))

(declare-fun m!6182826 () Bool)

(assert (=> b!5121557 m!6182826))

(assert (=> b!5121557 m!6182802))

(assert (=> b!5121557 m!6182826))

(declare-fun m!6182828 () Bool)

(assert (=> b!5121557 m!6182828))

(assert (=> b!5121556 m!6182508))

(assert (=> b!5121556 m!6182808))

(assert (=> b!5121556 m!6182472))

(declare-fun m!6182830 () Bool)

(assert (=> b!5121556 m!6182830))

(assert (=> b!5121558 m!6182472))

(declare-fun m!6182832 () Bool)

(assert (=> b!5121558 m!6182832))

(assert (=> b!5121558 m!6182508))

(assert (=> b!5121558 m!6182814))

(assert (=> b!5121328 d!1655511))

(assert (=> b!5121328 d!1655499))

(declare-fun d!1655513 () Bool)

(assert (=> d!1655513 (= (tail!10078 (tail!10078 input!5745)) (t!372394 (tail!10078 input!5745)))))

(assert (=> b!5121328 d!1655513))

(assert (=> b!5121408 d!1655165))

(declare-fun d!1655515 () Bool)

(declare-fun lt!2111400 () Int)

(assert (=> d!1655515 (>= lt!2111400 0)))

(declare-fun e!3194157 () Int)

(assert (=> d!1655515 (= lt!2111400 e!3194157)))

(declare-fun c!880170 () Bool)

(assert (=> d!1655515 (= c!880170 ((_ is Nil!59251) (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))))))

(assert (=> d!1655515 (= (size!39533 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))) lt!2111400)))

(declare-fun b!5121559 () Bool)

(assert (=> b!5121559 (= e!3194157 0)))

(declare-fun b!5121560 () Bool)

(assert (=> b!5121560 (= e!3194157 (+ 1 (size!39533 (t!372394 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))))))))

(assert (= (and d!1655515 c!880170) b!5121559))

(assert (= (and d!1655515 (not c!880170)) b!5121560))

(declare-fun m!6182836 () Bool)

(assert (=> b!5121560 m!6182836))

(assert (=> b!5121408 d!1655515))

(declare-fun b!5121593 () Bool)

(declare-fun e!3194184 () Bool)

(declare-fun call!356657 () Bool)

(assert (=> b!5121593 (= e!3194184 call!356657)))

(declare-fun c!880179 () Bool)

(declare-fun bm!356652 () Bool)

(declare-fun c!880178 () Bool)

(assert (=> bm!356652 (= call!356657 (validRegex!6212 (ite c!880179 (reg!14556 (h!65700 (exprs!4111 setElem!30412))) (ite c!880178 (regTwo!28967 (h!65700 (exprs!4111 setElem!30412))) (regTwo!28966 (h!65700 (exprs!4111 setElem!30412)))))))))

(declare-fun b!5121594 () Bool)

(declare-fun e!3194187 () Bool)

(declare-fun e!3194182 () Bool)

(assert (=> b!5121594 (= e!3194187 e!3194182)))

(assert (=> b!5121594 (= c!880179 ((_ is Star!14227) (h!65700 (exprs!4111 setElem!30412))))))

(declare-fun bm!356653 () Bool)

(declare-fun call!356658 () Bool)

(assert (=> bm!356653 (= call!356658 call!356657)))

(declare-fun b!5121595 () Bool)

(declare-fun e!3194185 () Bool)

(assert (=> b!5121595 (= e!3194182 e!3194185)))

(assert (=> b!5121595 (= c!880178 ((_ is Union!14227) (h!65700 (exprs!4111 setElem!30412))))))

(declare-fun bm!356654 () Bool)

(declare-fun call!356659 () Bool)

(assert (=> bm!356654 (= call!356659 (validRegex!6212 (ite c!880178 (regOne!28967 (h!65700 (exprs!4111 setElem!30412))) (regOne!28966 (h!65700 (exprs!4111 setElem!30412))))))))

(declare-fun b!5121596 () Bool)

(assert (=> b!5121596 (= e!3194182 e!3194184)))

(declare-fun res!2180766 () Bool)

(declare-fun nullable!4727 (Regex!14227) Bool)

(assert (=> b!5121596 (= res!2180766 (not (nullable!4727 (reg!14556 (h!65700 (exprs!4111 setElem!30412))))))))

(assert (=> b!5121596 (=> (not res!2180766) (not e!3194184))))

(declare-fun b!5121597 () Bool)

(declare-fun e!3194188 () Bool)

(declare-fun e!3194186 () Bool)

(assert (=> b!5121597 (= e!3194188 e!3194186)))

(declare-fun res!2180764 () Bool)

(assert (=> b!5121597 (=> (not res!2180764) (not e!3194186))))

(assert (=> b!5121597 (= res!2180764 call!356659)))

(declare-fun b!5121598 () Bool)

(declare-fun res!2180763 () Bool)

(declare-fun e!3194183 () Bool)

(assert (=> b!5121598 (=> (not res!2180763) (not e!3194183))))

(assert (=> b!5121598 (= res!2180763 call!356659)))

(assert (=> b!5121598 (= e!3194185 e!3194183)))

(declare-fun d!1655517 () Bool)

(declare-fun res!2180762 () Bool)

(assert (=> d!1655517 (=> res!2180762 e!3194187)))

(assert (=> d!1655517 (= res!2180762 ((_ is ElementMatch!14227) (h!65700 (exprs!4111 setElem!30412))))))

(assert (=> d!1655517 (= (validRegex!6212 (h!65700 (exprs!4111 setElem!30412))) e!3194187)))

(declare-fun b!5121599 () Bool)

(assert (=> b!5121599 (= e!3194186 call!356658)))

(declare-fun b!5121600 () Bool)

(declare-fun res!2180765 () Bool)

(assert (=> b!5121600 (=> res!2180765 e!3194188)))

(assert (=> b!5121600 (= res!2180765 (not ((_ is Concat!23072) (h!65700 (exprs!4111 setElem!30412)))))))

(assert (=> b!5121600 (= e!3194185 e!3194188)))

(declare-fun b!5121601 () Bool)

(assert (=> b!5121601 (= e!3194183 call!356658)))

(assert (= (and d!1655517 (not res!2180762)) b!5121594))

(assert (= (and b!5121594 c!880179) b!5121596))

(assert (= (and b!5121594 (not c!880179)) b!5121595))

(assert (= (and b!5121596 res!2180766) b!5121593))

(assert (= (and b!5121595 c!880178) b!5121598))

(assert (= (and b!5121595 (not c!880178)) b!5121600))

(assert (= (and b!5121598 res!2180763) b!5121601))

(assert (= (and b!5121600 (not res!2180765)) b!5121597))

(assert (= (and b!5121597 res!2180764) b!5121599))

(assert (= (or b!5121598 b!5121597) bm!356654))

(assert (= (or b!5121601 b!5121599) bm!356653))

(assert (= (or b!5121593 bm!356653) bm!356652))

(declare-fun m!6182870 () Bool)

(assert (=> bm!356652 m!6182870))

(declare-fun m!6182874 () Bool)

(assert (=> bm!356654 m!6182874))

(declare-fun m!6182876 () Bool)

(assert (=> b!5121596 m!6182876))

(assert (=> bs!1192930 d!1655517))

(declare-fun d!1655535 () Bool)

(declare-fun c!880180 () Bool)

(assert (=> d!1655535 (= c!880180 ((_ is Cons!59251) (t!372394 (t!372394 testedP!265))))))

(declare-fun e!3194189 () (InoxSet Context!7222))

(assert (=> d!1655535 (= (derivationZipper!124 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (h!65699 testedP!265)) (h!65699 (t!372394 testedP!265))) (t!372394 (t!372394 testedP!265))) e!3194189)))

(declare-fun b!5121602 () Bool)

(assert (=> b!5121602 (= e!3194189 (derivationZipper!124 (derivationStepZipper!850 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (h!65699 testedP!265)) (h!65699 (t!372394 testedP!265))) (h!65699 (t!372394 (t!372394 testedP!265)))) (t!372394 (t!372394 (t!372394 testedP!265)))))))

(declare-fun b!5121603 () Bool)

(assert (=> b!5121603 (= e!3194189 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (h!65699 testedP!265)) (h!65699 (t!372394 testedP!265))))))

(assert (= (and d!1655535 c!880180) b!5121602))

(assert (= (and d!1655535 (not c!880180)) b!5121603))

(assert (=> b!5121602 m!6182588))

(declare-fun m!6182880 () Bool)

(assert (=> b!5121602 m!6182880))

(assert (=> b!5121602 m!6182880))

(declare-fun m!6182882 () Bool)

(assert (=> b!5121602 m!6182882))

(assert (=> b!5121381 d!1655535))

(declare-fun bs!1193004 () Bool)

(declare-fun d!1655543 () Bool)

(assert (= bs!1193004 (and d!1655543 d!1655155)))

(declare-fun lambda!251421 () Int)

(assert (=> bs!1193004 (= (= (h!65699 (t!372394 testedP!265)) lt!2111206) (= lambda!251421 lambda!251342))))

(declare-fun bs!1193005 () Bool)

(assert (= bs!1193005 (and d!1655543 d!1655333)))

(assert (=> bs!1193005 (= (= (h!65699 (t!372394 testedP!265)) (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (= lambda!251421 lambda!251394))))

(declare-fun bs!1193006 () Bool)

(assert (= bs!1193006 (and d!1655543 d!1655415)))

(assert (=> bs!1193006 (= (= (h!65699 (t!372394 testedP!265)) (h!65699 lt!2111207)) (= lambda!251421 lambda!251410))))

(declare-fun bs!1193007 () Bool)

(assert (= bs!1193007 (and d!1655543 d!1655403)))

(assert (=> bs!1193007 (= (= (h!65699 (t!372394 testedP!265)) (head!10943 knownP!20)) (= lambda!251421 lambda!251408))))

(declare-fun bs!1193008 () Bool)

(assert (= bs!1193008 (and d!1655543 d!1655365)))

(assert (=> bs!1193008 (= (= (h!65699 (t!372394 testedP!265)) (h!65699 testedP!265)) (= lambda!251421 lambda!251406))))

(assert (=> d!1655543 true))

(assert (=> d!1655543 (= (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (h!65699 testedP!265)) (h!65699 (t!372394 testedP!265))) (flatMap!361 (derivationStepZipper!850 baseZ!46 (h!65699 testedP!265)) lambda!251421))))

(declare-fun bs!1193009 () Bool)

(assert (= bs!1193009 d!1655543))

(assert (=> bs!1193009 m!6182188))

(declare-fun m!6182884 () Bool)

(assert (=> bs!1193009 m!6182884))

(assert (=> b!5121381 d!1655543))

(declare-fun d!1655545 () Bool)

(declare-fun lt!2111404 () Int)

(assert (=> d!1655545 (>= lt!2111404 0)))

(declare-fun e!3194190 () Int)

(assert (=> d!1655545 (= lt!2111404 e!3194190)))

(declare-fun c!880181 () Bool)

(assert (=> d!1655545 (= c!880181 ((_ is Nil!59251) (tail!10078 input!5745)))))

(assert (=> d!1655545 (= (size!39533 (tail!10078 input!5745)) lt!2111404)))

(declare-fun b!5121604 () Bool)

(assert (=> b!5121604 (= e!3194190 0)))

(declare-fun b!5121605 () Bool)

(assert (=> b!5121605 (= e!3194190 (+ 1 (size!39533 (t!372394 (tail!10078 input!5745)))))))

(assert (= (and d!1655545 c!880181) b!5121604))

(assert (= (and d!1655545 (not c!880181)) b!5121605))

(declare-fun m!6182886 () Bool)

(assert (=> b!5121605 m!6182886))

(assert (=> b!5121426 d!1655545))

(declare-fun d!1655547 () Bool)

(declare-fun lt!2111405 () Int)

(assert (=> d!1655547 (>= lt!2111405 0)))

(declare-fun e!3194191 () Int)

(assert (=> d!1655547 (= lt!2111405 e!3194191)))

(declare-fun c!880182 () Bool)

(assert (=> d!1655547 (= c!880182 ((_ is Nil!59251) (tail!10078 lt!2111207)))))

(assert (=> d!1655547 (= (size!39533 (tail!10078 lt!2111207)) lt!2111405)))

(declare-fun b!5121606 () Bool)

(assert (=> b!5121606 (= e!3194191 0)))

(declare-fun b!5121607 () Bool)

(assert (=> b!5121607 (= e!3194191 (+ 1 (size!39533 (t!372394 (tail!10078 lt!2111207)))))))

(assert (= (and d!1655547 c!880182) b!5121606))

(assert (= (and d!1655547 (not c!880182)) b!5121607))

(declare-fun m!6182888 () Bool)

(assert (=> b!5121607 m!6182888))

(assert (=> b!5121426 d!1655547))

(declare-fun d!1655549 () Bool)

(declare-fun c!880183 () Bool)

(assert (=> d!1655549 (= c!880183 ((_ is Nil!59251) lt!2111376))))

(declare-fun e!3194192 () (InoxSet C!28720))

(assert (=> d!1655549 (= (content!10535 lt!2111376) e!3194192)))

(declare-fun b!5121608 () Bool)

(assert (=> b!5121608 (= e!3194192 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121609 () Bool)

(assert (=> b!5121609 (= e!3194192 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 lt!2111376) true) (content!10535 (t!372394 lt!2111376))))))

(assert (= (and d!1655549 c!880183) b!5121608))

(assert (= (and d!1655549 (not c!880183)) b!5121609))

(declare-fun m!6182890 () Bool)

(assert (=> b!5121609 m!6182890))

(declare-fun m!6182892 () Bool)

(assert (=> b!5121609 m!6182892))

(assert (=> d!1655389 d!1655549))

(assert (=> d!1655389 d!1655395))

(declare-fun d!1655551 () Bool)

(declare-fun c!880184 () Bool)

(assert (=> d!1655551 (= c!880184 ((_ is Nil!59251) (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))))

(declare-fun e!3194193 () (InoxSet C!28720))

(assert (=> d!1655551 (= (content!10535 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)) e!3194193)))

(declare-fun b!5121610 () Bool)

(assert (=> b!5121610 (= e!3194193 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121611 () Bool)

(assert (=> b!5121611 (= e!3194193 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)) true) (content!10535 (t!372394 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))))))

(assert (= (and d!1655551 c!880184) b!5121610))

(assert (= (and d!1655551 (not c!880184)) b!5121611))

(declare-fun m!6182894 () Bool)

(assert (=> b!5121611 m!6182894))

(declare-fun m!6182896 () Bool)

(assert (=> b!5121611 m!6182896))

(assert (=> d!1655389 d!1655551))

(declare-fun d!1655553 () Bool)

(declare-fun lt!2111408 () Bool)

(assert (=> d!1655553 (= lt!2111408 (exists!1479 (toList!8266 z!4463) lambda!251383))))

(declare-fun choose!37665 ((InoxSet Context!7222) Int) Bool)

(assert (=> d!1655553 (= lt!2111408 (choose!37665 z!4463 lambda!251383))))

(assert (=> d!1655553 (= (exists!1481 z!4463 lambda!251383) lt!2111408)))

(declare-fun bs!1193010 () Bool)

(assert (= bs!1193010 d!1655553))

(assert (=> bs!1193010 m!6182248))

(assert (=> bs!1193010 m!6182248))

(declare-fun m!6182898 () Bool)

(assert (=> bs!1193010 m!6182898))

(declare-fun m!6182900 () Bool)

(assert (=> bs!1193010 m!6182900))

(assert (=> d!1655311 d!1655553))

(declare-fun d!1655555 () Bool)

(assert (=> d!1655555 (= (head!10943 (tail!10078 knownP!20)) (h!65699 (tail!10078 knownP!20)))))

(assert (=> b!5121310 d!1655555))

(assert (=> b!5121310 d!1655509))

(declare-fun d!1655557 () Bool)

(declare-fun c!880185 () Bool)

(assert (=> d!1655557 (= c!880185 ((_ is Nil!59251) (t!372394 lt!2111274)))))

(declare-fun e!3194197 () (InoxSet C!28720))

(assert (=> d!1655557 (= (content!10535 (t!372394 lt!2111274)) e!3194197)))

(declare-fun b!5121615 () Bool)

(assert (=> b!5121615 (= e!3194197 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121616 () Bool)

(assert (=> b!5121616 (= e!3194197 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 (t!372394 lt!2111274)) true) (content!10535 (t!372394 (t!372394 lt!2111274)))))))

(assert (= (and d!1655557 c!880185) b!5121615))

(assert (= (and d!1655557 (not c!880185)) b!5121616))

(declare-fun m!6182902 () Bool)

(assert (=> b!5121616 m!6182902))

(declare-fun m!6182904 () Bool)

(assert (=> b!5121616 m!6182904))

(assert (=> b!5121414 d!1655557))

(assert (=> b!5121312 d!1655545))

(declare-fun d!1655559 () Bool)

(declare-fun lt!2111409 () Int)

(assert (=> d!1655559 (>= lt!2111409 0)))

(declare-fun e!3194198 () Int)

(assert (=> d!1655559 (= lt!2111409 e!3194198)))

(declare-fun c!880186 () Bool)

(assert (=> d!1655559 (= c!880186 ((_ is Nil!59251) (tail!10078 knownP!20)))))

(assert (=> d!1655559 (= (size!39533 (tail!10078 knownP!20)) lt!2111409)))

(declare-fun b!5121617 () Bool)

(assert (=> b!5121617 (= e!3194198 0)))

(declare-fun b!5121618 () Bool)

(assert (=> b!5121618 (= e!3194198 (+ 1 (size!39533 (t!372394 (tail!10078 knownP!20)))))))

(assert (= (and d!1655559 c!880186) b!5121617))

(assert (= (and d!1655559 (not c!880186)) b!5121618))

(declare-fun m!6182908 () Bool)

(assert (=> b!5121618 m!6182908))

(assert (=> b!5121312 d!1655559))

(declare-fun bs!1193011 () Bool)

(declare-fun d!1655563 () Bool)

(assert (= bs!1193011 (and d!1655563 d!1655361)))

(declare-fun lambda!251422 () Int)

(assert (=> bs!1193011 (not (= lambda!251422 lambda!251405))))

(declare-fun bs!1193012 () Bool)

(assert (= bs!1193012 (and d!1655563 d!1655255)))

(assert (=> bs!1193012 (not (= lambda!251422 lambda!251375))))

(declare-fun bs!1193013 () Bool)

(assert (= bs!1193013 (and d!1655563 d!1655169)))

(assert (=> bs!1193013 (not (= lambda!251422 lambda!251356))))

(declare-fun bs!1193014 () Bool)

(assert (= bs!1193014 (and d!1655563 d!1655311)))

(assert (=> bs!1193014 (= lambda!251422 lambda!251383)))

(declare-fun bs!1193015 () Bool)

(assert (= bs!1193015 (and d!1655563 d!1655479)))

(assert (=> bs!1193015 (= lambda!251422 lambda!251419)))

(declare-fun bs!1193016 () Bool)

(assert (= bs!1193016 (and d!1655563 d!1655347)))

(assert (=> bs!1193016 (not (= lambda!251422 lambda!251401))))

(declare-fun bs!1193017 () Bool)

(assert (= bs!1193017 (and d!1655563 d!1655327)))

(assert (=> bs!1193017 (not (= lambda!251422 lambda!251392))))

(declare-fun bs!1193018 () Bool)

(assert (= bs!1193018 (and d!1655563 b!5121189)))

(assert (=> bs!1193018 (not (= lambda!251422 lambda!251357))))

(declare-fun bs!1193019 () Bool)

(assert (= bs!1193019 (and d!1655563 b!5121190)))

(assert (=> bs!1193019 (not (= lambda!251422 lambda!251358))))

(declare-fun bs!1193020 () Bool)

(assert (= bs!1193020 (and d!1655563 d!1655405)))

(assert (=> bs!1193020 (= lambda!251422 lambda!251409)))

(assert (=> d!1655563 (= (nullableZipper!1030 (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265)))) (exists!1481 (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265))) lambda!251422))))

(declare-fun bs!1193021 () Bool)

(assert (= bs!1193021 d!1655563))

(assert (=> bs!1193021 m!6182260))

(declare-fun m!6182914 () Bool)

(assert (=> bs!1193021 m!6182914))

(assert (=> b!5121332 d!1655563))

(declare-fun d!1655569 () Bool)

(declare-fun lt!2111413 () List!59375)

(assert (=> d!1655569 (= (++!13040 (t!372394 (t!372394 testedP!265)) lt!2111413) (tail!10078 (tail!10078 knownP!20)))))

(declare-fun e!3194203 () List!59375)

(assert (=> d!1655569 (= lt!2111413 e!3194203)))

(declare-fun c!880190 () Bool)

(assert (=> d!1655569 (= c!880190 ((_ is Cons!59251) (t!372394 (t!372394 testedP!265))))))

(assert (=> d!1655569 (>= (size!39533 (tail!10078 (tail!10078 knownP!20))) (size!39533 (t!372394 (t!372394 testedP!265))))))

(assert (=> d!1655569 (= (getSuffix!3304 (tail!10078 (tail!10078 knownP!20)) (t!372394 (t!372394 testedP!265))) lt!2111413)))

(declare-fun b!5121627 () Bool)

(assert (=> b!5121627 (= e!3194203 (getSuffix!3304 (tail!10078 (tail!10078 (tail!10078 knownP!20))) (t!372394 (t!372394 (t!372394 testedP!265)))))))

(declare-fun b!5121628 () Bool)

(assert (=> b!5121628 (= e!3194203 (tail!10078 (tail!10078 knownP!20)))))

(assert (= (and d!1655569 c!880190) b!5121627))

(assert (= (and d!1655569 (not c!880190)) b!5121628))

(declare-fun m!6182916 () Bool)

(assert (=> d!1655569 m!6182916))

(assert (=> d!1655569 m!6182468))

(assert (=> d!1655569 m!6182812))

(assert (=> d!1655569 m!6182500))

(assert (=> b!5121627 m!6182468))

(assert (=> b!5121627 m!6182804))

(assert (=> b!5121627 m!6182804))

(declare-fun m!6182920 () Bool)

(assert (=> b!5121627 m!6182920))

(assert (=> b!5121399 d!1655569))

(assert (=> b!5121399 d!1655501))

(declare-fun d!1655571 () Bool)

(assert (=> d!1655571 (= (isDefined!11511 lt!2111363) (not (isEmpty!31940 lt!2111363)))))

(declare-fun bs!1193022 () Bool)

(assert (= bs!1193022 d!1655571))

(declare-fun m!6182926 () Bool)

(assert (=> bs!1193022 m!6182926))

(assert (=> d!1655347 d!1655571))

(declare-fun d!1655575 () Bool)

(declare-fun lt!2111414 () Bool)

(assert (=> d!1655575 (= lt!2111414 (exists!1479 (toList!8266 z!4463) lambda!251401))))

(assert (=> d!1655575 (= lt!2111414 (choose!37665 z!4463 lambda!251401))))

(assert (=> d!1655575 (= (exists!1481 z!4463 lambda!251401) lt!2111414)))

(declare-fun bs!1193023 () Bool)

(assert (= bs!1193023 d!1655575))

(assert (=> bs!1193023 m!6182248))

(assert (=> bs!1193023 m!6182248))

(declare-fun m!6182928 () Bool)

(assert (=> bs!1193023 m!6182928))

(declare-fun m!6182930 () Bool)

(assert (=> bs!1193023 m!6182930))

(assert (=> d!1655347 d!1655575))

(declare-fun d!1655577 () Bool)

(declare-fun c!880191 () Bool)

(assert (=> d!1655577 (= c!880191 ((_ is Nil!59251) (t!372394 testedP!265)))))

(declare-fun e!3194204 () (InoxSet C!28720))

(assert (=> d!1655577 (= (content!10535 (t!372394 testedP!265)) e!3194204)))

(declare-fun b!5121629 () Bool)

(assert (=> b!5121629 (= e!3194204 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121630 () Bool)

(assert (=> b!5121630 (= e!3194204 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 (t!372394 testedP!265)) true) (content!10535 (t!372394 (t!372394 testedP!265)))))))

(assert (= (and d!1655577 c!880191) b!5121629))

(assert (= (and d!1655577 (not c!880191)) b!5121630))

(declare-fun m!6182932 () Bool)

(assert (=> b!5121630 m!6182932))

(assert (=> b!5121630 m!6182784))

(assert (=> b!5121416 d!1655577))

(declare-fun d!1655579 () Bool)

(declare-fun e!3194206 () Bool)

(assert (=> d!1655579 e!3194206))

(declare-fun res!2180772 () Bool)

(assert (=> d!1655579 (=> (not res!2180772) (not e!3194206))))

(declare-fun lt!2111415 () List!59375)

(assert (=> d!1655579 (= res!2180772 (= (content!10535 lt!2111415) ((_ map or) (content!10535 (t!372394 testedP!265)) (content!10535 lt!2111375))))))

(declare-fun e!3194205 () List!59375)

(assert (=> d!1655579 (= lt!2111415 e!3194205)))

(declare-fun c!880192 () Bool)

(assert (=> d!1655579 (= c!880192 ((_ is Nil!59251) (t!372394 testedP!265)))))

(assert (=> d!1655579 (= (++!13040 (t!372394 testedP!265) lt!2111375) lt!2111415)))

(declare-fun b!5121633 () Bool)

(declare-fun res!2180773 () Bool)

(assert (=> b!5121633 (=> (not res!2180773) (not e!3194206))))

(assert (=> b!5121633 (= res!2180773 (= (size!39533 lt!2111415) (+ (size!39533 (t!372394 testedP!265)) (size!39533 lt!2111375))))))

(declare-fun b!5121631 () Bool)

(assert (=> b!5121631 (= e!3194205 lt!2111375)))

(declare-fun b!5121634 () Bool)

(assert (=> b!5121634 (= e!3194206 (or (not (= lt!2111375 Nil!59251)) (= lt!2111415 (t!372394 testedP!265))))))

(declare-fun b!5121632 () Bool)

(assert (=> b!5121632 (= e!3194205 (Cons!59251 (h!65699 (t!372394 testedP!265)) (++!13040 (t!372394 (t!372394 testedP!265)) lt!2111375)))))

(assert (= (and d!1655579 c!880192) b!5121631))

(assert (= (and d!1655579 (not c!880192)) b!5121632))

(assert (= (and d!1655579 res!2180772) b!5121633))

(assert (= (and b!5121633 res!2180773) b!5121634))

(declare-fun m!6182936 () Bool)

(assert (=> d!1655579 m!6182936))

(assert (=> d!1655579 m!6182578))

(declare-fun m!6182940 () Bool)

(assert (=> d!1655579 m!6182940))

(declare-fun m!6182942 () Bool)

(assert (=> b!5121633 m!6182942))

(assert (=> b!5121633 m!6182232))

(declare-fun m!6182946 () Bool)

(assert (=> b!5121633 m!6182946))

(declare-fun m!6182948 () Bool)

(assert (=> b!5121632 m!6182948))

(assert (=> d!1655385 d!1655579))

(assert (=> d!1655385 d!1655559))

(assert (=> d!1655385 d!1655315))

(declare-fun d!1655585 () Bool)

(declare-fun c!880193 () Bool)

(assert (=> d!1655585 (= c!880193 ((_ is Cons!59251) (t!372394 (t!372394 lt!2111207))))))

(declare-fun e!3194207 () (InoxSet Context!7222))

(assert (=> d!1655585 (= (derivationZipper!124 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (h!65699 lt!2111207)) (h!65699 (t!372394 lt!2111207))) (t!372394 (t!372394 lt!2111207))) e!3194207)))

(declare-fun b!5121635 () Bool)

(assert (=> b!5121635 (= e!3194207 (derivationZipper!124 (derivationStepZipper!850 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (h!65699 lt!2111207)) (h!65699 (t!372394 lt!2111207))) (h!65699 (t!372394 (t!372394 lt!2111207)))) (t!372394 (t!372394 (t!372394 lt!2111207)))))))

(declare-fun b!5121636 () Bool)

(assert (=> b!5121636 (= e!3194207 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (h!65699 lt!2111207)) (h!65699 (t!372394 lt!2111207))))))

(assert (= (and d!1655585 c!880193) b!5121635))

(assert (= (and d!1655585 (not c!880193)) b!5121636))

(assert (=> b!5121635 m!6182684))

(declare-fun m!6182952 () Bool)

(assert (=> b!5121635 m!6182952))

(assert (=> b!5121635 m!6182952))

(declare-fun m!6182954 () Bool)

(assert (=> b!5121635 m!6182954))

(assert (=> b!5121431 d!1655585))

(declare-fun bs!1193027 () Bool)

(declare-fun d!1655589 () Bool)

(assert (= bs!1193027 (and d!1655589 d!1655543)))

(declare-fun lambda!251423 () Int)

(assert (=> bs!1193027 (= (= (h!65699 (t!372394 lt!2111207)) (h!65699 (t!372394 testedP!265))) (= lambda!251423 lambda!251421))))

(declare-fun bs!1193028 () Bool)

(assert (= bs!1193028 (and d!1655589 d!1655155)))

(assert (=> bs!1193028 (= (= (h!65699 (t!372394 lt!2111207)) lt!2111206) (= lambda!251423 lambda!251342))))

(declare-fun bs!1193029 () Bool)

(assert (= bs!1193029 (and d!1655589 d!1655333)))

(assert (=> bs!1193029 (= (= (h!65699 (t!372394 lt!2111207)) (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (= lambda!251423 lambda!251394))))

(declare-fun bs!1193030 () Bool)

(assert (= bs!1193030 (and d!1655589 d!1655415)))

(assert (=> bs!1193030 (= (= (h!65699 (t!372394 lt!2111207)) (h!65699 lt!2111207)) (= lambda!251423 lambda!251410))))

(declare-fun bs!1193031 () Bool)

(assert (= bs!1193031 (and d!1655589 d!1655403)))

(assert (=> bs!1193031 (= (= (h!65699 (t!372394 lt!2111207)) (head!10943 knownP!20)) (= lambda!251423 lambda!251408))))

(declare-fun bs!1193032 () Bool)

(assert (= bs!1193032 (and d!1655589 d!1655365)))

(assert (=> bs!1193032 (= (= (h!65699 (t!372394 lt!2111207)) (h!65699 testedP!265)) (= lambda!251423 lambda!251406))))

(assert (=> d!1655589 true))

(assert (=> d!1655589 (= (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (h!65699 lt!2111207)) (h!65699 (t!372394 lt!2111207))) (flatMap!361 (derivationStepZipper!850 baseZ!46 (h!65699 lt!2111207)) lambda!251423))))

(declare-fun bs!1193033 () Bool)

(assert (= bs!1193033 d!1655589))

(assert (=> bs!1193033 m!6182224))

(declare-fun m!6182960 () Bool)

(assert (=> bs!1193033 m!6182960))

(assert (=> b!5121431 d!1655589))

(declare-fun d!1655593 () Bool)

(declare-fun lt!2111418 () Int)

(assert (=> d!1655593 (>= lt!2111418 0)))

(declare-fun e!3194211 () Int)

(assert (=> d!1655593 (= lt!2111418 e!3194211)))

(declare-fun c!880196 () Bool)

(assert (=> d!1655593 (= c!880196 ((_ is Nil!59251) (t!372394 (t!372394 input!5745))))))

(assert (=> d!1655593 (= (size!39533 (t!372394 (t!372394 input!5745))) lt!2111418)))

(declare-fun b!5121643 () Bool)

(assert (=> b!5121643 (= e!3194211 0)))

(declare-fun b!5121644 () Bool)

(assert (=> b!5121644 (= e!3194211 (+ 1 (size!39533 (t!372394 (t!372394 (t!372394 input!5745))))))))

(assert (= (and d!1655593 c!880196) b!5121643))

(assert (= (and d!1655593 (not c!880196)) b!5121644))

(declare-fun m!6182964 () Bool)

(assert (=> b!5121644 m!6182964))

(assert (=> b!5121420 d!1655593))

(declare-fun d!1655595 () Bool)

(declare-fun lt!2111419 () Bool)

(assert (=> d!1655595 (= lt!2111419 (exists!1479 (toList!8266 baseZ!46) lambda!251409))))

(assert (=> d!1655595 (= lt!2111419 (choose!37665 baseZ!46 lambda!251409))))

(assert (=> d!1655595 (= (exists!1481 baseZ!46 lambda!251409) lt!2111419)))

(declare-fun bs!1193034 () Bool)

(assert (= bs!1193034 d!1655595))

(declare-fun m!6182972 () Bool)

(assert (=> bs!1193034 m!6182972))

(assert (=> bs!1193034 m!6182972))

(declare-fun m!6182976 () Bool)

(assert (=> bs!1193034 m!6182976))

(declare-fun m!6182978 () Bool)

(assert (=> bs!1193034 m!6182978))

(assert (=> d!1655405 d!1655595))

(declare-fun d!1655599 () Bool)

(declare-fun lt!2111420 () Int)

(assert (=> d!1655599 (>= lt!2111420 0)))

(declare-fun e!3194212 () Int)

(assert (=> d!1655599 (= lt!2111420 e!3194212)))

(declare-fun c!880197 () Bool)

(assert (=> d!1655599 (= c!880197 ((_ is Nil!59251) lt!2111371))))

(assert (=> d!1655599 (= (size!39533 lt!2111371) lt!2111420)))

(declare-fun b!5121645 () Bool)

(assert (=> b!5121645 (= e!3194212 0)))

(declare-fun b!5121646 () Bool)

(assert (=> b!5121646 (= e!3194212 (+ 1 (size!39533 (t!372394 lt!2111371))))))

(assert (= (and d!1655599 c!880197) b!5121645))

(assert (= (and d!1655599 (not c!880197)) b!5121646))

(declare-fun m!6182980 () Bool)

(assert (=> b!5121646 m!6182980))

(assert (=> b!5121391 d!1655599))

(assert (=> b!5121391 d!1655161))

(declare-fun d!1655601 () Bool)

(declare-fun lt!2111421 () Int)

(assert (=> d!1655601 (>= lt!2111421 0)))

(declare-fun e!3194213 () Int)

(assert (=> d!1655601 (= lt!2111421 e!3194213)))

(declare-fun c!880198 () Bool)

(assert (=> d!1655601 (= c!880198 ((_ is Nil!59251) lt!2111312))))

(assert (=> d!1655601 (= (size!39533 lt!2111312) lt!2111421)))

(declare-fun b!5121647 () Bool)

(assert (=> b!5121647 (= e!3194213 0)))

(declare-fun b!5121648 () Bool)

(assert (=> b!5121648 (= e!3194213 (+ 1 (size!39533 (t!372394 lt!2111312))))))

(assert (= (and d!1655601 c!880198) b!5121647))

(assert (= (and d!1655601 (not c!880198)) b!5121648))

(declare-fun m!6182982 () Bool)

(assert (=> b!5121648 m!6182982))

(assert (=> b!5121391 d!1655601))

(declare-fun d!1655603 () Bool)

(assert (=> d!1655603 (= (head!10943 (tail!10078 testedP!265)) (h!65699 (tail!10078 testedP!265)))))

(assert (=> b!5121327 d!1655603))

(assert (=> b!5121327 d!1655509))

(declare-fun d!1655605 () Bool)

(declare-fun c!880199 () Bool)

(assert (=> d!1655605 (= c!880199 (isEmpty!31941 (tail!10078 (tail!10078 knownP!20))))))

(declare-fun e!3194214 () Bool)

(assert (=> d!1655605 (= (matchZipper!895 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20)) (head!10943 (tail!10078 knownP!20))) (tail!10078 (tail!10078 knownP!20))) e!3194214)))

(declare-fun b!5121649 () Bool)

(assert (=> b!5121649 (= e!3194214 (nullableZipper!1030 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20)) (head!10943 (tail!10078 knownP!20)))))))

(declare-fun b!5121650 () Bool)

(assert (=> b!5121650 (= e!3194214 (matchZipper!895 (derivationStepZipper!850 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20)) (head!10943 (tail!10078 knownP!20))) (head!10943 (tail!10078 (tail!10078 knownP!20)))) (tail!10078 (tail!10078 (tail!10078 knownP!20)))))))

(assert (= (and d!1655605 c!880199) b!5121649))

(assert (= (and d!1655605 (not c!880199)) b!5121650))

(assert (=> d!1655605 m!6182468))

(declare-fun m!6182984 () Bool)

(assert (=> d!1655605 m!6182984))

(assert (=> b!5121649 m!6182666))

(declare-fun m!6182986 () Bool)

(assert (=> b!5121649 m!6182986))

(assert (=> b!5121650 m!6182468))

(assert (=> b!5121650 m!6182810))

(assert (=> b!5121650 m!6182666))

(assert (=> b!5121650 m!6182810))

(declare-fun m!6182988 () Bool)

(assert (=> b!5121650 m!6182988))

(assert (=> b!5121650 m!6182468))

(assert (=> b!5121650 m!6182804))

(assert (=> b!5121650 m!6182988))

(assert (=> b!5121650 m!6182804))

(declare-fun m!6182990 () Bool)

(assert (=> b!5121650 m!6182990))

(assert (=> b!5121422 d!1655605))

(declare-fun bs!1193044 () Bool)

(declare-fun d!1655607 () Bool)

(assert (= bs!1193044 (and d!1655607 d!1655543)))

(declare-fun lambda!251425 () Int)

(assert (=> bs!1193044 (= (= (head!10943 (tail!10078 knownP!20)) (h!65699 (t!372394 testedP!265))) (= lambda!251425 lambda!251421))))

(declare-fun bs!1193046 () Bool)

(assert (= bs!1193046 (and d!1655607 d!1655155)))

(assert (=> bs!1193046 (= (= (head!10943 (tail!10078 knownP!20)) lt!2111206) (= lambda!251425 lambda!251342))))

(declare-fun bs!1193047 () Bool)

(assert (= bs!1193047 (and d!1655607 d!1655589)))

(assert (=> bs!1193047 (= (= (head!10943 (tail!10078 knownP!20)) (h!65699 (t!372394 lt!2111207))) (= lambda!251425 lambda!251423))))

(declare-fun bs!1193049 () Bool)

(assert (= bs!1193049 (and d!1655607 d!1655333)))

(assert (=> bs!1193049 (= (= (head!10943 (tail!10078 knownP!20)) (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (= lambda!251425 lambda!251394))))

(declare-fun bs!1193050 () Bool)

(assert (= bs!1193050 (and d!1655607 d!1655415)))

(assert (=> bs!1193050 (= (= (head!10943 (tail!10078 knownP!20)) (h!65699 lt!2111207)) (= lambda!251425 lambda!251410))))

(declare-fun bs!1193052 () Bool)

(assert (= bs!1193052 (and d!1655607 d!1655403)))

(assert (=> bs!1193052 (= (= (head!10943 (tail!10078 knownP!20)) (head!10943 knownP!20)) (= lambda!251425 lambda!251408))))

(declare-fun bs!1193053 () Bool)

(assert (= bs!1193053 (and d!1655607 d!1655365)))

(assert (=> bs!1193053 (= (= (head!10943 (tail!10078 knownP!20)) (h!65699 testedP!265)) (= lambda!251425 lambda!251406))))

(assert (=> d!1655607 true))

(assert (=> d!1655607 (= (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20)) (head!10943 (tail!10078 knownP!20))) (flatMap!361 (derivationStepZipper!850 baseZ!46 (head!10943 knownP!20)) lambda!251425))))

(declare-fun bs!1193054 () Bool)

(assert (= bs!1193054 d!1655607))

(assert (=> bs!1193054 m!6182278))

(declare-fun m!6182992 () Bool)

(assert (=> bs!1193054 m!6182992))

(assert (=> b!5121422 d!1655607))

(assert (=> b!5121422 d!1655555))

(assert (=> b!5121422 d!1655501))

(declare-fun d!1655609 () Bool)

(declare-fun e!3194216 () Bool)

(assert (=> d!1655609 e!3194216))

(declare-fun res!2180776 () Bool)

(assert (=> d!1655609 (=> (not res!2180776) (not e!3194216))))

(declare-fun lt!2111422 () List!59375)

(assert (=> d!1655609 (= res!2180776 (= (content!10535 lt!2111422) ((_ map or) (content!10535 (t!372394 testedP!265)) (content!10535 lt!2111374))))))

(declare-fun e!3194215 () List!59375)

(assert (=> d!1655609 (= lt!2111422 e!3194215)))

(declare-fun c!880200 () Bool)

(assert (=> d!1655609 (= c!880200 ((_ is Nil!59251) (t!372394 testedP!265)))))

(assert (=> d!1655609 (= (++!13040 (t!372394 testedP!265) lt!2111374) lt!2111422)))

(declare-fun b!5121653 () Bool)

(declare-fun res!2180777 () Bool)

(assert (=> b!5121653 (=> (not res!2180777) (not e!3194216))))

(assert (=> b!5121653 (= res!2180777 (= (size!39533 lt!2111422) (+ (size!39533 (t!372394 testedP!265)) (size!39533 lt!2111374))))))

(declare-fun b!5121651 () Bool)

(assert (=> b!5121651 (= e!3194215 lt!2111374)))

(declare-fun b!5121654 () Bool)

(assert (=> b!5121654 (= e!3194216 (or (not (= lt!2111374 Nil!59251)) (= lt!2111422 (t!372394 testedP!265))))))

(declare-fun b!5121652 () Bool)

(assert (=> b!5121652 (= e!3194215 (Cons!59251 (h!65699 (t!372394 testedP!265)) (++!13040 (t!372394 (t!372394 testedP!265)) lt!2111374)))))

(assert (= (and d!1655609 c!880200) b!5121651))

(assert (= (and d!1655609 (not c!880200)) b!5121652))

(assert (= (and d!1655609 res!2180776) b!5121653))

(assert (= (and b!5121653 res!2180777) b!5121654))

(declare-fun m!6182996 () Bool)

(assert (=> d!1655609 m!6182996))

(assert (=> d!1655609 m!6182578))

(declare-fun m!6183000 () Bool)

(assert (=> d!1655609 m!6183000))

(declare-fun m!6183002 () Bool)

(assert (=> b!5121653 m!6183002))

(assert (=> b!5121653 m!6182232))

(declare-fun m!6183006 () Bool)

(assert (=> b!5121653 m!6183006))

(declare-fun m!6183008 () Bool)

(assert (=> b!5121652 m!6183008))

(assert (=> d!1655383 d!1655609))

(assert (=> d!1655383 d!1655545))

(assert (=> d!1655383 d!1655315))

(declare-fun d!1655615 () Bool)

(assert (=> d!1655615 (= (isEmpty!31941 (tail!10078 knownP!20)) ((_ is Nil!59251) (tail!10078 knownP!20)))))

(assert (=> d!1655401 d!1655615))

(declare-fun d!1655617 () Bool)

(declare-fun lt!2111423 () Int)

(assert (=> d!1655617 (>= lt!2111423 0)))

(declare-fun e!3194219 () Int)

(assert (=> d!1655617 (= lt!2111423 e!3194219)))

(declare-fun c!880203 () Bool)

(assert (=> d!1655617 (= c!880203 ((_ is Nil!59251) lt!2111369))))

(assert (=> d!1655617 (= (size!39533 lt!2111369) lt!2111423)))

(declare-fun b!5121659 () Bool)

(assert (=> b!5121659 (= e!3194219 0)))

(declare-fun b!5121660 () Bool)

(assert (=> b!5121660 (= e!3194219 (+ 1 (size!39533 (t!372394 lt!2111369))))))

(assert (= (and d!1655617 c!880203) b!5121659))

(assert (= (and d!1655617 (not c!880203)) b!5121660))

(declare-fun m!6183012 () Bool)

(assert (=> b!5121660 m!6183012))

(assert (=> b!5121379 d!1655617))

(assert (=> b!5121379 d!1655315))

(assert (=> b!5121379 d!1655377))

(declare-fun d!1655619 () Bool)

(declare-fun e!3194221 () Bool)

(assert (=> d!1655619 e!3194221))

(declare-fun res!2180778 () Bool)

(assert (=> d!1655619 (=> (not res!2180778) (not e!3194221))))

(declare-fun lt!2111424 () List!59375)

(assert (=> d!1655619 (= res!2180778 (= (content!10535 lt!2111424) ((_ map or) (content!10535 (t!372394 testedP!265)) (content!10535 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))))))

(declare-fun e!3194220 () List!59375)

(assert (=> d!1655619 (= lt!2111424 e!3194220)))

(declare-fun c!880204 () Bool)

(assert (=> d!1655619 (= c!880204 ((_ is Nil!59251) (t!372394 testedP!265)))))

(assert (=> d!1655619 (= (++!13040 (t!372394 testedP!265) (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)) lt!2111424)))

(declare-fun b!5121663 () Bool)

(declare-fun res!2180779 () Bool)

(assert (=> b!5121663 (=> (not res!2180779) (not e!3194221))))

(assert (=> b!5121663 (= res!2180779 (= (size!39533 lt!2111424) (+ (size!39533 (t!372394 testedP!265)) (size!39533 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))))))

(declare-fun b!5121661 () Bool)

(assert (=> b!5121661 (= e!3194220 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))))

(declare-fun b!5121664 () Bool)

(assert (=> b!5121664 (= e!3194221 (or (not (= (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251) Nil!59251)) (= lt!2111424 (t!372394 testedP!265))))))

(declare-fun b!5121662 () Bool)

(assert (=> b!5121662 (= e!3194220 (Cons!59251 (h!65699 (t!372394 testedP!265)) (++!13040 (t!372394 (t!372394 testedP!265)) (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))))))

(assert (= (and d!1655619 c!880204) b!5121661))

(assert (= (and d!1655619 (not c!880204)) b!5121662))

(assert (= (and d!1655619 res!2180778) b!5121663))

(assert (= (and b!5121663 res!2180779) b!5121664))

(declare-fun m!6183016 () Bool)

(assert (=> d!1655619 m!6183016))

(assert (=> d!1655619 m!6182578))

(assert (=> d!1655619 m!6182634))

(declare-fun m!6183018 () Bool)

(assert (=> b!5121663 m!6183018))

(assert (=> b!5121663 m!6182232))

(assert (=> b!5121663 m!6182638))

(declare-fun m!6183020 () Bool)

(assert (=> b!5121662 m!6183020))

(assert (=> b!5121402 d!1655619))

(assert (=> b!5121428 d!1655603))

(assert (=> b!5121428 d!1655555))

(declare-fun d!1655629 () Bool)

(declare-fun res!2180782 () Bool)

(declare-fun e!3194224 () Bool)

(assert (=> d!1655629 (=> res!2180782 e!3194224)))

(assert (=> d!1655629 (= res!2180782 ((_ is Nil!59252) (t!372395 (exprs!4111 setElem!30412))))))

(assert (=> d!1655629 (= (forall!13616 (t!372395 (exprs!4111 setElem!30412)) lambda!251339) e!3194224)))

(declare-fun b!5121667 () Bool)

(declare-fun e!3194225 () Bool)

(assert (=> b!5121667 (= e!3194224 e!3194225)))

(declare-fun res!2180783 () Bool)

(assert (=> b!5121667 (=> (not res!2180783) (not e!3194225))))

(assert (=> b!5121667 (= res!2180783 (dynLambda!23601 lambda!251339 (h!65700 (t!372395 (exprs!4111 setElem!30412)))))))

(declare-fun b!5121668 () Bool)

(assert (=> b!5121668 (= e!3194225 (forall!13616 (t!372395 (t!372395 (exprs!4111 setElem!30412))) lambda!251339))))

(assert (= (and d!1655629 (not res!2180782)) b!5121667))

(assert (= (and b!5121667 res!2180783) b!5121668))

(declare-fun b_lambda!198953 () Bool)

(assert (=> (not b_lambda!198953) (not b!5121667)))

(declare-fun m!6183022 () Bool)

(assert (=> b!5121667 m!6183022))

(declare-fun m!6183024 () Bool)

(assert (=> b!5121668 m!6183024))

(assert (=> b!5121388 d!1655629))

(declare-fun d!1655631 () Bool)

(declare-fun lt!2111425 () List!59375)

(assert (=> d!1655631 (= (++!13040 (t!372394 (t!372394 testedP!265)) lt!2111425) (tail!10078 (tail!10078 input!5745)))))

(declare-fun e!3194226 () List!59375)

(assert (=> d!1655631 (= lt!2111425 e!3194226)))

(declare-fun c!880205 () Bool)

(assert (=> d!1655631 (= c!880205 ((_ is Cons!59251) (t!372394 (t!372394 testedP!265))))))

(assert (=> d!1655631 (>= (size!39533 (tail!10078 (tail!10078 input!5745))) (size!39533 (t!372394 (t!372394 testedP!265))))))

(assert (=> d!1655631 (= (getSuffix!3304 (tail!10078 (tail!10078 input!5745)) (t!372394 (t!372394 testedP!265))) lt!2111425)))

(declare-fun b!5121669 () Bool)

(assert (=> b!5121669 (= e!3194226 (getSuffix!3304 (tail!10078 (tail!10078 (tail!10078 input!5745))) (t!372394 (t!372394 (t!372394 testedP!265)))))))

(declare-fun b!5121670 () Bool)

(assert (=> b!5121670 (= e!3194226 (tail!10078 (tail!10078 input!5745)))))

(assert (= (and d!1655631 c!880205) b!5121669))

(assert (= (and d!1655631 (not c!880205)) b!5121670))

(declare-fun m!6183030 () Bool)

(assert (=> d!1655631 m!6183030))

(assert (=> d!1655631 m!6182472))

(assert (=> d!1655631 m!6182832))

(assert (=> d!1655631 m!6182500))

(assert (=> b!5121669 m!6182472))

(assert (=> b!5121669 m!6182826))

(assert (=> b!5121669 m!6182826))

(declare-fun m!6183032 () Bool)

(assert (=> b!5121669 m!6183032))

(assert (=> b!5121397 d!1655631))

(assert (=> b!5121397 d!1655513))

(declare-fun d!1655635 () Bool)

(declare-fun lt!2111427 () Int)

(assert (=> d!1655635 (>= lt!2111427 0)))

(declare-fun e!3194228 () Int)

(assert (=> d!1655635 (= lt!2111427 e!3194228)))

(declare-fun c!880207 () Bool)

(assert (=> d!1655635 (= c!880207 ((_ is Nil!59251) (t!372394 (t!372394 knownP!20))))))

(assert (=> d!1655635 (= (size!39533 (t!372394 (t!372394 knownP!20))) lt!2111427)))

(declare-fun b!5121673 () Bool)

(assert (=> b!5121673 (= e!3194228 0)))

(declare-fun b!5121674 () Bool)

(assert (=> b!5121674 (= e!3194228 (+ 1 (size!39533 (t!372394 (t!372394 (t!372394 knownP!20))))))))

(assert (= (and d!1655635 c!880207) b!5121673))

(assert (= (and d!1655635 (not c!880207)) b!5121674))

(declare-fun m!6183034 () Bool)

(assert (=> b!5121674 m!6183034))

(assert (=> b!5121376 d!1655635))

(declare-fun d!1655637 () Bool)

(declare-fun lt!2111428 () Int)

(assert (=> d!1655637 (>= lt!2111428 0)))

(declare-fun e!3194229 () Int)

(assert (=> d!1655637 (= lt!2111428 e!3194229)))

(declare-fun c!880208 () Bool)

(assert (=> d!1655637 (= c!880208 ((_ is Nil!59251) lt!2111370))))

(assert (=> d!1655637 (= (size!39533 lt!2111370) lt!2111428)))

(declare-fun b!5121675 () Bool)

(assert (=> b!5121675 (= e!3194229 0)))

(declare-fun b!5121676 () Bool)

(assert (=> b!5121676 (= e!3194229 (+ 1 (size!39533 (t!372394 lt!2111370))))))

(assert (= (and d!1655637 c!880208) b!5121675))

(assert (= (and d!1655637 (not c!880208)) b!5121676))

(declare-fun m!6183038 () Bool)

(assert (=> b!5121676 m!6183038))

(assert (=> b!5121385 d!1655637))

(assert (=> b!5121385 d!1655161))

(declare-fun d!1655639 () Bool)

(declare-fun lt!2111429 () Int)

(assert (=> d!1655639 (>= lt!2111429 0)))

(declare-fun e!3194230 () Int)

(assert (=> d!1655639 (= lt!2111429 e!3194230)))

(declare-fun c!880209 () Bool)

(assert (=> d!1655639 (= c!880209 ((_ is Nil!59251) lt!2111271))))

(assert (=> d!1655639 (= (size!39533 lt!2111271) lt!2111429)))

(declare-fun b!5121677 () Bool)

(assert (=> b!5121677 (= e!3194230 0)))

(declare-fun b!5121678 () Bool)

(assert (=> b!5121678 (= e!3194230 (+ 1 (size!39533 (t!372394 lt!2111271))))))

(assert (= (and d!1655639 c!880209) b!5121677))

(assert (= (and d!1655639 (not c!880209)) b!5121678))

(declare-fun m!6183040 () Bool)

(assert (=> b!5121678 m!6183040))

(assert (=> b!5121385 d!1655639))

(assert (=> b!5121430 d!1655559))

(declare-fun d!1655641 () Bool)

(declare-fun lt!2111430 () Int)

(assert (=> d!1655641 (>= lt!2111430 0)))

(declare-fun e!3194231 () Int)

(assert (=> d!1655641 (= lt!2111430 e!3194231)))

(declare-fun c!880210 () Bool)

(assert (=> d!1655641 (= c!880210 ((_ is Nil!59251) (tail!10078 testedP!265)))))

(assert (=> d!1655641 (= (size!39533 (tail!10078 testedP!265)) lt!2111430)))

(declare-fun b!5121679 () Bool)

(assert (=> b!5121679 (= e!3194231 0)))

(declare-fun b!5121680 () Bool)

(assert (=> b!5121680 (= e!3194231 (+ 1 (size!39533 (t!372394 (tail!10078 testedP!265)))))))

(assert (= (and d!1655641 c!880210) b!5121679))

(assert (= (and d!1655641 (not c!880210)) b!5121680))

(declare-fun m!6183044 () Bool)

(assert (=> b!5121680 m!6183044))

(assert (=> b!5121430 d!1655641))

(declare-fun b!5121687 () Bool)

(declare-fun e!3194234 () Bool)

(assert (=> b!5121687 (= e!3194234 (isPrefix!5632 (tail!10078 (tail!10078 (tail!10078 lt!2111207))) (tail!10078 (tail!10078 (tail!10078 input!5745)))))))

(declare-fun b!5121686 () Bool)

(declare-fun res!2180786 () Bool)

(assert (=> b!5121686 (=> (not res!2180786) (not e!3194234))))

(assert (=> b!5121686 (= res!2180786 (= (head!10943 (tail!10078 (tail!10078 lt!2111207))) (head!10943 (tail!10078 (tail!10078 input!5745)))))))

(declare-fun b!5121685 () Bool)

(declare-fun e!3194236 () Bool)

(assert (=> b!5121685 (= e!3194236 e!3194234)))

(declare-fun res!2180789 () Bool)

(assert (=> b!5121685 (=> (not res!2180789) (not e!3194234))))

(assert (=> b!5121685 (= res!2180789 (not ((_ is Nil!59251) (tail!10078 (tail!10078 input!5745)))))))

(declare-fun d!1655645 () Bool)

(declare-fun e!3194235 () Bool)

(assert (=> d!1655645 e!3194235))

(declare-fun res!2180787 () Bool)

(assert (=> d!1655645 (=> res!2180787 e!3194235)))

(declare-fun lt!2111432 () Bool)

(assert (=> d!1655645 (= res!2180787 (not lt!2111432))))

(assert (=> d!1655645 (= lt!2111432 e!3194236)))

(declare-fun res!2180788 () Bool)

(assert (=> d!1655645 (=> res!2180788 e!3194236)))

(assert (=> d!1655645 (= res!2180788 ((_ is Nil!59251) (tail!10078 (tail!10078 lt!2111207))))))

(assert (=> d!1655645 (= (isPrefix!5632 (tail!10078 (tail!10078 lt!2111207)) (tail!10078 (tail!10078 input!5745))) lt!2111432)))

(declare-fun b!5121688 () Bool)

(assert (=> b!5121688 (= e!3194235 (>= (size!39533 (tail!10078 (tail!10078 input!5745))) (size!39533 (tail!10078 (tail!10078 lt!2111207)))))))

(assert (= (and d!1655645 (not res!2180788)) b!5121685))

(assert (= (and b!5121685 res!2180789) b!5121686))

(assert (= (and b!5121686 res!2180786) b!5121687))

(assert (= (and d!1655645 (not res!2180787)) b!5121688))

(assert (=> b!5121687 m!6182674))

(declare-fun m!6183046 () Bool)

(assert (=> b!5121687 m!6183046))

(assert (=> b!5121687 m!6182472))

(assert (=> b!5121687 m!6182826))

(assert (=> b!5121687 m!6183046))

(assert (=> b!5121687 m!6182826))

(declare-fun m!6183050 () Bool)

(assert (=> b!5121687 m!6183050))

(assert (=> b!5121686 m!6182674))

(declare-fun m!6183052 () Bool)

(assert (=> b!5121686 m!6183052))

(assert (=> b!5121686 m!6182472))

(assert (=> b!5121686 m!6182830))

(assert (=> b!5121688 m!6182472))

(assert (=> b!5121688 m!6182832))

(assert (=> b!5121688 m!6182674))

(declare-fun m!6183056 () Bool)

(assert (=> b!5121688 m!6183056))

(assert (=> b!5121425 d!1655645))

(declare-fun d!1655647 () Bool)

(assert (=> d!1655647 (= (tail!10078 (tail!10078 lt!2111207)) (t!372394 (tail!10078 lt!2111207)))))

(assert (=> b!5121425 d!1655647))

(assert (=> b!5121425 d!1655513))

(declare-fun bs!1193093 () Bool)

(declare-fun d!1655649 () Bool)

(assert (= bs!1193093 (and d!1655649 d!1655091)))

(declare-fun lambda!251433 () Int)

(assert (=> bs!1193093 (not (= lambda!251433 lambda!251339))))

(declare-fun bs!1193094 () Bool)

(assert (= bs!1193094 (and d!1655649 d!1655167)))

(assert (=> bs!1193094 (not (= lambda!251433 lambda!251343))))

(declare-fun bs!1193095 () Bool)

(assert (= bs!1193095 (and d!1655649 d!1655359)))

(assert (=> bs!1193095 (not (= lambda!251433 lambda!251402))))

(declare-fun bs!1193096 () Bool)

(assert (= bs!1193096 (and d!1655649 d!1655379)))

(assert (=> bs!1193096 (not (= lambda!251433 lambda!251407))))

(declare-fun b!5121723 () Bool)

(declare-fun e!3194260 () Option!14700)

(declare-fun lt!2111442 () Option!14700)

(declare-fun lt!2111444 () Option!14700)

(assert (=> b!5121723 (= e!3194260 (Some!14699 (++!13040 (v!50712 lt!2111442) (v!50712 lt!2111444))))))

(declare-fun lt!2111443 () Option!14700)

(declare-fun exists!1482 (List!59376 Int) Bool)

(assert (=> d!1655649 (= (isEmpty!31940 lt!2111443) (exists!1482 (exprs!4111 (getWitness!672 z!4463 lambda!251401)) lambda!251433))))

(declare-fun e!3194259 () Option!14700)

(assert (=> d!1655649 (= lt!2111443 e!3194259)))

(declare-fun c!880227 () Bool)

(assert (=> d!1655649 (= c!880227 ((_ is Cons!59252) (exprs!4111 (getWitness!672 z!4463 lambda!251401))))))

(assert (=> d!1655649 (= (getLanguageWitness!820 (getWitness!672 z!4463 lambda!251401)) lt!2111443)))

(declare-fun b!5121724 () Bool)

(assert (=> b!5121724 (= e!3194260 None!14699)))

(declare-fun b!5121725 () Bool)

(declare-fun e!3194261 () Option!14700)

(assert (=> b!5121725 (= e!3194261 None!14699)))

(declare-fun b!5121726 () Bool)

(declare-fun c!880226 () Bool)

(assert (=> b!5121726 (= c!880226 ((_ is Some!14699) lt!2111444))))

(assert (=> b!5121726 (= lt!2111444 (getLanguageWitness!820 (Context!7223 (t!372395 (exprs!4111 (getWitness!672 z!4463 lambda!251401))))))))

(assert (=> b!5121726 (= e!3194261 e!3194260)))

(declare-fun b!5121727 () Bool)

(assert (=> b!5121727 (= e!3194259 (Some!14699 Nil!59251))))

(declare-fun b!5121728 () Bool)

(assert (=> b!5121728 (= e!3194259 e!3194261)))

(declare-fun getLanguageWitness!822 (Regex!14227) Option!14700)

(assert (=> b!5121728 (= lt!2111442 (getLanguageWitness!822 (h!65700 (exprs!4111 (getWitness!672 z!4463 lambda!251401)))))))

(declare-fun c!880225 () Bool)

(assert (=> b!5121728 (= c!880225 ((_ is Some!14699) lt!2111442))))

(assert (= (and d!1655649 c!880227) b!5121728))

(assert (= (and d!1655649 (not c!880227)) b!5121727))

(assert (= (and b!5121728 c!880225) b!5121726))

(assert (= (and b!5121728 (not c!880225)) b!5121725))

(assert (= (and b!5121726 c!880226) b!5121723))

(assert (= (and b!5121726 (not c!880226)) b!5121724))

(declare-fun m!6183104 () Bool)

(assert (=> b!5121723 m!6183104))

(declare-fun m!6183108 () Bool)

(assert (=> d!1655649 m!6183108))

(declare-fun m!6183112 () Bool)

(assert (=> d!1655649 m!6183112))

(declare-fun m!6183114 () Bool)

(assert (=> b!5121726 m!6183114))

(declare-fun m!6183116 () Bool)

(assert (=> b!5121728 m!6183116))

(assert (=> b!5121371 d!1655649))

(declare-fun d!1655679 () Bool)

(declare-fun e!3194277 () Bool)

(assert (=> d!1655679 e!3194277))

(declare-fun res!2180810 () Bool)

(assert (=> d!1655679 (=> (not res!2180810) (not e!3194277))))

(declare-fun lt!2111452 () Context!7222)

(assert (=> d!1655679 (= res!2180810 (dynLambda!23604 lambda!251401 lt!2111452))))

(declare-fun getWitness!674 (List!59378 Int) Context!7222)

(assert (=> d!1655679 (= lt!2111452 (getWitness!674 (toList!8266 z!4463) lambda!251401))))

(assert (=> d!1655679 (exists!1481 z!4463 lambda!251401)))

(assert (=> d!1655679 (= (getWitness!672 z!4463 lambda!251401) lt!2111452)))

(declare-fun b!5121753 () Bool)

(assert (=> b!5121753 (= e!3194277 (select z!4463 lt!2111452))))

(assert (= (and d!1655679 res!2180810) b!5121753))

(declare-fun b_lambda!198959 () Bool)

(assert (=> (not b_lambda!198959) (not d!1655679)))

(declare-fun m!6183146 () Bool)

(assert (=> d!1655679 m!6183146))

(assert (=> d!1655679 m!6182248))

(assert (=> d!1655679 m!6182248))

(declare-fun m!6183148 () Bool)

(assert (=> d!1655679 m!6183148))

(assert (=> d!1655679 m!6182562))

(declare-fun m!6183150 () Bool)

(assert (=> b!5121753 m!6183150))

(assert (=> b!5121371 d!1655679))

(declare-fun b!5121756 () Bool)

(declare-fun e!3194278 () Bool)

(assert (=> b!5121756 (= e!3194278 (isPrefix!5632 (tail!10078 (tail!10078 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))) (tail!10078 (tail!10078 input!5745))))))

(declare-fun b!5121755 () Bool)

(declare-fun res!2180811 () Bool)

(assert (=> b!5121755 (=> (not res!2180811) (not e!3194278))))

(assert (=> b!5121755 (= res!2180811 (= (head!10943 (tail!10078 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))) (head!10943 (tail!10078 input!5745))))))

(declare-fun b!5121754 () Bool)

(declare-fun e!3194280 () Bool)

(assert (=> b!5121754 (= e!3194280 e!3194278)))

(declare-fun res!2180814 () Bool)

(assert (=> b!5121754 (=> (not res!2180814) (not e!3194278))))

(assert (=> b!5121754 (= res!2180814 (not ((_ is Nil!59251) (tail!10078 input!5745))))))

(declare-fun d!1655693 () Bool)

(declare-fun e!3194279 () Bool)

(assert (=> d!1655693 e!3194279))

(declare-fun res!2180812 () Bool)

(assert (=> d!1655693 (=> res!2180812 e!3194279)))

(declare-fun lt!2111453 () Bool)

(assert (=> d!1655693 (= res!2180812 (not lt!2111453))))

(assert (=> d!1655693 (= lt!2111453 e!3194280)))

(declare-fun res!2180813 () Bool)

(assert (=> d!1655693 (=> res!2180813 e!3194280)))

(assert (=> d!1655693 (= res!2180813 ((_ is Nil!59251) (tail!10078 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251)))))))

(assert (=> d!1655693 (= (isPrefix!5632 (tail!10078 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))) (tail!10078 input!5745)) lt!2111453)))

(declare-fun b!5121757 () Bool)

(assert (=> b!5121757 (= e!3194279 (>= (size!39533 (tail!10078 input!5745)) (size!39533 (tail!10078 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))))))))

(assert (= (and d!1655693 (not res!2180813)) b!5121754))

(assert (= (and b!5121754 res!2180814) b!5121755))

(assert (= (and b!5121755 res!2180811) b!5121756))

(assert (= (and d!1655693 (not res!2180812)) b!5121757))

(assert (=> b!5121756 m!6182642))

(declare-fun m!6183156 () Bool)

(assert (=> b!5121756 m!6183156))

(assert (=> b!5121756 m!6182174))

(assert (=> b!5121756 m!6182472))

(assert (=> b!5121756 m!6183156))

(assert (=> b!5121756 m!6182472))

(declare-fun m!6183158 () Bool)

(assert (=> b!5121756 m!6183158))

(assert (=> b!5121755 m!6182642))

(declare-fun m!6183160 () Bool)

(assert (=> b!5121755 m!6183160))

(assert (=> b!5121755 m!6182174))

(assert (=> b!5121755 m!6182478))

(assert (=> b!5121757 m!6182174))

(assert (=> b!5121757 m!6182480))

(assert (=> b!5121757 m!6182642))

(declare-fun m!6183162 () Bool)

(assert (=> b!5121757 m!6183162))

(assert (=> b!5121407 d!1655693))

(declare-fun d!1655697 () Bool)

(assert (=> d!1655697 (= (tail!10078 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))) (t!372394 (++!13040 testedP!265 (Cons!59251 (head!10943 (getSuffix!3304 input!5745 testedP!265)) Nil!59251))))))

(assert (=> b!5121407 d!1655697))

(assert (=> b!5121407 d!1655301))

(assert (=> b!5121329 d!1655545))

(assert (=> b!5121329 d!1655641))

(declare-fun bs!1193097 () Bool)

(declare-fun d!1655699 () Bool)

(assert (= bs!1193097 (and d!1655699 d!1655379)))

(declare-fun lambda!251434 () Int)

(assert (=> bs!1193097 (= lambda!251434 lambda!251407)))

(declare-fun bs!1193098 () Bool)

(assert (= bs!1193098 (and d!1655699 d!1655649)))

(assert (=> bs!1193098 (not (= lambda!251434 lambda!251433))))

(declare-fun bs!1193099 () Bool)

(assert (= bs!1193099 (and d!1655699 d!1655167)))

(assert (=> bs!1193099 (= lambda!251434 lambda!251343)))

(declare-fun bs!1193100 () Bool)

(assert (= bs!1193100 (and d!1655699 d!1655359)))

(assert (=> bs!1193100 (= lambda!251434 lambda!251402)))

(declare-fun bs!1193101 () Bool)

(assert (= bs!1193101 (and d!1655699 d!1655091)))

(assert (=> bs!1193101 (= lambda!251434 lambda!251339)))

(assert (=> d!1655699 (= (inv!78748 setElem!30423) (forall!13616 (exprs!4111 setElem!30423) lambda!251434))))

(declare-fun bs!1193102 () Bool)

(assert (= bs!1193102 d!1655699))

(declare-fun m!6183164 () Bool)

(assert (=> bs!1193102 m!6183164))

(assert (=> setNonEmpty!30423 d!1655699))

(declare-fun d!1655701 () Bool)

(assert (=> d!1655701 (= (isEmpty!31941 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) ((_ is Nil!59251) (tail!10078 (getSuffix!3304 knownP!20 testedP!265))))))

(assert (=> d!1655331 d!1655701))

(declare-fun d!1655703 () Bool)

(declare-fun res!2180829 () Bool)

(declare-fun e!3194301 () Bool)

(assert (=> d!1655703 (=> res!2180829 e!3194301)))

(assert (=> d!1655703 (= res!2180829 ((_ is Nil!59254) lt!2111349))))

(assert (=> d!1655703 (= (noDuplicate!1075 lt!2111349) e!3194301)))

(declare-fun b!5121781 () Bool)

(declare-fun e!3194302 () Bool)

(assert (=> b!5121781 (= e!3194301 e!3194302)))

(declare-fun res!2180830 () Bool)

(assert (=> b!5121781 (=> (not res!2180830) (not e!3194302))))

(declare-fun contains!19606 (List!59378 Context!7222) Bool)

(assert (=> b!5121781 (= res!2180830 (not (contains!19606 (t!372397 lt!2111349) (h!65702 lt!2111349))))))

(declare-fun b!5121782 () Bool)

(assert (=> b!5121782 (= e!3194302 (noDuplicate!1075 (t!372397 lt!2111349)))))

(assert (= (and d!1655703 (not res!2180829)) b!5121781))

(assert (= (and b!5121781 res!2180830) b!5121782))

(declare-fun m!6183184 () Bool)

(assert (=> b!5121781 m!6183184))

(declare-fun m!6183186 () Bool)

(assert (=> b!5121782 m!6183186))

(assert (=> d!1655303 d!1655703))

(declare-fun d!1655719 () Bool)

(declare-fun e!3194312 () Bool)

(assert (=> d!1655719 e!3194312))

(declare-fun res!2180838 () Bool)

(assert (=> d!1655719 (=> (not res!2180838) (not e!3194312))))

(declare-fun res!2180837 () List!59378)

(assert (=> d!1655719 (= res!2180838 (noDuplicate!1075 res!2180837))))

(declare-fun e!3194313 () Bool)

(assert (=> d!1655719 e!3194313))

(assert (=> d!1655719 (= (choose!37656 z!4463) res!2180837)))

(declare-fun b!5121792 () Bool)

(declare-fun e!3194311 () Bool)

(declare-fun tp!1428845 () Bool)

(assert (=> b!5121792 (= e!3194311 tp!1428845)))

(declare-fun b!5121791 () Bool)

(declare-fun tp!1428844 () Bool)

(assert (=> b!5121791 (= e!3194313 (and (inv!78748 (h!65702 res!2180837)) e!3194311 tp!1428844))))

(declare-fun b!5121793 () Bool)

(assert (=> b!5121793 (= e!3194312 (= (content!10536 res!2180837) z!4463))))

(assert (= b!5121791 b!5121792))

(assert (= (and d!1655719 ((_ is Cons!59254) res!2180837)) b!5121791))

(assert (= (and d!1655719 res!2180838) b!5121793))

(declare-fun m!6183194 () Bool)

(assert (=> d!1655719 m!6183194))

(declare-fun m!6183196 () Bool)

(assert (=> b!5121791 m!6183196))

(declare-fun m!6183198 () Bool)

(assert (=> b!5121793 m!6183198))

(assert (=> d!1655303 d!1655719))

(declare-fun d!1655725 () Bool)

(declare-fun c!880238 () Bool)

(assert (=> d!1655725 (= c!880238 ((_ is Nil!59251) (t!372394 (Cons!59251 lt!2111206 Nil!59251))))))

(declare-fun e!3194314 () (InoxSet C!28720))

(assert (=> d!1655725 (= (content!10535 (t!372394 (Cons!59251 lt!2111206 Nil!59251))) e!3194314)))

(declare-fun b!5121794 () Bool)

(assert (=> b!5121794 (= e!3194314 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121795 () Bool)

(assert (=> b!5121795 (= e!3194314 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 (t!372394 (Cons!59251 lt!2111206 Nil!59251))) true) (content!10535 (t!372394 (t!372394 (Cons!59251 lt!2111206 Nil!59251))))))))

(assert (= (and d!1655725 c!880238) b!5121794))

(assert (= (and d!1655725 (not c!880238)) b!5121795))

(declare-fun m!6183200 () Bool)

(assert (=> b!5121795 m!6183200))

(declare-fun m!6183202 () Bool)

(assert (=> b!5121795 m!6183202))

(assert (=> b!5121418 d!1655725))

(declare-fun d!1655727 () Bool)

(declare-fun c!880239 () Bool)

(assert (=> d!1655727 (= c!880239 (isEmpty!31941 (tail!10078 (tail!10078 (getSuffix!3304 knownP!20 testedP!265)))))))

(declare-fun e!3194315 () Bool)

(assert (=> d!1655727 (= (matchZipper!895 (derivationStepZipper!850 (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265)))) (tail!10078 (tail!10078 (getSuffix!3304 knownP!20 testedP!265)))) e!3194315)))

(declare-fun b!5121796 () Bool)

(assert (=> b!5121796 (= e!3194315 (nullableZipper!1030 (derivationStepZipper!850 (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))))))))

(declare-fun b!5121797 () Bool)

(assert (=> b!5121797 (= e!3194315 (matchZipper!895 (derivationStepZipper!850 (derivationStepZipper!850 (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265)))) (head!10943 (tail!10078 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))))) (tail!10078 (tail!10078 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))))))))

(assert (= (and d!1655727 c!880239) b!5121796))

(assert (= (and d!1655727 (not c!880239)) b!5121797))

(assert (=> d!1655727 m!6182542))

(declare-fun m!6183204 () Bool)

(assert (=> d!1655727 m!6183204))

(assert (=> b!5121796 m!6182540))

(declare-fun m!6183206 () Bool)

(assert (=> b!5121796 m!6183206))

(assert (=> b!5121797 m!6182542))

(declare-fun m!6183208 () Bool)

(assert (=> b!5121797 m!6183208))

(assert (=> b!5121797 m!6182540))

(assert (=> b!5121797 m!6183208))

(declare-fun m!6183210 () Bool)

(assert (=> b!5121797 m!6183210))

(assert (=> b!5121797 m!6182542))

(declare-fun m!6183212 () Bool)

(assert (=> b!5121797 m!6183212))

(assert (=> b!5121797 m!6183210))

(assert (=> b!5121797 m!6183212))

(declare-fun m!6183214 () Bool)

(assert (=> b!5121797 m!6183214))

(assert (=> b!5121333 d!1655727))

(declare-fun bs!1193105 () Bool)

(declare-fun d!1655729 () Bool)

(assert (= bs!1193105 (and d!1655729 d!1655543)))

(declare-fun lambda!251435 () Int)

(assert (=> bs!1193105 (= (= (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) (h!65699 (t!372394 testedP!265))) (= lambda!251435 lambda!251421))))

(declare-fun bs!1193106 () Bool)

(assert (= bs!1193106 (and d!1655729 d!1655155)))

(assert (=> bs!1193106 (= (= (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) lt!2111206) (= lambda!251435 lambda!251342))))

(declare-fun bs!1193107 () Bool)

(assert (= bs!1193107 (and d!1655729 d!1655589)))

(assert (=> bs!1193107 (= (= (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) (h!65699 (t!372394 lt!2111207))) (= lambda!251435 lambda!251423))))

(declare-fun bs!1193108 () Bool)

(assert (= bs!1193108 (and d!1655729 d!1655333)))

(assert (=> bs!1193108 (= (= (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (= lambda!251435 lambda!251394))))

(declare-fun bs!1193109 () Bool)

(assert (= bs!1193109 (and d!1655729 d!1655415)))

(assert (=> bs!1193109 (= (= (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) (h!65699 lt!2111207)) (= lambda!251435 lambda!251410))))

(declare-fun bs!1193110 () Bool)

(assert (= bs!1193110 (and d!1655729 d!1655607)))

(assert (=> bs!1193110 (= (= (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) (head!10943 (tail!10078 knownP!20))) (= lambda!251435 lambda!251425))))

(declare-fun bs!1193111 () Bool)

(assert (= bs!1193111 (and d!1655729 d!1655403)))

(assert (=> bs!1193111 (= (= (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) (head!10943 knownP!20)) (= lambda!251435 lambda!251408))))

(declare-fun bs!1193112 () Bool)

(assert (= bs!1193112 (and d!1655729 d!1655365)))

(assert (=> bs!1193112 (= (= (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) (h!65699 testedP!265)) (= lambda!251435 lambda!251406))))

(assert (=> d!1655729 true))

(assert (=> d!1655729 (= (derivationStepZipper!850 (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265)))) (flatMap!361 (derivationStepZipper!850 z!4463 (head!10943 (getSuffix!3304 knownP!20 testedP!265))) lambda!251435))))

(declare-fun bs!1193113 () Bool)

(assert (= bs!1193113 d!1655729))

(assert (=> bs!1193113 m!6182260))

(declare-fun m!6183216 () Bool)

(assert (=> bs!1193113 m!6183216))

(assert (=> b!5121333 d!1655729))

(declare-fun d!1655731 () Bool)

(assert (=> d!1655731 (= (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) (h!65699 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))))))

(assert (=> b!5121333 d!1655731))

(declare-fun d!1655733 () Bool)

(assert (=> d!1655733 (= (tail!10078 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))) (t!372394 (tail!10078 (getSuffix!3304 knownP!20 testedP!265))))))

(assert (=> b!5121333 d!1655733))

(declare-fun d!1655735 () Bool)

(declare-fun lt!2111457 () Int)

(assert (=> d!1655735 (>= lt!2111457 0)))

(declare-fun e!3194316 () Int)

(assert (=> d!1655735 (= lt!2111457 e!3194316)))

(declare-fun c!880240 () Bool)

(assert (=> d!1655735 (= c!880240 ((_ is Nil!59251) (t!372394 (t!372394 testedP!265))))))

(assert (=> d!1655735 (= (size!39533 (t!372394 (t!372394 testedP!265))) lt!2111457)))

(declare-fun b!5121798 () Bool)

(assert (=> b!5121798 (= e!3194316 0)))

(declare-fun b!5121799 () Bool)

(assert (=> b!5121799 (= e!3194316 (+ 1 (size!39533 (t!372394 (t!372394 (t!372394 testedP!265))))))))

(assert (= (and d!1655735 c!880240) b!5121798))

(assert (= (and d!1655735 (not c!880240)) b!5121799))

(declare-fun m!6183218 () Bool)

(assert (=> b!5121799 m!6183218))

(assert (=> b!5121325 d!1655735))

(assert (=> d!1655275 d!1655281))

(assert (=> d!1655275 d!1655145))

(assert (=> d!1655275 d!1655155))

(declare-fun d!1655737 () Bool)

(declare-fun c!880241 () Bool)

(assert (=> d!1655737 (= c!880241 ((_ is Nil!59251) lt!2111369))))

(declare-fun e!3194317 () (InoxSet C!28720))

(assert (=> d!1655737 (= (content!10535 lt!2111369) e!3194317)))

(declare-fun b!5121800 () Bool)

(assert (=> b!5121800 (= e!3194317 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121801 () Bool)

(assert (=> b!5121801 (= e!3194317 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 lt!2111369) true) (content!10535 (t!372394 lt!2111369))))))

(assert (= (and d!1655737 c!880241) b!5121800))

(assert (= (and d!1655737 (not c!880241)) b!5121801))

(declare-fun m!6183220 () Bool)

(assert (=> b!5121801 m!6183220))

(declare-fun m!6183222 () Bool)

(assert (=> b!5121801 m!6183222))

(assert (=> d!1655355 d!1655737))

(assert (=> d!1655355 d!1655577))

(assert (=> d!1655355 d!1655397))

(declare-fun d!1655739 () Bool)

(assert (=> d!1655739 (= (flatMap!361 baseZ!46 lambda!251408) (choose!37655 baseZ!46 lambda!251408))))

(declare-fun bs!1193114 () Bool)

(assert (= bs!1193114 d!1655739))

(declare-fun m!6183224 () Bool)

(assert (=> bs!1193114 m!6183224))

(assert (=> d!1655403 d!1655739))

(declare-fun d!1655741 () Bool)

(assert (=> d!1655741 (= (flatMap!361 baseZ!46 lambda!251406) (choose!37655 baseZ!46 lambda!251406))))

(declare-fun bs!1193115 () Bool)

(assert (= bs!1193115 d!1655741))

(declare-fun m!6183226 () Bool)

(assert (=> bs!1193115 m!6183226))

(assert (=> d!1655365 d!1655741))

(declare-fun d!1655743 () Bool)

(declare-fun res!2180839 () Bool)

(declare-fun e!3194318 () Bool)

(assert (=> d!1655743 (=> res!2180839 e!3194318)))

(assert (=> d!1655743 (= res!2180839 ((_ is Nil!59252) (exprs!4111 setElem!30419)))))

(assert (=> d!1655743 (= (forall!13616 (exprs!4111 setElem!30419) lambda!251407) e!3194318)))

(declare-fun b!5121802 () Bool)

(declare-fun e!3194319 () Bool)

(assert (=> b!5121802 (= e!3194318 e!3194319)))

(declare-fun res!2180840 () Bool)

(assert (=> b!5121802 (=> (not res!2180840) (not e!3194319))))

(assert (=> b!5121802 (= res!2180840 (dynLambda!23601 lambda!251407 (h!65700 (exprs!4111 setElem!30419))))))

(declare-fun b!5121803 () Bool)

(assert (=> b!5121803 (= e!3194319 (forall!13616 (t!372395 (exprs!4111 setElem!30419)) lambda!251407))))

(assert (= (and d!1655743 (not res!2180839)) b!5121802))

(assert (= (and b!5121802 res!2180840) b!5121803))

(declare-fun b_lambda!198965 () Bool)

(assert (=> (not b_lambda!198965) (not b!5121802)))

(declare-fun m!6183228 () Bool)

(assert (=> b!5121802 m!6183228))

(declare-fun m!6183230 () Bool)

(assert (=> b!5121803 m!6183230))

(assert (=> d!1655379 d!1655743))

(declare-fun bs!1193116 () Bool)

(declare-fun d!1655745 () Bool)

(assert (= bs!1193116 (and d!1655745 d!1655361)))

(declare-fun lambda!251436 () Int)

(assert (=> bs!1193116 (= (= lambda!251375 (ite c!880070 lambda!251357 lambda!251358)) (= lambda!251436 lambda!251405))))

(declare-fun bs!1193117 () Bool)

(assert (= bs!1193117 (and d!1655745 d!1655255)))

(assert (=> bs!1193117 (= (= lambda!251375 lambda!251356) (= lambda!251436 lambda!251375))))

(declare-fun bs!1193118 () Bool)

(assert (= bs!1193118 (and d!1655745 d!1655169)))

(assert (=> bs!1193118 (not (= lambda!251436 lambda!251356))))

(declare-fun bs!1193119 () Bool)

(assert (= bs!1193119 (and d!1655745 d!1655311)))

(assert (=> bs!1193119 (not (= lambda!251436 lambda!251383))))

(declare-fun bs!1193120 () Bool)

(assert (= bs!1193120 (and d!1655745 d!1655563)))

(assert (=> bs!1193120 (not (= lambda!251436 lambda!251422))))

(declare-fun bs!1193121 () Bool)

(assert (= bs!1193121 (and d!1655745 d!1655479)))

(assert (=> bs!1193121 (not (= lambda!251436 lambda!251419))))

(declare-fun bs!1193122 () Bool)

(assert (= bs!1193122 (and d!1655745 d!1655347)))

(assert (=> bs!1193122 (not (= lambda!251436 lambda!251401))))

(declare-fun bs!1193123 () Bool)

(assert (= bs!1193123 (and d!1655745 d!1655327)))

(assert (=> bs!1193123 (= (= lambda!251375 lambda!251356) (= lambda!251436 lambda!251392))))

(declare-fun bs!1193124 () Bool)

(assert (= bs!1193124 (and d!1655745 b!5121189)))

(assert (=> bs!1193124 (not (= lambda!251436 lambda!251357))))

(declare-fun bs!1193125 () Bool)

(assert (= bs!1193125 (and d!1655745 b!5121190)))

(assert (=> bs!1193125 (not (= lambda!251436 lambda!251358))))

(declare-fun bs!1193126 () Bool)

(assert (= bs!1193126 (and d!1655745 d!1655405)))

(assert (=> bs!1193126 (not (= lambda!251436 lambda!251409))))

(assert (=> d!1655745 true))

(assert (=> d!1655745 (< (dynLambda!23600 order!26791 lambda!251375) (dynLambda!23600 order!26791 lambda!251436))))

(assert (=> d!1655745 (= (exists!1479 lt!2111307 lambda!251375) (not (forall!13619 lt!2111307 lambda!251436)))))

(declare-fun bs!1193127 () Bool)

(assert (= bs!1193127 d!1655745))

(declare-fun m!6183232 () Bool)

(assert (=> bs!1193127 m!6183232))

(assert (=> d!1655255 d!1655745))

(declare-fun bs!1193128 () Bool)

(declare-fun d!1655747 () Bool)

(assert (= bs!1193128 (and d!1655747 d!1655361)))

(declare-fun lambda!251441 () Int)

(assert (=> bs!1193128 (= (= lambda!251356 (ite c!880070 lambda!251357 lambda!251358)) (= lambda!251441 lambda!251405))))

(declare-fun bs!1193129 () Bool)

(assert (= bs!1193129 (and d!1655747 d!1655255)))

(assert (=> bs!1193129 (= lambda!251441 lambda!251375)))

(declare-fun bs!1193130 () Bool)

(assert (= bs!1193130 (and d!1655747 d!1655169)))

(assert (=> bs!1193130 (not (= lambda!251441 lambda!251356))))

(declare-fun bs!1193131 () Bool)

(assert (= bs!1193131 (and d!1655747 d!1655311)))

(assert (=> bs!1193131 (not (= lambda!251441 lambda!251383))))

(declare-fun bs!1193132 () Bool)

(assert (= bs!1193132 (and d!1655747 d!1655563)))

(assert (=> bs!1193132 (not (= lambda!251441 lambda!251422))))

(declare-fun bs!1193133 () Bool)

(assert (= bs!1193133 (and d!1655747 d!1655347)))

(assert (=> bs!1193133 (not (= lambda!251441 lambda!251401))))

(declare-fun bs!1193134 () Bool)

(assert (= bs!1193134 (and d!1655747 d!1655327)))

(assert (=> bs!1193134 (= lambda!251441 lambda!251392)))

(declare-fun bs!1193135 () Bool)

(assert (= bs!1193135 (and d!1655747 b!5121189)))

(assert (=> bs!1193135 (not (= lambda!251441 lambda!251357))))

(declare-fun bs!1193136 () Bool)

(assert (= bs!1193136 (and d!1655747 b!5121190)))

(assert (=> bs!1193136 (not (= lambda!251441 lambda!251358))))

(declare-fun bs!1193137 () Bool)

(assert (= bs!1193137 (and d!1655747 d!1655405)))

(assert (=> bs!1193137 (not (= lambda!251441 lambda!251409))))

(declare-fun bs!1193138 () Bool)

(assert (= bs!1193138 (and d!1655747 d!1655479)))

(assert (=> bs!1193138 (not (= lambda!251441 lambda!251419))))

(declare-fun bs!1193139 () Bool)

(assert (= bs!1193139 (and d!1655747 d!1655745)))

(assert (=> bs!1193139 (= (= lambda!251356 lambda!251375) (= lambda!251441 lambda!251436))))

(assert (=> d!1655747 true))

(assert (=> d!1655747 (< (dynLambda!23600 order!26791 lambda!251356) (dynLambda!23600 order!26791 lambda!251441))))

(assert (=> d!1655747 (not (exists!1479 lt!2111307 lambda!251441))))

(assert (=> d!1655747 true))

(declare-fun _$98!225 () Unit!150389)

(assert (=> d!1655747 (= (choose!37654 lt!2111307 lambda!251356) _$98!225)))

(declare-fun bs!1193140 () Bool)

(assert (= bs!1193140 d!1655747))

(declare-fun m!6183234 () Bool)

(assert (=> bs!1193140 m!6183234))

(assert (=> d!1655255 d!1655747))

(declare-fun d!1655749 () Bool)

(declare-fun res!2180841 () Bool)

(declare-fun e!3194328 () Bool)

(assert (=> d!1655749 (=> res!2180841 e!3194328)))

(assert (=> d!1655749 (= res!2180841 ((_ is Nil!59254) lt!2111307))))

(assert (=> d!1655749 (= (forall!13619 lt!2111307 lambda!251356) e!3194328)))

(declare-fun b!5121816 () Bool)

(declare-fun e!3194329 () Bool)

(assert (=> b!5121816 (= e!3194328 e!3194329)))

(declare-fun res!2180842 () Bool)

(assert (=> b!5121816 (=> (not res!2180842) (not e!3194329))))

(assert (=> b!5121816 (= res!2180842 (dynLambda!23604 lambda!251356 (h!65702 lt!2111307)))))

(declare-fun b!5121817 () Bool)

(assert (=> b!5121817 (= e!3194329 (forall!13619 (t!372397 lt!2111307) lambda!251356))))

(assert (= (and d!1655749 (not res!2180841)) b!5121816))

(assert (= (and b!5121816 res!2180842) b!5121817))

(declare-fun b_lambda!198967 () Bool)

(assert (=> (not b_lambda!198967) (not b!5121816)))

(declare-fun m!6183236 () Bool)

(assert (=> b!5121816 m!6183236))

(declare-fun m!6183238 () Bool)

(assert (=> b!5121817 m!6183238))

(assert (=> d!1655255 d!1655749))

(declare-fun d!1655751 () Bool)

(declare-fun lt!2111464 () Int)

(assert (=> d!1655751 (>= lt!2111464 0)))

(declare-fun e!3194330 () Int)

(assert (=> d!1655751 (= lt!2111464 e!3194330)))

(declare-fun c!880249 () Bool)

(assert (=> d!1655751 (= c!880249 ((_ is Nil!59251) (t!372394 (Cons!59251 lt!2111206 Nil!59251))))))

(assert (=> d!1655751 (= (size!39533 (t!372394 (Cons!59251 lt!2111206 Nil!59251))) lt!2111464)))

(declare-fun b!5121818 () Bool)

(assert (=> b!5121818 (= e!3194330 0)))

(declare-fun b!5121819 () Bool)

(assert (=> b!5121819 (= e!3194330 (+ 1 (size!39533 (t!372394 (t!372394 (Cons!59251 lt!2111206 Nil!59251))))))))

(assert (= (and d!1655751 c!880249) b!5121818))

(assert (= (and d!1655751 (not c!880249)) b!5121819))

(declare-fun m!6183240 () Bool)

(assert (=> b!5121819 m!6183240))

(assert (=> b!5121396 d!1655751))

(declare-fun b!5121820 () Bool)

(declare-fun e!3194333 () Bool)

(declare-fun call!356660 () Bool)

(assert (=> b!5121820 (= e!3194333 call!356660)))

(declare-fun c!880250 () Bool)

(declare-fun bm!356655 () Bool)

(declare-fun c!880251 () Bool)

(assert (=> bm!356655 (= call!356660 (validRegex!6212 (ite c!880251 (reg!14556 (h!65700 (exprs!4111 setElem!30411))) (ite c!880250 (regTwo!28967 (h!65700 (exprs!4111 setElem!30411))) (regTwo!28966 (h!65700 (exprs!4111 setElem!30411)))))))))

(declare-fun b!5121821 () Bool)

(declare-fun e!3194336 () Bool)

(declare-fun e!3194331 () Bool)

(assert (=> b!5121821 (= e!3194336 e!3194331)))

(assert (=> b!5121821 (= c!880251 ((_ is Star!14227) (h!65700 (exprs!4111 setElem!30411))))))

(declare-fun bm!356656 () Bool)

(declare-fun call!356661 () Bool)

(assert (=> bm!356656 (= call!356661 call!356660)))

(declare-fun b!5121822 () Bool)

(declare-fun e!3194334 () Bool)

(assert (=> b!5121822 (= e!3194331 e!3194334)))

(assert (=> b!5121822 (= c!880250 ((_ is Union!14227) (h!65700 (exprs!4111 setElem!30411))))))

(declare-fun bm!356657 () Bool)

(declare-fun call!356662 () Bool)

(assert (=> bm!356657 (= call!356662 (validRegex!6212 (ite c!880250 (regOne!28967 (h!65700 (exprs!4111 setElem!30411))) (regOne!28966 (h!65700 (exprs!4111 setElem!30411))))))))

(declare-fun b!5121823 () Bool)

(assert (=> b!5121823 (= e!3194331 e!3194333)))

(declare-fun res!2180847 () Bool)

(assert (=> b!5121823 (= res!2180847 (not (nullable!4727 (reg!14556 (h!65700 (exprs!4111 setElem!30411))))))))

(assert (=> b!5121823 (=> (not res!2180847) (not e!3194333))))

(declare-fun b!5121824 () Bool)

(declare-fun e!3194337 () Bool)

(declare-fun e!3194335 () Bool)

(assert (=> b!5121824 (= e!3194337 e!3194335)))

(declare-fun res!2180845 () Bool)

(assert (=> b!5121824 (=> (not res!2180845) (not e!3194335))))

(assert (=> b!5121824 (= res!2180845 call!356662)))

(declare-fun b!5121825 () Bool)

(declare-fun res!2180844 () Bool)

(declare-fun e!3194332 () Bool)

(assert (=> b!5121825 (=> (not res!2180844) (not e!3194332))))

(assert (=> b!5121825 (= res!2180844 call!356662)))

(assert (=> b!5121825 (= e!3194334 e!3194332)))

(declare-fun d!1655753 () Bool)

(declare-fun res!2180843 () Bool)

(assert (=> d!1655753 (=> res!2180843 e!3194336)))

(assert (=> d!1655753 (= res!2180843 ((_ is ElementMatch!14227) (h!65700 (exprs!4111 setElem!30411))))))

(assert (=> d!1655753 (= (validRegex!6212 (h!65700 (exprs!4111 setElem!30411))) e!3194336)))

(declare-fun b!5121826 () Bool)

(assert (=> b!5121826 (= e!3194335 call!356661)))

(declare-fun b!5121827 () Bool)

(declare-fun res!2180846 () Bool)

(assert (=> b!5121827 (=> res!2180846 e!3194337)))

(assert (=> b!5121827 (= res!2180846 (not ((_ is Concat!23072) (h!65700 (exprs!4111 setElem!30411)))))))

(assert (=> b!5121827 (= e!3194334 e!3194337)))

(declare-fun b!5121828 () Bool)

(assert (=> b!5121828 (= e!3194332 call!356661)))

(assert (= (and d!1655753 (not res!2180843)) b!5121821))

(assert (= (and b!5121821 c!880251) b!5121823))

(assert (= (and b!5121821 (not c!880251)) b!5121822))

(assert (= (and b!5121823 res!2180847) b!5121820))

(assert (= (and b!5121822 c!880250) b!5121825))

(assert (= (and b!5121822 (not c!880250)) b!5121827))

(assert (= (and b!5121825 res!2180844) b!5121828))

(assert (= (and b!5121827 (not res!2180846)) b!5121824))

(assert (= (and b!5121824 res!2180845) b!5121826))

(assert (= (or b!5121825 b!5121824) bm!356657))

(assert (= (or b!5121828 b!5121826) bm!356656))

(assert (= (or b!5121820 bm!356656) bm!356655))

(declare-fun m!6183242 () Bool)

(assert (=> bm!356655 m!6183242))

(declare-fun m!6183244 () Bool)

(assert (=> bm!356657 m!6183244))

(declare-fun m!6183246 () Bool)

(assert (=> b!5121823 m!6183246))

(assert (=> bs!1192931 d!1655753))

(declare-fun b!5121837 () Bool)

(declare-fun e!3194341 () Bool)

(assert (=> b!5121837 (= e!3194341 (isPrefix!5632 (tail!10078 (tail!10078 (tail!10078 knownP!20))) (tail!10078 (tail!10078 (tail!10078 input!5745)))))))

(declare-fun b!5121836 () Bool)

(declare-fun res!2180848 () Bool)

(assert (=> b!5121836 (=> (not res!2180848) (not e!3194341))))

(assert (=> b!5121836 (= res!2180848 (= (head!10943 (tail!10078 (tail!10078 knownP!20))) (head!10943 (tail!10078 (tail!10078 input!5745)))))))

(declare-fun b!5121835 () Bool)

(declare-fun e!3194343 () Bool)

(assert (=> b!5121835 (= e!3194343 e!3194341)))

(declare-fun res!2180851 () Bool)

(assert (=> b!5121835 (=> (not res!2180851) (not e!3194341))))

(assert (=> b!5121835 (= res!2180851 (not ((_ is Nil!59251) (tail!10078 (tail!10078 input!5745)))))))

(declare-fun d!1655755 () Bool)

(declare-fun e!3194342 () Bool)

(assert (=> d!1655755 e!3194342))

(declare-fun res!2180849 () Bool)

(assert (=> d!1655755 (=> res!2180849 e!3194342)))

(declare-fun lt!2111468 () Bool)

(assert (=> d!1655755 (= res!2180849 (not lt!2111468))))

(assert (=> d!1655755 (= lt!2111468 e!3194343)))

(declare-fun res!2180850 () Bool)

(assert (=> d!1655755 (=> res!2180850 e!3194343)))

(assert (=> d!1655755 (= res!2180850 ((_ is Nil!59251) (tail!10078 (tail!10078 knownP!20))))))

(assert (=> d!1655755 (= (isPrefix!5632 (tail!10078 (tail!10078 knownP!20)) (tail!10078 (tail!10078 input!5745))) lt!2111468)))

(declare-fun b!5121838 () Bool)

(assert (=> b!5121838 (= e!3194342 (>= (size!39533 (tail!10078 (tail!10078 input!5745))) (size!39533 (tail!10078 (tail!10078 knownP!20)))))))

(assert (= (and d!1655755 (not res!2180850)) b!5121835))

(assert (= (and b!5121835 res!2180851) b!5121836))

(assert (= (and b!5121836 res!2180848) b!5121837))

(assert (= (and d!1655755 (not res!2180849)) b!5121838))

(assert (=> b!5121837 m!6182468))

(assert (=> b!5121837 m!6182804))

(assert (=> b!5121837 m!6182472))

(assert (=> b!5121837 m!6182826))

(assert (=> b!5121837 m!6182804))

(assert (=> b!5121837 m!6182826))

(declare-fun m!6183248 () Bool)

(assert (=> b!5121837 m!6183248))

(assert (=> b!5121836 m!6182468))

(assert (=> b!5121836 m!6182810))

(assert (=> b!5121836 m!6182472))

(assert (=> b!5121836 m!6182830))

(assert (=> b!5121838 m!6182472))

(assert (=> b!5121838 m!6182832))

(assert (=> b!5121838 m!6182468))

(assert (=> b!5121838 m!6182812))

(assert (=> b!5121311 d!1655755))

(assert (=> b!5121311 d!1655501))

(assert (=> b!5121311 d!1655513))

(declare-fun bs!1193147 () Bool)

(declare-fun d!1655757 () Bool)

(assert (= bs!1193147 (and d!1655757 d!1655379)))

(declare-fun lambda!251443 () Int)

(assert (=> bs!1193147 (= lambda!251443 lambda!251407)))

(declare-fun bs!1193148 () Bool)

(assert (= bs!1193148 (and d!1655757 d!1655167)))

(assert (=> bs!1193148 (= lambda!251443 lambda!251343)))

(declare-fun bs!1193149 () Bool)

(assert (= bs!1193149 (and d!1655757 d!1655359)))

(assert (=> bs!1193149 (= lambda!251443 lambda!251402)))

(declare-fun bs!1193150 () Bool)

(assert (= bs!1193150 (and d!1655757 d!1655091)))

(assert (=> bs!1193150 (= lambda!251443 lambda!251339)))

(declare-fun bs!1193151 () Bool)

(assert (= bs!1193151 (and d!1655757 d!1655699)))

(assert (=> bs!1193151 (= lambda!251443 lambda!251434)))

(declare-fun bs!1193152 () Bool)

(assert (= bs!1193152 (and d!1655757 d!1655649)))

(assert (=> bs!1193152 (not (= lambda!251443 lambda!251433))))

(assert (=> d!1655757 (= (inv!78748 setElem!30424) (forall!13616 (exprs!4111 setElem!30424) lambda!251443))))

(declare-fun bs!1193153 () Bool)

(assert (= bs!1193153 d!1655757))

(declare-fun m!6183260 () Bool)

(assert (=> bs!1193153 m!6183260))

(assert (=> setNonEmpty!30424 d!1655757))

(declare-fun d!1655761 () Bool)

(declare-fun c!880255 () Bool)

(assert (=> d!1655761 (= c!880255 ((_ is Nil!59251) lt!2111371))))

(declare-fun e!3194344 () (InoxSet C!28720))

(assert (=> d!1655761 (= (content!10535 lt!2111371) e!3194344)))

(declare-fun b!5121839 () Bool)

(assert (=> b!5121839 (= e!3194344 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121840 () Bool)

(assert (=> b!5121840 (= e!3194344 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 lt!2111371) true) (content!10535 (t!372394 lt!2111371))))))

(assert (= (and d!1655761 c!880255) b!5121839))

(assert (= (and d!1655761 (not c!880255)) b!5121840))

(declare-fun m!6183262 () Bool)

(assert (=> b!5121840 m!6183262))

(declare-fun m!6183264 () Bool)

(assert (=> b!5121840 m!6183264))

(assert (=> d!1655371 d!1655761))

(assert (=> d!1655371 d!1655395))

(declare-fun d!1655763 () Bool)

(declare-fun c!880256 () Bool)

(assert (=> d!1655763 (= c!880256 ((_ is Nil!59251) lt!2111312))))

(declare-fun e!3194345 () (InoxSet C!28720))

(assert (=> d!1655763 (= (content!10535 lt!2111312) e!3194345)))

(declare-fun b!5121841 () Bool)

(assert (=> b!5121841 (= e!3194345 ((as const (Array C!28720 Bool)) false))))

(declare-fun b!5121842 () Bool)

(assert (=> b!5121842 (= e!3194345 ((_ map or) (store ((as const (Array C!28720 Bool)) false) (h!65699 lt!2111312) true) (content!10535 (t!372394 lt!2111312))))))

(assert (= (and d!1655763 c!880256) b!5121841))

(assert (= (and d!1655763 (not c!880256)) b!5121842))

(declare-fun m!6183266 () Bool)

(assert (=> b!5121842 m!6183266))

(declare-fun m!6183268 () Bool)

(assert (=> b!5121842 m!6183268))

(assert (=> d!1655371 d!1655763))

(declare-fun d!1655765 () Bool)

(declare-fun c!880257 () Bool)

(assert (=> d!1655765 (= c!880257 ((_ is Cons!59251) (t!372394 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251)))))))

(declare-fun e!3194346 () (InoxSet Context!7222))

(assert (=> d!1655765 (= (derivationZipper!124 (derivationStepZipper!850 baseZ!46 (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251)))) (t!372394 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251)))) e!3194346)))

(declare-fun b!5121843 () Bool)

(assert (=> b!5121843 (= e!3194346 (derivationZipper!124 (derivationStepZipper!850 (derivationStepZipper!850 baseZ!46 (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251)))) (h!65699 (t!372394 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))))) (t!372394 (t!372394 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))))))))

(declare-fun b!5121844 () Bool)

(assert (=> b!5121844 (= e!3194346 (derivationStepZipper!850 baseZ!46 (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251)))))))

(assert (= (and d!1655765 c!880257) b!5121843))

(assert (= (and d!1655765 (not c!880257)) b!5121844))

(assert (=> b!5121843 m!6182458))

(declare-fun m!6183270 () Bool)

(assert (=> b!5121843 m!6183270))

(assert (=> b!5121843 m!6183270))

(declare-fun m!6183272 () Bool)

(assert (=> b!5121843 m!6183272))

(assert (=> b!5121303 d!1655765))

(declare-fun bs!1193154 () Bool)

(declare-fun d!1655767 () Bool)

(assert (= bs!1193154 (and d!1655767 d!1655543)))

(declare-fun lambda!251444 () Int)

(assert (=> bs!1193154 (= (= (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) (h!65699 (t!372394 testedP!265))) (= lambda!251444 lambda!251421))))

(declare-fun bs!1193155 () Bool)

(assert (= bs!1193155 (and d!1655767 d!1655155)))

(assert (=> bs!1193155 (= (= (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) lt!2111206) (= lambda!251444 lambda!251342))))

(declare-fun bs!1193156 () Bool)

(assert (= bs!1193156 (and d!1655767 d!1655589)))

(assert (=> bs!1193156 (= (= (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) (h!65699 (t!372394 lt!2111207))) (= lambda!251444 lambda!251423))))

(declare-fun bs!1193157 () Bool)

(assert (= bs!1193157 (and d!1655767 d!1655333)))

(assert (=> bs!1193157 (= (= (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) (head!10943 (getSuffix!3304 knownP!20 testedP!265))) (= lambda!251444 lambda!251394))))

(declare-fun bs!1193158 () Bool)

(assert (= bs!1193158 (and d!1655767 d!1655415)))

(assert (=> bs!1193158 (= (= (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) (h!65699 lt!2111207)) (= lambda!251444 lambda!251410))))

(declare-fun bs!1193159 () Bool)

(assert (= bs!1193159 (and d!1655767 d!1655729)))

(assert (=> bs!1193159 (= (= (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) (head!10943 (tail!10078 (getSuffix!3304 knownP!20 testedP!265)))) (= lambda!251444 lambda!251435))))

(declare-fun bs!1193160 () Bool)

(assert (= bs!1193160 (and d!1655767 d!1655607)))

(assert (=> bs!1193160 (= (= (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) (head!10943 (tail!10078 knownP!20))) (= lambda!251444 lambda!251425))))

(declare-fun bs!1193161 () Bool)

(assert (= bs!1193161 (and d!1655767 d!1655403)))

(assert (=> bs!1193161 (= (= (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) (head!10943 knownP!20)) (= lambda!251444 lambda!251408))))

(declare-fun bs!1193162 () Bool)

(assert (= bs!1193162 (and d!1655767 d!1655365)))

(assert (=> bs!1193162 (= (= (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251))) (h!65699 testedP!265)) (= lambda!251444 lambda!251406))))

(assert (=> d!1655767 true))

(assert (=> d!1655767 (= (derivationStepZipper!850 baseZ!46 (h!65699 (++!13040 testedP!265 (Cons!59251 lt!2111206 Nil!59251)))) (flatMap!361 baseZ!46 lambda!251444))))

(declare-fun bs!1193163 () Bool)

(assert (= bs!1193163 d!1655767))

(declare-fun m!6183274 () Bool)

(assert (=> bs!1193163 m!6183274))

(assert (=> b!5121303 d!1655767))

(declare-fun bs!1193164 () Bool)

(declare-fun d!1655769 () Bool)

(assert (= bs!1193164 (and d!1655769 d!1655361)))

(declare-fun lambda!251445 () Int)

(assert (=> bs!1193164 (= (= lambda!251392 (ite c!880070 lambda!251357 lambda!251358)) (= lambda!251445 lambda!251405))))

(declare-fun bs!1193165 () Bool)

(assert (= bs!1193165 (and d!1655769 d!1655255)))

(assert (=> bs!1193165 (= (= lambda!251392 lambda!251356) (= lambda!251445 lambda!251375))))

(declare-fun bs!1193166 () Bool)

(assert (= bs!1193166 (and d!1655769 d!1655169)))

(assert (=> bs!1193166 (not (= lambda!251445 lambda!251356))))

(declare-fun bs!1193167 () Bool)

(assert (= bs!1193167 (and d!1655769 d!1655311)))

(assert (=> bs!1193167 (not (= lambda!251445 lambda!251383))))

(declare-fun bs!1193168 () Bool)

(assert (= bs!1193168 (and d!1655769 d!1655347)))

(assert (=> bs!1193168 (not (= lambda!251445 lambda!251401))))

(declare-fun bs!1193169 () Bool)

(assert (= bs!1193169 (and d!1655769 d!1655327)))

(assert (=> bs!1193169 (= (= lambda!251392 lambda!251356) (= lambda!251445 lambda!251392))))

(declare-fun bs!1193170 () Bool)

(assert (= bs!1193170 (and d!1655769 b!5121189)))

(assert (=> bs!1193170 (not (= lambda!251445 lambda!251357))))

(declare-fun bs!1193171 () Bool)

(assert (= bs!1193171 (and d!1655769 b!5121190)))

(assert (=> bs!1193171 (not (= lambda!251445 lambda!251358))))

(declare-fun bs!1193172 () Bool)

(assert (= bs!1193172 (and d!1655769 d!1655405)))

(assert (=> bs!1193172 (not (= lambda!251445 lambda!251409))))

(declare-fun bs!1193173 () Bool)

(assert (= bs!1193173 (and d!1655769 d!1655747)))

(assert (=> bs!1193173 (= (= lambda!251392 lambda!251356) (= lambda!251445 lambda!251441))))

(declare-fun bs!1193174 () Bool)

(assert (= bs!1193174 (and d!1655769 d!1655563)))

(assert (=> bs!1193174 (not (= lambda!251445 lambda!251422))))

(declare-fun bs!1193175 () Bool)

(assert (= bs!1193175 (and d!1655769 d!1655479)))

(assert (=> bs!1193175 (not (= lambda!251445 lambda!251419))))

(declare-fun bs!1193176 () Bool)

(assert (= bs!1193176 (and d!1655769 d!1655745)))

(assert (=> bs!1193176 (= (= lambda!251392 lambda!251375) (= lambda!251445 lambda!251436))))

(assert (=> d!1655769 true))

(assert (=> d!1655769 (< (dynLambda!23600 order!26791 lambda!251392) (dynLambda!23600 order!26791 lambda!251445))))

(assert (=> d!1655769 (= (exists!1479 lt!2111306 lambda!251392) (not (forall!13619 lt!2111306 lambda!251445)))))

(declare-fun bs!1193177 () Bool)

(assert (= bs!1193177 d!1655769))

(declare-fun m!6183276 () Bool)

(assert (=> bs!1193177 m!6183276))

(assert (=> d!1655327 d!1655769))

(declare-fun bs!1193179 () Bool)

(declare-fun d!1655771 () Bool)

(assert (= bs!1193179 (and d!1655771 d!1655361)))

(declare-fun lambda!251448 () Int)

(assert (=> bs!1193179 (= (= lambda!251356 (ite c!880070 lambda!251357 lambda!251358)) (= lambda!251448 lambda!251405))))

(declare-fun bs!1193180 () Bool)

(assert (= bs!1193180 (and d!1655771 d!1655255)))

(assert (=> bs!1193180 (= lambda!251448 lambda!251375)))

(declare-fun bs!1193181 () Bool)

(assert (= bs!1193181 (and d!1655771 d!1655169)))

(assert (=> bs!1193181 (not (= lambda!251448 lambda!251356))))

(declare-fun bs!1193182 () Bool)

(assert (= bs!1193182 (and d!1655771 d!1655311)))

(assert (=> bs!1193182 (not (= lambda!251448 lambda!251383))))

(declare-fun bs!1193183 () Bool)

(assert (= bs!1193183 (and d!1655771 d!1655769)))

(assert (=> bs!1193183 (= (= lambda!251356 lambda!251392) (= lambda!251448 lambda!251445))))

(declare-fun bs!1193184 () Bool)

(assert (= bs!1193184 (and d!1655771 d!1655347)))

(assert (=> bs!1193184 (not (= lambda!251448 lambda!251401))))

(declare-fun bs!1193186 () Bool)

(assert (= bs!1193186 (and d!1655771 d!1655327)))

(assert (=> bs!1193186 (= lambda!251448 lambda!251392)))

(declare-fun bs!1193187 () Bool)

(assert (= bs!1193187 (and d!1655771 b!5121189)))

(assert (=> bs!1193187 (not (= lambda!251448 lambda!251357))))

(declare-fun bs!1193189 () Bool)

(assert (= bs!1193189 (and d!1655771 b!5121190)))

(assert (=> bs!1193189 (not (= lambda!251448 lambda!251358))))

(declare-fun bs!1193191 () Bool)

(assert (= bs!1193191 (and d!1655771 d!1655405)))

(assert (=> bs!1193191 (not (= lambda!251448 lambda!251409))))

(declare-fun bs!1193193 () Bool)

(assert (= bs!1193193 (and d!1655771 d!1655747)))

(assert (=> bs!1193193 (= lambda!251448 lambda!251441)))

(declare-fun bs!1193195 () Bool)

(assert (= bs!1193195 (and d!1655771 d!1655563)))

(assert (=> bs!1193195 (not (= lambda!251448 lambda!251422))))

(declare-fun bs!1193197 () Bool)

(assert (= bs!1193197 (and d!1655771 d!1655479)))

(assert (=> bs!1193197 (not (= lambda!251448 lambda!251419))))

(declare-fun bs!1193199 () Bool)

(assert (= bs!1193199 (and d!1655771 d!1655745)))

(assert (=> bs!1193199 (= (= lambda!251356 lambda!251375) (= lambda!251448 lambda!251436))))

(assert (=> d!1655771 true))

(assert (=> d!1655771 (< (dynLambda!23600 order!26791 lambda!251356) (dynLambda!23600 order!26791 lambda!251448))))

(assert (=> d!1655771 (exists!1479 lt!2111306 lambda!251448)))

(assert (=> d!1655771 true))

(declare-fun _$97!170 () Unit!150389)

(assert (=> d!1655771 (= (choose!37657 lt!2111306 lambda!251356) _$97!170)))

(declare-fun bs!1193202 () Bool)

(assert (= bs!1193202 d!1655771))

(declare-fun m!6183296 () Bool)

(assert (=> bs!1193202 m!6183296))

(assert (=> d!1655327 d!1655771))

(declare-fun d!1655781 () Bool)

(declare-fun res!2180860 () Bool)

(declare-fun e!3194360 () Bool)

(assert (=> d!1655781 (=> res!2180860 e!3194360)))

(assert (=> d!1655781 (= res!2180860 ((_ is Nil!59254) lt!2111306))))

(assert (=> d!1655781 (= (forall!13619 lt!2111306 lambda!251356) e!3194360)))

(declare-fun b!5121859 () Bool)

(declare-fun e!3194361 () Bool)

(assert (=> b!5121859 (= e!3194360 e!3194361)))

(declare-fun res!2180861 () Bool)

(assert (=> b!5121859 (=> (not res!2180861) (not e!3194361))))

(assert (=> b!5121859 (= res!2180861 (dynLambda!23604 lambda!251356 (h!65702 lt!2111306)))))

(declare-fun b!5121860 () Bool)

(assert (=> b!5121860 (= e!3194361 (forall!13619 (t!372397 lt!2111306) lambda!251356))))

(assert (= (and d!1655781 (not res!2180860)) b!5121859))

(assert (= (and b!5121859 res!2180861) b!5121860))

(declare-fun b_lambda!198973 () Bool)

(assert (=> (not b_lambda!198973) (not b!5121859)))

(declare-fun m!6183302 () Bool)

(assert (=> b!5121859 m!6183302))

(declare-fun m!6183306 () Bool)

(assert (=> b!5121860 m!6183306))

(assert (=> d!1655327 d!1655781))

(declare-fun d!1655785 () Bool)

(declare-fun c!880264 () Bool)

(assert (=> d!1655785 (= c!880264 ((_ is Nil!59254) lt!2111349))))

(declare-fun e!3194367 () (InoxSet Context!7222))

(assert (=> d!1655785 (= (content!10536 lt!2111349) e!3194367)))

(declare-fun b!5121869 () Bool)

(assert (=> b!5121869 (= e!3194367 ((as const (Array Context!7222 Bool)) false))))

(declare-fun b!5121870 () Bool)

(assert (=> b!5121870 (= e!3194367 ((_ map or) (store ((as const (Array Context!7222 Bool)) false) (h!65702 lt!2111349) true) (content!10536 (t!372397 lt!2111349))))))

(assert (= (and d!1655785 c!880264) b!5121869))

(assert (= (and d!1655785 (not c!880264)) b!5121870))

(declare-fun m!6183320 () Bool)

(assert (=> b!5121870 m!6183320))

(declare-fun m!6183322 () Bool)

(assert (=> b!5121870 m!6183322))

(assert (=> b!5121321 d!1655785))

(declare-fun d!1655791 () Bool)

(assert (=> d!1655791 true))

(declare-fun setRes!30430 () Bool)

(assert (=> d!1655791 setRes!30430))

(declare-fun condSetEmpty!30430 () Bool)

(declare-fun res!2180874 () (InoxSet Context!7222))

(assert (=> d!1655791 (= condSetEmpty!30430 (= res!2180874 ((as const (Array Context!7222 Bool)) false)))))

(assert (=> d!1655791 (= (choose!37655 z!4463 lambda!251342) res!2180874)))

(declare-fun setIsEmpty!30430 () Bool)

(assert (=> setIsEmpty!30430 setRes!30430))

(declare-fun setNonEmpty!30430 () Bool)

(declare-fun tp!1428851 () Bool)

(declare-fun setElem!30430 () Context!7222)

(declare-fun e!3194379 () Bool)

(assert (=> setNonEmpty!30430 (= setRes!30430 (and tp!1428851 (inv!78748 setElem!30430) e!3194379))))

(declare-fun setRest!30430 () (InoxSet Context!7222))

(assert (=> setNonEmpty!30430 (= res!2180874 ((_ map or) (store ((as const (Array Context!7222 Bool)) false) setElem!30430 true) setRest!30430))))

(declare-fun b!5121887 () Bool)

(declare-fun tp!1428850 () Bool)

(assert (=> b!5121887 (= e!3194379 tp!1428850)))

(assert (= (and d!1655791 condSetEmpty!30430) setIsEmpty!30430))

(assert (= (and d!1655791 (not condSetEmpty!30430)) setNonEmpty!30430))

(assert (= setNonEmpty!30430 b!5121887))

(declare-fun m!6183340 () Bool)

(assert (=> setNonEmpty!30430 m!6183340))

(assert (=> d!1655287 d!1655791))

(assert (=> d!1655317 d!1655175))

(declare-fun d!1655809 () Bool)

(assert (=> d!1655809 (= (flatMap!361 z!4463 lambda!251394) (choose!37655 z!4463 lambda!251394))))

(declare-fun bs!1193213 () Bool)

(assert (= bs!1193213 d!1655809))

(declare-fun m!6183344 () Bool)

(assert (=> bs!1193213 m!6183344))

(assert (=> d!1655333 d!1655809))

(declare-fun d!1655811 () Bool)

(declare-fun res!2180875 () Bool)

(declare-fun e!3194380 () Bool)

(assert (=> d!1655811 (=> res!2180875 e!3194380)))

(assert (=> d!1655811 (= res!2180875 ((_ is Nil!59252) (exprs!4111 setElem!30420)))))

(assert (=> d!1655811 (= (forall!13616 (exprs!4111 setElem!30420) lambda!251402) e!3194380)))

(declare-fun b!5121888 () Bool)

(declare-fun e!3194381 () Bool)

(assert (=> b!5121888 (= e!3194380 e!3194381)))

(declare-fun res!2180876 () Bool)

(assert (=> b!5121888 (=> (not res!2180876) (not e!3194381))))

(assert (=> b!5121888 (= res!2180876 (dynLambda!23601 lambda!251402 (h!65700 (exprs!4111 setElem!30420))))))

(declare-fun b!5121889 () Bool)

(assert (=> b!5121889 (= e!3194381 (forall!13616 (t!372395 (exprs!4111 setElem!30420)) lambda!251402))))

(assert (= (and d!1655811 (not res!2180875)) b!5121888))

(assert (= (and b!5121888 res!2180876) b!5121889))

(declare-fun b_lambda!198975 () Bool)

(assert (=> (not b_lambda!198975) (not b!5121888)))

(declare-fun m!6183346 () Bool)

(assert (=> b!5121888 m!6183346))

(declare-fun m!6183348 () Bool)

(assert (=> b!5121889 m!6183348))

(assert (=> d!1655359 d!1655811))

(declare-fun b!5121901 () Bool)

(declare-fun e!3194384 () Bool)

(declare-fun tp!1428864 () Bool)

(declare-fun tp!1428865 () Bool)

(assert (=> b!5121901 (= e!3194384 (and tp!1428864 tp!1428865))))

(declare-fun b!5121898 () Bool)

(assert (=> b!5121898 (= e!3194384 tp_is_empty!37727)))

(assert (=> b!5121444 (= tp!1428803 e!3194384)))

(declare-fun b!5121900 () Bool)

(declare-fun tp!1428863 () Bool)

(assert (=> b!5121900 (= e!3194384 tp!1428863)))

(declare-fun b!5121899 () Bool)

(declare-fun tp!1428862 () Bool)

(declare-fun tp!1428866 () Bool)

(assert (=> b!5121899 (= e!3194384 (and tp!1428862 tp!1428866))))

(assert (= (and b!5121444 ((_ is ElementMatch!14227) (regOne!28966 (h!65700 (exprs!4111 setElem!30411))))) b!5121898))

(assert (= (and b!5121444 ((_ is Concat!23072) (regOne!28966 (h!65700 (exprs!4111 setElem!30411))))) b!5121899))

(assert (= (and b!5121444 ((_ is Star!14227) (regOne!28966 (h!65700 (exprs!4111 setElem!30411))))) b!5121900))

(assert (= (and b!5121444 ((_ is Union!14227) (regOne!28966 (h!65700 (exprs!4111 setElem!30411))))) b!5121901))

(declare-fun b!5121906 () Bool)

(declare-fun e!3194386 () Bool)

(declare-fun tp!1428871 () Bool)

(declare-fun tp!1428872 () Bool)

(assert (=> b!5121906 (= e!3194386 (and tp!1428871 tp!1428872))))

(declare-fun b!5121903 () Bool)

(assert (=> b!5121903 (= e!3194386 tp_is_empty!37727)))

(assert (=> b!5121444 (= tp!1428807 e!3194386)))

(declare-fun b!5121905 () Bool)

(declare-fun tp!1428870 () Bool)

(assert (=> b!5121905 (= e!3194386 tp!1428870)))

(declare-fun b!5121904 () Bool)

(declare-fun tp!1428869 () Bool)

(declare-fun tp!1428873 () Bool)

(assert (=> b!5121904 (= e!3194386 (and tp!1428869 tp!1428873))))

(assert (= (and b!5121444 ((_ is ElementMatch!14227) (regTwo!28966 (h!65700 (exprs!4111 setElem!30411))))) b!5121903))

(assert (= (and b!5121444 ((_ is Concat!23072) (regTwo!28966 (h!65700 (exprs!4111 setElem!30411))))) b!5121904))

(assert (= (and b!5121444 ((_ is Star!14227) (regTwo!28966 (h!65700 (exprs!4111 setElem!30411))))) b!5121905))

(assert (= (and b!5121444 ((_ is Union!14227) (regTwo!28966 (h!65700 (exprs!4111 setElem!30411))))) b!5121906))

(declare-fun b!5121911 () Bool)

(declare-fun e!3194388 () Bool)

(declare-fun tp!1428878 () Bool)

(declare-fun tp!1428879 () Bool)

(assert (=> b!5121911 (= e!3194388 (and tp!1428878 tp!1428879))))

(declare-fun b!5121908 () Bool)

(assert (=> b!5121908 (= e!3194388 tp_is_empty!37727)))

(assert (=> b!5121457 (= tp!1428823 e!3194388)))

(declare-fun b!5121910 () Bool)

(declare-fun tp!1428877 () Bool)

(assert (=> b!5121910 (= e!3194388 tp!1428877)))

(declare-fun b!5121909 () Bool)

(declare-fun tp!1428876 () Bool)

(declare-fun tp!1428880 () Bool)

(assert (=> b!5121909 (= e!3194388 (and tp!1428876 tp!1428880))))

(assert (= (and b!5121457 ((_ is ElementMatch!14227) (h!65700 (t!372395 (exprs!4111 setElem!30412))))) b!5121908))

(assert (= (and b!5121457 ((_ is Concat!23072) (h!65700 (t!372395 (exprs!4111 setElem!30412))))) b!5121909))

(assert (= (and b!5121457 ((_ is Star!14227) (h!65700 (t!372395 (exprs!4111 setElem!30412))))) b!5121910))

(assert (= (and b!5121457 ((_ is Union!14227) (h!65700 (t!372395 (exprs!4111 setElem!30412))))) b!5121911))

(declare-fun b!5121917 () Bool)

(declare-fun e!3194391 () Bool)

(declare-fun tp!1428887 () Bool)

(declare-fun tp!1428888 () Bool)

(assert (=> b!5121917 (= e!3194391 (and tp!1428887 tp!1428888))))

(assert (=> b!5121457 (= tp!1428824 e!3194391)))

(assert (= (and b!5121457 ((_ is Cons!59252) (t!372395 (t!372395 (exprs!4111 setElem!30412))))) b!5121917))

(declare-fun b!5121921 () Bool)

(declare-fun e!3194392 () Bool)

(declare-fun tp!1428891 () Bool)

(declare-fun tp!1428892 () Bool)

(assert (=> b!5121921 (= e!3194392 (and tp!1428891 tp!1428892))))

(declare-fun b!5121918 () Bool)

(assert (=> b!5121918 (= e!3194392 tp_is_empty!37727)))

(assert (=> b!5121445 (= tp!1428804 e!3194392)))

(declare-fun b!5121920 () Bool)

(declare-fun tp!1428890 () Bool)

(assert (=> b!5121920 (= e!3194392 tp!1428890)))

(declare-fun b!5121919 () Bool)

(declare-fun tp!1428889 () Bool)

(declare-fun tp!1428893 () Bool)

(assert (=> b!5121919 (= e!3194392 (and tp!1428889 tp!1428893))))

(assert (= (and b!5121445 ((_ is ElementMatch!14227) (reg!14556 (h!65700 (exprs!4111 setElem!30411))))) b!5121918))

(assert (= (and b!5121445 ((_ is Concat!23072) (reg!14556 (h!65700 (exprs!4111 setElem!30411))))) b!5121919))

(assert (= (and b!5121445 ((_ is Star!14227) (reg!14556 (h!65700 (exprs!4111 setElem!30411))))) b!5121920))

(assert (= (and b!5121445 ((_ is Union!14227) (reg!14556 (h!65700 (exprs!4111 setElem!30411))))) b!5121921))

(declare-fun b!5121927 () Bool)

(declare-fun e!3194395 () Bool)

(declare-fun tp!1428901 () Bool)

(assert (=> b!5121927 (= e!3194395 (and tp_is_empty!37727 tp!1428901))))

(assert (=> b!5121449 (= tp!1428811 e!3194395)))

(assert (= (and b!5121449 ((_ is Cons!59251) (t!372394 (t!372394 (t!372394 input!5745))))) b!5121927))

(declare-fun b!5121935 () Bool)

(declare-fun e!3194397 () Bool)

(declare-fun tp!1428909 () Bool)

(declare-fun tp!1428910 () Bool)

(assert (=> b!5121935 (= e!3194397 (and tp!1428909 tp!1428910))))

(declare-fun b!5121932 () Bool)

(assert (=> b!5121932 (= e!3194397 tp_is_empty!37727)))

(assert (=> b!5121446 (= tp!1428805 e!3194397)))

(declare-fun b!5121934 () Bool)

(declare-fun tp!1428908 () Bool)

(assert (=> b!5121934 (= e!3194397 tp!1428908)))

(declare-fun b!5121933 () Bool)

(declare-fun tp!1428904 () Bool)

(declare-fun tp!1428911 () Bool)

(assert (=> b!5121933 (= e!3194397 (and tp!1428904 tp!1428911))))

(assert (= (and b!5121446 ((_ is ElementMatch!14227) (regOne!28967 (h!65700 (exprs!4111 setElem!30411))))) b!5121932))

(assert (= (and b!5121446 ((_ is Concat!23072) (regOne!28967 (h!65700 (exprs!4111 setElem!30411))))) b!5121933))

(assert (= (and b!5121446 ((_ is Star!14227) (regOne!28967 (h!65700 (exprs!4111 setElem!30411))))) b!5121934))

(assert (= (and b!5121446 ((_ is Union!14227) (regOne!28967 (h!65700 (exprs!4111 setElem!30411))))) b!5121935))

(declare-fun b!5121943 () Bool)

(declare-fun e!3194399 () Bool)

(declare-fun tp!1428919 () Bool)

(declare-fun tp!1428920 () Bool)

(assert (=> b!5121943 (= e!3194399 (and tp!1428919 tp!1428920))))

(declare-fun b!5121940 () Bool)

(assert (=> b!5121940 (= e!3194399 tp_is_empty!37727)))

(assert (=> b!5121446 (= tp!1428806 e!3194399)))

(declare-fun b!5121942 () Bool)

(declare-fun tp!1428918 () Bool)

(assert (=> b!5121942 (= e!3194399 tp!1428918)))

(declare-fun b!5121941 () Bool)

(declare-fun tp!1428917 () Bool)

(declare-fun tp!1428921 () Bool)

(assert (=> b!5121941 (= e!3194399 (and tp!1428917 tp!1428921))))

(assert (= (and b!5121446 ((_ is ElementMatch!14227) (regTwo!28967 (h!65700 (exprs!4111 setElem!30411))))) b!5121940))

(assert (= (and b!5121446 ((_ is Concat!23072) (regTwo!28967 (h!65700 (exprs!4111 setElem!30411))))) b!5121941))

(assert (= (and b!5121446 ((_ is Star!14227) (regTwo!28967 (h!65700 (exprs!4111 setElem!30411))))) b!5121942))

(assert (= (and b!5121446 ((_ is Union!14227) (regTwo!28967 (h!65700 (exprs!4111 setElem!30411))))) b!5121943))

(declare-fun b!5121945 () Bool)

(declare-fun e!3194401 () Bool)

(declare-fun tp!1428923 () Bool)

(assert (=> b!5121945 (= e!3194401 (and tp_is_empty!37727 tp!1428923))))

(assert (=> b!5121459 (= tp!1428827 e!3194401)))

(assert (= (and b!5121459 ((_ is Cons!59251) (t!372394 (t!372394 (t!372394 testedP!265))))) b!5121945))

(declare-fun b!5121950 () Bool)

(declare-fun e!3194403 () Bool)

(declare-fun tp!1428929 () Bool)

(assert (=> b!5121950 (= e!3194403 (and tp_is_empty!37727 tp!1428929))))

(assert (=> b!5121448 (= tp!1428810 e!3194403)))

(assert (= (and b!5121448 ((_ is Cons!59251) (t!372394 (t!372394 (t!372394 knownP!20))))) b!5121950))

(declare-fun condSetEmpty!30432 () Bool)

(assert (=> setNonEmpty!30424 (= condSetEmpty!30432 (= setRest!30424 ((as const (Array Context!7222 Bool)) false)))))

(declare-fun setRes!30432 () Bool)

(assert (=> setNonEmpty!30424 (= tp!1428817 setRes!30432)))

(declare-fun setIsEmpty!30432 () Bool)

(assert (=> setIsEmpty!30432 setRes!30432))

(declare-fun setNonEmpty!30432 () Bool)

(declare-fun setElem!30432 () Context!7222)

(declare-fun tp!1428931 () Bool)

(declare-fun e!3194404 () Bool)

(assert (=> setNonEmpty!30432 (= setRes!30432 (and tp!1428931 (inv!78748 setElem!30432) e!3194404))))

(declare-fun setRest!30432 () (InoxSet Context!7222))

(assert (=> setNonEmpty!30432 (= setRest!30424 ((_ map or) (store ((as const (Array Context!7222 Bool)) false) setElem!30432 true) setRest!30432))))

(declare-fun b!5121952 () Bool)

(declare-fun tp!1428930 () Bool)

(assert (=> b!5121952 (= e!3194404 tp!1428930)))

(assert (= (and setNonEmpty!30424 condSetEmpty!30432) setIsEmpty!30432))

(assert (= (and setNonEmpty!30424 (not condSetEmpty!30432)) setNonEmpty!30432))

(assert (= setNonEmpty!30432 b!5121952))

(declare-fun m!6183352 () Bool)

(assert (=> setNonEmpty!30432 m!6183352))

(declare-fun b!5121960 () Bool)

(declare-fun e!3194407 () Bool)

(declare-fun tp!1428941 () Bool)

(declare-fun tp!1428942 () Bool)

(assert (=> b!5121960 (= e!3194407 (and tp!1428941 tp!1428942))))

(declare-fun b!5121957 () Bool)

(assert (=> b!5121957 (= e!3194407 tp_is_empty!37727)))

(assert (=> b!5121450 (= tp!1428812 e!3194407)))

(declare-fun b!5121959 () Bool)

(declare-fun tp!1428940 () Bool)

(assert (=> b!5121959 (= e!3194407 tp!1428940)))

(declare-fun b!5121958 () Bool)

(declare-fun tp!1428939 () Bool)

(declare-fun tp!1428943 () Bool)

(assert (=> b!5121958 (= e!3194407 (and tp!1428939 tp!1428943))))

(assert (= (and b!5121450 ((_ is ElementMatch!14227) (h!65700 (exprs!4111 setElem!30420)))) b!5121957))

(assert (= (and b!5121450 ((_ is Concat!23072) (h!65700 (exprs!4111 setElem!30420)))) b!5121958))

(assert (= (and b!5121450 ((_ is Star!14227) (h!65700 (exprs!4111 setElem!30420)))) b!5121959))

(assert (= (and b!5121450 ((_ is Union!14227) (h!65700 (exprs!4111 setElem!30420)))) b!5121960))

(declare-fun b!5121966 () Bool)

(declare-fun e!3194410 () Bool)

(declare-fun tp!1428951 () Bool)

(declare-fun tp!1428952 () Bool)

(assert (=> b!5121966 (= e!3194410 (and tp!1428951 tp!1428952))))

(assert (=> b!5121450 (= tp!1428813 e!3194410)))

(assert (= (and b!5121450 ((_ is Cons!59252) (t!372395 (exprs!4111 setElem!30420)))) b!5121966))

(declare-fun b!5121970 () Bool)

(declare-fun e!3194411 () Bool)

(declare-fun tp!1428955 () Bool)

(declare-fun tp!1428956 () Bool)

(assert (=> b!5121970 (= e!3194411 (and tp!1428955 tp!1428956))))

(declare-fun b!5121967 () Bool)

(assert (=> b!5121967 (= e!3194411 tp_is_empty!37727)))

(assert (=> b!5121454 (= tp!1428818 e!3194411)))

(declare-fun b!5121969 () Bool)

(declare-fun tp!1428954 () Bool)

(assert (=> b!5121969 (= e!3194411 tp!1428954)))

(declare-fun b!5121968 () Bool)

(declare-fun tp!1428953 () Bool)

(declare-fun tp!1428957 () Bool)

(assert (=> b!5121968 (= e!3194411 (and tp!1428953 tp!1428957))))

(assert (= (and b!5121454 ((_ is ElementMatch!14227) (regOne!28966 (h!65700 (exprs!4111 setElem!30412))))) b!5121967))

(assert (= (and b!5121454 ((_ is Concat!23072) (regOne!28966 (h!65700 (exprs!4111 setElem!30412))))) b!5121968))

(assert (= (and b!5121454 ((_ is Star!14227) (regOne!28966 (h!65700 (exprs!4111 setElem!30412))))) b!5121969))

(assert (= (and b!5121454 ((_ is Union!14227) (regOne!28966 (h!65700 (exprs!4111 setElem!30412))))) b!5121970))

(declare-fun b!5121979 () Bool)

(declare-fun e!3194414 () Bool)

(declare-fun tp!1428967 () Bool)

(declare-fun tp!1428968 () Bool)

(assert (=> b!5121979 (= e!3194414 (and tp!1428967 tp!1428968))))

(declare-fun b!5121976 () Bool)

(assert (=> b!5121976 (= e!3194414 tp_is_empty!37727)))

(assert (=> b!5121454 (= tp!1428822 e!3194414)))

(declare-fun b!5121978 () Bool)

(declare-fun tp!1428966 () Bool)

(assert (=> b!5121978 (= e!3194414 tp!1428966)))

(declare-fun b!5121977 () Bool)

(declare-fun tp!1428965 () Bool)

(declare-fun tp!1428969 () Bool)

(assert (=> b!5121977 (= e!3194414 (and tp!1428965 tp!1428969))))

(assert (= (and b!5121454 ((_ is ElementMatch!14227) (regTwo!28966 (h!65700 (exprs!4111 setElem!30412))))) b!5121976))

(assert (= (and b!5121454 ((_ is Concat!23072) (regTwo!28966 (h!65700 (exprs!4111 setElem!30412))))) b!5121977))

(assert (= (and b!5121454 ((_ is Star!14227) (regTwo!28966 (h!65700 (exprs!4111 setElem!30412))))) b!5121978))

(assert (= (and b!5121454 ((_ is Union!14227) (regTwo!28966 (h!65700 (exprs!4111 setElem!30412))))) b!5121979))

(declare-fun b!5121987 () Bool)

(declare-fun e!3194416 () Bool)

(declare-fun tp!1428977 () Bool)

(declare-fun tp!1428978 () Bool)

(assert (=> b!5121987 (= e!3194416 (and tp!1428977 tp!1428978))))

(declare-fun b!5121984 () Bool)

(assert (=> b!5121984 (= e!3194416 tp_is_empty!37727)))

(assert (=> b!5121447 (= tp!1428808 e!3194416)))

(declare-fun b!5121986 () Bool)

(declare-fun tp!1428976 () Bool)

(assert (=> b!5121986 (= e!3194416 tp!1428976)))

(declare-fun b!5121985 () Bool)

(declare-fun tp!1428975 () Bool)

(declare-fun tp!1428979 () Bool)

(assert (=> b!5121985 (= e!3194416 (and tp!1428975 tp!1428979))))

(assert (= (and b!5121447 ((_ is ElementMatch!14227) (h!65700 (t!372395 (exprs!4111 setElem!30411))))) b!5121984))

(assert (= (and b!5121447 ((_ is Concat!23072) (h!65700 (t!372395 (exprs!4111 setElem!30411))))) b!5121985))

(assert (= (and b!5121447 ((_ is Star!14227) (h!65700 (t!372395 (exprs!4111 setElem!30411))))) b!5121986))

(assert (= (and b!5121447 ((_ is Union!14227) (h!65700 (t!372395 (exprs!4111 setElem!30411))))) b!5121987))

(declare-fun b!5121992 () Bool)

(declare-fun e!3194418 () Bool)

(declare-fun tp!1428985 () Bool)

(declare-fun tp!1428986 () Bool)

(assert (=> b!5121992 (= e!3194418 (and tp!1428985 tp!1428986))))

(assert (=> b!5121447 (= tp!1428809 e!3194418)))

(assert (= (and b!5121447 ((_ is Cons!59252) (t!372395 (t!372395 (exprs!4111 setElem!30411))))) b!5121992))

(declare-fun b!5121993 () Bool)

(declare-fun e!3194419 () Bool)

(declare-fun tp!1428987 () Bool)

(declare-fun tp!1428988 () Bool)

(assert (=> b!5121993 (= e!3194419 (and tp!1428987 tp!1428988))))

(assert (=> b!5121452 (= tp!1428816 e!3194419)))

(assert (= (and b!5121452 ((_ is Cons!59252) (exprs!4111 setElem!30424))) b!5121993))

(declare-fun b!5121998 () Bool)

(declare-fun e!3194421 () Bool)

(declare-fun tp!1428993 () Bool)

(declare-fun tp!1428994 () Bool)

(assert (=> b!5121998 (= e!3194421 (and tp!1428993 tp!1428994))))

(declare-fun b!5121995 () Bool)

(assert (=> b!5121995 (= e!3194421 tp_is_empty!37727)))

(assert (=> b!5121455 (= tp!1428819 e!3194421)))

(declare-fun b!5121997 () Bool)

(declare-fun tp!1428992 () Bool)

(assert (=> b!5121997 (= e!3194421 tp!1428992)))

(declare-fun b!5121996 () Bool)

(declare-fun tp!1428991 () Bool)

(declare-fun tp!1428995 () Bool)

(assert (=> b!5121996 (= e!3194421 (and tp!1428991 tp!1428995))))

(assert (= (and b!5121455 ((_ is ElementMatch!14227) (reg!14556 (h!65700 (exprs!4111 setElem!30412))))) b!5121995))

(assert (= (and b!5121455 ((_ is Concat!23072) (reg!14556 (h!65700 (exprs!4111 setElem!30412))))) b!5121996))

(assert (= (and b!5121455 ((_ is Star!14227) (reg!14556 (h!65700 (exprs!4111 setElem!30412))))) b!5121997))

(assert (= (and b!5121455 ((_ is Union!14227) (reg!14556 (h!65700 (exprs!4111 setElem!30412))))) b!5121998))

(declare-fun b!5122003 () Bool)

(declare-fun e!3194423 () Bool)

(declare-fun tp!1429000 () Bool)

(declare-fun tp!1429001 () Bool)

(assert (=> b!5122003 (= e!3194423 (and tp!1429000 tp!1429001))))

(declare-fun b!5122000 () Bool)

(assert (=> b!5122000 (= e!3194423 tp_is_empty!37727)))

(assert (=> b!5121456 (= tp!1428820 e!3194423)))

(declare-fun b!5122002 () Bool)

(declare-fun tp!1428999 () Bool)

(assert (=> b!5122002 (= e!3194423 tp!1428999)))

(declare-fun b!5122001 () Bool)

(declare-fun tp!1428998 () Bool)

(declare-fun tp!1429002 () Bool)

(assert (=> b!5122001 (= e!3194423 (and tp!1428998 tp!1429002))))

(assert (= (and b!5121456 ((_ is ElementMatch!14227) (regOne!28967 (h!65700 (exprs!4111 setElem!30412))))) b!5122000))

(assert (= (and b!5121456 ((_ is Concat!23072) (regOne!28967 (h!65700 (exprs!4111 setElem!30412))))) b!5122001))

(assert (= (and b!5121456 ((_ is Star!14227) (regOne!28967 (h!65700 (exprs!4111 setElem!30412))))) b!5122002))

(assert (= (and b!5121456 ((_ is Union!14227) (regOne!28967 (h!65700 (exprs!4111 setElem!30412))))) b!5122003))

(declare-fun b!5122015 () Bool)

(declare-fun e!3194426 () Bool)

(declare-fun tp!1429015 () Bool)

(declare-fun tp!1429016 () Bool)

(assert (=> b!5122015 (= e!3194426 (and tp!1429015 tp!1429016))))

(declare-fun b!5122012 () Bool)

(assert (=> b!5122012 (= e!3194426 tp_is_empty!37727)))

(assert (=> b!5121456 (= tp!1428821 e!3194426)))

(declare-fun b!5122014 () Bool)

(declare-fun tp!1429014 () Bool)

(assert (=> b!5122014 (= e!3194426 tp!1429014)))

(declare-fun b!5122013 () Bool)

(declare-fun tp!1429008 () Bool)

(declare-fun tp!1429017 () Bool)

(assert (=> b!5122013 (= e!3194426 (and tp!1429008 tp!1429017))))

(assert (= (and b!5121456 ((_ is ElementMatch!14227) (regTwo!28967 (h!65700 (exprs!4111 setElem!30412))))) b!5122012))

(assert (= (and b!5121456 ((_ is Concat!23072) (regTwo!28967 (h!65700 (exprs!4111 setElem!30412))))) b!5122013))

(assert (= (and b!5121456 ((_ is Star!14227) (regTwo!28967 (h!65700 (exprs!4111 setElem!30412))))) b!5122014))

(assert (= (and b!5121456 ((_ is Union!14227) (regTwo!28967 (h!65700 (exprs!4111 setElem!30412))))) b!5122015))

(declare-fun condSetEmpty!30434 () Bool)

(assert (=> setNonEmpty!30423 (= condSetEmpty!30434 (= setRest!30423 ((as const (Array Context!7222 Bool)) false)))))

(declare-fun setRes!30434 () Bool)

(assert (=> setNonEmpty!30423 (= tp!1428815 setRes!30434)))

(declare-fun setIsEmpty!30434 () Bool)

(assert (=> setIsEmpty!30434 setRes!30434))

(declare-fun e!3194428 () Bool)

(declare-fun tp!1429020 () Bool)

(declare-fun setElem!30434 () Context!7222)

(declare-fun setNonEmpty!30434 () Bool)

(assert (=> setNonEmpty!30434 (= setRes!30434 (and tp!1429020 (inv!78748 setElem!30434) e!3194428))))

(declare-fun setRest!30434 () (InoxSet Context!7222))

(assert (=> setNonEmpty!30434 (= setRest!30423 ((_ map or) (store ((as const (Array Context!7222 Bool)) false) setElem!30434 true) setRest!30434))))

(declare-fun b!5122017 () Bool)

(declare-fun tp!1429019 () Bool)

(assert (=> b!5122017 (= e!3194428 tp!1429019)))

(assert (= (and setNonEmpty!30423 condSetEmpty!30434) setIsEmpty!30434))

(assert (= (and setNonEmpty!30423 (not condSetEmpty!30434)) setNonEmpty!30434))

(assert (= setNonEmpty!30434 b!5122017))

(declare-fun m!6183356 () Bool)

(assert (=> setNonEmpty!30434 m!6183356))

(declare-fun b!5122018 () Bool)

(declare-fun e!3194429 () Bool)

(declare-fun tp!1429021 () Bool)

(declare-fun tp!1429022 () Bool)

(assert (=> b!5122018 (= e!3194429 (and tp!1429021 tp!1429022))))

(assert (=> b!5121451 (= tp!1428814 e!3194429)))

(assert (= (and b!5121451 ((_ is Cons!59252) (exprs!4111 setElem!30423))) b!5122018))

(declare-fun b!5122022 () Bool)

(declare-fun e!3194430 () Bool)

(declare-fun tp!1429025 () Bool)

(declare-fun tp!1429026 () Bool)

(assert (=> b!5122022 (= e!3194430 (and tp!1429025 tp!1429026))))

(declare-fun b!5122019 () Bool)

(assert (=> b!5122019 (= e!3194430 tp_is_empty!37727)))

(assert (=> b!5121458 (= tp!1428825 e!3194430)))

(declare-fun b!5122021 () Bool)

(declare-fun tp!1429024 () Bool)

(assert (=> b!5122021 (= e!3194430 tp!1429024)))

(declare-fun b!5122020 () Bool)

(declare-fun tp!1429023 () Bool)

(declare-fun tp!1429027 () Bool)

(assert (=> b!5122020 (= e!3194430 (and tp!1429023 tp!1429027))))

(assert (= (and b!5121458 ((_ is ElementMatch!14227) (h!65700 (exprs!4111 setElem!30419)))) b!5122019))

(assert (= (and b!5121458 ((_ is Concat!23072) (h!65700 (exprs!4111 setElem!30419)))) b!5122020))

(assert (= (and b!5121458 ((_ is Star!14227) (h!65700 (exprs!4111 setElem!30419)))) b!5122021))

(assert (= (and b!5121458 ((_ is Union!14227) (h!65700 (exprs!4111 setElem!30419)))) b!5122022))

(declare-fun b!5122023 () Bool)

(declare-fun e!3194431 () Bool)

(declare-fun tp!1429028 () Bool)

(declare-fun tp!1429029 () Bool)

(assert (=> b!5122023 (= e!3194431 (and tp!1429028 tp!1429029))))

(assert (=> b!5121458 (= tp!1428826 e!3194431)))

(assert (= (and b!5121458 ((_ is Cons!59252) (t!372395 (exprs!4111 setElem!30419)))) b!5122023))

(declare-fun b_lambda!198995 () Bool)

(assert (= b_lambda!198943 (or d!1655167 b_lambda!198995)))

(declare-fun bs!1193220 () Bool)

(declare-fun d!1655825 () Bool)

(assert (= bs!1193220 (and d!1655825 d!1655167)))

(assert (=> bs!1193220 (= (dynLambda!23601 lambda!251343 (h!65700 (t!372395 (exprs!4111 setElem!30411)))) (validRegex!6212 (h!65700 (t!372395 (exprs!4111 setElem!30411)))))))

(declare-fun m!6183370 () Bool)

(assert (=> bs!1193220 m!6183370))

(assert (=> b!5121525 d!1655825))

(declare-fun b_lambda!198997 () Bool)

(assert (= b_lambda!198945 (or d!1655361 b_lambda!198997)))

(declare-fun bs!1193222 () Bool)

(declare-fun d!1655829 () Bool)

(assert (= bs!1193222 (and d!1655829 d!1655361)))

(assert (=> bs!1193222 (= (dynLambda!23604 lambda!251405 (h!65702 (ite c!880070 lt!2111306 lt!2111307))) (not (dynLambda!23604 (ite c!880070 lambda!251357 lambda!251358) (h!65702 (ite c!880070 lt!2111306 lt!2111307)))))))

(declare-fun b_lambda!199013 () Bool)

(assert (=> (not b_lambda!199013) (not bs!1193222)))

(declare-fun m!6183374 () Bool)

(assert (=> bs!1193222 m!6183374))

(assert (=> b!5121527 d!1655829))

(declare-fun b_lambda!198999 () Bool)

(assert (= b_lambda!198965 (or d!1655379 b_lambda!198999)))

(declare-fun bs!1193224 () Bool)

(declare-fun d!1655833 () Bool)

(assert (= bs!1193224 (and d!1655833 d!1655379)))

(assert (=> bs!1193224 (= (dynLambda!23601 lambda!251407 (h!65700 (exprs!4111 setElem!30419))) (validRegex!6212 (h!65700 (exprs!4111 setElem!30419))))))

(declare-fun m!6183378 () Bool)

(assert (=> bs!1193224 m!6183378))

(assert (=> b!5121802 d!1655833))

(declare-fun b_lambda!199001 () Bool)

(assert (= b_lambda!198941 (or d!1655169 b_lambda!199001)))

(declare-fun bs!1193226 () Bool)

(declare-fun d!1655837 () Bool)

(assert (= bs!1193226 (and d!1655837 d!1655169)))

(declare-fun lostCause!1215 (Context!7222) Bool)

(assert (=> bs!1193226 (= (dynLambda!23604 lambda!251356 (h!65702 (toList!8266 z!4463))) (lostCause!1215 (h!65702 (toList!8266 z!4463))))))

(declare-fun m!6183382 () Bool)

(assert (=> bs!1193226 m!6183382))

(assert (=> b!5121515 d!1655837))

(declare-fun b_lambda!199003 () Bool)

(assert (= b_lambda!198953 (or d!1655091 b_lambda!199003)))

(declare-fun bs!1193227 () Bool)

(declare-fun d!1655839 () Bool)

(assert (= bs!1193227 (and d!1655839 d!1655091)))

(assert (=> bs!1193227 (= (dynLambda!23601 lambda!251339 (h!65700 (t!372395 (exprs!4111 setElem!30412)))) (validRegex!6212 (h!65700 (t!372395 (exprs!4111 setElem!30412)))))))

(declare-fun m!6183384 () Bool)

(assert (=> bs!1193227 m!6183384))

(assert (=> b!5121667 d!1655839))

(declare-fun b_lambda!199005 () Bool)

(assert (= b_lambda!198959 (or d!1655347 b_lambda!199005)))

(declare-fun bs!1193228 () Bool)

(declare-fun d!1655841 () Bool)

(assert (= bs!1193228 (and d!1655841 d!1655347)))

(assert (=> bs!1193228 (= (dynLambda!23604 lambda!251401 lt!2111452) (not (lostCause!1215 lt!2111452)))))

(declare-fun m!6183386 () Bool)

(assert (=> bs!1193228 m!6183386))

(assert (=> d!1655679 d!1655841))

(declare-fun b_lambda!199007 () Bool)

(assert (= b_lambda!198967 (or d!1655169 b_lambda!199007)))

(declare-fun bs!1193229 () Bool)

(declare-fun d!1655843 () Bool)

(assert (= bs!1193229 (and d!1655843 d!1655169)))

(assert (=> bs!1193229 (= (dynLambda!23604 lambda!251356 (h!65702 lt!2111307)) (lostCause!1215 (h!65702 lt!2111307)))))

(declare-fun m!6183388 () Bool)

(assert (=> bs!1193229 m!6183388))

(assert (=> b!5121816 d!1655843))

(declare-fun b_lambda!199009 () Bool)

(assert (= b_lambda!198975 (or d!1655359 b_lambda!199009)))

(declare-fun bs!1193230 () Bool)

(declare-fun d!1655845 () Bool)

(assert (= bs!1193230 (and d!1655845 d!1655359)))

(assert (=> bs!1193230 (= (dynLambda!23601 lambda!251402 (h!65700 (exprs!4111 setElem!30420))) (validRegex!6212 (h!65700 (exprs!4111 setElem!30420))))))

(declare-fun m!6183390 () Bool)

(assert (=> bs!1193230 m!6183390))

(assert (=> b!5121888 d!1655845))

(declare-fun b_lambda!199011 () Bool)

(assert (= b_lambda!198973 (or d!1655169 b_lambda!199011)))

(declare-fun bs!1193231 () Bool)

(declare-fun d!1655847 () Bool)

(assert (= bs!1193231 (and d!1655847 d!1655169)))

(assert (=> bs!1193231 (= (dynLambda!23604 lambda!251356 (h!65702 lt!2111306)) (lostCause!1215 (h!65702 lt!2111306)))))

(declare-fun m!6183392 () Bool)

(assert (=> bs!1193231 m!6183392))

(assert (=> b!5121859 d!1655847))

(check-sat (not b!5121969) (not b!5121524) (not d!1655719) (not b!5121987) (not setNonEmpty!30430) (not b!5121632) (not bs!1193224) (not b!5121556) (not b!5121945) (not b_lambda!199003) (not b!5122002) (not bs!1193228) (not b!5121950) (not b!5121611) (not b!5121782) (not b!5121919) (not b!5121560) (not bm!356652) (not d!1655619) (not bs!1193226) (not b!5121900) tp_is_empty!37727 (not b!5121678) (not d!1655595) (not b!5121977) (not b!5121540) (not b!5121542) (not b!5121985) (not b!5122001) (not d!1655739) (not b!5121906) (not b!5121904) (not b!5121674) (not b!5121966) (not b!5121547) (not b!5121633) (not b!5121653) (not b!5121635) (not b!5121901) (not b_lambda!199013) (not b!5121997) (not bm!356654) (not b!5122020) (not b!5121755) (not d!1655757) (not b!5121652) (not b!5121917) (not b!5121960) (not d!1655727) (not b!5121801) (not b!5121756) (not b!5121538) (not b_lambda!198939) (not b!5121723) (not b!5121686) (not b_lambda!199011) (not b_lambda!199001) (not d!1655569) (not d!1655575) (not b!5121602) (not d!1655741) (not b!5121668) (not b!5121791) (not d!1655607) (not b!5121519) (not d!1655745) (not b!5121819) (not bs!1193227) (not b!5121596) (not d!1655571) (not b!5122003) (not b!5121921) (not b!5121552) (not b!5122015) (not b!5121688) (not d!1655479) (not b!5121553) (not d!1655467) (not b!5121662) (not b!5121530) (not b!5121669) (not bs!1193229) (not b!5122013) (not b!5121842) (not bs!1193231) (not b!5121934) (not d!1655649) (not setNonEmpty!30432) (not d!1655609) (not b!5121557) (not b!5121887) (not b!5121687) (not b!5121927) (not b!5121970) (not b!5121797) (not b!5121726) (not b!5121996) (not b!5121518) (not b!5121910) (not b!5121840) (not b!5121526) (not b!5121757) (not d!1655563) (not bm!356657) (not b!5121920) (not b!5121528) (not b!5121952) (not b!5121837) (not b!5121646) (not b!5121516) (not b!5121803) (not b!5122021) (not b!5121792) (not b!5121616) (not d!1655579) (not b!5121548) (not b!5121993) (not b!5121998) (not b!5121627) (not d!1655605) (not b!5122017) (not b!5121796) (not b!5121836) (not b!5121680) (not b!5121558) (not b!5121799) (not b_lambda!198999) (not b!5121531) (not b!5121618) (not b!5121607) (not d!1655553) (not d!1655471) (not d!1655487) (not d!1655543) (not b!5121650) (not b!5121986) (not b!5121823) (not b_lambda!199007) (not b_lambda!199009) (not d!1655679) (not b!5122022) (not b!5121905) (not b!5121860) (not b!5121843) (not b!5121935) (not b!5121644) (not b_lambda!198997) (not b!5121544) (not d!1655771) (not b!5121942) (not b!5121605) (not b!5121911) (not d!1655767) (not b!5121992) (not b!5121648) (not d!1655747) (not b!5121889) (not b!5122018) (not d!1655503) (not b!5121660) (not b!5121817) (not d!1655809) (not b!5121630) (not b!5121728) (not b!5121546) (not b!5121649) (not b!5121941) (not b!5121838) (not b!5121781) (not bs!1193220) (not b!5121676) (not setNonEmpty!30434) (not bs!1193230) (not b_lambda!198937) (not b!5121870) (not b!5121899) (not d!1655469) (not b!5121663) (not b!5121793) (not d!1655769) (not b!5121959) (not b!5122014) (not b_lambda!199005) (not b_lambda!198995) (not b!5121522) (not b!5121609) (not d!1655589) (not b!5121978) (not d!1655631) (not b!5121958) (not b!5121979) (not d!1655699) (not bm!356655) (not b!5121933) (not b!5121968) (not b!5121795) (not b!5121909) (not d!1655729) (not b!5121943) (not b!5122023))
(check-sat)
