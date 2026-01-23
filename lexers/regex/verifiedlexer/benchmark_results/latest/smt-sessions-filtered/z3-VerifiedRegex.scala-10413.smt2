; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538596 () Bool)

(assert start!538596)

(declare-fun b!5108119 () Bool)

(declare-fun res!2174315 () Bool)

(declare-fun e!3185926 () Bool)

(assert (=> b!5108119 (=> res!2174315 e!3185926)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28500 0))(
  ( (C!28501 (val!23902 Int)) )
))
(declare-datatypes ((Regex!14117 0))(
  ( (ElementMatch!14117 (c!877425 C!28500)) (Concat!22962 (regOne!28746 Regex!14117) (regTwo!28746 Regex!14117)) (EmptyExpr!14117) (Star!14117 (reg!14446 Regex!14117)) (EmptyLang!14117) (Union!14117 (regOne!28747 Regex!14117) (regTwo!28747 Regex!14117)) )
))
(declare-datatypes ((List!59104 0))(
  ( (Nil!58980) (Cons!58980 (h!65428 Regex!14117) (t!372105 List!59104)) )
))
(declare-datatypes ((Context!7002 0))(
  ( (Context!7003 (exprs!4001 List!59104)) )
))
(declare-fun z!4463 () (InoxSet Context!7002))

(declare-datatypes ((List!59105 0))(
  ( (Nil!58981) (Cons!58981 (h!65429 C!28500) (t!372106 List!59105)) )
))
(declare-fun testedP!265 () List!59105)

(declare-fun baseZ!46 () (InoxSet Context!7002))

(declare-fun derivationZipper!16 ((InoxSet Context!7002) List!59105) (InoxSet Context!7002))

(assert (=> b!5108119 (= res!2174315 (not (= (derivationZipper!16 baseZ!46 testedP!265) z!4463)))))

(declare-fun setIsEmpty!29529 () Bool)

(declare-fun setRes!29529 () Bool)

(assert (=> setIsEmpty!29529 setRes!29529))

(declare-fun setIsEmpty!29530 () Bool)

(declare-fun setRes!29530 () Bool)

(assert (=> setIsEmpty!29530 setRes!29530))

(declare-fun e!3185925 () Bool)

(declare-fun setElem!29529 () Context!7002)

(declare-fun setNonEmpty!29529 () Bool)

(declare-fun tp!1425069 () Bool)

(declare-fun inv!78473 (Context!7002) Bool)

(assert (=> setNonEmpty!29529 (= setRes!29530 (and tp!1425069 (inv!78473 setElem!29529) e!3185925))))

(declare-fun setRest!29530 () (InoxSet Context!7002))

(assert (=> setNonEmpty!29529 (= z!4463 ((_ map or) (store ((as const (Array Context!7002 Bool)) false) setElem!29529 true) setRest!29530))))

(declare-fun b!5108120 () Bool)

(declare-fun res!2174318 () Bool)

(assert (=> b!5108120 (=> res!2174318 e!3185926)))

(declare-fun lt!2103014 () Int)

(declare-fun lt!2103017 () Int)

(assert (=> b!5108120 (= res!2174318 (not (= lt!2103014 lt!2103017)))))

(declare-fun b!5108121 () Bool)

(declare-fun lt!2103020 () Int)

(assert (=> b!5108121 (= e!3185926 (>= lt!2103020 lt!2103014))))

(declare-fun input!5745 () List!59105)

(declare-fun lt!2103018 () List!59105)

(declare-fun size!39423 (List!59105) Int)

(declare-datatypes ((tuple2!63592 0))(
  ( (tuple2!63593 (_1!35099 List!59105) (_2!35099 List!59105)) )
))
(declare-fun findLongestMatchInnerZipper!177 ((InoxSet Context!7002) List!59105 Int List!59105 List!59105 Int) tuple2!63592)

(assert (=> b!5108121 (>= (size!39423 (_1!35099 (findLongestMatchInnerZipper!177 z!4463 testedP!265 lt!2103014 lt!2103018 input!5745 lt!2103020))) lt!2103014)))

(assert (=> b!5108121 (= lt!2103020 (size!39423 input!5745))))

(declare-fun getSuffix!3196 (List!59105 List!59105) List!59105)

(assert (=> b!5108121 (= lt!2103018 (getSuffix!3196 input!5745 testedP!265))))

(declare-datatypes ((Unit!150047 0))(
  ( (Unit!150048) )
))
(declare-fun lt!2103019 () Unit!150047)

(declare-fun lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!2 ((InoxSet Context!7002) (InoxSet Context!7002) List!59105 List!59105) Unit!150047)

(assert (=> b!5108121 (= lt!2103019 (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!2 baseZ!46 z!4463 input!5745 testedP!265))))

(declare-fun knownP!20 () List!59105)

(assert (=> b!5108121 (= testedP!265 knownP!20)))

(declare-fun lt!2103015 () Unit!150047)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1330 (List!59105 List!59105 List!59105) Unit!150047)

(assert (=> b!5108121 (= lt!2103015 (lemmaIsPrefixSameLengthThenSameList!1330 testedP!265 knownP!20 input!5745))))

(declare-fun b!5108122 () Bool)

(declare-fun e!3185930 () Bool)

(assert (=> b!5108122 (= e!3185930 (not e!3185926))))

(declare-fun res!2174317 () Bool)

(assert (=> b!5108122 (=> res!2174317 e!3185926)))

(declare-fun matchZipper!785 ((InoxSet Context!7002) List!59105) Bool)

(assert (=> b!5108122 (= res!2174317 (not (matchZipper!785 z!4463 (getSuffix!3196 knownP!20 testedP!265))))))

(declare-fun isPrefix!5522 (List!59105 List!59105) Bool)

(assert (=> b!5108122 (isPrefix!5522 testedP!265 knownP!20)))

(declare-fun lt!2103016 () Unit!150047)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!659 (List!59105 List!59105 List!59105) Unit!150047)

(assert (=> b!5108122 (= lt!2103016 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!659 knownP!20 testedP!265 input!5745))))

(declare-fun b!5108123 () Bool)

(declare-fun e!3185931 () Bool)

(assert (=> b!5108123 (= e!3185931 e!3185930)))

(declare-fun res!2174311 () Bool)

(assert (=> b!5108123 (=> (not res!2174311) (not e!3185930))))

(assert (=> b!5108123 (= res!2174311 (>= lt!2103017 lt!2103014))))

(assert (=> b!5108123 (= lt!2103014 (size!39423 testedP!265))))

(assert (=> b!5108123 (= lt!2103017 (size!39423 knownP!20))))

(declare-fun b!5108124 () Bool)

(declare-fun e!3185929 () Bool)

(declare-fun tp_is_empty!37507 () Bool)

(declare-fun tp!1425067 () Bool)

(assert (=> b!5108124 (= e!3185929 (and tp_is_empty!37507 tp!1425067))))

(declare-fun b!5108125 () Bool)

(declare-fun tp!1425071 () Bool)

(assert (=> b!5108125 (= e!3185925 tp!1425071)))

(declare-fun b!5108126 () Bool)

(declare-fun e!3185928 () Bool)

(declare-fun tp!1425068 () Bool)

(assert (=> b!5108126 (= e!3185928 (and tp_is_empty!37507 tp!1425068))))

(declare-fun b!5108127 () Bool)

(declare-fun res!2174312 () Bool)

(assert (=> b!5108127 (=> (not res!2174312) (not e!3185930))))

(assert (=> b!5108127 (= res!2174312 (matchZipper!785 baseZ!46 knownP!20))))

(declare-fun res!2174313 () Bool)

(assert (=> start!538596 (=> (not res!2174313) (not e!3185931))))

(assert (=> start!538596 (= res!2174313 (isPrefix!5522 testedP!265 input!5745))))

(assert (=> start!538596 e!3185931))

(assert (=> start!538596 e!3185928))

(declare-fun condSetEmpty!29529 () Bool)

(assert (=> start!538596 (= condSetEmpty!29529 (= z!4463 ((as const (Array Context!7002 Bool)) false)))))

(assert (=> start!538596 setRes!29530))

(declare-fun e!3185924 () Bool)

(assert (=> start!538596 e!3185924))

(declare-fun condSetEmpty!29530 () Bool)

(assert (=> start!538596 (= condSetEmpty!29530 (= baseZ!46 ((as const (Array Context!7002 Bool)) false)))))

(assert (=> start!538596 setRes!29529))

(assert (=> start!538596 e!3185929))

(declare-fun b!5108128 () Bool)

(declare-fun res!2174314 () Bool)

(assert (=> b!5108128 (=> res!2174314 e!3185926)))

(declare-fun lostCauseZipper!1003 ((InoxSet Context!7002)) Bool)

(assert (=> b!5108128 (= res!2174314 (lostCauseZipper!1003 z!4463))))

(declare-fun b!5108129 () Bool)

(declare-fun e!3185927 () Bool)

(declare-fun tp!1425072 () Bool)

(assert (=> b!5108129 (= e!3185927 tp!1425072)))

(declare-fun b!5108130 () Bool)

(declare-fun tp!1425070 () Bool)

(assert (=> b!5108130 (= e!3185924 (and tp_is_empty!37507 tp!1425070))))

(declare-fun setElem!29530 () Context!7002)

(declare-fun tp!1425073 () Bool)

(declare-fun setNonEmpty!29530 () Bool)

(assert (=> setNonEmpty!29530 (= setRes!29529 (and tp!1425073 (inv!78473 setElem!29530) e!3185927))))

(declare-fun setRest!29529 () (InoxSet Context!7002))

(assert (=> setNonEmpty!29530 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7002 Bool)) false) setElem!29530 true) setRest!29529))))

(declare-fun b!5108131 () Bool)

(declare-fun res!2174316 () Bool)

(assert (=> b!5108131 (=> (not res!2174316) (not e!3185931))))

(assert (=> b!5108131 (= res!2174316 (isPrefix!5522 knownP!20 input!5745))))

(assert (= (and start!538596 res!2174313) b!5108131))

(assert (= (and b!5108131 res!2174316) b!5108123))

(assert (= (and b!5108123 res!2174311) b!5108127))

(assert (= (and b!5108127 res!2174312) b!5108122))

(assert (= (and b!5108122 (not res!2174317)) b!5108119))

(assert (= (and b!5108119 (not res!2174315)) b!5108128))

(assert (= (and b!5108128 (not res!2174314)) b!5108120))

(assert (= (and b!5108120 (not res!2174318)) b!5108121))

(get-info :version)

(assert (= (and start!538596 ((_ is Cons!58981) input!5745)) b!5108126))

(assert (= (and start!538596 condSetEmpty!29529) setIsEmpty!29530))

(assert (= (and start!538596 (not condSetEmpty!29529)) setNonEmpty!29529))

(assert (= setNonEmpty!29529 b!5108125))

(assert (= (and start!538596 ((_ is Cons!58981) testedP!265)) b!5108130))

(assert (= (and start!538596 condSetEmpty!29530) setIsEmpty!29529))

(assert (= (and start!538596 (not condSetEmpty!29530)) setNonEmpty!29530))

(assert (= setNonEmpty!29530 b!5108129))

(assert (= (and start!538596 ((_ is Cons!58981) knownP!20)) b!5108124))

(declare-fun m!6165212 () Bool)

(assert (=> b!5108119 m!6165212))

(declare-fun m!6165214 () Bool)

(assert (=> b!5108123 m!6165214))

(declare-fun m!6165216 () Bool)

(assert (=> b!5108123 m!6165216))

(declare-fun m!6165218 () Bool)

(assert (=> setNonEmpty!29530 m!6165218))

(declare-fun m!6165220 () Bool)

(assert (=> b!5108127 m!6165220))

(declare-fun m!6165222 () Bool)

(assert (=> setNonEmpty!29529 m!6165222))

(declare-fun m!6165224 () Bool)

(assert (=> b!5108122 m!6165224))

(assert (=> b!5108122 m!6165224))

(declare-fun m!6165226 () Bool)

(assert (=> b!5108122 m!6165226))

(declare-fun m!6165228 () Bool)

(assert (=> b!5108122 m!6165228))

(declare-fun m!6165230 () Bool)

(assert (=> b!5108122 m!6165230))

(declare-fun m!6165232 () Bool)

(assert (=> start!538596 m!6165232))

(declare-fun m!6165234 () Bool)

(assert (=> b!5108128 m!6165234))

(declare-fun m!6165236 () Bool)

(assert (=> b!5108131 m!6165236))

(declare-fun m!6165238 () Bool)

(assert (=> b!5108121 m!6165238))

(declare-fun m!6165240 () Bool)

(assert (=> b!5108121 m!6165240))

(declare-fun m!6165242 () Bool)

(assert (=> b!5108121 m!6165242))

(declare-fun m!6165244 () Bool)

(assert (=> b!5108121 m!6165244))

(declare-fun m!6165246 () Bool)

(assert (=> b!5108121 m!6165246))

(declare-fun m!6165248 () Bool)

(assert (=> b!5108121 m!6165248))

(check-sat (not b!5108128) (not b!5108129) (not b!5108130) (not b!5108122) (not b!5108121) (not b!5108126) (not start!538596) (not b!5108123) (not setNonEmpty!29529) tp_is_empty!37507 (not b!5108125) (not b!5108124) (not b!5108119) (not b!5108131) (not b!5108127) (not setNonEmpty!29530))
(check-sat)
(get-model)

(declare-fun d!1650954 () Bool)

(declare-fun lambda!250017 () Int)

(declare-fun forall!13508 (List!59104 Int) Bool)

(assert (=> d!1650954 (= (inv!78473 setElem!29529) (forall!13508 (exprs!4001 setElem!29529) lambda!250017))))

(declare-fun bs!1191692 () Bool)

(assert (= bs!1191692 d!1650954))

(declare-fun m!6165342 () Bool)

(assert (=> bs!1191692 m!6165342))

(assert (=> setNonEmpty!29529 d!1650954))

(declare-fun d!1650974 () Bool)

(declare-fun lt!2103123 () Int)

(assert (=> d!1650974 (>= lt!2103123 0)))

(declare-fun e!3185981 () Int)

(assert (=> d!1650974 (= lt!2103123 e!3185981)))

(declare-fun c!877462 () Bool)

(assert (=> d!1650974 (= c!877462 ((_ is Nil!58981) testedP!265))))

(assert (=> d!1650974 (= (size!39423 testedP!265) lt!2103123)))

(declare-fun b!5108218 () Bool)

(assert (=> b!5108218 (= e!3185981 0)))

(declare-fun b!5108219 () Bool)

(assert (=> b!5108219 (= e!3185981 (+ 1 (size!39423 (t!372106 testedP!265))))))

(assert (= (and d!1650974 c!877462) b!5108218))

(assert (= (and d!1650974 (not c!877462)) b!5108219))

(declare-fun m!6165344 () Bool)

(assert (=> b!5108219 m!6165344))

(assert (=> b!5108123 d!1650974))

(declare-fun d!1650976 () Bool)

(declare-fun lt!2103124 () Int)

(assert (=> d!1650976 (>= lt!2103124 0)))

(declare-fun e!3185982 () Int)

(assert (=> d!1650976 (= lt!2103124 e!3185982)))

(declare-fun c!877463 () Bool)

(assert (=> d!1650976 (= c!877463 ((_ is Nil!58981) knownP!20))))

(assert (=> d!1650976 (= (size!39423 knownP!20) lt!2103124)))

(declare-fun b!5108220 () Bool)

(assert (=> b!5108220 (= e!3185982 0)))

(declare-fun b!5108221 () Bool)

(assert (=> b!5108221 (= e!3185982 (+ 1 (size!39423 (t!372106 knownP!20))))))

(assert (= (and d!1650976 c!877463) b!5108220))

(assert (= (and d!1650976 (not c!877463)) b!5108221))

(declare-fun m!6165346 () Bool)

(assert (=> b!5108221 m!6165346))

(assert (=> b!5108123 d!1650976))

(declare-fun bs!1191693 () Bool)

(declare-fun b!5108226 () Bool)

(declare-fun d!1650978 () Bool)

(assert (= bs!1191693 (and b!5108226 d!1650978)))

(declare-fun lambda!250033 () Int)

(declare-fun lambda!250032 () Int)

(assert (=> bs!1191693 (not (= lambda!250033 lambda!250032))))

(declare-fun bs!1191694 () Bool)

(declare-fun b!5108227 () Bool)

(assert (= bs!1191694 (and b!5108227 d!1650978)))

(declare-fun lambda!250036 () Int)

(assert (=> bs!1191694 (not (= lambda!250036 lambda!250032))))

(declare-fun bs!1191695 () Bool)

(assert (= bs!1191695 (and b!5108227 b!5108226)))

(assert (=> bs!1191695 (= lambda!250036 lambda!250033)))

(declare-fun e!3185989 () Unit!150047)

(declare-fun Unit!150054 () Unit!150047)

(assert (=> b!5108226 (= e!3185989 Unit!150054)))

(declare-datatypes ((List!59107 0))(
  ( (Nil!58983) (Cons!58983 (h!65431 Context!7002) (t!372108 List!59107)) )
))
(declare-fun lt!2103141 () List!59107)

(declare-fun call!356142 () List!59107)

(assert (=> b!5108226 (= lt!2103141 call!356142)))

(declare-fun lt!2103142 () Unit!150047)

(declare-fun lemmaNotForallThenExists!289 (List!59107 Int) Unit!150047)

(assert (=> b!5108226 (= lt!2103142 (lemmaNotForallThenExists!289 lt!2103141 lambda!250032))))

(declare-fun call!356143 () Bool)

(assert (=> b!5108226 call!356143))

(declare-fun lt!2103147 () Unit!150047)

(assert (=> b!5108226 (= lt!2103147 lt!2103142)))

(declare-fun Unit!150055 () Unit!150047)

(assert (=> b!5108227 (= e!3185989 Unit!150055)))

(declare-fun lt!2103148 () List!59107)

(assert (=> b!5108227 (= lt!2103148 call!356142)))

(declare-fun lt!2103143 () Unit!150047)

(declare-fun lemmaForallThenNotExists!272 (List!59107 Int) Unit!150047)

(assert (=> b!5108227 (= lt!2103143 (lemmaForallThenNotExists!272 lt!2103148 lambda!250032))))

(assert (=> b!5108227 (not call!356143)))

(declare-fun lt!2103145 () Unit!150047)

(assert (=> b!5108227 (= lt!2103145 lt!2103143)))

(declare-fun bm!356137 () Bool)

(declare-fun toList!8215 ((InoxSet Context!7002)) List!59107)

(assert (=> bm!356137 (= call!356142 (toList!8215 z!4463))))

(declare-fun bm!356138 () Bool)

(declare-fun c!877474 () Bool)

(declare-fun exists!1422 (List!59107 Int) Bool)

(assert (=> bm!356138 (= call!356143 (exists!1422 (ite c!877474 lt!2103141 lt!2103148) (ite c!877474 lambda!250033 lambda!250036)))))

(declare-fun lt!2103146 () Bool)

(declare-datatypes ((Option!14649 0))(
  ( (None!14648) (Some!14648 (v!50661 List!59105)) )
))
(declare-fun isEmpty!31837 (Option!14649) Bool)

(declare-fun getLanguageWitness!762 ((InoxSet Context!7002)) Option!14649)

(assert (=> d!1650978 (= lt!2103146 (isEmpty!31837 (getLanguageWitness!762 z!4463)))))

(declare-fun forall!13509 ((InoxSet Context!7002) Int) Bool)

(assert (=> d!1650978 (= lt!2103146 (forall!13509 z!4463 lambda!250032))))

(declare-fun lt!2103144 () Unit!150047)

(assert (=> d!1650978 (= lt!2103144 e!3185989)))

(assert (=> d!1650978 (= c!877474 (not (forall!13509 z!4463 lambda!250032)))))

(assert (=> d!1650978 (= (lostCauseZipper!1003 z!4463) lt!2103146)))

(assert (= (and d!1650978 c!877474) b!5108226))

(assert (= (and d!1650978 (not c!877474)) b!5108227))

(assert (= (or b!5108226 b!5108227) bm!356137))

(assert (= (or b!5108226 b!5108227) bm!356138))

(declare-fun m!6165348 () Bool)

(assert (=> d!1650978 m!6165348))

(assert (=> d!1650978 m!6165348))

(declare-fun m!6165350 () Bool)

(assert (=> d!1650978 m!6165350))

(declare-fun m!6165352 () Bool)

(assert (=> d!1650978 m!6165352))

(assert (=> d!1650978 m!6165352))

(declare-fun m!6165354 () Bool)

(assert (=> b!5108226 m!6165354))

(declare-fun m!6165356 () Bool)

(assert (=> bm!356138 m!6165356))

(declare-fun m!6165358 () Bool)

(assert (=> bm!356137 m!6165358))

(declare-fun m!6165360 () Bool)

(assert (=> b!5108227 m!6165360))

(assert (=> b!5108128 d!1650978))

(declare-fun d!1650980 () Bool)

(declare-fun c!877483 () Bool)

(declare-fun isEmpty!31838 (List!59105) Bool)

(assert (=> d!1650980 (= c!877483 (isEmpty!31838 knownP!20))))

(declare-fun e!3185996 () Bool)

(assert (=> d!1650980 (= (matchZipper!785 baseZ!46 knownP!20) e!3185996)))

(declare-fun b!5108232 () Bool)

(declare-fun nullableZipper!978 ((InoxSet Context!7002)) Bool)

(assert (=> b!5108232 (= e!3185996 (nullableZipper!978 baseZ!46))))

(declare-fun b!5108233 () Bool)

(declare-fun derivationStepZipper!766 ((InoxSet Context!7002) C!28500) (InoxSet Context!7002))

(declare-fun head!10855 (List!59105) C!28500)

(declare-fun tail!10010 (List!59105) List!59105)

(assert (=> b!5108233 (= e!3185996 (matchZipper!785 (derivationStepZipper!766 baseZ!46 (head!10855 knownP!20)) (tail!10010 knownP!20)))))

(assert (= (and d!1650980 c!877483) b!5108232))

(assert (= (and d!1650980 (not c!877483)) b!5108233))

(declare-fun m!6165362 () Bool)

(assert (=> d!1650980 m!6165362))

(declare-fun m!6165364 () Bool)

(assert (=> b!5108232 m!6165364))

(declare-fun m!6165366 () Bool)

(assert (=> b!5108233 m!6165366))

(assert (=> b!5108233 m!6165366))

(declare-fun m!6165368 () Bool)

(assert (=> b!5108233 m!6165368))

(declare-fun m!6165370 () Bool)

(assert (=> b!5108233 m!6165370))

(assert (=> b!5108233 m!6165368))

(assert (=> b!5108233 m!6165370))

(declare-fun m!6165372 () Bool)

(assert (=> b!5108233 m!6165372))

(assert (=> b!5108127 d!1650980))

(declare-fun d!1650982 () Bool)

(declare-fun c!877485 () Bool)

(assert (=> d!1650982 (= c!877485 (isEmpty!31838 (getSuffix!3196 knownP!20 testedP!265)))))

(declare-fun e!3185998 () Bool)

(assert (=> d!1650982 (= (matchZipper!785 z!4463 (getSuffix!3196 knownP!20 testedP!265)) e!3185998)))

(declare-fun b!5108236 () Bool)

(assert (=> b!5108236 (= e!3185998 (nullableZipper!978 z!4463))))

(declare-fun b!5108237 () Bool)

(assert (=> b!5108237 (= e!3185998 (matchZipper!785 (derivationStepZipper!766 z!4463 (head!10855 (getSuffix!3196 knownP!20 testedP!265))) (tail!10010 (getSuffix!3196 knownP!20 testedP!265))))))

(assert (= (and d!1650982 c!877485) b!5108236))

(assert (= (and d!1650982 (not c!877485)) b!5108237))

(assert (=> d!1650982 m!6165224))

(declare-fun m!6165374 () Bool)

(assert (=> d!1650982 m!6165374))

(declare-fun m!6165376 () Bool)

(assert (=> b!5108236 m!6165376))

(assert (=> b!5108237 m!6165224))

(declare-fun m!6165378 () Bool)

(assert (=> b!5108237 m!6165378))

(assert (=> b!5108237 m!6165378))

(declare-fun m!6165380 () Bool)

(assert (=> b!5108237 m!6165380))

(assert (=> b!5108237 m!6165224))

(declare-fun m!6165382 () Bool)

(assert (=> b!5108237 m!6165382))

(assert (=> b!5108237 m!6165380))

(assert (=> b!5108237 m!6165382))

(declare-fun m!6165384 () Bool)

(assert (=> b!5108237 m!6165384))

(assert (=> b!5108122 d!1650982))

(declare-fun d!1650984 () Bool)

(declare-fun lt!2103171 () List!59105)

(declare-fun ++!12948 (List!59105 List!59105) List!59105)

(assert (=> d!1650984 (= (++!12948 testedP!265 lt!2103171) knownP!20)))

(declare-fun e!3186001 () List!59105)

(assert (=> d!1650984 (= lt!2103171 e!3186001)))

(declare-fun c!877488 () Bool)

(assert (=> d!1650984 (= c!877488 ((_ is Cons!58981) testedP!265))))

(assert (=> d!1650984 (>= (size!39423 knownP!20) (size!39423 testedP!265))))

(assert (=> d!1650984 (= (getSuffix!3196 knownP!20 testedP!265) lt!2103171)))

(declare-fun b!5108242 () Bool)

(assert (=> b!5108242 (= e!3186001 (getSuffix!3196 (tail!10010 knownP!20) (t!372106 testedP!265)))))

(declare-fun b!5108243 () Bool)

(assert (=> b!5108243 (= e!3186001 knownP!20)))

(assert (= (and d!1650984 c!877488) b!5108242))

(assert (= (and d!1650984 (not c!877488)) b!5108243))

(declare-fun m!6165400 () Bool)

(assert (=> d!1650984 m!6165400))

(assert (=> d!1650984 m!6165216))

(assert (=> d!1650984 m!6165214))

(assert (=> b!5108242 m!6165370))

(assert (=> b!5108242 m!6165370))

(declare-fun m!6165402 () Bool)

(assert (=> b!5108242 m!6165402))

(assert (=> b!5108122 d!1650984))

(declare-fun d!1650988 () Bool)

(declare-fun e!3186013 () Bool)

(assert (=> d!1650988 e!3186013))

(declare-fun res!2174349 () Bool)

(assert (=> d!1650988 (=> res!2174349 e!3186013)))

(declare-fun lt!2103176 () Bool)

(assert (=> d!1650988 (= res!2174349 (not lt!2103176))))

(declare-fun e!3186014 () Bool)

(assert (=> d!1650988 (= lt!2103176 e!3186014)))

(declare-fun res!2174351 () Bool)

(assert (=> d!1650988 (=> res!2174351 e!3186014)))

(assert (=> d!1650988 (= res!2174351 ((_ is Nil!58981) testedP!265))))

(assert (=> d!1650988 (= (isPrefix!5522 testedP!265 knownP!20) lt!2103176)))

(declare-fun b!5108263 () Bool)

(assert (=> b!5108263 (= e!3186013 (>= (size!39423 knownP!20) (size!39423 testedP!265)))))

(declare-fun b!5108260 () Bool)

(declare-fun e!3186015 () Bool)

(assert (=> b!5108260 (= e!3186014 e!3186015)))

(declare-fun res!2174352 () Bool)

(assert (=> b!5108260 (=> (not res!2174352) (not e!3186015))))

(assert (=> b!5108260 (= res!2174352 (not ((_ is Nil!58981) knownP!20)))))

(declare-fun b!5108262 () Bool)

(assert (=> b!5108262 (= e!3186015 (isPrefix!5522 (tail!10010 testedP!265) (tail!10010 knownP!20)))))

(declare-fun b!5108261 () Bool)

(declare-fun res!2174350 () Bool)

(assert (=> b!5108261 (=> (not res!2174350) (not e!3186015))))

(assert (=> b!5108261 (= res!2174350 (= (head!10855 testedP!265) (head!10855 knownP!20)))))

(assert (= (and d!1650988 (not res!2174351)) b!5108260))

(assert (= (and b!5108260 res!2174352) b!5108261))

(assert (= (and b!5108261 res!2174350) b!5108262))

(assert (= (and d!1650988 (not res!2174349)) b!5108263))

(assert (=> b!5108263 m!6165216))

(assert (=> b!5108263 m!6165214))

(declare-fun m!6165422 () Bool)

(assert (=> b!5108262 m!6165422))

(assert (=> b!5108262 m!6165370))

(assert (=> b!5108262 m!6165422))

(assert (=> b!5108262 m!6165370))

(declare-fun m!6165424 () Bool)

(assert (=> b!5108262 m!6165424))

(declare-fun m!6165426 () Bool)

(assert (=> b!5108261 m!6165426))

(assert (=> b!5108261 m!6165366))

(assert (=> b!5108122 d!1650988))

(declare-fun d!1650998 () Bool)

(assert (=> d!1650998 (isPrefix!5522 testedP!265 knownP!20)))

(declare-fun lt!2103182 () Unit!150047)

(declare-fun choose!37422 (List!59105 List!59105 List!59105) Unit!150047)

(assert (=> d!1650998 (= lt!2103182 (choose!37422 knownP!20 testedP!265 input!5745))))

(assert (=> d!1650998 (isPrefix!5522 knownP!20 input!5745)))

(assert (=> d!1650998 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!659 knownP!20 testedP!265 input!5745) lt!2103182)))

(declare-fun bs!1191703 () Bool)

(assert (= bs!1191703 d!1650998))

(assert (=> bs!1191703 m!6165228))

(declare-fun m!6165432 () Bool)

(assert (=> bs!1191703 m!6165432))

(assert (=> bs!1191703 m!6165236))

(assert (=> b!5108122 d!1650998))

(declare-fun d!1651004 () Bool)

(declare-fun lt!2103183 () List!59105)

(assert (=> d!1651004 (= (++!12948 testedP!265 lt!2103183) input!5745)))

(declare-fun e!3186016 () List!59105)

(assert (=> d!1651004 (= lt!2103183 e!3186016)))

(declare-fun c!877491 () Bool)

(assert (=> d!1651004 (= c!877491 ((_ is Cons!58981) testedP!265))))

(assert (=> d!1651004 (>= (size!39423 input!5745) (size!39423 testedP!265))))

(assert (=> d!1651004 (= (getSuffix!3196 input!5745 testedP!265) lt!2103183)))

(declare-fun b!5108264 () Bool)

(assert (=> b!5108264 (= e!3186016 (getSuffix!3196 (tail!10010 input!5745) (t!372106 testedP!265)))))

(declare-fun b!5108265 () Bool)

(assert (=> b!5108265 (= e!3186016 input!5745)))

(assert (= (and d!1651004 c!877491) b!5108264))

(assert (= (and d!1651004 (not c!877491)) b!5108265))

(declare-fun m!6165434 () Bool)

(assert (=> d!1651004 m!6165434))

(assert (=> d!1651004 m!6165242))

(assert (=> d!1651004 m!6165214))

(declare-fun m!6165436 () Bool)

(assert (=> b!5108264 m!6165436))

(assert (=> b!5108264 m!6165436))

(declare-fun m!6165438 () Bool)

(assert (=> b!5108264 m!6165438))

(assert (=> b!5108121 d!1651004))

(declare-fun d!1651006 () Bool)

(assert (=> d!1651006 (>= (size!39423 (_1!35099 (findLongestMatchInnerZipper!177 z!4463 testedP!265 (size!39423 testedP!265) (getSuffix!3196 input!5745 testedP!265) input!5745 (size!39423 input!5745)))) (size!39423 testedP!265))))

(declare-fun lt!2103187 () Unit!150047)

(declare-fun choose!37423 ((InoxSet Context!7002) (InoxSet Context!7002) List!59105 List!59105) Unit!150047)

(assert (=> d!1651006 (= lt!2103187 (choose!37423 baseZ!46 z!4463 input!5745 testedP!265))))

(assert (=> d!1651006 (isPrefix!5522 testedP!265 input!5745)))

(assert (=> d!1651006 (= (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!2 baseZ!46 z!4463 input!5745 testedP!265) lt!2103187)))

(declare-fun bs!1191704 () Bool)

(assert (= bs!1191704 d!1651006))

(assert (=> bs!1191704 m!6165238))

(assert (=> bs!1191704 m!6165232))

(assert (=> bs!1191704 m!6165214))

(assert (=> bs!1191704 m!6165242))

(declare-fun m!6165450 () Bool)

(assert (=> bs!1191704 m!6165450))

(assert (=> bs!1191704 m!6165214))

(assert (=> bs!1191704 m!6165238))

(assert (=> bs!1191704 m!6165242))

(declare-fun m!6165452 () Bool)

(assert (=> bs!1191704 m!6165452))

(declare-fun m!6165454 () Bool)

(assert (=> bs!1191704 m!6165454))

(assert (=> b!5108121 d!1651006))

(declare-fun d!1651010 () Bool)

(assert (=> d!1651010 (= testedP!265 knownP!20)))

(declare-fun lt!2103190 () Unit!150047)

(declare-fun choose!37424 (List!59105 List!59105 List!59105) Unit!150047)

(assert (=> d!1651010 (= lt!2103190 (choose!37424 testedP!265 knownP!20 input!5745))))

(assert (=> d!1651010 (isPrefix!5522 testedP!265 input!5745)))

(assert (=> d!1651010 (= (lemmaIsPrefixSameLengthThenSameList!1330 testedP!265 knownP!20 input!5745) lt!2103190)))

(declare-fun bs!1191705 () Bool)

(assert (= bs!1191705 d!1651010))

(declare-fun m!6165456 () Bool)

(assert (=> bs!1191705 m!6165456))

(assert (=> bs!1191705 m!6165232))

(assert (=> b!5108121 d!1651010))

(declare-fun d!1651012 () Bool)

(declare-fun lt!2103191 () Int)

(assert (=> d!1651012 (>= lt!2103191 0)))

(declare-fun e!3186036 () Int)

(assert (=> d!1651012 (= lt!2103191 e!3186036)))

(declare-fun c!877495 () Bool)

(assert (=> d!1651012 (= c!877495 ((_ is Nil!58981) input!5745))))

(assert (=> d!1651012 (= (size!39423 input!5745) lt!2103191)))

(declare-fun b!5108295 () Bool)

(assert (=> b!5108295 (= e!3186036 0)))

(declare-fun b!5108296 () Bool)

(assert (=> b!5108296 (= e!3186036 (+ 1 (size!39423 (t!372106 input!5745))))))

(assert (= (and d!1651012 c!877495) b!5108295))

(assert (= (and d!1651012 (not c!877495)) b!5108296))

(declare-fun m!6165458 () Bool)

(assert (=> b!5108296 m!6165458))

(assert (=> b!5108121 d!1651012))

(declare-fun bm!356161 () Bool)

(declare-fun call!356172 () Unit!150047)

(declare-fun lemmaIsPrefixRefl!3698 (List!59105 List!59105) Unit!150047)

(assert (=> bm!356161 (= call!356172 (lemmaIsPrefixRefl!3698 input!5745 input!5745))))

(declare-fun bm!356162 () Bool)

(declare-fun call!356167 () C!28500)

(assert (=> bm!356162 (= call!356167 (head!10855 lt!2103018))))

(declare-fun b!5108325 () Bool)

(declare-fun c!877512 () Bool)

(declare-fun call!356171 () Bool)

(assert (=> b!5108325 (= c!877512 call!356171)))

(declare-fun lt!2103256 () Unit!150047)

(declare-fun lt!2103245 () Unit!150047)

(assert (=> b!5108325 (= lt!2103256 lt!2103245)))

(assert (=> b!5108325 (= input!5745 testedP!265)))

(declare-fun call!356173 () Unit!150047)

(assert (=> b!5108325 (= lt!2103245 call!356173)))

(declare-fun lt!2103254 () Unit!150047)

(declare-fun lt!2103260 () Unit!150047)

(assert (=> b!5108325 (= lt!2103254 lt!2103260)))

(declare-fun call!356169 () Bool)

(assert (=> b!5108325 call!356169))

(assert (=> b!5108325 (= lt!2103260 call!356172)))

(declare-fun e!3186055 () tuple2!63592)

(declare-fun e!3186053 () tuple2!63592)

(assert (=> b!5108325 (= e!3186055 e!3186053)))

(declare-fun b!5108326 () Bool)

(declare-fun e!3186059 () tuple2!63592)

(declare-fun lt!2103264 () tuple2!63592)

(assert (=> b!5108326 (= e!3186059 lt!2103264)))

(declare-fun bm!356163 () Bool)

(assert (=> bm!356163 (= call!356173 (lemmaIsPrefixSameLengthThenSameList!1330 input!5745 testedP!265 input!5745))))

(declare-fun bm!356164 () Bool)

(declare-fun call!356170 () List!59105)

(assert (=> bm!356164 (= call!356170 (tail!10010 lt!2103018))))

(declare-fun b!5108327 () Bool)

(declare-fun e!3186057 () Unit!150047)

(declare-fun Unit!150056 () Unit!150047)

(assert (=> b!5108327 (= e!3186057 Unit!150056)))

(declare-fun b!5108328 () Bool)

(declare-fun e!3186060 () tuple2!63592)

(assert (=> b!5108328 (= e!3186060 e!3186059)))

(declare-fun call!356168 () tuple2!63592)

(assert (=> b!5108328 (= lt!2103264 call!356168)))

(declare-fun c!877509 () Bool)

(assert (=> b!5108328 (= c!877509 (isEmpty!31838 (_1!35099 lt!2103264)))))

(declare-fun b!5108329 () Bool)

(declare-fun e!3186056 () tuple2!63592)

(assert (=> b!5108329 (= e!3186056 (tuple2!63593 Nil!58981 input!5745))))

(declare-fun bm!356165 () Bool)

(assert (=> bm!356165 (= call!356169 (isPrefix!5522 input!5745 input!5745))))

(declare-fun b!5108331 () Bool)

(declare-fun c!877508 () Bool)

(assert (=> b!5108331 (= c!877508 call!356171)))

(declare-fun lt!2103246 () Unit!150047)

(declare-fun lt!2103269 () Unit!150047)

(assert (=> b!5108331 (= lt!2103246 lt!2103269)))

(declare-fun lt!2103247 () List!59105)

(declare-fun lt!2103266 () C!28500)

(assert (=> b!5108331 (= (++!12948 (++!12948 testedP!265 (Cons!58981 lt!2103266 Nil!58981)) lt!2103247) input!5745)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1537 (List!59105 C!28500 List!59105 List!59105) Unit!150047)

(assert (=> b!5108331 (= lt!2103269 (lemmaMoveElementToOtherListKeepsConcatEq!1537 testedP!265 lt!2103266 lt!2103247 input!5745))))

(assert (=> b!5108331 (= lt!2103247 (tail!10010 lt!2103018))))

(assert (=> b!5108331 (= lt!2103266 (head!10855 lt!2103018))))

(declare-fun lt!2103263 () Unit!150047)

(declare-fun lt!2103251 () Unit!150047)

(assert (=> b!5108331 (= lt!2103263 lt!2103251)))

(assert (=> b!5108331 (isPrefix!5522 (++!12948 testedP!265 (Cons!58981 (head!10855 (getSuffix!3196 input!5745 testedP!265)) Nil!58981)) input!5745)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!926 (List!59105 List!59105) Unit!150047)

(assert (=> b!5108331 (= lt!2103251 (lemmaAddHeadSuffixToPrefixStillPrefix!926 testedP!265 input!5745))))

(declare-fun lt!2103252 () List!59105)

(assert (=> b!5108331 (= lt!2103252 (++!12948 testedP!265 (Cons!58981 (head!10855 lt!2103018) Nil!58981)))))

(declare-fun lt!2103259 () Unit!150047)

(assert (=> b!5108331 (= lt!2103259 e!3186057)))

(declare-fun c!877510 () Bool)

(assert (=> b!5108331 (= c!877510 (= (size!39423 testedP!265) (size!39423 input!5745)))))

(declare-fun lt!2103258 () Unit!150047)

(declare-fun lt!2103257 () Unit!150047)

(assert (=> b!5108331 (= lt!2103258 lt!2103257)))

(assert (=> b!5108331 (<= (size!39423 testedP!265) (size!39423 input!5745))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!852 (List!59105 List!59105) Unit!150047)

(assert (=> b!5108331 (= lt!2103257 (lemmaIsPrefixThenSmallerEqSize!852 testedP!265 input!5745))))

(assert (=> b!5108331 (= e!3186055 e!3186060)))

(declare-fun b!5108332 () Bool)

(assert (=> b!5108332 (= e!3186059 (tuple2!63593 testedP!265 lt!2103018))))

(declare-fun bm!356166 () Bool)

(declare-fun call!356166 () (InoxSet Context!7002))

(assert (=> bm!356166 (= call!356166 (derivationStepZipper!766 z!4463 call!356167))))

(declare-fun bm!356167 () Bool)

(assert (=> bm!356167 (= call!356168 (findLongestMatchInnerZipper!177 call!356166 lt!2103252 (+ lt!2103014 1) call!356170 input!5745 lt!2103020))))

(declare-fun b!5108333 () Bool)

(assert (=> b!5108333 (= e!3186053 (tuple2!63593 testedP!265 Nil!58981))))

(declare-fun b!5108334 () Bool)

(declare-fun Unit!150057 () Unit!150047)

(assert (=> b!5108334 (= e!3186057 Unit!150057)))

(declare-fun lt!2103250 () Unit!150047)

(assert (=> b!5108334 (= lt!2103250 call!356172)))

(assert (=> b!5108334 call!356169))

(declare-fun lt!2103261 () Unit!150047)

(assert (=> b!5108334 (= lt!2103261 lt!2103250)))

(declare-fun lt!2103262 () Unit!150047)

(assert (=> b!5108334 (= lt!2103262 call!356173)))

(assert (=> b!5108334 (= input!5745 testedP!265)))

(declare-fun lt!2103265 () Unit!150047)

(assert (=> b!5108334 (= lt!2103265 lt!2103262)))

(assert (=> b!5108334 false))

(declare-fun bm!356168 () Bool)

(assert (=> bm!356168 (= call!356171 (nullableZipper!978 z!4463))))

(declare-fun d!1651014 () Bool)

(declare-fun e!3186058 () Bool)

(assert (=> d!1651014 e!3186058))

(declare-fun res!2174361 () Bool)

(assert (=> d!1651014 (=> (not res!2174361) (not e!3186058))))

(declare-fun lt!2103248 () tuple2!63592)

(assert (=> d!1651014 (= res!2174361 (= (++!12948 (_1!35099 lt!2103248) (_2!35099 lt!2103248)) input!5745))))

(assert (=> d!1651014 (= lt!2103248 e!3186056)))

(declare-fun c!877511 () Bool)

(assert (=> d!1651014 (= c!877511 (lostCauseZipper!1003 z!4463))))

(declare-fun lt!2103253 () Unit!150047)

(declare-fun Unit!150058 () Unit!150047)

(assert (=> d!1651014 (= lt!2103253 Unit!150058)))

(assert (=> d!1651014 (= (getSuffix!3196 input!5745 testedP!265) lt!2103018)))

(declare-fun lt!2103255 () Unit!150047)

(declare-fun lt!2103244 () Unit!150047)

(assert (=> d!1651014 (= lt!2103255 lt!2103244)))

(declare-fun lt!2103249 () List!59105)

(assert (=> d!1651014 (= lt!2103018 lt!2103249)))

(declare-fun lemmaSamePrefixThenSameSuffix!2600 (List!59105 List!59105 List!59105 List!59105 List!59105) Unit!150047)

(assert (=> d!1651014 (= lt!2103244 (lemmaSamePrefixThenSameSuffix!2600 testedP!265 lt!2103018 testedP!265 lt!2103249 input!5745))))

(assert (=> d!1651014 (= lt!2103249 (getSuffix!3196 input!5745 testedP!265))))

(declare-fun lt!2103267 () Unit!150047)

(declare-fun lt!2103268 () Unit!150047)

(assert (=> d!1651014 (= lt!2103267 lt!2103268)))

(assert (=> d!1651014 (isPrefix!5522 testedP!265 (++!12948 testedP!265 lt!2103018))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3550 (List!59105 List!59105) Unit!150047)

(assert (=> d!1651014 (= lt!2103268 (lemmaConcatTwoListThenFirstIsPrefix!3550 testedP!265 lt!2103018))))

(assert (=> d!1651014 (= (++!12948 testedP!265 lt!2103018) input!5745)))

(assert (=> d!1651014 (= (findLongestMatchInnerZipper!177 z!4463 testedP!265 lt!2103014 lt!2103018 input!5745 lt!2103020) lt!2103248)))

(declare-fun b!5108330 () Bool)

(assert (=> b!5108330 (= e!3186060 call!356168)))

(declare-fun b!5108335 () Bool)

(assert (=> b!5108335 (= e!3186056 e!3186055)))

(declare-fun c!877513 () Bool)

(assert (=> b!5108335 (= c!877513 (= lt!2103014 lt!2103020))))

(declare-fun b!5108336 () Bool)

(declare-fun e!3186054 () Bool)

(assert (=> b!5108336 (= e!3186054 (>= (size!39423 (_1!35099 lt!2103248)) (size!39423 testedP!265)))))

(declare-fun b!5108337 () Bool)

(assert (=> b!5108337 (= e!3186058 e!3186054)))

(declare-fun res!2174362 () Bool)

(assert (=> b!5108337 (=> res!2174362 e!3186054)))

(assert (=> b!5108337 (= res!2174362 (isEmpty!31838 (_1!35099 lt!2103248)))))

(declare-fun b!5108338 () Bool)

(assert (=> b!5108338 (= e!3186053 (tuple2!63593 Nil!58981 input!5745))))

(assert (= (and d!1651014 c!877511) b!5108329))

(assert (= (and d!1651014 (not c!877511)) b!5108335))

(assert (= (and b!5108335 c!877513) b!5108325))

(assert (= (and b!5108335 (not c!877513)) b!5108331))

(assert (= (and b!5108325 c!877512) b!5108333))

(assert (= (and b!5108325 (not c!877512)) b!5108338))

(assert (= (and b!5108331 c!877510) b!5108334))

(assert (= (and b!5108331 (not c!877510)) b!5108327))

(assert (= (and b!5108331 c!877508) b!5108328))

(assert (= (and b!5108331 (not c!877508)) b!5108330))

(assert (= (and b!5108328 c!877509) b!5108332))

(assert (= (and b!5108328 (not c!877509)) b!5108326))

(assert (= (or b!5108328 b!5108330) bm!356164))

(assert (= (or b!5108328 b!5108330) bm!356162))

(assert (= (or b!5108328 b!5108330) bm!356166))

(assert (= (or b!5108328 b!5108330) bm!356167))

(assert (= (or b!5108325 b!5108334) bm!356165))

(assert (= (or b!5108325 b!5108334) bm!356161))

(assert (= (or b!5108325 b!5108331) bm!356168))

(assert (= (or b!5108325 b!5108334) bm!356163))

(assert (= (and d!1651014 res!2174361) b!5108337))

(assert (= (and b!5108337 (not res!2174362)) b!5108336))

(declare-fun m!6165460 () Bool)

(assert (=> b!5108336 m!6165460))

(assert (=> b!5108336 m!6165214))

(declare-fun m!6165462 () Bool)

(assert (=> bm!356164 m!6165462))

(assert (=> bm!356168 m!6165376))

(declare-fun m!6165464 () Bool)

(assert (=> bm!356167 m!6165464))

(declare-fun m!6165466 () Bool)

(assert (=> bm!356165 m!6165466))

(declare-fun m!6165468 () Bool)

(assert (=> b!5108331 m!6165468))

(declare-fun m!6165470 () Bool)

(assert (=> b!5108331 m!6165470))

(declare-fun m!6165472 () Bool)

(assert (=> b!5108331 m!6165472))

(declare-fun m!6165474 () Bool)

(assert (=> b!5108331 m!6165474))

(declare-fun m!6165476 () Bool)

(assert (=> b!5108331 m!6165476))

(declare-fun m!6165478 () Bool)

(assert (=> b!5108331 m!6165478))

(declare-fun m!6165480 () Bool)

(assert (=> b!5108331 m!6165480))

(assert (=> b!5108331 m!6165472))

(assert (=> b!5108331 m!6165462))

(declare-fun m!6165482 () Bool)

(assert (=> b!5108331 m!6165482))

(assert (=> b!5108331 m!6165214))

(assert (=> b!5108331 m!6165238))

(declare-fun m!6165484 () Bool)

(assert (=> b!5108331 m!6165484))

(assert (=> b!5108331 m!6165468))

(assert (=> b!5108331 m!6165242))

(declare-fun m!6165486 () Bool)

(assert (=> b!5108331 m!6165486))

(assert (=> b!5108331 m!6165238))

(assert (=> bm!356162 m!6165476))

(declare-fun m!6165488 () Bool)

(assert (=> b!5108328 m!6165488))

(declare-fun m!6165490 () Bool)

(assert (=> d!1651014 m!6165490))

(declare-fun m!6165492 () Bool)

(assert (=> d!1651014 m!6165492))

(declare-fun m!6165494 () Bool)

(assert (=> d!1651014 m!6165494))

(assert (=> d!1651014 m!6165234))

(assert (=> d!1651014 m!6165490))

(declare-fun m!6165496 () Bool)

(assert (=> d!1651014 m!6165496))

(assert (=> d!1651014 m!6165238))

(declare-fun m!6165498 () Bool)

(assert (=> d!1651014 m!6165498))

(declare-fun m!6165500 () Bool)

(assert (=> bm!356163 m!6165500))

(declare-fun m!6165502 () Bool)

(assert (=> bm!356166 m!6165502))

(declare-fun m!6165504 () Bool)

(assert (=> bm!356161 m!6165504))

(declare-fun m!6165506 () Bool)

(assert (=> b!5108337 m!6165506))

(assert (=> b!5108121 d!1651014))

(declare-fun d!1651016 () Bool)

(declare-fun lt!2103270 () Int)

(assert (=> d!1651016 (>= lt!2103270 0)))

(declare-fun e!3186061 () Int)

(assert (=> d!1651016 (= lt!2103270 e!3186061)))

(declare-fun c!877514 () Bool)

(assert (=> d!1651016 (= c!877514 ((_ is Nil!58981) (_1!35099 (findLongestMatchInnerZipper!177 z!4463 testedP!265 lt!2103014 lt!2103018 input!5745 lt!2103020))))))

(assert (=> d!1651016 (= (size!39423 (_1!35099 (findLongestMatchInnerZipper!177 z!4463 testedP!265 lt!2103014 lt!2103018 input!5745 lt!2103020))) lt!2103270)))

(declare-fun b!5108339 () Bool)

(assert (=> b!5108339 (= e!3186061 0)))

(declare-fun b!5108340 () Bool)

(assert (=> b!5108340 (= e!3186061 (+ 1 (size!39423 (t!372106 (_1!35099 (findLongestMatchInnerZipper!177 z!4463 testedP!265 lt!2103014 lt!2103018 input!5745 lt!2103020))))))))

(assert (= (and d!1651016 c!877514) b!5108339))

(assert (= (and d!1651016 (not c!877514)) b!5108340))

(declare-fun m!6165508 () Bool)

(assert (=> b!5108340 m!6165508))

(assert (=> b!5108121 d!1651016))

(declare-fun d!1651018 () Bool)

(declare-fun e!3186062 () Bool)

(assert (=> d!1651018 e!3186062))

(declare-fun res!2174363 () Bool)

(assert (=> d!1651018 (=> res!2174363 e!3186062)))

(declare-fun lt!2103271 () Bool)

(assert (=> d!1651018 (= res!2174363 (not lt!2103271))))

(declare-fun e!3186063 () Bool)

(assert (=> d!1651018 (= lt!2103271 e!3186063)))

(declare-fun res!2174365 () Bool)

(assert (=> d!1651018 (=> res!2174365 e!3186063)))

(assert (=> d!1651018 (= res!2174365 ((_ is Nil!58981) knownP!20))))

(assert (=> d!1651018 (= (isPrefix!5522 knownP!20 input!5745) lt!2103271)))

(declare-fun b!5108344 () Bool)

(assert (=> b!5108344 (= e!3186062 (>= (size!39423 input!5745) (size!39423 knownP!20)))))

(declare-fun b!5108341 () Bool)

(declare-fun e!3186064 () Bool)

(assert (=> b!5108341 (= e!3186063 e!3186064)))

(declare-fun res!2174366 () Bool)

(assert (=> b!5108341 (=> (not res!2174366) (not e!3186064))))

(assert (=> b!5108341 (= res!2174366 (not ((_ is Nil!58981) input!5745)))))

(declare-fun b!5108343 () Bool)

(assert (=> b!5108343 (= e!3186064 (isPrefix!5522 (tail!10010 knownP!20) (tail!10010 input!5745)))))

(declare-fun b!5108342 () Bool)

(declare-fun res!2174364 () Bool)

(assert (=> b!5108342 (=> (not res!2174364) (not e!3186064))))

(assert (=> b!5108342 (= res!2174364 (= (head!10855 knownP!20) (head!10855 input!5745)))))

(assert (= (and d!1651018 (not res!2174365)) b!5108341))

(assert (= (and b!5108341 res!2174366) b!5108342))

(assert (= (and b!5108342 res!2174364) b!5108343))

(assert (= (and d!1651018 (not res!2174363)) b!5108344))

(assert (=> b!5108344 m!6165242))

(assert (=> b!5108344 m!6165216))

(assert (=> b!5108343 m!6165370))

(assert (=> b!5108343 m!6165436))

(assert (=> b!5108343 m!6165370))

(assert (=> b!5108343 m!6165436))

(declare-fun m!6165510 () Bool)

(assert (=> b!5108343 m!6165510))

(assert (=> b!5108342 m!6165366))

(declare-fun m!6165512 () Bool)

(assert (=> b!5108342 m!6165512))

(assert (=> b!5108131 d!1651018))

(declare-fun d!1651020 () Bool)

(declare-fun c!877517 () Bool)

(assert (=> d!1651020 (= c!877517 ((_ is Cons!58981) testedP!265))))

(declare-fun e!3186067 () (InoxSet Context!7002))

(assert (=> d!1651020 (= (derivationZipper!16 baseZ!46 testedP!265) e!3186067)))

(declare-fun b!5108349 () Bool)

(assert (=> b!5108349 (= e!3186067 (derivationZipper!16 (derivationStepZipper!766 baseZ!46 (h!65429 testedP!265)) (t!372106 testedP!265)))))

(declare-fun b!5108350 () Bool)

(assert (=> b!5108350 (= e!3186067 baseZ!46)))

(assert (= (and d!1651020 c!877517) b!5108349))

(assert (= (and d!1651020 (not c!877517)) b!5108350))

(declare-fun m!6165514 () Bool)

(assert (=> b!5108349 m!6165514))

(assert (=> b!5108349 m!6165514))

(declare-fun m!6165516 () Bool)

(assert (=> b!5108349 m!6165516))

(assert (=> b!5108119 d!1651020))

(declare-fun bs!1191706 () Bool)

(declare-fun d!1651022 () Bool)

(assert (= bs!1191706 (and d!1651022 d!1650954)))

(declare-fun lambda!250052 () Int)

(assert (=> bs!1191706 (= lambda!250052 lambda!250017)))

(assert (=> d!1651022 (= (inv!78473 setElem!29530) (forall!13508 (exprs!4001 setElem!29530) lambda!250052))))

(declare-fun bs!1191707 () Bool)

(assert (= bs!1191707 d!1651022))

(declare-fun m!6165518 () Bool)

(assert (=> bs!1191707 m!6165518))

(assert (=> setNonEmpty!29530 d!1651022))

(declare-fun d!1651024 () Bool)

(declare-fun e!3186068 () Bool)

(assert (=> d!1651024 e!3186068))

(declare-fun res!2174367 () Bool)

(assert (=> d!1651024 (=> res!2174367 e!3186068)))

(declare-fun lt!2103272 () Bool)

(assert (=> d!1651024 (= res!2174367 (not lt!2103272))))

(declare-fun e!3186069 () Bool)

(assert (=> d!1651024 (= lt!2103272 e!3186069)))

(declare-fun res!2174369 () Bool)

(assert (=> d!1651024 (=> res!2174369 e!3186069)))

(assert (=> d!1651024 (= res!2174369 ((_ is Nil!58981) testedP!265))))

(assert (=> d!1651024 (= (isPrefix!5522 testedP!265 input!5745) lt!2103272)))

(declare-fun b!5108354 () Bool)

(assert (=> b!5108354 (= e!3186068 (>= (size!39423 input!5745) (size!39423 testedP!265)))))

(declare-fun b!5108351 () Bool)

(declare-fun e!3186070 () Bool)

(assert (=> b!5108351 (= e!3186069 e!3186070)))

(declare-fun res!2174370 () Bool)

(assert (=> b!5108351 (=> (not res!2174370) (not e!3186070))))

(assert (=> b!5108351 (= res!2174370 (not ((_ is Nil!58981) input!5745)))))

(declare-fun b!5108353 () Bool)

(assert (=> b!5108353 (= e!3186070 (isPrefix!5522 (tail!10010 testedP!265) (tail!10010 input!5745)))))

(declare-fun b!5108352 () Bool)

(declare-fun res!2174368 () Bool)

(assert (=> b!5108352 (=> (not res!2174368) (not e!3186070))))

(assert (=> b!5108352 (= res!2174368 (= (head!10855 testedP!265) (head!10855 input!5745)))))

(assert (= (and d!1651024 (not res!2174369)) b!5108351))

(assert (= (and b!5108351 res!2174370) b!5108352))

(assert (= (and b!5108352 res!2174368) b!5108353))

(assert (= (and d!1651024 (not res!2174367)) b!5108354))

(assert (=> b!5108354 m!6165242))

(assert (=> b!5108354 m!6165214))

(assert (=> b!5108353 m!6165422))

(assert (=> b!5108353 m!6165436))

(assert (=> b!5108353 m!6165422))

(assert (=> b!5108353 m!6165436))

(declare-fun m!6165520 () Bool)

(assert (=> b!5108353 m!6165520))

(assert (=> b!5108352 m!6165426))

(assert (=> b!5108352 m!6165512))

(assert (=> start!538596 d!1651024))

(declare-fun condSetEmpty!29537 () Bool)

(assert (=> setNonEmpty!29529 (= condSetEmpty!29537 (= setRest!29530 ((as const (Array Context!7002 Bool)) false)))))

(declare-fun setRes!29537 () Bool)

(assert (=> setNonEmpty!29529 (= tp!1425069 setRes!29537)))

(declare-fun setIsEmpty!29537 () Bool)

(assert (=> setIsEmpty!29537 setRes!29537))

(declare-fun tp!1425100 () Bool)

(declare-fun e!3186073 () Bool)

(declare-fun setElem!29537 () Context!7002)

(declare-fun setNonEmpty!29537 () Bool)

(assert (=> setNonEmpty!29537 (= setRes!29537 (and tp!1425100 (inv!78473 setElem!29537) e!3186073))))

(declare-fun setRest!29537 () (InoxSet Context!7002))

(assert (=> setNonEmpty!29537 (= setRest!29530 ((_ map or) (store ((as const (Array Context!7002 Bool)) false) setElem!29537 true) setRest!29537))))

(declare-fun b!5108359 () Bool)

(declare-fun tp!1425099 () Bool)

(assert (=> b!5108359 (= e!3186073 tp!1425099)))

(assert (= (and setNonEmpty!29529 condSetEmpty!29537) setIsEmpty!29537))

(assert (= (and setNonEmpty!29529 (not condSetEmpty!29537)) setNonEmpty!29537))

(assert (= setNonEmpty!29537 b!5108359))

(declare-fun m!6165522 () Bool)

(assert (=> setNonEmpty!29537 m!6165522))

(declare-fun b!5108364 () Bool)

(declare-fun e!3186076 () Bool)

(declare-fun tp!1425103 () Bool)

(assert (=> b!5108364 (= e!3186076 (and tp_is_empty!37507 tp!1425103))))

(assert (=> b!5108130 (= tp!1425070 e!3186076)))

(assert (= (and b!5108130 ((_ is Cons!58981) (t!372106 testedP!265))) b!5108364))

(declare-fun b!5108369 () Bool)

(declare-fun e!3186079 () Bool)

(declare-fun tp!1425108 () Bool)

(declare-fun tp!1425109 () Bool)

(assert (=> b!5108369 (= e!3186079 (and tp!1425108 tp!1425109))))

(assert (=> b!5108129 (= tp!1425072 e!3186079)))

(assert (= (and b!5108129 ((_ is Cons!58980) (exprs!4001 setElem!29530))) b!5108369))

(declare-fun b!5108370 () Bool)

(declare-fun e!3186080 () Bool)

(declare-fun tp!1425110 () Bool)

(assert (=> b!5108370 (= e!3186080 (and tp_is_empty!37507 tp!1425110))))

(assert (=> b!5108124 (= tp!1425067 e!3186080)))

(assert (= (and b!5108124 ((_ is Cons!58981) (t!372106 knownP!20))) b!5108370))

(declare-fun condSetEmpty!29538 () Bool)

(assert (=> setNonEmpty!29530 (= condSetEmpty!29538 (= setRest!29529 ((as const (Array Context!7002 Bool)) false)))))

(declare-fun setRes!29538 () Bool)

(assert (=> setNonEmpty!29530 (= tp!1425073 setRes!29538)))

(declare-fun setIsEmpty!29538 () Bool)

(assert (=> setIsEmpty!29538 setRes!29538))

(declare-fun setNonEmpty!29538 () Bool)

(declare-fun setElem!29538 () Context!7002)

(declare-fun tp!1425112 () Bool)

(declare-fun e!3186081 () Bool)

(assert (=> setNonEmpty!29538 (= setRes!29538 (and tp!1425112 (inv!78473 setElem!29538) e!3186081))))

(declare-fun setRest!29538 () (InoxSet Context!7002))

(assert (=> setNonEmpty!29538 (= setRest!29529 ((_ map or) (store ((as const (Array Context!7002 Bool)) false) setElem!29538 true) setRest!29538))))

(declare-fun b!5108371 () Bool)

(declare-fun tp!1425111 () Bool)

(assert (=> b!5108371 (= e!3186081 tp!1425111)))

(assert (= (and setNonEmpty!29530 condSetEmpty!29538) setIsEmpty!29538))

(assert (= (and setNonEmpty!29530 (not condSetEmpty!29538)) setNonEmpty!29538))

(assert (= setNonEmpty!29538 b!5108371))

(declare-fun m!6165524 () Bool)

(assert (=> setNonEmpty!29538 m!6165524))

(declare-fun b!5108372 () Bool)

(declare-fun e!3186082 () Bool)

(declare-fun tp!1425113 () Bool)

(assert (=> b!5108372 (= e!3186082 (and tp_is_empty!37507 tp!1425113))))

(assert (=> b!5108126 (= tp!1425068 e!3186082)))

(assert (= (and b!5108126 ((_ is Cons!58981) (t!372106 input!5745))) b!5108372))

(declare-fun b!5108373 () Bool)

(declare-fun e!3186083 () Bool)

(declare-fun tp!1425114 () Bool)

(declare-fun tp!1425115 () Bool)

(assert (=> b!5108373 (= e!3186083 (and tp!1425114 tp!1425115))))

(assert (=> b!5108125 (= tp!1425071 e!3186083)))

(assert (= (and b!5108125 ((_ is Cons!58980) (exprs!4001 setElem!29529))) b!5108373))

(check-sat (not b!5108352) (not b!5108219) (not bm!356164) (not b!5108359) (not bm!356165) (not b!5108337) (not b!5108343) (not b!5108373) (not setNonEmpty!29538) (not b!5108328) (not d!1650982) (not b!5108369) (not bm!356163) (not b!5108331) (not d!1651022) (not b!5108264) (not d!1650954) (not d!1650978) (not b!5108342) (not b!5108344) (not b!5108233) (not b!5108296) (not d!1650980) (not bm!356138) (not b!5108226) (not b!5108232) (not b!5108242) (not b!5108353) (not d!1651014) (not bm!356137) (not b!5108261) (not d!1651006) (not bm!356166) (not b!5108262) (not b!5108221) (not b!5108227) (not b!5108370) (not b!5108371) (not b!5108349) tp_is_empty!37507 (not d!1651010) (not d!1650984) (not b!5108364) (not b!5108336) (not d!1651004) (not d!1650998) (not bm!356161) (not b!5108263) (not b!5108236) (not bm!356167) (not bm!356162) (not b!5108237) (not setNonEmpty!29537) (not b!5108354) (not b!5108340) (not b!5108372) (not bm!356168))
(check-sat)
