; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539560 () Bool)

(assert start!539560)

(declare-fun b!5114256 () Bool)

(declare-fun e!3189674 () Bool)

(declare-fun tp!1426891 () Bool)

(assert (=> b!5114256 (= e!3189674 tp!1426891)))

(declare-fun b!5114257 () Bool)

(declare-fun e!3189672 () Bool)

(declare-datatypes ((C!28604 0))(
  ( (C!28605 (val!23954 Int)) )
))
(declare-datatypes ((List!59235 0))(
  ( (Nil!59111) (Cons!59111 (h!65559 C!28604) (t!372240 List!59235)) )
))
(declare-fun lt!2106893 () List!59235)

(assert (=> b!5114257 (= e!3189672 (not (= lt!2106893 Nil!59111)))))

(declare-fun lt!2106882 () List!59235)

(declare-fun lt!2106889 () List!59235)

(declare-fun testedP!265 () List!59235)

(declare-fun lt!2106880 () List!59235)

(declare-fun ++!12994 (List!59235 List!59235) List!59235)

(assert (=> b!5114257 (= lt!2106882 (++!12994 testedP!265 (++!12994 lt!2106880 lt!2106889)))))

(declare-datatypes ((Unit!150229 0))(
  ( (Unit!150230) )
))
(declare-fun lt!2106897 () Unit!150229)

(declare-fun lemmaConcatAssociativity!2752 (List!59235 List!59235 List!59235) Unit!150229)

(assert (=> b!5114257 (= lt!2106897 (lemmaConcatAssociativity!2752 testedP!265 lt!2106880 lt!2106889))))

(declare-fun b!5114258 () Bool)

(declare-fun e!3189669 () Bool)

(declare-fun e!3189667 () Bool)

(assert (=> b!5114258 (= e!3189669 e!3189667)))

(declare-fun res!2177096 () Bool)

(assert (=> b!5114258 (=> res!2177096 e!3189667)))

(declare-fun lt!2106885 () List!59235)

(declare-fun input!5745 () List!59235)

(assert (=> b!5114258 (= res!2177096 (not (= lt!2106885 input!5745)))))

(declare-fun lt!2106896 () List!59235)

(assert (=> b!5114258 (= lt!2106896 lt!2106885)))

(declare-fun lt!2106890 () List!59235)

(assert (=> b!5114258 (= lt!2106885 (++!12994 testedP!265 lt!2106890))))

(declare-fun lt!2106886 () List!59235)

(declare-fun lt!2106884 () List!59235)

(assert (=> b!5114258 (= lt!2106890 (++!12994 lt!2106886 lt!2106884))))

(declare-fun lt!2106898 () Unit!150229)

(assert (=> b!5114258 (= lt!2106898 (lemmaConcatAssociativity!2752 testedP!265 lt!2106886 lt!2106884))))

(declare-fun b!5114259 () Bool)

(declare-fun e!3189676 () Bool)

(declare-fun e!3189665 () Bool)

(assert (=> b!5114259 (= e!3189676 (not e!3189665))))

(declare-fun res!2177102 () Bool)

(assert (=> b!5114259 (=> res!2177102 e!3189665)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14169 0))(
  ( (ElementMatch!14169 (c!878733 C!28604)) (Concat!23014 (regOne!28850 Regex!14169) (regTwo!28850 Regex!14169)) (EmptyExpr!14169) (Star!14169 (reg!14498 Regex!14169)) (EmptyLang!14169) (Union!14169 (regOne!28851 Regex!14169) (regTwo!28851 Regex!14169)) )
))
(declare-datatypes ((List!59236 0))(
  ( (Nil!59112) (Cons!59112 (h!65560 Regex!14169) (t!372241 List!59236)) )
))
(declare-datatypes ((Context!7106 0))(
  ( (Context!7107 (exprs!4053 List!59236)) )
))
(declare-fun z!4463 () (InoxSet Context!7106))

(declare-fun matchZipper!837 ((InoxSet Context!7106) List!59235) Bool)

(assert (=> b!5114259 (= res!2177102 (not (matchZipper!837 z!4463 lt!2106886)))))

(declare-fun knownP!20 () List!59235)

(declare-fun getSuffix!3248 (List!59235 List!59235) List!59235)

(assert (=> b!5114259 (= lt!2106886 (getSuffix!3248 knownP!20 testedP!265))))

(declare-fun isPrefix!5574 (List!59235 List!59235) Bool)

(assert (=> b!5114259 (isPrefix!5574 testedP!265 knownP!20)))

(declare-fun lt!2106900 () Unit!150229)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!711 (List!59235 List!59235 List!59235) Unit!150229)

(assert (=> b!5114259 (= lt!2106900 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!711 knownP!20 testedP!265 input!5745))))

(declare-fun res!2177098 () Bool)

(declare-fun e!3189670 () Bool)

(assert (=> start!539560 (=> (not res!2177098) (not e!3189670))))

(assert (=> start!539560 (= res!2177098 (isPrefix!5574 testedP!265 input!5745))))

(assert (=> start!539560 e!3189670))

(declare-fun e!3189666 () Bool)

(assert (=> start!539560 e!3189666))

(declare-fun condSetEmpty!29961 () Bool)

(assert (=> start!539560 (= condSetEmpty!29961 (= z!4463 ((as const (Array Context!7106 Bool)) false)))))

(declare-fun setRes!29962 () Bool)

(assert (=> start!539560 setRes!29962))

(declare-fun e!3189675 () Bool)

(assert (=> start!539560 e!3189675))

(declare-fun condSetEmpty!29962 () Bool)

(declare-fun baseZ!46 () (InoxSet Context!7106))

(assert (=> start!539560 (= condSetEmpty!29962 (= baseZ!46 ((as const (Array Context!7106 Bool)) false)))))

(declare-fun setRes!29961 () Bool)

(assert (=> start!539560 setRes!29961))

(declare-fun e!3189677 () Bool)

(assert (=> start!539560 e!3189677))

(declare-fun b!5114260 () Bool)

(declare-fun e!3189673 () Bool)

(declare-fun tp!1426892 () Bool)

(assert (=> b!5114260 (= e!3189673 tp!1426892)))

(declare-fun b!5114261 () Bool)

(declare-fun tp_is_empty!37611 () Bool)

(declare-fun tp!1426890 () Bool)

(assert (=> b!5114261 (= e!3189666 (and tp_is_empty!37611 tp!1426890))))

(declare-fun setElem!29962 () Context!7106)

(declare-fun setNonEmpty!29961 () Bool)

(declare-fun tp!1426887 () Bool)

(declare-fun inv!78603 (Context!7106) Bool)

(assert (=> setNonEmpty!29961 (= setRes!29961 (and tp!1426887 (inv!78603 setElem!29962) e!3189673))))

(declare-fun setRest!29961 () (InoxSet Context!7106))

(assert (=> setNonEmpty!29961 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7106 Bool)) false) setElem!29962 true) setRest!29961))))

(declare-fun b!5114262 () Bool)

(assert (=> b!5114262 (= e!3189670 e!3189676)))

(declare-fun res!2177106 () Bool)

(assert (=> b!5114262 (=> (not res!2177106) (not e!3189676))))

(declare-fun lt!2106899 () Int)

(declare-fun lt!2106883 () Int)

(assert (=> b!5114262 (= res!2177106 (>= lt!2106899 lt!2106883))))

(declare-fun size!39475 (List!59235) Int)

(assert (=> b!5114262 (= lt!2106883 (size!39475 testedP!265))))

(assert (=> b!5114262 (= lt!2106899 (size!39475 knownP!20))))

(declare-fun setElem!29961 () Context!7106)

(declare-fun tp!1426893 () Bool)

(declare-fun setNonEmpty!29962 () Bool)

(assert (=> setNonEmpty!29962 (= setRes!29962 (and tp!1426893 (inv!78603 setElem!29961) e!3189674))))

(declare-fun setRest!29962 () (InoxSet Context!7106))

(assert (=> setNonEmpty!29962 (= z!4463 ((_ map or) (store ((as const (Array Context!7106 Bool)) false) setElem!29961 true) setRest!29962))))

(declare-fun b!5114263 () Bool)

(declare-fun res!2177093 () Bool)

(assert (=> b!5114263 (=> res!2177093 e!3189665)))

(declare-fun derivationZipper!68 ((InoxSet Context!7106) List!59235) (InoxSet Context!7106))

(assert (=> b!5114263 (= res!2177093 (not (= (derivationZipper!68 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5114264 () Bool)

(declare-fun res!2177099 () Bool)

(assert (=> b!5114264 (=> res!2177099 e!3189665)))

(assert (=> b!5114264 (= res!2177099 (>= lt!2106883 (size!39475 input!5745)))))

(declare-fun b!5114265 () Bool)

(declare-fun e!3189671 () Bool)

(assert (=> b!5114265 (= e!3189671 e!3189669)))

(declare-fun res!2177104 () Bool)

(assert (=> b!5114265 (=> res!2177104 e!3189669)))

(assert (=> b!5114265 (= res!2177104 (not (= lt!2106896 input!5745)))))

(declare-fun lt!2106887 () List!59235)

(assert (=> b!5114265 (= lt!2106896 (++!12994 lt!2106887 lt!2106884))))

(assert (=> b!5114265 (= lt!2106887 (++!12994 testedP!265 lt!2106886))))

(declare-fun b!5114266 () Bool)

(declare-fun res!2177107 () Bool)

(declare-fun e!3189668 () Bool)

(assert (=> b!5114266 (=> res!2177107 e!3189668)))

(assert (=> b!5114266 (= res!2177107 (not (= lt!2106887 knownP!20)))))

(declare-fun b!5114267 () Bool)

(declare-fun res!2177105 () Bool)

(assert (=> b!5114267 (=> res!2177105 e!3189668)))

(declare-fun lt!2106892 () C!28604)

(declare-fun $colon$colon!1115 (List!59235 C!28604) List!59235)

(declare-fun tail!10038 (List!59235) List!59235)

(assert (=> b!5114267 (= res!2177105 (not (= lt!2106886 ($colon$colon!1115 (tail!10038 lt!2106886) lt!2106892))))))

(declare-fun b!5114268 () Bool)

(declare-fun res!2177103 () Bool)

(assert (=> b!5114268 (=> (not res!2177103) (not e!3189676))))

(assert (=> b!5114268 (= res!2177103 (matchZipper!837 baseZ!46 knownP!20))))

(declare-fun b!5114269 () Bool)

(declare-fun res!2177097 () Bool)

(assert (=> b!5114269 (=> res!2177097 e!3189665)))

(assert (=> b!5114269 (= res!2177097 (= lt!2106883 lt!2106899))))

(declare-fun b!5114270 () Bool)

(declare-fun res!2177095 () Bool)

(assert (=> b!5114270 (=> (not res!2177095) (not e!3189670))))

(assert (=> b!5114270 (= res!2177095 (isPrefix!5574 knownP!20 input!5745))))

(declare-fun b!5114271 () Bool)

(declare-fun res!2177100 () Bool)

(assert (=> b!5114271 (=> res!2177100 e!3189665)))

(declare-fun lostCauseZipper!1055 ((InoxSet Context!7106)) Bool)

(assert (=> b!5114271 (= res!2177100 (lostCauseZipper!1055 z!4463))))

(declare-fun b!5114272 () Bool)

(declare-fun tp!1426889 () Bool)

(assert (=> b!5114272 (= e!3189677 (and tp_is_empty!37611 tp!1426889))))

(declare-fun b!5114273 () Bool)

(declare-fun tp!1426888 () Bool)

(assert (=> b!5114273 (= e!3189675 (and tp_is_empty!37611 tp!1426888))))

(declare-fun b!5114274 () Bool)

(assert (=> b!5114274 (= e!3189667 e!3189668)))

(declare-fun res!2177101 () Bool)

(assert (=> b!5114274 (=> res!2177101 e!3189668)))

(declare-fun head!10897 (List!59235) C!28604)

(assert (=> b!5114274 (= res!2177101 (not (= (head!10897 lt!2106886) lt!2106892)))))

(assert (=> b!5114274 (= lt!2106890 lt!2106893)))

(declare-fun lt!2106895 () Unit!150229)

(declare-fun lemmaSamePrefixThenSameSuffix!2620 (List!59235 List!59235 List!59235 List!59235 List!59235) Unit!150229)

(assert (=> b!5114274 (= lt!2106895 (lemmaSamePrefixThenSameSuffix!2620 testedP!265 lt!2106890 testedP!265 lt!2106893 input!5745))))

(declare-fun b!5114275 () Bool)

(assert (=> b!5114275 (= e!3189668 e!3189672)))

(declare-fun res!2177094 () Bool)

(assert (=> b!5114275 (=> res!2177094 e!3189672)))

(assert (=> b!5114275 (= res!2177094 (not (= lt!2106882 knownP!20)))))

(declare-fun lt!2106894 () List!59235)

(assert (=> b!5114275 (= lt!2106882 (++!12994 lt!2106894 lt!2106889))))

(declare-fun setIsEmpty!29961 () Bool)

(assert (=> setIsEmpty!29961 setRes!29961))

(declare-fun b!5114276 () Bool)

(assert (=> b!5114276 (= e!3189665 e!3189671)))

(declare-fun res!2177108 () Bool)

(assert (=> b!5114276 (=> res!2177108 e!3189671)))

(assert (=> b!5114276 (= res!2177108 (not (= (++!12994 knownP!20 lt!2106884) input!5745)))))

(assert (=> b!5114276 (= lt!2106884 (getSuffix!3248 input!5745 knownP!20))))

(assert (=> b!5114276 (= lt!2106889 (getSuffix!3248 knownP!20 lt!2106894))))

(assert (=> b!5114276 (isPrefix!5574 lt!2106894 knownP!20)))

(declare-fun lt!2106888 () Unit!150229)

(assert (=> b!5114276 (= lt!2106888 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!711 knownP!20 lt!2106894 input!5745))))

(declare-fun derivationStepZipper!804 ((InoxSet Context!7106) C!28604) (InoxSet Context!7106))

(assert (=> b!5114276 (= (derivationZipper!68 baseZ!46 lt!2106894) (derivationStepZipper!804 z!4463 lt!2106892))))

(declare-fun lt!2106881 () Unit!150229)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!29 ((InoxSet Context!7106) (InoxSet Context!7106) List!59235 C!28604) Unit!150229)

(assert (=> b!5114276 (= lt!2106881 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!29 baseZ!46 z!4463 testedP!265 lt!2106892))))

(assert (=> b!5114276 (isPrefix!5574 lt!2106894 input!5745)))

(declare-fun lt!2106891 () Unit!150229)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!964 (List!59235 List!59235) Unit!150229)

(assert (=> b!5114276 (= lt!2106891 (lemmaAddHeadSuffixToPrefixStillPrefix!964 testedP!265 input!5745))))

(assert (=> b!5114276 (= lt!2106894 (++!12994 testedP!265 lt!2106880))))

(assert (=> b!5114276 (= lt!2106880 (Cons!59111 lt!2106892 Nil!59111))))

(assert (=> b!5114276 (= lt!2106892 (head!10897 lt!2106893))))

(assert (=> b!5114276 (= lt!2106893 (getSuffix!3248 input!5745 testedP!265))))

(declare-fun setIsEmpty!29962 () Bool)

(assert (=> setIsEmpty!29962 setRes!29962))

(declare-fun b!5114277 () Bool)

(declare-fun res!2177092 () Bool)

(assert (=> b!5114277 (=> res!2177092 e!3189669)))

(assert (=> b!5114277 (= res!2177092 (not (= (++!12994 testedP!265 lt!2106893) input!5745)))))

(assert (= (and start!539560 res!2177098) b!5114270))

(assert (= (and b!5114270 res!2177095) b!5114262))

(assert (= (and b!5114262 res!2177106) b!5114268))

(assert (= (and b!5114268 res!2177103) b!5114259))

(assert (= (and b!5114259 (not res!2177102)) b!5114263))

(assert (= (and b!5114263 (not res!2177093)) b!5114271))

(assert (= (and b!5114271 (not res!2177100)) b!5114269))

(assert (= (and b!5114269 (not res!2177097)) b!5114264))

(assert (= (and b!5114264 (not res!2177099)) b!5114276))

(assert (= (and b!5114276 (not res!2177108)) b!5114265))

(assert (= (and b!5114265 (not res!2177104)) b!5114277))

(assert (= (and b!5114277 (not res!2177092)) b!5114258))

(assert (= (and b!5114258 (not res!2177096)) b!5114274))

(assert (= (and b!5114274 (not res!2177101)) b!5114267))

(assert (= (and b!5114267 (not res!2177105)) b!5114266))

(assert (= (and b!5114266 (not res!2177107)) b!5114275))

(assert (= (and b!5114275 (not res!2177094)) b!5114257))

(get-info :version)

(assert (= (and start!539560 ((_ is Cons!59111) input!5745)) b!5114261))

(assert (= (and start!539560 condSetEmpty!29961) setIsEmpty!29962))

(assert (= (and start!539560 (not condSetEmpty!29961)) setNonEmpty!29962))

(assert (= setNonEmpty!29962 b!5114256))

(assert (= (and start!539560 ((_ is Cons!59111) testedP!265)) b!5114273))

(assert (= (and start!539560 condSetEmpty!29962) setIsEmpty!29961))

(assert (= (and start!539560 (not condSetEmpty!29962)) setNonEmpty!29961))

(assert (= setNonEmpty!29961 b!5114260))

(assert (= (and start!539560 ((_ is Cons!59111) knownP!20)) b!5114272))

(declare-fun m!6172784 () Bool)

(assert (=> setNonEmpty!29961 m!6172784))

(declare-fun m!6172786 () Bool)

(assert (=> b!5114263 m!6172786))

(declare-fun m!6172788 () Bool)

(assert (=> b!5114270 m!6172788))

(declare-fun m!6172790 () Bool)

(assert (=> b!5114276 m!6172790))

(declare-fun m!6172792 () Bool)

(assert (=> b!5114276 m!6172792))

(declare-fun m!6172794 () Bool)

(assert (=> b!5114276 m!6172794))

(declare-fun m!6172796 () Bool)

(assert (=> b!5114276 m!6172796))

(declare-fun m!6172798 () Bool)

(assert (=> b!5114276 m!6172798))

(declare-fun m!6172800 () Bool)

(assert (=> b!5114276 m!6172800))

(declare-fun m!6172802 () Bool)

(assert (=> b!5114276 m!6172802))

(declare-fun m!6172804 () Bool)

(assert (=> b!5114276 m!6172804))

(declare-fun m!6172806 () Bool)

(assert (=> b!5114276 m!6172806))

(declare-fun m!6172808 () Bool)

(assert (=> b!5114276 m!6172808))

(declare-fun m!6172810 () Bool)

(assert (=> b!5114276 m!6172810))

(declare-fun m!6172812 () Bool)

(assert (=> b!5114276 m!6172812))

(declare-fun m!6172814 () Bool)

(assert (=> b!5114276 m!6172814))

(declare-fun m!6172816 () Bool)

(assert (=> b!5114267 m!6172816))

(assert (=> b!5114267 m!6172816))

(declare-fun m!6172818 () Bool)

(assert (=> b!5114267 m!6172818))

(declare-fun m!6172820 () Bool)

(assert (=> b!5114257 m!6172820))

(assert (=> b!5114257 m!6172820))

(declare-fun m!6172822 () Bool)

(assert (=> b!5114257 m!6172822))

(declare-fun m!6172824 () Bool)

(assert (=> b!5114257 m!6172824))

(declare-fun m!6172826 () Bool)

(assert (=> b!5114264 m!6172826))

(declare-fun m!6172828 () Bool)

(assert (=> b!5114268 m!6172828))

(declare-fun m!6172830 () Bool)

(assert (=> b!5114262 m!6172830))

(declare-fun m!6172832 () Bool)

(assert (=> b!5114262 m!6172832))

(declare-fun m!6172834 () Bool)

(assert (=> b!5114274 m!6172834))

(declare-fun m!6172836 () Bool)

(assert (=> b!5114274 m!6172836))

(declare-fun m!6172838 () Bool)

(assert (=> start!539560 m!6172838))

(declare-fun m!6172840 () Bool)

(assert (=> b!5114265 m!6172840))

(declare-fun m!6172842 () Bool)

(assert (=> b!5114265 m!6172842))

(declare-fun m!6172844 () Bool)

(assert (=> b!5114259 m!6172844))

(declare-fun m!6172846 () Bool)

(assert (=> b!5114259 m!6172846))

(declare-fun m!6172848 () Bool)

(assert (=> b!5114259 m!6172848))

(declare-fun m!6172850 () Bool)

(assert (=> b!5114259 m!6172850))

(declare-fun m!6172852 () Bool)

(assert (=> setNonEmpty!29962 m!6172852))

(declare-fun m!6172854 () Bool)

(assert (=> b!5114271 m!6172854))

(declare-fun m!6172856 () Bool)

(assert (=> b!5114258 m!6172856))

(declare-fun m!6172858 () Bool)

(assert (=> b!5114258 m!6172858))

(declare-fun m!6172860 () Bool)

(assert (=> b!5114258 m!6172860))

(declare-fun m!6172862 () Bool)

(assert (=> b!5114277 m!6172862))

(declare-fun m!6172864 () Bool)

(assert (=> b!5114275 m!6172864))

(check-sat (not b!5114259) (not b!5114267) (not b!5114263) (not b!5114258) (not setNonEmpty!29961) (not b!5114275) (not b!5114274) (not b!5114260) tp_is_empty!37611 (not b!5114261) (not b!5114257) (not b!5114272) (not b!5114265) (not setNonEmpty!29962) (not start!539560) (not b!5114268) (not b!5114277) (not b!5114256) (not b!5114271) (not b!5114262) (not b!5114270) (not b!5114273) (not b!5114276) (not b!5114264))
(check-sat)
(get-model)

(declare-fun d!1652868 () Bool)

(declare-fun lt!2106903 () Int)

(assert (=> d!1652868 (>= lt!2106903 0)))

(declare-fun e!3189680 () Int)

(assert (=> d!1652868 (= lt!2106903 e!3189680)))

(declare-fun c!878736 () Bool)

(assert (=> d!1652868 (= c!878736 ((_ is Nil!59111) testedP!265))))

(assert (=> d!1652868 (= (size!39475 testedP!265) lt!2106903)))

(declare-fun b!5114282 () Bool)

(assert (=> b!5114282 (= e!3189680 0)))

(declare-fun b!5114283 () Bool)

(assert (=> b!5114283 (= e!3189680 (+ 1 (size!39475 (t!372240 testedP!265))))))

(assert (= (and d!1652868 c!878736) b!5114282))

(assert (= (and d!1652868 (not c!878736)) b!5114283))

(declare-fun m!6172866 () Bool)

(assert (=> b!5114283 m!6172866))

(assert (=> b!5114262 d!1652868))

(declare-fun d!1652870 () Bool)

(declare-fun lt!2106904 () Int)

(assert (=> d!1652870 (>= lt!2106904 0)))

(declare-fun e!3189681 () Int)

(assert (=> d!1652870 (= lt!2106904 e!3189681)))

(declare-fun c!878737 () Bool)

(assert (=> d!1652870 (= c!878737 ((_ is Nil!59111) knownP!20))))

(assert (=> d!1652870 (= (size!39475 knownP!20) lt!2106904)))

(declare-fun b!5114284 () Bool)

(assert (=> b!5114284 (= e!3189681 0)))

(declare-fun b!5114285 () Bool)

(assert (=> b!5114285 (= e!3189681 (+ 1 (size!39475 (t!372240 knownP!20))))))

(assert (= (and d!1652870 c!878737) b!5114284))

(assert (= (and d!1652870 (not c!878737)) b!5114285))

(declare-fun m!6172868 () Bool)

(assert (=> b!5114285 m!6172868))

(assert (=> b!5114262 d!1652870))

(declare-fun bs!1192280 () Bool)

(declare-fun b!5114406 () Bool)

(declare-fun d!1652872 () Bool)

(assert (= bs!1192280 (and b!5114406 d!1652872)))

(declare-fun lambda!250738 () Int)

(declare-fun lambda!250737 () Int)

(assert (=> bs!1192280 (not (= lambda!250738 lambda!250737))))

(declare-fun bs!1192281 () Bool)

(declare-fun b!5114407 () Bool)

(assert (= bs!1192281 (and b!5114407 d!1652872)))

(declare-fun lambda!250739 () Int)

(assert (=> bs!1192281 (not (= lambda!250739 lambda!250737))))

(declare-fun bs!1192282 () Bool)

(assert (= bs!1192282 (and b!5114407 b!5114406)))

(assert (=> bs!1192282 (= lambda!250739 lambda!250738)))

(declare-fun bm!356479 () Bool)

(declare-datatypes ((List!59238 0))(
  ( (Nil!59114) (Cons!59114 (h!65562 Context!7106) (t!372245 List!59238)) )
))
(declare-fun call!356484 () List!59238)

(declare-fun toList!8242 ((InoxSet Context!7106)) List!59238)

(assert (=> bm!356479 (= call!356484 (toList!8242 z!4463))))

(declare-fun e!3189756 () Unit!150229)

(declare-fun Unit!150233 () Unit!150229)

(assert (=> b!5114407 (= e!3189756 Unit!150233)))

(declare-fun lt!2106995 () List!59238)

(assert (=> b!5114407 (= lt!2106995 call!356484)))

(declare-fun lt!2106989 () Unit!150229)

(declare-fun lemmaForallThenNotExists!299 (List!59238 Int) Unit!150229)

(assert (=> b!5114407 (= lt!2106989 (lemmaForallThenNotExists!299 lt!2106995 lambda!250737))))

(declare-fun call!356485 () Bool)

(assert (=> b!5114407 (not call!356485)))

(declare-fun lt!2106990 () Unit!150229)

(assert (=> b!5114407 (= lt!2106990 lt!2106989)))

(declare-fun Unit!150234 () Unit!150229)

(assert (=> b!5114406 (= e!3189756 Unit!150234)))

(declare-fun lt!2106993 () List!59238)

(assert (=> b!5114406 (= lt!2106993 call!356484)))

(declare-fun lt!2106991 () Unit!150229)

(declare-fun lemmaNotForallThenExists!316 (List!59238 Int) Unit!150229)

(assert (=> b!5114406 (= lt!2106991 (lemmaNotForallThenExists!316 lt!2106993 lambda!250737))))

(assert (=> b!5114406 call!356485))

(declare-fun lt!2106992 () Unit!150229)

(assert (=> b!5114406 (= lt!2106992 lt!2106991)))

(declare-fun lt!2106994 () Bool)

(declare-datatypes ((Option!14676 0))(
  ( (None!14675) (Some!14675 (v!50688 List!59235)) )
))
(declare-fun isEmpty!31892 (Option!14676) Bool)

(declare-fun getLanguageWitness!793 ((InoxSet Context!7106)) Option!14676)

(assert (=> d!1652872 (= lt!2106994 (isEmpty!31892 (getLanguageWitness!793 z!4463)))))

(declare-fun forall!13567 ((InoxSet Context!7106) Int) Bool)

(assert (=> d!1652872 (= lt!2106994 (forall!13567 z!4463 lambda!250737))))

(declare-fun lt!2106996 () Unit!150229)

(assert (=> d!1652872 (= lt!2106996 e!3189756)))

(declare-fun c!878791 () Bool)

(assert (=> d!1652872 (= c!878791 (not (forall!13567 z!4463 lambda!250737)))))

(assert (=> d!1652872 (= (lostCauseZipper!1055 z!4463) lt!2106994)))

(declare-fun bm!356480 () Bool)

(declare-fun exists!1453 (List!59238 Int) Bool)

(assert (=> bm!356480 (= call!356485 (exists!1453 (ite c!878791 lt!2106993 lt!2106995) (ite c!878791 lambda!250738 lambda!250739)))))

(assert (= (and d!1652872 c!878791) b!5114406))

(assert (= (and d!1652872 (not c!878791)) b!5114407))

(assert (= (or b!5114406 b!5114407) bm!356479))

(assert (= (or b!5114406 b!5114407) bm!356480))

(declare-fun m!6173092 () Bool)

(assert (=> d!1652872 m!6173092))

(assert (=> d!1652872 m!6173092))

(declare-fun m!6173094 () Bool)

(assert (=> d!1652872 m!6173094))

(declare-fun m!6173096 () Bool)

(assert (=> d!1652872 m!6173096))

(assert (=> d!1652872 m!6173096))

(declare-fun m!6173098 () Bool)

(assert (=> b!5114406 m!6173098))

(declare-fun m!6173100 () Bool)

(assert (=> bm!356480 m!6173100))

(declare-fun m!6173102 () Bool)

(assert (=> bm!356479 m!6173102))

(declare-fun m!6173104 () Bool)

(assert (=> b!5114407 m!6173104))

(assert (=> b!5114271 d!1652872))

(declare-fun d!1652956 () Bool)

(declare-fun lambda!250742 () Int)

(declare-fun forall!13568 (List!59236 Int) Bool)

(assert (=> d!1652956 (= (inv!78603 setElem!29962) (forall!13568 (exprs!4053 setElem!29962) lambda!250742))))

(declare-fun bs!1192283 () Bool)

(assert (= bs!1192283 d!1652956))

(declare-fun m!6173110 () Bool)

(assert (=> bs!1192283 m!6173110))

(assert (=> setNonEmpty!29961 d!1652956))

(declare-fun d!1652958 () Bool)

(declare-fun e!3189781 () Bool)

(assert (=> d!1652958 e!3189781))

(declare-fun res!2177171 () Bool)

(assert (=> d!1652958 (=> res!2177171 e!3189781)))

(declare-fun lt!2107002 () Bool)

(assert (=> d!1652958 (= res!2177171 (not lt!2107002))))

(declare-fun e!3189779 () Bool)

(assert (=> d!1652958 (= lt!2107002 e!3189779)))

(declare-fun res!2177169 () Bool)

(assert (=> d!1652958 (=> res!2177169 e!3189779)))

(assert (=> d!1652958 (= res!2177169 ((_ is Nil!59111) knownP!20))))

(assert (=> d!1652958 (= (isPrefix!5574 knownP!20 input!5745) lt!2107002)))

(declare-fun b!5114442 () Bool)

(declare-fun res!2177170 () Bool)

(declare-fun e!3189780 () Bool)

(assert (=> b!5114442 (=> (not res!2177170) (not e!3189780))))

(assert (=> b!5114442 (= res!2177170 (= (head!10897 knownP!20) (head!10897 input!5745)))))

(declare-fun b!5114441 () Bool)

(assert (=> b!5114441 (= e!3189779 e!3189780)))

(declare-fun res!2177172 () Bool)

(assert (=> b!5114441 (=> (not res!2177172) (not e!3189780))))

(assert (=> b!5114441 (= res!2177172 (not ((_ is Nil!59111) input!5745)))))

(declare-fun b!5114443 () Bool)

(assert (=> b!5114443 (= e!3189780 (isPrefix!5574 (tail!10038 knownP!20) (tail!10038 input!5745)))))

(declare-fun b!5114444 () Bool)

(assert (=> b!5114444 (= e!3189781 (>= (size!39475 input!5745) (size!39475 knownP!20)))))

(assert (= (and d!1652958 (not res!2177169)) b!5114441))

(assert (= (and b!5114441 res!2177172) b!5114442))

(assert (= (and b!5114442 res!2177170) b!5114443))

(assert (= (and d!1652958 (not res!2177171)) b!5114444))

(declare-fun m!6173112 () Bool)

(assert (=> b!5114442 m!6173112))

(declare-fun m!6173114 () Bool)

(assert (=> b!5114442 m!6173114))

(declare-fun m!6173116 () Bool)

(assert (=> b!5114443 m!6173116))

(declare-fun m!6173118 () Bool)

(assert (=> b!5114443 m!6173118))

(assert (=> b!5114443 m!6173116))

(assert (=> b!5114443 m!6173118))

(declare-fun m!6173120 () Bool)

(assert (=> b!5114443 m!6173120))

(assert (=> b!5114444 m!6172826))

(assert (=> b!5114444 m!6172832))

(assert (=> b!5114270 d!1652958))

(declare-fun d!1652960 () Bool)

(assert (=> d!1652960 (= (head!10897 lt!2106886) (h!65559 lt!2106886))))

(assert (=> b!5114274 d!1652960))

(declare-fun d!1652962 () Bool)

(assert (=> d!1652962 (= lt!2106890 lt!2106893)))

(declare-fun lt!2107005 () Unit!150229)

(declare-fun choose!37539 (List!59235 List!59235 List!59235 List!59235 List!59235) Unit!150229)

(assert (=> d!1652962 (= lt!2107005 (choose!37539 testedP!265 lt!2106890 testedP!265 lt!2106893 input!5745))))

(assert (=> d!1652962 (isPrefix!5574 testedP!265 input!5745)))

(assert (=> d!1652962 (= (lemmaSamePrefixThenSameSuffix!2620 testedP!265 lt!2106890 testedP!265 lt!2106893 input!5745) lt!2107005)))

(declare-fun bs!1192284 () Bool)

(assert (= bs!1192284 d!1652962))

(declare-fun m!6173122 () Bool)

(assert (=> bs!1192284 m!6173122))

(assert (=> bs!1192284 m!6172838))

(assert (=> b!5114274 d!1652962))

(declare-fun d!1652964 () Bool)

(declare-fun c!878796 () Bool)

(assert (=> d!1652964 (= c!878796 ((_ is Cons!59111) testedP!265))))

(declare-fun e!3189784 () (InoxSet Context!7106))

(assert (=> d!1652964 (= (derivationZipper!68 baseZ!46 testedP!265) e!3189784)))

(declare-fun b!5114449 () Bool)

(assert (=> b!5114449 (= e!3189784 (derivationZipper!68 (derivationStepZipper!804 baseZ!46 (h!65559 testedP!265)) (t!372240 testedP!265)))))

(declare-fun b!5114450 () Bool)

(assert (=> b!5114450 (= e!3189784 baseZ!46)))

(assert (= (and d!1652964 c!878796) b!5114449))

(assert (= (and d!1652964 (not c!878796)) b!5114450))

(declare-fun m!6173124 () Bool)

(assert (=> b!5114449 m!6173124))

(assert (=> b!5114449 m!6173124))

(declare-fun m!6173126 () Bool)

(assert (=> b!5114449 m!6173126))

(assert (=> b!5114263 d!1652964))

(declare-fun bs!1192285 () Bool)

(declare-fun d!1652966 () Bool)

(assert (= bs!1192285 (and d!1652966 d!1652956)))

(declare-fun lambda!250743 () Int)

(assert (=> bs!1192285 (= lambda!250743 lambda!250742)))

(assert (=> d!1652966 (= (inv!78603 setElem!29961) (forall!13568 (exprs!4053 setElem!29961) lambda!250743))))

(declare-fun bs!1192286 () Bool)

(assert (= bs!1192286 d!1652966))

(declare-fun m!6173128 () Bool)

(assert (=> bs!1192286 m!6173128))

(assert (=> setNonEmpty!29962 d!1652966))

(declare-fun d!1652968 () Bool)

(declare-fun c!878797 () Bool)

(assert (=> d!1652968 (= c!878797 ((_ is Cons!59111) lt!2106894))))

(declare-fun e!3189785 () (InoxSet Context!7106))

(assert (=> d!1652968 (= (derivationZipper!68 baseZ!46 lt!2106894) e!3189785)))

(declare-fun b!5114451 () Bool)

(assert (=> b!5114451 (= e!3189785 (derivationZipper!68 (derivationStepZipper!804 baseZ!46 (h!65559 lt!2106894)) (t!372240 lt!2106894)))))

(declare-fun b!5114452 () Bool)

(assert (=> b!5114452 (= e!3189785 baseZ!46)))

(assert (= (and d!1652968 c!878797) b!5114451))

(assert (= (and d!1652968 (not c!878797)) b!5114452))

(declare-fun m!6173130 () Bool)

(assert (=> b!5114451 m!6173130))

(assert (=> b!5114451 m!6173130))

(declare-fun m!6173132 () Bool)

(assert (=> b!5114451 m!6173132))

(assert (=> b!5114276 d!1652968))

(declare-fun d!1652970 () Bool)

(assert (=> d!1652970 (= (derivationZipper!68 baseZ!46 (++!12994 testedP!265 (Cons!59111 lt!2106892 Nil!59111))) (derivationStepZipper!804 z!4463 lt!2106892))))

(declare-fun lt!2107008 () Unit!150229)

(declare-fun choose!37542 ((InoxSet Context!7106) (InoxSet Context!7106) List!59235 C!28604) Unit!150229)

(assert (=> d!1652970 (= lt!2107008 (choose!37542 baseZ!46 z!4463 testedP!265 lt!2106892))))

(assert (=> d!1652970 (= (derivationZipper!68 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1652970 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!29 baseZ!46 z!4463 testedP!265 lt!2106892) lt!2107008)))

(declare-fun bs!1192287 () Bool)

(assert (= bs!1192287 d!1652970))

(declare-fun m!6173134 () Bool)

(assert (=> bs!1192287 m!6173134))

(assert (=> bs!1192287 m!6173134))

(declare-fun m!6173136 () Bool)

(assert (=> bs!1192287 m!6173136))

(assert (=> bs!1192287 m!6172786))

(declare-fun m!6173138 () Bool)

(assert (=> bs!1192287 m!6173138))

(assert (=> bs!1192287 m!6172796))

(assert (=> b!5114276 d!1652970))

(declare-fun d!1652972 () Bool)

(declare-fun e!3189788 () Bool)

(assert (=> d!1652972 e!3189788))

(declare-fun res!2177175 () Bool)

(assert (=> d!1652972 (=> res!2177175 e!3189788)))

(declare-fun lt!2107009 () Bool)

(assert (=> d!1652972 (= res!2177175 (not lt!2107009))))

(declare-fun e!3189786 () Bool)

(assert (=> d!1652972 (= lt!2107009 e!3189786)))

(declare-fun res!2177173 () Bool)

(assert (=> d!1652972 (=> res!2177173 e!3189786)))

(assert (=> d!1652972 (= res!2177173 ((_ is Nil!59111) lt!2106894))))

(assert (=> d!1652972 (= (isPrefix!5574 lt!2106894 knownP!20) lt!2107009)))

(declare-fun b!5114454 () Bool)

(declare-fun res!2177174 () Bool)

(declare-fun e!3189787 () Bool)

(assert (=> b!5114454 (=> (not res!2177174) (not e!3189787))))

(assert (=> b!5114454 (= res!2177174 (= (head!10897 lt!2106894) (head!10897 knownP!20)))))

(declare-fun b!5114453 () Bool)

(assert (=> b!5114453 (= e!3189786 e!3189787)))

(declare-fun res!2177176 () Bool)

(assert (=> b!5114453 (=> (not res!2177176) (not e!3189787))))

(assert (=> b!5114453 (= res!2177176 (not ((_ is Nil!59111) knownP!20)))))

(declare-fun b!5114455 () Bool)

(assert (=> b!5114455 (= e!3189787 (isPrefix!5574 (tail!10038 lt!2106894) (tail!10038 knownP!20)))))

(declare-fun b!5114456 () Bool)

(assert (=> b!5114456 (= e!3189788 (>= (size!39475 knownP!20) (size!39475 lt!2106894)))))

(assert (= (and d!1652972 (not res!2177173)) b!5114453))

(assert (= (and b!5114453 res!2177176) b!5114454))

(assert (= (and b!5114454 res!2177174) b!5114455))

(assert (= (and d!1652972 (not res!2177175)) b!5114456))

(declare-fun m!6173140 () Bool)

(assert (=> b!5114454 m!6173140))

(assert (=> b!5114454 m!6173112))

(declare-fun m!6173142 () Bool)

(assert (=> b!5114455 m!6173142))

(assert (=> b!5114455 m!6173116))

(assert (=> b!5114455 m!6173142))

(assert (=> b!5114455 m!6173116))

(declare-fun m!6173144 () Bool)

(assert (=> b!5114455 m!6173144))

(assert (=> b!5114456 m!6172832))

(declare-fun m!6173146 () Bool)

(assert (=> b!5114456 m!6173146))

(assert (=> b!5114276 d!1652972))

(declare-fun d!1652974 () Bool)

(assert (=> d!1652974 (isPrefix!5574 (++!12994 testedP!265 (Cons!59111 (head!10897 (getSuffix!3248 input!5745 testedP!265)) Nil!59111)) input!5745)))

(declare-fun lt!2107012 () Unit!150229)

(declare-fun choose!37543 (List!59235 List!59235) Unit!150229)

(assert (=> d!1652974 (= lt!2107012 (choose!37543 testedP!265 input!5745))))

(assert (=> d!1652974 (isPrefix!5574 testedP!265 input!5745)))

(assert (=> d!1652974 (= (lemmaAddHeadSuffixToPrefixStillPrefix!964 testedP!265 input!5745) lt!2107012)))

(declare-fun bs!1192288 () Bool)

(assert (= bs!1192288 d!1652974))

(declare-fun m!6173148 () Bool)

(assert (=> bs!1192288 m!6173148))

(declare-fun m!6173150 () Bool)

(assert (=> bs!1192288 m!6173150))

(assert (=> bs!1192288 m!6172838))

(declare-fun m!6173152 () Bool)

(assert (=> bs!1192288 m!6173152))

(assert (=> bs!1192288 m!6172806))

(declare-fun m!6173154 () Bool)

(assert (=> bs!1192288 m!6173154))

(assert (=> bs!1192288 m!6173148))

(assert (=> bs!1192288 m!6172806))

(assert (=> b!5114276 d!1652974))

(declare-fun d!1652976 () Bool)

(assert (=> d!1652976 (isPrefix!5574 lt!2106894 knownP!20)))

(declare-fun lt!2107015 () Unit!150229)

(declare-fun choose!37545 (List!59235 List!59235 List!59235) Unit!150229)

(assert (=> d!1652976 (= lt!2107015 (choose!37545 knownP!20 lt!2106894 input!5745))))

(assert (=> d!1652976 (isPrefix!5574 knownP!20 input!5745)))

(assert (=> d!1652976 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!711 knownP!20 lt!2106894 input!5745) lt!2107015)))

(declare-fun bs!1192289 () Bool)

(assert (= bs!1192289 d!1652976))

(assert (=> bs!1192289 m!6172814))

(declare-fun m!6173156 () Bool)

(assert (=> bs!1192289 m!6173156))

(assert (=> bs!1192289 m!6172788))

(assert (=> b!5114276 d!1652976))

(declare-fun d!1652978 () Bool)

(declare-fun lt!2107018 () List!59235)

(assert (=> d!1652978 (= (++!12994 lt!2106894 lt!2107018) knownP!20)))

(declare-fun e!3189791 () List!59235)

(assert (=> d!1652978 (= lt!2107018 e!3189791)))

(declare-fun c!878801 () Bool)

(assert (=> d!1652978 (= c!878801 ((_ is Cons!59111) lt!2106894))))

(assert (=> d!1652978 (>= (size!39475 knownP!20) (size!39475 lt!2106894))))

(assert (=> d!1652978 (= (getSuffix!3248 knownP!20 lt!2106894) lt!2107018)))

(declare-fun b!5114461 () Bool)

(assert (=> b!5114461 (= e!3189791 (getSuffix!3248 (tail!10038 knownP!20) (t!372240 lt!2106894)))))

(declare-fun b!5114462 () Bool)

(assert (=> b!5114462 (= e!3189791 knownP!20)))

(assert (= (and d!1652978 c!878801) b!5114461))

(assert (= (and d!1652978 (not c!878801)) b!5114462))

(declare-fun m!6173158 () Bool)

(assert (=> d!1652978 m!6173158))

(assert (=> d!1652978 m!6172832))

(assert (=> d!1652978 m!6173146))

(assert (=> b!5114461 m!6173116))

(assert (=> b!5114461 m!6173116))

(declare-fun m!6173160 () Bool)

(assert (=> b!5114461 m!6173160))

(assert (=> b!5114276 d!1652978))

(declare-fun lt!2107021 () List!59235)

(declare-fun e!3189797 () Bool)

(declare-fun b!5114474 () Bool)

(assert (=> b!5114474 (= e!3189797 (or (not (= lt!2106884 Nil!59111)) (= lt!2107021 knownP!20)))))

(declare-fun b!5114472 () Bool)

(declare-fun e!3189796 () List!59235)

(assert (=> b!5114472 (= e!3189796 (Cons!59111 (h!65559 knownP!20) (++!12994 (t!372240 knownP!20) lt!2106884)))))

(declare-fun b!5114473 () Bool)

(declare-fun res!2177181 () Bool)

(assert (=> b!5114473 (=> (not res!2177181) (not e!3189797))))

(assert (=> b!5114473 (= res!2177181 (= (size!39475 lt!2107021) (+ (size!39475 knownP!20) (size!39475 lt!2106884))))))

(declare-fun b!5114471 () Bool)

(assert (=> b!5114471 (= e!3189796 lt!2106884)))

(declare-fun d!1652980 () Bool)

(assert (=> d!1652980 e!3189797))

(declare-fun res!2177182 () Bool)

(assert (=> d!1652980 (=> (not res!2177182) (not e!3189797))))

(declare-fun content!10509 (List!59235) (InoxSet C!28604))

(assert (=> d!1652980 (= res!2177182 (= (content!10509 lt!2107021) ((_ map or) (content!10509 knownP!20) (content!10509 lt!2106884))))))

(assert (=> d!1652980 (= lt!2107021 e!3189796)))

(declare-fun c!878804 () Bool)

(assert (=> d!1652980 (= c!878804 ((_ is Nil!59111) knownP!20))))

(assert (=> d!1652980 (= (++!12994 knownP!20 lt!2106884) lt!2107021)))

(assert (= (and d!1652980 c!878804) b!5114471))

(assert (= (and d!1652980 (not c!878804)) b!5114472))

(assert (= (and d!1652980 res!2177182) b!5114473))

(assert (= (and b!5114473 res!2177181) b!5114474))

(declare-fun m!6173162 () Bool)

(assert (=> b!5114472 m!6173162))

(declare-fun m!6173164 () Bool)

(assert (=> b!5114473 m!6173164))

(assert (=> b!5114473 m!6172832))

(declare-fun m!6173166 () Bool)

(assert (=> b!5114473 m!6173166))

(declare-fun m!6173168 () Bool)

(assert (=> d!1652980 m!6173168))

(declare-fun m!6173170 () Bool)

(assert (=> d!1652980 m!6173170))

(declare-fun m!6173172 () Bool)

(assert (=> d!1652980 m!6173172))

(assert (=> b!5114276 d!1652980))

(declare-fun d!1652982 () Bool)

(declare-fun e!3189800 () Bool)

(assert (=> d!1652982 e!3189800))

(declare-fun res!2177185 () Bool)

(assert (=> d!1652982 (=> res!2177185 e!3189800)))

(declare-fun lt!2107022 () Bool)

(assert (=> d!1652982 (= res!2177185 (not lt!2107022))))

(declare-fun e!3189798 () Bool)

(assert (=> d!1652982 (= lt!2107022 e!3189798)))

(declare-fun res!2177183 () Bool)

(assert (=> d!1652982 (=> res!2177183 e!3189798)))

(assert (=> d!1652982 (= res!2177183 ((_ is Nil!59111) lt!2106894))))

(assert (=> d!1652982 (= (isPrefix!5574 lt!2106894 input!5745) lt!2107022)))

(declare-fun b!5114476 () Bool)

(declare-fun res!2177184 () Bool)

(declare-fun e!3189799 () Bool)

(assert (=> b!5114476 (=> (not res!2177184) (not e!3189799))))

(assert (=> b!5114476 (= res!2177184 (= (head!10897 lt!2106894) (head!10897 input!5745)))))

(declare-fun b!5114475 () Bool)

(assert (=> b!5114475 (= e!3189798 e!3189799)))

(declare-fun res!2177186 () Bool)

(assert (=> b!5114475 (=> (not res!2177186) (not e!3189799))))

(assert (=> b!5114475 (= res!2177186 (not ((_ is Nil!59111) input!5745)))))

(declare-fun b!5114477 () Bool)

(assert (=> b!5114477 (= e!3189799 (isPrefix!5574 (tail!10038 lt!2106894) (tail!10038 input!5745)))))

(declare-fun b!5114478 () Bool)

(assert (=> b!5114478 (= e!3189800 (>= (size!39475 input!5745) (size!39475 lt!2106894)))))

(assert (= (and d!1652982 (not res!2177183)) b!5114475))

(assert (= (and b!5114475 res!2177186) b!5114476))

(assert (= (and b!5114476 res!2177184) b!5114477))

(assert (= (and d!1652982 (not res!2177185)) b!5114478))

(assert (=> b!5114476 m!6173140))

(assert (=> b!5114476 m!6173114))

(assert (=> b!5114477 m!6173142))

(assert (=> b!5114477 m!6173118))

(assert (=> b!5114477 m!6173142))

(assert (=> b!5114477 m!6173118))

(declare-fun m!6173174 () Bool)

(assert (=> b!5114477 m!6173174))

(assert (=> b!5114478 m!6172826))

(assert (=> b!5114478 m!6173146))

(assert (=> b!5114276 d!1652982))

(declare-fun d!1652984 () Bool)

(declare-fun lt!2107023 () List!59235)

(assert (=> d!1652984 (= (++!12994 testedP!265 lt!2107023) input!5745)))

(declare-fun e!3189801 () List!59235)

(assert (=> d!1652984 (= lt!2107023 e!3189801)))

(declare-fun c!878805 () Bool)

(assert (=> d!1652984 (= c!878805 ((_ is Cons!59111) testedP!265))))

(assert (=> d!1652984 (>= (size!39475 input!5745) (size!39475 testedP!265))))

(assert (=> d!1652984 (= (getSuffix!3248 input!5745 testedP!265) lt!2107023)))

(declare-fun b!5114479 () Bool)

(assert (=> b!5114479 (= e!3189801 (getSuffix!3248 (tail!10038 input!5745) (t!372240 testedP!265)))))

(declare-fun b!5114480 () Bool)

(assert (=> b!5114480 (= e!3189801 input!5745)))

(assert (= (and d!1652984 c!878805) b!5114479))

(assert (= (and d!1652984 (not c!878805)) b!5114480))

(declare-fun m!6173176 () Bool)

(assert (=> d!1652984 m!6173176))

(assert (=> d!1652984 m!6172826))

(assert (=> d!1652984 m!6172830))

(assert (=> b!5114479 m!6173118))

(assert (=> b!5114479 m!6173118))

(declare-fun m!6173178 () Bool)

(assert (=> b!5114479 m!6173178))

(assert (=> b!5114276 d!1652984))

(declare-fun d!1652986 () Bool)

(assert (=> d!1652986 true))

(declare-fun lambda!250746 () Int)

(declare-fun flatMap!340 ((InoxSet Context!7106) Int) (InoxSet Context!7106))

(assert (=> d!1652986 (= (derivationStepZipper!804 z!4463 lt!2106892) (flatMap!340 z!4463 lambda!250746))))

(declare-fun bs!1192290 () Bool)

(assert (= bs!1192290 d!1652986))

(declare-fun m!6173180 () Bool)

(assert (=> bs!1192290 m!6173180))

(assert (=> b!5114276 d!1652986))

(declare-fun d!1652988 () Bool)

(assert (=> d!1652988 (= (head!10897 lt!2106893) (h!65559 lt!2106893))))

(assert (=> b!5114276 d!1652988))

(declare-fun e!3189803 () Bool)

(declare-fun b!5114486 () Bool)

(declare-fun lt!2107024 () List!59235)

(assert (=> b!5114486 (= e!3189803 (or (not (= lt!2106880 Nil!59111)) (= lt!2107024 testedP!265)))))

(declare-fun b!5114484 () Bool)

(declare-fun e!3189802 () List!59235)

(assert (=> b!5114484 (= e!3189802 (Cons!59111 (h!65559 testedP!265) (++!12994 (t!372240 testedP!265) lt!2106880)))))

(declare-fun b!5114485 () Bool)

(declare-fun res!2177187 () Bool)

(assert (=> b!5114485 (=> (not res!2177187) (not e!3189803))))

(assert (=> b!5114485 (= res!2177187 (= (size!39475 lt!2107024) (+ (size!39475 testedP!265) (size!39475 lt!2106880))))))

(declare-fun b!5114483 () Bool)

(assert (=> b!5114483 (= e!3189802 lt!2106880)))

(declare-fun d!1652990 () Bool)

(assert (=> d!1652990 e!3189803))

(declare-fun res!2177188 () Bool)

(assert (=> d!1652990 (=> (not res!2177188) (not e!3189803))))

(assert (=> d!1652990 (= res!2177188 (= (content!10509 lt!2107024) ((_ map or) (content!10509 testedP!265) (content!10509 lt!2106880))))))

(assert (=> d!1652990 (= lt!2107024 e!3189802)))

(declare-fun c!878808 () Bool)

(assert (=> d!1652990 (= c!878808 ((_ is Nil!59111) testedP!265))))

(assert (=> d!1652990 (= (++!12994 testedP!265 lt!2106880) lt!2107024)))

(assert (= (and d!1652990 c!878808) b!5114483))

(assert (= (and d!1652990 (not c!878808)) b!5114484))

(assert (= (and d!1652990 res!2177188) b!5114485))

(assert (= (and b!5114485 res!2177187) b!5114486))

(declare-fun m!6173182 () Bool)

(assert (=> b!5114484 m!6173182))

(declare-fun m!6173184 () Bool)

(assert (=> b!5114485 m!6173184))

(assert (=> b!5114485 m!6172830))

(declare-fun m!6173186 () Bool)

(assert (=> b!5114485 m!6173186))

(declare-fun m!6173188 () Bool)

(assert (=> d!1652990 m!6173188))

(declare-fun m!6173190 () Bool)

(assert (=> d!1652990 m!6173190))

(declare-fun m!6173192 () Bool)

(assert (=> d!1652990 m!6173192))

(assert (=> b!5114276 d!1652990))

(declare-fun d!1652992 () Bool)

(declare-fun lt!2107025 () List!59235)

(assert (=> d!1652992 (= (++!12994 knownP!20 lt!2107025) input!5745)))

(declare-fun e!3189804 () List!59235)

(assert (=> d!1652992 (= lt!2107025 e!3189804)))

(declare-fun c!878809 () Bool)

(assert (=> d!1652992 (= c!878809 ((_ is Cons!59111) knownP!20))))

(assert (=> d!1652992 (>= (size!39475 input!5745) (size!39475 knownP!20))))

(assert (=> d!1652992 (= (getSuffix!3248 input!5745 knownP!20) lt!2107025)))

(declare-fun b!5114487 () Bool)

(assert (=> b!5114487 (= e!3189804 (getSuffix!3248 (tail!10038 input!5745) (t!372240 knownP!20)))))

(declare-fun b!5114488 () Bool)

(assert (=> b!5114488 (= e!3189804 input!5745)))

(assert (= (and d!1652992 c!878809) b!5114487))

(assert (= (and d!1652992 (not c!878809)) b!5114488))

(declare-fun m!6173194 () Bool)

(assert (=> d!1652992 m!6173194))

(assert (=> d!1652992 m!6172826))

(assert (=> d!1652992 m!6172832))

(assert (=> b!5114487 m!6173118))

(assert (=> b!5114487 m!6173118))

(declare-fun m!6173196 () Bool)

(assert (=> b!5114487 m!6173196))

(assert (=> b!5114276 d!1652992))

(declare-fun b!5114492 () Bool)

(declare-fun lt!2107026 () List!59235)

(declare-fun e!3189806 () Bool)

(assert (=> b!5114492 (= e!3189806 (or (not (= (++!12994 lt!2106880 lt!2106889) Nil!59111)) (= lt!2107026 testedP!265)))))

(declare-fun b!5114490 () Bool)

(declare-fun e!3189805 () List!59235)

(assert (=> b!5114490 (= e!3189805 (Cons!59111 (h!65559 testedP!265) (++!12994 (t!372240 testedP!265) (++!12994 lt!2106880 lt!2106889))))))

(declare-fun b!5114491 () Bool)

(declare-fun res!2177189 () Bool)

(assert (=> b!5114491 (=> (not res!2177189) (not e!3189806))))

(assert (=> b!5114491 (= res!2177189 (= (size!39475 lt!2107026) (+ (size!39475 testedP!265) (size!39475 (++!12994 lt!2106880 lt!2106889)))))))

(declare-fun b!5114489 () Bool)

(assert (=> b!5114489 (= e!3189805 (++!12994 lt!2106880 lt!2106889))))

(declare-fun d!1652994 () Bool)

(assert (=> d!1652994 e!3189806))

(declare-fun res!2177190 () Bool)

(assert (=> d!1652994 (=> (not res!2177190) (not e!3189806))))

(assert (=> d!1652994 (= res!2177190 (= (content!10509 lt!2107026) ((_ map or) (content!10509 testedP!265) (content!10509 (++!12994 lt!2106880 lt!2106889)))))))

(assert (=> d!1652994 (= lt!2107026 e!3189805)))

(declare-fun c!878810 () Bool)

(assert (=> d!1652994 (= c!878810 ((_ is Nil!59111) testedP!265))))

(assert (=> d!1652994 (= (++!12994 testedP!265 (++!12994 lt!2106880 lt!2106889)) lt!2107026)))

(assert (= (and d!1652994 c!878810) b!5114489))

(assert (= (and d!1652994 (not c!878810)) b!5114490))

(assert (= (and d!1652994 res!2177190) b!5114491))

(assert (= (and b!5114491 res!2177189) b!5114492))

(assert (=> b!5114490 m!6172820))

(declare-fun m!6173198 () Bool)

(assert (=> b!5114490 m!6173198))

(declare-fun m!6173200 () Bool)

(assert (=> b!5114491 m!6173200))

(assert (=> b!5114491 m!6172830))

(assert (=> b!5114491 m!6172820))

(declare-fun m!6173202 () Bool)

(assert (=> b!5114491 m!6173202))

(declare-fun m!6173204 () Bool)

(assert (=> d!1652994 m!6173204))

(assert (=> d!1652994 m!6173190))

(assert (=> d!1652994 m!6172820))

(declare-fun m!6173206 () Bool)

(assert (=> d!1652994 m!6173206))

(assert (=> b!5114257 d!1652994))

(declare-fun b!5114496 () Bool)

(declare-fun lt!2107027 () List!59235)

(declare-fun e!3189808 () Bool)

(assert (=> b!5114496 (= e!3189808 (or (not (= lt!2106889 Nil!59111)) (= lt!2107027 lt!2106880)))))

(declare-fun b!5114494 () Bool)

(declare-fun e!3189807 () List!59235)

(assert (=> b!5114494 (= e!3189807 (Cons!59111 (h!65559 lt!2106880) (++!12994 (t!372240 lt!2106880) lt!2106889)))))

(declare-fun b!5114495 () Bool)

(declare-fun res!2177191 () Bool)

(assert (=> b!5114495 (=> (not res!2177191) (not e!3189808))))

(assert (=> b!5114495 (= res!2177191 (= (size!39475 lt!2107027) (+ (size!39475 lt!2106880) (size!39475 lt!2106889))))))

(declare-fun b!5114493 () Bool)

(assert (=> b!5114493 (= e!3189807 lt!2106889)))

(declare-fun d!1652996 () Bool)

(assert (=> d!1652996 e!3189808))

(declare-fun res!2177192 () Bool)

(assert (=> d!1652996 (=> (not res!2177192) (not e!3189808))))

(assert (=> d!1652996 (= res!2177192 (= (content!10509 lt!2107027) ((_ map or) (content!10509 lt!2106880) (content!10509 lt!2106889))))))

(assert (=> d!1652996 (= lt!2107027 e!3189807)))

(declare-fun c!878811 () Bool)

(assert (=> d!1652996 (= c!878811 ((_ is Nil!59111) lt!2106880))))

(assert (=> d!1652996 (= (++!12994 lt!2106880 lt!2106889) lt!2107027)))

(assert (= (and d!1652996 c!878811) b!5114493))

(assert (= (and d!1652996 (not c!878811)) b!5114494))

(assert (= (and d!1652996 res!2177192) b!5114495))

(assert (= (and b!5114495 res!2177191) b!5114496))

(declare-fun m!6173208 () Bool)

(assert (=> b!5114494 m!6173208))

(declare-fun m!6173210 () Bool)

(assert (=> b!5114495 m!6173210))

(assert (=> b!5114495 m!6173186))

(declare-fun m!6173212 () Bool)

(assert (=> b!5114495 m!6173212))

(declare-fun m!6173214 () Bool)

(assert (=> d!1652996 m!6173214))

(assert (=> d!1652996 m!6173192))

(declare-fun m!6173216 () Bool)

(assert (=> d!1652996 m!6173216))

(assert (=> b!5114257 d!1652996))

(declare-fun d!1652998 () Bool)

(assert (=> d!1652998 (= (++!12994 (++!12994 testedP!265 lt!2106880) lt!2106889) (++!12994 testedP!265 (++!12994 lt!2106880 lt!2106889)))))

(declare-fun lt!2107030 () Unit!150229)

(declare-fun choose!37546 (List!59235 List!59235 List!59235) Unit!150229)

(assert (=> d!1652998 (= lt!2107030 (choose!37546 testedP!265 lt!2106880 lt!2106889))))

(assert (=> d!1652998 (= (lemmaConcatAssociativity!2752 testedP!265 lt!2106880 lt!2106889) lt!2107030)))

(declare-fun bs!1192291 () Bool)

(assert (= bs!1192291 d!1652998))

(assert (=> bs!1192291 m!6172792))

(declare-fun m!6173218 () Bool)

(assert (=> bs!1192291 m!6173218))

(assert (=> bs!1192291 m!6172820))

(assert (=> bs!1192291 m!6172822))

(assert (=> bs!1192291 m!6172820))

(declare-fun m!6173220 () Bool)

(assert (=> bs!1192291 m!6173220))

(assert (=> bs!1192291 m!6172792))

(assert (=> b!5114257 d!1652998))

(declare-fun e!3189810 () Bool)

(declare-fun lt!2107031 () List!59235)

(declare-fun b!5114500 () Bool)

(assert (=> b!5114500 (= e!3189810 (or (not (= lt!2106884 Nil!59111)) (= lt!2107031 lt!2106887)))))

(declare-fun b!5114498 () Bool)

(declare-fun e!3189809 () List!59235)

(assert (=> b!5114498 (= e!3189809 (Cons!59111 (h!65559 lt!2106887) (++!12994 (t!372240 lt!2106887) lt!2106884)))))

(declare-fun b!5114499 () Bool)

(declare-fun res!2177193 () Bool)

(assert (=> b!5114499 (=> (not res!2177193) (not e!3189810))))

(assert (=> b!5114499 (= res!2177193 (= (size!39475 lt!2107031) (+ (size!39475 lt!2106887) (size!39475 lt!2106884))))))

(declare-fun b!5114497 () Bool)

(assert (=> b!5114497 (= e!3189809 lt!2106884)))

(declare-fun d!1653000 () Bool)

(assert (=> d!1653000 e!3189810))

(declare-fun res!2177194 () Bool)

(assert (=> d!1653000 (=> (not res!2177194) (not e!3189810))))

(assert (=> d!1653000 (= res!2177194 (= (content!10509 lt!2107031) ((_ map or) (content!10509 lt!2106887) (content!10509 lt!2106884))))))

(assert (=> d!1653000 (= lt!2107031 e!3189809)))

(declare-fun c!878812 () Bool)

(assert (=> d!1653000 (= c!878812 ((_ is Nil!59111) lt!2106887))))

(assert (=> d!1653000 (= (++!12994 lt!2106887 lt!2106884) lt!2107031)))

(assert (= (and d!1653000 c!878812) b!5114497))

(assert (= (and d!1653000 (not c!878812)) b!5114498))

(assert (= (and d!1653000 res!2177194) b!5114499))

(assert (= (and b!5114499 res!2177193) b!5114500))

(declare-fun m!6173222 () Bool)

(assert (=> b!5114498 m!6173222))

(declare-fun m!6173224 () Bool)

(assert (=> b!5114499 m!6173224))

(declare-fun m!6173226 () Bool)

(assert (=> b!5114499 m!6173226))

(assert (=> b!5114499 m!6173166))

(declare-fun m!6173228 () Bool)

(assert (=> d!1653000 m!6173228))

(declare-fun m!6173230 () Bool)

(assert (=> d!1653000 m!6173230))

(assert (=> d!1653000 m!6173172))

(assert (=> b!5114265 d!1653000))

(declare-fun lt!2107032 () List!59235)

(declare-fun e!3189812 () Bool)

(declare-fun b!5114504 () Bool)

(assert (=> b!5114504 (= e!3189812 (or (not (= lt!2106886 Nil!59111)) (= lt!2107032 testedP!265)))))

(declare-fun b!5114502 () Bool)

(declare-fun e!3189811 () List!59235)

(assert (=> b!5114502 (= e!3189811 (Cons!59111 (h!65559 testedP!265) (++!12994 (t!372240 testedP!265) lt!2106886)))))

(declare-fun b!5114503 () Bool)

(declare-fun res!2177195 () Bool)

(assert (=> b!5114503 (=> (not res!2177195) (not e!3189812))))

(assert (=> b!5114503 (= res!2177195 (= (size!39475 lt!2107032) (+ (size!39475 testedP!265) (size!39475 lt!2106886))))))

(declare-fun b!5114501 () Bool)

(assert (=> b!5114501 (= e!3189811 lt!2106886)))

(declare-fun d!1653002 () Bool)

(assert (=> d!1653002 e!3189812))

(declare-fun res!2177196 () Bool)

(assert (=> d!1653002 (=> (not res!2177196) (not e!3189812))))

(assert (=> d!1653002 (= res!2177196 (= (content!10509 lt!2107032) ((_ map or) (content!10509 testedP!265) (content!10509 lt!2106886))))))

(assert (=> d!1653002 (= lt!2107032 e!3189811)))

(declare-fun c!878813 () Bool)

(assert (=> d!1653002 (= c!878813 ((_ is Nil!59111) testedP!265))))

(assert (=> d!1653002 (= (++!12994 testedP!265 lt!2106886) lt!2107032)))

(assert (= (and d!1653002 c!878813) b!5114501))

(assert (= (and d!1653002 (not c!878813)) b!5114502))

(assert (= (and d!1653002 res!2177196) b!5114503))

(assert (= (and b!5114503 res!2177195) b!5114504))

(declare-fun m!6173232 () Bool)

(assert (=> b!5114502 m!6173232))

(declare-fun m!6173234 () Bool)

(assert (=> b!5114503 m!6173234))

(assert (=> b!5114503 m!6172830))

(declare-fun m!6173236 () Bool)

(assert (=> b!5114503 m!6173236))

(declare-fun m!6173238 () Bool)

(assert (=> d!1653002 m!6173238))

(assert (=> d!1653002 m!6173190))

(declare-fun m!6173240 () Bool)

(assert (=> d!1653002 m!6173240))

(assert (=> b!5114265 d!1653002))

(declare-fun lt!2107033 () List!59235)

(declare-fun b!5114508 () Bool)

(declare-fun e!3189814 () Bool)

(assert (=> b!5114508 (= e!3189814 (or (not (= lt!2106889 Nil!59111)) (= lt!2107033 lt!2106894)))))

(declare-fun b!5114506 () Bool)

(declare-fun e!3189813 () List!59235)

(assert (=> b!5114506 (= e!3189813 (Cons!59111 (h!65559 lt!2106894) (++!12994 (t!372240 lt!2106894) lt!2106889)))))

(declare-fun b!5114507 () Bool)

(declare-fun res!2177197 () Bool)

(assert (=> b!5114507 (=> (not res!2177197) (not e!3189814))))

(assert (=> b!5114507 (= res!2177197 (= (size!39475 lt!2107033) (+ (size!39475 lt!2106894) (size!39475 lt!2106889))))))

(declare-fun b!5114505 () Bool)

(assert (=> b!5114505 (= e!3189813 lt!2106889)))

(declare-fun d!1653004 () Bool)

(assert (=> d!1653004 e!3189814))

(declare-fun res!2177198 () Bool)

(assert (=> d!1653004 (=> (not res!2177198) (not e!3189814))))

(assert (=> d!1653004 (= res!2177198 (= (content!10509 lt!2107033) ((_ map or) (content!10509 lt!2106894) (content!10509 lt!2106889))))))

(assert (=> d!1653004 (= lt!2107033 e!3189813)))

(declare-fun c!878814 () Bool)

(assert (=> d!1653004 (= c!878814 ((_ is Nil!59111) lt!2106894))))

(assert (=> d!1653004 (= (++!12994 lt!2106894 lt!2106889) lt!2107033)))

(assert (= (and d!1653004 c!878814) b!5114505))

(assert (= (and d!1653004 (not c!878814)) b!5114506))

(assert (= (and d!1653004 res!2177198) b!5114507))

(assert (= (and b!5114507 res!2177197) b!5114508))

(declare-fun m!6173242 () Bool)

(assert (=> b!5114506 m!6173242))

(declare-fun m!6173244 () Bool)

(assert (=> b!5114507 m!6173244))

(assert (=> b!5114507 m!6173146))

(assert (=> b!5114507 m!6173212))

(declare-fun m!6173246 () Bool)

(assert (=> d!1653004 m!6173246))

(declare-fun m!6173248 () Bool)

(assert (=> d!1653004 m!6173248))

(assert (=> d!1653004 m!6173216))

(assert (=> b!5114275 d!1653004))

(declare-fun d!1653006 () Bool)

(declare-fun lt!2107034 () Int)

(assert (=> d!1653006 (>= lt!2107034 0)))

(declare-fun e!3189815 () Int)

(assert (=> d!1653006 (= lt!2107034 e!3189815)))

(declare-fun c!878815 () Bool)

(assert (=> d!1653006 (= c!878815 ((_ is Nil!59111) input!5745))))

(assert (=> d!1653006 (= (size!39475 input!5745) lt!2107034)))

(declare-fun b!5114509 () Bool)

(assert (=> b!5114509 (= e!3189815 0)))

(declare-fun b!5114510 () Bool)

(assert (=> b!5114510 (= e!3189815 (+ 1 (size!39475 (t!372240 input!5745))))))

(assert (= (and d!1653006 c!878815) b!5114509))

(assert (= (and d!1653006 (not c!878815)) b!5114510))

(declare-fun m!6173250 () Bool)

(assert (=> b!5114510 m!6173250))

(assert (=> b!5114264 d!1653006))

(declare-fun lt!2107035 () List!59235)

(declare-fun b!5114514 () Bool)

(declare-fun e!3189817 () Bool)

(assert (=> b!5114514 (= e!3189817 (or (not (= lt!2106893 Nil!59111)) (= lt!2107035 testedP!265)))))

(declare-fun b!5114512 () Bool)

(declare-fun e!3189816 () List!59235)

(assert (=> b!5114512 (= e!3189816 (Cons!59111 (h!65559 testedP!265) (++!12994 (t!372240 testedP!265) lt!2106893)))))

(declare-fun b!5114513 () Bool)

(declare-fun res!2177199 () Bool)

(assert (=> b!5114513 (=> (not res!2177199) (not e!3189817))))

(assert (=> b!5114513 (= res!2177199 (= (size!39475 lt!2107035) (+ (size!39475 testedP!265) (size!39475 lt!2106893))))))

(declare-fun b!5114511 () Bool)

(assert (=> b!5114511 (= e!3189816 lt!2106893)))

(declare-fun d!1653008 () Bool)

(assert (=> d!1653008 e!3189817))

(declare-fun res!2177200 () Bool)

(assert (=> d!1653008 (=> (not res!2177200) (not e!3189817))))

(assert (=> d!1653008 (= res!2177200 (= (content!10509 lt!2107035) ((_ map or) (content!10509 testedP!265) (content!10509 lt!2106893))))))

(assert (=> d!1653008 (= lt!2107035 e!3189816)))

(declare-fun c!878816 () Bool)

(assert (=> d!1653008 (= c!878816 ((_ is Nil!59111) testedP!265))))

(assert (=> d!1653008 (= (++!12994 testedP!265 lt!2106893) lt!2107035)))

(assert (= (and d!1653008 c!878816) b!5114511))

(assert (= (and d!1653008 (not c!878816)) b!5114512))

(assert (= (and d!1653008 res!2177200) b!5114513))

(assert (= (and b!5114513 res!2177199) b!5114514))

(declare-fun m!6173252 () Bool)

(assert (=> b!5114512 m!6173252))

(declare-fun m!6173254 () Bool)

(assert (=> b!5114513 m!6173254))

(assert (=> b!5114513 m!6172830))

(declare-fun m!6173256 () Bool)

(assert (=> b!5114513 m!6173256))

(declare-fun m!6173258 () Bool)

(assert (=> d!1653008 m!6173258))

(assert (=> d!1653008 m!6173190))

(declare-fun m!6173260 () Bool)

(assert (=> d!1653008 m!6173260))

(assert (=> b!5114277 d!1653008))

(declare-fun d!1653010 () Bool)

(declare-fun c!878819 () Bool)

(declare-fun isEmpty!31893 (List!59235) Bool)

(assert (=> d!1653010 (= c!878819 (isEmpty!31893 knownP!20))))

(declare-fun e!3189820 () Bool)

(assert (=> d!1653010 (= (matchZipper!837 baseZ!46 knownP!20) e!3189820)))

(declare-fun b!5114519 () Bool)

(declare-fun nullableZipper!1006 ((InoxSet Context!7106)) Bool)

(assert (=> b!5114519 (= e!3189820 (nullableZipper!1006 baseZ!46))))

(declare-fun b!5114520 () Bool)

(assert (=> b!5114520 (= e!3189820 (matchZipper!837 (derivationStepZipper!804 baseZ!46 (head!10897 knownP!20)) (tail!10038 knownP!20)))))

(assert (= (and d!1653010 c!878819) b!5114519))

(assert (= (and d!1653010 (not c!878819)) b!5114520))

(declare-fun m!6173262 () Bool)

(assert (=> d!1653010 m!6173262))

(declare-fun m!6173264 () Bool)

(assert (=> b!5114519 m!6173264))

(assert (=> b!5114520 m!6173112))

(assert (=> b!5114520 m!6173112))

(declare-fun m!6173266 () Bool)

(assert (=> b!5114520 m!6173266))

(assert (=> b!5114520 m!6173116))

(assert (=> b!5114520 m!6173266))

(assert (=> b!5114520 m!6173116))

(declare-fun m!6173268 () Bool)

(assert (=> b!5114520 m!6173268))

(assert (=> b!5114268 d!1653010))

(declare-fun d!1653012 () Bool)

(declare-fun c!878820 () Bool)

(assert (=> d!1653012 (= c!878820 (isEmpty!31893 lt!2106886))))

(declare-fun e!3189821 () Bool)

(assert (=> d!1653012 (= (matchZipper!837 z!4463 lt!2106886) e!3189821)))

(declare-fun b!5114521 () Bool)

(assert (=> b!5114521 (= e!3189821 (nullableZipper!1006 z!4463))))

(declare-fun b!5114522 () Bool)

(assert (=> b!5114522 (= e!3189821 (matchZipper!837 (derivationStepZipper!804 z!4463 (head!10897 lt!2106886)) (tail!10038 lt!2106886)))))

(assert (= (and d!1653012 c!878820) b!5114521))

(assert (= (and d!1653012 (not c!878820)) b!5114522))

(declare-fun m!6173270 () Bool)

(assert (=> d!1653012 m!6173270))

(declare-fun m!6173272 () Bool)

(assert (=> b!5114521 m!6173272))

(assert (=> b!5114522 m!6172834))

(assert (=> b!5114522 m!6172834))

(declare-fun m!6173274 () Bool)

(assert (=> b!5114522 m!6173274))

(assert (=> b!5114522 m!6172816))

(assert (=> b!5114522 m!6173274))

(assert (=> b!5114522 m!6172816))

(declare-fun m!6173276 () Bool)

(assert (=> b!5114522 m!6173276))

(assert (=> b!5114259 d!1653012))

(declare-fun d!1653014 () Bool)

(declare-fun lt!2107036 () List!59235)

(assert (=> d!1653014 (= (++!12994 testedP!265 lt!2107036) knownP!20)))

(declare-fun e!3189822 () List!59235)

(assert (=> d!1653014 (= lt!2107036 e!3189822)))

(declare-fun c!878821 () Bool)

(assert (=> d!1653014 (= c!878821 ((_ is Cons!59111) testedP!265))))

(assert (=> d!1653014 (>= (size!39475 knownP!20) (size!39475 testedP!265))))

(assert (=> d!1653014 (= (getSuffix!3248 knownP!20 testedP!265) lt!2107036)))

(declare-fun b!5114523 () Bool)

(assert (=> b!5114523 (= e!3189822 (getSuffix!3248 (tail!10038 knownP!20) (t!372240 testedP!265)))))

(declare-fun b!5114524 () Bool)

(assert (=> b!5114524 (= e!3189822 knownP!20)))

(assert (= (and d!1653014 c!878821) b!5114523))

(assert (= (and d!1653014 (not c!878821)) b!5114524))

(declare-fun m!6173278 () Bool)

(assert (=> d!1653014 m!6173278))

(assert (=> d!1653014 m!6172832))

(assert (=> d!1653014 m!6172830))

(assert (=> b!5114523 m!6173116))

(assert (=> b!5114523 m!6173116))

(declare-fun m!6173280 () Bool)

(assert (=> b!5114523 m!6173280))

(assert (=> b!5114259 d!1653014))

(declare-fun d!1653016 () Bool)

(declare-fun e!3189825 () Bool)

(assert (=> d!1653016 e!3189825))

(declare-fun res!2177203 () Bool)

(assert (=> d!1653016 (=> res!2177203 e!3189825)))

(declare-fun lt!2107037 () Bool)

(assert (=> d!1653016 (= res!2177203 (not lt!2107037))))

(declare-fun e!3189823 () Bool)

(assert (=> d!1653016 (= lt!2107037 e!3189823)))

(declare-fun res!2177201 () Bool)

(assert (=> d!1653016 (=> res!2177201 e!3189823)))

(assert (=> d!1653016 (= res!2177201 ((_ is Nil!59111) testedP!265))))

(assert (=> d!1653016 (= (isPrefix!5574 testedP!265 knownP!20) lt!2107037)))

(declare-fun b!5114526 () Bool)

(declare-fun res!2177202 () Bool)

(declare-fun e!3189824 () Bool)

(assert (=> b!5114526 (=> (not res!2177202) (not e!3189824))))

(assert (=> b!5114526 (= res!2177202 (= (head!10897 testedP!265) (head!10897 knownP!20)))))

(declare-fun b!5114525 () Bool)

(assert (=> b!5114525 (= e!3189823 e!3189824)))

(declare-fun res!2177204 () Bool)

(assert (=> b!5114525 (=> (not res!2177204) (not e!3189824))))

(assert (=> b!5114525 (= res!2177204 (not ((_ is Nil!59111) knownP!20)))))

(declare-fun b!5114527 () Bool)

(assert (=> b!5114527 (= e!3189824 (isPrefix!5574 (tail!10038 testedP!265) (tail!10038 knownP!20)))))

(declare-fun b!5114528 () Bool)

(assert (=> b!5114528 (= e!3189825 (>= (size!39475 knownP!20) (size!39475 testedP!265)))))

(assert (= (and d!1653016 (not res!2177201)) b!5114525))

(assert (= (and b!5114525 res!2177204) b!5114526))

(assert (= (and b!5114526 res!2177202) b!5114527))

(assert (= (and d!1653016 (not res!2177203)) b!5114528))

(declare-fun m!6173282 () Bool)

(assert (=> b!5114526 m!6173282))

(assert (=> b!5114526 m!6173112))

(declare-fun m!6173284 () Bool)

(assert (=> b!5114527 m!6173284))

(assert (=> b!5114527 m!6173116))

(assert (=> b!5114527 m!6173284))

(assert (=> b!5114527 m!6173116))

(declare-fun m!6173286 () Bool)

(assert (=> b!5114527 m!6173286))

(assert (=> b!5114528 m!6172832))

(assert (=> b!5114528 m!6172830))

(assert (=> b!5114259 d!1653016))

(declare-fun d!1653018 () Bool)

(assert (=> d!1653018 (isPrefix!5574 testedP!265 knownP!20)))

(declare-fun lt!2107038 () Unit!150229)

(assert (=> d!1653018 (= lt!2107038 (choose!37545 knownP!20 testedP!265 input!5745))))

(assert (=> d!1653018 (isPrefix!5574 knownP!20 input!5745)))

(assert (=> d!1653018 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!711 knownP!20 testedP!265 input!5745) lt!2107038)))

(declare-fun bs!1192292 () Bool)

(assert (= bs!1192292 d!1653018))

(assert (=> bs!1192292 m!6172848))

(declare-fun m!6173288 () Bool)

(assert (=> bs!1192292 m!6173288))

(assert (=> bs!1192292 m!6172788))

(assert (=> b!5114259 d!1653018))

(declare-fun d!1653020 () Bool)

(declare-fun e!3189828 () Bool)

(assert (=> d!1653020 e!3189828))

(declare-fun res!2177207 () Bool)

(assert (=> d!1653020 (=> res!2177207 e!3189828)))

(declare-fun lt!2107039 () Bool)

(assert (=> d!1653020 (= res!2177207 (not lt!2107039))))

(declare-fun e!3189826 () Bool)

(assert (=> d!1653020 (= lt!2107039 e!3189826)))

(declare-fun res!2177205 () Bool)

(assert (=> d!1653020 (=> res!2177205 e!3189826)))

(assert (=> d!1653020 (= res!2177205 ((_ is Nil!59111) testedP!265))))

(assert (=> d!1653020 (= (isPrefix!5574 testedP!265 input!5745) lt!2107039)))

(declare-fun b!5114530 () Bool)

(declare-fun res!2177206 () Bool)

(declare-fun e!3189827 () Bool)

(assert (=> b!5114530 (=> (not res!2177206) (not e!3189827))))

(assert (=> b!5114530 (= res!2177206 (= (head!10897 testedP!265) (head!10897 input!5745)))))

(declare-fun b!5114529 () Bool)

(assert (=> b!5114529 (= e!3189826 e!3189827)))

(declare-fun res!2177208 () Bool)

(assert (=> b!5114529 (=> (not res!2177208) (not e!3189827))))

(assert (=> b!5114529 (= res!2177208 (not ((_ is Nil!59111) input!5745)))))

(declare-fun b!5114531 () Bool)

(assert (=> b!5114531 (= e!3189827 (isPrefix!5574 (tail!10038 testedP!265) (tail!10038 input!5745)))))

(declare-fun b!5114532 () Bool)

(assert (=> b!5114532 (= e!3189828 (>= (size!39475 input!5745) (size!39475 testedP!265)))))

(assert (= (and d!1653020 (not res!2177205)) b!5114529))

(assert (= (and b!5114529 res!2177208) b!5114530))

(assert (= (and b!5114530 res!2177206) b!5114531))

(assert (= (and d!1653020 (not res!2177207)) b!5114532))

(assert (=> b!5114530 m!6173282))

(assert (=> b!5114530 m!6173114))

(assert (=> b!5114531 m!6173284))

(assert (=> b!5114531 m!6173118))

(assert (=> b!5114531 m!6173284))

(assert (=> b!5114531 m!6173118))

(declare-fun m!6173290 () Bool)

(assert (=> b!5114531 m!6173290))

(assert (=> b!5114532 m!6172826))

(assert (=> b!5114532 m!6172830))

(assert (=> start!539560 d!1653020))

(declare-fun d!1653022 () Bool)

(assert (=> d!1653022 (= ($colon$colon!1115 (tail!10038 lt!2106886) lt!2106892) (Cons!59111 lt!2106892 (tail!10038 lt!2106886)))))

(assert (=> b!5114267 d!1653022))

(declare-fun d!1653024 () Bool)

(assert (=> d!1653024 (= (tail!10038 lt!2106886) (t!372240 lt!2106886))))

(assert (=> b!5114267 d!1653024))

(declare-fun b!5114536 () Bool)

(declare-fun e!3189830 () Bool)

(declare-fun lt!2107040 () List!59235)

(assert (=> b!5114536 (= e!3189830 (or (not (= lt!2106890 Nil!59111)) (= lt!2107040 testedP!265)))))

(declare-fun b!5114534 () Bool)

(declare-fun e!3189829 () List!59235)

(assert (=> b!5114534 (= e!3189829 (Cons!59111 (h!65559 testedP!265) (++!12994 (t!372240 testedP!265) lt!2106890)))))

(declare-fun b!5114535 () Bool)

(declare-fun res!2177209 () Bool)

(assert (=> b!5114535 (=> (not res!2177209) (not e!3189830))))

(assert (=> b!5114535 (= res!2177209 (= (size!39475 lt!2107040) (+ (size!39475 testedP!265) (size!39475 lt!2106890))))))

(declare-fun b!5114533 () Bool)

(assert (=> b!5114533 (= e!3189829 lt!2106890)))

(declare-fun d!1653026 () Bool)

(assert (=> d!1653026 e!3189830))

(declare-fun res!2177210 () Bool)

(assert (=> d!1653026 (=> (not res!2177210) (not e!3189830))))

(assert (=> d!1653026 (= res!2177210 (= (content!10509 lt!2107040) ((_ map or) (content!10509 testedP!265) (content!10509 lt!2106890))))))

(assert (=> d!1653026 (= lt!2107040 e!3189829)))

(declare-fun c!878822 () Bool)

(assert (=> d!1653026 (= c!878822 ((_ is Nil!59111) testedP!265))))

(assert (=> d!1653026 (= (++!12994 testedP!265 lt!2106890) lt!2107040)))

(assert (= (and d!1653026 c!878822) b!5114533))

(assert (= (and d!1653026 (not c!878822)) b!5114534))

(assert (= (and d!1653026 res!2177210) b!5114535))

(assert (= (and b!5114535 res!2177209) b!5114536))

(declare-fun m!6173292 () Bool)

(assert (=> b!5114534 m!6173292))

(declare-fun m!6173294 () Bool)

(assert (=> b!5114535 m!6173294))

(assert (=> b!5114535 m!6172830))

(declare-fun m!6173296 () Bool)

(assert (=> b!5114535 m!6173296))

(declare-fun m!6173298 () Bool)

(assert (=> d!1653026 m!6173298))

(assert (=> d!1653026 m!6173190))

(declare-fun m!6173300 () Bool)

(assert (=> d!1653026 m!6173300))

(assert (=> b!5114258 d!1653026))

(declare-fun e!3189832 () Bool)

(declare-fun lt!2107041 () List!59235)

(declare-fun b!5114540 () Bool)

(assert (=> b!5114540 (= e!3189832 (or (not (= lt!2106884 Nil!59111)) (= lt!2107041 lt!2106886)))))

(declare-fun b!5114538 () Bool)

(declare-fun e!3189831 () List!59235)

(assert (=> b!5114538 (= e!3189831 (Cons!59111 (h!65559 lt!2106886) (++!12994 (t!372240 lt!2106886) lt!2106884)))))

(declare-fun b!5114539 () Bool)

(declare-fun res!2177211 () Bool)

(assert (=> b!5114539 (=> (not res!2177211) (not e!3189832))))

(assert (=> b!5114539 (= res!2177211 (= (size!39475 lt!2107041) (+ (size!39475 lt!2106886) (size!39475 lt!2106884))))))

(declare-fun b!5114537 () Bool)

(assert (=> b!5114537 (= e!3189831 lt!2106884)))

(declare-fun d!1653028 () Bool)

(assert (=> d!1653028 e!3189832))

(declare-fun res!2177212 () Bool)

(assert (=> d!1653028 (=> (not res!2177212) (not e!3189832))))

(assert (=> d!1653028 (= res!2177212 (= (content!10509 lt!2107041) ((_ map or) (content!10509 lt!2106886) (content!10509 lt!2106884))))))

(assert (=> d!1653028 (= lt!2107041 e!3189831)))

(declare-fun c!878823 () Bool)

(assert (=> d!1653028 (= c!878823 ((_ is Nil!59111) lt!2106886))))

(assert (=> d!1653028 (= (++!12994 lt!2106886 lt!2106884) lt!2107041)))

(assert (= (and d!1653028 c!878823) b!5114537))

(assert (= (and d!1653028 (not c!878823)) b!5114538))

(assert (= (and d!1653028 res!2177212) b!5114539))

(assert (= (and b!5114539 res!2177211) b!5114540))

(declare-fun m!6173302 () Bool)

(assert (=> b!5114538 m!6173302))

(declare-fun m!6173304 () Bool)

(assert (=> b!5114539 m!6173304))

(assert (=> b!5114539 m!6173236))

(assert (=> b!5114539 m!6173166))

(declare-fun m!6173306 () Bool)

(assert (=> d!1653028 m!6173306))

(assert (=> d!1653028 m!6173240))

(assert (=> d!1653028 m!6173172))

(assert (=> b!5114258 d!1653028))

(declare-fun d!1653030 () Bool)

(assert (=> d!1653030 (= (++!12994 (++!12994 testedP!265 lt!2106886) lt!2106884) (++!12994 testedP!265 (++!12994 lt!2106886 lt!2106884)))))

(declare-fun lt!2107042 () Unit!150229)

(assert (=> d!1653030 (= lt!2107042 (choose!37546 testedP!265 lt!2106886 lt!2106884))))

(assert (=> d!1653030 (= (lemmaConcatAssociativity!2752 testedP!265 lt!2106886 lt!2106884) lt!2107042)))

(declare-fun bs!1192293 () Bool)

(assert (= bs!1192293 d!1653030))

(assert (=> bs!1192293 m!6172842))

(declare-fun m!6173308 () Bool)

(assert (=> bs!1192293 m!6173308))

(assert (=> bs!1192293 m!6172858))

(declare-fun m!6173310 () Bool)

(assert (=> bs!1192293 m!6173310))

(assert (=> bs!1192293 m!6172858))

(declare-fun m!6173312 () Bool)

(assert (=> bs!1192293 m!6173312))

(assert (=> bs!1192293 m!6172842))

(assert (=> b!5114258 d!1653030))

(declare-fun condSetEmpty!29969 () Bool)

(assert (=> setNonEmpty!29961 (= condSetEmpty!29969 (= setRest!29961 ((as const (Array Context!7106 Bool)) false)))))

(declare-fun setRes!29969 () Bool)

(assert (=> setNonEmpty!29961 (= tp!1426887 setRes!29969)))

(declare-fun setIsEmpty!29969 () Bool)

(assert (=> setIsEmpty!29969 setRes!29969))

(declare-fun setNonEmpty!29969 () Bool)

(declare-fun e!3189835 () Bool)

(declare-fun tp!1426920 () Bool)

(declare-fun setElem!29969 () Context!7106)

(assert (=> setNonEmpty!29969 (= setRes!29969 (and tp!1426920 (inv!78603 setElem!29969) e!3189835))))

(declare-fun setRest!29969 () (InoxSet Context!7106))

(assert (=> setNonEmpty!29969 (= setRest!29961 ((_ map or) (store ((as const (Array Context!7106 Bool)) false) setElem!29969 true) setRest!29969))))

(declare-fun b!5114545 () Bool)

(declare-fun tp!1426919 () Bool)

(assert (=> b!5114545 (= e!3189835 tp!1426919)))

(assert (= (and setNonEmpty!29961 condSetEmpty!29969) setIsEmpty!29969))

(assert (= (and setNonEmpty!29961 (not condSetEmpty!29969)) setNonEmpty!29969))

(assert (= setNonEmpty!29969 b!5114545))

(declare-fun m!6173314 () Bool)

(assert (=> setNonEmpty!29969 m!6173314))

(declare-fun b!5114550 () Bool)

(declare-fun e!3189838 () Bool)

(declare-fun tp!1426925 () Bool)

(declare-fun tp!1426926 () Bool)

(assert (=> b!5114550 (= e!3189838 (and tp!1426925 tp!1426926))))

(assert (=> b!5114256 (= tp!1426891 e!3189838)))

(assert (= (and b!5114256 ((_ is Cons!59112) (exprs!4053 setElem!29961))) b!5114550))

(declare-fun b!5114555 () Bool)

(declare-fun e!3189841 () Bool)

(declare-fun tp!1426929 () Bool)

(assert (=> b!5114555 (= e!3189841 (and tp_is_empty!37611 tp!1426929))))

(assert (=> b!5114261 (= tp!1426890 e!3189841)))

(assert (= (and b!5114261 ((_ is Cons!59111) (t!372240 input!5745))) b!5114555))

(declare-fun b!5114556 () Bool)

(declare-fun e!3189842 () Bool)

(declare-fun tp!1426930 () Bool)

(declare-fun tp!1426931 () Bool)

(assert (=> b!5114556 (= e!3189842 (and tp!1426930 tp!1426931))))

(assert (=> b!5114260 (= tp!1426892 e!3189842)))

(assert (= (and b!5114260 ((_ is Cons!59112) (exprs!4053 setElem!29962))) b!5114556))

(declare-fun b!5114557 () Bool)

(declare-fun e!3189843 () Bool)

(declare-fun tp!1426932 () Bool)

(assert (=> b!5114557 (= e!3189843 (and tp_is_empty!37611 tp!1426932))))

(assert (=> b!5114273 (= tp!1426888 e!3189843)))

(assert (= (and b!5114273 ((_ is Cons!59111) (t!372240 testedP!265))) b!5114557))

(declare-fun condSetEmpty!29970 () Bool)

(assert (=> setNonEmpty!29962 (= condSetEmpty!29970 (= setRest!29962 ((as const (Array Context!7106 Bool)) false)))))

(declare-fun setRes!29970 () Bool)

(assert (=> setNonEmpty!29962 (= tp!1426893 setRes!29970)))

(declare-fun setIsEmpty!29970 () Bool)

(assert (=> setIsEmpty!29970 setRes!29970))

(declare-fun e!3189844 () Bool)

(declare-fun setElem!29970 () Context!7106)

(declare-fun setNonEmpty!29970 () Bool)

(declare-fun tp!1426934 () Bool)

(assert (=> setNonEmpty!29970 (= setRes!29970 (and tp!1426934 (inv!78603 setElem!29970) e!3189844))))

(declare-fun setRest!29970 () (InoxSet Context!7106))

(assert (=> setNonEmpty!29970 (= setRest!29962 ((_ map or) (store ((as const (Array Context!7106 Bool)) false) setElem!29970 true) setRest!29970))))

(declare-fun b!5114558 () Bool)

(declare-fun tp!1426933 () Bool)

(assert (=> b!5114558 (= e!3189844 tp!1426933)))

(assert (= (and setNonEmpty!29962 condSetEmpty!29970) setIsEmpty!29970))

(assert (= (and setNonEmpty!29962 (not condSetEmpty!29970)) setNonEmpty!29970))

(assert (= setNonEmpty!29970 b!5114558))

(declare-fun m!6173316 () Bool)

(assert (=> setNonEmpty!29970 m!6173316))

(declare-fun b!5114559 () Bool)

(declare-fun e!3189845 () Bool)

(declare-fun tp!1426935 () Bool)

(assert (=> b!5114559 (= e!3189845 (and tp_is_empty!37611 tp!1426935))))

(assert (=> b!5114272 (= tp!1426889 e!3189845)))

(assert (= (and b!5114272 ((_ is Cons!59111) (t!372240 knownP!20))) b!5114559))

(check-sat (not b!5114557) (not bm!356479) (not d!1652872) (not b!5114487) (not b!5114479) (not b!5114510) (not b!5114406) (not d!1653012) (not b!5114527) (not d!1653004) (not d!1652956) (not b!5114449) (not d!1653000) (not d!1652994) (not b!5114531) (not b!5114285) (not b!5114558) (not d!1652970) (not b!5114513) (not b!5114528) (not bm!356480) (not d!1653018) (not b!5114454) (not d!1652986) (not b!5114499) (not b!5114444) (not d!1652980) (not b!5114535) (not b!5114443) (not d!1652966) (not b!5114545) (not d!1652984) (not d!1652996) (not d!1653010) (not b!5114484) (not b!5114550) (not b!5114538) (not d!1653008) (not d!1652998) (not d!1652976) (not b!5114461) (not b!5114534) (not setNonEmpty!29969) (not b!5114519) (not b!5114477) (not b!5114490) (not b!5114521) (not b!5114473) (not b!5114506) (not b!5114442) (not d!1653026) (not b!5114494) (not b!5114491) (not b!5114559) (not b!5114495) (not b!5114532) (not b!5114523) (not b!5114512) (not b!5114526) (not b!5114451) (not b!5114502) (not b!5114485) (not b!5114498) (not b!5114456) (not b!5114520) (not d!1652990) (not b!5114530) (not d!1653028) (not b!5114522) (not b!5114556) (not b!5114455) (not b!5114507) (not b!5114283) (not d!1652992) (not d!1653030) (not d!1653014) (not b!5114555) (not b!5114478) (not d!1652962) (not d!1653002) (not b!5114539) (not b!5114472) tp_is_empty!37611 (not b!5114407) (not b!5114476) (not setNonEmpty!29970) (not d!1652974) (not d!1652978) (not b!5114503))
(check-sat)
