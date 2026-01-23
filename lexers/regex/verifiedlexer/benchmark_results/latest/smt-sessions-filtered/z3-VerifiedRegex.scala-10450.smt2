; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539880 () Bool)

(assert start!539880)

(declare-fun b!5116770 () Bool)

(declare-fun e!3191256 () Bool)

(declare-fun tp!1427563 () Bool)

(assert (=> b!5116770 (= e!3191256 tp!1427563)))

(declare-fun b!5116771 () Bool)

(declare-fun e!3191259 () Bool)

(declare-fun e!3191255 () Bool)

(assert (=> b!5116771 (= e!3191259 (not e!3191255))))

(declare-fun res!2178509 () Bool)

(assert (=> b!5116771 (=> res!2178509 e!3191255)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28648 0))(
  ( (C!28649 (val!23976 Int)) )
))
(declare-datatypes ((Regex!14191 0))(
  ( (ElementMatch!14191 (c!879137 C!28648)) (Concat!23036 (regOne!28894 Regex!14191) (regTwo!28894 Regex!14191)) (EmptyExpr!14191) (Star!14191 (reg!14520 Regex!14191)) (EmptyLang!14191) (Union!14191 (regOne!28895 Regex!14191) (regTwo!28895 Regex!14191)) )
))
(declare-datatypes ((List!59289 0))(
  ( (Nil!59165) (Cons!59165 (h!65613 Regex!14191) (t!372300 List!59289)) )
))
(declare-datatypes ((Context!7150 0))(
  ( (Context!7151 (exprs!4075 List!59289)) )
))
(declare-fun z!4463 () (InoxSet Context!7150))

(declare-datatypes ((List!59290 0))(
  ( (Nil!59166) (Cons!59166 (h!65614 C!28648) (t!372301 List!59290)) )
))
(declare-fun testedP!265 () List!59290)

(declare-fun knownP!20 () List!59290)

(declare-fun matchZipper!859 ((InoxSet Context!7150) List!59290) Bool)

(declare-fun getSuffix!3270 (List!59290 List!59290) List!59290)

(assert (=> b!5116771 (= res!2178509 (not (matchZipper!859 z!4463 (getSuffix!3270 knownP!20 testedP!265))))))

(declare-fun isPrefix!5596 (List!59290 List!59290) Bool)

(assert (=> b!5116771 (isPrefix!5596 testedP!265 knownP!20)))

(declare-fun input!5745 () List!59290)

(declare-datatypes ((Unit!150293 0))(
  ( (Unit!150294) )
))
(declare-fun lt!2108812 () Unit!150293)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!733 (List!59290 List!59290 List!59290) Unit!150293)

(assert (=> b!5116771 (= lt!2108812 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!733 knownP!20 testedP!265 input!5745))))

(declare-fun b!5116772 () Bool)

(declare-fun e!3191258 () Bool)

(declare-fun tp_is_empty!37655 () Bool)

(declare-fun tp!1427564 () Bool)

(assert (=> b!5116772 (= e!3191258 (and tp_is_empty!37655 tp!1427564))))

(declare-fun b!5116773 () Bool)

(declare-fun e!3191257 () Bool)

(declare-fun tp!1427561 () Bool)

(assert (=> b!5116773 (= e!3191257 (and tp_is_empty!37655 tp!1427561))))

(declare-fun setIsEmpty!30133 () Bool)

(declare-fun setRes!30134 () Bool)

(assert (=> setIsEmpty!30133 setRes!30134))

(declare-fun b!5116774 () Bool)

(declare-fun e!3191252 () Bool)

(declare-fun tp!1427559 () Bool)

(assert (=> b!5116774 (= e!3191252 (and tp_is_empty!37655 tp!1427559))))

(declare-fun b!5116776 () Bool)

(declare-fun res!2178507 () Bool)

(assert (=> b!5116776 (=> res!2178507 e!3191255)))

(declare-fun baseZ!46 () (InoxSet Context!7150))

(declare-fun derivationZipper!90 ((InoxSet Context!7150) List!59290) (InoxSet Context!7150))

(assert (=> b!5116776 (= res!2178507 (not (= (derivationZipper!90 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5116777 () Bool)

(declare-fun res!2178514 () Bool)

(declare-fun e!3191253 () Bool)

(assert (=> b!5116777 (=> (not res!2178514) (not e!3191253))))

(assert (=> b!5116777 (= res!2178514 (isPrefix!5596 knownP!20 input!5745))))

(declare-fun b!5116778 () Bool)

(declare-fun res!2178512 () Bool)

(assert (=> b!5116778 (=> res!2178512 e!3191255)))

(declare-fun lt!2108806 () Int)

(declare-fun lt!2108807 () Int)

(assert (=> b!5116778 (= res!2178512 (= lt!2108806 lt!2108807))))

(declare-fun b!5116779 () Bool)

(assert (=> b!5116779 (= e!3191253 e!3191259)))

(declare-fun res!2178508 () Bool)

(assert (=> b!5116779 (=> (not res!2178508) (not e!3191259))))

(assert (=> b!5116779 (= res!2178508 (>= lt!2108807 lt!2108806))))

(declare-fun size!39497 (List!59290) Int)

(assert (=> b!5116779 (= lt!2108806 (size!39497 testedP!265))))

(assert (=> b!5116779 (= lt!2108807 (size!39497 knownP!20))))

(declare-fun setRes!30133 () Bool)

(declare-fun e!3191254 () Bool)

(declare-fun setNonEmpty!30133 () Bool)

(declare-fun setElem!30134 () Context!7150)

(declare-fun tp!1427562 () Bool)

(declare-fun inv!78658 (Context!7150) Bool)

(assert (=> setNonEmpty!30133 (= setRes!30133 (and tp!1427562 (inv!78658 setElem!30134) e!3191254))))

(declare-fun setRest!30134 () (InoxSet Context!7150))

(assert (=> setNonEmpty!30133 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7150 Bool)) false) setElem!30134 true) setRest!30134))))

(declare-fun b!5116780 () Bool)

(declare-fun tp!1427565 () Bool)

(assert (=> b!5116780 (= e!3191254 tp!1427565)))

(declare-fun setElem!30133 () Context!7150)

(declare-fun setNonEmpty!30134 () Bool)

(declare-fun tp!1427560 () Bool)

(assert (=> setNonEmpty!30134 (= setRes!30134 (and tp!1427560 (inv!78658 setElem!30133) e!3191256))))

(declare-fun setRest!30133 () (InoxSet Context!7150))

(assert (=> setNonEmpty!30134 (= z!4463 ((_ map or) (store ((as const (Array Context!7150 Bool)) false) setElem!30133 true) setRest!30133))))

(declare-fun setIsEmpty!30134 () Bool)

(assert (=> setIsEmpty!30134 setRes!30133))

(declare-fun b!5116781 () Bool)

(declare-fun res!2178511 () Bool)

(assert (=> b!5116781 (=> res!2178511 e!3191255)))

(declare-fun lostCauseZipper!1077 ((InoxSet Context!7150)) Bool)

(assert (=> b!5116781 (= res!2178511 (lostCauseZipper!1077 z!4463))))

(declare-fun b!5116775 () Bool)

(declare-fun ++!13016 (List!59290 List!59290) List!59290)

(assert (=> b!5116775 (= e!3191255 (= (++!13016 knownP!20 (getSuffix!3270 input!5745 knownP!20)) input!5745))))

(declare-fun lt!2108813 () List!59290)

(declare-fun lt!2108808 () List!59290)

(assert (=> b!5116775 (= lt!2108813 (getSuffix!3270 knownP!20 lt!2108808))))

(assert (=> b!5116775 (isPrefix!5596 lt!2108808 knownP!20)))

(declare-fun lt!2108811 () Unit!150293)

(assert (=> b!5116775 (= lt!2108811 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!733 knownP!20 lt!2108808 input!5745))))

(declare-fun lt!2108809 () C!28648)

(declare-fun derivationStepZipper!826 ((InoxSet Context!7150) C!28648) (InoxSet Context!7150))

(assert (=> b!5116775 (= (derivationZipper!90 baseZ!46 lt!2108808) (derivationStepZipper!826 z!4463 lt!2108809))))

(declare-fun lt!2108810 () Unit!150293)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!47 ((InoxSet Context!7150) (InoxSet Context!7150) List!59290 C!28648) Unit!150293)

(assert (=> b!5116775 (= lt!2108810 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!47 baseZ!46 z!4463 testedP!265 lt!2108809))))

(assert (=> b!5116775 (isPrefix!5596 lt!2108808 input!5745)))

(declare-fun lt!2108814 () Unit!150293)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!982 (List!59290 List!59290) Unit!150293)

(assert (=> b!5116775 (= lt!2108814 (lemmaAddHeadSuffixToPrefixStillPrefix!982 testedP!265 input!5745))))

(assert (=> b!5116775 (= lt!2108808 (++!13016 testedP!265 (Cons!59166 lt!2108809 Nil!59166)))))

(declare-fun head!10919 (List!59290) C!28648)

(assert (=> b!5116775 (= lt!2108809 (head!10919 (getSuffix!3270 input!5745 testedP!265)))))

(declare-fun res!2178506 () Bool)

(assert (=> start!539880 (=> (not res!2178506) (not e!3191253))))

(assert (=> start!539880 (= res!2178506 (isPrefix!5596 testedP!265 input!5745))))

(assert (=> start!539880 e!3191253))

(assert (=> start!539880 e!3191252))

(declare-fun condSetEmpty!30133 () Bool)

(assert (=> start!539880 (= condSetEmpty!30133 (= z!4463 ((as const (Array Context!7150 Bool)) false)))))

(assert (=> start!539880 setRes!30134))

(assert (=> start!539880 e!3191257))

(declare-fun condSetEmpty!30134 () Bool)

(assert (=> start!539880 (= condSetEmpty!30134 (= baseZ!46 ((as const (Array Context!7150 Bool)) false)))))

(assert (=> start!539880 setRes!30133))

(assert (=> start!539880 e!3191258))

(declare-fun b!5116782 () Bool)

(declare-fun res!2178513 () Bool)

(assert (=> b!5116782 (=> (not res!2178513) (not e!3191259))))

(assert (=> b!5116782 (= res!2178513 (matchZipper!859 baseZ!46 knownP!20))))

(declare-fun b!5116783 () Bool)

(declare-fun res!2178510 () Bool)

(assert (=> b!5116783 (=> res!2178510 e!3191255)))

(assert (=> b!5116783 (= res!2178510 (>= lt!2108806 (size!39497 input!5745)))))

(assert (= (and start!539880 res!2178506) b!5116777))

(assert (= (and b!5116777 res!2178514) b!5116779))

(assert (= (and b!5116779 res!2178508) b!5116782))

(assert (= (and b!5116782 res!2178513) b!5116771))

(assert (= (and b!5116771 (not res!2178509)) b!5116776))

(assert (= (and b!5116776 (not res!2178507)) b!5116781))

(assert (= (and b!5116781 (not res!2178511)) b!5116778))

(assert (= (and b!5116778 (not res!2178512)) b!5116783))

(assert (= (and b!5116783 (not res!2178510)) b!5116775))

(get-info :version)

(assert (= (and start!539880 ((_ is Cons!59166) input!5745)) b!5116774))

(assert (= (and start!539880 condSetEmpty!30133) setIsEmpty!30133))

(assert (= (and start!539880 (not condSetEmpty!30133)) setNonEmpty!30134))

(assert (= setNonEmpty!30134 b!5116770))

(assert (= (and start!539880 ((_ is Cons!59166) testedP!265)) b!5116773))

(assert (= (and start!539880 condSetEmpty!30134) setIsEmpty!30134))

(assert (= (and start!539880 (not condSetEmpty!30134)) setNonEmpty!30133))

(assert (= setNonEmpty!30133 b!5116780))

(assert (= (and start!539880 ((_ is Cons!59166) knownP!20)) b!5116772))

(declare-fun m!6176232 () Bool)

(assert (=> b!5116781 m!6176232))

(declare-fun m!6176234 () Bool)

(assert (=> b!5116779 m!6176234))

(declare-fun m!6176236 () Bool)

(assert (=> b!5116779 m!6176236))

(declare-fun m!6176238 () Bool)

(assert (=> b!5116775 m!6176238))

(assert (=> b!5116775 m!6176238))

(declare-fun m!6176240 () Bool)

(assert (=> b!5116775 m!6176240))

(declare-fun m!6176242 () Bool)

(assert (=> b!5116775 m!6176242))

(declare-fun m!6176244 () Bool)

(assert (=> b!5116775 m!6176244))

(declare-fun m!6176246 () Bool)

(assert (=> b!5116775 m!6176246))

(declare-fun m!6176248 () Bool)

(assert (=> b!5116775 m!6176248))

(declare-fun m!6176250 () Bool)

(assert (=> b!5116775 m!6176250))

(declare-fun m!6176252 () Bool)

(assert (=> b!5116775 m!6176252))

(declare-fun m!6176254 () Bool)

(assert (=> b!5116775 m!6176254))

(declare-fun m!6176256 () Bool)

(assert (=> b!5116775 m!6176256))

(assert (=> b!5116775 m!6176244))

(declare-fun m!6176258 () Bool)

(assert (=> b!5116775 m!6176258))

(declare-fun m!6176260 () Bool)

(assert (=> b!5116775 m!6176260))

(declare-fun m!6176262 () Bool)

(assert (=> b!5116775 m!6176262))

(declare-fun m!6176264 () Bool)

(assert (=> b!5116782 m!6176264))

(declare-fun m!6176266 () Bool)

(assert (=> setNonEmpty!30134 m!6176266))

(declare-fun m!6176268 () Bool)

(assert (=> b!5116771 m!6176268))

(assert (=> b!5116771 m!6176268))

(declare-fun m!6176270 () Bool)

(assert (=> b!5116771 m!6176270))

(declare-fun m!6176272 () Bool)

(assert (=> b!5116771 m!6176272))

(declare-fun m!6176274 () Bool)

(assert (=> b!5116771 m!6176274))

(declare-fun m!6176276 () Bool)

(assert (=> b!5116777 m!6176276))

(declare-fun m!6176278 () Bool)

(assert (=> start!539880 m!6176278))

(declare-fun m!6176280 () Bool)

(assert (=> b!5116776 m!6176280))

(declare-fun m!6176282 () Bool)

(assert (=> setNonEmpty!30133 m!6176282))

(declare-fun m!6176284 () Bool)

(assert (=> b!5116783 m!6176284))

(check-sat (not b!5116776) (not b!5116783) (not b!5116779) (not b!5116771) (not b!5116770) (not setNonEmpty!30134) tp_is_empty!37655 (not setNonEmpty!30133) (not b!5116780) (not b!5116774) (not b!5116777) (not b!5116775) (not start!539880) (not b!5116782) (not b!5116773) (not b!5116772) (not b!5116781))
(check-sat)
(get-model)

(declare-fun d!1653503 () Bool)

(declare-fun lt!2108817 () Int)

(assert (=> d!1653503 (>= lt!2108817 0)))

(declare-fun e!3191262 () Int)

(assert (=> d!1653503 (= lt!2108817 e!3191262)))

(declare-fun c!879140 () Bool)

(assert (=> d!1653503 (= c!879140 ((_ is Nil!59166) testedP!265))))

(assert (=> d!1653503 (= (size!39497 testedP!265) lt!2108817)))

(declare-fun b!5116788 () Bool)

(assert (=> b!5116788 (= e!3191262 0)))

(declare-fun b!5116789 () Bool)

(assert (=> b!5116789 (= e!3191262 (+ 1 (size!39497 (t!372301 testedP!265))))))

(assert (= (and d!1653503 c!879140) b!5116788))

(assert (= (and d!1653503 (not c!879140)) b!5116789))

(declare-fun m!6176286 () Bool)

(assert (=> b!5116789 m!6176286))

(assert (=> b!5116779 d!1653503))

(declare-fun d!1653505 () Bool)

(declare-fun lt!2108818 () Int)

(assert (=> d!1653505 (>= lt!2108818 0)))

(declare-fun e!3191263 () Int)

(assert (=> d!1653505 (= lt!2108818 e!3191263)))

(declare-fun c!879141 () Bool)

(assert (=> d!1653505 (= c!879141 ((_ is Nil!59166) knownP!20))))

(assert (=> d!1653505 (= (size!39497 knownP!20) lt!2108818)))

(declare-fun b!5116790 () Bool)

(assert (=> b!5116790 (= e!3191263 0)))

(declare-fun b!5116791 () Bool)

(assert (=> b!5116791 (= e!3191263 (+ 1 (size!39497 (t!372301 knownP!20))))))

(assert (= (and d!1653505 c!879141) b!5116790))

(assert (= (and d!1653505 (not c!879141)) b!5116791))

(declare-fun m!6176288 () Bool)

(assert (=> b!5116791 m!6176288))

(assert (=> b!5116779 d!1653505))

(declare-fun bs!1192406 () Bool)

(declare-fun b!5116808 () Bool)

(declare-fun d!1653507 () Bool)

(assert (= bs!1192406 (and b!5116808 d!1653507)))

(declare-fun lambda!250924 () Int)

(declare-fun lambda!250923 () Int)

(assert (=> bs!1192406 (not (= lambda!250924 lambda!250923))))

(declare-fun bs!1192407 () Bool)

(declare-fun b!5116809 () Bool)

(assert (= bs!1192407 (and b!5116809 d!1653507)))

(declare-fun lambda!250925 () Int)

(assert (=> bs!1192407 (not (= lambda!250925 lambda!250923))))

(declare-fun bs!1192408 () Bool)

(assert (= bs!1192408 (and b!5116809 b!5116808)))

(assert (=> bs!1192408 (= lambda!250925 lambda!250924)))

(declare-fun e!3191276 () Unit!150293)

(declare-fun Unit!150295 () Unit!150293)

(assert (=> b!5116808 (= e!3191276 Unit!150295)))

(declare-datatypes ((List!59291 0))(
  ( (Nil!59167) (Cons!59167 (h!65615 Context!7150) (t!372302 List!59291)) )
))
(declare-fun lt!2108842 () List!59291)

(declare-fun call!356539 () List!59291)

(assert (=> b!5116808 (= lt!2108842 call!356539)))

(declare-fun lt!2108845 () Unit!150293)

(declare-fun lemmaNotForallThenExists!325 (List!59291 Int) Unit!150293)

(assert (=> b!5116808 (= lt!2108845 (lemmaNotForallThenExists!325 lt!2108842 lambda!250923))))

(declare-fun call!356538 () Bool)

(assert (=> b!5116808 call!356538))

(declare-fun lt!2108840 () Unit!150293)

(assert (=> b!5116808 (= lt!2108840 lt!2108845)))

(declare-fun bm!356533 () Bool)

(declare-fun toList!8251 ((InoxSet Context!7150)) List!59291)

(assert (=> bm!356533 (= call!356539 (toList!8251 z!4463))))

(declare-fun c!879158 () Bool)

(declare-fun lt!2108844 () List!59291)

(declare-fun bm!356534 () Bool)

(declare-fun exists!1462 (List!59291 Int) Bool)

(assert (=> bm!356534 (= call!356538 (exists!1462 (ite c!879158 lt!2108842 lt!2108844) (ite c!879158 lambda!250924 lambda!250925)))))

(declare-fun Unit!150296 () Unit!150293)

(assert (=> b!5116809 (= e!3191276 Unit!150296)))

(assert (=> b!5116809 (= lt!2108844 call!356539)))

(declare-fun lt!2108843 () Unit!150293)

(declare-fun lemmaForallThenNotExists!308 (List!59291 Int) Unit!150293)

(assert (=> b!5116809 (= lt!2108843 (lemmaForallThenNotExists!308 lt!2108844 lambda!250923))))

(assert (=> b!5116809 (not call!356538)))

(declare-fun lt!2108839 () Unit!150293)

(assert (=> b!5116809 (= lt!2108839 lt!2108843)))

(declare-fun lt!2108838 () Bool)

(declare-datatypes ((Option!14685 0))(
  ( (None!14684) (Some!14684 (v!50697 List!59290)) )
))
(declare-fun isEmpty!31910 (Option!14685) Bool)

(declare-fun getLanguageWitness!802 ((InoxSet Context!7150)) Option!14685)

(assert (=> d!1653507 (= lt!2108838 (isEmpty!31910 (getLanguageWitness!802 z!4463)))))

(declare-fun forall!13585 ((InoxSet Context!7150) Int) Bool)

(assert (=> d!1653507 (= lt!2108838 (forall!13585 z!4463 lambda!250923))))

(declare-fun lt!2108841 () Unit!150293)

(assert (=> d!1653507 (= lt!2108841 e!3191276)))

(assert (=> d!1653507 (= c!879158 (not (forall!13585 z!4463 lambda!250923)))))

(assert (=> d!1653507 (= (lostCauseZipper!1077 z!4463) lt!2108838)))

(assert (= (and d!1653507 c!879158) b!5116808))

(assert (= (and d!1653507 (not c!879158)) b!5116809))

(assert (= (or b!5116808 b!5116809) bm!356533))

(assert (= (or b!5116808 b!5116809) bm!356534))

(declare-fun m!6176304 () Bool)

(assert (=> b!5116809 m!6176304))

(declare-fun m!6176306 () Bool)

(assert (=> b!5116808 m!6176306))

(declare-fun m!6176308 () Bool)

(assert (=> bm!356534 m!6176308))

(declare-fun m!6176310 () Bool)

(assert (=> bm!356533 m!6176310))

(declare-fun m!6176312 () Bool)

(assert (=> d!1653507 m!6176312))

(assert (=> d!1653507 m!6176312))

(declare-fun m!6176314 () Bool)

(assert (=> d!1653507 m!6176314))

(declare-fun m!6176316 () Bool)

(assert (=> d!1653507 m!6176316))

(assert (=> d!1653507 m!6176316))

(assert (=> b!5116781 d!1653507))

(declare-fun b!5116821 () Bool)

(declare-fun e!3191284 () Bool)

(assert (=> b!5116821 (= e!3191284 (>= (size!39497 input!5745) (size!39497 testedP!265)))))

(declare-fun b!5116819 () Bool)

(declare-fun res!2178523 () Bool)

(declare-fun e!3191283 () Bool)

(assert (=> b!5116819 (=> (not res!2178523) (not e!3191283))))

(assert (=> b!5116819 (= res!2178523 (= (head!10919 testedP!265) (head!10919 input!5745)))))

(declare-fun b!5116820 () Bool)

(declare-fun tail!10059 (List!59290) List!59290)

(assert (=> b!5116820 (= e!3191283 (isPrefix!5596 (tail!10059 testedP!265) (tail!10059 input!5745)))))

(declare-fun d!1653515 () Bool)

(assert (=> d!1653515 e!3191284))

(declare-fun res!2178524 () Bool)

(assert (=> d!1653515 (=> res!2178524 e!3191284)))

(declare-fun lt!2108848 () Bool)

(assert (=> d!1653515 (= res!2178524 (not lt!2108848))))

(declare-fun e!3191285 () Bool)

(assert (=> d!1653515 (= lt!2108848 e!3191285)))

(declare-fun res!2178525 () Bool)

(assert (=> d!1653515 (=> res!2178525 e!3191285)))

(assert (=> d!1653515 (= res!2178525 ((_ is Nil!59166) testedP!265))))

(assert (=> d!1653515 (= (isPrefix!5596 testedP!265 input!5745) lt!2108848)))

(declare-fun b!5116818 () Bool)

(assert (=> b!5116818 (= e!3191285 e!3191283)))

(declare-fun res!2178526 () Bool)

(assert (=> b!5116818 (=> (not res!2178526) (not e!3191283))))

(assert (=> b!5116818 (= res!2178526 (not ((_ is Nil!59166) input!5745)))))

(assert (= (and d!1653515 (not res!2178525)) b!5116818))

(assert (= (and b!5116818 res!2178526) b!5116819))

(assert (= (and b!5116819 res!2178523) b!5116820))

(assert (= (and d!1653515 (not res!2178524)) b!5116821))

(assert (=> b!5116821 m!6176284))

(assert (=> b!5116821 m!6176234))

(declare-fun m!6176318 () Bool)

(assert (=> b!5116819 m!6176318))

(declare-fun m!6176320 () Bool)

(assert (=> b!5116819 m!6176320))

(declare-fun m!6176322 () Bool)

(assert (=> b!5116820 m!6176322))

(declare-fun m!6176324 () Bool)

(assert (=> b!5116820 m!6176324))

(assert (=> b!5116820 m!6176322))

(assert (=> b!5116820 m!6176324))

(declare-fun m!6176326 () Bool)

(assert (=> b!5116820 m!6176326))

(assert (=> start!539880 d!1653515))

(declare-fun b!5116825 () Bool)

(declare-fun e!3191287 () Bool)

(assert (=> b!5116825 (= e!3191287 (>= (size!39497 input!5745) (size!39497 knownP!20)))))

(declare-fun b!5116823 () Bool)

(declare-fun res!2178527 () Bool)

(declare-fun e!3191286 () Bool)

(assert (=> b!5116823 (=> (not res!2178527) (not e!3191286))))

(assert (=> b!5116823 (= res!2178527 (= (head!10919 knownP!20) (head!10919 input!5745)))))

(declare-fun b!5116824 () Bool)

(assert (=> b!5116824 (= e!3191286 (isPrefix!5596 (tail!10059 knownP!20) (tail!10059 input!5745)))))

(declare-fun d!1653517 () Bool)

(assert (=> d!1653517 e!3191287))

(declare-fun res!2178528 () Bool)

(assert (=> d!1653517 (=> res!2178528 e!3191287)))

(declare-fun lt!2108849 () Bool)

(assert (=> d!1653517 (= res!2178528 (not lt!2108849))))

(declare-fun e!3191288 () Bool)

(assert (=> d!1653517 (= lt!2108849 e!3191288)))

(declare-fun res!2178529 () Bool)

(assert (=> d!1653517 (=> res!2178529 e!3191288)))

(assert (=> d!1653517 (= res!2178529 ((_ is Nil!59166) knownP!20))))

(assert (=> d!1653517 (= (isPrefix!5596 knownP!20 input!5745) lt!2108849)))

(declare-fun b!5116822 () Bool)

(assert (=> b!5116822 (= e!3191288 e!3191286)))

(declare-fun res!2178530 () Bool)

(assert (=> b!5116822 (=> (not res!2178530) (not e!3191286))))

(assert (=> b!5116822 (= res!2178530 (not ((_ is Nil!59166) input!5745)))))

(assert (= (and d!1653517 (not res!2178529)) b!5116822))

(assert (= (and b!5116822 res!2178530) b!5116823))

(assert (= (and b!5116823 res!2178527) b!5116824))

(assert (= (and d!1653517 (not res!2178528)) b!5116825))

(assert (=> b!5116825 m!6176284))

(assert (=> b!5116825 m!6176236))

(declare-fun m!6176328 () Bool)

(assert (=> b!5116823 m!6176328))

(assert (=> b!5116823 m!6176320))

(declare-fun m!6176330 () Bool)

(assert (=> b!5116824 m!6176330))

(assert (=> b!5116824 m!6176324))

(assert (=> b!5116824 m!6176330))

(assert (=> b!5116824 m!6176324))

(declare-fun m!6176332 () Bool)

(assert (=> b!5116824 m!6176332))

(assert (=> b!5116777 d!1653517))

(declare-fun d!1653519 () Bool)

(declare-fun lambda!250930 () Int)

(declare-fun forall!13587 (List!59289 Int) Bool)

(assert (=> d!1653519 (= (inv!78658 setElem!30133) (forall!13587 (exprs!4075 setElem!30133) lambda!250930))))

(declare-fun bs!1192409 () Bool)

(assert (= bs!1192409 d!1653519))

(declare-fun m!6176334 () Bool)

(assert (=> bs!1192409 m!6176334))

(assert (=> setNonEmpty!30134 d!1653519))

(declare-fun d!1653521 () Bool)

(declare-fun c!879161 () Bool)

(assert (=> d!1653521 (= c!879161 ((_ is Cons!59166) testedP!265))))

(declare-fun e!3191291 () (InoxSet Context!7150))

(assert (=> d!1653521 (= (derivationZipper!90 baseZ!46 testedP!265) e!3191291)))

(declare-fun b!5116830 () Bool)

(assert (=> b!5116830 (= e!3191291 (derivationZipper!90 (derivationStepZipper!826 baseZ!46 (h!65614 testedP!265)) (t!372301 testedP!265)))))

(declare-fun b!5116831 () Bool)

(assert (=> b!5116831 (= e!3191291 baseZ!46)))

(assert (= (and d!1653521 c!879161) b!5116830))

(assert (= (and d!1653521 (not c!879161)) b!5116831))

(declare-fun m!6176338 () Bool)

(assert (=> b!5116830 m!6176338))

(assert (=> b!5116830 m!6176338))

(declare-fun m!6176340 () Bool)

(assert (=> b!5116830 m!6176340))

(assert (=> b!5116776 d!1653521))

(declare-fun d!1653525 () Bool)

(declare-fun lt!2108852 () List!59290)

(assert (=> d!1653525 (= (++!13016 testedP!265 lt!2108852) input!5745)))

(declare-fun e!3191294 () List!59290)

(assert (=> d!1653525 (= lt!2108852 e!3191294)))

(declare-fun c!879164 () Bool)

(assert (=> d!1653525 (= c!879164 ((_ is Cons!59166) testedP!265))))

(assert (=> d!1653525 (>= (size!39497 input!5745) (size!39497 testedP!265))))

(assert (=> d!1653525 (= (getSuffix!3270 input!5745 testedP!265) lt!2108852)))

(declare-fun b!5116836 () Bool)

(assert (=> b!5116836 (= e!3191294 (getSuffix!3270 (tail!10059 input!5745) (t!372301 testedP!265)))))

(declare-fun b!5116837 () Bool)

(assert (=> b!5116837 (= e!3191294 input!5745)))

(assert (= (and d!1653525 c!879164) b!5116836))

(assert (= (and d!1653525 (not c!879164)) b!5116837))

(declare-fun m!6176342 () Bool)

(assert (=> d!1653525 m!6176342))

(assert (=> d!1653525 m!6176284))

(assert (=> d!1653525 m!6176234))

(assert (=> b!5116836 m!6176324))

(assert (=> b!5116836 m!6176324))

(declare-fun m!6176344 () Bool)

(assert (=> b!5116836 m!6176344))

(assert (=> b!5116775 d!1653525))

(declare-fun b!5116853 () Bool)

(declare-fun e!3191306 () Bool)

(declare-fun lt!2108871 () List!59290)

(assert (=> b!5116853 (= e!3191306 (or (not (= (Cons!59166 lt!2108809 Nil!59166) Nil!59166)) (= lt!2108871 testedP!265)))))

(declare-fun b!5116850 () Bool)

(declare-fun e!3191305 () List!59290)

(assert (=> b!5116850 (= e!3191305 (Cons!59166 lt!2108809 Nil!59166))))

(declare-fun b!5116852 () Bool)

(declare-fun res!2178536 () Bool)

(assert (=> b!5116852 (=> (not res!2178536) (not e!3191306))))

(assert (=> b!5116852 (= res!2178536 (= (size!39497 lt!2108871) (+ (size!39497 testedP!265) (size!39497 (Cons!59166 lt!2108809 Nil!59166)))))))

(declare-fun d!1653527 () Bool)

(assert (=> d!1653527 e!3191306))

(declare-fun res!2178535 () Bool)

(assert (=> d!1653527 (=> (not res!2178535) (not e!3191306))))

(declare-fun content!10516 (List!59290) (InoxSet C!28648))

(assert (=> d!1653527 (= res!2178535 (= (content!10516 lt!2108871) ((_ map or) (content!10516 testedP!265) (content!10516 (Cons!59166 lt!2108809 Nil!59166)))))))

(assert (=> d!1653527 (= lt!2108871 e!3191305)))

(declare-fun c!879175 () Bool)

(assert (=> d!1653527 (= c!879175 ((_ is Nil!59166) testedP!265))))

(assert (=> d!1653527 (= (++!13016 testedP!265 (Cons!59166 lt!2108809 Nil!59166)) lt!2108871)))

(declare-fun b!5116851 () Bool)

(assert (=> b!5116851 (= e!3191305 (Cons!59166 (h!65614 testedP!265) (++!13016 (t!372301 testedP!265) (Cons!59166 lt!2108809 Nil!59166))))))

(assert (= (and d!1653527 c!879175) b!5116850))

(assert (= (and d!1653527 (not c!879175)) b!5116851))

(assert (= (and d!1653527 res!2178535) b!5116852))

(assert (= (and b!5116852 res!2178536) b!5116853))

(declare-fun m!6176346 () Bool)

(assert (=> b!5116852 m!6176346))

(assert (=> b!5116852 m!6176234))

(declare-fun m!6176348 () Bool)

(assert (=> b!5116852 m!6176348))

(declare-fun m!6176350 () Bool)

(assert (=> d!1653527 m!6176350))

(declare-fun m!6176352 () Bool)

(assert (=> d!1653527 m!6176352))

(declare-fun m!6176354 () Bool)

(assert (=> d!1653527 m!6176354))

(declare-fun m!6176356 () Bool)

(assert (=> b!5116851 m!6176356))

(assert (=> b!5116775 d!1653527))

(declare-fun d!1653529 () Bool)

(assert (=> d!1653529 (isPrefix!5596 lt!2108808 knownP!20)))

(declare-fun lt!2108874 () Unit!150293)

(declare-fun choose!37573 (List!59290 List!59290 List!59290) Unit!150293)

(assert (=> d!1653529 (= lt!2108874 (choose!37573 knownP!20 lt!2108808 input!5745))))

(assert (=> d!1653529 (isPrefix!5596 knownP!20 input!5745)))

(assert (=> d!1653529 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!733 knownP!20 lt!2108808 input!5745) lt!2108874)))

(declare-fun bs!1192411 () Bool)

(assert (= bs!1192411 d!1653529))

(assert (=> bs!1192411 m!6176242))

(declare-fun m!6176358 () Bool)

(assert (=> bs!1192411 m!6176358))

(assert (=> bs!1192411 m!6176276))

(assert (=> b!5116775 d!1653529))

(declare-fun b!5116857 () Bool)

(declare-fun e!3191308 () Bool)

(assert (=> b!5116857 (= e!3191308 (>= (size!39497 input!5745) (size!39497 lt!2108808)))))

(declare-fun b!5116855 () Bool)

(declare-fun res!2178537 () Bool)

(declare-fun e!3191307 () Bool)

(assert (=> b!5116855 (=> (not res!2178537) (not e!3191307))))

(assert (=> b!5116855 (= res!2178537 (= (head!10919 lt!2108808) (head!10919 input!5745)))))

(declare-fun b!5116856 () Bool)

(assert (=> b!5116856 (= e!3191307 (isPrefix!5596 (tail!10059 lt!2108808) (tail!10059 input!5745)))))

(declare-fun d!1653531 () Bool)

(assert (=> d!1653531 e!3191308))

(declare-fun res!2178538 () Bool)

(assert (=> d!1653531 (=> res!2178538 e!3191308)))

(declare-fun lt!2108875 () Bool)

(assert (=> d!1653531 (= res!2178538 (not lt!2108875))))

(declare-fun e!3191309 () Bool)

(assert (=> d!1653531 (= lt!2108875 e!3191309)))

(declare-fun res!2178539 () Bool)

(assert (=> d!1653531 (=> res!2178539 e!3191309)))

(assert (=> d!1653531 (= res!2178539 ((_ is Nil!59166) lt!2108808))))

(assert (=> d!1653531 (= (isPrefix!5596 lt!2108808 input!5745) lt!2108875)))

(declare-fun b!5116854 () Bool)

(assert (=> b!5116854 (= e!3191309 e!3191307)))

(declare-fun res!2178540 () Bool)

(assert (=> b!5116854 (=> (not res!2178540) (not e!3191307))))

(assert (=> b!5116854 (= res!2178540 (not ((_ is Nil!59166) input!5745)))))

(assert (= (and d!1653531 (not res!2178539)) b!5116854))

(assert (= (and b!5116854 res!2178540) b!5116855))

(assert (= (and b!5116855 res!2178537) b!5116856))

(assert (= (and d!1653531 (not res!2178538)) b!5116857))

(assert (=> b!5116857 m!6176284))

(declare-fun m!6176360 () Bool)

(assert (=> b!5116857 m!6176360))

(declare-fun m!6176362 () Bool)

(assert (=> b!5116855 m!6176362))

(assert (=> b!5116855 m!6176320))

(declare-fun m!6176364 () Bool)

(assert (=> b!5116856 m!6176364))

(assert (=> b!5116856 m!6176324))

(assert (=> b!5116856 m!6176364))

(assert (=> b!5116856 m!6176324))

(declare-fun m!6176366 () Bool)

(assert (=> b!5116856 m!6176366))

(assert (=> b!5116775 d!1653531))

(declare-fun d!1653533 () Bool)

(assert (=> d!1653533 (isPrefix!5596 (++!13016 testedP!265 (Cons!59166 (head!10919 (getSuffix!3270 input!5745 testedP!265)) Nil!59166)) input!5745)))

(declare-fun lt!2108888 () Unit!150293)

(declare-fun choose!37574 (List!59290 List!59290) Unit!150293)

(assert (=> d!1653533 (= lt!2108888 (choose!37574 testedP!265 input!5745))))

(assert (=> d!1653533 (isPrefix!5596 testedP!265 input!5745)))

(assert (=> d!1653533 (= (lemmaAddHeadSuffixToPrefixStillPrefix!982 testedP!265 input!5745) lt!2108888)))

(declare-fun bs!1192415 () Bool)

(assert (= bs!1192415 d!1653533))

(assert (=> bs!1192415 m!6176238))

(assert (=> bs!1192415 m!6176240))

(assert (=> bs!1192415 m!6176238))

(declare-fun m!6176386 () Bool)

(assert (=> bs!1192415 m!6176386))

(declare-fun m!6176388 () Bool)

(assert (=> bs!1192415 m!6176388))

(assert (=> bs!1192415 m!6176278))

(assert (=> bs!1192415 m!6176388))

(declare-fun m!6176390 () Bool)

(assert (=> bs!1192415 m!6176390))

(assert (=> b!5116775 d!1653533))

(declare-fun d!1653541 () Bool)

(assert (=> d!1653541 (= (derivationZipper!90 baseZ!46 (++!13016 testedP!265 (Cons!59166 lt!2108809 Nil!59166))) (derivationStepZipper!826 z!4463 lt!2108809))))

(declare-fun lt!2108894 () Unit!150293)

(declare-fun choose!37575 ((InoxSet Context!7150) (InoxSet Context!7150) List!59290 C!28648) Unit!150293)

(assert (=> d!1653541 (= lt!2108894 (choose!37575 baseZ!46 z!4463 testedP!265 lt!2108809))))

(assert (=> d!1653541 (= (derivationZipper!90 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1653541 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!47 baseZ!46 z!4463 testedP!265 lt!2108809) lt!2108894)))

(declare-fun bs!1192416 () Bool)

(assert (= bs!1192416 d!1653541))

(assert (=> bs!1192416 m!6176246))

(declare-fun m!6176398 () Bool)

(assert (=> bs!1192416 m!6176398))

(assert (=> bs!1192416 m!6176280))

(assert (=> bs!1192416 m!6176252))

(declare-fun m!6176400 () Bool)

(assert (=> bs!1192416 m!6176400))

(assert (=> bs!1192416 m!6176246))

(assert (=> b!5116775 d!1653541))

(declare-fun e!3191317 () Bool)

(declare-fun lt!2108895 () List!59290)

(declare-fun b!5116873 () Bool)

(assert (=> b!5116873 (= e!3191317 (or (not (= (getSuffix!3270 input!5745 knownP!20) Nil!59166)) (= lt!2108895 knownP!20)))))

(declare-fun b!5116870 () Bool)

(declare-fun e!3191316 () List!59290)

(assert (=> b!5116870 (= e!3191316 (getSuffix!3270 input!5745 knownP!20))))

(declare-fun b!5116872 () Bool)

(declare-fun res!2178542 () Bool)

(assert (=> b!5116872 (=> (not res!2178542) (not e!3191317))))

(assert (=> b!5116872 (= res!2178542 (= (size!39497 lt!2108895) (+ (size!39497 knownP!20) (size!39497 (getSuffix!3270 input!5745 knownP!20)))))))

(declare-fun d!1653545 () Bool)

(assert (=> d!1653545 e!3191317))

(declare-fun res!2178541 () Bool)

(assert (=> d!1653545 (=> (not res!2178541) (not e!3191317))))

(assert (=> d!1653545 (= res!2178541 (= (content!10516 lt!2108895) ((_ map or) (content!10516 knownP!20) (content!10516 (getSuffix!3270 input!5745 knownP!20)))))))

(assert (=> d!1653545 (= lt!2108895 e!3191316)))

(declare-fun c!879185 () Bool)

(assert (=> d!1653545 (= c!879185 ((_ is Nil!59166) knownP!20))))

(assert (=> d!1653545 (= (++!13016 knownP!20 (getSuffix!3270 input!5745 knownP!20)) lt!2108895)))

(declare-fun b!5116871 () Bool)

(assert (=> b!5116871 (= e!3191316 (Cons!59166 (h!65614 knownP!20) (++!13016 (t!372301 knownP!20) (getSuffix!3270 input!5745 knownP!20))))))

(assert (= (and d!1653545 c!879185) b!5116870))

(assert (= (and d!1653545 (not c!879185)) b!5116871))

(assert (= (and d!1653545 res!2178541) b!5116872))

(assert (= (and b!5116872 res!2178542) b!5116873))

(declare-fun m!6176402 () Bool)

(assert (=> b!5116872 m!6176402))

(assert (=> b!5116872 m!6176236))

(assert (=> b!5116872 m!6176244))

(declare-fun m!6176404 () Bool)

(assert (=> b!5116872 m!6176404))

(declare-fun m!6176406 () Bool)

(assert (=> d!1653545 m!6176406))

(declare-fun m!6176408 () Bool)

(assert (=> d!1653545 m!6176408))

(assert (=> d!1653545 m!6176244))

(declare-fun m!6176410 () Bool)

(assert (=> d!1653545 m!6176410))

(assert (=> b!5116871 m!6176244))

(declare-fun m!6176412 () Bool)

(assert (=> b!5116871 m!6176412))

(assert (=> b!5116775 d!1653545))

(declare-fun d!1653547 () Bool)

(assert (=> d!1653547 true))

(declare-fun lambda!250949 () Int)

(declare-fun flatMap!345 ((InoxSet Context!7150) Int) (InoxSet Context!7150))

(assert (=> d!1653547 (= (derivationStepZipper!826 z!4463 lt!2108809) (flatMap!345 z!4463 lambda!250949))))

(declare-fun bs!1192417 () Bool)

(assert (= bs!1192417 d!1653547))

(declare-fun m!6176416 () Bool)

(assert (=> bs!1192417 m!6176416))

(assert (=> b!5116775 d!1653547))

(declare-fun d!1653549 () Bool)

(declare-fun c!879191 () Bool)

(assert (=> d!1653549 (= c!879191 ((_ is Cons!59166) lt!2108808))))

(declare-fun e!3191324 () (InoxSet Context!7150))

(assert (=> d!1653549 (= (derivationZipper!90 baseZ!46 lt!2108808) e!3191324)))

(declare-fun b!5116888 () Bool)

(assert (=> b!5116888 (= e!3191324 (derivationZipper!90 (derivationStepZipper!826 baseZ!46 (h!65614 lt!2108808)) (t!372301 lt!2108808)))))

(declare-fun b!5116889 () Bool)

(assert (=> b!5116889 (= e!3191324 baseZ!46)))

(assert (= (and d!1653549 c!879191) b!5116888))

(assert (= (and d!1653549 (not c!879191)) b!5116889))

(declare-fun m!6176428 () Bool)

(assert (=> b!5116888 m!6176428))

(assert (=> b!5116888 m!6176428))

(declare-fun m!6176430 () Bool)

(assert (=> b!5116888 m!6176430))

(assert (=> b!5116775 d!1653549))

(declare-fun b!5116895 () Bool)

(declare-fun e!3191327 () Bool)

(assert (=> b!5116895 (= e!3191327 (>= (size!39497 knownP!20) (size!39497 lt!2108808)))))

(declare-fun b!5116893 () Bool)

(declare-fun res!2178549 () Bool)

(declare-fun e!3191326 () Bool)

(assert (=> b!5116893 (=> (not res!2178549) (not e!3191326))))

(assert (=> b!5116893 (= res!2178549 (= (head!10919 lt!2108808) (head!10919 knownP!20)))))

(declare-fun b!5116894 () Bool)

(assert (=> b!5116894 (= e!3191326 (isPrefix!5596 (tail!10059 lt!2108808) (tail!10059 knownP!20)))))

(declare-fun d!1653553 () Bool)

(assert (=> d!1653553 e!3191327))

(declare-fun res!2178550 () Bool)

(assert (=> d!1653553 (=> res!2178550 e!3191327)))

(declare-fun lt!2108900 () Bool)

(assert (=> d!1653553 (= res!2178550 (not lt!2108900))))

(declare-fun e!3191328 () Bool)

(assert (=> d!1653553 (= lt!2108900 e!3191328)))

(declare-fun res!2178551 () Bool)

(assert (=> d!1653553 (=> res!2178551 e!3191328)))

(assert (=> d!1653553 (= res!2178551 ((_ is Nil!59166) lt!2108808))))

(assert (=> d!1653553 (= (isPrefix!5596 lt!2108808 knownP!20) lt!2108900)))

(declare-fun b!5116892 () Bool)

(assert (=> b!5116892 (= e!3191328 e!3191326)))

(declare-fun res!2178552 () Bool)

(assert (=> b!5116892 (=> (not res!2178552) (not e!3191326))))

(assert (=> b!5116892 (= res!2178552 (not ((_ is Nil!59166) knownP!20)))))

(assert (= (and d!1653553 (not res!2178551)) b!5116892))

(assert (= (and b!5116892 res!2178552) b!5116893))

(assert (= (and b!5116893 res!2178549) b!5116894))

(assert (= (and d!1653553 (not res!2178550)) b!5116895))

(assert (=> b!5116895 m!6176236))

(assert (=> b!5116895 m!6176360))

(assert (=> b!5116893 m!6176362))

(assert (=> b!5116893 m!6176328))

(assert (=> b!5116894 m!6176364))

(assert (=> b!5116894 m!6176330))

(assert (=> b!5116894 m!6176364))

(assert (=> b!5116894 m!6176330))

(declare-fun m!6176438 () Bool)

(assert (=> b!5116894 m!6176438))

(assert (=> b!5116775 d!1653553))

(declare-fun d!1653557 () Bool)

(declare-fun lt!2108901 () List!59290)

(assert (=> d!1653557 (= (++!13016 lt!2108808 lt!2108901) knownP!20)))

(declare-fun e!3191329 () List!59290)

(assert (=> d!1653557 (= lt!2108901 e!3191329)))

(declare-fun c!879193 () Bool)

(assert (=> d!1653557 (= c!879193 ((_ is Cons!59166) lt!2108808))))

(assert (=> d!1653557 (>= (size!39497 knownP!20) (size!39497 lt!2108808))))

(assert (=> d!1653557 (= (getSuffix!3270 knownP!20 lt!2108808) lt!2108901)))

(declare-fun b!5116896 () Bool)

(assert (=> b!5116896 (= e!3191329 (getSuffix!3270 (tail!10059 knownP!20) (t!372301 lt!2108808)))))

(declare-fun b!5116897 () Bool)

(assert (=> b!5116897 (= e!3191329 knownP!20)))

(assert (= (and d!1653557 c!879193) b!5116896))

(assert (= (and d!1653557 (not c!879193)) b!5116897))

(declare-fun m!6176440 () Bool)

(assert (=> d!1653557 m!6176440))

(assert (=> d!1653557 m!6176236))

(assert (=> d!1653557 m!6176360))

(assert (=> b!5116896 m!6176330))

(assert (=> b!5116896 m!6176330))

(declare-fun m!6176442 () Bool)

(assert (=> b!5116896 m!6176442))

(assert (=> b!5116775 d!1653557))

(declare-fun d!1653559 () Bool)

(assert (=> d!1653559 (= (head!10919 (getSuffix!3270 input!5745 testedP!265)) (h!65614 (getSuffix!3270 input!5745 testedP!265)))))

(assert (=> b!5116775 d!1653559))

(declare-fun d!1653561 () Bool)

(declare-fun lt!2108902 () List!59290)

(assert (=> d!1653561 (= (++!13016 knownP!20 lt!2108902) input!5745)))

(declare-fun e!3191330 () List!59290)

(assert (=> d!1653561 (= lt!2108902 e!3191330)))

(declare-fun c!879194 () Bool)

(assert (=> d!1653561 (= c!879194 ((_ is Cons!59166) knownP!20))))

(assert (=> d!1653561 (>= (size!39497 input!5745) (size!39497 knownP!20))))

(assert (=> d!1653561 (= (getSuffix!3270 input!5745 knownP!20) lt!2108902)))

(declare-fun b!5116898 () Bool)

(assert (=> b!5116898 (= e!3191330 (getSuffix!3270 (tail!10059 input!5745) (t!372301 knownP!20)))))

(declare-fun b!5116899 () Bool)

(assert (=> b!5116899 (= e!3191330 input!5745)))

(assert (= (and d!1653561 c!879194) b!5116898))

(assert (= (and d!1653561 (not c!879194)) b!5116899))

(declare-fun m!6176444 () Bool)

(assert (=> d!1653561 m!6176444))

(assert (=> d!1653561 m!6176284))

(assert (=> d!1653561 m!6176236))

(assert (=> b!5116898 m!6176324))

(assert (=> b!5116898 m!6176324))

(declare-fun m!6176446 () Bool)

(assert (=> b!5116898 m!6176446))

(assert (=> b!5116775 d!1653561))

(declare-fun d!1653563 () Bool)

(declare-fun lt!2108903 () Int)

(assert (=> d!1653563 (>= lt!2108903 0)))

(declare-fun e!3191331 () Int)

(assert (=> d!1653563 (= lt!2108903 e!3191331)))

(declare-fun c!879195 () Bool)

(assert (=> d!1653563 (= c!879195 ((_ is Nil!59166) input!5745))))

(assert (=> d!1653563 (= (size!39497 input!5745) lt!2108903)))

(declare-fun b!5116900 () Bool)

(assert (=> b!5116900 (= e!3191331 0)))

(declare-fun b!5116901 () Bool)

(assert (=> b!5116901 (= e!3191331 (+ 1 (size!39497 (t!372301 input!5745))))))

(assert (= (and d!1653563 c!879195) b!5116900))

(assert (= (and d!1653563 (not c!879195)) b!5116901))

(declare-fun m!6176448 () Bool)

(assert (=> b!5116901 m!6176448))

(assert (=> b!5116783 d!1653563))

(declare-fun d!1653565 () Bool)

(declare-fun c!879198 () Bool)

(declare-fun isEmpty!31913 (List!59290) Bool)

(assert (=> d!1653565 (= c!879198 (isEmpty!31913 (getSuffix!3270 knownP!20 testedP!265)))))

(declare-fun e!3191343 () Bool)

(assert (=> d!1653565 (= (matchZipper!859 z!4463 (getSuffix!3270 knownP!20 testedP!265)) e!3191343)))

(declare-fun b!5116918 () Bool)

(declare-fun nullableZipper!1016 ((InoxSet Context!7150)) Bool)

(assert (=> b!5116918 (= e!3191343 (nullableZipper!1016 z!4463))))

(declare-fun b!5116919 () Bool)

(assert (=> b!5116919 (= e!3191343 (matchZipper!859 (derivationStepZipper!826 z!4463 (head!10919 (getSuffix!3270 knownP!20 testedP!265))) (tail!10059 (getSuffix!3270 knownP!20 testedP!265))))))

(assert (= (and d!1653565 c!879198) b!5116918))

(assert (= (and d!1653565 (not c!879198)) b!5116919))

(assert (=> d!1653565 m!6176268))

(declare-fun m!6176458 () Bool)

(assert (=> d!1653565 m!6176458))

(declare-fun m!6176460 () Bool)

(assert (=> b!5116918 m!6176460))

(assert (=> b!5116919 m!6176268))

(declare-fun m!6176462 () Bool)

(assert (=> b!5116919 m!6176462))

(assert (=> b!5116919 m!6176462))

(declare-fun m!6176464 () Bool)

(assert (=> b!5116919 m!6176464))

(assert (=> b!5116919 m!6176268))

(declare-fun m!6176466 () Bool)

(assert (=> b!5116919 m!6176466))

(assert (=> b!5116919 m!6176464))

(assert (=> b!5116919 m!6176466))

(declare-fun m!6176468 () Bool)

(assert (=> b!5116919 m!6176468))

(assert (=> b!5116771 d!1653565))

(declare-fun d!1653569 () Bool)

(declare-fun lt!2108907 () List!59290)

(assert (=> d!1653569 (= (++!13016 testedP!265 lt!2108907) knownP!20)))

(declare-fun e!3191344 () List!59290)

(assert (=> d!1653569 (= lt!2108907 e!3191344)))

(declare-fun c!879199 () Bool)

(assert (=> d!1653569 (= c!879199 ((_ is Cons!59166) testedP!265))))

(assert (=> d!1653569 (>= (size!39497 knownP!20) (size!39497 testedP!265))))

(assert (=> d!1653569 (= (getSuffix!3270 knownP!20 testedP!265) lt!2108907)))

(declare-fun b!5116920 () Bool)

(assert (=> b!5116920 (= e!3191344 (getSuffix!3270 (tail!10059 knownP!20) (t!372301 testedP!265)))))

(declare-fun b!5116921 () Bool)

(assert (=> b!5116921 (= e!3191344 knownP!20)))

(assert (= (and d!1653569 c!879199) b!5116920))

(assert (= (and d!1653569 (not c!879199)) b!5116921))

(declare-fun m!6176470 () Bool)

(assert (=> d!1653569 m!6176470))

(assert (=> d!1653569 m!6176236))

(assert (=> d!1653569 m!6176234))

(assert (=> b!5116920 m!6176330))

(assert (=> b!5116920 m!6176330))

(declare-fun m!6176472 () Bool)

(assert (=> b!5116920 m!6176472))

(assert (=> b!5116771 d!1653569))

(declare-fun b!5116925 () Bool)

(declare-fun e!3191346 () Bool)

(assert (=> b!5116925 (= e!3191346 (>= (size!39497 knownP!20) (size!39497 testedP!265)))))

(declare-fun b!5116923 () Bool)

(declare-fun res!2178565 () Bool)

(declare-fun e!3191345 () Bool)

(assert (=> b!5116923 (=> (not res!2178565) (not e!3191345))))

(assert (=> b!5116923 (= res!2178565 (= (head!10919 testedP!265) (head!10919 knownP!20)))))

(declare-fun b!5116924 () Bool)

(assert (=> b!5116924 (= e!3191345 (isPrefix!5596 (tail!10059 testedP!265) (tail!10059 knownP!20)))))

(declare-fun d!1653571 () Bool)

(assert (=> d!1653571 e!3191346))

(declare-fun res!2178566 () Bool)

(assert (=> d!1653571 (=> res!2178566 e!3191346)))

(declare-fun lt!2108908 () Bool)

(assert (=> d!1653571 (= res!2178566 (not lt!2108908))))

(declare-fun e!3191347 () Bool)

(assert (=> d!1653571 (= lt!2108908 e!3191347)))

(declare-fun res!2178567 () Bool)

(assert (=> d!1653571 (=> res!2178567 e!3191347)))

(assert (=> d!1653571 (= res!2178567 ((_ is Nil!59166) testedP!265))))

(assert (=> d!1653571 (= (isPrefix!5596 testedP!265 knownP!20) lt!2108908)))

(declare-fun b!5116922 () Bool)

(assert (=> b!5116922 (= e!3191347 e!3191345)))

(declare-fun res!2178568 () Bool)

(assert (=> b!5116922 (=> (not res!2178568) (not e!3191345))))

(assert (=> b!5116922 (= res!2178568 (not ((_ is Nil!59166) knownP!20)))))

(assert (= (and d!1653571 (not res!2178567)) b!5116922))

(assert (= (and b!5116922 res!2178568) b!5116923))

(assert (= (and b!5116923 res!2178565) b!5116924))

(assert (= (and d!1653571 (not res!2178566)) b!5116925))

(assert (=> b!5116925 m!6176236))

(assert (=> b!5116925 m!6176234))

(assert (=> b!5116923 m!6176318))

(assert (=> b!5116923 m!6176328))

(assert (=> b!5116924 m!6176322))

(assert (=> b!5116924 m!6176330))

(assert (=> b!5116924 m!6176322))

(assert (=> b!5116924 m!6176330))

(declare-fun m!6176474 () Bool)

(assert (=> b!5116924 m!6176474))

(assert (=> b!5116771 d!1653571))

(declare-fun d!1653573 () Bool)

(assert (=> d!1653573 (isPrefix!5596 testedP!265 knownP!20)))

(declare-fun lt!2108911 () Unit!150293)

(assert (=> d!1653573 (= lt!2108911 (choose!37573 knownP!20 testedP!265 input!5745))))

(assert (=> d!1653573 (isPrefix!5596 knownP!20 input!5745)))

(assert (=> d!1653573 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!733 knownP!20 testedP!265 input!5745) lt!2108911)))

(declare-fun bs!1192418 () Bool)

(assert (= bs!1192418 d!1653573))

(assert (=> bs!1192418 m!6176272))

(declare-fun m!6176476 () Bool)

(assert (=> bs!1192418 m!6176476))

(assert (=> bs!1192418 m!6176276))

(assert (=> b!5116771 d!1653573))

(declare-fun d!1653575 () Bool)

(declare-fun c!879200 () Bool)

(assert (=> d!1653575 (= c!879200 (isEmpty!31913 knownP!20))))

(declare-fun e!3191348 () Bool)

(assert (=> d!1653575 (= (matchZipper!859 baseZ!46 knownP!20) e!3191348)))

(declare-fun b!5116926 () Bool)

(assert (=> b!5116926 (= e!3191348 (nullableZipper!1016 baseZ!46))))

(declare-fun b!5116927 () Bool)

(assert (=> b!5116927 (= e!3191348 (matchZipper!859 (derivationStepZipper!826 baseZ!46 (head!10919 knownP!20)) (tail!10059 knownP!20)))))

(assert (= (and d!1653575 c!879200) b!5116926))

(assert (= (and d!1653575 (not c!879200)) b!5116927))

(declare-fun m!6176478 () Bool)

(assert (=> d!1653575 m!6176478))

(declare-fun m!6176480 () Bool)

(assert (=> b!5116926 m!6176480))

(assert (=> b!5116927 m!6176328))

(assert (=> b!5116927 m!6176328))

(declare-fun m!6176482 () Bool)

(assert (=> b!5116927 m!6176482))

(assert (=> b!5116927 m!6176330))

(assert (=> b!5116927 m!6176482))

(assert (=> b!5116927 m!6176330))

(declare-fun m!6176484 () Bool)

(assert (=> b!5116927 m!6176484))

(assert (=> b!5116782 d!1653575))

(declare-fun bs!1192419 () Bool)

(declare-fun d!1653577 () Bool)

(assert (= bs!1192419 (and d!1653577 d!1653519)))

(declare-fun lambda!250950 () Int)

(assert (=> bs!1192419 (= lambda!250950 lambda!250930)))

(assert (=> d!1653577 (= (inv!78658 setElem!30134) (forall!13587 (exprs!4075 setElem!30134) lambda!250950))))

(declare-fun bs!1192421 () Bool)

(assert (= bs!1192421 d!1653577))

(declare-fun m!6176492 () Bool)

(assert (=> bs!1192421 m!6176492))

(assert (=> setNonEmpty!30133 d!1653577))

(declare-fun b!5116936 () Bool)

(declare-fun e!3191354 () Bool)

(declare-fun tp!1427568 () Bool)

(assert (=> b!5116936 (= e!3191354 (and tp_is_empty!37655 tp!1427568))))

(assert (=> b!5116774 (= tp!1427559 e!3191354)))

(assert (= (and b!5116774 ((_ is Cons!59166) (t!372301 input!5745))) b!5116936))

(declare-fun b!5116937 () Bool)

(declare-fun e!3191355 () Bool)

(declare-fun tp!1427569 () Bool)

(assert (=> b!5116937 (= e!3191355 (and tp_is_empty!37655 tp!1427569))))

(assert (=> b!5116773 (= tp!1427561 e!3191355)))

(assert (= (and b!5116773 ((_ is Cons!59166) (t!372301 testedP!265))) b!5116937))

(declare-fun b!5116942 () Bool)

(declare-fun e!3191358 () Bool)

(declare-fun tp!1427570 () Bool)

(assert (=> b!5116942 (= e!3191358 (and tp_is_empty!37655 tp!1427570))))

(assert (=> b!5116772 (= tp!1427564 e!3191358)))

(assert (= (and b!5116772 ((_ is Cons!59166) (t!372301 knownP!20))) b!5116942))

(declare-fun condSetEmpty!30137 () Bool)

(assert (=> setNonEmpty!30134 (= condSetEmpty!30137 (= setRest!30133 ((as const (Array Context!7150 Bool)) false)))))

(declare-fun setRes!30137 () Bool)

(assert (=> setNonEmpty!30134 (= tp!1427560 setRes!30137)))

(declare-fun setIsEmpty!30137 () Bool)

(assert (=> setIsEmpty!30137 setRes!30137))

(declare-fun setElem!30137 () Context!7150)

(declare-fun e!3191361 () Bool)

(declare-fun tp!1427576 () Bool)

(declare-fun setNonEmpty!30137 () Bool)

(assert (=> setNonEmpty!30137 (= setRes!30137 (and tp!1427576 (inv!78658 setElem!30137) e!3191361))))

(declare-fun setRest!30137 () (InoxSet Context!7150))

(assert (=> setNonEmpty!30137 (= setRest!30133 ((_ map or) (store ((as const (Array Context!7150 Bool)) false) setElem!30137 true) setRest!30137))))

(declare-fun b!5116947 () Bool)

(declare-fun tp!1427575 () Bool)

(assert (=> b!5116947 (= e!3191361 tp!1427575)))

(assert (= (and setNonEmpty!30134 condSetEmpty!30137) setIsEmpty!30137))

(assert (= (and setNonEmpty!30134 (not condSetEmpty!30137)) setNonEmpty!30137))

(assert (= setNonEmpty!30137 b!5116947))

(declare-fun m!6176508 () Bool)

(assert (=> setNonEmpty!30137 m!6176508))

(declare-fun b!5116952 () Bool)

(declare-fun e!3191364 () Bool)

(declare-fun tp!1427581 () Bool)

(declare-fun tp!1427582 () Bool)

(assert (=> b!5116952 (= e!3191364 (and tp!1427581 tp!1427582))))

(assert (=> b!5116780 (= tp!1427565 e!3191364)))

(assert (= (and b!5116780 ((_ is Cons!59165) (exprs!4075 setElem!30134))) b!5116952))

(declare-fun b!5116953 () Bool)

(declare-fun e!3191365 () Bool)

(declare-fun tp!1427583 () Bool)

(declare-fun tp!1427584 () Bool)

(assert (=> b!5116953 (= e!3191365 (and tp!1427583 tp!1427584))))

(assert (=> b!5116770 (= tp!1427563 e!3191365)))

(assert (= (and b!5116770 ((_ is Cons!59165) (exprs!4075 setElem!30133))) b!5116953))

(declare-fun condSetEmpty!30138 () Bool)

(assert (=> setNonEmpty!30133 (= condSetEmpty!30138 (= setRest!30134 ((as const (Array Context!7150 Bool)) false)))))

(declare-fun setRes!30138 () Bool)

(assert (=> setNonEmpty!30133 (= tp!1427562 setRes!30138)))

(declare-fun setIsEmpty!30138 () Bool)

(assert (=> setIsEmpty!30138 setRes!30138))

(declare-fun setNonEmpty!30138 () Bool)

(declare-fun tp!1427586 () Bool)

(declare-fun setElem!30138 () Context!7150)

(declare-fun e!3191366 () Bool)

(assert (=> setNonEmpty!30138 (= setRes!30138 (and tp!1427586 (inv!78658 setElem!30138) e!3191366))))

(declare-fun setRest!30138 () (InoxSet Context!7150))

(assert (=> setNonEmpty!30138 (= setRest!30134 ((_ map or) (store ((as const (Array Context!7150 Bool)) false) setElem!30138 true) setRest!30138))))

(declare-fun b!5116954 () Bool)

(declare-fun tp!1427585 () Bool)

(assert (=> b!5116954 (= e!3191366 tp!1427585)))

(assert (= (and setNonEmpty!30133 condSetEmpty!30138) setIsEmpty!30138))

(assert (= (and setNonEmpty!30133 (not condSetEmpty!30138)) setNonEmpty!30138))

(assert (= setNonEmpty!30138 b!5116954))

(declare-fun m!6176510 () Bool)

(assert (=> setNonEmpty!30138 m!6176510))

(check-sat (not d!1653561) (not d!1653507) (not d!1653557) (not d!1653577) (not b!5116898) (not b!5116819) (not b!5116947) (not d!1653573) (not d!1653519) (not b!5116937) (not b!5116871) (not b!5116791) (not b!5116895) (not d!1653547) (not b!5116820) (not b!5116836) (not b!5116925) (not b!5116896) (not b!5116923) (not b!5116809) (not d!1653545) (not d!1653529) (not d!1653541) (not b!5116872) (not d!1653569) (not b!5116927) (not d!1653565) (not b!5116919) (not b!5116901) (not b!5116924) (not b!5116893) (not bm!356533) (not b!5116823) (not b!5116920) (not b!5116952) (not b!5116789) (not b!5116825) (not b!5116855) (not b!5116918) (not b!5116821) (not d!1653533) (not b!5116851) (not b!5116824) (not b!5116808) (not bm!356534) tp_is_empty!37655 (not d!1653575) (not b!5116954) (not b!5116936) (not b!5116926) (not b!5116888) (not d!1653527) (not setNonEmpty!30138) (not b!5116894) (not setNonEmpty!30137) (not b!5116953) (not b!5116856) (not b!5116857) (not d!1653525) (not b!5116852) (not b!5116830) (not b!5116942))
(check-sat)
