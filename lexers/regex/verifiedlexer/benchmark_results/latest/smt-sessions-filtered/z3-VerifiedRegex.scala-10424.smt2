; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538916 () Bool)

(assert start!538916)

(declare-datatypes ((C!28544 0))(
  ( (C!28545 (val!23924 Int)) )
))
(declare-datatypes ((Regex!14139 0))(
  ( (ElementMatch!14139 (c!877931 C!28544)) (Concat!22984 (regOne!28790 Regex!14139) (regTwo!28790 Regex!14139)) (EmptyExpr!14139) (Star!14139 (reg!14468 Regex!14139)) (EmptyLang!14139) (Union!14139 (regOne!28791 Regex!14139) (regTwo!28791 Regex!14139)) )
))
(declare-datatypes ((List!59158 0))(
  ( (Nil!59034) (Cons!59034 (h!65482 Regex!14139) (t!372159 List!59158)) )
))
(declare-datatypes ((Context!7046 0))(
  ( (Context!7047 (exprs!4023 List!59158)) )
))
(declare-fun setElem!29705 () Context!7046)

(declare-fun setNonEmpty!29705 () Bool)

(declare-fun setRes!29705 () Bool)

(declare-fun tp!1425810 () Bool)

(declare-fun e!3187314 () Bool)

(declare-fun inv!78528 (Context!7046) Bool)

(assert (=> setNonEmpty!29705 (= setRes!29705 (and tp!1425810 (inv!78528 setElem!29705) e!3187314))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!46 () (InoxSet Context!7046))

(declare-fun setRest!29706 () (InoxSet Context!7046))

(assert (=> setNonEmpty!29705 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7046 Bool)) false) setElem!29705 true) setRest!29706))))

(declare-fun setIsEmpty!29705 () Bool)

(assert (=> setIsEmpty!29705 setRes!29705))

(declare-fun b!5110360 () Bool)

(declare-fun e!3187311 () Bool)

(declare-fun e!3187312 () Bool)

(assert (=> b!5110360 (= e!3187311 (not e!3187312))))

(declare-fun res!2175202 () Bool)

(assert (=> b!5110360 (=> res!2175202 e!3187312)))

(declare-fun z!4463 () (InoxSet Context!7046))

(declare-datatypes ((List!59159 0))(
  ( (Nil!59035) (Cons!59035 (h!65483 C!28544) (t!372160 List!59159)) )
))
(declare-fun testedP!265 () List!59159)

(declare-fun knownP!20 () List!59159)

(declare-fun matchZipper!807 ((InoxSet Context!7046) List!59159) Bool)

(declare-fun getSuffix!3218 (List!59159 List!59159) List!59159)

(assert (=> b!5110360 (= res!2175202 (not (matchZipper!807 z!4463 (getSuffix!3218 knownP!20 testedP!265))))))

(declare-fun isPrefix!5544 (List!59159 List!59159) Bool)

(assert (=> b!5110360 (isPrefix!5544 testedP!265 knownP!20)))

(declare-fun input!5745 () List!59159)

(declare-datatypes ((Unit!150135 0))(
  ( (Unit!150136) )
))
(declare-fun lt!2104548 () Unit!150135)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!681 (List!59159 List!59159 List!59159) Unit!150135)

(assert (=> b!5110360 (= lt!2104548 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!681 knownP!20 testedP!265 input!5745))))

(declare-fun b!5110361 () Bool)

(declare-fun e!3187315 () Bool)

(declare-fun tp!1425814 () Bool)

(assert (=> b!5110361 (= e!3187315 tp!1425814)))

(declare-fun b!5110362 () Bool)

(declare-fun res!2175207 () Bool)

(assert (=> b!5110362 (=> res!2175207 e!3187312)))

(declare-fun derivationZipper!38 ((InoxSet Context!7046) List!59159) (InoxSet Context!7046))

(assert (=> b!5110362 (= res!2175207 (not (= (derivationZipper!38 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5110363 () Bool)

(declare-fun res!2175210 () Bool)

(declare-fun e!3187317 () Bool)

(assert (=> b!5110363 (=> (not res!2175210) (not e!3187317))))

(assert (=> b!5110363 (= res!2175210 (isPrefix!5544 knownP!20 input!5745))))

(declare-fun b!5110364 () Bool)

(declare-fun res!2175204 () Bool)

(assert (=> b!5110364 (=> res!2175204 e!3187312)))

(declare-fun lostCauseZipper!1025 ((InoxSet Context!7046)) Bool)

(assert (=> b!5110364 (= res!2175204 (lostCauseZipper!1025 z!4463))))

(declare-fun res!2175205 () Bool)

(assert (=> start!538916 (=> (not res!2175205) (not e!3187317))))

(assert (=> start!538916 (= res!2175205 (isPrefix!5544 testedP!265 input!5745))))

(assert (=> start!538916 e!3187317))

(declare-fun e!3187316 () Bool)

(assert (=> start!538916 e!3187316))

(declare-fun condSetEmpty!29705 () Bool)

(assert (=> start!538916 (= condSetEmpty!29705 (= z!4463 ((as const (Array Context!7046 Bool)) false)))))

(declare-fun setRes!29706 () Bool)

(assert (=> start!538916 setRes!29706))

(declare-fun e!3187310 () Bool)

(assert (=> start!538916 e!3187310))

(declare-fun condSetEmpty!29706 () Bool)

(assert (=> start!538916 (= condSetEmpty!29706 (= baseZ!46 ((as const (Array Context!7046 Bool)) false)))))

(assert (=> start!538916 setRes!29705))

(declare-fun e!3187313 () Bool)

(assert (=> start!538916 e!3187313))

(declare-fun tp!1425809 () Bool)

(declare-fun setNonEmpty!29706 () Bool)

(declare-fun setElem!29706 () Context!7046)

(assert (=> setNonEmpty!29706 (= setRes!29706 (and tp!1425809 (inv!78528 setElem!29706) e!3187315))))

(declare-fun setRest!29705 () (InoxSet Context!7046))

(assert (=> setNonEmpty!29706 (= z!4463 ((_ map or) (store ((as const (Array Context!7046 Bool)) false) setElem!29706 true) setRest!29705))))

(declare-fun b!5110365 () Bool)

(declare-fun tp_is_empty!37551 () Bool)

(declare-fun tp!1425811 () Bool)

(assert (=> b!5110365 (= e!3187310 (and tp_is_empty!37551 tp!1425811))))

(declare-fun b!5110366 () Bool)

(declare-fun tp!1425813 () Bool)

(assert (=> b!5110366 (= e!3187313 (and tp_is_empty!37551 tp!1425813))))

(declare-fun b!5110367 () Bool)

(declare-fun lt!2104543 () List!59159)

(assert (=> b!5110367 (= e!3187312 (not (= lt!2104543 Nil!59035)))))

(declare-fun lt!2104546 () List!59159)

(assert (=> b!5110367 (isPrefix!5544 lt!2104546 input!5745)))

(declare-fun lt!2104544 () Unit!150135)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!934 (List!59159 List!59159) Unit!150135)

(assert (=> b!5110367 (= lt!2104544 (lemmaAddHeadSuffixToPrefixStillPrefix!934 testedP!265 input!5745))))

(declare-fun ++!12964 (List!59159 List!59159) List!59159)

(declare-fun head!10867 (List!59159) C!28544)

(assert (=> b!5110367 (= lt!2104546 (++!12964 testedP!265 (Cons!59035 (head!10867 lt!2104543) Nil!59035)))))

(assert (=> b!5110367 (= lt!2104543 (getSuffix!3218 input!5745 testedP!265))))

(declare-fun b!5110368 () Bool)

(declare-fun res!2175206 () Bool)

(assert (=> b!5110368 (=> (not res!2175206) (not e!3187311))))

(assert (=> b!5110368 (= res!2175206 (matchZipper!807 baseZ!46 knownP!20))))

(declare-fun b!5110369 () Bool)

(declare-fun res!2175209 () Bool)

(assert (=> b!5110369 (=> res!2175209 e!3187312)))

(declare-fun lt!2104545 () Int)

(declare-fun size!39445 (List!59159) Int)

(assert (=> b!5110369 (= res!2175209 (>= lt!2104545 (size!39445 input!5745)))))

(declare-fun setIsEmpty!29706 () Bool)

(assert (=> setIsEmpty!29706 setRes!29706))

(declare-fun b!5110370 () Bool)

(assert (=> b!5110370 (= e!3187317 e!3187311)))

(declare-fun res!2175208 () Bool)

(assert (=> b!5110370 (=> (not res!2175208) (not e!3187311))))

(declare-fun lt!2104547 () Int)

(assert (=> b!5110370 (= res!2175208 (>= lt!2104547 lt!2104545))))

(assert (=> b!5110370 (= lt!2104545 (size!39445 testedP!265))))

(assert (=> b!5110370 (= lt!2104547 (size!39445 knownP!20))))

(declare-fun b!5110371 () Bool)

(declare-fun tp!1425812 () Bool)

(assert (=> b!5110371 (= e!3187314 tp!1425812)))

(declare-fun b!5110372 () Bool)

(declare-fun tp!1425815 () Bool)

(assert (=> b!5110372 (= e!3187316 (and tp_is_empty!37551 tp!1425815))))

(declare-fun b!5110373 () Bool)

(declare-fun res!2175203 () Bool)

(assert (=> b!5110373 (=> res!2175203 e!3187312)))

(assert (=> b!5110373 (= res!2175203 (= lt!2104545 lt!2104547))))

(assert (= (and start!538916 res!2175205) b!5110363))

(assert (= (and b!5110363 res!2175210) b!5110370))

(assert (= (and b!5110370 res!2175208) b!5110368))

(assert (= (and b!5110368 res!2175206) b!5110360))

(assert (= (and b!5110360 (not res!2175202)) b!5110362))

(assert (= (and b!5110362 (not res!2175207)) b!5110364))

(assert (= (and b!5110364 (not res!2175204)) b!5110373))

(assert (= (and b!5110373 (not res!2175203)) b!5110369))

(assert (= (and b!5110369 (not res!2175209)) b!5110367))

(get-info :version)

(assert (= (and start!538916 ((_ is Cons!59035) input!5745)) b!5110372))

(assert (= (and start!538916 condSetEmpty!29705) setIsEmpty!29706))

(assert (= (and start!538916 (not condSetEmpty!29705)) setNonEmpty!29706))

(assert (= setNonEmpty!29706 b!5110361))

(assert (= (and start!538916 ((_ is Cons!59035) testedP!265)) b!5110365))

(assert (= (and start!538916 condSetEmpty!29706) setIsEmpty!29705))

(assert (= (and start!538916 (not condSetEmpty!29706)) setNonEmpty!29705))

(assert (= setNonEmpty!29705 b!5110371))

(assert (= (and start!538916 ((_ is Cons!59035) knownP!20)) b!5110366))

(declare-fun m!6167596 () Bool)

(assert (=> b!5110370 m!6167596))

(declare-fun m!6167598 () Bool)

(assert (=> b!5110370 m!6167598))

(declare-fun m!6167600 () Bool)

(assert (=> b!5110369 m!6167600))

(declare-fun m!6167602 () Bool)

(assert (=> setNonEmpty!29706 m!6167602))

(declare-fun m!6167604 () Bool)

(assert (=> b!5110364 m!6167604))

(declare-fun m!6167606 () Bool)

(assert (=> b!5110368 m!6167606))

(declare-fun m!6167608 () Bool)

(assert (=> b!5110363 m!6167608))

(declare-fun m!6167610 () Bool)

(assert (=> b!5110362 m!6167610))

(declare-fun m!6167612 () Bool)

(assert (=> b!5110360 m!6167612))

(assert (=> b!5110360 m!6167612))

(declare-fun m!6167614 () Bool)

(assert (=> b!5110360 m!6167614))

(declare-fun m!6167616 () Bool)

(assert (=> b!5110360 m!6167616))

(declare-fun m!6167618 () Bool)

(assert (=> b!5110360 m!6167618))

(declare-fun m!6167620 () Bool)

(assert (=> b!5110367 m!6167620))

(declare-fun m!6167622 () Bool)

(assert (=> b!5110367 m!6167622))

(declare-fun m!6167624 () Bool)

(assert (=> b!5110367 m!6167624))

(declare-fun m!6167626 () Bool)

(assert (=> b!5110367 m!6167626))

(declare-fun m!6167628 () Bool)

(assert (=> b!5110367 m!6167628))

(declare-fun m!6167630 () Bool)

(assert (=> start!538916 m!6167630))

(declare-fun m!6167632 () Bool)

(assert (=> setNonEmpty!29705 m!6167632))

(check-sat (not b!5110361) (not b!5110362) (not b!5110368) (not b!5110369) (not b!5110366) (not b!5110370) (not start!538916) (not setNonEmpty!29706) (not b!5110371) (not b!5110364) (not b!5110372) (not b!5110365) (not b!5110363) (not b!5110360) tp_is_empty!37551 (not setNonEmpty!29705) (not b!5110367))
(check-sat)
(get-model)

(declare-fun d!1651501 () Bool)

(declare-fun c!877934 () Bool)

(declare-fun isEmpty!31855 (List!59159) Bool)

(assert (=> d!1651501 (= c!877934 (isEmpty!31855 (getSuffix!3218 knownP!20 testedP!265)))))

(declare-fun e!3187320 () Bool)

(assert (=> d!1651501 (= (matchZipper!807 z!4463 (getSuffix!3218 knownP!20 testedP!265)) e!3187320)))

(declare-fun b!5110378 () Bool)

(declare-fun nullableZipper!987 ((InoxSet Context!7046)) Bool)

(assert (=> b!5110378 (= e!3187320 (nullableZipper!987 z!4463))))

(declare-fun b!5110379 () Bool)

(declare-fun derivationStepZipper!775 ((InoxSet Context!7046) C!28544) (InoxSet Context!7046))

(declare-fun tail!10019 (List!59159) List!59159)

(assert (=> b!5110379 (= e!3187320 (matchZipper!807 (derivationStepZipper!775 z!4463 (head!10867 (getSuffix!3218 knownP!20 testedP!265))) (tail!10019 (getSuffix!3218 knownP!20 testedP!265))))))

(assert (= (and d!1651501 c!877934) b!5110378))

(assert (= (and d!1651501 (not c!877934)) b!5110379))

(assert (=> d!1651501 m!6167612))

(declare-fun m!6167634 () Bool)

(assert (=> d!1651501 m!6167634))

(declare-fun m!6167636 () Bool)

(assert (=> b!5110378 m!6167636))

(assert (=> b!5110379 m!6167612))

(declare-fun m!6167638 () Bool)

(assert (=> b!5110379 m!6167638))

(assert (=> b!5110379 m!6167638))

(declare-fun m!6167640 () Bool)

(assert (=> b!5110379 m!6167640))

(assert (=> b!5110379 m!6167612))

(declare-fun m!6167642 () Bool)

(assert (=> b!5110379 m!6167642))

(assert (=> b!5110379 m!6167640))

(assert (=> b!5110379 m!6167642))

(declare-fun m!6167644 () Bool)

(assert (=> b!5110379 m!6167644))

(assert (=> b!5110360 d!1651501))

(declare-fun d!1651503 () Bool)

(declare-fun lt!2104551 () List!59159)

(assert (=> d!1651503 (= (++!12964 testedP!265 lt!2104551) knownP!20)))

(declare-fun e!3187323 () List!59159)

(assert (=> d!1651503 (= lt!2104551 e!3187323)))

(declare-fun c!877937 () Bool)

(assert (=> d!1651503 (= c!877937 ((_ is Cons!59035) testedP!265))))

(assert (=> d!1651503 (>= (size!39445 knownP!20) (size!39445 testedP!265))))

(assert (=> d!1651503 (= (getSuffix!3218 knownP!20 testedP!265) lt!2104551)))

(declare-fun b!5110384 () Bool)

(assert (=> b!5110384 (= e!3187323 (getSuffix!3218 (tail!10019 knownP!20) (t!372160 testedP!265)))))

(declare-fun b!5110385 () Bool)

(assert (=> b!5110385 (= e!3187323 knownP!20)))

(assert (= (and d!1651503 c!877937) b!5110384))

(assert (= (and d!1651503 (not c!877937)) b!5110385))

(declare-fun m!6167646 () Bool)

(assert (=> d!1651503 m!6167646))

(assert (=> d!1651503 m!6167598))

(assert (=> d!1651503 m!6167596))

(declare-fun m!6167648 () Bool)

(assert (=> b!5110384 m!6167648))

(assert (=> b!5110384 m!6167648))

(declare-fun m!6167650 () Bool)

(assert (=> b!5110384 m!6167650))

(assert (=> b!5110360 d!1651503))

(declare-fun b!5110396 () Bool)

(declare-fun e!3187332 () Bool)

(assert (=> b!5110396 (= e!3187332 (isPrefix!5544 (tail!10019 testedP!265) (tail!10019 knownP!20)))))

(declare-fun b!5110395 () Bool)

(declare-fun res!2175219 () Bool)

(assert (=> b!5110395 (=> (not res!2175219) (not e!3187332))))

(assert (=> b!5110395 (= res!2175219 (= (head!10867 testedP!265) (head!10867 knownP!20)))))

(declare-fun b!5110397 () Bool)

(declare-fun e!3187330 () Bool)

(assert (=> b!5110397 (= e!3187330 (>= (size!39445 knownP!20) (size!39445 testedP!265)))))

(declare-fun b!5110394 () Bool)

(declare-fun e!3187331 () Bool)

(assert (=> b!5110394 (= e!3187331 e!3187332)))

(declare-fun res!2175222 () Bool)

(assert (=> b!5110394 (=> (not res!2175222) (not e!3187332))))

(assert (=> b!5110394 (= res!2175222 (not ((_ is Nil!59035) knownP!20)))))

(declare-fun d!1651505 () Bool)

(assert (=> d!1651505 e!3187330))

(declare-fun res!2175220 () Bool)

(assert (=> d!1651505 (=> res!2175220 e!3187330)))

(declare-fun lt!2104554 () Bool)

(assert (=> d!1651505 (= res!2175220 (not lt!2104554))))

(assert (=> d!1651505 (= lt!2104554 e!3187331)))

(declare-fun res!2175221 () Bool)

(assert (=> d!1651505 (=> res!2175221 e!3187331)))

(assert (=> d!1651505 (= res!2175221 ((_ is Nil!59035) testedP!265))))

(assert (=> d!1651505 (= (isPrefix!5544 testedP!265 knownP!20) lt!2104554)))

(assert (= (and d!1651505 (not res!2175221)) b!5110394))

(assert (= (and b!5110394 res!2175222) b!5110395))

(assert (= (and b!5110395 res!2175219) b!5110396))

(assert (= (and d!1651505 (not res!2175220)) b!5110397))

(declare-fun m!6167652 () Bool)

(assert (=> b!5110396 m!6167652))

(assert (=> b!5110396 m!6167648))

(assert (=> b!5110396 m!6167652))

(assert (=> b!5110396 m!6167648))

(declare-fun m!6167654 () Bool)

(assert (=> b!5110396 m!6167654))

(declare-fun m!6167656 () Bool)

(assert (=> b!5110395 m!6167656))

(declare-fun m!6167658 () Bool)

(assert (=> b!5110395 m!6167658))

(assert (=> b!5110397 m!6167598))

(assert (=> b!5110397 m!6167596))

(assert (=> b!5110360 d!1651505))

(declare-fun d!1651509 () Bool)

(assert (=> d!1651509 (isPrefix!5544 testedP!265 knownP!20)))

(declare-fun lt!2104557 () Unit!150135)

(declare-fun choose!37453 (List!59159 List!59159 List!59159) Unit!150135)

(assert (=> d!1651509 (= lt!2104557 (choose!37453 knownP!20 testedP!265 input!5745))))

(assert (=> d!1651509 (isPrefix!5544 knownP!20 input!5745)))

(assert (=> d!1651509 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!681 knownP!20 testedP!265 input!5745) lt!2104557)))

(declare-fun bs!1191908 () Bool)

(assert (= bs!1191908 d!1651509))

(assert (=> bs!1191908 m!6167616))

(declare-fun m!6167664 () Bool)

(assert (=> bs!1191908 m!6167664))

(assert (=> bs!1191908 m!6167608))

(assert (=> b!5110360 d!1651509))

(declare-fun d!1651513 () Bool)

(declare-fun lt!2104562 () Int)

(assert (=> d!1651513 (>= lt!2104562 0)))

(declare-fun e!3187340 () Int)

(assert (=> d!1651513 (= lt!2104562 e!3187340)))

(declare-fun c!877945 () Bool)

(assert (=> d!1651513 (= c!877945 ((_ is Nil!59035) input!5745))))

(assert (=> d!1651513 (= (size!39445 input!5745) lt!2104562)))

(declare-fun b!5110412 () Bool)

(assert (=> b!5110412 (= e!3187340 0)))

(declare-fun b!5110413 () Bool)

(assert (=> b!5110413 (= e!3187340 (+ 1 (size!39445 (t!372160 input!5745))))))

(assert (= (and d!1651513 c!877945) b!5110412))

(assert (= (and d!1651513 (not c!877945)) b!5110413))

(declare-fun m!6167666 () Bool)

(assert (=> b!5110413 m!6167666))

(assert (=> b!5110369 d!1651513))

(declare-fun d!1651515 () Bool)

(declare-fun c!877946 () Bool)

(assert (=> d!1651515 (= c!877946 (isEmpty!31855 knownP!20))))

(declare-fun e!3187341 () Bool)

(assert (=> d!1651515 (= (matchZipper!807 baseZ!46 knownP!20) e!3187341)))

(declare-fun b!5110414 () Bool)

(assert (=> b!5110414 (= e!3187341 (nullableZipper!987 baseZ!46))))

(declare-fun b!5110415 () Bool)

(assert (=> b!5110415 (= e!3187341 (matchZipper!807 (derivationStepZipper!775 baseZ!46 (head!10867 knownP!20)) (tail!10019 knownP!20)))))

(assert (= (and d!1651515 c!877946) b!5110414))

(assert (= (and d!1651515 (not c!877946)) b!5110415))

(declare-fun m!6167668 () Bool)

(assert (=> d!1651515 m!6167668))

(declare-fun m!6167670 () Bool)

(assert (=> b!5110414 m!6167670))

(assert (=> b!5110415 m!6167658))

(assert (=> b!5110415 m!6167658))

(declare-fun m!6167672 () Bool)

(assert (=> b!5110415 m!6167672))

(assert (=> b!5110415 m!6167648))

(assert (=> b!5110415 m!6167672))

(assert (=> b!5110415 m!6167648))

(declare-fun m!6167676 () Bool)

(assert (=> b!5110415 m!6167676))

(assert (=> b!5110368 d!1651515))

(declare-fun d!1651517 () Bool)

(declare-fun lambda!250261 () Int)

(declare-fun forall!13528 (List!59158 Int) Bool)

(assert (=> d!1651517 (= (inv!78528 setElem!29705) (forall!13528 (exprs!4023 setElem!29705) lambda!250261))))

(declare-fun bs!1191910 () Bool)

(assert (= bs!1191910 d!1651517))

(declare-fun m!6167728 () Bool)

(assert (=> bs!1191910 m!6167728))

(assert (=> setNonEmpty!29705 d!1651517))

(declare-fun d!1651535 () Bool)

(declare-fun lt!2104577 () List!59159)

(assert (=> d!1651535 (= (++!12964 testedP!265 lt!2104577) input!5745)))

(declare-fun e!3187365 () List!59159)

(assert (=> d!1651535 (= lt!2104577 e!3187365)))

(declare-fun c!877958 () Bool)

(assert (=> d!1651535 (= c!877958 ((_ is Cons!59035) testedP!265))))

(assert (=> d!1651535 (>= (size!39445 input!5745) (size!39445 testedP!265))))

(assert (=> d!1651535 (= (getSuffix!3218 input!5745 testedP!265) lt!2104577)))

(declare-fun b!5110456 () Bool)

(assert (=> b!5110456 (= e!3187365 (getSuffix!3218 (tail!10019 input!5745) (t!372160 testedP!265)))))

(declare-fun b!5110457 () Bool)

(assert (=> b!5110457 (= e!3187365 input!5745)))

(assert (= (and d!1651535 c!877958) b!5110456))

(assert (= (and d!1651535 (not c!877958)) b!5110457))

(declare-fun m!6167730 () Bool)

(assert (=> d!1651535 m!6167730))

(assert (=> d!1651535 m!6167600))

(assert (=> d!1651535 m!6167596))

(declare-fun m!6167732 () Bool)

(assert (=> b!5110456 m!6167732))

(assert (=> b!5110456 m!6167732))

(declare-fun m!6167734 () Bool)

(assert (=> b!5110456 m!6167734))

(assert (=> b!5110367 d!1651535))

(declare-fun b!5110467 () Bool)

(declare-fun e!3187371 () List!59159)

(assert (=> b!5110467 (= e!3187371 (Cons!59035 (h!65483 testedP!265) (++!12964 (t!372160 testedP!265) (Cons!59035 (head!10867 lt!2104543) Nil!59035))))))

(declare-fun e!3187370 () Bool)

(declare-fun lt!2104580 () List!59159)

(declare-fun b!5110469 () Bool)

(assert (=> b!5110469 (= e!3187370 (or (not (= (Cons!59035 (head!10867 lt!2104543) Nil!59035) Nil!59035)) (= lt!2104580 testedP!265)))))

(declare-fun b!5110468 () Bool)

(declare-fun res!2175246 () Bool)

(assert (=> b!5110468 (=> (not res!2175246) (not e!3187370))))

(assert (=> b!5110468 (= res!2175246 (= (size!39445 lt!2104580) (+ (size!39445 testedP!265) (size!39445 (Cons!59035 (head!10867 lt!2104543) Nil!59035)))))))

(declare-fun d!1651537 () Bool)

(assert (=> d!1651537 e!3187370))

(declare-fun res!2175245 () Bool)

(assert (=> d!1651537 (=> (not res!2175245) (not e!3187370))))

(declare-fun content!10488 (List!59159) (InoxSet C!28544))

(assert (=> d!1651537 (= res!2175245 (= (content!10488 lt!2104580) ((_ map or) (content!10488 testedP!265) (content!10488 (Cons!59035 (head!10867 lt!2104543) Nil!59035)))))))

(assert (=> d!1651537 (= lt!2104580 e!3187371)))

(declare-fun c!877961 () Bool)

(assert (=> d!1651537 (= c!877961 ((_ is Nil!59035) testedP!265))))

(assert (=> d!1651537 (= (++!12964 testedP!265 (Cons!59035 (head!10867 lt!2104543) Nil!59035)) lt!2104580)))

(declare-fun b!5110466 () Bool)

(assert (=> b!5110466 (= e!3187371 (Cons!59035 (head!10867 lt!2104543) Nil!59035))))

(assert (= (and d!1651537 c!877961) b!5110466))

(assert (= (and d!1651537 (not c!877961)) b!5110467))

(assert (= (and d!1651537 res!2175245) b!5110468))

(assert (= (and b!5110468 res!2175246) b!5110469))

(declare-fun m!6167736 () Bool)

(assert (=> b!5110467 m!6167736))

(declare-fun m!6167738 () Bool)

(assert (=> b!5110468 m!6167738))

(assert (=> b!5110468 m!6167596))

(declare-fun m!6167740 () Bool)

(assert (=> b!5110468 m!6167740))

(declare-fun m!6167742 () Bool)

(assert (=> d!1651537 m!6167742))

(declare-fun m!6167744 () Bool)

(assert (=> d!1651537 m!6167744))

(declare-fun m!6167746 () Bool)

(assert (=> d!1651537 m!6167746))

(assert (=> b!5110367 d!1651537))

(declare-fun b!5110472 () Bool)

(declare-fun e!3187374 () Bool)

(assert (=> b!5110472 (= e!3187374 (isPrefix!5544 (tail!10019 lt!2104546) (tail!10019 input!5745)))))

(declare-fun b!5110471 () Bool)

(declare-fun res!2175247 () Bool)

(assert (=> b!5110471 (=> (not res!2175247) (not e!3187374))))

(assert (=> b!5110471 (= res!2175247 (= (head!10867 lt!2104546) (head!10867 input!5745)))))

(declare-fun b!5110473 () Bool)

(declare-fun e!3187372 () Bool)

(assert (=> b!5110473 (= e!3187372 (>= (size!39445 input!5745) (size!39445 lt!2104546)))))

(declare-fun b!5110470 () Bool)

(declare-fun e!3187373 () Bool)

(assert (=> b!5110470 (= e!3187373 e!3187374)))

(declare-fun res!2175250 () Bool)

(assert (=> b!5110470 (=> (not res!2175250) (not e!3187374))))

(assert (=> b!5110470 (= res!2175250 (not ((_ is Nil!59035) input!5745)))))

(declare-fun d!1651539 () Bool)

(assert (=> d!1651539 e!3187372))

(declare-fun res!2175248 () Bool)

(assert (=> d!1651539 (=> res!2175248 e!3187372)))

(declare-fun lt!2104581 () Bool)

(assert (=> d!1651539 (= res!2175248 (not lt!2104581))))

(assert (=> d!1651539 (= lt!2104581 e!3187373)))

(declare-fun res!2175249 () Bool)

(assert (=> d!1651539 (=> res!2175249 e!3187373)))

(assert (=> d!1651539 (= res!2175249 ((_ is Nil!59035) lt!2104546))))

(assert (=> d!1651539 (= (isPrefix!5544 lt!2104546 input!5745) lt!2104581)))

(assert (= (and d!1651539 (not res!2175249)) b!5110470))

(assert (= (and b!5110470 res!2175250) b!5110471))

(assert (= (and b!5110471 res!2175247) b!5110472))

(assert (= (and d!1651539 (not res!2175248)) b!5110473))

(declare-fun m!6167748 () Bool)

(assert (=> b!5110472 m!6167748))

(assert (=> b!5110472 m!6167732))

(assert (=> b!5110472 m!6167748))

(assert (=> b!5110472 m!6167732))

(declare-fun m!6167750 () Bool)

(assert (=> b!5110472 m!6167750))

(declare-fun m!6167752 () Bool)

(assert (=> b!5110471 m!6167752))

(declare-fun m!6167754 () Bool)

(assert (=> b!5110471 m!6167754))

(assert (=> b!5110473 m!6167600))

(declare-fun m!6167756 () Bool)

(assert (=> b!5110473 m!6167756))

(assert (=> b!5110367 d!1651539))

(declare-fun d!1651541 () Bool)

(assert (=> d!1651541 (isPrefix!5544 (++!12964 testedP!265 (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035)) input!5745)))

(declare-fun lt!2104584 () Unit!150135)

(declare-fun choose!37455 (List!59159 List!59159) Unit!150135)

(assert (=> d!1651541 (= lt!2104584 (choose!37455 testedP!265 input!5745))))

(assert (=> d!1651541 (isPrefix!5544 testedP!265 input!5745)))

(assert (=> d!1651541 (= (lemmaAddHeadSuffixToPrefixStillPrefix!934 testedP!265 input!5745) lt!2104584)))

(declare-fun bs!1191911 () Bool)

(assert (= bs!1191911 d!1651541))

(declare-fun m!6167758 () Bool)

(assert (=> bs!1191911 m!6167758))

(declare-fun m!6167760 () Bool)

(assert (=> bs!1191911 m!6167760))

(assert (=> bs!1191911 m!6167620))

(assert (=> bs!1191911 m!6167630))

(assert (=> bs!1191911 m!6167620))

(declare-fun m!6167762 () Bool)

(assert (=> bs!1191911 m!6167762))

(assert (=> bs!1191911 m!6167758))

(declare-fun m!6167764 () Bool)

(assert (=> bs!1191911 m!6167764))

(assert (=> b!5110367 d!1651541))

(declare-fun d!1651543 () Bool)

(assert (=> d!1651543 (= (head!10867 lt!2104543) (h!65483 lt!2104543))))

(assert (=> b!5110367 d!1651543))

(declare-fun b!5110476 () Bool)

(declare-fun e!3187377 () Bool)

(assert (=> b!5110476 (= e!3187377 (isPrefix!5544 (tail!10019 testedP!265) (tail!10019 input!5745)))))

(declare-fun b!5110475 () Bool)

(declare-fun res!2175251 () Bool)

(assert (=> b!5110475 (=> (not res!2175251) (not e!3187377))))

(assert (=> b!5110475 (= res!2175251 (= (head!10867 testedP!265) (head!10867 input!5745)))))

(declare-fun b!5110477 () Bool)

(declare-fun e!3187375 () Bool)

(assert (=> b!5110477 (= e!3187375 (>= (size!39445 input!5745) (size!39445 testedP!265)))))

(declare-fun b!5110474 () Bool)

(declare-fun e!3187376 () Bool)

(assert (=> b!5110474 (= e!3187376 e!3187377)))

(declare-fun res!2175254 () Bool)

(assert (=> b!5110474 (=> (not res!2175254) (not e!3187377))))

(assert (=> b!5110474 (= res!2175254 (not ((_ is Nil!59035) input!5745)))))

(declare-fun d!1651545 () Bool)

(assert (=> d!1651545 e!3187375))

(declare-fun res!2175252 () Bool)

(assert (=> d!1651545 (=> res!2175252 e!3187375)))

(declare-fun lt!2104585 () Bool)

(assert (=> d!1651545 (= res!2175252 (not lt!2104585))))

(assert (=> d!1651545 (= lt!2104585 e!3187376)))

(declare-fun res!2175253 () Bool)

(assert (=> d!1651545 (=> res!2175253 e!3187376)))

(assert (=> d!1651545 (= res!2175253 ((_ is Nil!59035) testedP!265))))

(assert (=> d!1651545 (= (isPrefix!5544 testedP!265 input!5745) lt!2104585)))

(assert (= (and d!1651545 (not res!2175253)) b!5110474))

(assert (= (and b!5110474 res!2175254) b!5110475))

(assert (= (and b!5110475 res!2175251) b!5110476))

(assert (= (and d!1651545 (not res!2175252)) b!5110477))

(assert (=> b!5110476 m!6167652))

(assert (=> b!5110476 m!6167732))

(assert (=> b!5110476 m!6167652))

(assert (=> b!5110476 m!6167732))

(declare-fun m!6167766 () Bool)

(assert (=> b!5110476 m!6167766))

(assert (=> b!5110475 m!6167656))

(assert (=> b!5110475 m!6167754))

(assert (=> b!5110477 m!6167600))

(assert (=> b!5110477 m!6167596))

(assert (=> start!538916 d!1651545))

(declare-fun bs!1191912 () Bool)

(declare-fun d!1651547 () Bool)

(assert (= bs!1191912 (and d!1651547 d!1651517)))

(declare-fun lambda!250262 () Int)

(assert (=> bs!1191912 (= lambda!250262 lambda!250261)))

(assert (=> d!1651547 (= (inv!78528 setElem!29706) (forall!13528 (exprs!4023 setElem!29706) lambda!250262))))

(declare-fun bs!1191913 () Bool)

(assert (= bs!1191913 d!1651547))

(declare-fun m!6167768 () Bool)

(assert (=> bs!1191913 m!6167768))

(assert (=> setNonEmpty!29706 d!1651547))

(declare-fun bs!1191915 () Bool)

(declare-fun b!5110490 () Bool)

(declare-fun d!1651549 () Bool)

(assert (= bs!1191915 (and b!5110490 d!1651549)))

(declare-fun lambda!250279 () Int)

(declare-fun lambda!250278 () Int)

(assert (=> bs!1191915 (not (= lambda!250279 lambda!250278))))

(declare-fun bs!1191917 () Bool)

(declare-fun b!5110491 () Bool)

(assert (= bs!1191917 (and b!5110491 d!1651549)))

(declare-fun lambda!250280 () Int)

(assert (=> bs!1191917 (not (= lambda!250280 lambda!250278))))

(declare-fun bs!1191919 () Bool)

(assert (= bs!1191919 (and b!5110491 b!5110490)))

(assert (=> bs!1191919 (= lambda!250280 lambda!250279)))

(declare-fun e!3187389 () Unit!150135)

(declare-fun Unit!150137 () Unit!150135)

(assert (=> b!5110490 (= e!3187389 Unit!150137)))

(declare-datatypes ((List!59160 0))(
  ( (Nil!59036) (Cons!59036 (h!65484 Context!7046) (t!372161 List!59160)) )
))
(declare-fun lt!2104606 () List!59160)

(declare-fun call!356371 () List!59160)

(assert (=> b!5110490 (= lt!2104606 call!356371)))

(declare-fun lt!2104611 () Unit!150135)

(declare-fun lemmaNotForallThenExists!298 (List!59160 Int) Unit!150135)

(assert (=> b!5110490 (= lt!2104611 (lemmaNotForallThenExists!298 lt!2104606 lambda!250278))))

(declare-fun call!356370 () Bool)

(assert (=> b!5110490 call!356370))

(declare-fun lt!2104610 () Unit!150135)

(assert (=> b!5110490 (= lt!2104610 lt!2104611)))

(declare-fun Unit!150138 () Unit!150135)

(assert (=> b!5110491 (= e!3187389 Unit!150138)))

(declare-fun lt!2104609 () List!59160)

(assert (=> b!5110491 (= lt!2104609 call!356371)))

(declare-fun lt!2104607 () Unit!150135)

(declare-fun lemmaForallThenNotExists!281 (List!59160 Int) Unit!150135)

(assert (=> b!5110491 (= lt!2104607 (lemmaForallThenNotExists!281 lt!2104609 lambda!250278))))

(assert (=> b!5110491 (not call!356370)))

(declare-fun lt!2104613 () Unit!150135)

(assert (=> b!5110491 (= lt!2104613 lt!2104607)))

(declare-fun c!877974 () Bool)

(declare-fun bm!356366 () Bool)

(declare-fun exists!1433 (List!59160 Int) Bool)

(assert (=> bm!356366 (= call!356370 (exists!1433 (ite c!877974 lt!2104606 lt!2104609) (ite c!877974 lambda!250279 lambda!250280)))))

(declare-fun bm!356365 () Bool)

(declare-fun toList!8224 ((InoxSet Context!7046)) List!59160)

(assert (=> bm!356365 (= call!356371 (toList!8224 z!4463))))

(declare-fun lt!2104612 () Bool)

(declare-datatypes ((Option!14658 0))(
  ( (None!14657) (Some!14657 (v!50670 List!59159)) )
))
(declare-fun isEmpty!31857 (Option!14658) Bool)

(declare-fun getLanguageWitness!773 ((InoxSet Context!7046)) Option!14658)

(assert (=> d!1651549 (= lt!2104612 (isEmpty!31857 (getLanguageWitness!773 z!4463)))))

(declare-fun forall!13530 ((InoxSet Context!7046) Int) Bool)

(assert (=> d!1651549 (= lt!2104612 (forall!13530 z!4463 lambda!250278))))

(declare-fun lt!2104608 () Unit!150135)

(assert (=> d!1651549 (= lt!2104608 e!3187389)))

(assert (=> d!1651549 (= c!877974 (not (forall!13530 z!4463 lambda!250278)))))

(assert (=> d!1651549 (= (lostCauseZipper!1025 z!4463) lt!2104612)))

(assert (= (and d!1651549 c!877974) b!5110490))

(assert (= (and d!1651549 (not c!877974)) b!5110491))

(assert (= (or b!5110490 b!5110491) bm!356365))

(assert (= (or b!5110490 b!5110491) bm!356366))

(declare-fun m!6167798 () Bool)

(assert (=> b!5110490 m!6167798))

(declare-fun m!6167800 () Bool)

(assert (=> b!5110491 m!6167800))

(declare-fun m!6167802 () Bool)

(assert (=> bm!356366 m!6167802))

(declare-fun m!6167804 () Bool)

(assert (=> bm!356365 m!6167804))

(declare-fun m!6167806 () Bool)

(assert (=> d!1651549 m!6167806))

(assert (=> d!1651549 m!6167806))

(declare-fun m!6167808 () Bool)

(assert (=> d!1651549 m!6167808))

(declare-fun m!6167810 () Bool)

(assert (=> d!1651549 m!6167810))

(assert (=> d!1651549 m!6167810))

(assert (=> b!5110364 d!1651549))

(declare-fun b!5110494 () Bool)

(declare-fun e!3187392 () Bool)

(assert (=> b!5110494 (= e!3187392 (isPrefix!5544 (tail!10019 knownP!20) (tail!10019 input!5745)))))

(declare-fun b!5110493 () Bool)

(declare-fun res!2175259 () Bool)

(assert (=> b!5110493 (=> (not res!2175259) (not e!3187392))))

(assert (=> b!5110493 (= res!2175259 (= (head!10867 knownP!20) (head!10867 input!5745)))))

(declare-fun b!5110495 () Bool)

(declare-fun e!3187390 () Bool)

(assert (=> b!5110495 (= e!3187390 (>= (size!39445 input!5745) (size!39445 knownP!20)))))

(declare-fun b!5110492 () Bool)

(declare-fun e!3187391 () Bool)

(assert (=> b!5110492 (= e!3187391 e!3187392)))

(declare-fun res!2175262 () Bool)

(assert (=> b!5110492 (=> (not res!2175262) (not e!3187392))))

(assert (=> b!5110492 (= res!2175262 (not ((_ is Nil!59035) input!5745)))))

(declare-fun d!1651563 () Bool)

(assert (=> d!1651563 e!3187390))

(declare-fun res!2175260 () Bool)

(assert (=> d!1651563 (=> res!2175260 e!3187390)))

(declare-fun lt!2104615 () Bool)

(assert (=> d!1651563 (= res!2175260 (not lt!2104615))))

(assert (=> d!1651563 (= lt!2104615 e!3187391)))

(declare-fun res!2175261 () Bool)

(assert (=> d!1651563 (=> res!2175261 e!3187391)))

(assert (=> d!1651563 (= res!2175261 ((_ is Nil!59035) knownP!20))))

(assert (=> d!1651563 (= (isPrefix!5544 knownP!20 input!5745) lt!2104615)))

(assert (= (and d!1651563 (not res!2175261)) b!5110492))

(assert (= (and b!5110492 res!2175262) b!5110493))

(assert (= (and b!5110493 res!2175259) b!5110494))

(assert (= (and d!1651563 (not res!2175260)) b!5110495))

(assert (=> b!5110494 m!6167648))

(assert (=> b!5110494 m!6167732))

(assert (=> b!5110494 m!6167648))

(assert (=> b!5110494 m!6167732))

(declare-fun m!6167812 () Bool)

(assert (=> b!5110494 m!6167812))

(assert (=> b!5110493 m!6167658))

(assert (=> b!5110493 m!6167754))

(assert (=> b!5110495 m!6167600))

(assert (=> b!5110495 m!6167598))

(assert (=> b!5110363 d!1651563))

(declare-fun d!1651565 () Bool)

(declare-fun c!877977 () Bool)

(assert (=> d!1651565 (= c!877977 ((_ is Cons!59035) testedP!265))))

(declare-fun e!3187395 () (InoxSet Context!7046))

(assert (=> d!1651565 (= (derivationZipper!38 baseZ!46 testedP!265) e!3187395)))

(declare-fun b!5110500 () Bool)

(assert (=> b!5110500 (= e!3187395 (derivationZipper!38 (derivationStepZipper!775 baseZ!46 (h!65483 testedP!265)) (t!372160 testedP!265)))))

(declare-fun b!5110501 () Bool)

(assert (=> b!5110501 (= e!3187395 baseZ!46)))

(assert (= (and d!1651565 c!877977) b!5110500))

(assert (= (and d!1651565 (not c!877977)) b!5110501))

(declare-fun m!6167814 () Bool)

(assert (=> b!5110500 m!6167814))

(assert (=> b!5110500 m!6167814))

(declare-fun m!6167816 () Bool)

(assert (=> b!5110500 m!6167816))

(assert (=> b!5110362 d!1651565))

(declare-fun d!1651567 () Bool)

(declare-fun lt!2104616 () Int)

(assert (=> d!1651567 (>= lt!2104616 0)))

(declare-fun e!3187396 () Int)

(assert (=> d!1651567 (= lt!2104616 e!3187396)))

(declare-fun c!877978 () Bool)

(assert (=> d!1651567 (= c!877978 ((_ is Nil!59035) testedP!265))))

(assert (=> d!1651567 (= (size!39445 testedP!265) lt!2104616)))

(declare-fun b!5110502 () Bool)

(assert (=> b!5110502 (= e!3187396 0)))

(declare-fun b!5110503 () Bool)

(assert (=> b!5110503 (= e!3187396 (+ 1 (size!39445 (t!372160 testedP!265))))))

(assert (= (and d!1651567 c!877978) b!5110502))

(assert (= (and d!1651567 (not c!877978)) b!5110503))

(declare-fun m!6167818 () Bool)

(assert (=> b!5110503 m!6167818))

(assert (=> b!5110370 d!1651567))

(declare-fun d!1651569 () Bool)

(declare-fun lt!2104617 () Int)

(assert (=> d!1651569 (>= lt!2104617 0)))

(declare-fun e!3187397 () Int)

(assert (=> d!1651569 (= lt!2104617 e!3187397)))

(declare-fun c!877979 () Bool)

(assert (=> d!1651569 (= c!877979 ((_ is Nil!59035) knownP!20))))

(assert (=> d!1651569 (= (size!39445 knownP!20) lt!2104617)))

(declare-fun b!5110504 () Bool)

(assert (=> b!5110504 (= e!3187397 0)))

(declare-fun b!5110505 () Bool)

(assert (=> b!5110505 (= e!3187397 (+ 1 (size!39445 (t!372160 knownP!20))))))

(assert (= (and d!1651569 c!877979) b!5110504))

(assert (= (and d!1651569 (not c!877979)) b!5110505))

(declare-fun m!6167820 () Bool)

(assert (=> b!5110505 m!6167820))

(assert (=> b!5110370 d!1651569))

(declare-fun condSetEmpty!29709 () Bool)

(assert (=> setNonEmpty!29706 (= condSetEmpty!29709 (= setRest!29705 ((as const (Array Context!7046 Bool)) false)))))

(declare-fun setRes!29709 () Bool)

(assert (=> setNonEmpty!29706 (= tp!1425809 setRes!29709)))

(declare-fun setIsEmpty!29709 () Bool)

(assert (=> setIsEmpty!29709 setRes!29709))

(declare-fun tp!1425820 () Bool)

(declare-fun setElem!29709 () Context!7046)

(declare-fun setNonEmpty!29709 () Bool)

(declare-fun e!3187400 () Bool)

(assert (=> setNonEmpty!29709 (= setRes!29709 (and tp!1425820 (inv!78528 setElem!29709) e!3187400))))

(declare-fun setRest!29709 () (InoxSet Context!7046))

(assert (=> setNonEmpty!29709 (= setRest!29705 ((_ map or) (store ((as const (Array Context!7046 Bool)) false) setElem!29709 true) setRest!29709))))

(declare-fun b!5110510 () Bool)

(declare-fun tp!1425821 () Bool)

(assert (=> b!5110510 (= e!3187400 tp!1425821)))

(assert (= (and setNonEmpty!29706 condSetEmpty!29709) setIsEmpty!29709))

(assert (= (and setNonEmpty!29706 (not condSetEmpty!29709)) setNonEmpty!29709))

(assert (= setNonEmpty!29709 b!5110510))

(declare-fun m!6167822 () Bool)

(assert (=> setNonEmpty!29709 m!6167822))

(declare-fun b!5110515 () Bool)

(declare-fun e!3187403 () Bool)

(declare-fun tp!1425824 () Bool)

(assert (=> b!5110515 (= e!3187403 (and tp_is_empty!37551 tp!1425824))))

(assert (=> b!5110372 (= tp!1425815 e!3187403)))

(assert (= (and b!5110372 ((_ is Cons!59035) (t!372160 input!5745))) b!5110515))

(declare-fun condSetEmpty!29710 () Bool)

(assert (=> setNonEmpty!29705 (= condSetEmpty!29710 (= setRest!29706 ((as const (Array Context!7046 Bool)) false)))))

(declare-fun setRes!29710 () Bool)

(assert (=> setNonEmpty!29705 (= tp!1425810 setRes!29710)))

(declare-fun setIsEmpty!29710 () Bool)

(assert (=> setIsEmpty!29710 setRes!29710))

(declare-fun setElem!29710 () Context!7046)

(declare-fun tp!1425825 () Bool)

(declare-fun e!3187404 () Bool)

(declare-fun setNonEmpty!29710 () Bool)

(assert (=> setNonEmpty!29710 (= setRes!29710 (and tp!1425825 (inv!78528 setElem!29710) e!3187404))))

(declare-fun setRest!29710 () (InoxSet Context!7046))

(assert (=> setNonEmpty!29710 (= setRest!29706 ((_ map or) (store ((as const (Array Context!7046 Bool)) false) setElem!29710 true) setRest!29710))))

(declare-fun b!5110516 () Bool)

(declare-fun tp!1425826 () Bool)

(assert (=> b!5110516 (= e!3187404 tp!1425826)))

(assert (= (and setNonEmpty!29705 condSetEmpty!29710) setIsEmpty!29710))

(assert (= (and setNonEmpty!29705 (not condSetEmpty!29710)) setNonEmpty!29710))

(assert (= setNonEmpty!29710 b!5110516))

(declare-fun m!6167824 () Bool)

(assert (=> setNonEmpty!29710 m!6167824))

(declare-fun b!5110521 () Bool)

(declare-fun e!3187407 () Bool)

(declare-fun tp!1425831 () Bool)

(declare-fun tp!1425832 () Bool)

(assert (=> b!5110521 (= e!3187407 (and tp!1425831 tp!1425832))))

(assert (=> b!5110371 (= tp!1425812 e!3187407)))

(assert (= (and b!5110371 ((_ is Cons!59034) (exprs!4023 setElem!29705))) b!5110521))

(declare-fun b!5110522 () Bool)

(declare-fun e!3187408 () Bool)

(declare-fun tp!1425833 () Bool)

(assert (=> b!5110522 (= e!3187408 (and tp_is_empty!37551 tp!1425833))))

(assert (=> b!5110366 (= tp!1425813 e!3187408)))

(assert (= (and b!5110366 ((_ is Cons!59035) (t!372160 knownP!20))) b!5110522))

(declare-fun b!5110523 () Bool)

(declare-fun e!3187409 () Bool)

(declare-fun tp!1425834 () Bool)

(declare-fun tp!1425835 () Bool)

(assert (=> b!5110523 (= e!3187409 (and tp!1425834 tp!1425835))))

(assert (=> b!5110361 (= tp!1425814 e!3187409)))

(assert (= (and b!5110361 ((_ is Cons!59034) (exprs!4023 setElem!29706))) b!5110523))

(declare-fun b!5110524 () Bool)

(declare-fun e!3187410 () Bool)

(declare-fun tp!1425836 () Bool)

(assert (=> b!5110524 (= e!3187410 (and tp_is_empty!37551 tp!1425836))))

(assert (=> b!5110365 (= tp!1425811 e!3187410)))

(assert (= (and b!5110365 ((_ is Cons!59035) (t!372160 testedP!265))) b!5110524))

(check-sat (not b!5110505) (not b!5110413) (not b!5110384) (not b!5110395) (not b!5110515) (not d!1651501) (not d!1651509) (not b!5110522) (not setNonEmpty!29710) (not b!5110475) (not b!5110415) (not b!5110414) (not b!5110494) (not d!1651541) (not bm!356365) (not b!5110503) (not b!5110456) (not b!5110516) (not d!1651549) (not d!1651517) (not b!5110524) (not d!1651503) (not b!5110493) (not b!5110378) tp_is_empty!37551 (not d!1651537) (not b!5110490) (not b!5110467) (not b!5110472) (not b!5110397) (not b!5110477) (not b!5110379) (not b!5110500) (not b!5110510) (not d!1651515) (not b!5110491) (not setNonEmpty!29709) (not b!5110471) (not b!5110473) (not b!5110521) (not bm!356366) (not b!5110396) (not b!5110523) (not d!1651547) (not d!1651535) (not b!5110495) (not b!5110476) (not b!5110468))
(check-sat)
(get-model)

(declare-fun d!1651577 () Bool)

(assert (=> d!1651577 (= (isEmpty!31855 knownP!20) ((_ is Nil!59035) knownP!20))))

(assert (=> d!1651515 d!1651577))

(declare-fun d!1651579 () Bool)

(declare-fun res!2175275 () Bool)

(declare-fun e!3187442 () Bool)

(assert (=> d!1651579 (=> res!2175275 e!3187442)))

(assert (=> d!1651579 (= res!2175275 ((_ is Nil!59034) (exprs!4023 setElem!29705)))))

(assert (=> d!1651579 (= (forall!13528 (exprs!4023 setElem!29705) lambda!250261) e!3187442)))

(declare-fun b!5110564 () Bool)

(declare-fun e!3187443 () Bool)

(assert (=> b!5110564 (= e!3187442 e!3187443)))

(declare-fun res!2175276 () Bool)

(assert (=> b!5110564 (=> (not res!2175276) (not e!3187443))))

(declare-fun dynLambda!23592 (Int Regex!14139) Bool)

(assert (=> b!5110564 (= res!2175276 (dynLambda!23592 lambda!250261 (h!65482 (exprs!4023 setElem!29705))))))

(declare-fun b!5110565 () Bool)

(assert (=> b!5110565 (= e!3187443 (forall!13528 (t!372159 (exprs!4023 setElem!29705)) lambda!250261))))

(assert (= (and d!1651579 (not res!2175275)) b!5110564))

(assert (= (and b!5110564 res!2175276) b!5110565))

(declare-fun b_lambda!198893 () Bool)

(assert (=> (not b_lambda!198893) (not b!5110564)))

(declare-fun m!6167850 () Bool)

(assert (=> b!5110564 m!6167850))

(declare-fun m!6167852 () Bool)

(assert (=> b!5110565 m!6167852))

(assert (=> d!1651517 d!1651579))

(declare-fun b!5110567 () Bool)

(declare-fun e!3187445 () List!59159)

(assert (=> b!5110567 (= e!3187445 (Cons!59035 (h!65483 testedP!265) (++!12964 (t!372160 testedP!265) lt!2104551)))))

(declare-fun lt!2104645 () List!59159)

(declare-fun e!3187444 () Bool)

(declare-fun b!5110569 () Bool)

(assert (=> b!5110569 (= e!3187444 (or (not (= lt!2104551 Nil!59035)) (= lt!2104645 testedP!265)))))

(declare-fun b!5110568 () Bool)

(declare-fun res!2175278 () Bool)

(assert (=> b!5110568 (=> (not res!2175278) (not e!3187444))))

(assert (=> b!5110568 (= res!2175278 (= (size!39445 lt!2104645) (+ (size!39445 testedP!265) (size!39445 lt!2104551))))))

(declare-fun d!1651581 () Bool)

(assert (=> d!1651581 e!3187444))

(declare-fun res!2175277 () Bool)

(assert (=> d!1651581 (=> (not res!2175277) (not e!3187444))))

(assert (=> d!1651581 (= res!2175277 (= (content!10488 lt!2104645) ((_ map or) (content!10488 testedP!265) (content!10488 lt!2104551))))))

(assert (=> d!1651581 (= lt!2104645 e!3187445)))

(declare-fun c!877992 () Bool)

(assert (=> d!1651581 (= c!877992 ((_ is Nil!59035) testedP!265))))

(assert (=> d!1651581 (= (++!12964 testedP!265 lt!2104551) lt!2104645)))

(declare-fun b!5110566 () Bool)

(assert (=> b!5110566 (= e!3187445 lt!2104551)))

(assert (= (and d!1651581 c!877992) b!5110566))

(assert (= (and d!1651581 (not c!877992)) b!5110567))

(assert (= (and d!1651581 res!2175277) b!5110568))

(assert (= (and b!5110568 res!2175278) b!5110569))

(declare-fun m!6167854 () Bool)

(assert (=> b!5110567 m!6167854))

(declare-fun m!6167856 () Bool)

(assert (=> b!5110568 m!6167856))

(assert (=> b!5110568 m!6167596))

(declare-fun m!6167858 () Bool)

(assert (=> b!5110568 m!6167858))

(declare-fun m!6167860 () Bool)

(assert (=> d!1651581 m!6167860))

(assert (=> d!1651581 m!6167744))

(declare-fun m!6167862 () Bool)

(assert (=> d!1651581 m!6167862))

(assert (=> d!1651503 d!1651581))

(assert (=> d!1651503 d!1651569))

(assert (=> d!1651503 d!1651567))

(declare-fun bs!1191924 () Bool)

(declare-fun d!1651583 () Bool)

(assert (= bs!1191924 (and d!1651583 d!1651549)))

(declare-fun lambda!250299 () Int)

(assert (=> bs!1191924 (not (= lambda!250299 lambda!250278))))

(declare-fun bs!1191925 () Bool)

(assert (= bs!1191925 (and d!1651583 b!5110490)))

(assert (=> bs!1191925 (not (= lambda!250299 lambda!250279))))

(declare-fun bs!1191926 () Bool)

(assert (= bs!1191926 (and d!1651583 b!5110491)))

(assert (=> bs!1191926 (not (= lambda!250299 lambda!250280))))

(assert (=> d!1651583 true))

(declare-fun order!26783 () Int)

(declare-fun dynLambda!23593 (Int Int) Int)

(assert (=> d!1651583 (< (dynLambda!23593 order!26783 (ite c!877974 lambda!250279 lambda!250280)) (dynLambda!23593 order!26783 lambda!250299))))

(declare-fun forall!13532 (List!59160 Int) Bool)

(assert (=> d!1651583 (= (exists!1433 (ite c!877974 lt!2104606 lt!2104609) (ite c!877974 lambda!250279 lambda!250280)) (not (forall!13532 (ite c!877974 lt!2104606 lt!2104609) lambda!250299)))))

(declare-fun bs!1191927 () Bool)

(assert (= bs!1191927 d!1651583))

(declare-fun m!6167864 () Bool)

(assert (=> bs!1191927 m!6167864))

(assert (=> bm!356366 d!1651583))

(declare-fun b!5110573 () Bool)

(declare-fun e!3187447 () List!59159)

(assert (=> b!5110573 (= e!3187447 (Cons!59035 (h!65483 testedP!265) (++!12964 (t!372160 testedP!265) lt!2104577)))))

(declare-fun e!3187446 () Bool)

(declare-fun lt!2104646 () List!59159)

(declare-fun b!5110575 () Bool)

(assert (=> b!5110575 (= e!3187446 (or (not (= lt!2104577 Nil!59035)) (= lt!2104646 testedP!265)))))

(declare-fun b!5110574 () Bool)

(declare-fun res!2175280 () Bool)

(assert (=> b!5110574 (=> (not res!2175280) (not e!3187446))))

(assert (=> b!5110574 (= res!2175280 (= (size!39445 lt!2104646) (+ (size!39445 testedP!265) (size!39445 lt!2104577))))))

(declare-fun d!1651585 () Bool)

(assert (=> d!1651585 e!3187446))

(declare-fun res!2175279 () Bool)

(assert (=> d!1651585 (=> (not res!2175279) (not e!3187446))))

(assert (=> d!1651585 (= res!2175279 (= (content!10488 lt!2104646) ((_ map or) (content!10488 testedP!265) (content!10488 lt!2104577))))))

(assert (=> d!1651585 (= lt!2104646 e!3187447)))

(declare-fun c!877993 () Bool)

(assert (=> d!1651585 (= c!877993 ((_ is Nil!59035) testedP!265))))

(assert (=> d!1651585 (= (++!12964 testedP!265 lt!2104577) lt!2104646)))

(declare-fun b!5110572 () Bool)

(assert (=> b!5110572 (= e!3187447 lt!2104577)))

(assert (= (and d!1651585 c!877993) b!5110572))

(assert (= (and d!1651585 (not c!877993)) b!5110573))

(assert (= (and d!1651585 res!2175279) b!5110574))

(assert (= (and b!5110574 res!2175280) b!5110575))

(declare-fun m!6167866 () Bool)

(assert (=> b!5110573 m!6167866))

(declare-fun m!6167868 () Bool)

(assert (=> b!5110574 m!6167868))

(assert (=> b!5110574 m!6167596))

(declare-fun m!6167870 () Bool)

(assert (=> b!5110574 m!6167870))

(declare-fun m!6167872 () Bool)

(assert (=> d!1651585 m!6167872))

(assert (=> d!1651585 m!6167744))

(declare-fun m!6167874 () Bool)

(assert (=> d!1651585 m!6167874))

(assert (=> d!1651535 d!1651585))

(assert (=> d!1651535 d!1651513))

(assert (=> d!1651535 d!1651567))

(declare-fun d!1651587 () Bool)

(declare-fun e!3187450 () Bool)

(assert (=> d!1651587 e!3187450))

(declare-fun res!2175283 () Bool)

(assert (=> d!1651587 (=> (not res!2175283) (not e!3187450))))

(declare-fun lt!2104649 () List!59160)

(declare-fun noDuplicate!1071 (List!59160) Bool)

(assert (=> d!1651587 (= res!2175283 (noDuplicate!1071 lt!2104649))))

(declare-fun choose!37457 ((InoxSet Context!7046)) List!59160)

(assert (=> d!1651587 (= lt!2104649 (choose!37457 z!4463))))

(assert (=> d!1651587 (= (toList!8224 z!4463) lt!2104649)))

(declare-fun b!5110578 () Bool)

(declare-fun content!10490 (List!59160) (InoxSet Context!7046))

(assert (=> b!5110578 (= e!3187450 (= (content!10490 lt!2104649) z!4463))))

(assert (= (and d!1651587 res!2175283) b!5110578))

(declare-fun m!6167876 () Bool)

(assert (=> d!1651587 m!6167876))

(declare-fun m!6167878 () Bool)

(assert (=> d!1651587 m!6167878))

(declare-fun m!6167880 () Bool)

(assert (=> b!5110578 m!6167880))

(assert (=> bm!356365 d!1651587))

(declare-fun d!1651589 () Bool)

(assert (=> d!1651589 (isPrefix!5544 (++!12964 testedP!265 (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035)) input!5745)))

(assert (=> d!1651589 true))

(declare-fun _$65!1751 () Unit!150135)

(assert (=> d!1651589 (= (choose!37455 testedP!265 input!5745) _$65!1751)))

(declare-fun bs!1191928 () Bool)

(assert (= bs!1191928 d!1651589))

(assert (=> bs!1191928 m!6167620))

(assert (=> bs!1191928 m!6167620))

(assert (=> bs!1191928 m!6167762))

(assert (=> bs!1191928 m!6167758))

(assert (=> bs!1191928 m!6167758))

(assert (=> bs!1191928 m!6167760))

(assert (=> d!1651541 d!1651589))

(declare-fun d!1651591 () Bool)

(assert (=> d!1651591 (= (head!10867 (getSuffix!3218 input!5745 testedP!265)) (h!65483 (getSuffix!3218 input!5745 testedP!265)))))

(assert (=> d!1651541 d!1651591))

(declare-fun b!5110580 () Bool)

(declare-fun e!3187452 () List!59159)

(assert (=> b!5110580 (= e!3187452 (Cons!59035 (h!65483 testedP!265) (++!12964 (t!372160 testedP!265) (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035))))))

(declare-fun b!5110582 () Bool)

(declare-fun lt!2104650 () List!59159)

(declare-fun e!3187451 () Bool)

(assert (=> b!5110582 (= e!3187451 (or (not (= (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035) Nil!59035)) (= lt!2104650 testedP!265)))))

(declare-fun b!5110581 () Bool)

(declare-fun res!2175285 () Bool)

(assert (=> b!5110581 (=> (not res!2175285) (not e!3187451))))

(assert (=> b!5110581 (= res!2175285 (= (size!39445 lt!2104650) (+ (size!39445 testedP!265) (size!39445 (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035)))))))

(declare-fun d!1651593 () Bool)

(assert (=> d!1651593 e!3187451))

(declare-fun res!2175284 () Bool)

(assert (=> d!1651593 (=> (not res!2175284) (not e!3187451))))

(assert (=> d!1651593 (= res!2175284 (= (content!10488 lt!2104650) ((_ map or) (content!10488 testedP!265) (content!10488 (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035)))))))

(assert (=> d!1651593 (= lt!2104650 e!3187452)))

(declare-fun c!877994 () Bool)

(assert (=> d!1651593 (= c!877994 ((_ is Nil!59035) testedP!265))))

(assert (=> d!1651593 (= (++!12964 testedP!265 (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035)) lt!2104650)))

(declare-fun b!5110579 () Bool)

(assert (=> b!5110579 (= e!3187452 (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035))))

(assert (= (and d!1651593 c!877994) b!5110579))

(assert (= (and d!1651593 (not c!877994)) b!5110580))

(assert (= (and d!1651593 res!2175284) b!5110581))

(assert (= (and b!5110581 res!2175285) b!5110582))

(declare-fun m!6167882 () Bool)

(assert (=> b!5110580 m!6167882))

(declare-fun m!6167884 () Bool)

(assert (=> b!5110581 m!6167884))

(assert (=> b!5110581 m!6167596))

(declare-fun m!6167886 () Bool)

(assert (=> b!5110581 m!6167886))

(declare-fun m!6167888 () Bool)

(assert (=> d!1651593 m!6167888))

(assert (=> d!1651593 m!6167744))

(declare-fun m!6167890 () Bool)

(assert (=> d!1651593 m!6167890))

(assert (=> d!1651541 d!1651593))

(assert (=> d!1651541 d!1651545))

(assert (=> d!1651541 d!1651535))

(declare-fun b!5110585 () Bool)

(declare-fun e!3187455 () Bool)

(assert (=> b!5110585 (= e!3187455 (isPrefix!5544 (tail!10019 (++!12964 testedP!265 (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035))) (tail!10019 input!5745)))))

(declare-fun b!5110584 () Bool)

(declare-fun res!2175286 () Bool)

(assert (=> b!5110584 (=> (not res!2175286) (not e!3187455))))

(assert (=> b!5110584 (= res!2175286 (= (head!10867 (++!12964 testedP!265 (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035))) (head!10867 input!5745)))))

(declare-fun b!5110586 () Bool)

(declare-fun e!3187453 () Bool)

(assert (=> b!5110586 (= e!3187453 (>= (size!39445 input!5745) (size!39445 (++!12964 testedP!265 (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035)))))))

(declare-fun b!5110583 () Bool)

(declare-fun e!3187454 () Bool)

(assert (=> b!5110583 (= e!3187454 e!3187455)))

(declare-fun res!2175289 () Bool)

(assert (=> b!5110583 (=> (not res!2175289) (not e!3187455))))

(assert (=> b!5110583 (= res!2175289 (not ((_ is Nil!59035) input!5745)))))

(declare-fun d!1651595 () Bool)

(assert (=> d!1651595 e!3187453))

(declare-fun res!2175287 () Bool)

(assert (=> d!1651595 (=> res!2175287 e!3187453)))

(declare-fun lt!2104651 () Bool)

(assert (=> d!1651595 (= res!2175287 (not lt!2104651))))

(assert (=> d!1651595 (= lt!2104651 e!3187454)))

(declare-fun res!2175288 () Bool)

(assert (=> d!1651595 (=> res!2175288 e!3187454)))

(assert (=> d!1651595 (= res!2175288 ((_ is Nil!59035) (++!12964 testedP!265 (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035))))))

(assert (=> d!1651595 (= (isPrefix!5544 (++!12964 testedP!265 (Cons!59035 (head!10867 (getSuffix!3218 input!5745 testedP!265)) Nil!59035)) input!5745) lt!2104651)))

(assert (= (and d!1651595 (not res!2175288)) b!5110583))

(assert (= (and b!5110583 res!2175289) b!5110584))

(assert (= (and b!5110584 res!2175286) b!5110585))

(assert (= (and d!1651595 (not res!2175287)) b!5110586))

(assert (=> b!5110585 m!6167758))

(declare-fun m!6167892 () Bool)

(assert (=> b!5110585 m!6167892))

(assert (=> b!5110585 m!6167732))

(assert (=> b!5110585 m!6167892))

(assert (=> b!5110585 m!6167732))

(declare-fun m!6167894 () Bool)

(assert (=> b!5110585 m!6167894))

(assert (=> b!5110584 m!6167758))

(declare-fun m!6167896 () Bool)

(assert (=> b!5110584 m!6167896))

(assert (=> b!5110584 m!6167754))

(assert (=> b!5110586 m!6167600))

(assert (=> b!5110586 m!6167758))

(declare-fun m!6167898 () Bool)

(assert (=> b!5110586 m!6167898))

(assert (=> d!1651541 d!1651595))

(declare-fun bs!1191929 () Bool)

(declare-fun d!1651597 () Bool)

(assert (= bs!1191929 (and d!1651597 d!1651549)))

(declare-fun lambda!250302 () Int)

(assert (=> bs!1191929 (not (= lambda!250302 lambda!250278))))

(declare-fun bs!1191930 () Bool)

(assert (= bs!1191930 (and d!1651597 b!5110490)))

(assert (=> bs!1191930 (not (= lambda!250302 lambda!250279))))

(declare-fun bs!1191931 () Bool)

(assert (= bs!1191931 (and d!1651597 b!5110491)))

(assert (=> bs!1191931 (not (= lambda!250302 lambda!250280))))

(declare-fun bs!1191932 () Bool)

(assert (= bs!1191932 (and d!1651597 d!1651583)))

(assert (=> bs!1191932 (= (= lambda!250278 (ite c!877974 lambda!250279 lambda!250280)) (= lambda!250302 lambda!250299))))

(assert (=> d!1651597 true))

(assert (=> d!1651597 (< (dynLambda!23593 order!26783 lambda!250278) (dynLambda!23593 order!26783 lambda!250302))))

(assert (=> d!1651597 (not (exists!1433 lt!2104609 lambda!250302))))

(declare-fun lt!2104654 () Unit!150135)

(declare-fun choose!37458 (List!59160 Int) Unit!150135)

(assert (=> d!1651597 (= lt!2104654 (choose!37458 lt!2104609 lambda!250278))))

(assert (=> d!1651597 (forall!13532 lt!2104609 lambda!250278)))

(assert (=> d!1651597 (= (lemmaForallThenNotExists!281 lt!2104609 lambda!250278) lt!2104654)))

(declare-fun bs!1191933 () Bool)

(assert (= bs!1191933 d!1651597))

(declare-fun m!6167900 () Bool)

(assert (=> bs!1191933 m!6167900))

(declare-fun m!6167902 () Bool)

(assert (=> bs!1191933 m!6167902))

(declare-fun m!6167904 () Bool)

(assert (=> bs!1191933 m!6167904))

(assert (=> b!5110491 d!1651597))

(declare-fun d!1651599 () Bool)

(declare-fun lt!2104655 () Int)

(assert (=> d!1651599 (>= lt!2104655 0)))

(declare-fun e!3187458 () Int)

(assert (=> d!1651599 (= lt!2104655 e!3187458)))

(declare-fun c!877995 () Bool)

(assert (=> d!1651599 (= c!877995 ((_ is Nil!59035) (t!372160 input!5745)))))

(assert (=> d!1651599 (= (size!39445 (t!372160 input!5745)) lt!2104655)))

(declare-fun b!5110587 () Bool)

(assert (=> b!5110587 (= e!3187458 0)))

(declare-fun b!5110588 () Bool)

(assert (=> b!5110588 (= e!3187458 (+ 1 (size!39445 (t!372160 (t!372160 input!5745)))))))

(assert (= (and d!1651599 c!877995) b!5110587))

(assert (= (and d!1651599 (not c!877995)) b!5110588))

(declare-fun m!6167906 () Bool)

(assert (=> b!5110588 m!6167906))

(assert (=> b!5110413 d!1651599))

(declare-fun d!1651601 () Bool)

(declare-fun lt!2104656 () List!59159)

(assert (=> d!1651601 (= (++!12964 (t!372160 testedP!265) lt!2104656) (tail!10019 knownP!20))))

(declare-fun e!3187459 () List!59159)

(assert (=> d!1651601 (= lt!2104656 e!3187459)))

(declare-fun c!877996 () Bool)

(assert (=> d!1651601 (= c!877996 ((_ is Cons!59035) (t!372160 testedP!265)))))

(assert (=> d!1651601 (>= (size!39445 (tail!10019 knownP!20)) (size!39445 (t!372160 testedP!265)))))

(assert (=> d!1651601 (= (getSuffix!3218 (tail!10019 knownP!20) (t!372160 testedP!265)) lt!2104656)))

(declare-fun b!5110589 () Bool)

(assert (=> b!5110589 (= e!3187459 (getSuffix!3218 (tail!10019 (tail!10019 knownP!20)) (t!372160 (t!372160 testedP!265))))))

(declare-fun b!5110590 () Bool)

(assert (=> b!5110590 (= e!3187459 (tail!10019 knownP!20))))

(assert (= (and d!1651601 c!877996) b!5110589))

(assert (= (and d!1651601 (not c!877996)) b!5110590))

(declare-fun m!6167908 () Bool)

(assert (=> d!1651601 m!6167908))

(assert (=> d!1651601 m!6167648))

(declare-fun m!6167910 () Bool)

(assert (=> d!1651601 m!6167910))

(assert (=> d!1651601 m!6167818))

(assert (=> b!5110589 m!6167648))

(declare-fun m!6167912 () Bool)

(assert (=> b!5110589 m!6167912))

(assert (=> b!5110589 m!6167912))

(declare-fun m!6167914 () Bool)

(assert (=> b!5110589 m!6167914))

(assert (=> b!5110384 d!1651601))

(declare-fun d!1651603 () Bool)

(assert (=> d!1651603 (= (tail!10019 knownP!20) (t!372160 knownP!20))))

(assert (=> b!5110384 d!1651603))

(declare-fun bs!1191934 () Bool)

(declare-fun d!1651605 () Bool)

(assert (= bs!1191934 (and d!1651605 d!1651597)))

(declare-fun lambda!250305 () Int)

(assert (=> bs!1191934 (= lambda!250305 lambda!250302)))

(declare-fun bs!1191935 () Bool)

(assert (= bs!1191935 (and d!1651605 b!5110490)))

(assert (=> bs!1191935 (not (= lambda!250305 lambda!250279))))

(declare-fun bs!1191936 () Bool)

(assert (= bs!1191936 (and d!1651605 d!1651549)))

(assert (=> bs!1191936 (not (= lambda!250305 lambda!250278))))

(declare-fun bs!1191937 () Bool)

(assert (= bs!1191937 (and d!1651605 d!1651583)))

(assert (=> bs!1191937 (= (= lambda!250278 (ite c!877974 lambda!250279 lambda!250280)) (= lambda!250305 lambda!250299))))

(declare-fun bs!1191938 () Bool)

(assert (= bs!1191938 (and d!1651605 b!5110491)))

(assert (=> bs!1191938 (not (= lambda!250305 lambda!250280))))

(assert (=> d!1651605 true))

(assert (=> d!1651605 (< (dynLambda!23593 order!26783 lambda!250278) (dynLambda!23593 order!26783 lambda!250305))))

(assert (=> d!1651605 (exists!1433 lt!2104606 lambda!250305)))

(declare-fun lt!2104659 () Unit!150135)

(declare-fun choose!37460 (List!59160 Int) Unit!150135)

(assert (=> d!1651605 (= lt!2104659 (choose!37460 lt!2104606 lambda!250278))))

(assert (=> d!1651605 (not (forall!13532 lt!2104606 lambda!250278))))

(assert (=> d!1651605 (= (lemmaNotForallThenExists!298 lt!2104606 lambda!250278) lt!2104659)))

(declare-fun bs!1191939 () Bool)

(assert (= bs!1191939 d!1651605))

(declare-fun m!6167916 () Bool)

(assert (=> bs!1191939 m!6167916))

(declare-fun m!6167918 () Bool)

(assert (=> bs!1191939 m!6167918))

(declare-fun m!6167920 () Bool)

(assert (=> bs!1191939 m!6167920))

(assert (=> b!5110490 d!1651605))

(declare-fun bs!1191940 () Bool)

(declare-fun d!1651607 () Bool)

(assert (= bs!1191940 (and d!1651607 d!1651605)))

(declare-fun lambda!250308 () Int)

(assert (=> bs!1191940 (not (= lambda!250308 lambda!250305))))

(declare-fun bs!1191941 () Bool)

(assert (= bs!1191941 (and d!1651607 d!1651597)))

(assert (=> bs!1191941 (not (= lambda!250308 lambda!250302))))

(declare-fun bs!1191942 () Bool)

(assert (= bs!1191942 (and d!1651607 b!5110490)))

(assert (=> bs!1191942 (not (= lambda!250308 lambda!250279))))

(declare-fun bs!1191943 () Bool)

(assert (= bs!1191943 (and d!1651607 d!1651549)))

(assert (=> bs!1191943 (not (= lambda!250308 lambda!250278))))

(declare-fun bs!1191944 () Bool)

(assert (= bs!1191944 (and d!1651607 d!1651583)))

(assert (=> bs!1191944 (not (= lambda!250308 lambda!250299))))

(declare-fun bs!1191945 () Bool)

(assert (= bs!1191945 (and d!1651607 b!5110491)))

(assert (=> bs!1191945 (not (= lambda!250308 lambda!250280))))

(declare-fun exists!1436 ((InoxSet Context!7046) Int) Bool)

(assert (=> d!1651607 (= (nullableZipper!987 z!4463) (exists!1436 z!4463 lambda!250308))))

(declare-fun bs!1191946 () Bool)

(assert (= bs!1191946 d!1651607))

(declare-fun m!6167922 () Bool)

(assert (=> bs!1191946 m!6167922))

(assert (=> b!5110378 d!1651607))

(declare-fun d!1651609 () Bool)

(assert (=> d!1651609 (= (head!10867 lt!2104546) (h!65483 lt!2104546))))

(assert (=> b!5110471 d!1651609))

(declare-fun d!1651611 () Bool)

(assert (=> d!1651611 (= (head!10867 input!5745) (h!65483 input!5745))))

(assert (=> b!5110471 d!1651611))

(assert (=> d!1651509 d!1651505))

(declare-fun d!1651613 () Bool)

(assert (=> d!1651613 (isPrefix!5544 testedP!265 knownP!20)))

(assert (=> d!1651613 true))

(declare-fun _$69!343 () Unit!150135)

(assert (=> d!1651613 (= (choose!37453 knownP!20 testedP!265 input!5745) _$69!343)))

(declare-fun bs!1191947 () Bool)

(assert (= bs!1191947 d!1651613))

(assert (=> bs!1191947 m!6167616))

(assert (=> d!1651509 d!1651613))

(assert (=> d!1651509 d!1651563))

(assert (=> b!5110397 d!1651569))

(assert (=> b!5110397 d!1651567))

(declare-fun d!1651615 () Bool)

(declare-fun c!877999 () Bool)

(assert (=> d!1651615 (= c!877999 (isEmpty!31855 (tail!10019 knownP!20)))))

(declare-fun e!3187462 () Bool)

(assert (=> d!1651615 (= (matchZipper!807 (derivationStepZipper!775 baseZ!46 (head!10867 knownP!20)) (tail!10019 knownP!20)) e!3187462)))

(declare-fun b!5110591 () Bool)

(assert (=> b!5110591 (= e!3187462 (nullableZipper!987 (derivationStepZipper!775 baseZ!46 (head!10867 knownP!20))))))

(declare-fun b!5110592 () Bool)

(assert (=> b!5110592 (= e!3187462 (matchZipper!807 (derivationStepZipper!775 (derivationStepZipper!775 baseZ!46 (head!10867 knownP!20)) (head!10867 (tail!10019 knownP!20))) (tail!10019 (tail!10019 knownP!20))))))

(assert (= (and d!1651615 c!877999) b!5110591))

(assert (= (and d!1651615 (not c!877999)) b!5110592))

(assert (=> d!1651615 m!6167648))

(declare-fun m!6167924 () Bool)

(assert (=> d!1651615 m!6167924))

(assert (=> b!5110591 m!6167672))

(declare-fun m!6167926 () Bool)

(assert (=> b!5110591 m!6167926))

(assert (=> b!5110592 m!6167648))

(declare-fun m!6167928 () Bool)

(assert (=> b!5110592 m!6167928))

(assert (=> b!5110592 m!6167672))

(assert (=> b!5110592 m!6167928))

(declare-fun m!6167930 () Bool)

(assert (=> b!5110592 m!6167930))

(assert (=> b!5110592 m!6167648))

(assert (=> b!5110592 m!6167912))

(assert (=> b!5110592 m!6167930))

(assert (=> b!5110592 m!6167912))

(declare-fun m!6167932 () Bool)

(assert (=> b!5110592 m!6167932))

(assert (=> b!5110415 d!1651615))

(declare-fun d!1651617 () Bool)

(assert (=> d!1651617 true))

(declare-fun lambda!250311 () Int)

(declare-fun flatMap!321 ((InoxSet Context!7046) Int) (InoxSet Context!7046))

(assert (=> d!1651617 (= (derivationStepZipper!775 baseZ!46 (head!10867 knownP!20)) (flatMap!321 baseZ!46 lambda!250311))))

(declare-fun bs!1191948 () Bool)

(assert (= bs!1191948 d!1651617))

(declare-fun m!6167934 () Bool)

(assert (=> bs!1191948 m!6167934))

(assert (=> b!5110415 d!1651617))

(declare-fun d!1651621 () Bool)

(assert (=> d!1651621 (= (head!10867 knownP!20) (h!65483 knownP!20))))

(assert (=> b!5110415 d!1651621))

(assert (=> b!5110415 d!1651603))

(declare-fun b!5110597 () Bool)

(declare-fun e!3187465 () Bool)

(assert (=> b!5110597 (= e!3187465 (isPrefix!5544 (tail!10019 (tail!10019 testedP!265)) (tail!10019 (tail!10019 knownP!20))))))

(declare-fun b!5110596 () Bool)

(declare-fun res!2175290 () Bool)

(assert (=> b!5110596 (=> (not res!2175290) (not e!3187465))))

(assert (=> b!5110596 (= res!2175290 (= (head!10867 (tail!10019 testedP!265)) (head!10867 (tail!10019 knownP!20))))))

(declare-fun b!5110598 () Bool)

(declare-fun e!3187463 () Bool)

(assert (=> b!5110598 (= e!3187463 (>= (size!39445 (tail!10019 knownP!20)) (size!39445 (tail!10019 testedP!265))))))

(declare-fun b!5110595 () Bool)

(declare-fun e!3187464 () Bool)

(assert (=> b!5110595 (= e!3187464 e!3187465)))

(declare-fun res!2175293 () Bool)

(assert (=> b!5110595 (=> (not res!2175293) (not e!3187465))))

(assert (=> b!5110595 (= res!2175293 (not ((_ is Nil!59035) (tail!10019 knownP!20))))))

(declare-fun d!1651623 () Bool)

(assert (=> d!1651623 e!3187463))

(declare-fun res!2175291 () Bool)

(assert (=> d!1651623 (=> res!2175291 e!3187463)))

(declare-fun lt!2104660 () Bool)

(assert (=> d!1651623 (= res!2175291 (not lt!2104660))))

(assert (=> d!1651623 (= lt!2104660 e!3187464)))

(declare-fun res!2175292 () Bool)

(assert (=> d!1651623 (=> res!2175292 e!3187464)))

(assert (=> d!1651623 (= res!2175292 ((_ is Nil!59035) (tail!10019 testedP!265)))))

(assert (=> d!1651623 (= (isPrefix!5544 (tail!10019 testedP!265) (tail!10019 knownP!20)) lt!2104660)))

(assert (= (and d!1651623 (not res!2175292)) b!5110595))

(assert (= (and b!5110595 res!2175293) b!5110596))

(assert (= (and b!5110596 res!2175290) b!5110597))

(assert (= (and d!1651623 (not res!2175291)) b!5110598))

(assert (=> b!5110597 m!6167652))

(declare-fun m!6167936 () Bool)

(assert (=> b!5110597 m!6167936))

(assert (=> b!5110597 m!6167648))

(assert (=> b!5110597 m!6167912))

(assert (=> b!5110597 m!6167936))

(assert (=> b!5110597 m!6167912))

(declare-fun m!6167938 () Bool)

(assert (=> b!5110597 m!6167938))

(assert (=> b!5110596 m!6167652))

(declare-fun m!6167940 () Bool)

(assert (=> b!5110596 m!6167940))

(assert (=> b!5110596 m!6167648))

(assert (=> b!5110596 m!6167928))

(assert (=> b!5110598 m!6167648))

(assert (=> b!5110598 m!6167910))

(assert (=> b!5110598 m!6167652))

(declare-fun m!6167942 () Bool)

(assert (=> b!5110598 m!6167942))

(assert (=> b!5110396 d!1651623))

(declare-fun d!1651625 () Bool)

(assert (=> d!1651625 (= (tail!10019 testedP!265) (t!372160 testedP!265))))

(assert (=> b!5110396 d!1651625))

(assert (=> b!5110396 d!1651603))

(assert (=> b!5110495 d!1651513))

(assert (=> b!5110495 d!1651569))

(declare-fun bs!1191949 () Bool)

(declare-fun d!1651627 () Bool)

(assert (= bs!1191949 (and d!1651627 d!1651597)))

(declare-fun lambda!250312 () Int)

(assert (=> bs!1191949 (not (= lambda!250312 lambda!250302))))

(declare-fun bs!1191950 () Bool)

(assert (= bs!1191950 (and d!1651627 b!5110490)))

(assert (=> bs!1191950 (not (= lambda!250312 lambda!250279))))

(declare-fun bs!1191951 () Bool)

(assert (= bs!1191951 (and d!1651627 d!1651549)))

(assert (=> bs!1191951 (not (= lambda!250312 lambda!250278))))

(declare-fun bs!1191952 () Bool)

(assert (= bs!1191952 (and d!1651627 d!1651583)))

(assert (=> bs!1191952 (not (= lambda!250312 lambda!250299))))

(declare-fun bs!1191953 () Bool)

(assert (= bs!1191953 (and d!1651627 b!5110491)))

(assert (=> bs!1191953 (not (= lambda!250312 lambda!250280))))

(declare-fun bs!1191954 () Bool)

(assert (= bs!1191954 (and d!1651627 d!1651605)))

(assert (=> bs!1191954 (not (= lambda!250312 lambda!250305))))

(declare-fun bs!1191955 () Bool)

(assert (= bs!1191955 (and d!1651627 d!1651607)))

(assert (=> bs!1191955 (= lambda!250312 lambda!250308)))

(assert (=> d!1651627 (= (nullableZipper!987 baseZ!46) (exists!1436 baseZ!46 lambda!250312))))

(declare-fun bs!1191956 () Bool)

(assert (= bs!1191956 d!1651627))

(declare-fun m!6167944 () Bool)

(assert (=> bs!1191956 m!6167944))

(assert (=> b!5110414 d!1651627))

(declare-fun d!1651629 () Bool)

(assert (=> d!1651629 (= (head!10867 testedP!265) (h!65483 testedP!265))))

(assert (=> b!5110395 d!1651629))

(assert (=> b!5110395 d!1651621))

(declare-fun b!5110605 () Bool)

(declare-fun e!3187470 () Bool)

(assert (=> b!5110605 (= e!3187470 (isPrefix!5544 (tail!10019 (tail!10019 knownP!20)) (tail!10019 (tail!10019 input!5745))))))

(declare-fun b!5110604 () Bool)

(declare-fun res!2175294 () Bool)

(assert (=> b!5110604 (=> (not res!2175294) (not e!3187470))))

(assert (=> b!5110604 (= res!2175294 (= (head!10867 (tail!10019 knownP!20)) (head!10867 (tail!10019 input!5745))))))

(declare-fun b!5110606 () Bool)

(declare-fun e!3187468 () Bool)

(assert (=> b!5110606 (= e!3187468 (>= (size!39445 (tail!10019 input!5745)) (size!39445 (tail!10019 knownP!20))))))

(declare-fun b!5110603 () Bool)

(declare-fun e!3187469 () Bool)

(assert (=> b!5110603 (= e!3187469 e!3187470)))

(declare-fun res!2175297 () Bool)

(assert (=> b!5110603 (=> (not res!2175297) (not e!3187470))))

(assert (=> b!5110603 (= res!2175297 (not ((_ is Nil!59035) (tail!10019 input!5745))))))

(declare-fun d!1651631 () Bool)

(assert (=> d!1651631 e!3187468))

(declare-fun res!2175295 () Bool)

(assert (=> d!1651631 (=> res!2175295 e!3187468)))

(declare-fun lt!2104661 () Bool)

(assert (=> d!1651631 (= res!2175295 (not lt!2104661))))

(assert (=> d!1651631 (= lt!2104661 e!3187469)))

(declare-fun res!2175296 () Bool)

(assert (=> d!1651631 (=> res!2175296 e!3187469)))

(assert (=> d!1651631 (= res!2175296 ((_ is Nil!59035) (tail!10019 knownP!20)))))

(assert (=> d!1651631 (= (isPrefix!5544 (tail!10019 knownP!20) (tail!10019 input!5745)) lt!2104661)))

(assert (= (and d!1651631 (not res!2175296)) b!5110603))

(assert (= (and b!5110603 res!2175297) b!5110604))

(assert (= (and b!5110604 res!2175294) b!5110605))

(assert (= (and d!1651631 (not res!2175295)) b!5110606))

(assert (=> b!5110605 m!6167648))

(assert (=> b!5110605 m!6167912))

(assert (=> b!5110605 m!6167732))

(declare-fun m!6167950 () Bool)

(assert (=> b!5110605 m!6167950))

(assert (=> b!5110605 m!6167912))

(assert (=> b!5110605 m!6167950))

(declare-fun m!6167952 () Bool)

(assert (=> b!5110605 m!6167952))

(assert (=> b!5110604 m!6167648))

(assert (=> b!5110604 m!6167928))

(assert (=> b!5110604 m!6167732))

(declare-fun m!6167954 () Bool)

(assert (=> b!5110604 m!6167954))

(assert (=> b!5110606 m!6167732))

(declare-fun m!6167956 () Bool)

(assert (=> b!5110606 m!6167956))

(assert (=> b!5110606 m!6167648))

(assert (=> b!5110606 m!6167910))

(assert (=> b!5110494 d!1651631))

(assert (=> b!5110494 d!1651603))

(declare-fun d!1651635 () Bool)

(assert (=> d!1651635 (= (tail!10019 input!5745) (t!372160 input!5745))))

(assert (=> b!5110494 d!1651635))

(declare-fun d!1651637 () Bool)

(declare-fun lt!2104662 () List!59159)

(assert (=> d!1651637 (= (++!12964 (t!372160 testedP!265) lt!2104662) (tail!10019 input!5745))))

(declare-fun e!3187473 () List!59159)

(assert (=> d!1651637 (= lt!2104662 e!3187473)))

(declare-fun c!878006 () Bool)

(assert (=> d!1651637 (= c!878006 ((_ is Cons!59035) (t!372160 testedP!265)))))

(assert (=> d!1651637 (>= (size!39445 (tail!10019 input!5745)) (size!39445 (t!372160 testedP!265)))))

(assert (=> d!1651637 (= (getSuffix!3218 (tail!10019 input!5745) (t!372160 testedP!265)) lt!2104662)))

(declare-fun b!5110611 () Bool)

(assert (=> b!5110611 (= e!3187473 (getSuffix!3218 (tail!10019 (tail!10019 input!5745)) (t!372160 (t!372160 testedP!265))))))

(declare-fun b!5110613 () Bool)

(assert (=> b!5110613 (= e!3187473 (tail!10019 input!5745))))

(assert (= (and d!1651637 c!878006) b!5110611))

(assert (= (and d!1651637 (not c!878006)) b!5110613))

(declare-fun m!6167966 () Bool)

(assert (=> d!1651637 m!6167966))

(assert (=> d!1651637 m!6167732))

(assert (=> d!1651637 m!6167956))

(assert (=> d!1651637 m!6167818))

(assert (=> b!5110611 m!6167732))

(assert (=> b!5110611 m!6167950))

(assert (=> b!5110611 m!6167950))

(declare-fun m!6167968 () Bool)

(assert (=> b!5110611 m!6167968))

(assert (=> b!5110456 d!1651637))

(assert (=> b!5110456 d!1651635))

(declare-fun d!1651643 () Bool)

(declare-fun lt!2104663 () Int)

(assert (=> d!1651643 (>= lt!2104663 0)))

(declare-fun e!3187475 () Int)

(assert (=> d!1651643 (= lt!2104663 e!3187475)))

(declare-fun c!878008 () Bool)

(assert (=> d!1651643 (= c!878008 ((_ is Nil!59035) lt!2104580))))

(assert (=> d!1651643 (= (size!39445 lt!2104580) lt!2104663)))

(declare-fun b!5110615 () Bool)

(assert (=> b!5110615 (= e!3187475 0)))

(declare-fun b!5110616 () Bool)

(assert (=> b!5110616 (= e!3187475 (+ 1 (size!39445 (t!372160 lt!2104580))))))

(assert (= (and d!1651643 c!878008) b!5110615))

(assert (= (and d!1651643 (not c!878008)) b!5110616))

(declare-fun m!6167970 () Bool)

(assert (=> b!5110616 m!6167970))

(assert (=> b!5110468 d!1651643))

(assert (=> b!5110468 d!1651567))

(declare-fun d!1651645 () Bool)

(declare-fun lt!2104664 () Int)

(assert (=> d!1651645 (>= lt!2104664 0)))

(declare-fun e!3187476 () Int)

(assert (=> d!1651645 (= lt!2104664 e!3187476)))

(declare-fun c!878009 () Bool)

(assert (=> d!1651645 (= c!878009 ((_ is Nil!59035) (Cons!59035 (head!10867 lt!2104543) Nil!59035)))))

(assert (=> d!1651645 (= (size!39445 (Cons!59035 (head!10867 lt!2104543) Nil!59035)) lt!2104664)))

(declare-fun b!5110617 () Bool)

(assert (=> b!5110617 (= e!3187476 0)))

(declare-fun b!5110618 () Bool)

(assert (=> b!5110618 (= e!3187476 (+ 1 (size!39445 (t!372160 (Cons!59035 (head!10867 lt!2104543) Nil!59035)))))))

(assert (= (and d!1651645 c!878009) b!5110617))

(assert (= (and d!1651645 (not c!878009)) b!5110618))

(declare-fun m!6167974 () Bool)

(assert (=> b!5110618 m!6167974))

(assert (=> b!5110468 d!1651645))

(assert (=> b!5110493 d!1651621))

(assert (=> b!5110493 d!1651611))

(declare-fun d!1651649 () Bool)

(assert (=> d!1651649 (= (isEmpty!31857 (getLanguageWitness!773 z!4463)) (not ((_ is Some!14657) (getLanguageWitness!773 z!4463))))))

(assert (=> d!1651549 d!1651649))

(declare-fun bs!1191961 () Bool)

(declare-fun d!1651651 () Bool)

(assert (= bs!1191961 (and d!1651651 d!1651597)))

(declare-fun lambda!250322 () Int)

(assert (=> bs!1191961 (not (= lambda!250322 lambda!250302))))

(declare-fun bs!1191962 () Bool)

(assert (= bs!1191962 (and d!1651651 d!1651627)))

(assert (=> bs!1191962 (not (= lambda!250322 lambda!250312))))

(declare-fun bs!1191963 () Bool)

(assert (= bs!1191963 (and d!1651651 b!5110490)))

(assert (=> bs!1191963 (= lambda!250322 lambda!250279)))

(declare-fun bs!1191964 () Bool)

(assert (= bs!1191964 (and d!1651651 d!1651549)))

(assert (=> bs!1191964 (not (= lambda!250322 lambda!250278))))

(declare-fun bs!1191965 () Bool)

(assert (= bs!1191965 (and d!1651651 d!1651583)))

(assert (=> bs!1191965 (not (= lambda!250322 lambda!250299))))

(declare-fun bs!1191966 () Bool)

(assert (= bs!1191966 (and d!1651651 b!5110491)))

(assert (=> bs!1191966 (= lambda!250322 lambda!250280)))

(declare-fun bs!1191967 () Bool)

(assert (= bs!1191967 (and d!1651651 d!1651605)))

(assert (=> bs!1191967 (not (= lambda!250322 lambda!250305))))

(declare-fun bs!1191968 () Bool)

(assert (= bs!1191968 (and d!1651651 d!1651607)))

(assert (=> bs!1191968 (not (= lambda!250322 lambda!250308))))

(declare-fun lt!2104670 () Option!14658)

(declare-fun isDefined!11508 (Option!14658) Bool)

(assert (=> d!1651651 (= (isDefined!11508 lt!2104670) (exists!1436 z!4463 lambda!250322))))

(declare-fun e!3187483 () Option!14658)

(assert (=> d!1651651 (= lt!2104670 e!3187483)))

(declare-fun c!878025 () Bool)

(assert (=> d!1651651 (= c!878025 (exists!1436 z!4463 lambda!250322))))

(assert (=> d!1651651 (= (getLanguageWitness!773 z!4463) lt!2104670)))

(declare-fun b!5110631 () Bool)

(declare-fun getLanguageWitness!776 (Context!7046) Option!14658)

(declare-fun getWitness!669 ((InoxSet Context!7046) Int) Context!7046)

(assert (=> b!5110631 (= e!3187483 (getLanguageWitness!776 (getWitness!669 z!4463 lambda!250322)))))

(declare-fun b!5110632 () Bool)

(assert (=> b!5110632 (= e!3187483 None!14657)))

(assert (= (and d!1651651 c!878025) b!5110631))

(assert (= (and d!1651651 (not c!878025)) b!5110632))

(declare-fun m!6167986 () Bool)

(assert (=> d!1651651 m!6167986))

(declare-fun m!6167988 () Bool)

(assert (=> d!1651651 m!6167988))

(assert (=> d!1651651 m!6167988))

(declare-fun m!6167990 () Bool)

(assert (=> b!5110631 m!6167990))

(assert (=> b!5110631 m!6167990))

(declare-fun m!6167992 () Bool)

(assert (=> b!5110631 m!6167992))

(assert (=> d!1651549 d!1651651))

(declare-fun d!1651659 () Bool)

(declare-fun lt!2104674 () Bool)

(assert (=> d!1651659 (= lt!2104674 (forall!13532 (toList!8224 z!4463) lambda!250278))))

(declare-fun choose!37462 ((InoxSet Context!7046) Int) Bool)

(assert (=> d!1651659 (= lt!2104674 (choose!37462 z!4463 lambda!250278))))

(assert (=> d!1651659 (= (forall!13530 z!4463 lambda!250278) lt!2104674)))

(declare-fun bs!1191972 () Bool)

(assert (= bs!1191972 d!1651659))

(assert (=> bs!1191972 m!6167804))

(assert (=> bs!1191972 m!6167804))

(declare-fun m!6168002 () Bool)

(assert (=> bs!1191972 m!6168002))

(declare-fun m!6168004 () Bool)

(assert (=> bs!1191972 m!6168004))

(assert (=> d!1651549 d!1651659))

(declare-fun d!1651663 () Bool)

(declare-fun c!878029 () Bool)

(assert (=> d!1651663 (= c!878029 ((_ is Cons!59035) (t!372160 testedP!265)))))

(declare-fun e!3187485 () (InoxSet Context!7046))

(assert (=> d!1651663 (= (derivationZipper!38 (derivationStepZipper!775 baseZ!46 (h!65483 testedP!265)) (t!372160 testedP!265)) e!3187485)))

(declare-fun b!5110635 () Bool)

(assert (=> b!5110635 (= e!3187485 (derivationZipper!38 (derivationStepZipper!775 (derivationStepZipper!775 baseZ!46 (h!65483 testedP!265)) (h!65483 (t!372160 testedP!265))) (t!372160 (t!372160 testedP!265))))))

(declare-fun b!5110636 () Bool)

(assert (=> b!5110636 (= e!3187485 (derivationStepZipper!775 baseZ!46 (h!65483 testedP!265)))))

(assert (= (and d!1651663 c!878029) b!5110635))

(assert (= (and d!1651663 (not c!878029)) b!5110636))

(assert (=> b!5110635 m!6167814))

(declare-fun m!6168006 () Bool)

(assert (=> b!5110635 m!6168006))

(assert (=> b!5110635 m!6168006))

(declare-fun m!6168008 () Bool)

(assert (=> b!5110635 m!6168008))

(assert (=> b!5110500 d!1651663))

(declare-fun bs!1191973 () Bool)

(declare-fun d!1651665 () Bool)

(assert (= bs!1191973 (and d!1651665 d!1651617)))

(declare-fun lambda!250328 () Int)

(assert (=> bs!1191973 (= (= (h!65483 testedP!265) (head!10867 knownP!20)) (= lambda!250328 lambda!250311))))

(assert (=> d!1651665 true))

(assert (=> d!1651665 (= (derivationStepZipper!775 baseZ!46 (h!65483 testedP!265)) (flatMap!321 baseZ!46 lambda!250328))))

(declare-fun bs!1191974 () Bool)

(assert (= bs!1191974 d!1651665))

(declare-fun m!6168010 () Bool)

(assert (=> bs!1191974 m!6168010))

(assert (=> b!5110500 d!1651665))

(declare-fun d!1651667 () Bool)

(declare-fun lt!2104675 () Int)

(assert (=> d!1651667 (>= lt!2104675 0)))

(declare-fun e!3187486 () Int)

(assert (=> d!1651667 (= lt!2104675 e!3187486)))

(declare-fun c!878030 () Bool)

(assert (=> d!1651667 (= c!878030 ((_ is Nil!59035) (t!372160 knownP!20)))))

(assert (=> d!1651667 (= (size!39445 (t!372160 knownP!20)) lt!2104675)))

(declare-fun b!5110637 () Bool)

(assert (=> b!5110637 (= e!3187486 0)))

(declare-fun b!5110638 () Bool)

(assert (=> b!5110638 (= e!3187486 (+ 1 (size!39445 (t!372160 (t!372160 knownP!20)))))))

(assert (= (and d!1651667 c!878030) b!5110637))

(assert (= (and d!1651667 (not c!878030)) b!5110638))

(declare-fun m!6168012 () Bool)

(assert (=> b!5110638 m!6168012))

(assert (=> b!5110505 d!1651667))

(declare-fun bs!1191975 () Bool)

(declare-fun d!1651669 () Bool)

(assert (= bs!1191975 (and d!1651669 d!1651517)))

(declare-fun lambda!250329 () Int)

(assert (=> bs!1191975 (= lambda!250329 lambda!250261)))

(declare-fun bs!1191976 () Bool)

(assert (= bs!1191976 (and d!1651669 d!1651547)))

(assert (=> bs!1191976 (= lambda!250329 lambda!250262)))

(assert (=> d!1651669 (= (inv!78528 setElem!29710) (forall!13528 (exprs!4023 setElem!29710) lambda!250329))))

(declare-fun bs!1191977 () Bool)

(assert (= bs!1191977 d!1651669))

(declare-fun m!6168014 () Bool)

(assert (=> bs!1191977 m!6168014))

(assert (=> setNonEmpty!29710 d!1651669))

(declare-fun b!5110640 () Bool)

(declare-fun e!3187488 () List!59159)

(assert (=> b!5110640 (= e!3187488 (Cons!59035 (h!65483 (t!372160 testedP!265)) (++!12964 (t!372160 (t!372160 testedP!265)) (Cons!59035 (head!10867 lt!2104543) Nil!59035))))))

(declare-fun b!5110642 () Bool)

(declare-fun lt!2104679 () List!59159)

(declare-fun e!3187487 () Bool)

(assert (=> b!5110642 (= e!3187487 (or (not (= (Cons!59035 (head!10867 lt!2104543) Nil!59035) Nil!59035)) (= lt!2104679 (t!372160 testedP!265))))))

(declare-fun b!5110641 () Bool)

(declare-fun res!2175301 () Bool)

(assert (=> b!5110641 (=> (not res!2175301) (not e!3187487))))

(assert (=> b!5110641 (= res!2175301 (= (size!39445 lt!2104679) (+ (size!39445 (t!372160 testedP!265)) (size!39445 (Cons!59035 (head!10867 lt!2104543) Nil!59035)))))))

(declare-fun d!1651671 () Bool)

(assert (=> d!1651671 e!3187487))

(declare-fun res!2175300 () Bool)

(assert (=> d!1651671 (=> (not res!2175300) (not e!3187487))))

(assert (=> d!1651671 (= res!2175300 (= (content!10488 lt!2104679) ((_ map or) (content!10488 (t!372160 testedP!265)) (content!10488 (Cons!59035 (head!10867 lt!2104543) Nil!59035)))))))

(assert (=> d!1651671 (= lt!2104679 e!3187488)))

(declare-fun c!878031 () Bool)

(assert (=> d!1651671 (= c!878031 ((_ is Nil!59035) (t!372160 testedP!265)))))

(assert (=> d!1651671 (= (++!12964 (t!372160 testedP!265) (Cons!59035 (head!10867 lt!2104543) Nil!59035)) lt!2104679)))

(declare-fun b!5110639 () Bool)

(assert (=> b!5110639 (= e!3187488 (Cons!59035 (head!10867 lt!2104543) Nil!59035))))

(assert (= (and d!1651671 c!878031) b!5110639))

(assert (= (and d!1651671 (not c!878031)) b!5110640))

(assert (= (and d!1651671 res!2175300) b!5110641))

(assert (= (and b!5110641 res!2175301) b!5110642))

(declare-fun m!6168020 () Bool)

(assert (=> b!5110640 m!6168020))

(declare-fun m!6168022 () Bool)

(assert (=> b!5110641 m!6168022))

(assert (=> b!5110641 m!6167818))

(assert (=> b!5110641 m!6167740))

(declare-fun m!6168024 () Bool)

(assert (=> d!1651671 m!6168024))

(declare-fun m!6168026 () Bool)

(assert (=> d!1651671 m!6168026))

(assert (=> d!1651671 m!6167746))

(assert (=> b!5110467 d!1651671))

(declare-fun b!5110645 () Bool)

(declare-fun e!3187491 () Bool)

(assert (=> b!5110645 (= e!3187491 (isPrefix!5544 (tail!10019 (tail!10019 testedP!265)) (tail!10019 (tail!10019 input!5745))))))

(declare-fun b!5110644 () Bool)

(declare-fun res!2175302 () Bool)

(assert (=> b!5110644 (=> (not res!2175302) (not e!3187491))))

(assert (=> b!5110644 (= res!2175302 (= (head!10867 (tail!10019 testedP!265)) (head!10867 (tail!10019 input!5745))))))

(declare-fun b!5110646 () Bool)

(declare-fun e!3187489 () Bool)

(assert (=> b!5110646 (= e!3187489 (>= (size!39445 (tail!10019 input!5745)) (size!39445 (tail!10019 testedP!265))))))

(declare-fun b!5110643 () Bool)

(declare-fun e!3187490 () Bool)

(assert (=> b!5110643 (= e!3187490 e!3187491)))

(declare-fun res!2175305 () Bool)

(assert (=> b!5110643 (=> (not res!2175305) (not e!3187491))))

(assert (=> b!5110643 (= res!2175305 (not ((_ is Nil!59035) (tail!10019 input!5745))))))

(declare-fun d!1651675 () Bool)

(assert (=> d!1651675 e!3187489))

(declare-fun res!2175303 () Bool)

(assert (=> d!1651675 (=> res!2175303 e!3187489)))

(declare-fun lt!2104680 () Bool)

(assert (=> d!1651675 (= res!2175303 (not lt!2104680))))

(assert (=> d!1651675 (= lt!2104680 e!3187490)))

(declare-fun res!2175304 () Bool)

(assert (=> d!1651675 (=> res!2175304 e!3187490)))

(assert (=> d!1651675 (= res!2175304 ((_ is Nil!59035) (tail!10019 testedP!265)))))

(assert (=> d!1651675 (= (isPrefix!5544 (tail!10019 testedP!265) (tail!10019 input!5745)) lt!2104680)))

(assert (= (and d!1651675 (not res!2175304)) b!5110643))

(assert (= (and b!5110643 res!2175305) b!5110644))

(assert (= (and b!5110644 res!2175302) b!5110645))

(assert (= (and d!1651675 (not res!2175303)) b!5110646))

(assert (=> b!5110645 m!6167652))

(assert (=> b!5110645 m!6167936))

(assert (=> b!5110645 m!6167732))

(assert (=> b!5110645 m!6167950))

(assert (=> b!5110645 m!6167936))

(assert (=> b!5110645 m!6167950))

(declare-fun m!6168028 () Bool)

(assert (=> b!5110645 m!6168028))

(assert (=> b!5110644 m!6167652))

(assert (=> b!5110644 m!6167940))

(assert (=> b!5110644 m!6167732))

(assert (=> b!5110644 m!6167954))

(assert (=> b!5110646 m!6167732))

(assert (=> b!5110646 m!6167956))

(assert (=> b!5110646 m!6167652))

(assert (=> b!5110646 m!6167942))

(assert (=> b!5110476 d!1651675))

(assert (=> b!5110476 d!1651625))

(assert (=> b!5110476 d!1651635))

(assert (=> b!5110475 d!1651629))

(assert (=> b!5110475 d!1651611))

(assert (=> b!5110473 d!1651513))

(declare-fun d!1651679 () Bool)

(declare-fun lt!2104682 () Int)

(assert (=> d!1651679 (>= lt!2104682 0)))

(declare-fun e!3187495 () Int)

(assert (=> d!1651679 (= lt!2104682 e!3187495)))

(declare-fun c!878032 () Bool)

(assert (=> d!1651679 (= c!878032 ((_ is Nil!59035) lt!2104546))))

(assert (=> d!1651679 (= (size!39445 lt!2104546) lt!2104682)))

(declare-fun b!5110651 () Bool)

(assert (=> b!5110651 (= e!3187495 0)))

(declare-fun b!5110652 () Bool)

(assert (=> b!5110652 (= e!3187495 (+ 1 (size!39445 (t!372160 lt!2104546))))))

(assert (= (and d!1651679 c!878032) b!5110651))

(assert (= (and d!1651679 (not c!878032)) b!5110652))

(declare-fun m!6168044 () Bool)

(assert (=> b!5110652 m!6168044))

(assert (=> b!5110473 d!1651679))

(declare-fun d!1651683 () Bool)

(declare-fun c!878033 () Bool)

(assert (=> d!1651683 (= c!878033 (isEmpty!31855 (tail!10019 (getSuffix!3218 knownP!20 testedP!265))))))

(declare-fun e!3187496 () Bool)

(assert (=> d!1651683 (= (matchZipper!807 (derivationStepZipper!775 z!4463 (head!10867 (getSuffix!3218 knownP!20 testedP!265))) (tail!10019 (getSuffix!3218 knownP!20 testedP!265))) e!3187496)))

(declare-fun b!5110653 () Bool)

(assert (=> b!5110653 (= e!3187496 (nullableZipper!987 (derivationStepZipper!775 z!4463 (head!10867 (getSuffix!3218 knownP!20 testedP!265)))))))

(declare-fun b!5110654 () Bool)

(assert (=> b!5110654 (= e!3187496 (matchZipper!807 (derivationStepZipper!775 (derivationStepZipper!775 z!4463 (head!10867 (getSuffix!3218 knownP!20 testedP!265))) (head!10867 (tail!10019 (getSuffix!3218 knownP!20 testedP!265)))) (tail!10019 (tail!10019 (getSuffix!3218 knownP!20 testedP!265)))))))

(assert (= (and d!1651683 c!878033) b!5110653))

(assert (= (and d!1651683 (not c!878033)) b!5110654))

(assert (=> d!1651683 m!6167642))

(declare-fun m!6168046 () Bool)

(assert (=> d!1651683 m!6168046))

(assert (=> b!5110653 m!6167640))

(declare-fun m!6168048 () Bool)

(assert (=> b!5110653 m!6168048))

(assert (=> b!5110654 m!6167642))

(declare-fun m!6168050 () Bool)

(assert (=> b!5110654 m!6168050))

(assert (=> b!5110654 m!6167640))

(assert (=> b!5110654 m!6168050))

(declare-fun m!6168052 () Bool)

(assert (=> b!5110654 m!6168052))

(assert (=> b!5110654 m!6167642))

(declare-fun m!6168054 () Bool)

(assert (=> b!5110654 m!6168054))

(assert (=> b!5110654 m!6168052))

(assert (=> b!5110654 m!6168054))

(declare-fun m!6168056 () Bool)

(assert (=> b!5110654 m!6168056))

(assert (=> b!5110379 d!1651683))

(declare-fun bs!1191979 () Bool)

(declare-fun d!1651693 () Bool)

(assert (= bs!1191979 (and d!1651693 d!1651617)))

(declare-fun lambda!250330 () Int)

(assert (=> bs!1191979 (= (= (head!10867 (getSuffix!3218 knownP!20 testedP!265)) (head!10867 knownP!20)) (= lambda!250330 lambda!250311))))

(declare-fun bs!1191980 () Bool)

(assert (= bs!1191980 (and d!1651693 d!1651665)))

(assert (=> bs!1191980 (= (= (head!10867 (getSuffix!3218 knownP!20 testedP!265)) (h!65483 testedP!265)) (= lambda!250330 lambda!250328))))

(assert (=> d!1651693 true))

(assert (=> d!1651693 (= (derivationStepZipper!775 z!4463 (head!10867 (getSuffix!3218 knownP!20 testedP!265))) (flatMap!321 z!4463 lambda!250330))))

(declare-fun bs!1191981 () Bool)

(assert (= bs!1191981 d!1651693))

(declare-fun m!6168058 () Bool)

(assert (=> bs!1191981 m!6168058))

(assert (=> b!5110379 d!1651693))

(declare-fun d!1651695 () Bool)

(assert (=> d!1651695 (= (head!10867 (getSuffix!3218 knownP!20 testedP!265)) (h!65483 (getSuffix!3218 knownP!20 testedP!265)))))

(assert (=> b!5110379 d!1651695))

(declare-fun d!1651697 () Bool)

(assert (=> d!1651697 (= (tail!10019 (getSuffix!3218 knownP!20 testedP!265)) (t!372160 (getSuffix!3218 knownP!20 testedP!265)))))

(assert (=> b!5110379 d!1651697))

(declare-fun b!5110657 () Bool)

(declare-fun e!3187499 () Bool)

(assert (=> b!5110657 (= e!3187499 (isPrefix!5544 (tail!10019 (tail!10019 lt!2104546)) (tail!10019 (tail!10019 input!5745))))))

(declare-fun b!5110656 () Bool)

(declare-fun res!2175310 () Bool)

(assert (=> b!5110656 (=> (not res!2175310) (not e!3187499))))

(assert (=> b!5110656 (= res!2175310 (= (head!10867 (tail!10019 lt!2104546)) (head!10867 (tail!10019 input!5745))))))

(declare-fun b!5110658 () Bool)

(declare-fun e!3187497 () Bool)

(assert (=> b!5110658 (= e!3187497 (>= (size!39445 (tail!10019 input!5745)) (size!39445 (tail!10019 lt!2104546))))))

(declare-fun b!5110655 () Bool)

(declare-fun e!3187498 () Bool)

(assert (=> b!5110655 (= e!3187498 e!3187499)))

(declare-fun res!2175313 () Bool)

(assert (=> b!5110655 (=> (not res!2175313) (not e!3187499))))

(assert (=> b!5110655 (= res!2175313 (not ((_ is Nil!59035) (tail!10019 input!5745))))))

(declare-fun d!1651699 () Bool)

(assert (=> d!1651699 e!3187497))

(declare-fun res!2175311 () Bool)

(assert (=> d!1651699 (=> res!2175311 e!3187497)))

(declare-fun lt!2104683 () Bool)

(assert (=> d!1651699 (= res!2175311 (not lt!2104683))))

(assert (=> d!1651699 (= lt!2104683 e!3187498)))

(declare-fun res!2175312 () Bool)

(assert (=> d!1651699 (=> res!2175312 e!3187498)))

(assert (=> d!1651699 (= res!2175312 ((_ is Nil!59035) (tail!10019 lt!2104546)))))

(assert (=> d!1651699 (= (isPrefix!5544 (tail!10019 lt!2104546) (tail!10019 input!5745)) lt!2104683)))

(assert (= (and d!1651699 (not res!2175312)) b!5110655))

(assert (= (and b!5110655 res!2175313) b!5110656))

(assert (= (and b!5110656 res!2175310) b!5110657))

(assert (= (and d!1651699 (not res!2175311)) b!5110658))

(assert (=> b!5110657 m!6167748))

(declare-fun m!6168060 () Bool)

(assert (=> b!5110657 m!6168060))

(assert (=> b!5110657 m!6167732))

(assert (=> b!5110657 m!6167950))

(assert (=> b!5110657 m!6168060))

(assert (=> b!5110657 m!6167950))

(declare-fun m!6168062 () Bool)

(assert (=> b!5110657 m!6168062))

(assert (=> b!5110656 m!6167748))

(declare-fun m!6168064 () Bool)

(assert (=> b!5110656 m!6168064))

(assert (=> b!5110656 m!6167732))

(assert (=> b!5110656 m!6167954))

(assert (=> b!5110658 m!6167732))

(assert (=> b!5110658 m!6167956))

(assert (=> b!5110658 m!6167748))

(declare-fun m!6168066 () Bool)

(assert (=> b!5110658 m!6168066))

(assert (=> b!5110472 d!1651699))

(declare-fun d!1651701 () Bool)

(assert (=> d!1651701 (= (tail!10019 lt!2104546) (t!372160 lt!2104546))))

(assert (=> b!5110472 d!1651701))

(assert (=> b!5110472 d!1651635))

(declare-fun bs!1191982 () Bool)

(declare-fun d!1651703 () Bool)

(assert (= bs!1191982 (and d!1651703 d!1651517)))

(declare-fun lambda!250331 () Int)

(assert (=> bs!1191982 (= lambda!250331 lambda!250261)))

(declare-fun bs!1191983 () Bool)

(assert (= bs!1191983 (and d!1651703 d!1651547)))

(assert (=> bs!1191983 (= lambda!250331 lambda!250262)))

(declare-fun bs!1191984 () Bool)

(assert (= bs!1191984 (and d!1651703 d!1651669)))

(assert (=> bs!1191984 (= lambda!250331 lambda!250329)))

(assert (=> d!1651703 (= (inv!78528 setElem!29709) (forall!13528 (exprs!4023 setElem!29709) lambda!250331))))

(declare-fun bs!1191985 () Bool)

(assert (= bs!1191985 d!1651703))

(declare-fun m!6168068 () Bool)

(assert (=> bs!1191985 m!6168068))

(assert (=> setNonEmpty!29709 d!1651703))

(declare-fun d!1651705 () Bool)

(declare-fun res!2175314 () Bool)

(declare-fun e!3187502 () Bool)

(assert (=> d!1651705 (=> res!2175314 e!3187502)))

(assert (=> d!1651705 (= res!2175314 ((_ is Nil!59034) (exprs!4023 setElem!29706)))))

(assert (=> d!1651705 (= (forall!13528 (exprs!4023 setElem!29706) lambda!250262) e!3187502)))

(declare-fun b!5110659 () Bool)

(declare-fun e!3187503 () Bool)

(assert (=> b!5110659 (= e!3187502 e!3187503)))

(declare-fun res!2175315 () Bool)

(assert (=> b!5110659 (=> (not res!2175315) (not e!3187503))))

(assert (=> b!5110659 (= res!2175315 (dynLambda!23592 lambda!250262 (h!65482 (exprs!4023 setElem!29706))))))

(declare-fun b!5110660 () Bool)

(assert (=> b!5110660 (= e!3187503 (forall!13528 (t!372159 (exprs!4023 setElem!29706)) lambda!250262))))

(assert (= (and d!1651705 (not res!2175314)) b!5110659))

(assert (= (and b!5110659 res!2175315) b!5110660))

(declare-fun b_lambda!198895 () Bool)

(assert (=> (not b_lambda!198895) (not b!5110659)))

(declare-fun m!6168070 () Bool)

(assert (=> b!5110659 m!6168070))

(declare-fun m!6168072 () Bool)

(assert (=> b!5110660 m!6168072))

(assert (=> d!1651547 d!1651705))

(declare-fun d!1651707 () Bool)

(declare-fun lt!2104686 () Int)

(assert (=> d!1651707 (>= lt!2104686 0)))

(declare-fun e!3187504 () Int)

(assert (=> d!1651707 (= lt!2104686 e!3187504)))

(declare-fun c!878034 () Bool)

(assert (=> d!1651707 (= c!878034 ((_ is Nil!59035) (t!372160 testedP!265)))))

(assert (=> d!1651707 (= (size!39445 (t!372160 testedP!265)) lt!2104686)))

(declare-fun b!5110661 () Bool)

(assert (=> b!5110661 (= e!3187504 0)))

(declare-fun b!5110662 () Bool)

(assert (=> b!5110662 (= e!3187504 (+ 1 (size!39445 (t!372160 (t!372160 testedP!265)))))))

(assert (= (and d!1651707 c!878034) b!5110661))

(assert (= (and d!1651707 (not c!878034)) b!5110662))

(declare-fun m!6168074 () Bool)

(assert (=> b!5110662 m!6168074))

(assert (=> b!5110503 d!1651707))

(declare-fun d!1651709 () Bool)

(assert (=> d!1651709 (= (isEmpty!31855 (getSuffix!3218 knownP!20 testedP!265)) ((_ is Nil!59035) (getSuffix!3218 knownP!20 testedP!265)))))

(assert (=> d!1651501 d!1651709))

(assert (=> b!5110477 d!1651513))

(assert (=> b!5110477 d!1651567))

(declare-fun d!1651711 () Bool)

(declare-fun c!878037 () Bool)

(assert (=> d!1651711 (= c!878037 ((_ is Nil!59035) lt!2104580))))

(declare-fun e!3187507 () (InoxSet C!28544))

(assert (=> d!1651711 (= (content!10488 lt!2104580) e!3187507)))

(declare-fun b!5110669 () Bool)

(assert (=> b!5110669 (= e!3187507 ((as const (Array C!28544 Bool)) false))))

(declare-fun b!5110670 () Bool)

(assert (=> b!5110670 (= e!3187507 ((_ map or) (store ((as const (Array C!28544 Bool)) false) (h!65483 lt!2104580) true) (content!10488 (t!372160 lt!2104580))))))

(assert (= (and d!1651711 c!878037) b!5110669))

(assert (= (and d!1651711 (not c!878037)) b!5110670))

(declare-fun m!6168082 () Bool)

(assert (=> b!5110670 m!6168082))

(declare-fun m!6168084 () Bool)

(assert (=> b!5110670 m!6168084))

(assert (=> d!1651537 d!1651711))

(declare-fun d!1651715 () Bool)

(declare-fun c!878038 () Bool)

(assert (=> d!1651715 (= c!878038 ((_ is Nil!59035) testedP!265))))

(declare-fun e!3187508 () (InoxSet C!28544))

(assert (=> d!1651715 (= (content!10488 testedP!265) e!3187508)))

(declare-fun b!5110671 () Bool)

(assert (=> b!5110671 (= e!3187508 ((as const (Array C!28544 Bool)) false))))

(declare-fun b!5110672 () Bool)

(assert (=> b!5110672 (= e!3187508 ((_ map or) (store ((as const (Array C!28544 Bool)) false) (h!65483 testedP!265) true) (content!10488 (t!372160 testedP!265))))))

(assert (= (and d!1651715 c!878038) b!5110671))

(assert (= (and d!1651715 (not c!878038)) b!5110672))

(declare-fun m!6168086 () Bool)

(assert (=> b!5110672 m!6168086))

(assert (=> b!5110672 m!6168026))

(assert (=> d!1651537 d!1651715))

(declare-fun d!1651717 () Bool)

(declare-fun c!878039 () Bool)

(assert (=> d!1651717 (= c!878039 ((_ is Nil!59035) (Cons!59035 (head!10867 lt!2104543) Nil!59035)))))

(declare-fun e!3187509 () (InoxSet C!28544))

(assert (=> d!1651717 (= (content!10488 (Cons!59035 (head!10867 lt!2104543) Nil!59035)) e!3187509)))

(declare-fun b!5110673 () Bool)

(assert (=> b!5110673 (= e!3187509 ((as const (Array C!28544 Bool)) false))))

(declare-fun b!5110674 () Bool)

(assert (=> b!5110674 (= e!3187509 ((_ map or) (store ((as const (Array C!28544 Bool)) false) (h!65483 (Cons!59035 (head!10867 lt!2104543) Nil!59035)) true) (content!10488 (t!372160 (Cons!59035 (head!10867 lt!2104543) Nil!59035)))))))

(assert (= (and d!1651717 c!878039) b!5110673))

(assert (= (and d!1651717 (not c!878039)) b!5110674))

(declare-fun m!6168088 () Bool)

(assert (=> b!5110674 m!6168088))

(declare-fun m!6168090 () Bool)

(assert (=> b!5110674 m!6168090))

(assert (=> d!1651537 d!1651717))

(declare-fun condSetEmpty!29715 () Bool)

(assert (=> setNonEmpty!29709 (= condSetEmpty!29715 (= setRest!29709 ((as const (Array Context!7046 Bool)) false)))))

(declare-fun setRes!29715 () Bool)

(assert (=> setNonEmpty!29709 (= tp!1425820 setRes!29715)))

(declare-fun setIsEmpty!29715 () Bool)

(assert (=> setIsEmpty!29715 setRes!29715))

(declare-fun setElem!29715 () Context!7046)

(declare-fun e!3187510 () Bool)

(declare-fun setNonEmpty!29715 () Bool)

(declare-fun tp!1425858 () Bool)

(assert (=> setNonEmpty!29715 (= setRes!29715 (and tp!1425858 (inv!78528 setElem!29715) e!3187510))))

(declare-fun setRest!29715 () (InoxSet Context!7046))

(assert (=> setNonEmpty!29715 (= setRest!29709 ((_ map or) (store ((as const (Array Context!7046 Bool)) false) setElem!29715 true) setRest!29715))))

(declare-fun b!5110675 () Bool)

(declare-fun tp!1425859 () Bool)

(assert (=> b!5110675 (= e!3187510 tp!1425859)))

(assert (= (and setNonEmpty!29709 condSetEmpty!29715) setIsEmpty!29715))

(assert (= (and setNonEmpty!29709 (not condSetEmpty!29715)) setNonEmpty!29715))

(assert (= setNonEmpty!29715 b!5110675))

(declare-fun m!6168092 () Bool)

(assert (=> setNonEmpty!29715 m!6168092))

(declare-fun b!5110693 () Bool)

(declare-fun e!3187515 () Bool)

(declare-fun tp!1425874 () Bool)

(declare-fun tp!1425872 () Bool)

(assert (=> b!5110693 (= e!3187515 (and tp!1425874 tp!1425872))))

(declare-fun b!5110691 () Bool)

(declare-fun tp!1425873 () Bool)

(declare-fun tp!1425870 () Bool)

(assert (=> b!5110691 (= e!3187515 (and tp!1425873 tp!1425870))))

(assert (=> b!5110521 (= tp!1425831 e!3187515)))

(declare-fun b!5110690 () Bool)

(assert (=> b!5110690 (= e!3187515 tp_is_empty!37551)))

(declare-fun b!5110692 () Bool)

(declare-fun tp!1425871 () Bool)

(assert (=> b!5110692 (= e!3187515 tp!1425871)))

(assert (= (and b!5110521 ((_ is ElementMatch!14139) (h!65482 (exprs!4023 setElem!29705)))) b!5110690))

(assert (= (and b!5110521 ((_ is Concat!22984) (h!65482 (exprs!4023 setElem!29705)))) b!5110691))

(assert (= (and b!5110521 ((_ is Star!14139) (h!65482 (exprs!4023 setElem!29705)))) b!5110692))

(assert (= (and b!5110521 ((_ is Union!14139) (h!65482 (exprs!4023 setElem!29705)))) b!5110693))

(declare-fun b!5110694 () Bool)

(declare-fun e!3187516 () Bool)

(declare-fun tp!1425875 () Bool)

(declare-fun tp!1425876 () Bool)

(assert (=> b!5110694 (= e!3187516 (and tp!1425875 tp!1425876))))

(assert (=> b!5110521 (= tp!1425832 e!3187516)))

(assert (= (and b!5110521 ((_ is Cons!59034) (t!372159 (exprs!4023 setElem!29705)))) b!5110694))

(declare-fun b!5110695 () Bool)

(declare-fun e!3187517 () Bool)

(declare-fun tp!1425877 () Bool)

(assert (=> b!5110695 (= e!3187517 (and tp_is_empty!37551 tp!1425877))))

(assert (=> b!5110524 (= tp!1425836 e!3187517)))

(assert (= (and b!5110524 ((_ is Cons!59035) (t!372160 (t!372160 testedP!265)))) b!5110695))

(declare-fun b!5110696 () Bool)

(declare-fun e!3187518 () Bool)

(declare-fun tp!1425878 () Bool)

(assert (=> b!5110696 (= e!3187518 (and tp_is_empty!37551 tp!1425878))))

(assert (=> b!5110522 (= tp!1425833 e!3187518)))

(assert (= (and b!5110522 ((_ is Cons!59035) (t!372160 (t!372160 knownP!20)))) b!5110696))

(declare-fun b!5110697 () Bool)

(declare-fun e!3187519 () Bool)

(declare-fun tp!1425879 () Bool)

(assert (=> b!5110697 (= e!3187519 (and tp_is_empty!37551 tp!1425879))))

(assert (=> b!5110515 (= tp!1425824 e!3187519)))

(assert (= (and b!5110515 ((_ is Cons!59035) (t!372160 (t!372160 input!5745)))) b!5110697))

(declare-fun b!5110705 () Bool)

(declare-fun e!3187523 () Bool)

(declare-fun tp!1425884 () Bool)

(declare-fun tp!1425882 () Bool)

(assert (=> b!5110705 (= e!3187523 (and tp!1425884 tp!1425882))))

(declare-fun b!5110703 () Bool)

(declare-fun tp!1425883 () Bool)

(declare-fun tp!1425880 () Bool)

(assert (=> b!5110703 (= e!3187523 (and tp!1425883 tp!1425880))))

(assert (=> b!5110523 (= tp!1425834 e!3187523)))

(declare-fun b!5110702 () Bool)

(assert (=> b!5110702 (= e!3187523 tp_is_empty!37551)))

(declare-fun b!5110704 () Bool)

(declare-fun tp!1425881 () Bool)

(assert (=> b!5110704 (= e!3187523 tp!1425881)))

(assert (= (and b!5110523 ((_ is ElementMatch!14139) (h!65482 (exprs!4023 setElem!29706)))) b!5110702))

(assert (= (and b!5110523 ((_ is Concat!22984) (h!65482 (exprs!4023 setElem!29706)))) b!5110703))

(assert (= (and b!5110523 ((_ is Star!14139) (h!65482 (exprs!4023 setElem!29706)))) b!5110704))

(assert (= (and b!5110523 ((_ is Union!14139) (h!65482 (exprs!4023 setElem!29706)))) b!5110705))

(declare-fun b!5110706 () Bool)

(declare-fun e!3187524 () Bool)

(declare-fun tp!1425885 () Bool)

(declare-fun tp!1425886 () Bool)

(assert (=> b!5110706 (= e!3187524 (and tp!1425885 tp!1425886))))

(assert (=> b!5110523 (= tp!1425835 e!3187524)))

(assert (= (and b!5110523 ((_ is Cons!59034) (t!372159 (exprs!4023 setElem!29706)))) b!5110706))

(declare-fun b!5110707 () Bool)

(declare-fun e!3187525 () Bool)

(declare-fun tp!1425887 () Bool)

(declare-fun tp!1425888 () Bool)

(assert (=> b!5110707 (= e!3187525 (and tp!1425887 tp!1425888))))

(assert (=> b!5110516 (= tp!1425826 e!3187525)))

(assert (= (and b!5110516 ((_ is Cons!59034) (exprs!4023 setElem!29710))) b!5110707))

(declare-fun b!5110708 () Bool)

(declare-fun e!3187526 () Bool)

(declare-fun tp!1425889 () Bool)

(declare-fun tp!1425890 () Bool)

(assert (=> b!5110708 (= e!3187526 (and tp!1425889 tp!1425890))))

(assert (=> b!5110510 (= tp!1425821 e!3187526)))

(assert (= (and b!5110510 ((_ is Cons!59034) (exprs!4023 setElem!29709))) b!5110708))

(declare-fun condSetEmpty!29716 () Bool)

(assert (=> setNonEmpty!29710 (= condSetEmpty!29716 (= setRest!29710 ((as const (Array Context!7046 Bool)) false)))))

(declare-fun setRes!29716 () Bool)

(assert (=> setNonEmpty!29710 (= tp!1425825 setRes!29716)))

(declare-fun setIsEmpty!29716 () Bool)

(assert (=> setIsEmpty!29716 setRes!29716))

(declare-fun tp!1425891 () Bool)

(declare-fun setNonEmpty!29716 () Bool)

(declare-fun e!3187527 () Bool)

(declare-fun setElem!29716 () Context!7046)

(assert (=> setNonEmpty!29716 (= setRes!29716 (and tp!1425891 (inv!78528 setElem!29716) e!3187527))))

(declare-fun setRest!29716 () (InoxSet Context!7046))

(assert (=> setNonEmpty!29716 (= setRest!29710 ((_ map or) (store ((as const (Array Context!7046 Bool)) false) setElem!29716 true) setRest!29716))))

(declare-fun b!5110709 () Bool)

(declare-fun tp!1425892 () Bool)

(assert (=> b!5110709 (= e!3187527 tp!1425892)))

(assert (= (and setNonEmpty!29710 condSetEmpty!29716) setIsEmpty!29716))

(assert (= (and setNonEmpty!29710 (not condSetEmpty!29716)) setNonEmpty!29716))

(assert (= setNonEmpty!29716 b!5110709))

(declare-fun m!6168112 () Bool)

(assert (=> setNonEmpty!29716 m!6168112))

(declare-fun b_lambda!198897 () Bool)

(assert (= b_lambda!198895 (or d!1651547 b_lambda!198897)))

(declare-fun bs!1191992 () Bool)

(declare-fun d!1651727 () Bool)

(assert (= bs!1191992 (and d!1651727 d!1651547)))

(declare-fun validRegex!6208 (Regex!14139) Bool)

(assert (=> bs!1191992 (= (dynLambda!23592 lambda!250262 (h!65482 (exprs!4023 setElem!29706))) (validRegex!6208 (h!65482 (exprs!4023 setElem!29706))))))

(declare-fun m!6168114 () Bool)

(assert (=> bs!1191992 m!6168114))

(assert (=> b!5110659 d!1651727))

(declare-fun b_lambda!198899 () Bool)

(assert (= b_lambda!198893 (or d!1651517 b_lambda!198899)))

(declare-fun bs!1191993 () Bool)

(declare-fun d!1651729 () Bool)

(assert (= bs!1191993 (and d!1651729 d!1651517)))

(assert (=> bs!1191993 (= (dynLambda!23592 lambda!250261 (h!65482 (exprs!4023 setElem!29705))) (validRegex!6208 (h!65482 (exprs!4023 setElem!29705))))))

(declare-fun m!6168116 () Bool)

(assert (=> bs!1191993 m!6168116))

(assert (=> b!5110564 d!1651729))

(check-sat (not b!5110708) (not b!5110707) (not d!1651615) (not d!1651607) (not b!5110585) (not d!1651585) (not b!5110611) (not b!5110653) (not b!5110697) (not b!5110574) (not b!5110568) (not b!5110596) (not b!5110657) (not b!5110652) (not b!5110578) (not b!5110674) (not b!5110672) (not b_lambda!198899) (not b!5110670) (not d!1651587) (not b!5110631) (not d!1651669) (not d!1651613) (not b!5110589) (not b!5110692) (not d!1651597) (not b!5110703) (not b!5110616) (not d!1651637) (not d!1651665) (not b!5110586) (not b!5110635) (not b!5110704) (not b!5110656) tp_is_empty!37551 (not b!5110644) (not b!5110591) (not d!1651651) (not b!5110706) (not bs!1191993) (not b!5110646) (not b_lambda!198897) (not b!5110709) (not b!5110660) (not d!1651593) (not d!1651605) (not b!5110645) (not b!5110675) (not setNonEmpty!29716) (not b!5110618) (not b!5110694) (not d!1651703) (not d!1651627) (not b!5110584) (not b!5110658) (not b!5110638) (not setNonEmpty!29715) (not b!5110695) (not b!5110654) (not b!5110705) (not b!5110693) (not d!1651659) (not d!1651683) (not d!1651693) (not b!5110588) (not d!1651601) (not d!1651671) (not b!5110580) (not d!1651581) (not b!5110597) (not b!5110641) (not b!5110606) (not b!5110573) (not bs!1191992) (not d!1651589) (not b!5110696) (not b!5110567) (not b!5110598) (not b!5110565) (not b!5110605) (not d!1651583) (not d!1651617) (not b!5110640) (not b!5110691) (not b!5110662) (not b!5110581) (not b!5110592) (not b!5110604))
(check-sat)
