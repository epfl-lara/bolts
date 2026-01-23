; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278688 () Bool)

(assert start!278688)

(declare-fun b!2862947 () Bool)

(declare-fun condSetEmpty!25378 () Bool)

(declare-datatypes ((C!17454 0))(
  ( (C!17455 (val!10761 Int)) )
))
(declare-datatypes ((Regex!8636 0))(
  ( (ElementMatch!8636 (c!461495 C!17454)) (Concat!13957 (regOne!17784 Regex!8636) (regTwo!17784 Regex!8636)) (EmptyExpr!8636) (Star!8636 (reg!8965 Regex!8636)) (EmptyLang!8636) (Union!8636 (regOne!17785 Regex!8636) (regTwo!17785 Regex!8636)) )
))
(declare-datatypes ((List!34255 0))(
  ( (Nil!34131) (Cons!34131 (h!39551 Regex!8636) (t!233292 List!34255)) )
))
(declare-datatypes ((Context!5192 0))(
  ( (Context!5193 (exprs!3096 List!34255)) )
))
(declare-fun lt!1014887 () (Set Context!5192))

(assert (=> b!2862947 (= condSetEmpty!25378 (= lt!1014887 (as set.empty (Set Context!5192))))))

(declare-fun setRes!25378 () Bool)

(assert (=> b!2862947 setRes!25378))

(declare-fun setIsEmpty!25378 () Bool)

(assert (=> setIsEmpty!25378 setRes!25378))

(declare-fun setNonEmpty!25378 () Bool)

(assert (=> setNonEmpty!25378 (= setRes!25378 true)))

(declare-fun setElem!25378 () Context!5192)

(declare-fun setRest!25378 () (Set Context!5192))

(assert (=> setNonEmpty!25378 (= lt!1014887 (set.union (set.insert setElem!25378 (as set.empty (Set Context!5192))) setRest!25378))))

(assert (= (and b!2862947 condSetEmpty!25378) setIsEmpty!25378))

(assert (= (and b!2862947 (not condSetEmpty!25378)) setNonEmpty!25378))

(assert (=> b!2862947 true))

(declare-fun b!2862946 () Bool)

(declare-fun e!1812371 () Bool)

(declare-fun tp_is_empty!15009 () Bool)

(declare-fun tp!921855 () Bool)

(assert (=> b!2862946 (= e!1812371 (and tp_is_empty!15009 tp!921855))))

(declare-fun setIsEmpty!25375 () Bool)

(declare-fun setRes!25375 () Bool)

(assert (=> setIsEmpty!25375 setRes!25375))

(declare-fun e!1812372 () Bool)

(declare-fun e!1812373 () Bool)

(assert (=> b!2862947 (= e!1812372 (not e!1812373))))

(declare-fun res!1188685 () Bool)

(assert (=> b!2862947 (=> res!1188685 e!1812373)))

(declare-datatypes ((List!34256 0))(
  ( (Nil!34132) (Cons!34132 (h!39552 C!17454) (t!233293 List!34256)) )
))
(declare-fun lt!1014886 () List!34256)

(declare-fun matchZipper!434 ((Set Context!5192) List!34256) Bool)

(assert (=> b!2862947 (= res!1188685 (not (matchZipper!434 lt!1014887 lt!1014886)))))

(declare-fun lambda!105382 () Int)

(declare-fun pickWitness!327 (Int) List!34256)

(assert (=> b!2862947 (= lt!1014886 (pickWitness!327 lambda!105382))))

(declare-fun Exists!1320 (Int) Bool)

(assert (=> b!2862947 (Exists!1320 lambda!105382)))

(assert (=> b!2862947 (Exists!1320 lambda!105382)))

(declare-datatypes ((Unit!47795 0))(
  ( (Unit!47796) )
))
(declare-fun lt!1014888 () Unit!47795)

(declare-fun prefix!919 () List!34256)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!366 ((Set Context!5192) List!34256) Unit!47795)

(assert (=> b!2862947 (= lt!1014888 (lemmaPrefixMatchThenExistsStringThatMatches!366 lt!1014887 (t!233293 prefix!919)))))

(declare-fun z!960 () (Set Context!5192))

(declare-fun derivationStepZipper!435 ((Set Context!5192) C!17454) (Set Context!5192))

(assert (=> b!2862947 (= lt!1014887 (derivationStepZipper!435 z!960 (h!39552 prefix!919)))))

(declare-fun b!2862948 () Bool)

(declare-fun res!1188687 () Bool)

(assert (=> b!2862948 (=> res!1188687 e!1812373)))

(declare-fun isPrefix!2695 (List!34256 List!34256) Bool)

(assert (=> b!2862948 (= res!1188687 (not (isPrefix!2695 (t!233293 prefix!919) lt!1014886)))))

(declare-fun b!2862949 () Bool)

(declare-fun $colon$colon!602 (List!34256 C!17454) List!34256)

(assert (=> b!2862949 (= e!1812373 (matchZipper!434 z!960 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))))))

(declare-fun setElem!25375 () Context!5192)

(declare-fun setNonEmpty!25375 () Bool)

(declare-fun e!1812374 () Bool)

(declare-fun tp!921857 () Bool)

(declare-fun inv!46178 (Context!5192) Bool)

(assert (=> setNonEmpty!25375 (= setRes!25375 (and tp!921857 (inv!46178 setElem!25375) e!1812374))))

(declare-fun setRest!25375 () (Set Context!5192))

(assert (=> setNonEmpty!25375 (= z!960 (set.union (set.insert setElem!25375 (as set.empty (Set Context!5192))) setRest!25375))))

(declare-fun b!2862950 () Bool)

(declare-fun res!1188688 () Bool)

(assert (=> b!2862950 (=> (not res!1188688) (not e!1812372))))

(assert (=> b!2862950 (= res!1188688 (not (is-Nil!34132 prefix!919)))))

(declare-fun res!1188686 () Bool)

(assert (=> start!278688 (=> (not res!1188686) (not e!1812372))))

(declare-fun prefixMatchZipper!318 ((Set Context!5192) List!34256) Bool)

(assert (=> start!278688 (= res!1188686 (prefixMatchZipper!318 z!960 prefix!919))))

(assert (=> start!278688 e!1812372))

(declare-fun condSetEmpty!25375 () Bool)

(assert (=> start!278688 (= condSetEmpty!25375 (= z!960 (as set.empty (Set Context!5192))))))

(assert (=> start!278688 setRes!25375))

(assert (=> start!278688 e!1812371))

(declare-fun b!2862945 () Bool)

(declare-fun tp!921856 () Bool)

(assert (=> b!2862945 (= e!1812374 tp!921856)))

(assert (= (and start!278688 res!1188686) b!2862950))

(assert (= (and b!2862950 res!1188688) b!2862947))

(assert (= (and b!2862947 (not res!1188685)) b!2862948))

(assert (= (and b!2862948 (not res!1188687)) b!2862949))

(assert (= (and start!278688 condSetEmpty!25375) setIsEmpty!25375))

(assert (= (and start!278688 (not condSetEmpty!25375)) setNonEmpty!25375))

(assert (= setNonEmpty!25375 b!2862945))

(assert (= (and start!278688 (is-Cons!34132 prefix!919)) b!2862946))

(declare-fun m!3282257 () Bool)

(assert (=> b!2862947 m!3282257))

(declare-fun m!3282259 () Bool)

(assert (=> b!2862947 m!3282259))

(declare-fun m!3282261 () Bool)

(assert (=> b!2862947 m!3282261))

(declare-fun m!3282263 () Bool)

(assert (=> b!2862947 m!3282263))

(declare-fun m!3282265 () Bool)

(assert (=> b!2862947 m!3282265))

(assert (=> b!2862947 m!3282265))

(declare-fun m!3282267 () Bool)

(assert (=> b!2862949 m!3282267))

(assert (=> b!2862949 m!3282267))

(declare-fun m!3282269 () Bool)

(assert (=> b!2862949 m!3282269))

(declare-fun m!3282271 () Bool)

(assert (=> start!278688 m!3282271))

(declare-fun m!3282273 () Bool)

(assert (=> b!2862948 m!3282273))

(declare-fun m!3282275 () Bool)

(assert (=> setNonEmpty!25375 m!3282275))

(push 1)

(assert (not b!2862948))

(assert (not b!2862947))

(assert (not setNonEmpty!25375))

(assert tp_is_empty!15009)

(assert (not b!2862946))

(assert (not setNonEmpty!25378))

(assert (not b!2862949))

(assert (not b!2862945))

(assert (not start!278688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!827490 () Bool)

(declare-fun lambda!105390 () Int)

(declare-fun forall!6971 (List!34255 Int) Bool)

(assert (=> d!827490 (= (inv!46178 setElem!25375) (forall!6971 (exprs!3096 setElem!25375) lambda!105390))))

(declare-fun bs!520513 () Bool)

(assert (= bs!520513 d!827490))

(declare-fun m!3282297 () Bool)

(assert (=> bs!520513 m!3282297))

(assert (=> setNonEmpty!25375 d!827490))

(declare-fun d!827492 () Bool)

(declare-fun c!461499 () Bool)

(declare-fun isEmpty!18631 (List!34256) Bool)

(assert (=> d!827492 (= c!461499 (isEmpty!18631 prefix!919))))

(declare-fun e!1812393 () Bool)

(assert (=> d!827492 (= (prefixMatchZipper!318 z!960 prefix!919) e!1812393)))

(declare-fun b!2862985 () Bool)

(declare-fun lostCauseZipper!546 ((Set Context!5192)) Bool)

(assert (=> b!2862985 (= e!1812393 (not (lostCauseZipper!546 z!960)))))

(declare-fun b!2862986 () Bool)

(declare-fun head!6303 (List!34256) C!17454)

(declare-fun tail!4528 (List!34256) List!34256)

(assert (=> b!2862986 (= e!1812393 (prefixMatchZipper!318 (derivationStepZipper!435 z!960 (head!6303 prefix!919)) (tail!4528 prefix!919)))))

(assert (= (and d!827492 c!461499) b!2862985))

(assert (= (and d!827492 (not c!461499)) b!2862986))

(declare-fun m!3282299 () Bool)

(assert (=> d!827492 m!3282299))

(declare-fun m!3282301 () Bool)

(assert (=> b!2862985 m!3282301))

(declare-fun m!3282303 () Bool)

(assert (=> b!2862986 m!3282303))

(assert (=> b!2862986 m!3282303))

(declare-fun m!3282305 () Bool)

(assert (=> b!2862986 m!3282305))

(declare-fun m!3282307 () Bool)

(assert (=> b!2862986 m!3282307))

(assert (=> b!2862986 m!3282305))

(assert (=> b!2862986 m!3282307))

(declare-fun m!3282309 () Bool)

(assert (=> b!2862986 m!3282309))

(assert (=> start!278688 d!827492))

(declare-fun d!827494 () Bool)

(declare-fun c!461502 () Bool)

(assert (=> d!827494 (= c!461502 (isEmpty!18631 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))))))

(declare-fun e!1812396 () Bool)

(assert (=> d!827494 (= (matchZipper!434 z!960 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))) e!1812396)))

(declare-fun b!2862991 () Bool)

(declare-fun nullableZipper!688 ((Set Context!5192)) Bool)

(assert (=> b!2862991 (= e!1812396 (nullableZipper!688 z!960))))

(declare-fun b!2862992 () Bool)

(assert (=> b!2862992 (= e!1812396 (matchZipper!434 (derivationStepZipper!435 z!960 (head!6303 ($colon$colon!602 lt!1014886 (h!39552 prefix!919)))) (tail!4528 ($colon$colon!602 lt!1014886 (h!39552 prefix!919)))))))

(assert (= (and d!827494 c!461502) b!2862991))

(assert (= (and d!827494 (not c!461502)) b!2862992))

(assert (=> d!827494 m!3282267))

(declare-fun m!3282311 () Bool)

(assert (=> d!827494 m!3282311))

(declare-fun m!3282313 () Bool)

(assert (=> b!2862991 m!3282313))

(assert (=> b!2862992 m!3282267))

(declare-fun m!3282315 () Bool)

(assert (=> b!2862992 m!3282315))

(assert (=> b!2862992 m!3282315))

(declare-fun m!3282317 () Bool)

(assert (=> b!2862992 m!3282317))

(assert (=> b!2862992 m!3282267))

(declare-fun m!3282319 () Bool)

(assert (=> b!2862992 m!3282319))

(assert (=> b!2862992 m!3282317))

(assert (=> b!2862992 m!3282319))

(declare-fun m!3282321 () Bool)

(assert (=> b!2862992 m!3282321))

(assert (=> b!2862949 d!827494))

(declare-fun d!827498 () Bool)

(assert (=> d!827498 (= ($colon$colon!602 lt!1014886 (h!39552 prefix!919)) (Cons!34132 (h!39552 prefix!919) lt!1014886))))

(assert (=> b!2862949 d!827498))

(declare-fun b!2863002 () Bool)

(declare-fun res!1188715 () Bool)

(declare-fun e!1812403 () Bool)

(assert (=> b!2863002 (=> (not res!1188715) (not e!1812403))))

(assert (=> b!2863002 (= res!1188715 (= (head!6303 (t!233293 prefix!919)) (head!6303 lt!1014886)))))

(declare-fun b!2863003 () Bool)

(assert (=> b!2863003 (= e!1812403 (isPrefix!2695 (tail!4528 (t!233293 prefix!919)) (tail!4528 lt!1014886)))))

(declare-fun d!827500 () Bool)

(declare-fun e!1812405 () Bool)

(assert (=> d!827500 e!1812405))

(declare-fun res!1188713 () Bool)

(assert (=> d!827500 (=> res!1188713 e!1812405)))

(declare-fun lt!1014900 () Bool)

(assert (=> d!827500 (= res!1188713 (not lt!1014900))))

(declare-fun e!1812404 () Bool)

(assert (=> d!827500 (= lt!1014900 e!1812404)))

(declare-fun res!1188714 () Bool)

(assert (=> d!827500 (=> res!1188714 e!1812404)))

(assert (=> d!827500 (= res!1188714 (is-Nil!34132 (t!233293 prefix!919)))))

(assert (=> d!827500 (= (isPrefix!2695 (t!233293 prefix!919) lt!1014886) lt!1014900)))

(declare-fun b!2863004 () Bool)

(declare-fun size!26291 (List!34256) Int)

(assert (=> b!2863004 (= e!1812405 (>= (size!26291 lt!1014886) (size!26291 (t!233293 prefix!919))))))

(declare-fun b!2863001 () Bool)

(assert (=> b!2863001 (= e!1812404 e!1812403)))

(declare-fun res!1188716 () Bool)

(assert (=> b!2863001 (=> (not res!1188716) (not e!1812403))))

(assert (=> b!2863001 (= res!1188716 (not (is-Nil!34132 lt!1014886)))))

(assert (= (and d!827500 (not res!1188714)) b!2863001))

(assert (= (and b!2863001 res!1188716) b!2863002))

(assert (= (and b!2863002 res!1188715) b!2863003))

(assert (= (and d!827500 (not res!1188713)) b!2863004))

(declare-fun m!3282323 () Bool)

(assert (=> b!2863002 m!3282323))

(declare-fun m!3282325 () Bool)

(assert (=> b!2863002 m!3282325))

(declare-fun m!3282327 () Bool)

(assert (=> b!2863003 m!3282327))

(declare-fun m!3282329 () Bool)

(assert (=> b!2863003 m!3282329))

(assert (=> b!2863003 m!3282327))

(assert (=> b!2863003 m!3282329))

(declare-fun m!3282331 () Bool)

(assert (=> b!2863003 m!3282331))

(declare-fun m!3282333 () Bool)

(assert (=> b!2863004 m!3282333))

(declare-fun m!3282335 () Bool)

(assert (=> b!2863004 m!3282335))

(assert (=> b!2862948 d!827500))

(declare-fun d!827502 () Bool)

(declare-fun choose!16853 (Int) Bool)

(assert (=> d!827502 (= (Exists!1320 lambda!105382) (choose!16853 lambda!105382))))

(declare-fun bs!520514 () Bool)

(assert (= bs!520514 d!827502))

(declare-fun m!3282337 () Bool)

(assert (=> bs!520514 m!3282337))

(assert (=> b!2862947 d!827502))

(declare-fun bs!520515 () Bool)

(declare-fun d!827504 () Bool)

(assert (= bs!520515 (and d!827504 b!2862947)))

(declare-fun lambda!105393 () Int)

(assert (=> bs!520515 (= lambda!105393 lambda!105382)))

(assert (=> d!827504 true))

(declare-fun condSetEmpty!25385 () Bool)

(assert (=> d!827504 (= condSetEmpty!25385 (= lt!1014887 (as set.empty (Set Context!5192))))))

(declare-fun setRes!25385 () Bool)

(assert (=> d!827504 setRes!25385))

(declare-fun setIsEmpty!25385 () Bool)

(assert (=> setIsEmpty!25385 setRes!25385))

(declare-fun setNonEmpty!25385 () Bool)

(assert (=> setNonEmpty!25385 (= setRes!25385 true)))

(declare-fun setElem!25385 () Context!5192)

(declare-fun setRest!25385 () (Set Context!5192))

(assert (=> setNonEmpty!25385 (= lt!1014887 (set.union (set.insert setElem!25385 (as set.empty (Set Context!5192))) setRest!25385))))

(assert (= (and d!827504 condSetEmpty!25385) setIsEmpty!25385))

(assert (= (and d!827504 (not condSetEmpty!25385)) setNonEmpty!25385))

(assert (=> d!827504 (Exists!1320 lambda!105393)))

(declare-fun lt!1014903 () Unit!47795)

(declare-fun choose!16854 ((Set Context!5192) List!34256) Unit!47795)

(assert (=> d!827504 (= lt!1014903 (choose!16854 lt!1014887 (t!233293 prefix!919)))))

(assert (=> d!827504 (prefixMatchZipper!318 lt!1014887 (t!233293 prefix!919))))

(assert (=> d!827504 (= (lemmaPrefixMatchThenExistsStringThatMatches!366 lt!1014887 (t!233293 prefix!919)) lt!1014903)))

(declare-fun m!3282351 () Bool)

(assert (=> d!827504 m!3282351))

(declare-fun m!3282353 () Bool)

(assert (=> d!827504 m!3282353))

(declare-fun m!3282355 () Bool)

(assert (=> d!827504 m!3282355))

(assert (=> b!2862947 d!827504))

(declare-fun d!827510 () Bool)

(declare-fun c!461506 () Bool)

(assert (=> d!827510 (= c!461506 (isEmpty!18631 lt!1014886))))

(declare-fun e!1812411 () Bool)

(assert (=> d!827510 (= (matchZipper!434 lt!1014887 lt!1014886) e!1812411)))

(declare-fun b!2863013 () Bool)

(assert (=> b!2863013 (= e!1812411 (nullableZipper!688 lt!1014887))))

(declare-fun b!2863014 () Bool)

(assert (=> b!2863014 (= e!1812411 (matchZipper!434 (derivationStepZipper!435 lt!1014887 (head!6303 lt!1014886)) (tail!4528 lt!1014886)))))

(assert (= (and d!827510 c!461506) b!2863013))

(assert (= (and d!827510 (not c!461506)) b!2863014))

(declare-fun m!3282357 () Bool)

(assert (=> d!827510 m!3282357))

(declare-fun m!3282359 () Bool)

(assert (=> b!2863013 m!3282359))

(assert (=> b!2863014 m!3282325))

(assert (=> b!2863014 m!3282325))

(declare-fun m!3282361 () Bool)

(assert (=> b!2863014 m!3282361))

(assert (=> b!2863014 m!3282329))

(assert (=> b!2863014 m!3282361))

(assert (=> b!2863014 m!3282329))

(declare-fun m!3282363 () Bool)

(assert (=> b!2863014 m!3282363))

(assert (=> b!2862947 d!827510))

(declare-fun d!827512 () Bool)

(declare-fun lt!1014906 () List!34256)

(declare-fun dynLambda!14249 (Int List!34256) Bool)

(assert (=> d!827512 (dynLambda!14249 lambda!105382 lt!1014906)))

(declare-fun choose!16855 (Int) List!34256)

(assert (=> d!827512 (= lt!1014906 (choose!16855 lambda!105382))))

(assert (=> d!827512 (Exists!1320 lambda!105382)))

(assert (=> d!827512 (= (pickWitness!327 lambda!105382) lt!1014906)))

(declare-fun b_lambda!85795 () Bool)

(assert (=> (not b_lambda!85795) (not d!827512)))

(declare-fun bs!520516 () Bool)

(assert (= bs!520516 d!827512))

(declare-fun m!3282365 () Bool)

(assert (=> bs!520516 m!3282365))

(declare-fun m!3282367 () Bool)

(assert (=> bs!520516 m!3282367))

(assert (=> bs!520516 m!3282265))

(assert (=> b!2862947 d!827512))

(declare-fun d!827514 () Bool)

(assert (=> d!827514 true))

(declare-fun lambda!105398 () Int)

(declare-fun flatMap!207 ((Set Context!5192) Int) (Set Context!5192))

(assert (=> d!827514 (= (derivationStepZipper!435 z!960 (h!39552 prefix!919)) (flatMap!207 z!960 lambda!105398))))

(declare-fun bs!520517 () Bool)

(assert (= bs!520517 d!827514))

(declare-fun m!3282369 () Bool)

(assert (=> bs!520517 m!3282369))

(assert (=> b!2862947 d!827514))

(declare-fun condSetEmpty!25388 () Bool)

(assert (=> setNonEmpty!25375 (= condSetEmpty!25388 (= setRest!25375 (as set.empty (Set Context!5192))))))

(declare-fun setRes!25388 () Bool)

(assert (=> setNonEmpty!25375 (= tp!921857 setRes!25388)))

(declare-fun setIsEmpty!25388 () Bool)

(assert (=> setIsEmpty!25388 setRes!25388))

(declare-fun tp!921871 () Bool)

(declare-fun e!1812414 () Bool)

(declare-fun setElem!25388 () Context!5192)

(declare-fun setNonEmpty!25388 () Bool)

(assert (=> setNonEmpty!25388 (= setRes!25388 (and tp!921871 (inv!46178 setElem!25388) e!1812414))))

(declare-fun setRest!25388 () (Set Context!5192))

(assert (=> setNonEmpty!25388 (= setRest!25375 (set.union (set.insert setElem!25388 (as set.empty (Set Context!5192))) setRest!25388))))

(declare-fun b!2863021 () Bool)

(declare-fun tp!921872 () Bool)

(assert (=> b!2863021 (= e!1812414 tp!921872)))

(assert (= (and setNonEmpty!25375 condSetEmpty!25388) setIsEmpty!25388))

(assert (= (and setNonEmpty!25375 (not condSetEmpty!25388)) setNonEmpty!25388))

(assert (= setNonEmpty!25388 b!2863021))

(declare-fun m!3282373 () Bool)

(assert (=> setNonEmpty!25388 m!3282373))

(declare-fun b!2863026 () Bool)

(declare-fun e!1812417 () Bool)

(declare-fun tp!921875 () Bool)

(assert (=> b!2863026 (= e!1812417 (and tp_is_empty!15009 tp!921875))))

(assert (=> b!2862946 (= tp!921855 e!1812417)))

(assert (= (and b!2862946 (is-Cons!34132 (t!233293 prefix!919))) b!2863026))

(declare-fun b!2863031 () Bool)

(declare-fun e!1812420 () Bool)

(declare-fun tp!921880 () Bool)

(declare-fun tp!921881 () Bool)

(assert (=> b!2863031 (= e!1812420 (and tp!921880 tp!921881))))

(assert (=> b!2862945 (= tp!921856 e!1812420)))

(assert (= (and b!2862945 (is-Cons!34131 (exprs!3096 setElem!25375))) b!2863031))

(declare-fun condSetEmpty!25389 () Bool)

(assert (=> setNonEmpty!25378 (= condSetEmpty!25389 (= setRest!25378 (as set.empty (Set Context!5192))))))

(declare-fun setRes!25389 () Bool)

(assert (=> setNonEmpty!25378 setRes!25389))

(declare-fun setIsEmpty!25389 () Bool)

(assert (=> setIsEmpty!25389 setRes!25389))

(declare-fun setNonEmpty!25389 () Bool)

(assert (=> setNonEmpty!25389 (= setRes!25389 true)))

(declare-fun setElem!25389 () Context!5192)

(declare-fun setRest!25389 () (Set Context!5192))

(assert (=> setNonEmpty!25389 (= setRest!25378 (set.union (set.insert setElem!25389 (as set.empty (Set Context!5192))) setRest!25389))))

(assert (= (and setNonEmpty!25378 condSetEmpty!25389) setIsEmpty!25389))

(assert (= (and setNonEmpty!25378 (not condSetEmpty!25389)) setNonEmpty!25389))

(declare-fun b_lambda!85797 () Bool)

(assert (= b_lambda!85795 (or b!2862947 b_lambda!85797)))

(declare-fun bs!520520 () Bool)

(declare-fun d!827520 () Bool)

(assert (= bs!520520 (and d!827520 b!2862947)))

(declare-fun res!1188719 () Bool)

(declare-fun e!1812421 () Bool)

(assert (=> bs!520520 (=> (not res!1188719) (not e!1812421))))

(assert (=> bs!520520 (= res!1188719 (matchZipper!434 lt!1014887 lt!1014906))))

(assert (=> bs!520520 (= (dynLambda!14249 lambda!105382 lt!1014906) e!1812421)))

(declare-fun b!2863032 () Bool)

(assert (=> b!2863032 (= e!1812421 (isPrefix!2695 (t!233293 prefix!919) lt!1014906))))

(assert (= (and bs!520520 res!1188719) b!2863032))

(declare-fun m!3282377 () Bool)

(assert (=> bs!520520 m!3282377))

(declare-fun m!3282379 () Bool)

(assert (=> b!2863032 m!3282379))

(assert (=> d!827512 d!827520))

(push 1)

(assert (not b!2863014))

(assert (not bs!520520))

(assert (not setNonEmpty!25389))

(assert (not d!827512))

(assert (not b!2862992))

(assert (not b!2863004))

(assert (not b!2863026))

(assert (not d!827514))

(assert (not d!827502))

(assert (not d!827510))

(assert (not b!2862986))

(assert (not b!2863002))

(assert tp_is_empty!15009)

(assert (not b!2862991))

(assert (not d!827492))

(assert (not d!827490))

(assert (not b!2863013))

(assert (not b!2863021))

(assert (not d!827494))

(assert (not b!2863003))

(assert (not setNonEmpty!25385))

(assert (not b!2863032))

(assert (not d!827504))

(assert (not b!2863031))

(assert (not b_lambda!85797))

(assert (not setNonEmpty!25388))

(assert (not b!2862985))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!827534 () Bool)

(assert (=> d!827534 (= (head!6303 (t!233293 prefix!919)) (h!39552 (t!233293 prefix!919)))))

(assert (=> b!2863002 d!827534))

(declare-fun d!827536 () Bool)

(assert (=> d!827536 (= (head!6303 lt!1014886) (h!39552 lt!1014886))))

(assert (=> b!2863002 d!827536))

(declare-fun d!827538 () Bool)

(declare-fun c!461515 () Bool)

(assert (=> d!827538 (= c!461515 (isEmpty!18631 lt!1014906))))

(declare-fun e!1812447 () Bool)

(assert (=> d!827538 (= (matchZipper!434 lt!1014887 lt!1014906) e!1812447)))

(declare-fun b!2863073 () Bool)

(assert (=> b!2863073 (= e!1812447 (nullableZipper!688 lt!1014887))))

(declare-fun b!2863074 () Bool)

(assert (=> b!2863074 (= e!1812447 (matchZipper!434 (derivationStepZipper!435 lt!1014887 (head!6303 lt!1014906)) (tail!4528 lt!1014906)))))

(assert (= (and d!827538 c!461515) b!2863073))

(assert (= (and d!827538 (not c!461515)) b!2863074))

(declare-fun m!3282433 () Bool)

(assert (=> d!827538 m!3282433))

(assert (=> b!2863073 m!3282359))

(declare-fun m!3282435 () Bool)

(assert (=> b!2863074 m!3282435))

(assert (=> b!2863074 m!3282435))

(declare-fun m!3282437 () Bool)

(assert (=> b!2863074 m!3282437))

(declare-fun m!3282439 () Bool)

(assert (=> b!2863074 m!3282439))

(assert (=> b!2863074 m!3282437))

(assert (=> b!2863074 m!3282439))

(declare-fun m!3282441 () Bool)

(assert (=> b!2863074 m!3282441))

(assert (=> bs!520520 d!827538))

(declare-fun d!827540 () Bool)

(assert (=> d!827540 (= (isEmpty!18631 lt!1014886) (is-Nil!34132 lt!1014886))))

(assert (=> d!827510 d!827540))

(declare-fun b!2863076 () Bool)

(declare-fun res!1188737 () Bool)

(declare-fun e!1812448 () Bool)

(assert (=> b!2863076 (=> (not res!1188737) (not e!1812448))))

(assert (=> b!2863076 (= res!1188737 (= (head!6303 (tail!4528 (t!233293 prefix!919))) (head!6303 (tail!4528 lt!1014886))))))

(declare-fun b!2863077 () Bool)

(assert (=> b!2863077 (= e!1812448 (isPrefix!2695 (tail!4528 (tail!4528 (t!233293 prefix!919))) (tail!4528 (tail!4528 lt!1014886))))))

(declare-fun d!827542 () Bool)

(declare-fun e!1812450 () Bool)

(assert (=> d!827542 e!1812450))

(declare-fun res!1188735 () Bool)

(assert (=> d!827542 (=> res!1188735 e!1812450)))

(declare-fun lt!1014916 () Bool)

(assert (=> d!827542 (= res!1188735 (not lt!1014916))))

(declare-fun e!1812449 () Bool)

(assert (=> d!827542 (= lt!1014916 e!1812449)))

(declare-fun res!1188736 () Bool)

(assert (=> d!827542 (=> res!1188736 e!1812449)))

(assert (=> d!827542 (= res!1188736 (is-Nil!34132 (tail!4528 (t!233293 prefix!919))))))

(assert (=> d!827542 (= (isPrefix!2695 (tail!4528 (t!233293 prefix!919)) (tail!4528 lt!1014886)) lt!1014916)))

(declare-fun b!2863078 () Bool)

(assert (=> b!2863078 (= e!1812450 (>= (size!26291 (tail!4528 lt!1014886)) (size!26291 (tail!4528 (t!233293 prefix!919)))))))

(declare-fun b!2863075 () Bool)

(assert (=> b!2863075 (= e!1812449 e!1812448)))

(declare-fun res!1188738 () Bool)

(assert (=> b!2863075 (=> (not res!1188738) (not e!1812448))))

(assert (=> b!2863075 (= res!1188738 (not (is-Nil!34132 (tail!4528 lt!1014886))))))

(assert (= (and d!827542 (not res!1188736)) b!2863075))

(assert (= (and b!2863075 res!1188738) b!2863076))

(assert (= (and b!2863076 res!1188737) b!2863077))

(assert (= (and d!827542 (not res!1188735)) b!2863078))

(assert (=> b!2863076 m!3282327))

(declare-fun m!3282443 () Bool)

(assert (=> b!2863076 m!3282443))

(assert (=> b!2863076 m!3282329))

(declare-fun m!3282445 () Bool)

(assert (=> b!2863076 m!3282445))

(assert (=> b!2863077 m!3282327))

(declare-fun m!3282447 () Bool)

(assert (=> b!2863077 m!3282447))

(assert (=> b!2863077 m!3282329))

(declare-fun m!3282449 () Bool)

(assert (=> b!2863077 m!3282449))

(assert (=> b!2863077 m!3282447))

(assert (=> b!2863077 m!3282449))

(declare-fun m!3282451 () Bool)

(assert (=> b!2863077 m!3282451))

(assert (=> b!2863078 m!3282329))

(declare-fun m!3282453 () Bool)

(assert (=> b!2863078 m!3282453))

(assert (=> b!2863078 m!3282327))

(declare-fun m!3282455 () Bool)

(assert (=> b!2863078 m!3282455))

(assert (=> b!2863003 d!827542))

(declare-fun d!827544 () Bool)

(assert (=> d!827544 (= (tail!4528 (t!233293 prefix!919)) (t!233293 (t!233293 prefix!919)))))

(assert (=> b!2863003 d!827544))

(declare-fun d!827546 () Bool)

(assert (=> d!827546 (= (tail!4528 lt!1014886) (t!233293 lt!1014886))))

(assert (=> b!2863003 d!827546))

(declare-fun d!827548 () Bool)

(assert (=> d!827548 true))

(assert (=> d!827548 true))

(declare-fun res!1188741 () Bool)

(assert (=> d!827548 (= (choose!16853 lambda!105382) res!1188741)))

(assert (=> d!827502 d!827548))

(declare-fun d!827550 () Bool)

(assert (=> d!827550 (= (isEmpty!18631 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))) (is-Nil!34132 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))))))

(assert (=> d!827494 d!827550))

(declare-fun bs!520525 () Bool)

(declare-fun d!827552 () Bool)

(assert (= bs!520525 (and d!827552 d!827490)))

(declare-fun lambda!105406 () Int)

(assert (=> bs!520525 (= lambda!105406 lambda!105390)))

(assert (=> d!827552 (= (inv!46178 setElem!25388) (forall!6971 (exprs!3096 setElem!25388) lambda!105406))))

(declare-fun bs!520526 () Bool)

(assert (= bs!520526 d!827552))

(declare-fun m!3282457 () Bool)

(assert (=> bs!520526 m!3282457))

(assert (=> setNonEmpty!25388 d!827552))

(declare-fun d!827554 () Bool)

(declare-fun choose!16859 ((Set Context!5192) Int) (Set Context!5192))

(assert (=> d!827554 (= (flatMap!207 z!960 lambda!105398) (choose!16859 z!960 lambda!105398))))

(declare-fun bs!520527 () Bool)

(assert (= bs!520527 d!827554))

(declare-fun m!3282459 () Bool)

(assert (=> bs!520527 m!3282459))

(assert (=> d!827514 d!827554))

(declare-fun d!827556 () Bool)

(declare-fun res!1188746 () Bool)

(declare-fun e!1812455 () Bool)

(assert (=> d!827556 (=> res!1188746 e!1812455)))

(assert (=> d!827556 (= res!1188746 (is-Nil!34131 (exprs!3096 setElem!25375)))))

(assert (=> d!827556 (= (forall!6971 (exprs!3096 setElem!25375) lambda!105390) e!1812455)))

(declare-fun b!2863083 () Bool)

(declare-fun e!1812456 () Bool)

(assert (=> b!2863083 (= e!1812455 e!1812456)))

(declare-fun res!1188747 () Bool)

(assert (=> b!2863083 (=> (not res!1188747) (not e!1812456))))

(declare-fun dynLambda!14251 (Int Regex!8636) Bool)

(assert (=> b!2863083 (= res!1188747 (dynLambda!14251 lambda!105390 (h!39551 (exprs!3096 setElem!25375))))))

(declare-fun b!2863084 () Bool)

(assert (=> b!2863084 (= e!1812456 (forall!6971 (t!233292 (exprs!3096 setElem!25375)) lambda!105390))))

(assert (= (and d!827556 (not res!1188746)) b!2863083))

(assert (= (and b!2863083 res!1188747) b!2863084))

(declare-fun b_lambda!85803 () Bool)

(assert (=> (not b_lambda!85803) (not b!2863083)))

(declare-fun m!3282461 () Bool)

(assert (=> b!2863083 m!3282461))

(declare-fun m!3282463 () Bool)

(assert (=> b!2863084 m!3282463))

(assert (=> d!827490 d!827556))

(declare-fun d!827558 () Bool)

(declare-fun c!461516 () Bool)

(assert (=> d!827558 (= c!461516 (isEmpty!18631 (tail!4528 ($colon$colon!602 lt!1014886 (h!39552 prefix!919)))))))

(declare-fun e!1812457 () Bool)

(assert (=> d!827558 (= (matchZipper!434 (derivationStepZipper!435 z!960 (head!6303 ($colon$colon!602 lt!1014886 (h!39552 prefix!919)))) (tail!4528 ($colon$colon!602 lt!1014886 (h!39552 prefix!919)))) e!1812457)))

(declare-fun b!2863085 () Bool)

(assert (=> b!2863085 (= e!1812457 (nullableZipper!688 (derivationStepZipper!435 z!960 (head!6303 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))))))))

(declare-fun b!2863086 () Bool)

(assert (=> b!2863086 (= e!1812457 (matchZipper!434 (derivationStepZipper!435 (derivationStepZipper!435 z!960 (head!6303 ($colon$colon!602 lt!1014886 (h!39552 prefix!919)))) (head!6303 (tail!4528 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))))) (tail!4528 (tail!4528 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))))))))

(assert (= (and d!827558 c!461516) b!2863085))

(assert (= (and d!827558 (not c!461516)) b!2863086))

(assert (=> d!827558 m!3282319))

(declare-fun m!3282465 () Bool)

(assert (=> d!827558 m!3282465))

(assert (=> b!2863085 m!3282317))

(declare-fun m!3282467 () Bool)

(assert (=> b!2863085 m!3282467))

(assert (=> b!2863086 m!3282319))

(declare-fun m!3282469 () Bool)

(assert (=> b!2863086 m!3282469))

(assert (=> b!2863086 m!3282317))

(assert (=> b!2863086 m!3282469))

(declare-fun m!3282471 () Bool)

(assert (=> b!2863086 m!3282471))

(assert (=> b!2863086 m!3282319))

(declare-fun m!3282473 () Bool)

(assert (=> b!2863086 m!3282473))

(assert (=> b!2863086 m!3282471))

(assert (=> b!2863086 m!3282473))

(declare-fun m!3282475 () Bool)

(assert (=> b!2863086 m!3282475))

(assert (=> b!2862992 d!827558))

(declare-fun bs!520528 () Bool)

(declare-fun d!827560 () Bool)

(assert (= bs!520528 (and d!827560 d!827514)))

(declare-fun lambda!105407 () Int)

(assert (=> bs!520528 (= (= (head!6303 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))) (h!39552 prefix!919)) (= lambda!105407 lambda!105398))))

(assert (=> d!827560 true))

(assert (=> d!827560 (= (derivationStepZipper!435 z!960 (head!6303 ($colon$colon!602 lt!1014886 (h!39552 prefix!919)))) (flatMap!207 z!960 lambda!105407))))

(declare-fun bs!520529 () Bool)

(assert (= bs!520529 d!827560))

(declare-fun m!3282477 () Bool)

(assert (=> bs!520529 m!3282477))

(assert (=> b!2862992 d!827560))

(declare-fun d!827562 () Bool)

(assert (=> d!827562 (= (head!6303 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))) (h!39552 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))))))

(assert (=> b!2862992 d!827562))

(declare-fun d!827564 () Bool)

(assert (=> d!827564 (= (tail!4528 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))) (t!233293 ($colon$colon!602 lt!1014886 (h!39552 prefix!919))))))

(assert (=> b!2862992 d!827564))

(declare-fun d!827566 () Bool)

(assert (=> d!827566 (= (Exists!1320 lambda!105393) (choose!16853 lambda!105393))))

(declare-fun bs!520530 () Bool)

(assert (= bs!520530 d!827566))

(declare-fun m!3282479 () Bool)

(assert (=> bs!520530 m!3282479))

(assert (=> d!827504 d!827566))

(declare-fun bs!520531 () Bool)

(declare-fun d!827568 () Bool)

(assert (= bs!520531 (and d!827568 b!2862947)))

(declare-fun lambda!105410 () Int)

(assert (=> bs!520531 (= lambda!105410 lambda!105382)))

(declare-fun bs!520532 () Bool)

(assert (= bs!520532 (and d!827568 d!827504)))

(assert (=> bs!520532 (= lambda!105410 lambda!105393)))

(assert (=> d!827568 true))

(declare-fun condSetEmpty!25395 () Bool)

(assert (=> d!827568 (= condSetEmpty!25395 (= lt!1014887 (as set.empty (Set Context!5192))))))

(declare-fun setRes!25395 () Bool)

(assert (=> d!827568 setRes!25395))

(declare-fun setIsEmpty!25395 () Bool)

(assert (=> setIsEmpty!25395 setRes!25395))

(declare-fun setNonEmpty!25395 () Bool)

(assert (=> setNonEmpty!25395 (= setRes!25395 true)))

(declare-fun setElem!25395 () Context!5192)

(declare-fun setRest!25395 () (Set Context!5192))

(assert (=> setNonEmpty!25395 (= lt!1014887 (set.union (set.insert setElem!25395 (as set.empty (Set Context!5192))) setRest!25395))))

(assert (= (and d!827568 condSetEmpty!25395) setIsEmpty!25395))

(assert (= (and d!827568 (not condSetEmpty!25395)) setNonEmpty!25395))

(assert (=> d!827568 (Exists!1320 lambda!105410)))

(assert (=> d!827568 true))

(declare-fun _$35!561 () Unit!47795)

(assert (=> d!827568 (= (choose!16854 lt!1014887 (t!233293 prefix!919)) _$35!561)))

(declare-fun m!3282481 () Bool)

(assert (=> d!827568 m!3282481))

(assert (=> d!827504 d!827568))

(declare-fun d!827570 () Bool)

(declare-fun c!461517 () Bool)

(assert (=> d!827570 (= c!461517 (isEmpty!18631 (t!233293 prefix!919)))))

(declare-fun e!1812460 () Bool)

(assert (=> d!827570 (= (prefixMatchZipper!318 lt!1014887 (t!233293 prefix!919)) e!1812460)))

(declare-fun b!2863089 () Bool)

(assert (=> b!2863089 (= e!1812460 (not (lostCauseZipper!546 lt!1014887)))))

(declare-fun b!2863090 () Bool)

(assert (=> b!2863090 (= e!1812460 (prefixMatchZipper!318 (derivationStepZipper!435 lt!1014887 (head!6303 (t!233293 prefix!919))) (tail!4528 (t!233293 prefix!919))))))

(assert (= (and d!827570 c!461517) b!2863089))

(assert (= (and d!827570 (not c!461517)) b!2863090))

(declare-fun m!3282483 () Bool)

(assert (=> d!827570 m!3282483))

(declare-fun m!3282485 () Bool)

(assert (=> b!2863089 m!3282485))

(assert (=> b!2863090 m!3282323))

(assert (=> b!2863090 m!3282323))

(declare-fun m!3282487 () Bool)

(assert (=> b!2863090 m!3282487))

(assert (=> b!2863090 m!3282327))

(assert (=> b!2863090 m!3282487))

(assert (=> b!2863090 m!3282327))

(declare-fun m!3282489 () Bool)

(assert (=> b!2863090 m!3282489))

(assert (=> d!827504 d!827570))

(declare-fun d!827572 () Bool)

(declare-fun res!1188752 () List!34256)

(assert (=> d!827572 (dynLambda!14249 lambda!105382 res!1188752)))

(declare-fun e!1812463 () Bool)

(assert (=> d!827572 e!1812463))

(assert (=> d!827572 (= (choose!16855 lambda!105382) res!1188752)))

(declare-fun b!2863093 () Bool)

(declare-fun tp!921899 () Bool)

(assert (=> b!2863093 (= e!1812463 (and tp_is_empty!15009 tp!921899))))

(assert (= (and d!827572 (is-Cons!34132 res!1188752)) b!2863093))

(declare-fun b_lambda!85805 () Bool)

(assert (=> (not b_lambda!85805) (not d!827572)))

(declare-fun m!3282491 () Bool)

(assert (=> d!827572 m!3282491))

(assert (=> d!827512 d!827572))

(assert (=> d!827512 d!827502))

(declare-fun d!827574 () Bool)

(declare-fun lambda!105413 () Int)

(declare-fun exists!1044 ((Set Context!5192) Int) Bool)

(assert (=> d!827574 (= (nullableZipper!688 lt!1014887) (exists!1044 lt!1014887 lambda!105413))))

(declare-fun bs!520533 () Bool)

(assert (= bs!520533 d!827574))

(declare-fun m!3282493 () Bool)

(assert (=> bs!520533 m!3282493))

(assert (=> b!2863013 d!827574))

(declare-fun d!827576 () Bool)

(declare-fun c!461520 () Bool)

(assert (=> d!827576 (= c!461520 (isEmpty!18631 (tail!4528 prefix!919)))))

(declare-fun e!1812464 () Bool)

(assert (=> d!827576 (= (prefixMatchZipper!318 (derivationStepZipper!435 z!960 (head!6303 prefix!919)) (tail!4528 prefix!919)) e!1812464)))

(declare-fun b!2863094 () Bool)

(assert (=> b!2863094 (= e!1812464 (not (lostCauseZipper!546 (derivationStepZipper!435 z!960 (head!6303 prefix!919)))))))

(declare-fun b!2863095 () Bool)

(assert (=> b!2863095 (= e!1812464 (prefixMatchZipper!318 (derivationStepZipper!435 (derivationStepZipper!435 z!960 (head!6303 prefix!919)) (head!6303 (tail!4528 prefix!919))) (tail!4528 (tail!4528 prefix!919))))))

(assert (= (and d!827576 c!461520) b!2863094))

(assert (= (and d!827576 (not c!461520)) b!2863095))

(assert (=> d!827576 m!3282307))

(declare-fun m!3282495 () Bool)

(assert (=> d!827576 m!3282495))

(assert (=> b!2863094 m!3282305))

(declare-fun m!3282497 () Bool)

(assert (=> b!2863094 m!3282497))

(assert (=> b!2863095 m!3282307))

(declare-fun m!3282499 () Bool)

(assert (=> b!2863095 m!3282499))

(assert (=> b!2863095 m!3282305))

(assert (=> b!2863095 m!3282499))

(declare-fun m!3282501 () Bool)

(assert (=> b!2863095 m!3282501))

(assert (=> b!2863095 m!3282307))

(declare-fun m!3282503 () Bool)

(assert (=> b!2863095 m!3282503))

(assert (=> b!2863095 m!3282501))

(assert (=> b!2863095 m!3282503))

(declare-fun m!3282505 () Bool)

(assert (=> b!2863095 m!3282505))

(assert (=> b!2862986 d!827576))

(declare-fun bs!520534 () Bool)

(declare-fun d!827578 () Bool)

(assert (= bs!520534 (and d!827578 d!827514)))

(declare-fun lambda!105414 () Int)

(assert (=> bs!520534 (= (= (head!6303 prefix!919) (h!39552 prefix!919)) (= lambda!105414 lambda!105398))))

(declare-fun bs!520535 () Bool)

(assert (= bs!520535 (and d!827578 d!827560)))

(assert (=> bs!520535 (= (= (head!6303 prefix!919) (head!6303 ($colon$colon!602 lt!1014886 (h!39552 prefix!919)))) (= lambda!105414 lambda!105407))))

(assert (=> d!827578 true))

(assert (=> d!827578 (= (derivationStepZipper!435 z!960 (head!6303 prefix!919)) (flatMap!207 z!960 lambda!105414))))

(declare-fun bs!520536 () Bool)

(assert (= bs!520536 d!827578))

(declare-fun m!3282507 () Bool)

(assert (=> bs!520536 m!3282507))

(assert (=> b!2862986 d!827578))

(declare-fun d!827580 () Bool)

(assert (=> d!827580 (= (head!6303 prefix!919) (h!39552 prefix!919))))

(assert (=> b!2862986 d!827580))

(declare-fun d!827582 () Bool)

(assert (=> d!827582 (= (tail!4528 prefix!919) (t!233293 prefix!919))))

(assert (=> b!2862986 d!827582))

(declare-fun d!827584 () Bool)

(declare-fun c!461521 () Bool)

(assert (=> d!827584 (= c!461521 (isEmpty!18631 (tail!4528 lt!1014886)))))

(declare-fun e!1812465 () Bool)

(assert (=> d!827584 (= (matchZipper!434 (derivationStepZipper!435 lt!1014887 (head!6303 lt!1014886)) (tail!4528 lt!1014886)) e!1812465)))

(declare-fun b!2863096 () Bool)

(assert (=> b!2863096 (= e!1812465 (nullableZipper!688 (derivationStepZipper!435 lt!1014887 (head!6303 lt!1014886))))))

(declare-fun b!2863097 () Bool)

(assert (=> b!2863097 (= e!1812465 (matchZipper!434 (derivationStepZipper!435 (derivationStepZipper!435 lt!1014887 (head!6303 lt!1014886)) (head!6303 (tail!4528 lt!1014886))) (tail!4528 (tail!4528 lt!1014886))))))

(assert (= (and d!827584 c!461521) b!2863096))

(assert (= (and d!827584 (not c!461521)) b!2863097))

(assert (=> d!827584 m!3282329))

(declare-fun m!3282509 () Bool)

(assert (=> d!827584 m!3282509))

(assert (=> b!2863096 m!3282361))

(declare-fun m!3282511 () Bool)

(assert (=> b!2863096 m!3282511))

(assert (=> b!2863097 m!3282329))

(assert (=> b!2863097 m!3282445))

(assert (=> b!2863097 m!3282361))

(assert (=> b!2863097 m!3282445))

(declare-fun m!3282513 () Bool)

(assert (=> b!2863097 m!3282513))

(assert (=> b!2863097 m!3282329))

(assert (=> b!2863097 m!3282449))

(assert (=> b!2863097 m!3282513))

(assert (=> b!2863097 m!3282449))

(declare-fun m!3282515 () Bool)

(assert (=> b!2863097 m!3282515))

(assert (=> b!2863014 d!827584))

(declare-fun bs!520537 () Bool)

(declare-fun d!827586 () Bool)

(assert (= bs!520537 (and d!827586 d!827514)))

(declare-fun lambda!105415 () Int)

(assert (=> bs!520537 (= (= (head!6303 lt!1014886) (h!39552 prefix!919)) (= lambda!105415 lambda!105398))))

(declare-fun bs!520538 () Bool)

(assert (= bs!520538 (and d!827586 d!827560)))

(assert (=> bs!520538 (= (= (head!6303 lt!1014886) (head!6303 ($colon$colon!602 lt!1014886 (h!39552 prefix!919)))) (= lambda!105415 lambda!105407))))

(declare-fun bs!520539 () Bool)

(assert (= bs!520539 (and d!827586 d!827578)))

(assert (=> bs!520539 (= (= (head!6303 lt!1014886) (head!6303 prefix!919)) (= lambda!105415 lambda!105414))))

(assert (=> d!827586 true))

(assert (=> d!827586 (= (derivationStepZipper!435 lt!1014887 (head!6303 lt!1014886)) (flatMap!207 lt!1014887 lambda!105415))))

(declare-fun bs!520540 () Bool)

(assert (= bs!520540 d!827586))

(declare-fun m!3282517 () Bool)

(assert (=> bs!520540 m!3282517))

(assert (=> b!2863014 d!827586))

(assert (=> b!2863014 d!827536))

(assert (=> b!2863014 d!827546))

(declare-fun bs!520541 () Bool)

(declare-fun d!827588 () Bool)

(assert (= bs!520541 (and d!827588 d!827574)))

(declare-fun lambda!105416 () Int)

(assert (=> bs!520541 (= lambda!105416 lambda!105413)))

(assert (=> d!827588 (= (nullableZipper!688 z!960) (exists!1044 z!960 lambda!105416))))

(declare-fun bs!520542 () Bool)

(assert (= bs!520542 d!827588))

(declare-fun m!3282519 () Bool)

(assert (=> bs!520542 m!3282519))

(assert (=> b!2862991 d!827588))

(declare-fun d!827590 () Bool)

(assert (=> d!827590 (= (isEmpty!18631 prefix!919) (is-Nil!34132 prefix!919))))

(assert (=> d!827492 d!827590))

(declare-fun b!2863099 () Bool)

(declare-fun res!1188755 () Bool)

(declare-fun e!1812466 () Bool)

(assert (=> b!2863099 (=> (not res!1188755) (not e!1812466))))

(assert (=> b!2863099 (= res!1188755 (= (head!6303 (t!233293 prefix!919)) (head!6303 lt!1014906)))))

(declare-fun b!2863100 () Bool)

(assert (=> b!2863100 (= e!1812466 (isPrefix!2695 (tail!4528 (t!233293 prefix!919)) (tail!4528 lt!1014906)))))

(declare-fun d!827592 () Bool)

(declare-fun e!1812468 () Bool)

(assert (=> d!827592 e!1812468))

(declare-fun res!1188753 () Bool)

(assert (=> d!827592 (=> res!1188753 e!1812468)))

(declare-fun lt!1014917 () Bool)

(assert (=> d!827592 (= res!1188753 (not lt!1014917))))

(declare-fun e!1812467 () Bool)

(assert (=> d!827592 (= lt!1014917 e!1812467)))

(declare-fun res!1188754 () Bool)

(assert (=> d!827592 (=> res!1188754 e!1812467)))

(assert (=> d!827592 (= res!1188754 (is-Nil!34132 (t!233293 prefix!919)))))

(assert (=> d!827592 (= (isPrefix!2695 (t!233293 prefix!919) lt!1014906) lt!1014917)))

(declare-fun b!2863101 () Bool)

(assert (=> b!2863101 (= e!1812468 (>= (size!26291 lt!1014906) (size!26291 (t!233293 prefix!919))))))

(declare-fun b!2863098 () Bool)

(assert (=> b!2863098 (= e!1812467 e!1812466)))

(declare-fun res!1188756 () Bool)

(assert (=> b!2863098 (=> (not res!1188756) (not e!1812466))))

(assert (=> b!2863098 (= res!1188756 (not (is-Nil!34132 lt!1014906)))))

(assert (= (and d!827592 (not res!1188754)) b!2863098))

(assert (= (and b!2863098 res!1188756) b!2863099))

(assert (= (and b!2863099 res!1188755) b!2863100))

(assert (= (and d!827592 (not res!1188753)) b!2863101))

(assert (=> b!2863099 m!3282323))

(assert (=> b!2863099 m!3282435))

(assert (=> b!2863100 m!3282327))

(assert (=> b!2863100 m!3282439))

(assert (=> b!2863100 m!3282327))

(assert (=> b!2863100 m!3282439))

(declare-fun m!3282521 () Bool)

(assert (=> b!2863100 m!3282521))

(declare-fun m!3282523 () Bool)

(assert (=> b!2863101 m!3282523))

(assert (=> b!2863101 m!3282335))

(assert (=> b!2863032 d!827592))

(declare-fun bs!520543 () Bool)

(declare-fun d!827594 () Bool)

(assert (= bs!520543 (and d!827594 d!827574)))

(declare-fun lambda!105429 () Int)

(assert (=> bs!520543 (not (= lambda!105429 lambda!105413))))

(declare-fun bs!520544 () Bool)

(assert (= bs!520544 (and d!827594 d!827588)))

(assert (=> bs!520544 (not (= lambda!105429 lambda!105416))))

(declare-fun bs!520545 () Bool)

(declare-fun b!2863106 () Bool)

(assert (= bs!520545 (and b!2863106 d!827574)))

(declare-fun lambda!105430 () Int)

(assert (=> bs!520545 (not (= lambda!105430 lambda!105413))))

(declare-fun bs!520546 () Bool)

(assert (= bs!520546 (and b!2863106 d!827588)))

(assert (=> bs!520546 (not (= lambda!105430 lambda!105416))))

(declare-fun bs!520547 () Bool)

(assert (= bs!520547 (and b!2863106 d!827594)))

(assert (=> bs!520547 (not (= lambda!105430 lambda!105429))))

(declare-fun bs!520548 () Bool)

(declare-fun b!2863107 () Bool)

(assert (= bs!520548 (and b!2863107 d!827574)))

(declare-fun lambda!105431 () Int)

(assert (=> bs!520548 (not (= lambda!105431 lambda!105413))))

(declare-fun bs!520549 () Bool)

(assert (= bs!520549 (and b!2863107 d!827588)))

(assert (=> bs!520549 (not (= lambda!105431 lambda!105416))))

(declare-fun bs!520550 () Bool)

(assert (= bs!520550 (and b!2863107 d!827594)))

(assert (=> bs!520550 (not (= lambda!105431 lambda!105429))))

(declare-fun bs!520551 () Bool)

(assert (= bs!520551 (and b!2863107 b!2863106)))

(assert (=> bs!520551 (= lambda!105431 lambda!105430)))

(declare-fun e!1812475 () Unit!47795)

(declare-fun Unit!47799 () Unit!47795)

(assert (=> b!2863106 (= e!1812475 Unit!47799)))

(declare-datatypes ((List!34259 0))(
  ( (Nil!34135) (Cons!34135 (h!39555 Context!5192) (t!233298 List!34259)) )
))
(declare-fun lt!1014935 () List!34259)

(declare-fun call!184732 () List!34259)

(assert (=> b!2863106 (= lt!1014935 call!184732)))

(declare-fun lt!1014940 () Unit!47795)

(declare-fun lemmaNotForallThenExists!122 (List!34259 Int) Unit!47795)

(assert (=> b!2863106 (= lt!1014940 (lemmaNotForallThenExists!122 lt!1014935 lambda!105429))))

(declare-fun call!184731 () Bool)

(assert (=> b!2863106 call!184731))

(declare-fun lt!1014934 () Unit!47795)

(assert (=> b!2863106 (= lt!1014934 lt!1014940)))

(declare-fun c!461532 () Bool)

(declare-fun lt!1014937 () List!34259)

(declare-fun bm!184727 () Bool)

(declare-fun exists!1045 (List!34259 Int) Bool)

(assert (=> bm!184727 (= call!184731 (exists!1045 (ite c!461532 lt!1014935 lt!1014937) (ite c!461532 lambda!105430 lambda!105431)))))

(declare-fun lt!1014936 () Bool)

(declare-datatypes ((Option!6327 0))(
  ( (None!6326) (Some!6326 (v!34448 List!34256)) )
))
(declare-fun isEmpty!18633 (Option!6327) Bool)

(declare-fun getLanguageWitness!263 ((Set Context!5192)) Option!6327)

(assert (=> d!827594 (= lt!1014936 (isEmpty!18633 (getLanguageWitness!263 z!960)))))

(declare-fun forall!6973 ((Set Context!5192) Int) Bool)

(assert (=> d!827594 (= lt!1014936 (forall!6973 z!960 lambda!105429))))

(declare-fun lt!1014939 () Unit!47795)

(assert (=> d!827594 (= lt!1014939 e!1812475)))

(assert (=> d!827594 (= c!461532 (not (forall!6973 z!960 lambda!105429)))))

(assert (=> d!827594 (= (lostCauseZipper!546 z!960) lt!1014936)))

(declare-fun bm!184726 () Bool)

(declare-fun toList!1981 ((Set Context!5192)) List!34259)

(assert (=> bm!184726 (= call!184732 (toList!1981 z!960))))

(declare-fun Unit!47800 () Unit!47795)

(assert (=> b!2863107 (= e!1812475 Unit!47800)))

(assert (=> b!2863107 (= lt!1014937 call!184732)))

(declare-fun lt!1014938 () Unit!47795)

(declare-fun lemmaForallThenNotExists!122 (List!34259 Int) Unit!47795)

(assert (=> b!2863107 (= lt!1014938 (lemmaForallThenNotExists!122 lt!1014937 lambda!105429))))

(assert (=> b!2863107 (not call!184731)))

(declare-fun lt!1014941 () Unit!47795)

(assert (=> b!2863107 (= lt!1014941 lt!1014938)))

(assert (= (and d!827594 c!461532) b!2863106))

(assert (= (and d!827594 (not c!461532)) b!2863107))

(assert (= (or b!2863106 b!2863107) bm!184726))

(assert (= (or b!2863106 b!2863107) bm!184727))

(declare-fun m!3282525 () Bool)

(assert (=> bm!184727 m!3282525))

(declare-fun m!3282527 () Bool)

(assert (=> b!2863107 m!3282527))

(declare-fun m!3282529 () Bool)

(assert (=> b!2863106 m!3282529))

(declare-fun m!3282531 () Bool)

(assert (=> d!827594 m!3282531))

(assert (=> d!827594 m!3282531))

(declare-fun m!3282533 () Bool)

(assert (=> d!827594 m!3282533))

(declare-fun m!3282535 () Bool)

(assert (=> d!827594 m!3282535))

(assert (=> d!827594 m!3282535))

(declare-fun m!3282537 () Bool)

(assert (=> bm!184726 m!3282537))

(assert (=> b!2862985 d!827594))

(declare-fun d!827596 () Bool)

(declare-fun lt!1014944 () Int)

(assert (=> d!827596 (>= lt!1014944 0)))

(declare-fun e!1812478 () Int)

(assert (=> d!827596 (= lt!1014944 e!1812478)))

(declare-fun c!461535 () Bool)

(assert (=> d!827596 (= c!461535 (is-Nil!34132 lt!1014886))))

(assert (=> d!827596 (= (size!26291 lt!1014886) lt!1014944)))

(declare-fun b!2863112 () Bool)

(assert (=> b!2863112 (= e!1812478 0)))

(declare-fun b!2863113 () Bool)

(assert (=> b!2863113 (= e!1812478 (+ 1 (size!26291 (t!233293 lt!1014886))))))

(assert (= (and d!827596 c!461535) b!2863112))

(assert (= (and d!827596 (not c!461535)) b!2863113))

(declare-fun m!3282539 () Bool)

(assert (=> b!2863113 m!3282539))

(assert (=> b!2863004 d!827596))

(declare-fun d!827598 () Bool)

(declare-fun lt!1014945 () Int)

(assert (=> d!827598 (>= lt!1014945 0)))

(declare-fun e!1812479 () Int)

(assert (=> d!827598 (= lt!1014945 e!1812479)))

(declare-fun c!461536 () Bool)

(assert (=> d!827598 (= c!461536 (is-Nil!34132 (t!233293 prefix!919)))))

(assert (=> d!827598 (= (size!26291 (t!233293 prefix!919)) lt!1014945)))

(declare-fun b!2863114 () Bool)

(assert (=> b!2863114 (= e!1812479 0)))

(declare-fun b!2863115 () Bool)

(assert (=> b!2863115 (= e!1812479 (+ 1 (size!26291 (t!233293 (t!233293 prefix!919)))))))

(assert (= (and d!827598 c!461536) b!2863114))

(assert (= (and d!827598 (not c!461536)) b!2863115))

(declare-fun m!3282541 () Bool)

(assert (=> b!2863115 m!3282541))

(assert (=> b!2863004 d!827598))

(declare-fun condSetEmpty!25396 () Bool)

(assert (=> setNonEmpty!25389 (= condSetEmpty!25396 (= setRest!25389 (as set.empty (Set Context!5192))))))

(declare-fun setRes!25396 () Bool)

(assert (=> setNonEmpty!25389 setRes!25396))

(declare-fun setIsEmpty!25396 () Bool)

(assert (=> setIsEmpty!25396 setRes!25396))

(declare-fun setNonEmpty!25396 () Bool)

(assert (=> setNonEmpty!25396 (= setRes!25396 true)))

(declare-fun setElem!25396 () Context!5192)

(declare-fun setRest!25396 () (Set Context!5192))

(assert (=> setNonEmpty!25396 (= setRest!25389 (set.union (set.insert setElem!25396 (as set.empty (Set Context!5192))) setRest!25396))))

(assert (= (and setNonEmpty!25389 condSetEmpty!25396) setIsEmpty!25396))

(assert (= (and setNonEmpty!25389 (not condSetEmpty!25396)) setNonEmpty!25396))

(declare-fun b!2863127 () Bool)

(declare-fun e!1812482 () Bool)

(declare-fun tp!921910 () Bool)

(declare-fun tp!921914 () Bool)

(assert (=> b!2863127 (= e!1812482 (and tp!921910 tp!921914))))

(declare-fun b!2863126 () Bool)

(assert (=> b!2863126 (= e!1812482 tp_is_empty!15009)))

(declare-fun b!2863128 () Bool)

(declare-fun tp!921911 () Bool)

(assert (=> b!2863128 (= e!1812482 tp!921911)))

(declare-fun b!2863129 () Bool)

(declare-fun tp!921913 () Bool)

(declare-fun tp!921912 () Bool)

(assert (=> b!2863129 (= e!1812482 (and tp!921913 tp!921912))))

(assert (=> b!2863031 (= tp!921880 e!1812482)))

(assert (= (and b!2863031 (is-ElementMatch!8636 (h!39551 (exprs!3096 setElem!25375)))) b!2863126))

(assert (= (and b!2863031 (is-Concat!13957 (h!39551 (exprs!3096 setElem!25375)))) b!2863127))

(assert (= (and b!2863031 (is-Star!8636 (h!39551 (exprs!3096 setElem!25375)))) b!2863128))

(assert (= (and b!2863031 (is-Union!8636 (h!39551 (exprs!3096 setElem!25375)))) b!2863129))

(declare-fun b!2863130 () Bool)

(declare-fun e!1812483 () Bool)

(declare-fun tp!921915 () Bool)

(declare-fun tp!921916 () Bool)

(assert (=> b!2863130 (= e!1812483 (and tp!921915 tp!921916))))

(assert (=> b!2863031 (= tp!921881 e!1812483)))

(assert (= (and b!2863031 (is-Cons!34131 (t!233292 (exprs!3096 setElem!25375)))) b!2863130))

(declare-fun b!2863131 () Bool)

(declare-fun e!1812484 () Bool)

(declare-fun tp!921917 () Bool)

(declare-fun tp!921918 () Bool)

(assert (=> b!2863131 (= e!1812484 (and tp!921917 tp!921918))))

(assert (=> b!2863021 (= tp!921872 e!1812484)))

(assert (= (and b!2863021 (is-Cons!34131 (exprs!3096 setElem!25388))) b!2863131))

(declare-fun condSetEmpty!25397 () Bool)

(assert (=> setNonEmpty!25385 (= condSetEmpty!25397 (= setRest!25385 (as set.empty (Set Context!5192))))))

(declare-fun setRes!25397 () Bool)

(assert (=> setNonEmpty!25385 setRes!25397))

(declare-fun setIsEmpty!25397 () Bool)

(assert (=> setIsEmpty!25397 setRes!25397))

(declare-fun setNonEmpty!25397 () Bool)

(assert (=> setNonEmpty!25397 (= setRes!25397 true)))

(declare-fun setElem!25397 () Context!5192)

(declare-fun setRest!25397 () (Set Context!5192))

(assert (=> setNonEmpty!25397 (= setRest!25385 (set.union (set.insert setElem!25397 (as set.empty (Set Context!5192))) setRest!25397))))

(assert (= (and setNonEmpty!25385 condSetEmpty!25397) setIsEmpty!25397))

(assert (= (and setNonEmpty!25385 (not condSetEmpty!25397)) setNonEmpty!25397))

(declare-fun condSetEmpty!25398 () Bool)

(assert (=> setNonEmpty!25388 (= condSetEmpty!25398 (= setRest!25388 (as set.empty (Set Context!5192))))))

(declare-fun setRes!25398 () Bool)

(assert (=> setNonEmpty!25388 (= tp!921871 setRes!25398)))

(declare-fun setIsEmpty!25398 () Bool)

(assert (=> setIsEmpty!25398 setRes!25398))

(declare-fun tp!921919 () Bool)

(declare-fun e!1812485 () Bool)

(declare-fun setNonEmpty!25398 () Bool)

(declare-fun setElem!25398 () Context!5192)

(assert (=> setNonEmpty!25398 (= setRes!25398 (and tp!921919 (inv!46178 setElem!25398) e!1812485))))

(declare-fun setRest!25398 () (Set Context!5192))

(assert (=> setNonEmpty!25398 (= setRest!25388 (set.union (set.insert setElem!25398 (as set.empty (Set Context!5192))) setRest!25398))))

(declare-fun b!2863132 () Bool)

(declare-fun tp!921920 () Bool)

(assert (=> b!2863132 (= e!1812485 tp!921920)))

(assert (= (and setNonEmpty!25388 condSetEmpty!25398) setIsEmpty!25398))

(assert (= (and setNonEmpty!25388 (not condSetEmpty!25398)) setNonEmpty!25398))

(assert (= setNonEmpty!25398 b!2863132))

(declare-fun m!3282543 () Bool)

(assert (=> setNonEmpty!25398 m!3282543))

(declare-fun b!2863133 () Bool)

(declare-fun e!1812486 () Bool)

(declare-fun tp!921921 () Bool)

(assert (=> b!2863133 (= e!1812486 (and tp_is_empty!15009 tp!921921))))

(assert (=> b!2863026 (= tp!921875 e!1812486)))

(assert (= (and b!2863026 (is-Cons!34132 (t!233293 (t!233293 prefix!919)))) b!2863133))

(declare-fun b_lambda!85807 () Bool)

(assert (= b_lambda!85803 (or d!827490 b_lambda!85807)))

(declare-fun bs!520552 () Bool)

(declare-fun d!827600 () Bool)

(assert (= bs!520552 (and d!827600 d!827490)))

(declare-fun validRegex!3487 (Regex!8636) Bool)

(assert (=> bs!520552 (= (dynLambda!14251 lambda!105390 (h!39551 (exprs!3096 setElem!25375))) (validRegex!3487 (h!39551 (exprs!3096 setElem!25375))))))

(declare-fun m!3282545 () Bool)

(assert (=> bs!520552 m!3282545))

(assert (=> b!2863083 d!827600))

(declare-fun b_lambda!85809 () Bool)

(assert (= b_lambda!85805 (or b!2862947 b_lambda!85809)))

(declare-fun bs!520553 () Bool)

(declare-fun d!827602 () Bool)

(assert (= bs!520553 (and d!827602 b!2862947)))

(declare-fun res!1188757 () Bool)

(declare-fun e!1812487 () Bool)

(assert (=> bs!520553 (=> (not res!1188757) (not e!1812487))))

(assert (=> bs!520553 (= res!1188757 (matchZipper!434 lt!1014887 res!1188752))))

(assert (=> bs!520553 (= (dynLambda!14249 lambda!105382 res!1188752) e!1812487)))

(declare-fun b!2863134 () Bool)

(assert (=> b!2863134 (= e!1812487 (isPrefix!2695 (t!233293 prefix!919) res!1188752))))

(assert (= (and bs!520553 res!1188757) b!2863134))

(declare-fun m!3282547 () Bool)

(assert (=> bs!520553 m!3282547))

(declare-fun m!3282549 () Bool)

(assert (=> b!2863134 m!3282549))

(assert (=> d!827572 d!827602))

(push 1)

(assert (not bs!520553))

(assert (not b!2863107))

(assert (not d!827576))

(assert (not b_lambda!85807))

(assert (not b!2863101))

(assert tp_is_empty!15009)

(assert (not bm!184726))

(assert (not b!2863074))

(assert (not setNonEmpty!25398))

(assert (not d!827578))

(assert (not b!2863130))

(assert (not d!827566))

(assert (not d!827588))

(assert (not b!2863127))

(assert (not b!2863100))

(assert (not setNonEmpty!25396))

(assert (not d!827554))

(assert (not setNonEmpty!25395))

(assert (not b!2863097))

(assert (not d!827586))

(assert (not b!2863084))

(assert (not setNonEmpty!25397))

(assert (not b!2863085))

(assert (not b!2863134))

(assert (not b!2863113))

(assert (not b!2863093))

(assert (not b!2863115))

(assert (not d!827584))

(assert (not b!2863106))

(assert (not b!2863076))

(assert (not b!2863078))

(assert (not b!2863131))

(assert (not b!2863089))

(assert (not b_lambda!85809))

(assert (not bm!184727))

(assert (not b!2863129))

(assert (not b!2863096))

(assert (not d!827594))

(assert (not b!2863132))

(assert (not b!2863094))

(assert (not b!2863090))

(assert (not bs!520552))

(assert (not b!2863095))

(assert (not d!827558))

(assert (not d!827568))

(assert (not d!827560))

(assert (not b_lambda!85797))

(assert (not d!827538))

(assert (not b!2863099))

(assert (not d!827574))

(assert (not b!2863077))

(assert (not b!2863128))

(assert (not b!2863086))

(assert (not d!827570))

(assert (not b!2863073))

(assert (not b!2863133))

(assert (not d!827552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

