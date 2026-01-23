; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539096 () Bool)

(assert start!539096)

(declare-fun res!2175740 () Bool)

(declare-fun e!3187997 () Bool)

(assert (=> start!539096 (=> (not res!2175740) (not e!3187997))))

(declare-datatypes ((C!28568 0))(
  ( (C!28569 (val!23936 Int)) )
))
(declare-datatypes ((List!59186 0))(
  ( (Nil!59062) (Cons!59062 (h!65510 C!28568) (t!372187 List!59186)) )
))
(declare-fun testedP!265 () List!59186)

(declare-fun input!5745 () List!59186)

(declare-fun isPrefix!5556 (List!59186 List!59186) Bool)

(assert (=> start!539096 (= res!2175740 (isPrefix!5556 testedP!265 input!5745))))

(assert (=> start!539096 e!3187997))

(declare-fun e!3188001 () Bool)

(assert (=> start!539096 e!3188001))

(declare-fun condSetEmpty!29798 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14151 0))(
  ( (ElementMatch!14151 (c!878139 C!28568)) (Concat!22996 (regOne!28814 Regex!14151) (regTwo!28814 Regex!14151)) (EmptyExpr!14151) (Star!14151 (reg!14480 Regex!14151)) (EmptyLang!14151) (Union!14151 (regOne!28815 Regex!14151) (regTwo!28815 Regex!14151)) )
))
(declare-datatypes ((List!59187 0))(
  ( (Nil!59063) (Cons!59063 (h!65511 Regex!14151) (t!372188 List!59187)) )
))
(declare-datatypes ((Context!7070 0))(
  ( (Context!7071 (exprs!4035 List!59187)) )
))
(declare-fun z!4463 () (InoxSet Context!7070))

(assert (=> start!539096 (= condSetEmpty!29798 (= z!4463 ((as const (Array Context!7070 Bool)) false)))))

(declare-fun setRes!29797 () Bool)

(assert (=> start!539096 setRes!29797))

(declare-fun e!3187996 () Bool)

(assert (=> start!539096 e!3187996))

(declare-fun condSetEmpty!29797 () Bool)

(declare-fun baseZ!46 () (InoxSet Context!7070))

(assert (=> start!539096 (= condSetEmpty!29797 (= baseZ!46 ((as const (Array Context!7070 Bool)) false)))))

(declare-fun setRes!29798 () Bool)

(assert (=> start!539096 setRes!29798))

(declare-fun e!3188000 () Bool)

(assert (=> start!539096 e!3188000))

(declare-fun b!5111488 () Bool)

(declare-fun res!2175733 () Bool)

(declare-fun e!3187995 () Bool)

(assert (=> b!5111488 (=> res!2175733 e!3187995)))

(declare-fun lostCauseZipper!1037 ((InoxSet Context!7070)) Bool)

(assert (=> b!5111488 (= res!2175733 (lostCauseZipper!1037 z!4463))))

(declare-fun b!5111489 () Bool)

(declare-fun res!2175735 () Bool)

(assert (=> b!5111489 (=> res!2175735 e!3187995)))

(declare-fun derivationZipper!50 ((InoxSet Context!7070) List!59186) (InoxSet Context!7070))

(assert (=> b!5111489 (= res!2175735 (not (= (derivationZipper!50 baseZ!46 testedP!265) z!4463)))))

(declare-fun setElem!29797 () Context!7070)

(declare-fun setNonEmpty!29797 () Bool)

(declare-fun e!3187998 () Bool)

(declare-fun tp!1426216 () Bool)

(declare-fun inv!78558 (Context!7070) Bool)

(assert (=> setNonEmpty!29797 (= setRes!29798 (and tp!1426216 (inv!78558 setElem!29797) e!3187998))))

(declare-fun setRest!29798 () (InoxSet Context!7070))

(assert (=> setNonEmpty!29797 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7070 Bool)) false) setElem!29797 true) setRest!29798))))

(declare-fun b!5111490 () Bool)

(declare-fun e!3187993 () Bool)

(assert (=> b!5111490 (= e!3187997 e!3187993)))

(declare-fun res!2175738 () Bool)

(assert (=> b!5111490 (=> (not res!2175738) (not e!3187993))))

(declare-fun lt!2105089 () Int)

(declare-fun lt!2105097 () Int)

(assert (=> b!5111490 (= res!2175738 (>= lt!2105089 lt!2105097))))

(declare-fun size!39457 (List!59186) Int)

(assert (=> b!5111490 (= lt!2105097 (size!39457 testedP!265))))

(declare-fun knownP!20 () List!59186)

(assert (=> b!5111490 (= lt!2105089 (size!39457 knownP!20))))

(declare-fun b!5111491 () Bool)

(declare-fun tp!1426220 () Bool)

(assert (=> b!5111491 (= e!3187998 tp!1426220)))

(declare-fun setIsEmpty!29797 () Bool)

(assert (=> setIsEmpty!29797 setRes!29797))

(declare-fun e!3187994 () Bool)

(declare-fun tp!1426217 () Bool)

(declare-fun setNonEmpty!29798 () Bool)

(declare-fun setElem!29798 () Context!7070)

(assert (=> setNonEmpty!29798 (= setRes!29797 (and tp!1426217 (inv!78558 setElem!29798) e!3187994))))

(declare-fun setRest!29797 () (InoxSet Context!7070))

(assert (=> setNonEmpty!29798 (= z!4463 ((_ map or) (store ((as const (Array Context!7070 Bool)) false) setElem!29798 true) setRest!29797))))

(declare-fun b!5111492 () Bool)

(declare-fun e!3187999 () Bool)

(assert (=> b!5111492 (= e!3187995 e!3187999)))

(declare-fun res!2175736 () Bool)

(assert (=> b!5111492 (=> res!2175736 e!3187999)))

(declare-fun lt!2105093 () Int)

(assert (=> b!5111492 (= res!2175736 (>= lt!2105097 lt!2105093))))

(assert (=> b!5111492 (= lt!2105093 (size!39457 input!5745))))

(declare-fun b!5111493 () Bool)

(declare-fun tp_is_empty!37575 () Bool)

(declare-fun tp!1426221 () Bool)

(assert (=> b!5111493 (= e!3188001 (and tp_is_empty!37575 tp!1426221))))

(declare-fun b!5111494 () Bool)

(declare-fun tp!1426219 () Bool)

(assert (=> b!5111494 (= e!3187996 (and tp_is_empty!37575 tp!1426219))))

(declare-fun b!5111495 () Bool)

(declare-fun res!2175734 () Bool)

(assert (=> b!5111495 (=> res!2175734 e!3187995)))

(assert (=> b!5111495 (= res!2175734 (= lt!2105097 lt!2105089))))

(declare-fun b!5111496 () Bool)

(assert (=> b!5111496 (= e!3187993 (not e!3187995))))

(declare-fun res!2175739 () Bool)

(assert (=> b!5111496 (=> res!2175739 e!3187995)))

(declare-fun matchZipper!819 ((InoxSet Context!7070) List!59186) Bool)

(declare-fun getSuffix!3230 (List!59186 List!59186) List!59186)

(assert (=> b!5111496 (= res!2175739 (not (matchZipper!819 z!4463 (getSuffix!3230 knownP!20 testedP!265))))))

(assert (=> b!5111496 (isPrefix!5556 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150167 0))(
  ( (Unit!150168) )
))
(declare-fun lt!2105094 () Unit!150167)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!693 (List!59186 List!59186 List!59186) Unit!150167)

(assert (=> b!5111496 (= lt!2105094 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!693 knownP!20 testedP!265 input!5745))))

(declare-fun b!5111497 () Bool)

(assert (=> b!5111497 (= e!3187999 (>= lt!2105093 lt!2105089))))

(declare-fun lt!2105092 () List!59186)

(declare-fun lt!2105096 () List!59186)

(assert (=> b!5111497 (= lt!2105092 (getSuffix!3230 knownP!20 lt!2105096))))

(assert (=> b!5111497 (isPrefix!5556 lt!2105096 knownP!20)))

(declare-fun lt!2105091 () Unit!150167)

(assert (=> b!5111497 (= lt!2105091 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!693 knownP!20 lt!2105096 input!5745))))

(declare-fun lt!2105090 () C!28568)

(declare-fun derivationStepZipper!786 ((InoxSet Context!7070) C!28568) (InoxSet Context!7070))

(assert (=> b!5111497 (= (derivationZipper!50 baseZ!46 lt!2105096) (derivationStepZipper!786 z!4463 lt!2105090))))

(declare-fun lt!2105098 () Unit!150167)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!11 ((InoxSet Context!7070) (InoxSet Context!7070) List!59186 C!28568) Unit!150167)

(assert (=> b!5111497 (= lt!2105098 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!11 baseZ!46 z!4463 testedP!265 lt!2105090))))

(assert (=> b!5111497 (isPrefix!5556 lt!2105096 input!5745)))

(declare-fun lt!2105095 () Unit!150167)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!946 (List!59186 List!59186) Unit!150167)

(assert (=> b!5111497 (= lt!2105095 (lemmaAddHeadSuffixToPrefixStillPrefix!946 testedP!265 input!5745))))

(declare-fun ++!12976 (List!59186 List!59186) List!59186)

(assert (=> b!5111497 (= lt!2105096 (++!12976 testedP!265 (Cons!59062 lt!2105090 Nil!59062)))))

(declare-fun head!10879 (List!59186) C!28568)

(assert (=> b!5111497 (= lt!2105090 (head!10879 (getSuffix!3230 input!5745 testedP!265)))))

(declare-fun b!5111498 () Bool)

(declare-fun res!2175732 () Bool)

(assert (=> b!5111498 (=> (not res!2175732) (not e!3187997))))

(assert (=> b!5111498 (= res!2175732 (isPrefix!5556 knownP!20 input!5745))))

(declare-fun setIsEmpty!29798 () Bool)

(assert (=> setIsEmpty!29798 setRes!29798))

(declare-fun b!5111499 () Bool)

(declare-fun tp!1426215 () Bool)

(assert (=> b!5111499 (= e!3188000 (and tp_is_empty!37575 tp!1426215))))

(declare-fun b!5111500 () Bool)

(declare-fun res!2175737 () Bool)

(assert (=> b!5111500 (=> (not res!2175737) (not e!3187993))))

(assert (=> b!5111500 (= res!2175737 (matchZipper!819 baseZ!46 knownP!20))))

(declare-fun b!5111501 () Bool)

(declare-fun tp!1426218 () Bool)

(assert (=> b!5111501 (= e!3187994 tp!1426218)))

(assert (= (and start!539096 res!2175740) b!5111498))

(assert (= (and b!5111498 res!2175732) b!5111490))

(assert (= (and b!5111490 res!2175738) b!5111500))

(assert (= (and b!5111500 res!2175737) b!5111496))

(assert (= (and b!5111496 (not res!2175739)) b!5111489))

(assert (= (and b!5111489 (not res!2175735)) b!5111488))

(assert (= (and b!5111488 (not res!2175733)) b!5111495))

(assert (= (and b!5111495 (not res!2175734)) b!5111492))

(assert (= (and b!5111492 (not res!2175736)) b!5111497))

(get-info :version)

(assert (= (and start!539096 ((_ is Cons!59062) input!5745)) b!5111493))

(assert (= (and start!539096 condSetEmpty!29798) setIsEmpty!29797))

(assert (= (and start!539096 (not condSetEmpty!29798)) setNonEmpty!29798))

(assert (= setNonEmpty!29798 b!5111501))

(assert (= (and start!539096 ((_ is Cons!59062) testedP!265)) b!5111494))

(assert (= (and start!539096 condSetEmpty!29797) setIsEmpty!29798))

(assert (= (and start!539096 (not condSetEmpty!29797)) setNonEmpty!29797))

(assert (= setNonEmpty!29797 b!5111491))

(assert (= (and start!539096 ((_ is Cons!59062) knownP!20)) b!5111499))

(declare-fun m!6168984 () Bool)

(assert (=> setNonEmpty!29797 m!6168984))

(declare-fun m!6168986 () Bool)

(assert (=> b!5111500 m!6168986))

(declare-fun m!6168988 () Bool)

(assert (=> b!5111490 m!6168988))

(declare-fun m!6168990 () Bool)

(assert (=> b!5111490 m!6168990))

(declare-fun m!6168992 () Bool)

(assert (=> b!5111489 m!6168992))

(declare-fun m!6168994 () Bool)

(assert (=> b!5111497 m!6168994))

(declare-fun m!6168996 () Bool)

(assert (=> b!5111497 m!6168996))

(declare-fun m!6168998 () Bool)

(assert (=> b!5111497 m!6168998))

(declare-fun m!6169000 () Bool)

(assert (=> b!5111497 m!6169000))

(declare-fun m!6169002 () Bool)

(assert (=> b!5111497 m!6169002))

(declare-fun m!6169004 () Bool)

(assert (=> b!5111497 m!6169004))

(declare-fun m!6169006 () Bool)

(assert (=> b!5111497 m!6169006))

(declare-fun m!6169008 () Bool)

(assert (=> b!5111497 m!6169008))

(declare-fun m!6169010 () Bool)

(assert (=> b!5111497 m!6169010))

(declare-fun m!6169012 () Bool)

(assert (=> b!5111497 m!6169012))

(assert (=> b!5111497 m!6168994))

(declare-fun m!6169014 () Bool)

(assert (=> b!5111497 m!6169014))

(declare-fun m!6169016 () Bool)

(assert (=> setNonEmpty!29798 m!6169016))

(declare-fun m!6169018 () Bool)

(assert (=> b!5111498 m!6169018))

(declare-fun m!6169020 () Bool)

(assert (=> b!5111488 m!6169020))

(declare-fun m!6169022 () Bool)

(assert (=> b!5111496 m!6169022))

(assert (=> b!5111496 m!6169022))

(declare-fun m!6169024 () Bool)

(assert (=> b!5111496 m!6169024))

(declare-fun m!6169026 () Bool)

(assert (=> b!5111496 m!6169026))

(declare-fun m!6169028 () Bool)

(assert (=> b!5111496 m!6169028))

(declare-fun m!6169030 () Bool)

(assert (=> start!539096 m!6169030))

(declare-fun m!6169032 () Bool)

(assert (=> b!5111492 m!6169032))

(check-sat (not b!5111488) (not b!5111500) (not b!5111489) (not start!539096) (not b!5111499) tp_is_empty!37575 (not b!5111494) (not b!5111490) (not b!5111498) (not b!5111491) (not b!5111492) (not b!5111497) (not b!5111501) (not b!5111493) (not setNonEmpty!29798) (not b!5111496) (not setNonEmpty!29797))
(check-sat)
(get-model)

(declare-fun d!1651907 () Bool)

(declare-fun c!878142 () Bool)

(declare-fun isEmpty!31863 (List!59186) Bool)

(assert (=> d!1651907 (= c!878142 (isEmpty!31863 knownP!20))))

(declare-fun e!3188004 () Bool)

(assert (=> d!1651907 (= (matchZipper!819 baseZ!46 knownP!20) e!3188004)))

(declare-fun b!5111506 () Bool)

(declare-fun nullableZipper!991 ((InoxSet Context!7070)) Bool)

(assert (=> b!5111506 (= e!3188004 (nullableZipper!991 baseZ!46))))

(declare-fun b!5111507 () Bool)

(declare-fun tail!10023 (List!59186) List!59186)

(assert (=> b!5111507 (= e!3188004 (matchZipper!819 (derivationStepZipper!786 baseZ!46 (head!10879 knownP!20)) (tail!10023 knownP!20)))))

(assert (= (and d!1651907 c!878142) b!5111506))

(assert (= (and d!1651907 (not c!878142)) b!5111507))

(declare-fun m!6169034 () Bool)

(assert (=> d!1651907 m!6169034))

(declare-fun m!6169036 () Bool)

(assert (=> b!5111506 m!6169036))

(declare-fun m!6169038 () Bool)

(assert (=> b!5111507 m!6169038))

(assert (=> b!5111507 m!6169038))

(declare-fun m!6169040 () Bool)

(assert (=> b!5111507 m!6169040))

(declare-fun m!6169042 () Bool)

(assert (=> b!5111507 m!6169042))

(assert (=> b!5111507 m!6169040))

(assert (=> b!5111507 m!6169042))

(declare-fun m!6169044 () Bool)

(assert (=> b!5111507 m!6169044))

(assert (=> b!5111500 d!1651907))

(declare-fun bs!1192070 () Bool)

(declare-fun b!5111512 () Bool)

(declare-fun d!1651909 () Bool)

(assert (= bs!1192070 (and b!5111512 d!1651909)))

(declare-fun lambda!250408 () Int)

(declare-fun lambda!250407 () Int)

(assert (=> bs!1192070 (not (= lambda!250408 lambda!250407))))

(declare-fun bs!1192071 () Bool)

(declare-fun b!5111513 () Bool)

(assert (= bs!1192071 (and b!5111513 d!1651909)))

(declare-fun lambda!250409 () Int)

(assert (=> bs!1192071 (not (= lambda!250409 lambda!250407))))

(declare-fun bs!1192072 () Bool)

(assert (= bs!1192072 (and b!5111513 b!5111512)))

(assert (=> bs!1192072 (= lambda!250409 lambda!250408)))

(declare-fun call!356395 () Bool)

(declare-datatypes ((List!59188 0))(
  ( (Nil!59064) (Cons!59064 (h!65512 Context!7070) (t!372189 List!59188)) )
))
(declare-fun lt!2105118 () List!59188)

(declare-fun lt!2105121 () List!59188)

(declare-fun bm!356390 () Bool)

(declare-fun c!878153 () Bool)

(declare-fun exists!1439 (List!59188 Int) Bool)

(assert (=> bm!356390 (= call!356395 (exists!1439 (ite c!878153 lt!2105118 lt!2105121) (ite c!878153 lambda!250408 lambda!250409)))))

(declare-fun bm!356389 () Bool)

(declare-fun call!356394 () List!59188)

(declare-fun toList!8228 ((InoxSet Context!7070)) List!59188)

(assert (=> bm!356389 (= call!356394 (toList!8228 z!4463))))

(declare-fun e!3188011 () Unit!150167)

(declare-fun Unit!150169 () Unit!150167)

(assert (=> b!5111513 (= e!3188011 Unit!150169)))

(assert (=> b!5111513 (= lt!2105121 call!356394)))

(declare-fun lt!2105122 () Unit!150167)

(declare-fun lemmaForallThenNotExists!285 (List!59188 Int) Unit!150167)

(assert (=> b!5111513 (= lt!2105122 (lemmaForallThenNotExists!285 lt!2105121 lambda!250407))))

(assert (=> b!5111513 (not call!356395)))

(declare-fun lt!2105116 () Unit!150167)

(assert (=> b!5111513 (= lt!2105116 lt!2105122)))

(declare-fun Unit!150170 () Unit!150167)

(assert (=> b!5111512 (= e!3188011 Unit!150170)))

(assert (=> b!5111512 (= lt!2105118 call!356394)))

(declare-fun lt!2105117 () Unit!150167)

(declare-fun lemmaNotForallThenExists!302 (List!59188 Int) Unit!150167)

(assert (=> b!5111512 (= lt!2105117 (lemmaNotForallThenExists!302 lt!2105118 lambda!250407))))

(assert (=> b!5111512 call!356395))

(declare-fun lt!2105120 () Unit!150167)

(assert (=> b!5111512 (= lt!2105120 lt!2105117)))

(declare-fun lt!2105119 () Bool)

(declare-datatypes ((Option!14662 0))(
  ( (None!14661) (Some!14661 (v!50674 List!59186)) )
))
(declare-fun isEmpty!31864 (Option!14662) Bool)

(declare-fun getLanguageWitness!779 ((InoxSet Context!7070)) Option!14662)

(assert (=> d!1651909 (= lt!2105119 (isEmpty!31864 (getLanguageWitness!779 z!4463)))))

(declare-fun forall!13538 ((InoxSet Context!7070) Int) Bool)

(assert (=> d!1651909 (= lt!2105119 (forall!13538 z!4463 lambda!250407))))

(declare-fun lt!2105115 () Unit!150167)

(assert (=> d!1651909 (= lt!2105115 e!3188011)))

(assert (=> d!1651909 (= c!878153 (not (forall!13538 z!4463 lambda!250407)))))

(assert (=> d!1651909 (= (lostCauseZipper!1037 z!4463) lt!2105119)))

(assert (= (and d!1651909 c!878153) b!5111512))

(assert (= (and d!1651909 (not c!878153)) b!5111513))

(assert (= (or b!5111512 b!5111513) bm!356389))

(assert (= (or b!5111512 b!5111513) bm!356390))

(declare-fun m!6169046 () Bool)

(assert (=> b!5111513 m!6169046))

(declare-fun m!6169048 () Bool)

(assert (=> d!1651909 m!6169048))

(assert (=> d!1651909 m!6169048))

(declare-fun m!6169050 () Bool)

(assert (=> d!1651909 m!6169050))

(declare-fun m!6169052 () Bool)

(assert (=> d!1651909 m!6169052))

(assert (=> d!1651909 m!6169052))

(declare-fun m!6169054 () Bool)

(assert (=> bm!356390 m!6169054))

(declare-fun m!6169056 () Bool)

(assert (=> bm!356389 m!6169056))

(declare-fun m!6169058 () Bool)

(assert (=> b!5111512 m!6169058))

(assert (=> b!5111488 d!1651909))

(declare-fun d!1651913 () Bool)

(declare-fun c!878154 () Bool)

(assert (=> d!1651913 (= c!878154 (isEmpty!31863 (getSuffix!3230 knownP!20 testedP!265)))))

(declare-fun e!3188012 () Bool)

(assert (=> d!1651913 (= (matchZipper!819 z!4463 (getSuffix!3230 knownP!20 testedP!265)) e!3188012)))

(declare-fun b!5111514 () Bool)

(assert (=> b!5111514 (= e!3188012 (nullableZipper!991 z!4463))))

(declare-fun b!5111515 () Bool)

(assert (=> b!5111515 (= e!3188012 (matchZipper!819 (derivationStepZipper!786 z!4463 (head!10879 (getSuffix!3230 knownP!20 testedP!265))) (tail!10023 (getSuffix!3230 knownP!20 testedP!265))))))

(assert (= (and d!1651913 c!878154) b!5111514))

(assert (= (and d!1651913 (not c!878154)) b!5111515))

(assert (=> d!1651913 m!6169022))

(declare-fun m!6169060 () Bool)

(assert (=> d!1651913 m!6169060))

(declare-fun m!6169062 () Bool)

(assert (=> b!5111514 m!6169062))

(assert (=> b!5111515 m!6169022))

(declare-fun m!6169064 () Bool)

(assert (=> b!5111515 m!6169064))

(assert (=> b!5111515 m!6169064))

(declare-fun m!6169066 () Bool)

(assert (=> b!5111515 m!6169066))

(assert (=> b!5111515 m!6169022))

(declare-fun m!6169068 () Bool)

(assert (=> b!5111515 m!6169068))

(assert (=> b!5111515 m!6169066))

(assert (=> b!5111515 m!6169068))

(declare-fun m!6169070 () Bool)

(assert (=> b!5111515 m!6169070))

(assert (=> b!5111496 d!1651913))

(declare-fun d!1651915 () Bool)

(declare-fun lt!2105125 () List!59186)

(assert (=> d!1651915 (= (++!12976 testedP!265 lt!2105125) knownP!20)))

(declare-fun e!3188015 () List!59186)

(assert (=> d!1651915 (= lt!2105125 e!3188015)))

(declare-fun c!878157 () Bool)

(assert (=> d!1651915 (= c!878157 ((_ is Cons!59062) testedP!265))))

(assert (=> d!1651915 (>= (size!39457 knownP!20) (size!39457 testedP!265))))

(assert (=> d!1651915 (= (getSuffix!3230 knownP!20 testedP!265) lt!2105125)))

(declare-fun b!5111520 () Bool)

(assert (=> b!5111520 (= e!3188015 (getSuffix!3230 (tail!10023 knownP!20) (t!372187 testedP!265)))))

(declare-fun b!5111521 () Bool)

(assert (=> b!5111521 (= e!3188015 knownP!20)))

(assert (= (and d!1651915 c!878157) b!5111520))

(assert (= (and d!1651915 (not c!878157)) b!5111521))

(declare-fun m!6169072 () Bool)

(assert (=> d!1651915 m!6169072))

(assert (=> d!1651915 m!6168990))

(assert (=> d!1651915 m!6168988))

(assert (=> b!5111520 m!6169042))

(assert (=> b!5111520 m!6169042))

(declare-fun m!6169074 () Bool)

(assert (=> b!5111520 m!6169074))

(assert (=> b!5111496 d!1651915))

(declare-fun b!5111532 () Bool)

(declare-fun e!3188024 () Bool)

(assert (=> b!5111532 (= e!3188024 (isPrefix!5556 (tail!10023 testedP!265) (tail!10023 knownP!20)))))

(declare-fun b!5111531 () Bool)

(declare-fun res!2175749 () Bool)

(assert (=> b!5111531 (=> (not res!2175749) (not e!3188024))))

(assert (=> b!5111531 (= res!2175749 (= (head!10879 testedP!265) (head!10879 knownP!20)))))

(declare-fun b!5111530 () Bool)

(declare-fun e!3188023 () Bool)

(assert (=> b!5111530 (= e!3188023 e!3188024)))

(declare-fun res!2175750 () Bool)

(assert (=> b!5111530 (=> (not res!2175750) (not e!3188024))))

(assert (=> b!5111530 (= res!2175750 (not ((_ is Nil!59062) knownP!20)))))

(declare-fun d!1651917 () Bool)

(declare-fun e!3188022 () Bool)

(assert (=> d!1651917 e!3188022))

(declare-fun res!2175752 () Bool)

(assert (=> d!1651917 (=> res!2175752 e!3188022)))

(declare-fun lt!2105128 () Bool)

(assert (=> d!1651917 (= res!2175752 (not lt!2105128))))

(assert (=> d!1651917 (= lt!2105128 e!3188023)))

(declare-fun res!2175751 () Bool)

(assert (=> d!1651917 (=> res!2175751 e!3188023)))

(assert (=> d!1651917 (= res!2175751 ((_ is Nil!59062) testedP!265))))

(assert (=> d!1651917 (= (isPrefix!5556 testedP!265 knownP!20) lt!2105128)))

(declare-fun b!5111533 () Bool)

(assert (=> b!5111533 (= e!3188022 (>= (size!39457 knownP!20) (size!39457 testedP!265)))))

(assert (= (and d!1651917 (not res!2175751)) b!5111530))

(assert (= (and b!5111530 res!2175750) b!5111531))

(assert (= (and b!5111531 res!2175749) b!5111532))

(assert (= (and d!1651917 (not res!2175752)) b!5111533))

(declare-fun m!6169076 () Bool)

(assert (=> b!5111532 m!6169076))

(assert (=> b!5111532 m!6169042))

(assert (=> b!5111532 m!6169076))

(assert (=> b!5111532 m!6169042))

(declare-fun m!6169078 () Bool)

(assert (=> b!5111532 m!6169078))

(declare-fun m!6169080 () Bool)

(assert (=> b!5111531 m!6169080))

(assert (=> b!5111531 m!6169038))

(assert (=> b!5111533 m!6168990))

(assert (=> b!5111533 m!6168988))

(assert (=> b!5111496 d!1651917))

(declare-fun d!1651919 () Bool)

(assert (=> d!1651919 (isPrefix!5556 testedP!265 knownP!20)))

(declare-fun lt!2105131 () Unit!150167)

(declare-fun choose!37471 (List!59186 List!59186 List!59186) Unit!150167)

(assert (=> d!1651919 (= lt!2105131 (choose!37471 knownP!20 testedP!265 input!5745))))

(assert (=> d!1651919 (isPrefix!5556 knownP!20 input!5745)))

(assert (=> d!1651919 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!693 knownP!20 testedP!265 input!5745) lt!2105131)))

(declare-fun bs!1192073 () Bool)

(assert (= bs!1192073 d!1651919))

(assert (=> bs!1192073 m!6169026))

(declare-fun m!6169082 () Bool)

(assert (=> bs!1192073 m!6169082))

(assert (=> bs!1192073 m!6169018))

(assert (=> b!5111496 d!1651919))

(declare-fun d!1651921 () Bool)

(declare-fun lambda!250412 () Int)

(declare-fun forall!13539 (List!59187 Int) Bool)

(assert (=> d!1651921 (= (inv!78558 setElem!29798) (forall!13539 (exprs!4035 setElem!29798) lambda!250412))))

(declare-fun bs!1192074 () Bool)

(assert (= bs!1192074 d!1651921))

(declare-fun m!6169084 () Bool)

(assert (=> bs!1192074 m!6169084))

(assert (=> setNonEmpty!29798 d!1651921))

(declare-fun d!1651923 () Bool)

(declare-fun c!878160 () Bool)

(assert (=> d!1651923 (= c!878160 ((_ is Cons!59062) testedP!265))))

(declare-fun e!3188027 () (InoxSet Context!7070))

(assert (=> d!1651923 (= (derivationZipper!50 baseZ!46 testedP!265) e!3188027)))

(declare-fun b!5111538 () Bool)

(assert (=> b!5111538 (= e!3188027 (derivationZipper!50 (derivationStepZipper!786 baseZ!46 (h!65510 testedP!265)) (t!372187 testedP!265)))))

(declare-fun b!5111539 () Bool)

(assert (=> b!5111539 (= e!3188027 baseZ!46)))

(assert (= (and d!1651923 c!878160) b!5111538))

(assert (= (and d!1651923 (not c!878160)) b!5111539))

(declare-fun m!6169086 () Bool)

(assert (=> b!5111538 m!6169086))

(assert (=> b!5111538 m!6169086))

(declare-fun m!6169088 () Bool)

(assert (=> b!5111538 m!6169088))

(assert (=> b!5111489 d!1651923))

(declare-fun d!1651925 () Bool)

(declare-fun lt!2105132 () List!59186)

(assert (=> d!1651925 (= (++!12976 testedP!265 lt!2105132) input!5745)))

(declare-fun e!3188028 () List!59186)

(assert (=> d!1651925 (= lt!2105132 e!3188028)))

(declare-fun c!878161 () Bool)

(assert (=> d!1651925 (= c!878161 ((_ is Cons!59062) testedP!265))))

(assert (=> d!1651925 (>= (size!39457 input!5745) (size!39457 testedP!265))))

(assert (=> d!1651925 (= (getSuffix!3230 input!5745 testedP!265) lt!2105132)))

(declare-fun b!5111540 () Bool)

(assert (=> b!5111540 (= e!3188028 (getSuffix!3230 (tail!10023 input!5745) (t!372187 testedP!265)))))

(declare-fun b!5111541 () Bool)

(assert (=> b!5111541 (= e!3188028 input!5745)))

(assert (= (and d!1651925 c!878161) b!5111540))

(assert (= (and d!1651925 (not c!878161)) b!5111541))

(declare-fun m!6169090 () Bool)

(assert (=> d!1651925 m!6169090))

(assert (=> d!1651925 m!6169032))

(assert (=> d!1651925 m!6168988))

(declare-fun m!6169092 () Bool)

(assert (=> b!5111540 m!6169092))

(assert (=> b!5111540 m!6169092))

(declare-fun m!6169094 () Bool)

(assert (=> b!5111540 m!6169094))

(assert (=> b!5111497 d!1651925))

(declare-fun b!5111544 () Bool)

(declare-fun e!3188031 () Bool)

(assert (=> b!5111544 (= e!3188031 (isPrefix!5556 (tail!10023 lt!2105096) (tail!10023 input!5745)))))

(declare-fun b!5111543 () Bool)

(declare-fun res!2175753 () Bool)

(assert (=> b!5111543 (=> (not res!2175753) (not e!3188031))))

(assert (=> b!5111543 (= res!2175753 (= (head!10879 lt!2105096) (head!10879 input!5745)))))

(declare-fun b!5111542 () Bool)

(declare-fun e!3188030 () Bool)

(assert (=> b!5111542 (= e!3188030 e!3188031)))

(declare-fun res!2175754 () Bool)

(assert (=> b!5111542 (=> (not res!2175754) (not e!3188031))))

(assert (=> b!5111542 (= res!2175754 (not ((_ is Nil!59062) input!5745)))))

(declare-fun d!1651927 () Bool)

(declare-fun e!3188029 () Bool)

(assert (=> d!1651927 e!3188029))

(declare-fun res!2175756 () Bool)

(assert (=> d!1651927 (=> res!2175756 e!3188029)))

(declare-fun lt!2105133 () Bool)

(assert (=> d!1651927 (= res!2175756 (not lt!2105133))))

(assert (=> d!1651927 (= lt!2105133 e!3188030)))

(declare-fun res!2175755 () Bool)

(assert (=> d!1651927 (=> res!2175755 e!3188030)))

(assert (=> d!1651927 (= res!2175755 ((_ is Nil!59062) lt!2105096))))

(assert (=> d!1651927 (= (isPrefix!5556 lt!2105096 input!5745) lt!2105133)))

(declare-fun b!5111545 () Bool)

(assert (=> b!5111545 (= e!3188029 (>= (size!39457 input!5745) (size!39457 lt!2105096)))))

(assert (= (and d!1651927 (not res!2175755)) b!5111542))

(assert (= (and b!5111542 res!2175754) b!5111543))

(assert (= (and b!5111543 res!2175753) b!5111544))

(assert (= (and d!1651927 (not res!2175756)) b!5111545))

(declare-fun m!6169096 () Bool)

(assert (=> b!5111544 m!6169096))

(assert (=> b!5111544 m!6169092))

(assert (=> b!5111544 m!6169096))

(assert (=> b!5111544 m!6169092))

(declare-fun m!6169098 () Bool)

(assert (=> b!5111544 m!6169098))

(declare-fun m!6169100 () Bool)

(assert (=> b!5111543 m!6169100))

(declare-fun m!6169102 () Bool)

(assert (=> b!5111543 m!6169102))

(assert (=> b!5111545 m!6169032))

(declare-fun m!6169104 () Bool)

(assert (=> b!5111545 m!6169104))

(assert (=> b!5111497 d!1651927))

(declare-fun d!1651929 () Bool)

(declare-fun c!878162 () Bool)

(assert (=> d!1651929 (= c!878162 ((_ is Cons!59062) lt!2105096))))

(declare-fun e!3188032 () (InoxSet Context!7070))

(assert (=> d!1651929 (= (derivationZipper!50 baseZ!46 lt!2105096) e!3188032)))

(declare-fun b!5111546 () Bool)

(assert (=> b!5111546 (= e!3188032 (derivationZipper!50 (derivationStepZipper!786 baseZ!46 (h!65510 lt!2105096)) (t!372187 lt!2105096)))))

(declare-fun b!5111547 () Bool)

(assert (=> b!5111547 (= e!3188032 baseZ!46)))

(assert (= (and d!1651929 c!878162) b!5111546))

(assert (= (and d!1651929 (not c!878162)) b!5111547))

(declare-fun m!6169106 () Bool)

(assert (=> b!5111546 m!6169106))

(assert (=> b!5111546 m!6169106))

(declare-fun m!6169108 () Bool)

(assert (=> b!5111546 m!6169108))

(assert (=> b!5111497 d!1651929))

(declare-fun d!1651931 () Bool)

(assert (=> d!1651931 (= (derivationZipper!50 baseZ!46 (++!12976 testedP!265 (Cons!59062 lt!2105090 Nil!59062))) (derivationStepZipper!786 z!4463 lt!2105090))))

(declare-fun lt!2105136 () Unit!150167)

(declare-fun choose!37472 ((InoxSet Context!7070) (InoxSet Context!7070) List!59186 C!28568) Unit!150167)

(assert (=> d!1651931 (= lt!2105136 (choose!37472 baseZ!46 z!4463 testedP!265 lt!2105090))))

(assert (=> d!1651931 (= (derivationZipper!50 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1651931 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!11 baseZ!46 z!4463 testedP!265 lt!2105090) lt!2105136)))

(declare-fun bs!1192076 () Bool)

(assert (= bs!1192076 d!1651931))

(assert (=> bs!1192076 m!6169006))

(declare-fun m!6169112 () Bool)

(assert (=> bs!1192076 m!6169112))

(assert (=> bs!1192076 m!6169008))

(assert (=> bs!1192076 m!6168992))

(assert (=> bs!1192076 m!6169008))

(declare-fun m!6169114 () Bool)

(assert (=> bs!1192076 m!6169114))

(assert (=> b!5111497 d!1651931))

(declare-fun d!1651935 () Bool)

(declare-fun lt!2105137 () List!59186)

(assert (=> d!1651935 (= (++!12976 lt!2105096 lt!2105137) knownP!20)))

(declare-fun e!3188033 () List!59186)

(assert (=> d!1651935 (= lt!2105137 e!3188033)))

(declare-fun c!878164 () Bool)

(assert (=> d!1651935 (= c!878164 ((_ is Cons!59062) lt!2105096))))

(assert (=> d!1651935 (>= (size!39457 knownP!20) (size!39457 lt!2105096))))

(assert (=> d!1651935 (= (getSuffix!3230 knownP!20 lt!2105096) lt!2105137)))

(declare-fun b!5111548 () Bool)

(assert (=> b!5111548 (= e!3188033 (getSuffix!3230 (tail!10023 knownP!20) (t!372187 lt!2105096)))))

(declare-fun b!5111549 () Bool)

(assert (=> b!5111549 (= e!3188033 knownP!20)))

(assert (= (and d!1651935 c!878164) b!5111548))

(assert (= (and d!1651935 (not c!878164)) b!5111549))

(declare-fun m!6169116 () Bool)

(assert (=> d!1651935 m!6169116))

(assert (=> d!1651935 m!6168990))

(assert (=> d!1651935 m!6169104))

(assert (=> b!5111548 m!6169042))

(assert (=> b!5111548 m!6169042))

(declare-fun m!6169118 () Bool)

(assert (=> b!5111548 m!6169118))

(assert (=> b!5111497 d!1651935))

(declare-fun b!5111552 () Bool)

(declare-fun e!3188036 () Bool)

(assert (=> b!5111552 (= e!3188036 (isPrefix!5556 (tail!10023 lt!2105096) (tail!10023 knownP!20)))))

(declare-fun b!5111551 () Bool)

(declare-fun res!2175757 () Bool)

(assert (=> b!5111551 (=> (not res!2175757) (not e!3188036))))

(assert (=> b!5111551 (= res!2175757 (= (head!10879 lt!2105096) (head!10879 knownP!20)))))

(declare-fun b!5111550 () Bool)

(declare-fun e!3188035 () Bool)

(assert (=> b!5111550 (= e!3188035 e!3188036)))

(declare-fun res!2175758 () Bool)

(assert (=> b!5111550 (=> (not res!2175758) (not e!3188036))))

(assert (=> b!5111550 (= res!2175758 (not ((_ is Nil!59062) knownP!20)))))

(declare-fun d!1651937 () Bool)

(declare-fun e!3188034 () Bool)

(assert (=> d!1651937 e!3188034))

(declare-fun res!2175760 () Bool)

(assert (=> d!1651937 (=> res!2175760 e!3188034)))

(declare-fun lt!2105138 () Bool)

(assert (=> d!1651937 (= res!2175760 (not lt!2105138))))

(assert (=> d!1651937 (= lt!2105138 e!3188035)))

(declare-fun res!2175759 () Bool)

(assert (=> d!1651937 (=> res!2175759 e!3188035)))

(assert (=> d!1651937 (= res!2175759 ((_ is Nil!59062) lt!2105096))))

(assert (=> d!1651937 (= (isPrefix!5556 lt!2105096 knownP!20) lt!2105138)))

(declare-fun b!5111553 () Bool)

(assert (=> b!5111553 (= e!3188034 (>= (size!39457 knownP!20) (size!39457 lt!2105096)))))

(assert (= (and d!1651937 (not res!2175759)) b!5111550))

(assert (= (and b!5111550 res!2175758) b!5111551))

(assert (= (and b!5111551 res!2175757) b!5111552))

(assert (= (and d!1651937 (not res!2175760)) b!5111553))

(assert (=> b!5111552 m!6169096))

(assert (=> b!5111552 m!6169042))

(assert (=> b!5111552 m!6169096))

(assert (=> b!5111552 m!6169042))

(declare-fun m!6169120 () Bool)

(assert (=> b!5111552 m!6169120))

(assert (=> b!5111551 m!6169100))

(assert (=> b!5111551 m!6169038))

(assert (=> b!5111553 m!6168990))

(assert (=> b!5111553 m!6169104))

(assert (=> b!5111497 d!1651937))

(declare-fun d!1651939 () Bool)

(assert (=> d!1651939 true))

(declare-fun lambda!250418 () Int)

(declare-fun flatMap!325 ((InoxSet Context!7070) Int) (InoxSet Context!7070))

(assert (=> d!1651939 (= (derivationStepZipper!786 z!4463 lt!2105090) (flatMap!325 z!4463 lambda!250418))))

(declare-fun bs!1192077 () Bool)

(assert (= bs!1192077 d!1651939))

(declare-fun m!6169128 () Bool)

(assert (=> bs!1192077 m!6169128))

(assert (=> b!5111497 d!1651939))

(declare-fun b!5111583 () Bool)

(declare-fun e!3188051 () List!59186)

(assert (=> b!5111583 (= e!3188051 (Cons!59062 (h!65510 testedP!265) (++!12976 (t!372187 testedP!265) (Cons!59062 lt!2105090 Nil!59062))))))

(declare-fun b!5111584 () Bool)

(declare-fun res!2175771 () Bool)

(declare-fun e!3188050 () Bool)

(assert (=> b!5111584 (=> (not res!2175771) (not e!3188050))))

(declare-fun lt!2105147 () List!59186)

(assert (=> b!5111584 (= res!2175771 (= (size!39457 lt!2105147) (+ (size!39457 testedP!265) (size!39457 (Cons!59062 lt!2105090 Nil!59062)))))))

(declare-fun b!5111585 () Bool)

(assert (=> b!5111585 (= e!3188050 (or (not (= (Cons!59062 lt!2105090 Nil!59062) Nil!59062)) (= lt!2105147 testedP!265)))))

(declare-fun b!5111582 () Bool)

(assert (=> b!5111582 (= e!3188051 (Cons!59062 lt!2105090 Nil!59062))))

(declare-fun d!1651943 () Bool)

(assert (=> d!1651943 e!3188050))

(declare-fun res!2175772 () Bool)

(assert (=> d!1651943 (=> (not res!2175772) (not e!3188050))))

(declare-fun content!10495 (List!59186) (InoxSet C!28568))

(assert (=> d!1651943 (= res!2175772 (= (content!10495 lt!2105147) ((_ map or) (content!10495 testedP!265) (content!10495 (Cons!59062 lt!2105090 Nil!59062)))))))

(assert (=> d!1651943 (= lt!2105147 e!3188051)))

(declare-fun c!878175 () Bool)

(assert (=> d!1651943 (= c!878175 ((_ is Nil!59062) testedP!265))))

(assert (=> d!1651943 (= (++!12976 testedP!265 (Cons!59062 lt!2105090 Nil!59062)) lt!2105147)))

(assert (= (and d!1651943 c!878175) b!5111582))

(assert (= (and d!1651943 (not c!878175)) b!5111583))

(assert (= (and d!1651943 res!2175772) b!5111584))

(assert (= (and b!5111584 res!2175771) b!5111585))

(declare-fun m!6169142 () Bool)

(assert (=> b!5111583 m!6169142))

(declare-fun m!6169144 () Bool)

(assert (=> b!5111584 m!6169144))

(assert (=> b!5111584 m!6168988))

(declare-fun m!6169146 () Bool)

(assert (=> b!5111584 m!6169146))

(declare-fun m!6169148 () Bool)

(assert (=> d!1651943 m!6169148))

(declare-fun m!6169150 () Bool)

(assert (=> d!1651943 m!6169150))

(declare-fun m!6169152 () Bool)

(assert (=> d!1651943 m!6169152))

(assert (=> b!5111497 d!1651943))

(declare-fun d!1651947 () Bool)

(assert (=> d!1651947 (isPrefix!5556 (++!12976 testedP!265 (Cons!59062 (head!10879 (getSuffix!3230 input!5745 testedP!265)) Nil!59062)) input!5745)))

(declare-fun lt!2105150 () Unit!150167)

(declare-fun choose!37475 (List!59186 List!59186) Unit!150167)

(assert (=> d!1651947 (= lt!2105150 (choose!37475 testedP!265 input!5745))))

(assert (=> d!1651947 (isPrefix!5556 testedP!265 input!5745)))

(assert (=> d!1651947 (= (lemmaAddHeadSuffixToPrefixStillPrefix!946 testedP!265 input!5745) lt!2105150)))

(declare-fun bs!1192079 () Bool)

(assert (= bs!1192079 d!1651947))

(declare-fun m!6169156 () Bool)

(assert (=> bs!1192079 m!6169156))

(assert (=> bs!1192079 m!6169030))

(assert (=> bs!1192079 m!6168994))

(assert (=> bs!1192079 m!6168994))

(assert (=> bs!1192079 m!6168996))

(declare-fun m!6169158 () Bool)

(assert (=> bs!1192079 m!6169158))

(declare-fun m!6169160 () Bool)

(assert (=> bs!1192079 m!6169160))

(assert (=> bs!1192079 m!6169158))

(assert (=> b!5111497 d!1651947))

(declare-fun d!1651951 () Bool)

(assert (=> d!1651951 (= (head!10879 (getSuffix!3230 input!5745 testedP!265)) (h!65510 (getSuffix!3230 input!5745 testedP!265)))))

(assert (=> b!5111497 d!1651951))

(declare-fun d!1651953 () Bool)

(assert (=> d!1651953 (isPrefix!5556 lt!2105096 knownP!20)))

(declare-fun lt!2105151 () Unit!150167)

(assert (=> d!1651953 (= lt!2105151 (choose!37471 knownP!20 lt!2105096 input!5745))))

(assert (=> d!1651953 (isPrefix!5556 knownP!20 input!5745)))

(assert (=> d!1651953 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!693 knownP!20 lt!2105096 input!5745) lt!2105151)))

(declare-fun bs!1192080 () Bool)

(assert (= bs!1192080 d!1651953))

(assert (=> bs!1192080 m!6169012))

(declare-fun m!6169162 () Bool)

(assert (=> bs!1192080 m!6169162))

(assert (=> bs!1192080 m!6169018))

(assert (=> b!5111497 d!1651953))

(declare-fun d!1651955 () Bool)

(declare-fun lt!2105156 () Int)

(assert (=> d!1651955 (>= lt!2105156 0)))

(declare-fun e!3188054 () Int)

(assert (=> d!1651955 (= lt!2105156 e!3188054)))

(declare-fun c!878181 () Bool)

(assert (=> d!1651955 (= c!878181 ((_ is Nil!59062) input!5745))))

(assert (=> d!1651955 (= (size!39457 input!5745) lt!2105156)))

(declare-fun b!5111592 () Bool)

(assert (=> b!5111592 (= e!3188054 0)))

(declare-fun b!5111593 () Bool)

(assert (=> b!5111593 (= e!3188054 (+ 1 (size!39457 (t!372187 input!5745))))))

(assert (= (and d!1651955 c!878181) b!5111592))

(assert (= (and d!1651955 (not c!878181)) b!5111593))

(declare-fun m!6169164 () Bool)

(assert (=> b!5111593 m!6169164))

(assert (=> b!5111492 d!1651955))

(declare-fun bs!1192081 () Bool)

(declare-fun d!1651957 () Bool)

(assert (= bs!1192081 (and d!1651957 d!1651921)))

(declare-fun lambda!250422 () Int)

(assert (=> bs!1192081 (= lambda!250422 lambda!250412)))

(assert (=> d!1651957 (= (inv!78558 setElem!29797) (forall!13539 (exprs!4035 setElem!29797) lambda!250422))))

(declare-fun bs!1192083 () Bool)

(assert (= bs!1192083 d!1651957))

(declare-fun m!6169168 () Bool)

(assert (=> bs!1192083 m!6169168))

(assert (=> setNonEmpty!29797 d!1651957))

(declare-fun b!5111596 () Bool)

(declare-fun e!3188057 () Bool)

(assert (=> b!5111596 (= e!3188057 (isPrefix!5556 (tail!10023 knownP!20) (tail!10023 input!5745)))))

(declare-fun b!5111595 () Bool)

(declare-fun res!2175773 () Bool)

(assert (=> b!5111595 (=> (not res!2175773) (not e!3188057))))

(assert (=> b!5111595 (= res!2175773 (= (head!10879 knownP!20) (head!10879 input!5745)))))

(declare-fun b!5111594 () Bool)

(declare-fun e!3188056 () Bool)

(assert (=> b!5111594 (= e!3188056 e!3188057)))

(declare-fun res!2175774 () Bool)

(assert (=> b!5111594 (=> (not res!2175774) (not e!3188057))))

(assert (=> b!5111594 (= res!2175774 (not ((_ is Nil!59062) input!5745)))))

(declare-fun d!1651959 () Bool)

(declare-fun e!3188055 () Bool)

(assert (=> d!1651959 e!3188055))

(declare-fun res!2175776 () Bool)

(assert (=> d!1651959 (=> res!2175776 e!3188055)))

(declare-fun lt!2105158 () Bool)

(assert (=> d!1651959 (= res!2175776 (not lt!2105158))))

(assert (=> d!1651959 (= lt!2105158 e!3188056)))

(declare-fun res!2175775 () Bool)

(assert (=> d!1651959 (=> res!2175775 e!3188056)))

(assert (=> d!1651959 (= res!2175775 ((_ is Nil!59062) knownP!20))))

(assert (=> d!1651959 (= (isPrefix!5556 knownP!20 input!5745) lt!2105158)))

(declare-fun b!5111597 () Bool)

(assert (=> b!5111597 (= e!3188055 (>= (size!39457 input!5745) (size!39457 knownP!20)))))

(assert (= (and d!1651959 (not res!2175775)) b!5111594))

(assert (= (and b!5111594 res!2175774) b!5111595))

(assert (= (and b!5111595 res!2175773) b!5111596))

(assert (= (and d!1651959 (not res!2175776)) b!5111597))

(assert (=> b!5111596 m!6169042))

(assert (=> b!5111596 m!6169092))

(assert (=> b!5111596 m!6169042))

(assert (=> b!5111596 m!6169092))

(declare-fun m!6169172 () Bool)

(assert (=> b!5111596 m!6169172))

(assert (=> b!5111595 m!6169038))

(assert (=> b!5111595 m!6169102))

(assert (=> b!5111597 m!6169032))

(assert (=> b!5111597 m!6168990))

(assert (=> b!5111498 d!1651959))

(declare-fun b!5111600 () Bool)

(declare-fun e!3188060 () Bool)

(assert (=> b!5111600 (= e!3188060 (isPrefix!5556 (tail!10023 testedP!265) (tail!10023 input!5745)))))

(declare-fun b!5111599 () Bool)

(declare-fun res!2175777 () Bool)

(assert (=> b!5111599 (=> (not res!2175777) (not e!3188060))))

(assert (=> b!5111599 (= res!2175777 (= (head!10879 testedP!265) (head!10879 input!5745)))))

(declare-fun b!5111598 () Bool)

(declare-fun e!3188059 () Bool)

(assert (=> b!5111598 (= e!3188059 e!3188060)))

(declare-fun res!2175778 () Bool)

(assert (=> b!5111598 (=> (not res!2175778) (not e!3188060))))

(assert (=> b!5111598 (= res!2175778 (not ((_ is Nil!59062) input!5745)))))

(declare-fun d!1651963 () Bool)

(declare-fun e!3188058 () Bool)

(assert (=> d!1651963 e!3188058))

(declare-fun res!2175780 () Bool)

(assert (=> d!1651963 (=> res!2175780 e!3188058)))

(declare-fun lt!2105159 () Bool)

(assert (=> d!1651963 (= res!2175780 (not lt!2105159))))

(assert (=> d!1651963 (= lt!2105159 e!3188059)))

(declare-fun res!2175779 () Bool)

(assert (=> d!1651963 (=> res!2175779 e!3188059)))

(assert (=> d!1651963 (= res!2175779 ((_ is Nil!59062) testedP!265))))

(assert (=> d!1651963 (= (isPrefix!5556 testedP!265 input!5745) lt!2105159)))

(declare-fun b!5111601 () Bool)

(assert (=> b!5111601 (= e!3188058 (>= (size!39457 input!5745) (size!39457 testedP!265)))))

(assert (= (and d!1651963 (not res!2175779)) b!5111598))

(assert (= (and b!5111598 res!2175778) b!5111599))

(assert (= (and b!5111599 res!2175777) b!5111600))

(assert (= (and d!1651963 (not res!2175780)) b!5111601))

(assert (=> b!5111600 m!6169076))

(assert (=> b!5111600 m!6169092))

(assert (=> b!5111600 m!6169076))

(assert (=> b!5111600 m!6169092))

(declare-fun m!6169174 () Bool)

(assert (=> b!5111600 m!6169174))

(assert (=> b!5111599 m!6169080))

(assert (=> b!5111599 m!6169102))

(assert (=> b!5111601 m!6169032))

(assert (=> b!5111601 m!6168988))

(assert (=> start!539096 d!1651963))

(declare-fun d!1651965 () Bool)

(declare-fun lt!2105160 () Int)

(assert (=> d!1651965 (>= lt!2105160 0)))

(declare-fun e!3188061 () Int)

(assert (=> d!1651965 (= lt!2105160 e!3188061)))

(declare-fun c!878182 () Bool)

(assert (=> d!1651965 (= c!878182 ((_ is Nil!59062) testedP!265))))

(assert (=> d!1651965 (= (size!39457 testedP!265) lt!2105160)))

(declare-fun b!5111602 () Bool)

(assert (=> b!5111602 (= e!3188061 0)))

(declare-fun b!5111603 () Bool)

(assert (=> b!5111603 (= e!3188061 (+ 1 (size!39457 (t!372187 testedP!265))))))

(assert (= (and d!1651965 c!878182) b!5111602))

(assert (= (and d!1651965 (not c!878182)) b!5111603))

(declare-fun m!6169176 () Bool)

(assert (=> b!5111603 m!6169176))

(assert (=> b!5111490 d!1651965))

(declare-fun d!1651967 () Bool)

(declare-fun lt!2105161 () Int)

(assert (=> d!1651967 (>= lt!2105161 0)))

(declare-fun e!3188062 () Int)

(assert (=> d!1651967 (= lt!2105161 e!3188062)))

(declare-fun c!878183 () Bool)

(assert (=> d!1651967 (= c!878183 ((_ is Nil!59062) knownP!20))))

(assert (=> d!1651967 (= (size!39457 knownP!20) lt!2105161)))

(declare-fun b!5111604 () Bool)

(assert (=> b!5111604 (= e!3188062 0)))

(declare-fun b!5111605 () Bool)

(assert (=> b!5111605 (= e!3188062 (+ 1 (size!39457 (t!372187 knownP!20))))))

(assert (= (and d!1651967 c!878183) b!5111604))

(assert (= (and d!1651967 (not c!878183)) b!5111605))

(declare-fun m!6169178 () Bool)

(assert (=> b!5111605 m!6169178))

(assert (=> b!5111490 d!1651967))

(declare-fun condSetEmpty!29801 () Bool)

(assert (=> setNonEmpty!29798 (= condSetEmpty!29801 (= setRest!29797 ((as const (Array Context!7070 Bool)) false)))))

(declare-fun setRes!29801 () Bool)

(assert (=> setNonEmpty!29798 (= tp!1426217 setRes!29801)))

(declare-fun setIsEmpty!29801 () Bool)

(assert (=> setIsEmpty!29801 setRes!29801))

(declare-fun setNonEmpty!29801 () Bool)

(declare-fun e!3188065 () Bool)

(declare-fun setElem!29801 () Context!7070)

(declare-fun tp!1426227 () Bool)

(assert (=> setNonEmpty!29801 (= setRes!29801 (and tp!1426227 (inv!78558 setElem!29801) e!3188065))))

(declare-fun setRest!29801 () (InoxSet Context!7070))

(assert (=> setNonEmpty!29801 (= setRest!29797 ((_ map or) (store ((as const (Array Context!7070 Bool)) false) setElem!29801 true) setRest!29801))))

(declare-fun b!5111610 () Bool)

(declare-fun tp!1426226 () Bool)

(assert (=> b!5111610 (= e!3188065 tp!1426226)))

(assert (= (and setNonEmpty!29798 condSetEmpty!29801) setIsEmpty!29801))

(assert (= (and setNonEmpty!29798 (not condSetEmpty!29801)) setNonEmpty!29801))

(assert (= setNonEmpty!29801 b!5111610))

(declare-fun m!6169182 () Bool)

(assert (=> setNonEmpty!29801 m!6169182))

(declare-fun b!5111615 () Bool)

(declare-fun e!3188068 () Bool)

(declare-fun tp!1426232 () Bool)

(declare-fun tp!1426233 () Bool)

(assert (=> b!5111615 (= e!3188068 (and tp!1426232 tp!1426233))))

(assert (=> b!5111501 (= tp!1426218 e!3188068)))

(assert (= (and b!5111501 ((_ is Cons!59063) (exprs!4035 setElem!29798))) b!5111615))

(declare-fun condSetEmpty!29802 () Bool)

(assert (=> setNonEmpty!29797 (= condSetEmpty!29802 (= setRest!29798 ((as const (Array Context!7070 Bool)) false)))))

(declare-fun setRes!29802 () Bool)

(assert (=> setNonEmpty!29797 (= tp!1426216 setRes!29802)))

(declare-fun setIsEmpty!29802 () Bool)

(assert (=> setIsEmpty!29802 setRes!29802))

(declare-fun setNonEmpty!29802 () Bool)

(declare-fun e!3188069 () Bool)

(declare-fun tp!1426235 () Bool)

(declare-fun setElem!29802 () Context!7070)

(assert (=> setNonEmpty!29802 (= setRes!29802 (and tp!1426235 (inv!78558 setElem!29802) e!3188069))))

(declare-fun setRest!29802 () (InoxSet Context!7070))

(assert (=> setNonEmpty!29802 (= setRest!29798 ((_ map or) (store ((as const (Array Context!7070 Bool)) false) setElem!29802 true) setRest!29802))))

(declare-fun b!5111616 () Bool)

(declare-fun tp!1426234 () Bool)

(assert (=> b!5111616 (= e!3188069 tp!1426234)))

(assert (= (and setNonEmpty!29797 condSetEmpty!29802) setIsEmpty!29802))

(assert (= (and setNonEmpty!29797 (not condSetEmpty!29802)) setNonEmpty!29802))

(assert (= setNonEmpty!29802 b!5111616))

(declare-fun m!6169184 () Bool)

(assert (=> setNonEmpty!29802 m!6169184))

(declare-fun b!5111621 () Bool)

(declare-fun e!3188072 () Bool)

(declare-fun tp!1426238 () Bool)

(assert (=> b!5111621 (= e!3188072 (and tp_is_empty!37575 tp!1426238))))

(assert (=> b!5111493 (= tp!1426221 e!3188072)))

(assert (= (and b!5111493 ((_ is Cons!59062) (t!372187 input!5745))) b!5111621))

(declare-fun b!5111622 () Bool)

(declare-fun e!3188073 () Bool)

(declare-fun tp!1426239 () Bool)

(assert (=> b!5111622 (= e!3188073 (and tp_is_empty!37575 tp!1426239))))

(assert (=> b!5111494 (= tp!1426219 e!3188073)))

(assert (= (and b!5111494 ((_ is Cons!59062) (t!372187 testedP!265))) b!5111622))

(declare-fun b!5111623 () Bool)

(declare-fun e!3188074 () Bool)

(declare-fun tp!1426240 () Bool)

(declare-fun tp!1426241 () Bool)

(assert (=> b!5111623 (= e!3188074 (and tp!1426240 tp!1426241))))

(assert (=> b!5111491 (= tp!1426220 e!3188074)))

(assert (= (and b!5111491 ((_ is Cons!59063) (exprs!4035 setElem!29797))) b!5111623))

(declare-fun b!5111624 () Bool)

(declare-fun e!3188075 () Bool)

(declare-fun tp!1426242 () Bool)

(assert (=> b!5111624 (= e!3188075 (and tp_is_empty!37575 tp!1426242))))

(assert (=> b!5111499 (= tp!1426215 e!3188075)))

(assert (= (and b!5111499 ((_ is Cons!59062) (t!372187 knownP!20))) b!5111624))

(check-sat (not b!5111622) (not d!1651953) (not setNonEmpty!29802) (not b!5111545) (not bm!356390) (not setNonEmpty!29801) (not d!1651919) (not b!5111610) (not b!5111605) (not bm!356389) (not b!5111600) (not b!5111533) (not b!5111514) (not b!5111596) (not b!5111551) (not b!5111616) (not d!1651921) (not d!1651925) (not b!5111624) (not b!5111552) (not d!1651931) (not d!1651939) (not b!5111601) (not b!5111595) (not b!5111546) (not d!1651913) (not d!1651915) (not b!5111597) (not b!5111583) (not b!5111593) (not b!5111540) (not b!5111506) (not b!5111543) (not b!5111513) (not b!5111515) tp_is_empty!37575 (not b!5111512) (not b!5111623) (not d!1651909) (not b!5111538) (not b!5111520) (not d!1651943) (not b!5111584) (not b!5111603) (not b!5111531) (not d!1651947) (not b!5111532) (not b!5111544) (not b!5111548) (not d!1651957) (not b!5111621) (not b!5111599) (not b!5111615) (not d!1651935) (not b!5111507) (not b!5111553) (not d!1651907))
(check-sat)
