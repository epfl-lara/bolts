; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547088 () Bool)

(assert start!547088)

(declare-fun b!5169407 () Bool)

(declare-fun e!3221021 () Bool)

(declare-fun e!3221019 () Bool)

(assert (=> b!5169407 (= e!3221021 e!3221019)))

(declare-fun res!2197269 () Bool)

(assert (=> b!5169407 (=> res!2197269 e!3221019)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29488 0))(
  ( (C!29489 (val!24446 Int)) )
))
(declare-datatypes ((Regex!14609 0))(
  ( (ElementMatch!14609 (c!889678 C!29488)) (Concat!23454 (regOne!29730 Regex!14609) (regTwo!29730 Regex!14609)) (EmptyExpr!14609) (Star!14609 (reg!14938 Regex!14609)) (EmptyLang!14609) (Union!14609 (regOne!29731 Regex!14609) (regTwo!29731 Regex!14609)) )
))
(declare-datatypes ((List!60179 0))(
  ( (Nil!60055) (Cons!60055 (h!66503 Regex!14609) (t!373332 List!60179)) )
))
(declare-datatypes ((Context!7986 0))(
  ( (Context!7987 (exprs!4493 List!60179)) )
))
(declare-fun z!4581 () (InoxSet Context!7986))

(declare-fun nullableZipper!1155 ((InoxSet Context!7986)) Bool)

(assert (=> b!5169407 (= res!2197269 (not (nullableZipper!1155 z!4581)))))

(declare-datatypes ((List!60180 0))(
  ( (Nil!60056) (Cons!60056 (h!66504 C!29488) (t!373333 List!60180)) )
))
(declare-fun lt!2127215 () List!60180)

(declare-fun input!5817 () List!60180)

(declare-fun isPrefix!5742 (List!60180 List!60180) Bool)

(assert (=> b!5169407 (isPrefix!5742 lt!2127215 input!5817)))

(declare-datatypes ((Unit!151618 0))(
  ( (Unit!151619) )
))
(declare-fun lt!2127216 () Unit!151618)

(declare-fun testedP!294 () List!60180)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1055 (List!60180 List!60180) Unit!151618)

(assert (=> b!5169407 (= lt!2127216 (lemmaAddHeadSuffixToPrefixStillPrefix!1055 testedP!294 input!5817))))

(declare-fun lt!2127210 () C!29488)

(declare-fun ++!13133 (List!60180 List!60180) List!60180)

(assert (=> b!5169407 (= lt!2127215 (++!13133 testedP!294 (Cons!60056 lt!2127210 Nil!60056)))))

(declare-fun lt!2127213 () List!60180)

(declare-fun head!11033 (List!60180) C!29488)

(assert (=> b!5169407 (= lt!2127210 (head!11033 lt!2127213))))

(declare-fun b!5169408 () Bool)

(declare-fun e!3221025 () Unit!151618)

(declare-fun Unit!151620 () Unit!151618)

(assert (=> b!5169408 (= e!3221025 Unit!151620)))

(declare-fun b!5169409 () Bool)

(declare-fun e!3221026 () Bool)

(declare-fun tp_is_empty!38471 () Bool)

(declare-fun tp!1450296 () Bool)

(assert (=> b!5169409 (= e!3221026 (and tp_is_empty!38471 tp!1450296))))

(declare-fun res!2197268 () Bool)

(declare-fun e!3221023 () Bool)

(assert (=> start!547088 (=> (not res!2197268) (not e!3221023))))

(assert (=> start!547088 (= res!2197268 (isPrefix!5742 testedP!294 input!5817))))

(assert (=> start!547088 e!3221023))

(assert (=> start!547088 e!3221026))

(declare-fun e!3221020 () Bool)

(assert (=> start!547088 e!3221020))

(declare-fun condSetEmpty!31924 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!7986))

(assert (=> start!547088 (= condSetEmpty!31924 (= baseZ!62 ((as const (Array Context!7986 Bool)) false)))))

(declare-fun setRes!31923 () Bool)

(assert (=> start!547088 setRes!31923))

(declare-fun condSetEmpty!31923 () Bool)

(assert (=> start!547088 (= condSetEmpty!31923 (= z!4581 ((as const (Array Context!7986 Bool)) false)))))

(declare-fun setRes!31924 () Bool)

(assert (=> start!547088 setRes!31924))

(declare-fun b!5169410 () Bool)

(declare-fun e!3221024 () Bool)

(declare-fun tp!1450297 () Bool)

(assert (=> b!5169410 (= e!3221024 tp!1450297)))

(declare-fun b!5169411 () Bool)

(declare-fun Unit!151621 () Unit!151618)

(assert (=> b!5169411 (= e!3221025 Unit!151621)))

(declare-fun lt!2127209 () Unit!151618)

(declare-fun lemmaIsPrefixRefl!3749 (List!60180 List!60180) Unit!151618)

(assert (=> b!5169411 (= lt!2127209 (lemmaIsPrefixRefl!3749 input!5817 input!5817))))

(assert (=> b!5169411 (isPrefix!5742 input!5817 input!5817)))

(declare-fun lt!2127208 () Unit!151618)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1391 (List!60180 List!60180 List!60180) Unit!151618)

(assert (=> b!5169411 (= lt!2127208 (lemmaIsPrefixSameLengthThenSameList!1391 input!5817 testedP!294 input!5817))))

(assert (=> b!5169411 false))

(declare-fun b!5169412 () Bool)

(declare-fun res!2197271 () Bool)

(declare-fun e!3221022 () Bool)

(assert (=> b!5169412 (=> (not res!2197271) (not e!3221022))))

(assert (=> b!5169412 (= res!2197271 (not (= testedP!294 input!5817)))))

(declare-fun b!5169413 () Bool)

(declare-fun tp!1450294 () Bool)

(assert (=> b!5169413 (= e!3221020 (and tp_is_empty!38471 tp!1450294))))

(declare-fun b!5169414 () Bool)

(declare-fun res!2197267 () Bool)

(assert (=> b!5169414 (=> res!2197267 e!3221019)))

(declare-fun lt!2127207 () Int)

(declare-fun lt!2127211 () Int)

(declare-fun isEmpty!32153 (List!60180) Bool)

(declare-datatypes ((tuple2!63772 0))(
  ( (tuple2!63773 (_1!35189 List!60180) (_2!35189 List!60180)) )
))
(declare-fun findLongestMatchInnerZipper!267 ((InoxSet Context!7986) List!60180 Int List!60180 List!60180 Int) tuple2!63772)

(declare-fun derivationStepZipper!963 ((InoxSet Context!7986) C!29488) (InoxSet Context!7986))

(declare-fun tail!10142 (List!60180) List!60180)

(assert (=> b!5169414 (= res!2197267 (isEmpty!32153 (_1!35189 (findLongestMatchInnerZipper!267 (derivationStepZipper!963 z!4581 lt!2127210) lt!2127215 (+ 1 lt!2127211) (tail!10142 lt!2127213) input!5817 lt!2127207))))))

(declare-fun b!5169415 () Bool)

(assert (=> b!5169415 (= e!3221022 (not e!3221021))))

(declare-fun res!2197272 () Bool)

(assert (=> b!5169415 (=> res!2197272 e!3221021)))

(assert (=> b!5169415 (= res!2197272 (>= lt!2127211 lt!2127207))))

(declare-fun lt!2127212 () Unit!151618)

(assert (=> b!5169415 (= lt!2127212 e!3221025)))

(declare-fun c!889677 () Bool)

(assert (=> b!5169415 (= c!889677 (= lt!2127211 lt!2127207))))

(assert (=> b!5169415 (<= lt!2127211 lt!2127207)))

(declare-fun lt!2127214 () Unit!151618)

(declare-fun lemmaIsPrefixThenSmallerEqSize!905 (List!60180 List!60180) Unit!151618)

(assert (=> b!5169415 (= lt!2127214 (lemmaIsPrefixThenSmallerEqSize!905 testedP!294 input!5817))))

(declare-fun b!5169416 () Bool)

(declare-fun e!3221018 () Bool)

(declare-fun tp!1450299 () Bool)

(assert (=> b!5169416 (= e!3221018 tp!1450299)))

(declare-fun b!5169417 () Bool)

(assert (=> b!5169417 (= e!3221019 (not (= lt!2127213 Nil!60056)))))

(declare-fun setElem!31924 () Context!7986)

(declare-fun setNonEmpty!31923 () Bool)

(declare-fun tp!1450298 () Bool)

(declare-fun inv!79769 (Context!7986) Bool)

(assert (=> setNonEmpty!31923 (= setRes!31923 (and tp!1450298 (inv!79769 setElem!31924) e!3221024))))

(declare-fun setRest!31923 () (InoxSet Context!7986))

(assert (=> setNonEmpty!31923 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7986 Bool)) false) setElem!31924 true) setRest!31923))))

(declare-fun setIsEmpty!31923 () Bool)

(assert (=> setIsEmpty!31923 setRes!31924))

(declare-fun setIsEmpty!31924 () Bool)

(assert (=> setIsEmpty!31924 setRes!31923))

(declare-fun b!5169418 () Bool)

(declare-fun res!2197266 () Bool)

(assert (=> b!5169418 (=> (not res!2197266) (not e!3221023))))

(declare-fun derivationZipper!232 ((InoxSet Context!7986) List!60180) (InoxSet Context!7986))

(assert (=> b!5169418 (= res!2197266 (= (derivationZipper!232 baseZ!62 testedP!294) z!4581))))

(declare-fun tp!1450295 () Bool)

(declare-fun setNonEmpty!31924 () Bool)

(declare-fun setElem!31923 () Context!7986)

(assert (=> setNonEmpty!31924 (= setRes!31924 (and tp!1450295 (inv!79769 setElem!31923) e!3221018))))

(declare-fun setRest!31924 () (InoxSet Context!7986))

(assert (=> setNonEmpty!31924 (= z!4581 ((_ map or) (store ((as const (Array Context!7986 Bool)) false) setElem!31923 true) setRest!31924))))

(declare-fun b!5169419 () Bool)

(assert (=> b!5169419 (= e!3221023 e!3221022)))

(declare-fun res!2197270 () Bool)

(assert (=> b!5169419 (=> (not res!2197270) (not e!3221022))))

(assert (=> b!5169419 (= res!2197270 (not (isEmpty!32153 (_1!35189 (findLongestMatchInnerZipper!267 z!4581 testedP!294 lt!2127211 lt!2127213 input!5817 lt!2127207)))))))

(declare-fun size!39645 (List!60180) Int)

(assert (=> b!5169419 (= lt!2127207 (size!39645 input!5817))))

(declare-fun getSuffix!3392 (List!60180 List!60180) List!60180)

(assert (=> b!5169419 (= lt!2127213 (getSuffix!3392 input!5817 testedP!294))))

(assert (=> b!5169419 (= lt!2127211 (size!39645 testedP!294))))

(assert (= (and start!547088 res!2197268) b!5169418))

(assert (= (and b!5169418 res!2197266) b!5169419))

(assert (= (and b!5169419 res!2197270) b!5169412))

(assert (= (and b!5169412 res!2197271) b!5169415))

(assert (= (and b!5169415 c!889677) b!5169411))

(assert (= (and b!5169415 (not c!889677)) b!5169408))

(assert (= (and b!5169415 (not res!2197272)) b!5169407))

(assert (= (and b!5169407 (not res!2197269)) b!5169414))

(assert (= (and b!5169414 (not res!2197267)) b!5169417))

(get-info :version)

(assert (= (and start!547088 ((_ is Cons!60056) testedP!294)) b!5169409))

(assert (= (and start!547088 ((_ is Cons!60056) input!5817)) b!5169413))

(assert (= (and start!547088 condSetEmpty!31924) setIsEmpty!31924))

(assert (= (and start!547088 (not condSetEmpty!31924)) setNonEmpty!31923))

(assert (= setNonEmpty!31923 b!5169410))

(assert (= (and start!547088 condSetEmpty!31923) setIsEmpty!31923))

(assert (= (and start!547088 (not condSetEmpty!31923)) setNonEmpty!31924))

(assert (= setNonEmpty!31924 b!5169416))

(declare-fun m!6220980 () Bool)

(assert (=> start!547088 m!6220980))

(declare-fun m!6220982 () Bool)

(assert (=> b!5169418 m!6220982))

(declare-fun m!6220984 () Bool)

(assert (=> b!5169415 m!6220984))

(declare-fun m!6220986 () Bool)

(assert (=> b!5169411 m!6220986))

(declare-fun m!6220988 () Bool)

(assert (=> b!5169411 m!6220988))

(declare-fun m!6220990 () Bool)

(assert (=> b!5169411 m!6220990))

(declare-fun m!6220992 () Bool)

(assert (=> setNonEmpty!31924 m!6220992))

(declare-fun m!6220994 () Bool)

(assert (=> b!5169414 m!6220994))

(declare-fun m!6220996 () Bool)

(assert (=> b!5169414 m!6220996))

(assert (=> b!5169414 m!6220994))

(assert (=> b!5169414 m!6220996))

(declare-fun m!6220998 () Bool)

(assert (=> b!5169414 m!6220998))

(declare-fun m!6221000 () Bool)

(assert (=> b!5169414 m!6221000))

(declare-fun m!6221002 () Bool)

(assert (=> b!5169419 m!6221002))

(declare-fun m!6221004 () Bool)

(assert (=> b!5169419 m!6221004))

(declare-fun m!6221006 () Bool)

(assert (=> b!5169419 m!6221006))

(declare-fun m!6221008 () Bool)

(assert (=> b!5169419 m!6221008))

(declare-fun m!6221010 () Bool)

(assert (=> b!5169419 m!6221010))

(declare-fun m!6221012 () Bool)

(assert (=> setNonEmpty!31923 m!6221012))

(declare-fun m!6221014 () Bool)

(assert (=> b!5169407 m!6221014))

(declare-fun m!6221016 () Bool)

(assert (=> b!5169407 m!6221016))

(declare-fun m!6221018 () Bool)

(assert (=> b!5169407 m!6221018))

(declare-fun m!6221020 () Bool)

(assert (=> b!5169407 m!6221020))

(declare-fun m!6221022 () Bool)

(assert (=> b!5169407 m!6221022))

(check-sat (not b!5169419) (not start!547088) (not b!5169414) tp_is_empty!38471 (not b!5169409) (not b!5169410) (not b!5169407) (not setNonEmpty!31923) (not b!5169413) (not setNonEmpty!31924) (not b!5169416) (not b!5169415) (not b!5169418) (not b!5169411))
(check-sat)
(get-model)

(declare-fun d!1668040 () Bool)

(assert (=> d!1668040 (<= (size!39645 testedP!294) (size!39645 input!5817))))

(declare-fun lt!2127219 () Unit!151618)

(declare-fun choose!38280 (List!60180 List!60180) Unit!151618)

(assert (=> d!1668040 (= lt!2127219 (choose!38280 testedP!294 input!5817))))

(assert (=> d!1668040 (isPrefix!5742 testedP!294 input!5817)))

(assert (=> d!1668040 (= (lemmaIsPrefixThenSmallerEqSize!905 testedP!294 input!5817) lt!2127219)))

(declare-fun bs!1203288 () Bool)

(assert (= bs!1203288 d!1668040))

(assert (=> bs!1203288 m!6221002))

(assert (=> bs!1203288 m!6221004))

(declare-fun m!6221024 () Bool)

(assert (=> bs!1203288 m!6221024))

(assert (=> bs!1203288 m!6220980))

(assert (=> b!5169415 d!1668040))

(declare-fun d!1668042 () Bool)

(assert (=> d!1668042 (isPrefix!5742 input!5817 input!5817)))

(declare-fun lt!2127222 () Unit!151618)

(declare-fun choose!38281 (List!60180 List!60180) Unit!151618)

(assert (=> d!1668042 (= lt!2127222 (choose!38281 input!5817 input!5817))))

(assert (=> d!1668042 (= (lemmaIsPrefixRefl!3749 input!5817 input!5817) lt!2127222)))

(declare-fun bs!1203289 () Bool)

(assert (= bs!1203289 d!1668042))

(assert (=> bs!1203289 m!6220988))

(declare-fun m!6221026 () Bool)

(assert (=> bs!1203289 m!6221026))

(assert (=> b!5169411 d!1668042))

(declare-fun b!5169431 () Bool)

(declare-fun e!3221033 () Bool)

(assert (=> b!5169431 (= e!3221033 (>= (size!39645 input!5817) (size!39645 input!5817)))))

(declare-fun b!5169430 () Bool)

(declare-fun e!3221035 () Bool)

(assert (=> b!5169430 (= e!3221035 (isPrefix!5742 (tail!10142 input!5817) (tail!10142 input!5817)))))

(declare-fun b!5169429 () Bool)

(declare-fun res!2197282 () Bool)

(assert (=> b!5169429 (=> (not res!2197282) (not e!3221035))))

(assert (=> b!5169429 (= res!2197282 (= (head!11033 input!5817) (head!11033 input!5817)))))

(declare-fun b!5169428 () Bool)

(declare-fun e!3221034 () Bool)

(assert (=> b!5169428 (= e!3221034 e!3221035)))

(declare-fun res!2197281 () Bool)

(assert (=> b!5169428 (=> (not res!2197281) (not e!3221035))))

(assert (=> b!5169428 (= res!2197281 (not ((_ is Nil!60056) input!5817)))))

(declare-fun d!1668046 () Bool)

(assert (=> d!1668046 e!3221033))

(declare-fun res!2197284 () Bool)

(assert (=> d!1668046 (=> res!2197284 e!3221033)))

(declare-fun lt!2127225 () Bool)

(assert (=> d!1668046 (= res!2197284 (not lt!2127225))))

(assert (=> d!1668046 (= lt!2127225 e!3221034)))

(declare-fun res!2197283 () Bool)

(assert (=> d!1668046 (=> res!2197283 e!3221034)))

(assert (=> d!1668046 (= res!2197283 ((_ is Nil!60056) input!5817))))

(assert (=> d!1668046 (= (isPrefix!5742 input!5817 input!5817) lt!2127225)))

(assert (= (and d!1668046 (not res!2197283)) b!5169428))

(assert (= (and b!5169428 res!2197281) b!5169429))

(assert (= (and b!5169429 res!2197282) b!5169430))

(assert (= (and d!1668046 (not res!2197284)) b!5169431))

(assert (=> b!5169431 m!6221004))

(assert (=> b!5169431 m!6221004))

(declare-fun m!6221028 () Bool)

(assert (=> b!5169430 m!6221028))

(assert (=> b!5169430 m!6221028))

(assert (=> b!5169430 m!6221028))

(assert (=> b!5169430 m!6221028))

(declare-fun m!6221030 () Bool)

(assert (=> b!5169430 m!6221030))

(declare-fun m!6221032 () Bool)

(assert (=> b!5169429 m!6221032))

(assert (=> b!5169429 m!6221032))

(assert (=> b!5169411 d!1668046))

(declare-fun d!1668048 () Bool)

(assert (=> d!1668048 (= input!5817 testedP!294)))

(declare-fun lt!2127228 () Unit!151618)

(declare-fun choose!38283 (List!60180 List!60180 List!60180) Unit!151618)

(assert (=> d!1668048 (= lt!2127228 (choose!38283 input!5817 testedP!294 input!5817))))

(assert (=> d!1668048 (isPrefix!5742 input!5817 input!5817)))

(assert (=> d!1668048 (= (lemmaIsPrefixSameLengthThenSameList!1391 input!5817 testedP!294 input!5817) lt!2127228)))

(declare-fun bs!1203290 () Bool)

(assert (= bs!1203290 d!1668048))

(declare-fun m!6221034 () Bool)

(assert (=> bs!1203290 m!6221034))

(assert (=> bs!1203290 m!6220988))

(assert (=> b!5169411 d!1668048))

(declare-fun d!1668050 () Bool)

(declare-fun lambda!258044 () Int)

(declare-fun forall!14125 (List!60179 Int) Bool)

(assert (=> d!1668050 (= (inv!79769 setElem!31923) (forall!14125 (exprs!4493 setElem!31923) lambda!258044))))

(declare-fun bs!1203296 () Bool)

(assert (= bs!1203296 d!1668050))

(declare-fun m!6221084 () Bool)

(assert (=> bs!1203296 m!6221084))

(assert (=> setNonEmpty!31924 d!1668050))

(declare-fun d!1668074 () Bool)

(declare-fun c!889698 () Bool)

(assert (=> d!1668074 (= c!889698 ((_ is Cons!60056) testedP!294))))

(declare-fun e!3221075 () (InoxSet Context!7986))

(assert (=> d!1668074 (= (derivationZipper!232 baseZ!62 testedP!294) e!3221075)))

(declare-fun b!5169496 () Bool)

(assert (=> b!5169496 (= e!3221075 (derivationZipper!232 (derivationStepZipper!963 baseZ!62 (h!66504 testedP!294)) (t!373333 testedP!294)))))

(declare-fun b!5169497 () Bool)

(assert (=> b!5169497 (= e!3221075 baseZ!62)))

(assert (= (and d!1668074 c!889698) b!5169496))

(assert (= (and d!1668074 (not c!889698)) b!5169497))

(declare-fun m!6221086 () Bool)

(assert (=> b!5169496 m!6221086))

(assert (=> b!5169496 m!6221086))

(declare-fun m!6221088 () Bool)

(assert (=> b!5169496 m!6221088))

(assert (=> b!5169418 d!1668074))

(declare-fun d!1668076 () Bool)

(declare-fun lt!2127300 () Int)

(assert (=> d!1668076 (>= lt!2127300 0)))

(declare-fun e!3221078 () Int)

(assert (=> d!1668076 (= lt!2127300 e!3221078)))

(declare-fun c!889701 () Bool)

(assert (=> d!1668076 (= c!889701 ((_ is Nil!60056) input!5817))))

(assert (=> d!1668076 (= (size!39645 input!5817) lt!2127300)))

(declare-fun b!5169502 () Bool)

(assert (=> b!5169502 (= e!3221078 0)))

(declare-fun b!5169503 () Bool)

(assert (=> b!5169503 (= e!3221078 (+ 1 (size!39645 (t!373333 input!5817))))))

(assert (= (and d!1668076 c!889701) b!5169502))

(assert (= (and d!1668076 (not c!889701)) b!5169503))

(declare-fun m!6221090 () Bool)

(assert (=> b!5169503 m!6221090))

(assert (=> b!5169419 d!1668076))

(declare-fun d!1668078 () Bool)

(declare-fun lt!2127303 () List!60180)

(assert (=> d!1668078 (= (++!13133 testedP!294 lt!2127303) input!5817)))

(declare-fun e!3221081 () List!60180)

(assert (=> d!1668078 (= lt!2127303 e!3221081)))

(declare-fun c!889704 () Bool)

(assert (=> d!1668078 (= c!889704 ((_ is Cons!60056) testedP!294))))

(assert (=> d!1668078 (>= (size!39645 input!5817) (size!39645 testedP!294))))

(assert (=> d!1668078 (= (getSuffix!3392 input!5817 testedP!294) lt!2127303)))

(declare-fun b!5169508 () Bool)

(assert (=> b!5169508 (= e!3221081 (getSuffix!3392 (tail!10142 input!5817) (t!373333 testedP!294)))))

(declare-fun b!5169509 () Bool)

(assert (=> b!5169509 (= e!3221081 input!5817)))

(assert (= (and d!1668078 c!889704) b!5169508))

(assert (= (and d!1668078 (not c!889704)) b!5169509))

(declare-fun m!6221092 () Bool)

(assert (=> d!1668078 m!6221092))

(assert (=> d!1668078 m!6221004))

(assert (=> d!1668078 m!6221002))

(assert (=> b!5169508 m!6221028))

(assert (=> b!5169508 m!6221028))

(declare-fun m!6221094 () Bool)

(assert (=> b!5169508 m!6221094))

(assert (=> b!5169419 d!1668078))

(declare-fun b!5169606 () Bool)

(declare-fun e!3221140 () Bool)

(declare-fun lt!2127424 () tuple2!63772)

(assert (=> b!5169606 (= e!3221140 (>= (size!39645 (_1!35189 lt!2127424)) (size!39645 testedP!294)))))

(declare-fun b!5169607 () Bool)

(declare-fun e!3221136 () Unit!151618)

(declare-fun Unit!151626 () Unit!151618)

(assert (=> b!5169607 (= e!3221136 Unit!151626)))

(declare-fun lt!2127421 () Unit!151618)

(declare-fun call!362813 () Unit!151618)

(assert (=> b!5169607 (= lt!2127421 call!362813)))

(declare-fun call!362816 () Bool)

(assert (=> b!5169607 call!362816))

(declare-fun lt!2127442 () Unit!151618)

(assert (=> b!5169607 (= lt!2127442 lt!2127421)))

(declare-fun lt!2127426 () Unit!151618)

(declare-fun call!362819 () Unit!151618)

(assert (=> b!5169607 (= lt!2127426 call!362819)))

(assert (=> b!5169607 (= input!5817 testedP!294)))

(declare-fun lt!2127440 () Unit!151618)

(assert (=> b!5169607 (= lt!2127440 lt!2127426)))

(assert (=> b!5169607 false))

(declare-fun b!5169608 () Bool)

(declare-fun e!3221138 () tuple2!63772)

(assert (=> b!5169608 (= e!3221138 (tuple2!63773 testedP!294 Nil!60056))))

(declare-fun call!362812 () (InoxSet Context!7986))

(declare-fun lt!2127437 () List!60180)

(declare-fun call!362818 () tuple2!63772)

(declare-fun bm!362807 () Bool)

(declare-fun call!362814 () List!60180)

(assert (=> bm!362807 (= call!362818 (findLongestMatchInnerZipper!267 call!362812 lt!2127437 (+ lt!2127211 1) call!362814 input!5817 lt!2127207))))

(declare-fun b!5169609 () Bool)

(declare-fun e!3221142 () tuple2!63772)

(declare-fun e!3221141 () tuple2!63772)

(assert (=> b!5169609 (= e!3221142 e!3221141)))

(declare-fun lt!2127439 () tuple2!63772)

(assert (=> b!5169609 (= lt!2127439 call!362818)))

(declare-fun c!889746 () Bool)

(assert (=> b!5169609 (= c!889746 (isEmpty!32153 (_1!35189 lt!2127439)))))

(declare-fun b!5169610 () Bool)

(assert (=> b!5169610 (= e!3221141 (tuple2!63773 testedP!294 lt!2127213))))

(declare-fun bm!362808 () Bool)

(assert (=> bm!362808 (= call!362816 (isPrefix!5742 input!5817 input!5817))))

(declare-fun b!5169611 () Bool)

(assert (=> b!5169611 (= e!3221141 lt!2127439)))

(declare-fun b!5169612 () Bool)

(declare-fun c!889745 () Bool)

(declare-fun call!362817 () Bool)

(assert (=> b!5169612 (= c!889745 call!362817)))

(declare-fun lt!2127427 () Unit!151618)

(declare-fun lt!2127418 () Unit!151618)

(assert (=> b!5169612 (= lt!2127427 lt!2127418)))

(assert (=> b!5169612 (= input!5817 testedP!294)))

(assert (=> b!5169612 (= lt!2127418 call!362819)))

(declare-fun lt!2127422 () Unit!151618)

(declare-fun lt!2127428 () Unit!151618)

(assert (=> b!5169612 (= lt!2127422 lt!2127428)))

(assert (=> b!5169612 call!362816))

(assert (=> b!5169612 (= lt!2127428 call!362813)))

(declare-fun e!3221143 () tuple2!63772)

(assert (=> b!5169612 (= e!3221143 e!3221138)))

(declare-fun b!5169613 () Bool)

(declare-fun c!889742 () Bool)

(assert (=> b!5169613 (= c!889742 call!362817)))

(declare-fun lt!2127420 () Unit!151618)

(declare-fun lt!2127425 () Unit!151618)

(assert (=> b!5169613 (= lt!2127420 lt!2127425)))

(declare-fun lt!2127443 () C!29488)

(declare-fun lt!2127434 () List!60180)

(assert (=> b!5169613 (= (++!13133 (++!13133 testedP!294 (Cons!60056 lt!2127443 Nil!60056)) lt!2127434) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1572 (List!60180 C!29488 List!60180 List!60180) Unit!151618)

(assert (=> b!5169613 (= lt!2127425 (lemmaMoveElementToOtherListKeepsConcatEq!1572 testedP!294 lt!2127443 lt!2127434 input!5817))))

(assert (=> b!5169613 (= lt!2127434 (tail!10142 lt!2127213))))

(assert (=> b!5169613 (= lt!2127443 (head!11033 lt!2127213))))

(declare-fun lt!2127431 () Unit!151618)

(declare-fun lt!2127419 () Unit!151618)

(assert (=> b!5169613 (= lt!2127431 lt!2127419)))

(assert (=> b!5169613 (isPrefix!5742 (++!13133 testedP!294 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056)) input!5817)))

(assert (=> b!5169613 (= lt!2127419 (lemmaAddHeadSuffixToPrefixStillPrefix!1055 testedP!294 input!5817))))

(assert (=> b!5169613 (= lt!2127437 (++!13133 testedP!294 (Cons!60056 (head!11033 lt!2127213) Nil!60056)))))

(declare-fun lt!2127430 () Unit!151618)

(assert (=> b!5169613 (= lt!2127430 e!3221136)))

(declare-fun c!889744 () Bool)

(assert (=> b!5169613 (= c!889744 (= (size!39645 testedP!294) (size!39645 input!5817)))))

(declare-fun lt!2127441 () Unit!151618)

(declare-fun lt!2127423 () Unit!151618)

(assert (=> b!5169613 (= lt!2127441 lt!2127423)))

(assert (=> b!5169613 (<= (size!39645 testedP!294) (size!39645 input!5817))))

(assert (=> b!5169613 (= lt!2127423 (lemmaIsPrefixThenSmallerEqSize!905 testedP!294 input!5817))))

(assert (=> b!5169613 (= e!3221143 e!3221142)))

(declare-fun d!1668080 () Bool)

(declare-fun e!3221137 () Bool)

(assert (=> d!1668080 e!3221137))

(declare-fun res!2197323 () Bool)

(assert (=> d!1668080 (=> (not res!2197323) (not e!3221137))))

(assert (=> d!1668080 (= res!2197323 (= (++!13133 (_1!35189 lt!2127424) (_2!35189 lt!2127424)) input!5817))))

(declare-fun e!3221139 () tuple2!63772)

(assert (=> d!1668080 (= lt!2127424 e!3221139)))

(declare-fun c!889741 () Bool)

(declare-fun lostCauseZipper!1324 ((InoxSet Context!7986)) Bool)

(assert (=> d!1668080 (= c!889741 (lostCauseZipper!1324 z!4581))))

(declare-fun lt!2127436 () Unit!151618)

(declare-fun Unit!151629 () Unit!151618)

(assert (=> d!1668080 (= lt!2127436 Unit!151629)))

(assert (=> d!1668080 (= (getSuffix!3392 input!5817 testedP!294) lt!2127213)))

(declare-fun lt!2127429 () Unit!151618)

(declare-fun lt!2127435 () Unit!151618)

(assert (=> d!1668080 (= lt!2127429 lt!2127435)))

(declare-fun lt!2127433 () List!60180)

(assert (=> d!1668080 (= lt!2127213 lt!2127433)))

(declare-fun lemmaSamePrefixThenSameSuffix!2691 (List!60180 List!60180 List!60180 List!60180 List!60180) Unit!151618)

(assert (=> d!1668080 (= lt!2127435 (lemmaSamePrefixThenSameSuffix!2691 testedP!294 lt!2127213 testedP!294 lt!2127433 input!5817))))

(assert (=> d!1668080 (= lt!2127433 (getSuffix!3392 input!5817 testedP!294))))

(declare-fun lt!2127432 () Unit!151618)

(declare-fun lt!2127438 () Unit!151618)

(assert (=> d!1668080 (= lt!2127432 lt!2127438)))

(assert (=> d!1668080 (isPrefix!5742 testedP!294 (++!13133 testedP!294 lt!2127213))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3585 (List!60180 List!60180) Unit!151618)

(assert (=> d!1668080 (= lt!2127438 (lemmaConcatTwoListThenFirstIsPrefix!3585 testedP!294 lt!2127213))))

(assert (=> d!1668080 (= (++!13133 testedP!294 lt!2127213) input!5817)))

(assert (=> d!1668080 (= (findLongestMatchInnerZipper!267 z!4581 testedP!294 lt!2127211 lt!2127213 input!5817 lt!2127207) lt!2127424)))

(declare-fun b!5169614 () Bool)

(assert (=> b!5169614 (= e!3221142 call!362818)))

(declare-fun bm!362809 () Bool)

(declare-fun call!362815 () C!29488)

(assert (=> bm!362809 (= call!362815 (head!11033 lt!2127213))))

(declare-fun b!5169615 () Bool)

(assert (=> b!5169615 (= e!3221138 (tuple2!63773 Nil!60056 input!5817))))

(declare-fun bm!362810 () Bool)

(assert (=> bm!362810 (= call!362812 (derivationStepZipper!963 z!4581 call!362815))))

(declare-fun b!5169616 () Bool)

(assert (=> b!5169616 (= e!3221139 e!3221143)))

(declare-fun c!889743 () Bool)

(assert (=> b!5169616 (= c!889743 (= lt!2127211 lt!2127207))))

(declare-fun b!5169617 () Bool)

(assert (=> b!5169617 (= e!3221139 (tuple2!63773 Nil!60056 input!5817))))

(declare-fun bm!362811 () Bool)

(assert (=> bm!362811 (= call!362814 (tail!10142 lt!2127213))))

(declare-fun bm!362812 () Bool)

(assert (=> bm!362812 (= call!362819 (lemmaIsPrefixSameLengthThenSameList!1391 input!5817 testedP!294 input!5817))))

(declare-fun b!5169618 () Bool)

(declare-fun Unit!151630 () Unit!151618)

(assert (=> b!5169618 (= e!3221136 Unit!151630)))

(declare-fun bm!362813 () Bool)

(assert (=> bm!362813 (= call!362817 (nullableZipper!1155 z!4581))))

(declare-fun b!5169619 () Bool)

(assert (=> b!5169619 (= e!3221137 e!3221140)))

(declare-fun res!2197324 () Bool)

(assert (=> b!5169619 (=> res!2197324 e!3221140)))

(assert (=> b!5169619 (= res!2197324 (isEmpty!32153 (_1!35189 lt!2127424)))))

(declare-fun bm!362814 () Bool)

(assert (=> bm!362814 (= call!362813 (lemmaIsPrefixRefl!3749 input!5817 input!5817))))

(assert (= (and d!1668080 c!889741) b!5169617))

(assert (= (and d!1668080 (not c!889741)) b!5169616))

(assert (= (and b!5169616 c!889743) b!5169612))

(assert (= (and b!5169616 (not c!889743)) b!5169613))

(assert (= (and b!5169612 c!889745) b!5169608))

(assert (= (and b!5169612 (not c!889745)) b!5169615))

(assert (= (and b!5169613 c!889744) b!5169607))

(assert (= (and b!5169613 (not c!889744)) b!5169618))

(assert (= (and b!5169613 c!889742) b!5169609))

(assert (= (and b!5169613 (not c!889742)) b!5169614))

(assert (= (and b!5169609 c!889746) b!5169610))

(assert (= (and b!5169609 (not c!889746)) b!5169611))

(assert (= (or b!5169609 b!5169614) bm!362811))

(assert (= (or b!5169609 b!5169614) bm!362809))

(assert (= (or b!5169609 b!5169614) bm!362810))

(assert (= (or b!5169609 b!5169614) bm!362807))

(assert (= (or b!5169612 b!5169607) bm!362814))

(assert (= (or b!5169612 b!5169613) bm!362813))

(assert (= (or b!5169612 b!5169607) bm!362808))

(assert (= (or b!5169612 b!5169607) bm!362812))

(assert (= (and d!1668080 res!2197323) b!5169619))

(assert (= (and b!5169619 (not res!2197324)) b!5169606))

(assert (=> b!5169613 m!6221018))

(declare-fun m!6221198 () Bool)

(assert (=> b!5169613 m!6221198))

(declare-fun m!6221200 () Bool)

(assert (=> b!5169613 m!6221200))

(assert (=> b!5169613 m!6221198))

(declare-fun m!6221202 () Bool)

(assert (=> b!5169613 m!6221202))

(declare-fun m!6221204 () Bool)

(assert (=> b!5169613 m!6221204))

(declare-fun m!6221206 () Bool)

(assert (=> b!5169613 m!6221206))

(assert (=> b!5169613 m!6221008))

(declare-fun m!6221208 () Bool)

(assert (=> b!5169613 m!6221208))

(assert (=> b!5169613 m!6220984))

(assert (=> b!5169613 m!6221008))

(assert (=> b!5169613 m!6221004))

(assert (=> b!5169613 m!6221002))

(assert (=> b!5169613 m!6220996))

(assert (=> b!5169613 m!6221206))

(declare-fun m!6221210 () Bool)

(assert (=> b!5169613 m!6221210))

(assert (=> b!5169613 m!6221014))

(declare-fun m!6221212 () Bool)

(assert (=> bm!362807 m!6221212))

(declare-fun m!6221214 () Bool)

(assert (=> bm!362810 m!6221214))

(assert (=> bm!362812 m!6220990))

(declare-fun m!6221216 () Bool)

(assert (=> b!5169606 m!6221216))

(assert (=> b!5169606 m!6221002))

(assert (=> bm!362808 m!6220988))

(declare-fun m!6221218 () Bool)

(assert (=> b!5169619 m!6221218))

(assert (=> bm!362809 m!6221018))

(declare-fun m!6221220 () Bool)

(assert (=> d!1668080 m!6221220))

(declare-fun m!6221222 () Bool)

(assert (=> d!1668080 m!6221222))

(assert (=> d!1668080 m!6221220))

(declare-fun m!6221224 () Bool)

(assert (=> d!1668080 m!6221224))

(declare-fun m!6221226 () Bool)

(assert (=> d!1668080 m!6221226))

(declare-fun m!6221228 () Bool)

(assert (=> d!1668080 m!6221228))

(assert (=> d!1668080 m!6221008))

(declare-fun m!6221230 () Bool)

(assert (=> d!1668080 m!6221230))

(declare-fun m!6221232 () Bool)

(assert (=> b!5169609 m!6221232))

(assert (=> bm!362811 m!6220996))

(assert (=> bm!362814 m!6220986))

(assert (=> bm!362813 m!6221020))

(assert (=> b!5169419 d!1668080))

(declare-fun d!1668102 () Bool)

(declare-fun lt!2127444 () Int)

(assert (=> d!1668102 (>= lt!2127444 0)))

(declare-fun e!3221144 () Int)

(assert (=> d!1668102 (= lt!2127444 e!3221144)))

(declare-fun c!889747 () Bool)

(assert (=> d!1668102 (= c!889747 ((_ is Nil!60056) testedP!294))))

(assert (=> d!1668102 (= (size!39645 testedP!294) lt!2127444)))

(declare-fun b!5169620 () Bool)

(assert (=> b!5169620 (= e!3221144 0)))

(declare-fun b!5169621 () Bool)

(assert (=> b!5169621 (= e!3221144 (+ 1 (size!39645 (t!373333 testedP!294))))))

(assert (= (and d!1668102 c!889747) b!5169620))

(assert (= (and d!1668102 (not c!889747)) b!5169621))

(declare-fun m!6221234 () Bool)

(assert (=> b!5169621 m!6221234))

(assert (=> b!5169419 d!1668102))

(declare-fun d!1668104 () Bool)

(assert (=> d!1668104 (= (isEmpty!32153 (_1!35189 (findLongestMatchInnerZipper!267 z!4581 testedP!294 lt!2127211 lt!2127213 input!5817 lt!2127207))) ((_ is Nil!60056) (_1!35189 (findLongestMatchInnerZipper!267 z!4581 testedP!294 lt!2127211 lt!2127213 input!5817 lt!2127207))))))

(assert (=> b!5169419 d!1668104))

(declare-fun b!5169625 () Bool)

(declare-fun e!3221145 () Bool)

(assert (=> b!5169625 (= e!3221145 (>= (size!39645 input!5817) (size!39645 lt!2127215)))))

(declare-fun b!5169624 () Bool)

(declare-fun e!3221147 () Bool)

(assert (=> b!5169624 (= e!3221147 (isPrefix!5742 (tail!10142 lt!2127215) (tail!10142 input!5817)))))

(declare-fun b!5169623 () Bool)

(declare-fun res!2197326 () Bool)

(assert (=> b!5169623 (=> (not res!2197326) (not e!3221147))))

(assert (=> b!5169623 (= res!2197326 (= (head!11033 lt!2127215) (head!11033 input!5817)))))

(declare-fun b!5169622 () Bool)

(declare-fun e!3221146 () Bool)

(assert (=> b!5169622 (= e!3221146 e!3221147)))

(declare-fun res!2197325 () Bool)

(assert (=> b!5169622 (=> (not res!2197325) (not e!3221147))))

(assert (=> b!5169622 (= res!2197325 (not ((_ is Nil!60056) input!5817)))))

(declare-fun d!1668106 () Bool)

(assert (=> d!1668106 e!3221145))

(declare-fun res!2197328 () Bool)

(assert (=> d!1668106 (=> res!2197328 e!3221145)))

(declare-fun lt!2127445 () Bool)

(assert (=> d!1668106 (= res!2197328 (not lt!2127445))))

(assert (=> d!1668106 (= lt!2127445 e!3221146)))

(declare-fun res!2197327 () Bool)

(assert (=> d!1668106 (=> res!2197327 e!3221146)))

(assert (=> d!1668106 (= res!2197327 ((_ is Nil!60056) lt!2127215))))

(assert (=> d!1668106 (= (isPrefix!5742 lt!2127215 input!5817) lt!2127445)))

(assert (= (and d!1668106 (not res!2197327)) b!5169622))

(assert (= (and b!5169622 res!2197325) b!5169623))

(assert (= (and b!5169623 res!2197326) b!5169624))

(assert (= (and d!1668106 (not res!2197328)) b!5169625))

(assert (=> b!5169625 m!6221004))

(declare-fun m!6221236 () Bool)

(assert (=> b!5169625 m!6221236))

(declare-fun m!6221238 () Bool)

(assert (=> b!5169624 m!6221238))

(assert (=> b!5169624 m!6221028))

(assert (=> b!5169624 m!6221238))

(assert (=> b!5169624 m!6221028))

(declare-fun m!6221240 () Bool)

(assert (=> b!5169624 m!6221240))

(declare-fun m!6221242 () Bool)

(assert (=> b!5169623 m!6221242))

(assert (=> b!5169623 m!6221032))

(assert (=> b!5169407 d!1668106))

(declare-fun d!1668108 () Bool)

(assert (=> d!1668108 (= (head!11033 lt!2127213) (h!66504 lt!2127213))))

(assert (=> b!5169407 d!1668108))

(declare-fun d!1668110 () Bool)

(assert (=> d!1668110 (isPrefix!5742 (++!13133 testedP!294 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056)) input!5817)))

(declare-fun lt!2127448 () Unit!151618)

(declare-fun choose!38284 (List!60180 List!60180) Unit!151618)

(assert (=> d!1668110 (= lt!2127448 (choose!38284 testedP!294 input!5817))))

(assert (=> d!1668110 (isPrefix!5742 testedP!294 input!5817)))

(assert (=> d!1668110 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1055 testedP!294 input!5817) lt!2127448)))

(declare-fun bs!1203301 () Bool)

(assert (= bs!1203301 d!1668110))

(assert (=> bs!1203301 m!6221198))

(assert (=> bs!1203301 m!6221200))

(declare-fun m!6221244 () Bool)

(assert (=> bs!1203301 m!6221244))

(assert (=> bs!1203301 m!6221008))

(assert (=> bs!1203301 m!6221208))

(assert (=> bs!1203301 m!6221198))

(assert (=> bs!1203301 m!6220980))

(assert (=> bs!1203301 m!6221008))

(assert (=> b!5169407 d!1668110))

(declare-fun d!1668112 () Bool)

(declare-fun lambda!258051 () Int)

(declare-fun exists!1908 ((InoxSet Context!7986) Int) Bool)

(assert (=> d!1668112 (= (nullableZipper!1155 z!4581) (exists!1908 z!4581 lambda!258051))))

(declare-fun bs!1203302 () Bool)

(assert (= bs!1203302 d!1668112))

(declare-fun m!6221246 () Bool)

(assert (=> bs!1203302 m!6221246))

(assert (=> b!5169407 d!1668112))

(declare-fun b!5169635 () Bool)

(declare-fun e!3221153 () List!60180)

(assert (=> b!5169635 (= e!3221153 (Cons!60056 (h!66504 testedP!294) (++!13133 (t!373333 testedP!294) (Cons!60056 lt!2127210 Nil!60056))))))

(declare-fun lt!2127451 () List!60180)

(declare-fun b!5169637 () Bool)

(declare-fun e!3221152 () Bool)

(assert (=> b!5169637 (= e!3221152 (or (not (= (Cons!60056 lt!2127210 Nil!60056) Nil!60056)) (= lt!2127451 testedP!294)))))

(declare-fun b!5169636 () Bool)

(declare-fun res!2197333 () Bool)

(assert (=> b!5169636 (=> (not res!2197333) (not e!3221152))))

(assert (=> b!5169636 (= res!2197333 (= (size!39645 lt!2127451) (+ (size!39645 testedP!294) (size!39645 (Cons!60056 lt!2127210 Nil!60056)))))))

(declare-fun b!5169634 () Bool)

(assert (=> b!5169634 (= e!3221153 (Cons!60056 lt!2127210 Nil!60056))))

(declare-fun d!1668114 () Bool)

(assert (=> d!1668114 e!3221152))

(declare-fun res!2197334 () Bool)

(assert (=> d!1668114 (=> (not res!2197334) (not e!3221152))))

(declare-fun content!10643 (List!60180) (InoxSet C!29488))

(assert (=> d!1668114 (= res!2197334 (= (content!10643 lt!2127451) ((_ map or) (content!10643 testedP!294) (content!10643 (Cons!60056 lt!2127210 Nil!60056)))))))

(assert (=> d!1668114 (= lt!2127451 e!3221153)))

(declare-fun c!889752 () Bool)

(assert (=> d!1668114 (= c!889752 ((_ is Nil!60056) testedP!294))))

(assert (=> d!1668114 (= (++!13133 testedP!294 (Cons!60056 lt!2127210 Nil!60056)) lt!2127451)))

(assert (= (and d!1668114 c!889752) b!5169634))

(assert (= (and d!1668114 (not c!889752)) b!5169635))

(assert (= (and d!1668114 res!2197334) b!5169636))

(assert (= (and b!5169636 res!2197333) b!5169637))

(declare-fun m!6221248 () Bool)

(assert (=> b!5169635 m!6221248))

(declare-fun m!6221250 () Bool)

(assert (=> b!5169636 m!6221250))

(assert (=> b!5169636 m!6221002))

(declare-fun m!6221252 () Bool)

(assert (=> b!5169636 m!6221252))

(declare-fun m!6221254 () Bool)

(assert (=> d!1668114 m!6221254))

(declare-fun m!6221256 () Bool)

(assert (=> d!1668114 m!6221256))

(declare-fun m!6221258 () Bool)

(assert (=> d!1668114 m!6221258))

(assert (=> b!5169407 d!1668114))

(declare-fun b!5169641 () Bool)

(declare-fun e!3221154 () Bool)

(assert (=> b!5169641 (= e!3221154 (>= (size!39645 input!5817) (size!39645 testedP!294)))))

(declare-fun b!5169640 () Bool)

(declare-fun e!3221156 () Bool)

(assert (=> b!5169640 (= e!3221156 (isPrefix!5742 (tail!10142 testedP!294) (tail!10142 input!5817)))))

(declare-fun b!5169639 () Bool)

(declare-fun res!2197336 () Bool)

(assert (=> b!5169639 (=> (not res!2197336) (not e!3221156))))

(assert (=> b!5169639 (= res!2197336 (= (head!11033 testedP!294) (head!11033 input!5817)))))

(declare-fun b!5169638 () Bool)

(declare-fun e!3221155 () Bool)

(assert (=> b!5169638 (= e!3221155 e!3221156)))

(declare-fun res!2197335 () Bool)

(assert (=> b!5169638 (=> (not res!2197335) (not e!3221156))))

(assert (=> b!5169638 (= res!2197335 (not ((_ is Nil!60056) input!5817)))))

(declare-fun d!1668116 () Bool)

(assert (=> d!1668116 e!3221154))

(declare-fun res!2197338 () Bool)

(assert (=> d!1668116 (=> res!2197338 e!3221154)))

(declare-fun lt!2127452 () Bool)

(assert (=> d!1668116 (= res!2197338 (not lt!2127452))))

(assert (=> d!1668116 (= lt!2127452 e!3221155)))

(declare-fun res!2197337 () Bool)

(assert (=> d!1668116 (=> res!2197337 e!3221155)))

(assert (=> d!1668116 (= res!2197337 ((_ is Nil!60056) testedP!294))))

(assert (=> d!1668116 (= (isPrefix!5742 testedP!294 input!5817) lt!2127452)))

(assert (= (and d!1668116 (not res!2197337)) b!5169638))

(assert (= (and b!5169638 res!2197335) b!5169639))

(assert (= (and b!5169639 res!2197336) b!5169640))

(assert (= (and d!1668116 (not res!2197338)) b!5169641))

(assert (=> b!5169641 m!6221004))

(assert (=> b!5169641 m!6221002))

(declare-fun m!6221260 () Bool)

(assert (=> b!5169640 m!6221260))

(assert (=> b!5169640 m!6221028))

(assert (=> b!5169640 m!6221260))

(assert (=> b!5169640 m!6221028))

(declare-fun m!6221262 () Bool)

(assert (=> b!5169640 m!6221262))

(declare-fun m!6221264 () Bool)

(assert (=> b!5169639 m!6221264))

(assert (=> b!5169639 m!6221032))

(assert (=> start!547088 d!1668116))

(declare-fun bs!1203303 () Bool)

(declare-fun d!1668118 () Bool)

(assert (= bs!1203303 (and d!1668118 d!1668050)))

(declare-fun lambda!258052 () Int)

(assert (=> bs!1203303 (= lambda!258052 lambda!258044)))

(assert (=> d!1668118 (= (inv!79769 setElem!31924) (forall!14125 (exprs!4493 setElem!31924) lambda!258052))))

(declare-fun bs!1203304 () Bool)

(assert (= bs!1203304 d!1668118))

(declare-fun m!6221266 () Bool)

(assert (=> bs!1203304 m!6221266))

(assert (=> setNonEmpty!31923 d!1668118))

(declare-fun d!1668120 () Bool)

(assert (=> d!1668120 (= (isEmpty!32153 (_1!35189 (findLongestMatchInnerZipper!267 (derivationStepZipper!963 z!4581 lt!2127210) lt!2127215 (+ 1 lt!2127211) (tail!10142 lt!2127213) input!5817 lt!2127207))) ((_ is Nil!60056) (_1!35189 (findLongestMatchInnerZipper!267 (derivationStepZipper!963 z!4581 lt!2127210) lt!2127215 (+ 1 lt!2127211) (tail!10142 lt!2127213) input!5817 lt!2127207))))))

(assert (=> b!5169414 d!1668120))

(declare-fun b!5169642 () Bool)

(declare-fun e!3221161 () Bool)

(declare-fun lt!2127459 () tuple2!63772)

(assert (=> b!5169642 (= e!3221161 (>= (size!39645 (_1!35189 lt!2127459)) (size!39645 lt!2127215)))))

(declare-fun b!5169643 () Bool)

(declare-fun e!3221157 () Unit!151618)

(declare-fun Unit!151631 () Unit!151618)

(assert (=> b!5169643 (= e!3221157 Unit!151631)))

(declare-fun lt!2127456 () Unit!151618)

(declare-fun call!362821 () Unit!151618)

(assert (=> b!5169643 (= lt!2127456 call!362821)))

(declare-fun call!362824 () Bool)

(assert (=> b!5169643 call!362824))

(declare-fun lt!2127477 () Unit!151618)

(assert (=> b!5169643 (= lt!2127477 lt!2127456)))

(declare-fun lt!2127461 () Unit!151618)

(declare-fun call!362827 () Unit!151618)

(assert (=> b!5169643 (= lt!2127461 call!362827)))

(assert (=> b!5169643 (= input!5817 lt!2127215)))

(declare-fun lt!2127475 () Unit!151618)

(assert (=> b!5169643 (= lt!2127475 lt!2127461)))

(assert (=> b!5169643 false))

(declare-fun b!5169644 () Bool)

(declare-fun e!3221159 () tuple2!63772)

(assert (=> b!5169644 (= e!3221159 (tuple2!63773 lt!2127215 Nil!60056))))

(declare-fun call!362820 () (InoxSet Context!7986))

(declare-fun call!362826 () tuple2!63772)

(declare-fun bm!362815 () Bool)

(declare-fun call!362822 () List!60180)

(declare-fun lt!2127472 () List!60180)

(assert (=> bm!362815 (= call!362826 (findLongestMatchInnerZipper!267 call!362820 lt!2127472 (+ 1 lt!2127211 1) call!362822 input!5817 lt!2127207))))

(declare-fun b!5169645 () Bool)

(declare-fun e!3221163 () tuple2!63772)

(declare-fun e!3221162 () tuple2!63772)

(assert (=> b!5169645 (= e!3221163 e!3221162)))

(declare-fun lt!2127474 () tuple2!63772)

(assert (=> b!5169645 (= lt!2127474 call!362826)))

(declare-fun c!889758 () Bool)

(assert (=> b!5169645 (= c!889758 (isEmpty!32153 (_1!35189 lt!2127474)))))

(declare-fun b!5169646 () Bool)

(assert (=> b!5169646 (= e!3221162 (tuple2!63773 lt!2127215 (tail!10142 lt!2127213)))))

(declare-fun bm!362816 () Bool)

(assert (=> bm!362816 (= call!362824 (isPrefix!5742 input!5817 input!5817))))

(declare-fun b!5169647 () Bool)

(assert (=> b!5169647 (= e!3221162 lt!2127474)))

(declare-fun b!5169648 () Bool)

(declare-fun c!889757 () Bool)

(declare-fun call!362825 () Bool)

(assert (=> b!5169648 (= c!889757 call!362825)))

(declare-fun lt!2127462 () Unit!151618)

(declare-fun lt!2127453 () Unit!151618)

(assert (=> b!5169648 (= lt!2127462 lt!2127453)))

(assert (=> b!5169648 (= input!5817 lt!2127215)))

(assert (=> b!5169648 (= lt!2127453 call!362827)))

(declare-fun lt!2127457 () Unit!151618)

(declare-fun lt!2127463 () Unit!151618)

(assert (=> b!5169648 (= lt!2127457 lt!2127463)))

(assert (=> b!5169648 call!362824))

(assert (=> b!5169648 (= lt!2127463 call!362821)))

(declare-fun e!3221164 () tuple2!63772)

(assert (=> b!5169648 (= e!3221164 e!3221159)))

(declare-fun b!5169649 () Bool)

(declare-fun c!889754 () Bool)

(assert (=> b!5169649 (= c!889754 call!362825)))

(declare-fun lt!2127455 () Unit!151618)

(declare-fun lt!2127460 () Unit!151618)

(assert (=> b!5169649 (= lt!2127455 lt!2127460)))

(declare-fun lt!2127478 () C!29488)

(declare-fun lt!2127469 () List!60180)

(assert (=> b!5169649 (= (++!13133 (++!13133 lt!2127215 (Cons!60056 lt!2127478 Nil!60056)) lt!2127469) input!5817)))

(assert (=> b!5169649 (= lt!2127460 (lemmaMoveElementToOtherListKeepsConcatEq!1572 lt!2127215 lt!2127478 lt!2127469 input!5817))))

(assert (=> b!5169649 (= lt!2127469 (tail!10142 (tail!10142 lt!2127213)))))

(assert (=> b!5169649 (= lt!2127478 (head!11033 (tail!10142 lt!2127213)))))

(declare-fun lt!2127466 () Unit!151618)

(declare-fun lt!2127454 () Unit!151618)

(assert (=> b!5169649 (= lt!2127466 lt!2127454)))

(assert (=> b!5169649 (isPrefix!5742 (++!13133 lt!2127215 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056)) input!5817)))

(assert (=> b!5169649 (= lt!2127454 (lemmaAddHeadSuffixToPrefixStillPrefix!1055 lt!2127215 input!5817))))

(assert (=> b!5169649 (= lt!2127472 (++!13133 lt!2127215 (Cons!60056 (head!11033 (tail!10142 lt!2127213)) Nil!60056)))))

(declare-fun lt!2127465 () Unit!151618)

(assert (=> b!5169649 (= lt!2127465 e!3221157)))

(declare-fun c!889756 () Bool)

(assert (=> b!5169649 (= c!889756 (= (size!39645 lt!2127215) (size!39645 input!5817)))))

(declare-fun lt!2127476 () Unit!151618)

(declare-fun lt!2127458 () Unit!151618)

(assert (=> b!5169649 (= lt!2127476 lt!2127458)))

(assert (=> b!5169649 (<= (size!39645 lt!2127215) (size!39645 input!5817))))

(assert (=> b!5169649 (= lt!2127458 (lemmaIsPrefixThenSmallerEqSize!905 lt!2127215 input!5817))))

(assert (=> b!5169649 (= e!3221164 e!3221163)))

(declare-fun d!1668122 () Bool)

(declare-fun e!3221158 () Bool)

(assert (=> d!1668122 e!3221158))

(declare-fun res!2197339 () Bool)

(assert (=> d!1668122 (=> (not res!2197339) (not e!3221158))))

(assert (=> d!1668122 (= res!2197339 (= (++!13133 (_1!35189 lt!2127459) (_2!35189 lt!2127459)) input!5817))))

(declare-fun e!3221160 () tuple2!63772)

(assert (=> d!1668122 (= lt!2127459 e!3221160)))

(declare-fun c!889753 () Bool)

(assert (=> d!1668122 (= c!889753 (lostCauseZipper!1324 (derivationStepZipper!963 z!4581 lt!2127210)))))

(declare-fun lt!2127471 () Unit!151618)

(declare-fun Unit!151632 () Unit!151618)

(assert (=> d!1668122 (= lt!2127471 Unit!151632)))

(assert (=> d!1668122 (= (getSuffix!3392 input!5817 lt!2127215) (tail!10142 lt!2127213))))

(declare-fun lt!2127464 () Unit!151618)

(declare-fun lt!2127470 () Unit!151618)

(assert (=> d!1668122 (= lt!2127464 lt!2127470)))

(declare-fun lt!2127468 () List!60180)

(assert (=> d!1668122 (= (tail!10142 lt!2127213) lt!2127468)))

(assert (=> d!1668122 (= lt!2127470 (lemmaSamePrefixThenSameSuffix!2691 lt!2127215 (tail!10142 lt!2127213) lt!2127215 lt!2127468 input!5817))))

(assert (=> d!1668122 (= lt!2127468 (getSuffix!3392 input!5817 lt!2127215))))

(declare-fun lt!2127467 () Unit!151618)

(declare-fun lt!2127473 () Unit!151618)

(assert (=> d!1668122 (= lt!2127467 lt!2127473)))

(assert (=> d!1668122 (isPrefix!5742 lt!2127215 (++!13133 lt!2127215 (tail!10142 lt!2127213)))))

(assert (=> d!1668122 (= lt!2127473 (lemmaConcatTwoListThenFirstIsPrefix!3585 lt!2127215 (tail!10142 lt!2127213)))))

(assert (=> d!1668122 (= (++!13133 lt!2127215 (tail!10142 lt!2127213)) input!5817)))

(assert (=> d!1668122 (= (findLongestMatchInnerZipper!267 (derivationStepZipper!963 z!4581 lt!2127210) lt!2127215 (+ 1 lt!2127211) (tail!10142 lt!2127213) input!5817 lt!2127207) lt!2127459)))

(declare-fun b!5169650 () Bool)

(assert (=> b!5169650 (= e!3221163 call!362826)))

(declare-fun bm!362817 () Bool)

(declare-fun call!362823 () C!29488)

(assert (=> bm!362817 (= call!362823 (head!11033 (tail!10142 lt!2127213)))))

(declare-fun b!5169651 () Bool)

(assert (=> b!5169651 (= e!3221159 (tuple2!63773 Nil!60056 input!5817))))

(declare-fun bm!362818 () Bool)

(assert (=> bm!362818 (= call!362820 (derivationStepZipper!963 (derivationStepZipper!963 z!4581 lt!2127210) call!362823))))

(declare-fun b!5169652 () Bool)

(assert (=> b!5169652 (= e!3221160 e!3221164)))

(declare-fun c!889755 () Bool)

(assert (=> b!5169652 (= c!889755 (= (+ 1 lt!2127211) lt!2127207))))

(declare-fun b!5169653 () Bool)

(assert (=> b!5169653 (= e!3221160 (tuple2!63773 Nil!60056 input!5817))))

(declare-fun bm!362819 () Bool)

(assert (=> bm!362819 (= call!362822 (tail!10142 (tail!10142 lt!2127213)))))

(declare-fun bm!362820 () Bool)

(assert (=> bm!362820 (= call!362827 (lemmaIsPrefixSameLengthThenSameList!1391 input!5817 lt!2127215 input!5817))))

(declare-fun b!5169654 () Bool)

(declare-fun Unit!151633 () Unit!151618)

(assert (=> b!5169654 (= e!3221157 Unit!151633)))

(declare-fun bm!362821 () Bool)

(assert (=> bm!362821 (= call!362825 (nullableZipper!1155 (derivationStepZipper!963 z!4581 lt!2127210)))))

(declare-fun b!5169655 () Bool)

(assert (=> b!5169655 (= e!3221158 e!3221161)))

(declare-fun res!2197340 () Bool)

(assert (=> b!5169655 (=> res!2197340 e!3221161)))

(assert (=> b!5169655 (= res!2197340 (isEmpty!32153 (_1!35189 lt!2127459)))))

(declare-fun bm!362822 () Bool)

(assert (=> bm!362822 (= call!362821 (lemmaIsPrefixRefl!3749 input!5817 input!5817))))

(assert (= (and d!1668122 c!889753) b!5169653))

(assert (= (and d!1668122 (not c!889753)) b!5169652))

(assert (= (and b!5169652 c!889755) b!5169648))

(assert (= (and b!5169652 (not c!889755)) b!5169649))

(assert (= (and b!5169648 c!889757) b!5169644))

(assert (= (and b!5169648 (not c!889757)) b!5169651))

(assert (= (and b!5169649 c!889756) b!5169643))

(assert (= (and b!5169649 (not c!889756)) b!5169654))

(assert (= (and b!5169649 c!889754) b!5169645))

(assert (= (and b!5169649 (not c!889754)) b!5169650))

(assert (= (and b!5169645 c!889758) b!5169646))

(assert (= (and b!5169645 (not c!889758)) b!5169647))

(assert (= (or b!5169645 b!5169650) bm!362819))

(assert (= (or b!5169645 b!5169650) bm!362817))

(assert (= (or b!5169645 b!5169650) bm!362818))

(assert (= (or b!5169645 b!5169650) bm!362815))

(assert (= (or b!5169648 b!5169643) bm!362822))

(assert (= (or b!5169648 b!5169649) bm!362821))

(assert (= (or b!5169648 b!5169643) bm!362816))

(assert (= (or b!5169648 b!5169643) bm!362820))

(assert (= (and d!1668122 res!2197339) b!5169655))

(assert (= (and b!5169655 (not res!2197340)) b!5169642))

(assert (=> b!5169649 m!6220996))

(declare-fun m!6221268 () Bool)

(assert (=> b!5169649 m!6221268))

(declare-fun m!6221270 () Bool)

(assert (=> b!5169649 m!6221270))

(declare-fun m!6221272 () Bool)

(assert (=> b!5169649 m!6221272))

(assert (=> b!5169649 m!6221270))

(declare-fun m!6221274 () Bool)

(assert (=> b!5169649 m!6221274))

(declare-fun m!6221276 () Bool)

(assert (=> b!5169649 m!6221276))

(declare-fun m!6221278 () Bool)

(assert (=> b!5169649 m!6221278))

(declare-fun m!6221280 () Bool)

(assert (=> b!5169649 m!6221280))

(declare-fun m!6221282 () Bool)

(assert (=> b!5169649 m!6221282))

(declare-fun m!6221284 () Bool)

(assert (=> b!5169649 m!6221284))

(assert (=> b!5169649 m!6221280))

(assert (=> b!5169649 m!6221004))

(assert (=> b!5169649 m!6221236))

(assert (=> b!5169649 m!6220996))

(declare-fun m!6221286 () Bool)

(assert (=> b!5169649 m!6221286))

(assert (=> b!5169649 m!6221278))

(declare-fun m!6221288 () Bool)

(assert (=> b!5169649 m!6221288))

(declare-fun m!6221290 () Bool)

(assert (=> b!5169649 m!6221290))

(declare-fun m!6221292 () Bool)

(assert (=> bm!362815 m!6221292))

(assert (=> bm!362818 m!6220994))

(declare-fun m!6221294 () Bool)

(assert (=> bm!362818 m!6221294))

(declare-fun m!6221296 () Bool)

(assert (=> bm!362820 m!6221296))

(declare-fun m!6221298 () Bool)

(assert (=> b!5169642 m!6221298))

(assert (=> b!5169642 m!6221236))

(assert (=> bm!362816 m!6220988))

(declare-fun m!6221300 () Bool)

(assert (=> b!5169655 m!6221300))

(assert (=> bm!362817 m!6220996))

(assert (=> bm!362817 m!6221268))

(declare-fun m!6221302 () Bool)

(assert (=> d!1668122 m!6221302))

(declare-fun m!6221304 () Bool)

(assert (=> d!1668122 m!6221304))

(assert (=> d!1668122 m!6220996))

(assert (=> d!1668122 m!6221302))

(assert (=> d!1668122 m!6220996))

(declare-fun m!6221306 () Bool)

(assert (=> d!1668122 m!6221306))

(assert (=> d!1668122 m!6220994))

(declare-fun m!6221308 () Bool)

(assert (=> d!1668122 m!6221308))

(declare-fun m!6221310 () Bool)

(assert (=> d!1668122 m!6221310))

(assert (=> d!1668122 m!6221280))

(assert (=> d!1668122 m!6220996))

(declare-fun m!6221312 () Bool)

(assert (=> d!1668122 m!6221312))

(declare-fun m!6221314 () Bool)

(assert (=> b!5169645 m!6221314))

(assert (=> bm!362819 m!6220996))

(assert (=> bm!362819 m!6221286))

(assert (=> bm!362822 m!6220986))

(assert (=> bm!362821 m!6220994))

(declare-fun m!6221316 () Bool)

(assert (=> bm!362821 m!6221316))

(assert (=> b!5169414 d!1668122))

(declare-fun d!1668124 () Bool)

(assert (=> d!1668124 true))

(declare-fun lambda!258055 () Int)

(declare-fun flatMap!442 ((InoxSet Context!7986) Int) (InoxSet Context!7986))

(assert (=> d!1668124 (= (derivationStepZipper!963 z!4581 lt!2127210) (flatMap!442 z!4581 lambda!258055))))

(declare-fun bs!1203305 () Bool)

(assert (= bs!1203305 d!1668124))

(declare-fun m!6221318 () Bool)

(assert (=> bs!1203305 m!6221318))

(assert (=> b!5169414 d!1668124))

(declare-fun d!1668126 () Bool)

(assert (=> d!1668126 (= (tail!10142 lt!2127213) (t!373333 lt!2127213))))

(assert (=> b!5169414 d!1668126))

(declare-fun b!5169662 () Bool)

(declare-fun e!3221167 () Bool)

(declare-fun tp!1450324 () Bool)

(declare-fun tp!1450325 () Bool)

(assert (=> b!5169662 (= e!3221167 (and tp!1450324 tp!1450325))))

(assert (=> b!5169410 (= tp!1450297 e!3221167)))

(assert (= (and b!5169410 ((_ is Cons!60055) (exprs!4493 setElem!31924))) b!5169662))

(declare-fun b!5169667 () Bool)

(declare-fun e!3221170 () Bool)

(declare-fun tp!1450328 () Bool)

(assert (=> b!5169667 (= e!3221170 (and tp_is_empty!38471 tp!1450328))))

(assert (=> b!5169409 (= tp!1450296 e!3221170)))

(assert (= (and b!5169409 ((_ is Cons!60056) (t!373333 testedP!294))) b!5169667))

(declare-fun condSetEmpty!31931 () Bool)

(assert (=> setNonEmpty!31924 (= condSetEmpty!31931 (= setRest!31924 ((as const (Array Context!7986 Bool)) false)))))

(declare-fun setRes!31931 () Bool)

(assert (=> setNonEmpty!31924 (= tp!1450295 setRes!31931)))

(declare-fun setIsEmpty!31931 () Bool)

(assert (=> setIsEmpty!31931 setRes!31931))

(declare-fun e!3221173 () Bool)

(declare-fun setElem!31931 () Context!7986)

(declare-fun tp!1450333 () Bool)

(declare-fun setNonEmpty!31931 () Bool)

(assert (=> setNonEmpty!31931 (= setRes!31931 (and tp!1450333 (inv!79769 setElem!31931) e!3221173))))

(declare-fun setRest!31931 () (InoxSet Context!7986))

(assert (=> setNonEmpty!31931 (= setRest!31924 ((_ map or) (store ((as const (Array Context!7986 Bool)) false) setElem!31931 true) setRest!31931))))

(declare-fun b!5169672 () Bool)

(declare-fun tp!1450334 () Bool)

(assert (=> b!5169672 (= e!3221173 tp!1450334)))

(assert (= (and setNonEmpty!31924 condSetEmpty!31931) setIsEmpty!31931))

(assert (= (and setNonEmpty!31924 (not condSetEmpty!31931)) setNonEmpty!31931))

(assert (= setNonEmpty!31931 b!5169672))

(declare-fun m!6221320 () Bool)

(assert (=> setNonEmpty!31931 m!6221320))

(declare-fun b!5169673 () Bool)

(declare-fun e!3221174 () Bool)

(declare-fun tp!1450335 () Bool)

(declare-fun tp!1450336 () Bool)

(assert (=> b!5169673 (= e!3221174 (and tp!1450335 tp!1450336))))

(assert (=> b!5169416 (= tp!1450299 e!3221174)))

(assert (= (and b!5169416 ((_ is Cons!60055) (exprs!4493 setElem!31923))) b!5169673))

(declare-fun condSetEmpty!31932 () Bool)

(assert (=> setNonEmpty!31923 (= condSetEmpty!31932 (= setRest!31923 ((as const (Array Context!7986 Bool)) false)))))

(declare-fun setRes!31932 () Bool)

(assert (=> setNonEmpty!31923 (= tp!1450298 setRes!31932)))

(declare-fun setIsEmpty!31932 () Bool)

(assert (=> setIsEmpty!31932 setRes!31932))

(declare-fun tp!1450337 () Bool)

(declare-fun setElem!31932 () Context!7986)

(declare-fun e!3221175 () Bool)

(declare-fun setNonEmpty!31932 () Bool)

(assert (=> setNonEmpty!31932 (= setRes!31932 (and tp!1450337 (inv!79769 setElem!31932) e!3221175))))

(declare-fun setRest!31932 () (InoxSet Context!7986))

(assert (=> setNonEmpty!31932 (= setRest!31923 ((_ map or) (store ((as const (Array Context!7986 Bool)) false) setElem!31932 true) setRest!31932))))

(declare-fun b!5169674 () Bool)

(declare-fun tp!1450338 () Bool)

(assert (=> b!5169674 (= e!3221175 tp!1450338)))

(assert (= (and setNonEmpty!31923 condSetEmpty!31932) setIsEmpty!31932))

(assert (= (and setNonEmpty!31923 (not condSetEmpty!31932)) setNonEmpty!31932))

(assert (= setNonEmpty!31932 b!5169674))

(declare-fun m!6221322 () Bool)

(assert (=> setNonEmpty!31932 m!6221322))

(declare-fun b!5169675 () Bool)

(declare-fun e!3221176 () Bool)

(declare-fun tp!1450339 () Bool)

(assert (=> b!5169675 (= e!3221176 (and tp_is_empty!38471 tp!1450339))))

(assert (=> b!5169413 (= tp!1450294 e!3221176)))

(assert (= (and b!5169413 ((_ is Cons!60056) (t!373333 input!5817))) b!5169675))

(check-sat (not b!5169655) (not b!5169431) (not b!5169621) (not d!1668122) (not d!1668042) (not b!5169508) (not bm!362822) (not bm!362817) (not bm!362808) (not bm!362811) (not d!1668040) (not b!5169672) (not d!1668118) (not b!5169503) (not b!5169635) (not b!5169623) (not b!5169609) (not bm!362810) (not setNonEmpty!31931) (not b!5169662) (not b!5169430) (not bm!362815) (not b!5169613) (not b!5169649) (not b!5169674) (not bm!362819) (not b!5169496) (not bm!362809) (not setNonEmpty!31932) tp_is_empty!38471 (not b!5169640) (not b!5169673) (not b!5169625) (not bm!362816) (not b!5169641) (not d!1668048) (not b!5169645) (not bm!362807) (not b!5169675) (not d!1668124) (not bm!362813) (not b!5169619) (not d!1668112) (not d!1668050) (not d!1668114) (not bm!362812) (not bm!362820) (not bm!362818) (not b!5169639) (not b!5169606) (not b!5169642) (not b!5169624) (not d!1668110) (not bm!362821) (not b!5169667) (not d!1668080) (not b!5169636) (not b!5169429) (not d!1668078) (not bm!362814))
(check-sat)
(get-model)

(declare-fun d!1668160 () Bool)

(assert (=> d!1668160 (= input!5817 testedP!294)))

(assert (=> d!1668160 true))

(declare-fun _$60!952 () Unit!151618)

(assert (=> d!1668160 (= (choose!38283 input!5817 testedP!294 input!5817) _$60!952)))

(assert (=> d!1668048 d!1668160))

(assert (=> d!1668048 d!1668046))

(declare-fun b!5169711 () Bool)

(declare-fun e!3221195 () Bool)

(assert (=> b!5169711 (= e!3221195 (>= (size!39645 (tail!10142 input!5817)) (size!39645 (tail!10142 testedP!294))))))

(declare-fun b!5169710 () Bool)

(declare-fun e!3221197 () Bool)

(assert (=> b!5169710 (= e!3221197 (isPrefix!5742 (tail!10142 (tail!10142 testedP!294)) (tail!10142 (tail!10142 input!5817))))))

(declare-fun b!5169709 () Bool)

(declare-fun res!2197360 () Bool)

(assert (=> b!5169709 (=> (not res!2197360) (not e!3221197))))

(assert (=> b!5169709 (= res!2197360 (= (head!11033 (tail!10142 testedP!294)) (head!11033 (tail!10142 input!5817))))))

(declare-fun b!5169708 () Bool)

(declare-fun e!3221196 () Bool)

(assert (=> b!5169708 (= e!3221196 e!3221197)))

(declare-fun res!2197359 () Bool)

(assert (=> b!5169708 (=> (not res!2197359) (not e!3221197))))

(assert (=> b!5169708 (= res!2197359 (not ((_ is Nil!60056) (tail!10142 input!5817))))))

(declare-fun d!1668170 () Bool)

(assert (=> d!1668170 e!3221195))

(declare-fun res!2197362 () Bool)

(assert (=> d!1668170 (=> res!2197362 e!3221195)))

(declare-fun lt!2127493 () Bool)

(assert (=> d!1668170 (= res!2197362 (not lt!2127493))))

(assert (=> d!1668170 (= lt!2127493 e!3221196)))

(declare-fun res!2197361 () Bool)

(assert (=> d!1668170 (=> res!2197361 e!3221196)))

(assert (=> d!1668170 (= res!2197361 ((_ is Nil!60056) (tail!10142 testedP!294)))))

(assert (=> d!1668170 (= (isPrefix!5742 (tail!10142 testedP!294) (tail!10142 input!5817)) lt!2127493)))

(assert (= (and d!1668170 (not res!2197361)) b!5169708))

(assert (= (and b!5169708 res!2197359) b!5169709))

(assert (= (and b!5169709 res!2197360) b!5169710))

(assert (= (and d!1668170 (not res!2197362)) b!5169711))

(assert (=> b!5169711 m!6221028))

(declare-fun m!6221414 () Bool)

(assert (=> b!5169711 m!6221414))

(assert (=> b!5169711 m!6221260))

(declare-fun m!6221416 () Bool)

(assert (=> b!5169711 m!6221416))

(assert (=> b!5169710 m!6221260))

(declare-fun m!6221418 () Bool)

(assert (=> b!5169710 m!6221418))

(assert (=> b!5169710 m!6221028))

(declare-fun m!6221420 () Bool)

(assert (=> b!5169710 m!6221420))

(assert (=> b!5169710 m!6221418))

(assert (=> b!5169710 m!6221420))

(declare-fun m!6221424 () Bool)

(assert (=> b!5169710 m!6221424))

(assert (=> b!5169709 m!6221260))

(declare-fun m!6221426 () Bool)

(assert (=> b!5169709 m!6221426))

(assert (=> b!5169709 m!6221028))

(declare-fun m!6221428 () Bool)

(assert (=> b!5169709 m!6221428))

(assert (=> b!5169640 d!1668170))

(declare-fun d!1668174 () Bool)

(assert (=> d!1668174 (= (tail!10142 testedP!294) (t!373333 testedP!294))))

(assert (=> b!5169640 d!1668174))

(declare-fun d!1668180 () Bool)

(assert (=> d!1668180 (= (tail!10142 input!5817) (t!373333 input!5817))))

(assert (=> b!5169640 d!1668180))

(declare-fun b!5169714 () Bool)

(declare-fun e!3221203 () Bool)

(declare-fun lt!2127501 () tuple2!63772)

(assert (=> b!5169714 (= e!3221203 (>= (size!39645 (_1!35189 lt!2127501)) (size!39645 lt!2127437)))))

(declare-fun b!5169715 () Bool)

(declare-fun e!3221199 () Unit!151618)

(declare-fun Unit!151634 () Unit!151618)

(assert (=> b!5169715 (= e!3221199 Unit!151634)))

(declare-fun lt!2127498 () Unit!151618)

(declare-fun call!362829 () Unit!151618)

(assert (=> b!5169715 (= lt!2127498 call!362829)))

(declare-fun call!362832 () Bool)

(assert (=> b!5169715 call!362832))

(declare-fun lt!2127519 () Unit!151618)

(assert (=> b!5169715 (= lt!2127519 lt!2127498)))

(declare-fun lt!2127503 () Unit!151618)

(declare-fun call!362835 () Unit!151618)

(assert (=> b!5169715 (= lt!2127503 call!362835)))

(assert (=> b!5169715 (= input!5817 lt!2127437)))

(declare-fun lt!2127517 () Unit!151618)

(assert (=> b!5169715 (= lt!2127517 lt!2127503)))

(assert (=> b!5169715 false))

(declare-fun b!5169716 () Bool)

(declare-fun e!3221201 () tuple2!63772)

(assert (=> b!5169716 (= e!3221201 (tuple2!63773 lt!2127437 Nil!60056))))

(declare-fun call!362830 () List!60180)

(declare-fun lt!2127514 () List!60180)

(declare-fun call!362834 () tuple2!63772)

(declare-fun bm!362823 () Bool)

(declare-fun call!362828 () (InoxSet Context!7986))

(assert (=> bm!362823 (= call!362834 (findLongestMatchInnerZipper!267 call!362828 lt!2127514 (+ lt!2127211 1 1) call!362830 input!5817 lt!2127207))))

(declare-fun b!5169717 () Bool)

(declare-fun e!3221205 () tuple2!63772)

(declare-fun e!3221204 () tuple2!63772)

(assert (=> b!5169717 (= e!3221205 e!3221204)))

(declare-fun lt!2127516 () tuple2!63772)

(assert (=> b!5169717 (= lt!2127516 call!362834)))

(declare-fun c!889774 () Bool)

(assert (=> b!5169717 (= c!889774 (isEmpty!32153 (_1!35189 lt!2127516)))))

(declare-fun b!5169718 () Bool)

(assert (=> b!5169718 (= e!3221204 (tuple2!63773 lt!2127437 call!362814))))

(declare-fun bm!362824 () Bool)

(assert (=> bm!362824 (= call!362832 (isPrefix!5742 input!5817 input!5817))))

(declare-fun b!5169719 () Bool)

(assert (=> b!5169719 (= e!3221204 lt!2127516)))

(declare-fun b!5169720 () Bool)

(declare-fun c!889773 () Bool)

(declare-fun call!362833 () Bool)

(assert (=> b!5169720 (= c!889773 call!362833)))

(declare-fun lt!2127504 () Unit!151618)

(declare-fun lt!2127495 () Unit!151618)

(assert (=> b!5169720 (= lt!2127504 lt!2127495)))

(assert (=> b!5169720 (= input!5817 lt!2127437)))

(assert (=> b!5169720 (= lt!2127495 call!362835)))

(declare-fun lt!2127499 () Unit!151618)

(declare-fun lt!2127505 () Unit!151618)

(assert (=> b!5169720 (= lt!2127499 lt!2127505)))

(assert (=> b!5169720 call!362832))

(assert (=> b!5169720 (= lt!2127505 call!362829)))

(declare-fun e!3221206 () tuple2!63772)

(assert (=> b!5169720 (= e!3221206 e!3221201)))

(declare-fun b!5169721 () Bool)

(declare-fun c!889770 () Bool)

(assert (=> b!5169721 (= c!889770 call!362833)))

(declare-fun lt!2127497 () Unit!151618)

(declare-fun lt!2127502 () Unit!151618)

(assert (=> b!5169721 (= lt!2127497 lt!2127502)))

(declare-fun lt!2127520 () C!29488)

(declare-fun lt!2127511 () List!60180)

(assert (=> b!5169721 (= (++!13133 (++!13133 lt!2127437 (Cons!60056 lt!2127520 Nil!60056)) lt!2127511) input!5817)))

(assert (=> b!5169721 (= lt!2127502 (lemmaMoveElementToOtherListKeepsConcatEq!1572 lt!2127437 lt!2127520 lt!2127511 input!5817))))

(assert (=> b!5169721 (= lt!2127511 (tail!10142 call!362814))))

(assert (=> b!5169721 (= lt!2127520 (head!11033 call!362814))))

(declare-fun lt!2127508 () Unit!151618)

(declare-fun lt!2127496 () Unit!151618)

(assert (=> b!5169721 (= lt!2127508 lt!2127496)))

(assert (=> b!5169721 (isPrefix!5742 (++!13133 lt!2127437 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127437)) Nil!60056)) input!5817)))

(assert (=> b!5169721 (= lt!2127496 (lemmaAddHeadSuffixToPrefixStillPrefix!1055 lt!2127437 input!5817))))

(assert (=> b!5169721 (= lt!2127514 (++!13133 lt!2127437 (Cons!60056 (head!11033 call!362814) Nil!60056)))))

(declare-fun lt!2127507 () Unit!151618)

(assert (=> b!5169721 (= lt!2127507 e!3221199)))

(declare-fun c!889772 () Bool)

(assert (=> b!5169721 (= c!889772 (= (size!39645 lt!2127437) (size!39645 input!5817)))))

(declare-fun lt!2127518 () Unit!151618)

(declare-fun lt!2127500 () Unit!151618)

(assert (=> b!5169721 (= lt!2127518 lt!2127500)))

(assert (=> b!5169721 (<= (size!39645 lt!2127437) (size!39645 input!5817))))

(assert (=> b!5169721 (= lt!2127500 (lemmaIsPrefixThenSmallerEqSize!905 lt!2127437 input!5817))))

(assert (=> b!5169721 (= e!3221206 e!3221205)))

(declare-fun d!1668182 () Bool)

(declare-fun e!3221200 () Bool)

(assert (=> d!1668182 e!3221200))

(declare-fun res!2197363 () Bool)

(assert (=> d!1668182 (=> (not res!2197363) (not e!3221200))))

(assert (=> d!1668182 (= res!2197363 (= (++!13133 (_1!35189 lt!2127501) (_2!35189 lt!2127501)) input!5817))))

(declare-fun e!3221202 () tuple2!63772)

(assert (=> d!1668182 (= lt!2127501 e!3221202)))

(declare-fun c!889769 () Bool)

(assert (=> d!1668182 (= c!889769 (lostCauseZipper!1324 call!362812))))

(declare-fun lt!2127513 () Unit!151618)

(declare-fun Unit!151635 () Unit!151618)

(assert (=> d!1668182 (= lt!2127513 Unit!151635)))

(assert (=> d!1668182 (= (getSuffix!3392 input!5817 lt!2127437) call!362814)))

(declare-fun lt!2127506 () Unit!151618)

(declare-fun lt!2127512 () Unit!151618)

(assert (=> d!1668182 (= lt!2127506 lt!2127512)))

(declare-fun lt!2127510 () List!60180)

(assert (=> d!1668182 (= call!362814 lt!2127510)))

(assert (=> d!1668182 (= lt!2127512 (lemmaSamePrefixThenSameSuffix!2691 lt!2127437 call!362814 lt!2127437 lt!2127510 input!5817))))

(assert (=> d!1668182 (= lt!2127510 (getSuffix!3392 input!5817 lt!2127437))))

(declare-fun lt!2127509 () Unit!151618)

(declare-fun lt!2127515 () Unit!151618)

(assert (=> d!1668182 (= lt!2127509 lt!2127515)))

(assert (=> d!1668182 (isPrefix!5742 lt!2127437 (++!13133 lt!2127437 call!362814))))

(assert (=> d!1668182 (= lt!2127515 (lemmaConcatTwoListThenFirstIsPrefix!3585 lt!2127437 call!362814))))

(assert (=> d!1668182 (= (++!13133 lt!2127437 call!362814) input!5817)))

(assert (=> d!1668182 (= (findLongestMatchInnerZipper!267 call!362812 lt!2127437 (+ lt!2127211 1) call!362814 input!5817 lt!2127207) lt!2127501)))

(declare-fun b!5169722 () Bool)

(assert (=> b!5169722 (= e!3221205 call!362834)))

(declare-fun bm!362825 () Bool)

(declare-fun call!362831 () C!29488)

(assert (=> bm!362825 (= call!362831 (head!11033 call!362814))))

(declare-fun b!5169723 () Bool)

(assert (=> b!5169723 (= e!3221201 (tuple2!63773 Nil!60056 input!5817))))

(declare-fun bm!362826 () Bool)

(assert (=> bm!362826 (= call!362828 (derivationStepZipper!963 call!362812 call!362831))))

(declare-fun b!5169724 () Bool)

(assert (=> b!5169724 (= e!3221202 e!3221206)))

(declare-fun c!889771 () Bool)

(assert (=> b!5169724 (= c!889771 (= (+ lt!2127211 1) lt!2127207))))

(declare-fun b!5169725 () Bool)

(assert (=> b!5169725 (= e!3221202 (tuple2!63773 Nil!60056 input!5817))))

(declare-fun bm!362827 () Bool)

(assert (=> bm!362827 (= call!362830 (tail!10142 call!362814))))

(declare-fun bm!362828 () Bool)

(assert (=> bm!362828 (= call!362835 (lemmaIsPrefixSameLengthThenSameList!1391 input!5817 lt!2127437 input!5817))))

(declare-fun b!5169726 () Bool)

(declare-fun Unit!151636 () Unit!151618)

(assert (=> b!5169726 (= e!3221199 Unit!151636)))

(declare-fun bm!362829 () Bool)

(assert (=> bm!362829 (= call!362833 (nullableZipper!1155 call!362812))))

(declare-fun b!5169727 () Bool)

(assert (=> b!5169727 (= e!3221200 e!3221203)))

(declare-fun res!2197364 () Bool)

(assert (=> b!5169727 (=> res!2197364 e!3221203)))

(assert (=> b!5169727 (= res!2197364 (isEmpty!32153 (_1!35189 lt!2127501)))))

(declare-fun bm!362830 () Bool)

(assert (=> bm!362830 (= call!362829 (lemmaIsPrefixRefl!3749 input!5817 input!5817))))

(assert (= (and d!1668182 c!889769) b!5169725))

(assert (= (and d!1668182 (not c!889769)) b!5169724))

(assert (= (and b!5169724 c!889771) b!5169720))

(assert (= (and b!5169724 (not c!889771)) b!5169721))

(assert (= (and b!5169720 c!889773) b!5169716))

(assert (= (and b!5169720 (not c!889773)) b!5169723))

(assert (= (and b!5169721 c!889772) b!5169715))

(assert (= (and b!5169721 (not c!889772)) b!5169726))

(assert (= (and b!5169721 c!889770) b!5169717))

(assert (= (and b!5169721 (not c!889770)) b!5169722))

(assert (= (and b!5169717 c!889774) b!5169718))

(assert (= (and b!5169717 (not c!889774)) b!5169719))

(assert (= (or b!5169717 b!5169722) bm!362827))

(assert (= (or b!5169717 b!5169722) bm!362825))

(assert (= (or b!5169717 b!5169722) bm!362826))

(assert (= (or b!5169717 b!5169722) bm!362823))

(assert (= (or b!5169720 b!5169715) bm!362830))

(assert (= (or b!5169720 b!5169721) bm!362829))

(assert (= (or b!5169720 b!5169715) bm!362824))

(assert (= (or b!5169720 b!5169715) bm!362828))

(assert (= (and d!1668182 res!2197363) b!5169727))

(assert (= (and b!5169727 (not res!2197364)) b!5169714))

(declare-fun m!6221438 () Bool)

(assert (=> b!5169721 m!6221438))

(declare-fun m!6221440 () Bool)

(assert (=> b!5169721 m!6221440))

(declare-fun m!6221442 () Bool)

(assert (=> b!5169721 m!6221442))

(assert (=> b!5169721 m!6221440))

(declare-fun m!6221444 () Bool)

(assert (=> b!5169721 m!6221444))

(declare-fun m!6221446 () Bool)

(assert (=> b!5169721 m!6221446))

(declare-fun m!6221448 () Bool)

(assert (=> b!5169721 m!6221448))

(declare-fun m!6221450 () Bool)

(assert (=> b!5169721 m!6221450))

(declare-fun m!6221452 () Bool)

(assert (=> b!5169721 m!6221452))

(declare-fun m!6221454 () Bool)

(assert (=> b!5169721 m!6221454))

(assert (=> b!5169721 m!6221450))

(assert (=> b!5169721 m!6221004))

(declare-fun m!6221456 () Bool)

(assert (=> b!5169721 m!6221456))

(declare-fun m!6221458 () Bool)

(assert (=> b!5169721 m!6221458))

(assert (=> b!5169721 m!6221448))

(declare-fun m!6221460 () Bool)

(assert (=> b!5169721 m!6221460))

(declare-fun m!6221462 () Bool)

(assert (=> b!5169721 m!6221462))

(declare-fun m!6221464 () Bool)

(assert (=> bm!362823 m!6221464))

(declare-fun m!6221466 () Bool)

(assert (=> bm!362826 m!6221466))

(declare-fun m!6221468 () Bool)

(assert (=> bm!362828 m!6221468))

(declare-fun m!6221470 () Bool)

(assert (=> b!5169714 m!6221470))

(assert (=> b!5169714 m!6221456))

(assert (=> bm!362824 m!6220988))

(declare-fun m!6221472 () Bool)

(assert (=> b!5169727 m!6221472))

(assert (=> bm!362825 m!6221438))

(declare-fun m!6221474 () Bool)

(assert (=> d!1668182 m!6221474))

(declare-fun m!6221476 () Bool)

(assert (=> d!1668182 m!6221476))

(assert (=> d!1668182 m!6221474))

(declare-fun m!6221478 () Bool)

(assert (=> d!1668182 m!6221478))

(declare-fun m!6221480 () Bool)

(assert (=> d!1668182 m!6221480))

(declare-fun m!6221482 () Bool)

(assert (=> d!1668182 m!6221482))

(assert (=> d!1668182 m!6221450))

(declare-fun m!6221484 () Bool)

(assert (=> d!1668182 m!6221484))

(declare-fun m!6221486 () Bool)

(assert (=> b!5169717 m!6221486))

(assert (=> bm!362827 m!6221458))

(assert (=> bm!362830 m!6220986))

(declare-fun m!6221490 () Bool)

(assert (=> bm!362829 m!6221490))

(assert (=> bm!362807 d!1668182))

(declare-fun d!1668192 () Bool)

(assert (=> d!1668192 (= input!5817 lt!2127215)))

(declare-fun lt!2127523 () Unit!151618)

(assert (=> d!1668192 (= lt!2127523 (choose!38283 input!5817 lt!2127215 input!5817))))

(assert (=> d!1668192 (isPrefix!5742 input!5817 input!5817)))

(assert (=> d!1668192 (= (lemmaIsPrefixSameLengthThenSameList!1391 input!5817 lt!2127215 input!5817) lt!2127523)))

(declare-fun bs!1203319 () Bool)

(assert (= bs!1203319 d!1668192))

(declare-fun m!6221500 () Bool)

(assert (=> bs!1203319 m!6221500))

(assert (=> bs!1203319 m!6220988))

(assert (=> bm!362820 d!1668192))

(declare-fun bs!1203320 () Bool)

(declare-fun d!1668196 () Bool)

(assert (= bs!1203320 (and d!1668196 d!1668124)))

(declare-fun lambda!258059 () Int)

(assert (=> bs!1203320 (= (= call!362823 lt!2127210) (= lambda!258059 lambda!258055))))

(assert (=> d!1668196 true))

(assert (=> d!1668196 (= (derivationStepZipper!963 (derivationStepZipper!963 z!4581 lt!2127210) call!362823) (flatMap!442 (derivationStepZipper!963 z!4581 lt!2127210) lambda!258059))))

(declare-fun bs!1203321 () Bool)

(assert (= bs!1203321 d!1668196))

(assert (=> bs!1203321 m!6220994))

(declare-fun m!6221502 () Bool)

(assert (=> bs!1203321 m!6221502))

(assert (=> bm!362818 d!1668196))

(declare-fun d!1668200 () Bool)

(assert (=> d!1668200 (= (isEmpty!32153 (_1!35189 lt!2127424)) ((_ is Nil!60056) (_1!35189 lt!2127424)))))

(assert (=> b!5169619 d!1668200))

(declare-fun b!5169741 () Bool)

(declare-fun e!3221213 () Bool)

(assert (=> b!5169741 (= e!3221213 (>= (size!39645 (tail!10142 input!5817)) (size!39645 (tail!10142 lt!2127215))))))

(declare-fun b!5169740 () Bool)

(declare-fun e!3221215 () Bool)

(assert (=> b!5169740 (= e!3221215 (isPrefix!5742 (tail!10142 (tail!10142 lt!2127215)) (tail!10142 (tail!10142 input!5817))))))

(declare-fun b!5169739 () Bool)

(declare-fun res!2197372 () Bool)

(assert (=> b!5169739 (=> (not res!2197372) (not e!3221215))))

(assert (=> b!5169739 (= res!2197372 (= (head!11033 (tail!10142 lt!2127215)) (head!11033 (tail!10142 input!5817))))))

(declare-fun b!5169738 () Bool)

(declare-fun e!3221214 () Bool)

(assert (=> b!5169738 (= e!3221214 e!3221215)))

(declare-fun res!2197371 () Bool)

(assert (=> b!5169738 (=> (not res!2197371) (not e!3221215))))

(assert (=> b!5169738 (= res!2197371 (not ((_ is Nil!60056) (tail!10142 input!5817))))))

(declare-fun d!1668202 () Bool)

(assert (=> d!1668202 e!3221213))

(declare-fun res!2197374 () Bool)

(assert (=> d!1668202 (=> res!2197374 e!3221213)))

(declare-fun lt!2127525 () Bool)

(assert (=> d!1668202 (= res!2197374 (not lt!2127525))))

(assert (=> d!1668202 (= lt!2127525 e!3221214)))

(declare-fun res!2197373 () Bool)

(assert (=> d!1668202 (=> res!2197373 e!3221214)))

(assert (=> d!1668202 (= res!2197373 ((_ is Nil!60056) (tail!10142 lt!2127215)))))

(assert (=> d!1668202 (= (isPrefix!5742 (tail!10142 lt!2127215) (tail!10142 input!5817)) lt!2127525)))

(assert (= (and d!1668202 (not res!2197373)) b!5169738))

(assert (= (and b!5169738 res!2197371) b!5169739))

(assert (= (and b!5169739 res!2197372) b!5169740))

(assert (= (and d!1668202 (not res!2197374)) b!5169741))

(assert (=> b!5169741 m!6221028))

(assert (=> b!5169741 m!6221414))

(assert (=> b!5169741 m!6221238))

(declare-fun m!6221518 () Bool)

(assert (=> b!5169741 m!6221518))

(assert (=> b!5169740 m!6221238))

(declare-fun m!6221520 () Bool)

(assert (=> b!5169740 m!6221520))

(assert (=> b!5169740 m!6221028))

(assert (=> b!5169740 m!6221420))

(assert (=> b!5169740 m!6221520))

(assert (=> b!5169740 m!6221420))

(declare-fun m!6221522 () Bool)

(assert (=> b!5169740 m!6221522))

(assert (=> b!5169739 m!6221238))

(declare-fun m!6221524 () Bool)

(assert (=> b!5169739 m!6221524))

(assert (=> b!5169739 m!6221028))

(assert (=> b!5169739 m!6221428))

(assert (=> b!5169624 d!1668202))

(declare-fun d!1668208 () Bool)

(assert (=> d!1668208 (= (tail!10142 lt!2127215) (t!373333 lt!2127215))))

(assert (=> b!5169624 d!1668208))

(assert (=> b!5169624 d!1668180))

(declare-fun d!1668212 () Bool)

(declare-fun lt!2127526 () List!60180)

(assert (=> d!1668212 (= (++!13133 (t!373333 testedP!294) lt!2127526) (tail!10142 input!5817))))

(declare-fun e!3221216 () List!60180)

(assert (=> d!1668212 (= lt!2127526 e!3221216)))

(declare-fun c!889777 () Bool)

(assert (=> d!1668212 (= c!889777 ((_ is Cons!60056) (t!373333 testedP!294)))))

(assert (=> d!1668212 (>= (size!39645 (tail!10142 input!5817)) (size!39645 (t!373333 testedP!294)))))

(assert (=> d!1668212 (= (getSuffix!3392 (tail!10142 input!5817) (t!373333 testedP!294)) lt!2127526)))

(declare-fun b!5169742 () Bool)

(assert (=> b!5169742 (= e!3221216 (getSuffix!3392 (tail!10142 (tail!10142 input!5817)) (t!373333 (t!373333 testedP!294))))))

(declare-fun b!5169743 () Bool)

(assert (=> b!5169743 (= e!3221216 (tail!10142 input!5817))))

(assert (= (and d!1668212 c!889777) b!5169742))

(assert (= (and d!1668212 (not c!889777)) b!5169743))

(declare-fun m!6221526 () Bool)

(assert (=> d!1668212 m!6221526))

(assert (=> d!1668212 m!6221028))

(assert (=> d!1668212 m!6221414))

(assert (=> d!1668212 m!6221234))

(assert (=> b!5169742 m!6221028))

(assert (=> b!5169742 m!6221420))

(assert (=> b!5169742 m!6221420))

(declare-fun m!6221528 () Bool)

(assert (=> b!5169742 m!6221528))

(assert (=> b!5169508 d!1668212))

(assert (=> b!5169508 d!1668180))

(declare-fun d!1668214 () Bool)

(declare-fun lt!2127528 () Int)

(assert (=> d!1668214 (>= lt!2127528 0)))

(declare-fun e!3221219 () Int)

(assert (=> d!1668214 (= lt!2127528 e!3221219)))

(declare-fun c!889779 () Bool)

(assert (=> d!1668214 (= c!889779 ((_ is Nil!60056) lt!2127451))))

(assert (=> d!1668214 (= (size!39645 lt!2127451) lt!2127528)))

(declare-fun b!5169748 () Bool)

(assert (=> b!5169748 (= e!3221219 0)))

(declare-fun b!5169749 () Bool)

(assert (=> b!5169749 (= e!3221219 (+ 1 (size!39645 (t!373333 lt!2127451))))))

(assert (= (and d!1668214 c!889779) b!5169748))

(assert (= (and d!1668214 (not c!889779)) b!5169749))

(declare-fun m!6221530 () Bool)

(assert (=> b!5169749 m!6221530))

(assert (=> b!5169636 d!1668214))

(assert (=> b!5169636 d!1668102))

(declare-fun d!1668216 () Bool)

(declare-fun lt!2127529 () Int)

(assert (=> d!1668216 (>= lt!2127529 0)))

(declare-fun e!3221220 () Int)

(assert (=> d!1668216 (= lt!2127529 e!3221220)))

(declare-fun c!889780 () Bool)

(assert (=> d!1668216 (= c!889780 ((_ is Nil!60056) (Cons!60056 lt!2127210 Nil!60056)))))

(assert (=> d!1668216 (= (size!39645 (Cons!60056 lt!2127210 Nil!60056)) lt!2127529)))

(declare-fun b!5169750 () Bool)

(assert (=> b!5169750 (= e!3221220 0)))

(declare-fun b!5169751 () Bool)

(assert (=> b!5169751 (= e!3221220 (+ 1 (size!39645 (t!373333 (Cons!60056 lt!2127210 Nil!60056)))))))

(assert (= (and d!1668216 c!889780) b!5169750))

(assert (= (and d!1668216 (not c!889780)) b!5169751))

(declare-fun m!6221536 () Bool)

(assert (=> b!5169751 m!6221536))

(assert (=> b!5169636 d!1668216))

(declare-fun d!1668218 () Bool)

(assert (=> d!1668218 (= (head!11033 (tail!10142 lt!2127213)) (h!66504 (tail!10142 lt!2127213)))))

(assert (=> bm!362817 d!1668218))

(assert (=> d!1668042 d!1668046))

(declare-fun d!1668220 () Bool)

(assert (=> d!1668220 (isPrefix!5742 input!5817 input!5817)))

(assert (=> d!1668220 true))

(declare-fun _$45!2335 () Unit!151618)

(assert (=> d!1668220 (= (choose!38281 input!5817 input!5817) _$45!2335)))

(declare-fun bs!1203322 () Bool)

(assert (= bs!1203322 d!1668220))

(assert (=> bs!1203322 m!6220988))

(assert (=> d!1668042 d!1668220))

(assert (=> b!5169431 d!1668076))

(assert (=> b!5169649 d!1668076))

(declare-fun d!1668224 () Bool)

(assert (=> d!1668224 (= (tail!10142 (tail!10142 lt!2127213)) (t!373333 (tail!10142 lt!2127213)))))

(assert (=> b!5169649 d!1668224))

(declare-fun d!1668228 () Bool)

(declare-fun lt!2127532 () Int)

(assert (=> d!1668228 (>= lt!2127532 0)))

(declare-fun e!3221223 () Int)

(assert (=> d!1668228 (= lt!2127532 e!3221223)))

(declare-fun c!889782 () Bool)

(assert (=> d!1668228 (= c!889782 ((_ is Nil!60056) lt!2127215))))

(assert (=> d!1668228 (= (size!39645 lt!2127215) lt!2127532)))

(declare-fun b!5169756 () Bool)

(assert (=> b!5169756 (= e!3221223 0)))

(declare-fun b!5169757 () Bool)

(assert (=> b!5169757 (= e!3221223 (+ 1 (size!39645 (t!373333 lt!2127215))))))

(assert (= (and d!1668228 c!889782) b!5169756))

(assert (= (and d!1668228 (not c!889782)) b!5169757))

(declare-fun m!6221558 () Bool)

(assert (=> b!5169757 m!6221558))

(assert (=> b!5169649 d!1668228))

(declare-fun b!5169759 () Bool)

(declare-fun e!3221225 () List!60180)

(assert (=> b!5169759 (= e!3221225 (Cons!60056 (h!66504 lt!2127215) (++!13133 (t!373333 lt!2127215) (Cons!60056 lt!2127478 Nil!60056))))))

(declare-fun lt!2127533 () List!60180)

(declare-fun e!3221224 () Bool)

(declare-fun b!5169761 () Bool)

(assert (=> b!5169761 (= e!3221224 (or (not (= (Cons!60056 lt!2127478 Nil!60056) Nil!60056)) (= lt!2127533 lt!2127215)))))

(declare-fun b!5169760 () Bool)

(declare-fun res!2197379 () Bool)

(assert (=> b!5169760 (=> (not res!2197379) (not e!3221224))))

(assert (=> b!5169760 (= res!2197379 (= (size!39645 lt!2127533) (+ (size!39645 lt!2127215) (size!39645 (Cons!60056 lt!2127478 Nil!60056)))))))

(declare-fun b!5169758 () Bool)

(assert (=> b!5169758 (= e!3221225 (Cons!60056 lt!2127478 Nil!60056))))

(declare-fun d!1668230 () Bool)

(assert (=> d!1668230 e!3221224))

(declare-fun res!2197380 () Bool)

(assert (=> d!1668230 (=> (not res!2197380) (not e!3221224))))

(assert (=> d!1668230 (= res!2197380 (= (content!10643 lt!2127533) ((_ map or) (content!10643 lt!2127215) (content!10643 (Cons!60056 lt!2127478 Nil!60056)))))))

(assert (=> d!1668230 (= lt!2127533 e!3221225)))

(declare-fun c!889783 () Bool)

(assert (=> d!1668230 (= c!889783 ((_ is Nil!60056) lt!2127215))))

(assert (=> d!1668230 (= (++!13133 lt!2127215 (Cons!60056 lt!2127478 Nil!60056)) lt!2127533)))

(assert (= (and d!1668230 c!889783) b!5169758))

(assert (= (and d!1668230 (not c!889783)) b!5169759))

(assert (= (and d!1668230 res!2197380) b!5169760))

(assert (= (and b!5169760 res!2197379) b!5169761))

(declare-fun m!6221564 () Bool)

(assert (=> b!5169759 m!6221564))

(declare-fun m!6221566 () Bool)

(assert (=> b!5169760 m!6221566))

(assert (=> b!5169760 m!6221236))

(declare-fun m!6221568 () Bool)

(assert (=> b!5169760 m!6221568))

(declare-fun m!6221570 () Bool)

(assert (=> d!1668230 m!6221570))

(declare-fun m!6221572 () Bool)

(assert (=> d!1668230 m!6221572))

(declare-fun m!6221574 () Bool)

(assert (=> d!1668230 m!6221574))

(assert (=> b!5169649 d!1668230))

(declare-fun b!5169767 () Bool)

(declare-fun e!3221229 () List!60180)

(assert (=> b!5169767 (= e!3221229 (Cons!60056 (h!66504 lt!2127215) (++!13133 (t!373333 lt!2127215) (Cons!60056 (head!11033 (tail!10142 lt!2127213)) Nil!60056))))))

(declare-fun lt!2127535 () List!60180)

(declare-fun e!3221228 () Bool)

(declare-fun b!5169769 () Bool)

(assert (=> b!5169769 (= e!3221228 (or (not (= (Cons!60056 (head!11033 (tail!10142 lt!2127213)) Nil!60056) Nil!60056)) (= lt!2127535 lt!2127215)))))

(declare-fun b!5169768 () Bool)

(declare-fun res!2197383 () Bool)

(assert (=> b!5169768 (=> (not res!2197383) (not e!3221228))))

(assert (=> b!5169768 (= res!2197383 (= (size!39645 lt!2127535) (+ (size!39645 lt!2127215) (size!39645 (Cons!60056 (head!11033 (tail!10142 lt!2127213)) Nil!60056)))))))

(declare-fun b!5169766 () Bool)

(assert (=> b!5169766 (= e!3221229 (Cons!60056 (head!11033 (tail!10142 lt!2127213)) Nil!60056))))

(declare-fun d!1668234 () Bool)

(assert (=> d!1668234 e!3221228))

(declare-fun res!2197384 () Bool)

(assert (=> d!1668234 (=> (not res!2197384) (not e!3221228))))

(assert (=> d!1668234 (= res!2197384 (= (content!10643 lt!2127535) ((_ map or) (content!10643 lt!2127215) (content!10643 (Cons!60056 (head!11033 (tail!10142 lt!2127213)) Nil!60056)))))))

(assert (=> d!1668234 (= lt!2127535 e!3221229)))

(declare-fun c!889785 () Bool)

(assert (=> d!1668234 (= c!889785 ((_ is Nil!60056) lt!2127215))))

(assert (=> d!1668234 (= (++!13133 lt!2127215 (Cons!60056 (head!11033 (tail!10142 lt!2127213)) Nil!60056)) lt!2127535)))

(assert (= (and d!1668234 c!889785) b!5169766))

(assert (= (and d!1668234 (not c!889785)) b!5169767))

(assert (= (and d!1668234 res!2197384) b!5169768))

(assert (= (and b!5169768 res!2197383) b!5169769))

(declare-fun m!6221576 () Bool)

(assert (=> b!5169767 m!6221576))

(declare-fun m!6221578 () Bool)

(assert (=> b!5169768 m!6221578))

(assert (=> b!5169768 m!6221236))

(declare-fun m!6221580 () Bool)

(assert (=> b!5169768 m!6221580))

(declare-fun m!6221582 () Bool)

(assert (=> d!1668234 m!6221582))

(assert (=> d!1668234 m!6221572))

(declare-fun m!6221588 () Bool)

(assert (=> d!1668234 m!6221588))

(assert (=> b!5169649 d!1668234))

(declare-fun b!5169771 () Bool)

(declare-fun e!3221231 () List!60180)

(assert (=> b!5169771 (= e!3221231 (Cons!60056 (h!66504 (++!13133 lt!2127215 (Cons!60056 lt!2127478 Nil!60056))) (++!13133 (t!373333 (++!13133 lt!2127215 (Cons!60056 lt!2127478 Nil!60056))) lt!2127469)))))

(declare-fun lt!2127536 () List!60180)

(declare-fun b!5169773 () Bool)

(declare-fun e!3221230 () Bool)

(assert (=> b!5169773 (= e!3221230 (or (not (= lt!2127469 Nil!60056)) (= lt!2127536 (++!13133 lt!2127215 (Cons!60056 lt!2127478 Nil!60056)))))))

(declare-fun b!5169772 () Bool)

(declare-fun res!2197385 () Bool)

(assert (=> b!5169772 (=> (not res!2197385) (not e!3221230))))

(assert (=> b!5169772 (= res!2197385 (= (size!39645 lt!2127536) (+ (size!39645 (++!13133 lt!2127215 (Cons!60056 lt!2127478 Nil!60056))) (size!39645 lt!2127469))))))

(declare-fun b!5169770 () Bool)

(assert (=> b!5169770 (= e!3221231 lt!2127469)))

(declare-fun d!1668236 () Bool)

(assert (=> d!1668236 e!3221230))

(declare-fun res!2197386 () Bool)

(assert (=> d!1668236 (=> (not res!2197386) (not e!3221230))))

(assert (=> d!1668236 (= res!2197386 (= (content!10643 lt!2127536) ((_ map or) (content!10643 (++!13133 lt!2127215 (Cons!60056 lt!2127478 Nil!60056))) (content!10643 lt!2127469))))))

(assert (=> d!1668236 (= lt!2127536 e!3221231)))

(declare-fun c!889786 () Bool)

(assert (=> d!1668236 (= c!889786 ((_ is Nil!60056) (++!13133 lt!2127215 (Cons!60056 lt!2127478 Nil!60056))))))

(assert (=> d!1668236 (= (++!13133 (++!13133 lt!2127215 (Cons!60056 lt!2127478 Nil!60056)) lt!2127469) lt!2127536)))

(assert (= (and d!1668236 c!889786) b!5169770))

(assert (= (and d!1668236 (not c!889786)) b!5169771))

(assert (= (and d!1668236 res!2197386) b!5169772))

(assert (= (and b!5169772 res!2197385) b!5169773))

(declare-fun m!6221596 () Bool)

(assert (=> b!5169771 m!6221596))

(declare-fun m!6221598 () Bool)

(assert (=> b!5169772 m!6221598))

(assert (=> b!5169772 m!6221278))

(declare-fun m!6221600 () Bool)

(assert (=> b!5169772 m!6221600))

(declare-fun m!6221602 () Bool)

(assert (=> b!5169772 m!6221602))

(declare-fun m!6221604 () Bool)

(assert (=> d!1668236 m!6221604))

(assert (=> d!1668236 m!6221278))

(declare-fun m!6221606 () Bool)

(assert (=> d!1668236 m!6221606))

(declare-fun m!6221608 () Bool)

(assert (=> d!1668236 m!6221608))

(assert (=> b!5169649 d!1668236))

(declare-fun d!1668240 () Bool)

(declare-fun lt!2127537 () List!60180)

(assert (=> d!1668240 (= (++!13133 lt!2127215 lt!2127537) input!5817)))

(declare-fun e!3221232 () List!60180)

(assert (=> d!1668240 (= lt!2127537 e!3221232)))

(declare-fun c!889787 () Bool)

(assert (=> d!1668240 (= c!889787 ((_ is Cons!60056) lt!2127215))))

(assert (=> d!1668240 (>= (size!39645 input!5817) (size!39645 lt!2127215))))

(assert (=> d!1668240 (= (getSuffix!3392 input!5817 lt!2127215) lt!2127537)))

(declare-fun b!5169774 () Bool)

(assert (=> b!5169774 (= e!3221232 (getSuffix!3392 (tail!10142 input!5817) (t!373333 lt!2127215)))))

(declare-fun b!5169775 () Bool)

(assert (=> b!5169775 (= e!3221232 input!5817)))

(assert (= (and d!1668240 c!889787) b!5169774))

(assert (= (and d!1668240 (not c!889787)) b!5169775))

(declare-fun m!6221610 () Bool)

(assert (=> d!1668240 m!6221610))

(assert (=> d!1668240 m!6221004))

(assert (=> d!1668240 m!6221236))

(assert (=> b!5169774 m!6221028))

(assert (=> b!5169774 m!6221028))

(declare-fun m!6221612 () Bool)

(assert (=> b!5169774 m!6221612))

(assert (=> b!5169649 d!1668240))

(declare-fun b!5169777 () Bool)

(declare-fun e!3221234 () List!60180)

(assert (=> b!5169777 (= e!3221234 (Cons!60056 (h!66504 lt!2127215) (++!13133 (t!373333 lt!2127215) (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056))))))

(declare-fun e!3221233 () Bool)

(declare-fun lt!2127538 () List!60180)

(declare-fun b!5169779 () Bool)

(assert (=> b!5169779 (= e!3221233 (or (not (= (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056) Nil!60056)) (= lt!2127538 lt!2127215)))))

(declare-fun b!5169778 () Bool)

(declare-fun res!2197387 () Bool)

(assert (=> b!5169778 (=> (not res!2197387) (not e!3221233))))

(assert (=> b!5169778 (= res!2197387 (= (size!39645 lt!2127538) (+ (size!39645 lt!2127215) (size!39645 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056)))))))

(declare-fun b!5169776 () Bool)

(assert (=> b!5169776 (= e!3221234 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056))))

(declare-fun d!1668242 () Bool)

(assert (=> d!1668242 e!3221233))

(declare-fun res!2197388 () Bool)

(assert (=> d!1668242 (=> (not res!2197388) (not e!3221233))))

(assert (=> d!1668242 (= res!2197388 (= (content!10643 lt!2127538) ((_ map or) (content!10643 lt!2127215) (content!10643 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056)))))))

(assert (=> d!1668242 (= lt!2127538 e!3221234)))

(declare-fun c!889788 () Bool)

(assert (=> d!1668242 (= c!889788 ((_ is Nil!60056) lt!2127215))))

(assert (=> d!1668242 (= (++!13133 lt!2127215 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056)) lt!2127538)))

(assert (= (and d!1668242 c!889788) b!5169776))

(assert (= (and d!1668242 (not c!889788)) b!5169777))

(assert (= (and d!1668242 res!2197388) b!5169778))

(assert (= (and b!5169778 res!2197387) b!5169779))

(declare-fun m!6221616 () Bool)

(assert (=> b!5169777 m!6221616))

(declare-fun m!6221618 () Bool)

(assert (=> b!5169778 m!6221618))

(assert (=> b!5169778 m!6221236))

(declare-fun m!6221620 () Bool)

(assert (=> b!5169778 m!6221620))

(declare-fun m!6221622 () Bool)

(assert (=> d!1668242 m!6221622))

(assert (=> d!1668242 m!6221572))

(declare-fun m!6221624 () Bool)

(assert (=> d!1668242 m!6221624))

(assert (=> b!5169649 d!1668242))

(declare-fun b!5169783 () Bool)

(declare-fun e!3221235 () Bool)

(assert (=> b!5169783 (= e!3221235 (>= (size!39645 input!5817) (size!39645 (++!13133 lt!2127215 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056)))))))

(declare-fun b!5169782 () Bool)

(declare-fun e!3221237 () Bool)

(assert (=> b!5169782 (= e!3221237 (isPrefix!5742 (tail!10142 (++!13133 lt!2127215 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056))) (tail!10142 input!5817)))))

(declare-fun b!5169781 () Bool)

(declare-fun res!2197390 () Bool)

(assert (=> b!5169781 (=> (not res!2197390) (not e!3221237))))

(assert (=> b!5169781 (= res!2197390 (= (head!11033 (++!13133 lt!2127215 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056))) (head!11033 input!5817)))))

(declare-fun b!5169780 () Bool)

(declare-fun e!3221236 () Bool)

(assert (=> b!5169780 (= e!3221236 e!3221237)))

(declare-fun res!2197389 () Bool)

(assert (=> b!5169780 (=> (not res!2197389) (not e!3221237))))

(assert (=> b!5169780 (= res!2197389 (not ((_ is Nil!60056) input!5817)))))

(declare-fun d!1668246 () Bool)

(assert (=> d!1668246 e!3221235))

(declare-fun res!2197392 () Bool)

(assert (=> d!1668246 (=> res!2197392 e!3221235)))

(declare-fun lt!2127539 () Bool)

(assert (=> d!1668246 (= res!2197392 (not lt!2127539))))

(assert (=> d!1668246 (= lt!2127539 e!3221236)))

(declare-fun res!2197391 () Bool)

(assert (=> d!1668246 (=> res!2197391 e!3221236)))

(assert (=> d!1668246 (= res!2197391 ((_ is Nil!60056) (++!13133 lt!2127215 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056))))))

(assert (=> d!1668246 (= (isPrefix!5742 (++!13133 lt!2127215 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056)) input!5817) lt!2127539)))

(assert (= (and d!1668246 (not res!2197391)) b!5169780))

(assert (= (and b!5169780 res!2197389) b!5169781))

(assert (= (and b!5169781 res!2197390) b!5169782))

(assert (= (and d!1668246 (not res!2197392)) b!5169783))

(assert (=> b!5169783 m!6221004))

(assert (=> b!5169783 m!6221270))

(declare-fun m!6221628 () Bool)

(assert (=> b!5169783 m!6221628))

(assert (=> b!5169782 m!6221270))

(declare-fun m!6221630 () Bool)

(assert (=> b!5169782 m!6221630))

(assert (=> b!5169782 m!6221028))

(assert (=> b!5169782 m!6221630))

(assert (=> b!5169782 m!6221028))

(declare-fun m!6221632 () Bool)

(assert (=> b!5169782 m!6221632))

(assert (=> b!5169781 m!6221270))

(declare-fun m!6221634 () Bool)

(assert (=> b!5169781 m!6221634))

(assert (=> b!5169781 m!6221032))

(assert (=> b!5169649 d!1668246))

(declare-fun d!1668250 () Bool)

(assert (=> d!1668250 (<= (size!39645 lt!2127215) (size!39645 input!5817))))

(declare-fun lt!2127540 () Unit!151618)

(assert (=> d!1668250 (= lt!2127540 (choose!38280 lt!2127215 input!5817))))

(assert (=> d!1668250 (isPrefix!5742 lt!2127215 input!5817)))

(assert (=> d!1668250 (= (lemmaIsPrefixThenSmallerEqSize!905 lt!2127215 input!5817) lt!2127540)))

(declare-fun bs!1203331 () Bool)

(assert (= bs!1203331 d!1668250))

(assert (=> bs!1203331 m!6221236))

(assert (=> bs!1203331 m!6221004))

(declare-fun m!6221636 () Bool)

(assert (=> bs!1203331 m!6221636))

(assert (=> bs!1203331 m!6221022))

(assert (=> b!5169649 d!1668250))

(declare-fun d!1668252 () Bool)

(assert (=> d!1668252 (= (++!13133 (++!13133 lt!2127215 (Cons!60056 lt!2127478 Nil!60056)) lt!2127469) input!5817)))

(declare-fun lt!2127546 () Unit!151618)

(declare-fun choose!38286 (List!60180 C!29488 List!60180 List!60180) Unit!151618)

(assert (=> d!1668252 (= lt!2127546 (choose!38286 lt!2127215 lt!2127478 lt!2127469 input!5817))))

(assert (=> d!1668252 (= (++!13133 lt!2127215 (Cons!60056 lt!2127478 lt!2127469)) input!5817)))

(assert (=> d!1668252 (= (lemmaMoveElementToOtherListKeepsConcatEq!1572 lt!2127215 lt!2127478 lt!2127469 input!5817) lt!2127546)))

(declare-fun bs!1203333 () Bool)

(assert (= bs!1203333 d!1668252))

(assert (=> bs!1203333 m!6221278))

(assert (=> bs!1203333 m!6221278))

(assert (=> bs!1203333 m!6221288))

(declare-fun m!6221640 () Bool)

(assert (=> bs!1203333 m!6221640))

(declare-fun m!6221642 () Bool)

(assert (=> bs!1203333 m!6221642))

(assert (=> b!5169649 d!1668252))

(declare-fun d!1668256 () Bool)

(assert (=> d!1668256 (= (head!11033 (getSuffix!3392 input!5817 lt!2127215)) (h!66504 (getSuffix!3392 input!5817 lt!2127215)))))

(assert (=> b!5169649 d!1668256))

(declare-fun d!1668258 () Bool)

(assert (=> d!1668258 (isPrefix!5742 (++!13133 lt!2127215 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127215)) Nil!60056)) input!5817)))

(declare-fun lt!2127547 () Unit!151618)

(assert (=> d!1668258 (= lt!2127547 (choose!38284 lt!2127215 input!5817))))

(assert (=> d!1668258 (isPrefix!5742 lt!2127215 input!5817)))

(assert (=> d!1668258 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1055 lt!2127215 input!5817) lt!2127547)))

(declare-fun bs!1203334 () Bool)

(assert (= bs!1203334 d!1668258))

(assert (=> bs!1203334 m!6221270))

(assert (=> bs!1203334 m!6221272))

(declare-fun m!6221644 () Bool)

(assert (=> bs!1203334 m!6221644))

(assert (=> bs!1203334 m!6221280))

(assert (=> bs!1203334 m!6221282))

(assert (=> bs!1203334 m!6221270))

(assert (=> bs!1203334 m!6221022))

(assert (=> bs!1203334 m!6221280))

(assert (=> b!5169649 d!1668258))

(assert (=> b!5169649 d!1668218))

(assert (=> bm!362811 d!1668126))

(declare-fun d!1668260 () Bool)

(assert (=> d!1668260 (= (head!11033 input!5817) (h!66504 input!5817))))

(assert (=> b!5169429 d!1668260))

(declare-fun d!1668262 () Bool)

(declare-fun res!2197397 () Bool)

(declare-fun e!3221242 () Bool)

(assert (=> d!1668262 (=> res!2197397 e!3221242)))

(assert (=> d!1668262 (= res!2197397 ((_ is Nil!60055) (exprs!4493 setElem!31923)))))

(assert (=> d!1668262 (= (forall!14125 (exprs!4493 setElem!31923) lambda!258044) e!3221242)))

(declare-fun b!5169788 () Bool)

(declare-fun e!3221243 () Bool)

(assert (=> b!5169788 (= e!3221242 e!3221243)))

(declare-fun res!2197398 () Bool)

(assert (=> b!5169788 (=> (not res!2197398) (not e!3221243))))

(declare-fun dynLambda!23867 (Int Regex!14609) Bool)

(assert (=> b!5169788 (= res!2197398 (dynLambda!23867 lambda!258044 (h!66503 (exprs!4493 setElem!31923))))))

(declare-fun b!5169789 () Bool)

(assert (=> b!5169789 (= e!3221243 (forall!14125 (t!373332 (exprs!4493 setElem!31923)) lambda!258044))))

(assert (= (and d!1668262 (not res!2197397)) b!5169788))

(assert (= (and b!5169788 res!2197398) b!5169789))

(declare-fun b_lambda!200849 () Bool)

(assert (=> (not b_lambda!200849) (not b!5169788)))

(declare-fun m!6221646 () Bool)

(assert (=> b!5169788 m!6221646))

(declare-fun m!6221648 () Bool)

(assert (=> b!5169789 m!6221648))

(assert (=> d!1668050 d!1668262))

(declare-fun bs!1203335 () Bool)

(declare-fun d!1668264 () Bool)

(assert (= bs!1203335 (and d!1668264 d!1668050)))

(declare-fun lambda!258062 () Int)

(assert (=> bs!1203335 (= lambda!258062 lambda!258044)))

(declare-fun bs!1203336 () Bool)

(assert (= bs!1203336 (and d!1668264 d!1668118)))

(assert (=> bs!1203336 (= lambda!258062 lambda!258052)))

(assert (=> d!1668264 (= (inv!79769 setElem!31931) (forall!14125 (exprs!4493 setElem!31931) lambda!258062))))

(declare-fun bs!1203337 () Bool)

(assert (= bs!1203337 d!1668264))

(declare-fun m!6221650 () Bool)

(assert (=> bs!1203337 m!6221650))

(assert (=> setNonEmpty!31931 d!1668264))

(declare-fun b!5169790 () Bool)

(declare-fun e!3221248 () Bool)

(declare-fun lt!2127554 () tuple2!63772)

(assert (=> b!5169790 (= e!3221248 (>= (size!39645 (_1!35189 lt!2127554)) (size!39645 lt!2127472)))))

(declare-fun b!5169791 () Bool)

(declare-fun e!3221244 () Unit!151618)

(declare-fun Unit!151637 () Unit!151618)

(assert (=> b!5169791 (= e!3221244 Unit!151637)))

(declare-fun lt!2127551 () Unit!151618)

(declare-fun call!362837 () Unit!151618)

(assert (=> b!5169791 (= lt!2127551 call!362837)))

(declare-fun call!362840 () Bool)

(assert (=> b!5169791 call!362840))

(declare-fun lt!2127572 () Unit!151618)

(assert (=> b!5169791 (= lt!2127572 lt!2127551)))

(declare-fun lt!2127556 () Unit!151618)

(declare-fun call!362843 () Unit!151618)

(assert (=> b!5169791 (= lt!2127556 call!362843)))

(assert (=> b!5169791 (= input!5817 lt!2127472)))

(declare-fun lt!2127570 () Unit!151618)

(assert (=> b!5169791 (= lt!2127570 lt!2127556)))

(assert (=> b!5169791 false))

(declare-fun b!5169792 () Bool)

(declare-fun e!3221246 () tuple2!63772)

(assert (=> b!5169792 (= e!3221246 (tuple2!63773 lt!2127472 Nil!60056))))

(declare-fun call!362842 () tuple2!63772)

(declare-fun call!362838 () List!60180)

(declare-fun call!362836 () (InoxSet Context!7986))

(declare-fun bm!362831 () Bool)

(declare-fun lt!2127567 () List!60180)

(assert (=> bm!362831 (= call!362842 (findLongestMatchInnerZipper!267 call!362836 lt!2127567 (+ 1 lt!2127211 1 1) call!362838 input!5817 lt!2127207))))

(declare-fun b!5169793 () Bool)

(declare-fun e!3221250 () tuple2!63772)

(declare-fun e!3221249 () tuple2!63772)

(assert (=> b!5169793 (= e!3221250 e!3221249)))

(declare-fun lt!2127569 () tuple2!63772)

(assert (=> b!5169793 (= lt!2127569 call!362842)))

(declare-fun c!889794 () Bool)

(assert (=> b!5169793 (= c!889794 (isEmpty!32153 (_1!35189 lt!2127569)))))

(declare-fun b!5169794 () Bool)

(assert (=> b!5169794 (= e!3221249 (tuple2!63773 lt!2127472 call!362822))))

(declare-fun bm!362832 () Bool)

(assert (=> bm!362832 (= call!362840 (isPrefix!5742 input!5817 input!5817))))

(declare-fun b!5169795 () Bool)

(assert (=> b!5169795 (= e!3221249 lt!2127569)))

(declare-fun b!5169796 () Bool)

(declare-fun c!889793 () Bool)

(declare-fun call!362841 () Bool)

(assert (=> b!5169796 (= c!889793 call!362841)))

(declare-fun lt!2127557 () Unit!151618)

(declare-fun lt!2127548 () Unit!151618)

(assert (=> b!5169796 (= lt!2127557 lt!2127548)))

(assert (=> b!5169796 (= input!5817 lt!2127472)))

(assert (=> b!5169796 (= lt!2127548 call!362843)))

(declare-fun lt!2127552 () Unit!151618)

(declare-fun lt!2127558 () Unit!151618)

(assert (=> b!5169796 (= lt!2127552 lt!2127558)))

(assert (=> b!5169796 call!362840))

(assert (=> b!5169796 (= lt!2127558 call!362837)))

(declare-fun e!3221251 () tuple2!63772)

(assert (=> b!5169796 (= e!3221251 e!3221246)))

(declare-fun b!5169797 () Bool)

(declare-fun c!889790 () Bool)

(assert (=> b!5169797 (= c!889790 call!362841)))

(declare-fun lt!2127550 () Unit!151618)

(declare-fun lt!2127555 () Unit!151618)

(assert (=> b!5169797 (= lt!2127550 lt!2127555)))

(declare-fun lt!2127564 () List!60180)

(declare-fun lt!2127573 () C!29488)

(assert (=> b!5169797 (= (++!13133 (++!13133 lt!2127472 (Cons!60056 lt!2127573 Nil!60056)) lt!2127564) input!5817)))

(assert (=> b!5169797 (= lt!2127555 (lemmaMoveElementToOtherListKeepsConcatEq!1572 lt!2127472 lt!2127573 lt!2127564 input!5817))))

(assert (=> b!5169797 (= lt!2127564 (tail!10142 call!362822))))

(assert (=> b!5169797 (= lt!2127573 (head!11033 call!362822))))

(declare-fun lt!2127561 () Unit!151618)

(declare-fun lt!2127549 () Unit!151618)

(assert (=> b!5169797 (= lt!2127561 lt!2127549)))

(assert (=> b!5169797 (isPrefix!5742 (++!13133 lt!2127472 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 lt!2127472)) Nil!60056)) input!5817)))

(assert (=> b!5169797 (= lt!2127549 (lemmaAddHeadSuffixToPrefixStillPrefix!1055 lt!2127472 input!5817))))

(assert (=> b!5169797 (= lt!2127567 (++!13133 lt!2127472 (Cons!60056 (head!11033 call!362822) Nil!60056)))))

(declare-fun lt!2127560 () Unit!151618)

(assert (=> b!5169797 (= lt!2127560 e!3221244)))

(declare-fun c!889792 () Bool)

(assert (=> b!5169797 (= c!889792 (= (size!39645 lt!2127472) (size!39645 input!5817)))))

(declare-fun lt!2127571 () Unit!151618)

(declare-fun lt!2127553 () Unit!151618)

(assert (=> b!5169797 (= lt!2127571 lt!2127553)))

(assert (=> b!5169797 (<= (size!39645 lt!2127472) (size!39645 input!5817))))

(assert (=> b!5169797 (= lt!2127553 (lemmaIsPrefixThenSmallerEqSize!905 lt!2127472 input!5817))))

(assert (=> b!5169797 (= e!3221251 e!3221250)))

(declare-fun d!1668266 () Bool)

(declare-fun e!3221245 () Bool)

(assert (=> d!1668266 e!3221245))

(declare-fun res!2197399 () Bool)

(assert (=> d!1668266 (=> (not res!2197399) (not e!3221245))))

(assert (=> d!1668266 (= res!2197399 (= (++!13133 (_1!35189 lt!2127554) (_2!35189 lt!2127554)) input!5817))))

(declare-fun e!3221247 () tuple2!63772)

(assert (=> d!1668266 (= lt!2127554 e!3221247)))

(declare-fun c!889789 () Bool)

(assert (=> d!1668266 (= c!889789 (lostCauseZipper!1324 call!362820))))

(declare-fun lt!2127566 () Unit!151618)

(declare-fun Unit!151638 () Unit!151618)

(assert (=> d!1668266 (= lt!2127566 Unit!151638)))

(assert (=> d!1668266 (= (getSuffix!3392 input!5817 lt!2127472) call!362822)))

(declare-fun lt!2127559 () Unit!151618)

(declare-fun lt!2127565 () Unit!151618)

(assert (=> d!1668266 (= lt!2127559 lt!2127565)))

(declare-fun lt!2127563 () List!60180)

(assert (=> d!1668266 (= call!362822 lt!2127563)))

(assert (=> d!1668266 (= lt!2127565 (lemmaSamePrefixThenSameSuffix!2691 lt!2127472 call!362822 lt!2127472 lt!2127563 input!5817))))

(assert (=> d!1668266 (= lt!2127563 (getSuffix!3392 input!5817 lt!2127472))))

(declare-fun lt!2127562 () Unit!151618)

(declare-fun lt!2127568 () Unit!151618)

(assert (=> d!1668266 (= lt!2127562 lt!2127568)))

(assert (=> d!1668266 (isPrefix!5742 lt!2127472 (++!13133 lt!2127472 call!362822))))

(assert (=> d!1668266 (= lt!2127568 (lemmaConcatTwoListThenFirstIsPrefix!3585 lt!2127472 call!362822))))

(assert (=> d!1668266 (= (++!13133 lt!2127472 call!362822) input!5817)))

(assert (=> d!1668266 (= (findLongestMatchInnerZipper!267 call!362820 lt!2127472 (+ 1 lt!2127211 1) call!362822 input!5817 lt!2127207) lt!2127554)))

(declare-fun b!5169798 () Bool)

(assert (=> b!5169798 (= e!3221250 call!362842)))

(declare-fun bm!362833 () Bool)

(declare-fun call!362839 () C!29488)

(assert (=> bm!362833 (= call!362839 (head!11033 call!362822))))

(declare-fun b!5169799 () Bool)

(assert (=> b!5169799 (= e!3221246 (tuple2!63773 Nil!60056 input!5817))))

(declare-fun bm!362834 () Bool)

(assert (=> bm!362834 (= call!362836 (derivationStepZipper!963 call!362820 call!362839))))

(declare-fun b!5169800 () Bool)

(assert (=> b!5169800 (= e!3221247 e!3221251)))

(declare-fun c!889791 () Bool)

(assert (=> b!5169800 (= c!889791 (= (+ 1 lt!2127211 1) lt!2127207))))

(declare-fun b!5169801 () Bool)

(assert (=> b!5169801 (= e!3221247 (tuple2!63773 Nil!60056 input!5817))))

(declare-fun bm!362835 () Bool)

(assert (=> bm!362835 (= call!362838 (tail!10142 call!362822))))

(declare-fun bm!362836 () Bool)

(assert (=> bm!362836 (= call!362843 (lemmaIsPrefixSameLengthThenSameList!1391 input!5817 lt!2127472 input!5817))))

(declare-fun b!5169802 () Bool)

(declare-fun Unit!151640 () Unit!151618)

(assert (=> b!5169802 (= e!3221244 Unit!151640)))

(declare-fun bm!362837 () Bool)

(assert (=> bm!362837 (= call!362841 (nullableZipper!1155 call!362820))))

(declare-fun b!5169803 () Bool)

(assert (=> b!5169803 (= e!3221245 e!3221248)))

(declare-fun res!2197400 () Bool)

(assert (=> b!5169803 (=> res!2197400 e!3221248)))

(assert (=> b!5169803 (= res!2197400 (isEmpty!32153 (_1!35189 lt!2127554)))))

(declare-fun bm!362838 () Bool)

(assert (=> bm!362838 (= call!362837 (lemmaIsPrefixRefl!3749 input!5817 input!5817))))

(assert (= (and d!1668266 c!889789) b!5169801))

(assert (= (and d!1668266 (not c!889789)) b!5169800))

(assert (= (and b!5169800 c!889791) b!5169796))

(assert (= (and b!5169800 (not c!889791)) b!5169797))

(assert (= (and b!5169796 c!889793) b!5169792))

(assert (= (and b!5169796 (not c!889793)) b!5169799))

(assert (= (and b!5169797 c!889792) b!5169791))

(assert (= (and b!5169797 (not c!889792)) b!5169802))

(assert (= (and b!5169797 c!889790) b!5169793))

(assert (= (and b!5169797 (not c!889790)) b!5169798))

(assert (= (and b!5169793 c!889794) b!5169794))

(assert (= (and b!5169793 (not c!889794)) b!5169795))

(assert (= (or b!5169793 b!5169798) bm!362835))

(assert (= (or b!5169793 b!5169798) bm!362833))

(assert (= (or b!5169793 b!5169798) bm!362834))

(assert (= (or b!5169793 b!5169798) bm!362831))

(assert (= (or b!5169796 b!5169791) bm!362838))

(assert (= (or b!5169796 b!5169797) bm!362837))

(assert (= (or b!5169796 b!5169791) bm!362832))

(assert (= (or b!5169796 b!5169791) bm!362836))

(assert (= (and d!1668266 res!2197399) b!5169803))

(assert (= (and b!5169803 (not res!2197400)) b!5169790))

(declare-fun m!6221652 () Bool)

(assert (=> b!5169797 m!6221652))

(declare-fun m!6221654 () Bool)

(assert (=> b!5169797 m!6221654))

(declare-fun m!6221656 () Bool)

(assert (=> b!5169797 m!6221656))

(assert (=> b!5169797 m!6221654))

(declare-fun m!6221658 () Bool)

(assert (=> b!5169797 m!6221658))

(declare-fun m!6221660 () Bool)

(assert (=> b!5169797 m!6221660))

(declare-fun m!6221662 () Bool)

(assert (=> b!5169797 m!6221662))

(declare-fun m!6221664 () Bool)

(assert (=> b!5169797 m!6221664))

(declare-fun m!6221666 () Bool)

(assert (=> b!5169797 m!6221666))

(declare-fun m!6221668 () Bool)

(assert (=> b!5169797 m!6221668))

(assert (=> b!5169797 m!6221664))

(assert (=> b!5169797 m!6221004))

(declare-fun m!6221670 () Bool)

(assert (=> b!5169797 m!6221670))

(declare-fun m!6221672 () Bool)

(assert (=> b!5169797 m!6221672))

(assert (=> b!5169797 m!6221662))

(declare-fun m!6221674 () Bool)

(assert (=> b!5169797 m!6221674))

(declare-fun m!6221676 () Bool)

(assert (=> b!5169797 m!6221676))

(declare-fun m!6221678 () Bool)

(assert (=> bm!362831 m!6221678))

(declare-fun m!6221680 () Bool)

(assert (=> bm!362834 m!6221680))

(declare-fun m!6221682 () Bool)

(assert (=> bm!362836 m!6221682))

(declare-fun m!6221684 () Bool)

(assert (=> b!5169790 m!6221684))

(assert (=> b!5169790 m!6221670))

(assert (=> bm!362832 m!6220988))

(declare-fun m!6221686 () Bool)

(assert (=> b!5169803 m!6221686))

(assert (=> bm!362833 m!6221652))

(declare-fun m!6221688 () Bool)

(assert (=> d!1668266 m!6221688))

(declare-fun m!6221690 () Bool)

(assert (=> d!1668266 m!6221690))

(assert (=> d!1668266 m!6221688))

(declare-fun m!6221692 () Bool)

(assert (=> d!1668266 m!6221692))

(declare-fun m!6221694 () Bool)

(assert (=> d!1668266 m!6221694))

(declare-fun m!6221696 () Bool)

(assert (=> d!1668266 m!6221696))

(assert (=> d!1668266 m!6221664))

(declare-fun m!6221698 () Bool)

(assert (=> d!1668266 m!6221698))

(declare-fun m!6221700 () Bool)

(assert (=> b!5169793 m!6221700))

(assert (=> bm!362835 m!6221672))

(assert (=> bm!362838 m!6220986))

(declare-fun m!6221702 () Bool)

(assert (=> bm!362837 m!6221702))

(assert (=> bm!362815 d!1668266))

(declare-fun d!1668268 () Bool)

(declare-fun res!2197401 () Bool)

(declare-fun e!3221252 () Bool)

(assert (=> d!1668268 (=> res!2197401 e!3221252)))

(assert (=> d!1668268 (= res!2197401 ((_ is Nil!60055) (exprs!4493 setElem!31924)))))

(assert (=> d!1668268 (= (forall!14125 (exprs!4493 setElem!31924) lambda!258052) e!3221252)))

(declare-fun b!5169804 () Bool)

(declare-fun e!3221253 () Bool)

(assert (=> b!5169804 (= e!3221252 e!3221253)))

(declare-fun res!2197402 () Bool)

(assert (=> b!5169804 (=> (not res!2197402) (not e!3221253))))

(assert (=> b!5169804 (= res!2197402 (dynLambda!23867 lambda!258052 (h!66503 (exprs!4493 setElem!31924))))))

(declare-fun b!5169805 () Bool)

(assert (=> b!5169805 (= e!3221253 (forall!14125 (t!373332 (exprs!4493 setElem!31924)) lambda!258052))))

(assert (= (and d!1668268 (not res!2197401)) b!5169804))

(assert (= (and b!5169804 res!2197402) b!5169805))

(declare-fun b_lambda!200851 () Bool)

(assert (=> (not b_lambda!200851) (not b!5169804)))

(declare-fun m!6221704 () Bool)

(assert (=> b!5169804 m!6221704))

(declare-fun m!6221706 () Bool)

(assert (=> b!5169805 m!6221706))

(assert (=> d!1668118 d!1668268))

(assert (=> d!1668040 d!1668102))

(assert (=> d!1668040 d!1668076))

(declare-fun d!1668270 () Bool)

(assert (=> d!1668270 (<= (size!39645 testedP!294) (size!39645 input!5817))))

(assert (=> d!1668270 true))

(declare-fun _$64!682 () Unit!151618)

(assert (=> d!1668270 (= (choose!38280 testedP!294 input!5817) _$64!682)))

(declare-fun bs!1203338 () Bool)

(assert (= bs!1203338 d!1668270))

(assert (=> bs!1203338 m!6221002))

(assert (=> bs!1203338 m!6221004))

(assert (=> d!1668040 d!1668270))

(assert (=> d!1668040 d!1668116))

(assert (=> bm!362808 d!1668046))

(declare-fun d!1668272 () Bool)

(declare-fun lt!2127592 () Bool)

(declare-datatypes ((List!60182 0))(
  ( (Nil!60058) (Cons!60058 (h!66506 Context!7986) (t!373335 List!60182)) )
))
(declare-fun exists!1910 (List!60182 Int) Bool)

(declare-fun toList!8447 ((InoxSet Context!7986)) List!60182)

(assert (=> d!1668272 (= lt!2127592 (exists!1910 (toList!8447 z!4581) lambda!258051))))

(declare-fun choose!38289 ((InoxSet Context!7986) Int) Bool)

(assert (=> d!1668272 (= lt!2127592 (choose!38289 z!4581 lambda!258051))))

(assert (=> d!1668272 (= (exists!1908 z!4581 lambda!258051) lt!2127592)))

(declare-fun bs!1203339 () Bool)

(assert (= bs!1203339 d!1668272))

(declare-fun m!6221708 () Bool)

(assert (=> bs!1203339 m!6221708))

(assert (=> bs!1203339 m!6221708))

(declare-fun m!6221710 () Bool)

(assert (=> bs!1203339 m!6221710))

(declare-fun m!6221712 () Bool)

(assert (=> bs!1203339 m!6221712))

(assert (=> d!1668112 d!1668272))

(declare-fun d!1668274 () Bool)

(assert (=> d!1668274 (= (isEmpty!32153 (_1!35189 lt!2127439)) ((_ is Nil!60056) (_1!35189 lt!2127439)))))

(assert (=> b!5169609 d!1668274))

(declare-fun d!1668276 () Bool)

(assert (=> d!1668276 (= (isEmpty!32153 (_1!35189 lt!2127459)) ((_ is Nil!60056) (_1!35189 lt!2127459)))))

(assert (=> b!5169655 d!1668276))

(assert (=> b!5169625 d!1668076))

(assert (=> b!5169625 d!1668228))

(declare-fun d!1668278 () Bool)

(assert (=> d!1668278 (= (head!11033 testedP!294) (h!66504 testedP!294))))

(assert (=> b!5169639 d!1668278))

(assert (=> b!5169639 d!1668260))

(declare-fun d!1668280 () Bool)

(declare-fun lt!2127593 () Int)

(assert (=> d!1668280 (>= lt!2127593 0)))

(declare-fun e!3221260 () Int)

(assert (=> d!1668280 (= lt!2127593 e!3221260)))

(declare-fun c!889803 () Bool)

(assert (=> d!1668280 (= c!889803 ((_ is Nil!60056) (t!373333 testedP!294)))))

(assert (=> d!1668280 (= (size!39645 (t!373333 testedP!294)) lt!2127593)))

(declare-fun b!5169810 () Bool)

(assert (=> b!5169810 (= e!3221260 0)))

(declare-fun b!5169811 () Bool)

(assert (=> b!5169811 (= e!3221260 (+ 1 (size!39645 (t!373333 (t!373333 testedP!294)))))))

(assert (= (and d!1668280 c!889803) b!5169810))

(assert (= (and d!1668280 (not c!889803)) b!5169811))

(declare-fun m!6221714 () Bool)

(assert (=> b!5169811 m!6221714))

(assert (=> b!5169621 d!1668280))

(assert (=> bm!362819 d!1668224))

(declare-fun d!1668282 () Bool)

(assert (=> d!1668282 (isPrefix!5742 testedP!294 (++!13133 testedP!294 lt!2127213))))

(declare-fun lt!2127596 () Unit!151618)

(declare-fun choose!38290 (List!60180 List!60180) Unit!151618)

(assert (=> d!1668282 (= lt!2127596 (choose!38290 testedP!294 lt!2127213))))

(assert (=> d!1668282 (= (lemmaConcatTwoListThenFirstIsPrefix!3585 testedP!294 lt!2127213) lt!2127596)))

(declare-fun bs!1203340 () Bool)

(assert (= bs!1203340 d!1668282))

(assert (=> bs!1203340 m!6221220))

(assert (=> bs!1203340 m!6221220))

(assert (=> bs!1203340 m!6221222))

(declare-fun m!6221716 () Bool)

(assert (=> bs!1203340 m!6221716))

(assert (=> d!1668080 d!1668282))

(declare-fun bs!1203351 () Bool)

(declare-fun d!1668284 () Bool)

(assert (= bs!1203351 (and d!1668284 d!1668112)))

(declare-fun lambda!258090 () Int)

(assert (=> bs!1203351 (not (= lambda!258090 lambda!258051))))

(declare-fun bs!1203352 () Bool)

(declare-fun b!5169854 () Bool)

(assert (= bs!1203352 (and b!5169854 d!1668112)))

(declare-fun lambda!258091 () Int)

(assert (=> bs!1203352 (not (= lambda!258091 lambda!258051))))

(declare-fun bs!1203353 () Bool)

(assert (= bs!1203353 (and b!5169854 d!1668284)))

(assert (=> bs!1203353 (not (= lambda!258091 lambda!258090))))

(declare-fun bs!1203355 () Bool)

(declare-fun b!5169855 () Bool)

(assert (= bs!1203355 (and b!5169855 d!1668112)))

(declare-fun lambda!258092 () Int)

(assert (=> bs!1203355 (not (= lambda!258092 lambda!258051))))

(declare-fun bs!1203356 () Bool)

(assert (= bs!1203356 (and b!5169855 d!1668284)))

(assert (=> bs!1203356 (not (= lambda!258092 lambda!258090))))

(declare-fun bs!1203357 () Bool)

(assert (= bs!1203357 (and b!5169855 b!5169854)))

(assert (=> bs!1203357 (= lambda!258092 lambda!258091)))

(declare-fun e!3221291 () Unit!151618)

(declare-fun Unit!151642 () Unit!151618)

(assert (=> b!5169855 (= e!3221291 Unit!151642)))

(declare-fun lt!2127660 () List!60182)

(declare-fun call!362862 () List!60182)

(assert (=> b!5169855 (= lt!2127660 call!362862)))

(declare-fun lt!2127655 () Unit!151618)

(declare-fun lemmaForallThenNotExists!434 (List!60182 Int) Unit!151618)

(assert (=> b!5169855 (= lt!2127655 (lemmaForallThenNotExists!434 lt!2127660 lambda!258090))))

(declare-fun call!362863 () Bool)

(assert (=> b!5169855 (not call!362863)))

(declare-fun lt!2127657 () Unit!151618)

(assert (=> b!5169855 (= lt!2127657 lt!2127655)))

(declare-fun lt!2127659 () List!60182)

(declare-fun bm!362858 () Bool)

(declare-fun c!889827 () Bool)

(assert (=> bm!362858 (= call!362863 (exists!1910 (ite c!889827 lt!2127659 lt!2127660) (ite c!889827 lambda!258091 lambda!258092)))))

(declare-fun bm!362857 () Bool)

(assert (=> bm!362857 (= call!362862 (toList!8447 z!4581))))

(declare-fun Unit!151643 () Unit!151618)

(assert (=> b!5169854 (= e!3221291 Unit!151643)))

(assert (=> b!5169854 (= lt!2127659 call!362862)))

(declare-fun lt!2127656 () Unit!151618)

(declare-fun lemmaNotForallThenExists!467 (List!60182 Int) Unit!151618)

(assert (=> b!5169854 (= lt!2127656 (lemmaNotForallThenExists!467 lt!2127659 lambda!258090))))

(assert (=> b!5169854 call!362863))

(declare-fun lt!2127662 () Unit!151618)

(assert (=> b!5169854 (= lt!2127662 lt!2127656)))

(declare-fun lt!2127658 () Bool)

(declare-datatypes ((Option!14832 0))(
  ( (None!14831) (Some!14831 (v!50860 List!60180)) )
))
(declare-fun isEmpty!32155 (Option!14832) Bool)

(declare-fun getLanguageWitness!1003 ((InoxSet Context!7986)) Option!14832)

(assert (=> d!1668284 (= lt!2127658 (isEmpty!32155 (getLanguageWitness!1003 z!4581)))))

(declare-fun forall!14127 ((InoxSet Context!7986) Int) Bool)

(assert (=> d!1668284 (= lt!2127658 (forall!14127 z!4581 lambda!258090))))

(declare-fun lt!2127661 () Unit!151618)

(assert (=> d!1668284 (= lt!2127661 e!3221291)))

(assert (=> d!1668284 (= c!889827 (not (forall!14127 z!4581 lambda!258090)))))

(assert (=> d!1668284 (= (lostCauseZipper!1324 z!4581) lt!2127658)))

(assert (= (and d!1668284 c!889827) b!5169854))

(assert (= (and d!1668284 (not c!889827)) b!5169855))

(assert (= (or b!5169854 b!5169855) bm!362857))

(assert (= (or b!5169854 b!5169855) bm!362858))

(declare-fun m!6221830 () Bool)

(assert (=> d!1668284 m!6221830))

(assert (=> d!1668284 m!6221830))

(declare-fun m!6221832 () Bool)

(assert (=> d!1668284 m!6221832))

(declare-fun m!6221834 () Bool)

(assert (=> d!1668284 m!6221834))

(assert (=> d!1668284 m!6221834))

(declare-fun m!6221836 () Bool)

(assert (=> bm!362858 m!6221836))

(declare-fun m!6221838 () Bool)

(assert (=> b!5169854 m!6221838))

(declare-fun m!6221840 () Bool)

(assert (=> b!5169855 m!6221840))

(assert (=> bm!362857 m!6221708))

(assert (=> d!1668080 d!1668284))

(assert (=> d!1668080 d!1668078))

(declare-fun b!5169865 () Bool)

(declare-fun e!3221296 () Bool)

(assert (=> b!5169865 (= e!3221296 (>= (size!39645 (++!13133 testedP!294 lt!2127213)) (size!39645 testedP!294)))))

(declare-fun b!5169864 () Bool)

(declare-fun e!3221298 () Bool)

(assert (=> b!5169864 (= e!3221298 (isPrefix!5742 (tail!10142 testedP!294) (tail!10142 (++!13133 testedP!294 lt!2127213))))))

(declare-fun b!5169863 () Bool)

(declare-fun res!2197424 () Bool)

(assert (=> b!5169863 (=> (not res!2197424) (not e!3221298))))

(assert (=> b!5169863 (= res!2197424 (= (head!11033 testedP!294) (head!11033 (++!13133 testedP!294 lt!2127213))))))

(declare-fun b!5169862 () Bool)

(declare-fun e!3221297 () Bool)

(assert (=> b!5169862 (= e!3221297 e!3221298)))

(declare-fun res!2197423 () Bool)

(assert (=> b!5169862 (=> (not res!2197423) (not e!3221298))))

(assert (=> b!5169862 (= res!2197423 (not ((_ is Nil!60056) (++!13133 testedP!294 lt!2127213))))))

(declare-fun d!1668312 () Bool)

(assert (=> d!1668312 e!3221296))

(declare-fun res!2197426 () Bool)

(assert (=> d!1668312 (=> res!2197426 e!3221296)))

(declare-fun lt!2127665 () Bool)

(assert (=> d!1668312 (= res!2197426 (not lt!2127665))))

(assert (=> d!1668312 (= lt!2127665 e!3221297)))

(declare-fun res!2197425 () Bool)

(assert (=> d!1668312 (=> res!2197425 e!3221297)))

(assert (=> d!1668312 (= res!2197425 ((_ is Nil!60056) testedP!294))))

(assert (=> d!1668312 (= (isPrefix!5742 testedP!294 (++!13133 testedP!294 lt!2127213)) lt!2127665)))

(assert (= (and d!1668312 (not res!2197425)) b!5169862))

(assert (= (and b!5169862 res!2197423) b!5169863))

(assert (= (and b!5169863 res!2197424) b!5169864))

(assert (= (and d!1668312 (not res!2197426)) b!5169865))

(assert (=> b!5169865 m!6221220))

(declare-fun m!6221842 () Bool)

(assert (=> b!5169865 m!6221842))

(assert (=> b!5169865 m!6221002))

(assert (=> b!5169864 m!6221260))

(assert (=> b!5169864 m!6221220))

(declare-fun m!6221844 () Bool)

(assert (=> b!5169864 m!6221844))

(assert (=> b!5169864 m!6221260))

(assert (=> b!5169864 m!6221844))

(declare-fun m!6221846 () Bool)

(assert (=> b!5169864 m!6221846))

(assert (=> b!5169863 m!6221264))

(assert (=> b!5169863 m!6221220))

(declare-fun m!6221848 () Bool)

(assert (=> b!5169863 m!6221848))

(assert (=> d!1668080 d!1668312))

(declare-fun d!1668314 () Bool)

(assert (=> d!1668314 (= lt!2127213 lt!2127433)))

(declare-fun lt!2127671 () Unit!151618)

(declare-fun choose!38291 (List!60180 List!60180 List!60180 List!60180 List!60180) Unit!151618)

(assert (=> d!1668314 (= lt!2127671 (choose!38291 testedP!294 lt!2127213 testedP!294 lt!2127433 input!5817))))

(assert (=> d!1668314 (isPrefix!5742 testedP!294 input!5817)))

(assert (=> d!1668314 (= (lemmaSamePrefixThenSameSuffix!2691 testedP!294 lt!2127213 testedP!294 lt!2127433 input!5817) lt!2127671)))

(declare-fun bs!1203359 () Bool)

(assert (= bs!1203359 d!1668314))

(declare-fun m!6221856 () Bool)

(assert (=> bs!1203359 m!6221856))

(assert (=> bs!1203359 m!6220980))

(assert (=> d!1668080 d!1668314))

(declare-fun b!5169871 () Bool)

(declare-fun e!3221302 () List!60180)

(assert (=> b!5169871 (= e!3221302 (Cons!60056 (h!66504 testedP!294) (++!13133 (t!373333 testedP!294) lt!2127213)))))

(declare-fun b!5169873 () Bool)

(declare-fun e!3221301 () Bool)

(declare-fun lt!2127672 () List!60180)

(assert (=> b!5169873 (= e!3221301 (or (not (= lt!2127213 Nil!60056)) (= lt!2127672 testedP!294)))))

(declare-fun b!5169872 () Bool)

(declare-fun res!2197427 () Bool)

(assert (=> b!5169872 (=> (not res!2197427) (not e!3221301))))

(assert (=> b!5169872 (= res!2197427 (= (size!39645 lt!2127672) (+ (size!39645 testedP!294) (size!39645 lt!2127213))))))

(declare-fun b!5169870 () Bool)

(assert (=> b!5169870 (= e!3221302 lt!2127213)))

(declare-fun d!1668318 () Bool)

(assert (=> d!1668318 e!3221301))

(declare-fun res!2197428 () Bool)

(assert (=> d!1668318 (=> (not res!2197428) (not e!3221301))))

(assert (=> d!1668318 (= res!2197428 (= (content!10643 lt!2127672) ((_ map or) (content!10643 testedP!294) (content!10643 lt!2127213))))))

(assert (=> d!1668318 (= lt!2127672 e!3221302)))

(declare-fun c!889831 () Bool)

(assert (=> d!1668318 (= c!889831 ((_ is Nil!60056) testedP!294))))

(assert (=> d!1668318 (= (++!13133 testedP!294 lt!2127213) lt!2127672)))

(assert (= (and d!1668318 c!889831) b!5169870))

(assert (= (and d!1668318 (not c!889831)) b!5169871))

(assert (= (and d!1668318 res!2197428) b!5169872))

(assert (= (and b!5169872 res!2197427) b!5169873))

(declare-fun m!6221862 () Bool)

(assert (=> b!5169871 m!6221862))

(declare-fun m!6221864 () Bool)

(assert (=> b!5169872 m!6221864))

(assert (=> b!5169872 m!6221002))

(declare-fun m!6221866 () Bool)

(assert (=> b!5169872 m!6221866))

(declare-fun m!6221868 () Bool)

(assert (=> d!1668318 m!6221868))

(assert (=> d!1668318 m!6221256))

(declare-fun m!6221870 () Bool)

(assert (=> d!1668318 m!6221870))

(assert (=> d!1668080 d!1668318))

(declare-fun b!5169879 () Bool)

(declare-fun e!3221306 () List!60180)

(assert (=> b!5169879 (= e!3221306 (Cons!60056 (h!66504 (_1!35189 lt!2127424)) (++!13133 (t!373333 (_1!35189 lt!2127424)) (_2!35189 lt!2127424))))))

(declare-fun b!5169883 () Bool)

(declare-fun e!3221305 () Bool)

(declare-fun lt!2127673 () List!60180)

(assert (=> b!5169883 (= e!3221305 (or (not (= (_2!35189 lt!2127424) Nil!60056)) (= lt!2127673 (_1!35189 lt!2127424))))))

(declare-fun b!5169881 () Bool)

(declare-fun res!2197429 () Bool)

(assert (=> b!5169881 (=> (not res!2197429) (not e!3221305))))

(assert (=> b!5169881 (= res!2197429 (= (size!39645 lt!2127673) (+ (size!39645 (_1!35189 lt!2127424)) (size!39645 (_2!35189 lt!2127424)))))))

(declare-fun b!5169878 () Bool)

(assert (=> b!5169878 (= e!3221306 (_2!35189 lt!2127424))))

(declare-fun d!1668322 () Bool)

(assert (=> d!1668322 e!3221305))

(declare-fun res!2197430 () Bool)

(assert (=> d!1668322 (=> (not res!2197430) (not e!3221305))))

(assert (=> d!1668322 (= res!2197430 (= (content!10643 lt!2127673) ((_ map or) (content!10643 (_1!35189 lt!2127424)) (content!10643 (_2!35189 lt!2127424)))))))

(assert (=> d!1668322 (= lt!2127673 e!3221306)))

(declare-fun c!889834 () Bool)

(assert (=> d!1668322 (= c!889834 ((_ is Nil!60056) (_1!35189 lt!2127424)))))

(assert (=> d!1668322 (= (++!13133 (_1!35189 lt!2127424) (_2!35189 lt!2127424)) lt!2127673)))

(assert (= (and d!1668322 c!889834) b!5169878))

(assert (= (and d!1668322 (not c!889834)) b!5169879))

(assert (= (and d!1668322 res!2197430) b!5169881))

(assert (= (and b!5169881 res!2197429) b!5169883))

(declare-fun m!6221880 () Bool)

(assert (=> b!5169879 m!6221880))

(declare-fun m!6221882 () Bool)

(assert (=> b!5169881 m!6221882))

(assert (=> b!5169881 m!6221216))

(declare-fun m!6221884 () Bool)

(assert (=> b!5169881 m!6221884))

(declare-fun m!6221886 () Bool)

(assert (=> d!1668322 m!6221886))

(declare-fun m!6221888 () Bool)

(assert (=> d!1668322 m!6221888))

(declare-fun m!6221890 () Bool)

(assert (=> d!1668322 m!6221890))

(assert (=> d!1668080 d!1668322))

(assert (=> b!5169641 d!1668076))

(assert (=> b!5169641 d!1668102))

(declare-fun b!5169901 () Bool)

(declare-fun e!3221316 () Bool)

(assert (=> b!5169901 (= e!3221316 (>= (size!39645 (++!13133 lt!2127215 (tail!10142 lt!2127213))) (size!39645 lt!2127215)))))

(declare-fun b!5169900 () Bool)

(declare-fun e!3221318 () Bool)

(assert (=> b!5169900 (= e!3221318 (isPrefix!5742 (tail!10142 lt!2127215) (tail!10142 (++!13133 lt!2127215 (tail!10142 lt!2127213)))))))

(declare-fun b!5169899 () Bool)

(declare-fun res!2197434 () Bool)

(assert (=> b!5169899 (=> (not res!2197434) (not e!3221318))))

(assert (=> b!5169899 (= res!2197434 (= (head!11033 lt!2127215) (head!11033 (++!13133 lt!2127215 (tail!10142 lt!2127213)))))))

(declare-fun b!5169898 () Bool)

(declare-fun e!3221317 () Bool)

(assert (=> b!5169898 (= e!3221317 e!3221318)))

(declare-fun res!2197433 () Bool)

(assert (=> b!5169898 (=> (not res!2197433) (not e!3221318))))

(assert (=> b!5169898 (= res!2197433 (not ((_ is Nil!60056) (++!13133 lt!2127215 (tail!10142 lt!2127213)))))))

(declare-fun d!1668332 () Bool)

(assert (=> d!1668332 e!3221316))

(declare-fun res!2197436 () Bool)

(assert (=> d!1668332 (=> res!2197436 e!3221316)))

(declare-fun lt!2127700 () Bool)

(assert (=> d!1668332 (= res!2197436 (not lt!2127700))))

(assert (=> d!1668332 (= lt!2127700 e!3221317)))

(declare-fun res!2197435 () Bool)

(assert (=> d!1668332 (=> res!2197435 e!3221317)))

(assert (=> d!1668332 (= res!2197435 ((_ is Nil!60056) lt!2127215))))

(assert (=> d!1668332 (= (isPrefix!5742 lt!2127215 (++!13133 lt!2127215 (tail!10142 lt!2127213))) lt!2127700)))

(assert (= (and d!1668332 (not res!2197435)) b!5169898))

(assert (= (and b!5169898 res!2197433) b!5169899))

(assert (= (and b!5169899 res!2197434) b!5169900))

(assert (= (and d!1668332 (not res!2197436)) b!5169901))

(assert (=> b!5169901 m!6221302))

(declare-fun m!6221892 () Bool)

(assert (=> b!5169901 m!6221892))

(assert (=> b!5169901 m!6221236))

(assert (=> b!5169900 m!6221238))

(assert (=> b!5169900 m!6221302))

(declare-fun m!6221894 () Bool)

(assert (=> b!5169900 m!6221894))

(assert (=> b!5169900 m!6221238))

(assert (=> b!5169900 m!6221894))

(declare-fun m!6221896 () Bool)

(assert (=> b!5169900 m!6221896))

(assert (=> b!5169899 m!6221242))

(assert (=> b!5169899 m!6221302))

(declare-fun m!6221898 () Bool)

(assert (=> b!5169899 m!6221898))

(assert (=> d!1668122 d!1668332))

(assert (=> d!1668122 d!1668240))

(declare-fun d!1668334 () Bool)

(assert (=> d!1668334 (isPrefix!5742 lt!2127215 (++!13133 lt!2127215 (tail!10142 lt!2127213)))))

(declare-fun lt!2127701 () Unit!151618)

(assert (=> d!1668334 (= lt!2127701 (choose!38290 lt!2127215 (tail!10142 lt!2127213)))))

(assert (=> d!1668334 (= (lemmaConcatTwoListThenFirstIsPrefix!3585 lt!2127215 (tail!10142 lt!2127213)) lt!2127701)))

(declare-fun bs!1203360 () Bool)

(assert (= bs!1203360 d!1668334))

(assert (=> bs!1203360 m!6220996))

(assert (=> bs!1203360 m!6221302))

(assert (=> bs!1203360 m!6221302))

(assert (=> bs!1203360 m!6221304))

(assert (=> bs!1203360 m!6220996))

(declare-fun m!6221900 () Bool)

(assert (=> bs!1203360 m!6221900))

(assert (=> d!1668122 d!1668334))

(declare-fun bs!1203361 () Bool)

(declare-fun d!1668336 () Bool)

(assert (= bs!1203361 (and d!1668336 d!1668112)))

(declare-fun lambda!258093 () Int)

(assert (=> bs!1203361 (not (= lambda!258093 lambda!258051))))

(declare-fun bs!1203362 () Bool)

(assert (= bs!1203362 (and d!1668336 d!1668284)))

(assert (=> bs!1203362 (= lambda!258093 lambda!258090)))

(declare-fun bs!1203363 () Bool)

(assert (= bs!1203363 (and d!1668336 b!5169854)))

(assert (=> bs!1203363 (not (= lambda!258093 lambda!258091))))

(declare-fun bs!1203364 () Bool)

(assert (= bs!1203364 (and d!1668336 b!5169855)))

(assert (=> bs!1203364 (not (= lambda!258093 lambda!258092))))

(declare-fun bs!1203365 () Bool)

(declare-fun b!5169902 () Bool)

(assert (= bs!1203365 (and b!5169902 d!1668336)))

(declare-fun lambda!258094 () Int)

(assert (=> bs!1203365 (not (= lambda!258094 lambda!258093))))

(declare-fun bs!1203366 () Bool)

(assert (= bs!1203366 (and b!5169902 b!5169855)))

(assert (=> bs!1203366 (= lambda!258094 lambda!258092)))

(declare-fun bs!1203367 () Bool)

(assert (= bs!1203367 (and b!5169902 d!1668112)))

(assert (=> bs!1203367 (not (= lambda!258094 lambda!258051))))

(declare-fun bs!1203368 () Bool)

(assert (= bs!1203368 (and b!5169902 d!1668284)))

(assert (=> bs!1203368 (not (= lambda!258094 lambda!258090))))

(declare-fun bs!1203369 () Bool)

(assert (= bs!1203369 (and b!5169902 b!5169854)))

(assert (=> bs!1203369 (= lambda!258094 lambda!258091)))

(declare-fun bs!1203370 () Bool)

(declare-fun b!5169903 () Bool)

(assert (= bs!1203370 (and b!5169903 d!1668336)))

(declare-fun lambda!258095 () Int)

(assert (=> bs!1203370 (not (= lambda!258095 lambda!258093))))

(declare-fun bs!1203371 () Bool)

(assert (= bs!1203371 (and b!5169903 b!5169855)))

(assert (=> bs!1203371 (= lambda!258095 lambda!258092)))

(declare-fun bs!1203372 () Bool)

(assert (= bs!1203372 (and b!5169903 b!5169902)))

(assert (=> bs!1203372 (= lambda!258095 lambda!258094)))

(declare-fun bs!1203373 () Bool)

(assert (= bs!1203373 (and b!5169903 d!1668112)))

(assert (=> bs!1203373 (not (= lambda!258095 lambda!258051))))

(declare-fun bs!1203374 () Bool)

(assert (= bs!1203374 (and b!5169903 d!1668284)))

(assert (=> bs!1203374 (not (= lambda!258095 lambda!258090))))

(declare-fun bs!1203375 () Bool)

(assert (= bs!1203375 (and b!5169903 b!5169854)))

(assert (=> bs!1203375 (= lambda!258095 lambda!258091)))

(declare-fun e!3221319 () Unit!151618)

(declare-fun Unit!151647 () Unit!151618)

(assert (=> b!5169903 (= e!3221319 Unit!151647)))

(declare-fun lt!2127707 () List!60182)

(declare-fun call!362872 () List!60182)

(assert (=> b!5169903 (= lt!2127707 call!362872)))

(declare-fun lt!2127702 () Unit!151618)

(assert (=> b!5169903 (= lt!2127702 (lemmaForallThenNotExists!434 lt!2127707 lambda!258093))))

(declare-fun call!362873 () Bool)

(assert (=> b!5169903 (not call!362873)))

(declare-fun lt!2127704 () Unit!151618)

(assert (=> b!5169903 (= lt!2127704 lt!2127702)))

(declare-fun lt!2127706 () List!60182)

(declare-fun c!889842 () Bool)

(declare-fun bm!362868 () Bool)

(assert (=> bm!362868 (= call!362873 (exists!1910 (ite c!889842 lt!2127706 lt!2127707) (ite c!889842 lambda!258094 lambda!258095)))))

(declare-fun bm!362867 () Bool)

(assert (=> bm!362867 (= call!362872 (toList!8447 (derivationStepZipper!963 z!4581 lt!2127210)))))

(declare-fun Unit!151648 () Unit!151618)

(assert (=> b!5169902 (= e!3221319 Unit!151648)))

(assert (=> b!5169902 (= lt!2127706 call!362872)))

(declare-fun lt!2127703 () Unit!151618)

(assert (=> b!5169902 (= lt!2127703 (lemmaNotForallThenExists!467 lt!2127706 lambda!258093))))

(assert (=> b!5169902 call!362873))

(declare-fun lt!2127709 () Unit!151618)

(assert (=> b!5169902 (= lt!2127709 lt!2127703)))

(declare-fun lt!2127705 () Bool)

(assert (=> d!1668336 (= lt!2127705 (isEmpty!32155 (getLanguageWitness!1003 (derivationStepZipper!963 z!4581 lt!2127210))))))

(assert (=> d!1668336 (= lt!2127705 (forall!14127 (derivationStepZipper!963 z!4581 lt!2127210) lambda!258093))))

(declare-fun lt!2127708 () Unit!151618)

(assert (=> d!1668336 (= lt!2127708 e!3221319)))

(assert (=> d!1668336 (= c!889842 (not (forall!14127 (derivationStepZipper!963 z!4581 lt!2127210) lambda!258093)))))

(assert (=> d!1668336 (= (lostCauseZipper!1324 (derivationStepZipper!963 z!4581 lt!2127210)) lt!2127705)))

(assert (= (and d!1668336 c!889842) b!5169902))

(assert (= (and d!1668336 (not c!889842)) b!5169903))

(assert (= (or b!5169902 b!5169903) bm!362867))

(assert (= (or b!5169902 b!5169903) bm!362868))

(assert (=> d!1668336 m!6220994))

(declare-fun m!6221956 () Bool)

(assert (=> d!1668336 m!6221956))

(assert (=> d!1668336 m!6221956))

(declare-fun m!6221960 () Bool)

(assert (=> d!1668336 m!6221960))

(assert (=> d!1668336 m!6220994))

(declare-fun m!6221964 () Bool)

(assert (=> d!1668336 m!6221964))

(assert (=> d!1668336 m!6220994))

(assert (=> d!1668336 m!6221964))

(declare-fun m!6221968 () Bool)

(assert (=> bm!362868 m!6221968))

(declare-fun m!6221970 () Bool)

(assert (=> b!5169902 m!6221970))

(declare-fun m!6221972 () Bool)

(assert (=> b!5169903 m!6221972))

(assert (=> bm!362867 m!6220994))

(declare-fun m!6221974 () Bool)

(assert (=> bm!362867 m!6221974))

(assert (=> d!1668122 d!1668336))

(declare-fun d!1668344 () Bool)

(assert (=> d!1668344 (= (tail!10142 lt!2127213) lt!2127468)))

(declare-fun lt!2127719 () Unit!151618)

(assert (=> d!1668344 (= lt!2127719 (choose!38291 lt!2127215 (tail!10142 lt!2127213) lt!2127215 lt!2127468 input!5817))))

(assert (=> d!1668344 (isPrefix!5742 lt!2127215 input!5817)))

(assert (=> d!1668344 (= (lemmaSamePrefixThenSameSuffix!2691 lt!2127215 (tail!10142 lt!2127213) lt!2127215 lt!2127468 input!5817) lt!2127719)))

(declare-fun bs!1203377 () Bool)

(assert (= bs!1203377 d!1668344))

(assert (=> bs!1203377 m!6220996))

(declare-fun m!6221976 () Bool)

(assert (=> bs!1203377 m!6221976))

(assert (=> bs!1203377 m!6221022))

(assert (=> d!1668122 d!1668344))

(declare-fun b!5169911 () Bool)

(declare-fun e!3221325 () List!60180)

(assert (=> b!5169911 (= e!3221325 (Cons!60056 (h!66504 lt!2127215) (++!13133 (t!373333 lt!2127215) (tail!10142 lt!2127213))))))

(declare-fun lt!2127720 () List!60180)

(declare-fun b!5169913 () Bool)

(declare-fun e!3221324 () Bool)

(assert (=> b!5169913 (= e!3221324 (or (not (= (tail!10142 lt!2127213) Nil!60056)) (= lt!2127720 lt!2127215)))))

(declare-fun b!5169912 () Bool)

(declare-fun res!2197441 () Bool)

(assert (=> b!5169912 (=> (not res!2197441) (not e!3221324))))

(assert (=> b!5169912 (= res!2197441 (= (size!39645 lt!2127720) (+ (size!39645 lt!2127215) (size!39645 (tail!10142 lt!2127213)))))))

(declare-fun b!5169910 () Bool)

(assert (=> b!5169910 (= e!3221325 (tail!10142 lt!2127213))))

(declare-fun d!1668346 () Bool)

(assert (=> d!1668346 e!3221324))

(declare-fun res!2197442 () Bool)

(assert (=> d!1668346 (=> (not res!2197442) (not e!3221324))))

(assert (=> d!1668346 (= res!2197442 (= (content!10643 lt!2127720) ((_ map or) (content!10643 lt!2127215) (content!10643 (tail!10142 lt!2127213)))))))

(assert (=> d!1668346 (= lt!2127720 e!3221325)))

(declare-fun c!889844 () Bool)

(assert (=> d!1668346 (= c!889844 ((_ is Nil!60056) lt!2127215))))

(assert (=> d!1668346 (= (++!13133 lt!2127215 (tail!10142 lt!2127213)) lt!2127720)))

(assert (= (and d!1668346 c!889844) b!5169910))

(assert (= (and d!1668346 (not c!889844)) b!5169911))

(assert (= (and d!1668346 res!2197442) b!5169912))

(assert (= (and b!5169912 res!2197441) b!5169913))

(assert (=> b!5169911 m!6220996))

(declare-fun m!6221978 () Bool)

(assert (=> b!5169911 m!6221978))

(declare-fun m!6221980 () Bool)

(assert (=> b!5169912 m!6221980))

(assert (=> b!5169912 m!6221236))

(assert (=> b!5169912 m!6220996))

(declare-fun m!6221982 () Bool)

(assert (=> b!5169912 m!6221982))

(declare-fun m!6221984 () Bool)

(assert (=> d!1668346 m!6221984))

(assert (=> d!1668346 m!6221572))

(assert (=> d!1668346 m!6220996))

(declare-fun m!6221986 () Bool)

(assert (=> d!1668346 m!6221986))

(assert (=> d!1668122 d!1668346))

(declare-fun b!5169915 () Bool)

(declare-fun e!3221327 () List!60180)

(assert (=> b!5169915 (= e!3221327 (Cons!60056 (h!66504 (_1!35189 lt!2127459)) (++!13133 (t!373333 (_1!35189 lt!2127459)) (_2!35189 lt!2127459))))))

(declare-fun b!5169917 () Bool)

(declare-fun e!3221326 () Bool)

(declare-fun lt!2127721 () List!60180)

(assert (=> b!5169917 (= e!3221326 (or (not (= (_2!35189 lt!2127459) Nil!60056)) (= lt!2127721 (_1!35189 lt!2127459))))))

(declare-fun b!5169916 () Bool)

(declare-fun res!2197443 () Bool)

(assert (=> b!5169916 (=> (not res!2197443) (not e!3221326))))

(assert (=> b!5169916 (= res!2197443 (= (size!39645 lt!2127721) (+ (size!39645 (_1!35189 lt!2127459)) (size!39645 (_2!35189 lt!2127459)))))))

(declare-fun b!5169914 () Bool)

(assert (=> b!5169914 (= e!3221327 (_2!35189 lt!2127459))))

(declare-fun d!1668348 () Bool)

(assert (=> d!1668348 e!3221326))

(declare-fun res!2197444 () Bool)

(assert (=> d!1668348 (=> (not res!2197444) (not e!3221326))))

(assert (=> d!1668348 (= res!2197444 (= (content!10643 lt!2127721) ((_ map or) (content!10643 (_1!35189 lt!2127459)) (content!10643 (_2!35189 lt!2127459)))))))

(assert (=> d!1668348 (= lt!2127721 e!3221327)))

(declare-fun c!889845 () Bool)

(assert (=> d!1668348 (= c!889845 ((_ is Nil!60056) (_1!35189 lt!2127459)))))

(assert (=> d!1668348 (= (++!13133 (_1!35189 lt!2127459) (_2!35189 lt!2127459)) lt!2127721)))

(assert (= (and d!1668348 c!889845) b!5169914))

(assert (= (and d!1668348 (not c!889845)) b!5169915))

(assert (= (and d!1668348 res!2197444) b!5169916))

(assert (= (and b!5169916 res!2197443) b!5169917))

(declare-fun m!6221988 () Bool)

(assert (=> b!5169915 m!6221988))

(declare-fun m!6221990 () Bool)

(assert (=> b!5169916 m!6221990))

(assert (=> b!5169916 m!6221298))

(declare-fun m!6221992 () Bool)

(assert (=> b!5169916 m!6221992))

(declare-fun m!6221994 () Bool)

(assert (=> d!1668348 m!6221994))

(declare-fun m!6221996 () Bool)

(assert (=> d!1668348 m!6221996))

(declare-fun m!6221998 () Bool)

(assert (=> d!1668348 m!6221998))

(assert (=> d!1668122 d!1668348))

(declare-fun d!1668350 () Bool)

(assert (=> d!1668350 (= (head!11033 lt!2127215) (h!66504 lt!2127215))))

(assert (=> b!5169623 d!1668350))

(assert (=> b!5169623 d!1668260))

(declare-fun b!5169919 () Bool)

(declare-fun e!3221329 () List!60180)

(assert (=> b!5169919 (= e!3221329 (Cons!60056 (h!66504 testedP!294) (++!13133 (t!373333 testedP!294) lt!2127303)))))

(declare-fun e!3221328 () Bool)

(declare-fun b!5169921 () Bool)

(declare-fun lt!2127722 () List!60180)

(assert (=> b!5169921 (= e!3221328 (or (not (= lt!2127303 Nil!60056)) (= lt!2127722 testedP!294)))))

(declare-fun b!5169920 () Bool)

(declare-fun res!2197445 () Bool)

(assert (=> b!5169920 (=> (not res!2197445) (not e!3221328))))

(assert (=> b!5169920 (= res!2197445 (= (size!39645 lt!2127722) (+ (size!39645 testedP!294) (size!39645 lt!2127303))))))

(declare-fun b!5169918 () Bool)

(assert (=> b!5169918 (= e!3221329 lt!2127303)))

(declare-fun d!1668352 () Bool)

(assert (=> d!1668352 e!3221328))

(declare-fun res!2197446 () Bool)

(assert (=> d!1668352 (=> (not res!2197446) (not e!3221328))))

(assert (=> d!1668352 (= res!2197446 (= (content!10643 lt!2127722) ((_ map or) (content!10643 testedP!294) (content!10643 lt!2127303))))))

(assert (=> d!1668352 (= lt!2127722 e!3221329)))

(declare-fun c!889846 () Bool)

(assert (=> d!1668352 (= c!889846 ((_ is Nil!60056) testedP!294))))

(assert (=> d!1668352 (= (++!13133 testedP!294 lt!2127303) lt!2127722)))

(assert (= (and d!1668352 c!889846) b!5169918))

(assert (= (and d!1668352 (not c!889846)) b!5169919))

(assert (= (and d!1668352 res!2197446) b!5169920))

(assert (= (and b!5169920 res!2197445) b!5169921))

(declare-fun m!6222000 () Bool)

(assert (=> b!5169919 m!6222000))

(declare-fun m!6222002 () Bool)

(assert (=> b!5169920 m!6222002))

(assert (=> b!5169920 m!6221002))

(declare-fun m!6222004 () Bool)

(assert (=> b!5169920 m!6222004))

(declare-fun m!6222006 () Bool)

(assert (=> d!1668352 m!6222006))

(assert (=> d!1668352 m!6221256))

(declare-fun m!6222008 () Bool)

(assert (=> d!1668352 m!6222008))

(assert (=> d!1668078 d!1668352))

(assert (=> d!1668078 d!1668076))

(assert (=> d!1668078 d!1668102))

(assert (=> bm!362814 d!1668042))

(declare-fun d!1668354 () Bool)

(declare-fun lt!2127723 () Int)

(assert (=> d!1668354 (>= lt!2127723 0)))

(declare-fun e!3221330 () Int)

(assert (=> d!1668354 (= lt!2127723 e!3221330)))

(declare-fun c!889847 () Bool)

(assert (=> d!1668354 (= c!889847 ((_ is Nil!60056) (_1!35189 lt!2127424)))))

(assert (=> d!1668354 (= (size!39645 (_1!35189 lt!2127424)) lt!2127723)))

(declare-fun b!5169922 () Bool)

(assert (=> b!5169922 (= e!3221330 0)))

(declare-fun b!5169923 () Bool)

(assert (=> b!5169923 (= e!3221330 (+ 1 (size!39645 (t!373333 (_1!35189 lt!2127424)))))))

(assert (= (and d!1668354 c!889847) b!5169922))

(assert (= (and d!1668354 (not c!889847)) b!5169923))

(declare-fun m!6222010 () Bool)

(assert (=> b!5169923 m!6222010))

(assert (=> b!5169606 d!1668354))

(assert (=> b!5169606 d!1668102))

(assert (=> bm!362812 d!1668048))

(declare-fun b!5169925 () Bool)

(declare-fun e!3221332 () List!60180)

(assert (=> b!5169925 (= e!3221332 (Cons!60056 (h!66504 (t!373333 testedP!294)) (++!13133 (t!373333 (t!373333 testedP!294)) (Cons!60056 lt!2127210 Nil!60056))))))

(declare-fun b!5169927 () Bool)

(declare-fun lt!2127724 () List!60180)

(declare-fun e!3221331 () Bool)

(assert (=> b!5169927 (= e!3221331 (or (not (= (Cons!60056 lt!2127210 Nil!60056) Nil!60056)) (= lt!2127724 (t!373333 testedP!294))))))

(declare-fun b!5169926 () Bool)

(declare-fun res!2197447 () Bool)

(assert (=> b!5169926 (=> (not res!2197447) (not e!3221331))))

(assert (=> b!5169926 (= res!2197447 (= (size!39645 lt!2127724) (+ (size!39645 (t!373333 testedP!294)) (size!39645 (Cons!60056 lt!2127210 Nil!60056)))))))

(declare-fun b!5169924 () Bool)

(assert (=> b!5169924 (= e!3221332 (Cons!60056 lt!2127210 Nil!60056))))

(declare-fun d!1668356 () Bool)

(assert (=> d!1668356 e!3221331))

(declare-fun res!2197448 () Bool)

(assert (=> d!1668356 (=> (not res!2197448) (not e!3221331))))

(assert (=> d!1668356 (= res!2197448 (= (content!10643 lt!2127724) ((_ map or) (content!10643 (t!373333 testedP!294)) (content!10643 (Cons!60056 lt!2127210 Nil!60056)))))))

(assert (=> d!1668356 (= lt!2127724 e!3221332)))

(declare-fun c!889848 () Bool)

(assert (=> d!1668356 (= c!889848 ((_ is Nil!60056) (t!373333 testedP!294)))))

(assert (=> d!1668356 (= (++!13133 (t!373333 testedP!294) (Cons!60056 lt!2127210 Nil!60056)) lt!2127724)))

(assert (= (and d!1668356 c!889848) b!5169924))

(assert (= (and d!1668356 (not c!889848)) b!5169925))

(assert (= (and d!1668356 res!2197448) b!5169926))

(assert (= (and b!5169926 res!2197447) b!5169927))

(declare-fun m!6222012 () Bool)

(assert (=> b!5169925 m!6222012))

(declare-fun m!6222014 () Bool)

(assert (=> b!5169926 m!6222014))

(assert (=> b!5169926 m!6221234))

(assert (=> b!5169926 m!6221252))

(declare-fun m!6222016 () Bool)

(assert (=> d!1668356 m!6222016))

(declare-fun m!6222018 () Bool)

(assert (=> d!1668356 m!6222018))

(assert (=> d!1668356 m!6221258))

(assert (=> b!5169635 d!1668356))

(assert (=> bm!362813 d!1668112))

(assert (=> d!1668110 d!1668078))

(declare-fun d!1668358 () Bool)

(assert (=> d!1668358 (= (head!11033 (getSuffix!3392 input!5817 testedP!294)) (h!66504 (getSuffix!3392 input!5817 testedP!294)))))

(assert (=> d!1668110 d!1668358))

(assert (=> d!1668110 d!1668116))

(declare-fun b!5169931 () Bool)

(declare-fun e!3221333 () Bool)

(assert (=> b!5169931 (= e!3221333 (>= (size!39645 input!5817) (size!39645 (++!13133 testedP!294 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056)))))))

(declare-fun b!5169930 () Bool)

(declare-fun e!3221335 () Bool)

(assert (=> b!5169930 (= e!3221335 (isPrefix!5742 (tail!10142 (++!13133 testedP!294 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056))) (tail!10142 input!5817)))))

(declare-fun b!5169929 () Bool)

(declare-fun res!2197450 () Bool)

(assert (=> b!5169929 (=> (not res!2197450) (not e!3221335))))

(assert (=> b!5169929 (= res!2197450 (= (head!11033 (++!13133 testedP!294 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056))) (head!11033 input!5817)))))

(declare-fun b!5169928 () Bool)

(declare-fun e!3221334 () Bool)

(assert (=> b!5169928 (= e!3221334 e!3221335)))

(declare-fun res!2197449 () Bool)

(assert (=> b!5169928 (=> (not res!2197449) (not e!3221335))))

(assert (=> b!5169928 (= res!2197449 (not ((_ is Nil!60056) input!5817)))))

(declare-fun d!1668360 () Bool)

(assert (=> d!1668360 e!3221333))

(declare-fun res!2197452 () Bool)

(assert (=> d!1668360 (=> res!2197452 e!3221333)))

(declare-fun lt!2127725 () Bool)

(assert (=> d!1668360 (= res!2197452 (not lt!2127725))))

(assert (=> d!1668360 (= lt!2127725 e!3221334)))

(declare-fun res!2197451 () Bool)

(assert (=> d!1668360 (=> res!2197451 e!3221334)))

(assert (=> d!1668360 (= res!2197451 ((_ is Nil!60056) (++!13133 testedP!294 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056))))))

(assert (=> d!1668360 (= (isPrefix!5742 (++!13133 testedP!294 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056)) input!5817) lt!2127725)))

(assert (= (and d!1668360 (not res!2197451)) b!5169928))

(assert (= (and b!5169928 res!2197449) b!5169929))

(assert (= (and b!5169929 res!2197450) b!5169930))

(assert (= (and d!1668360 (not res!2197452)) b!5169931))

(assert (=> b!5169931 m!6221004))

(assert (=> b!5169931 m!6221198))

(declare-fun m!6222032 () Bool)

(assert (=> b!5169931 m!6222032))

(assert (=> b!5169930 m!6221198))

(declare-fun m!6222036 () Bool)

(assert (=> b!5169930 m!6222036))

(assert (=> b!5169930 m!6221028))

(assert (=> b!5169930 m!6222036))

(assert (=> b!5169930 m!6221028))

(declare-fun m!6222044 () Bool)

(assert (=> b!5169930 m!6222044))

(assert (=> b!5169929 m!6221198))

(declare-fun m!6222048 () Bool)

(assert (=> b!5169929 m!6222048))

(assert (=> b!5169929 m!6221032))

(assert (=> d!1668110 d!1668360))

(declare-fun d!1668366 () Bool)

(assert (=> d!1668366 (isPrefix!5742 (++!13133 testedP!294 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056)) input!5817)))

(assert (=> d!1668366 true))

(declare-fun _$65!1802 () Unit!151618)

(assert (=> d!1668366 (= (choose!38284 testedP!294 input!5817) _$65!1802)))

(declare-fun bs!1203397 () Bool)

(assert (= bs!1203397 d!1668366))

(assert (=> bs!1203397 m!6221008))

(assert (=> bs!1203397 m!6221008))

(assert (=> bs!1203397 m!6221208))

(assert (=> bs!1203397 m!6221198))

(assert (=> bs!1203397 m!6221198))

(assert (=> bs!1203397 m!6221200))

(assert (=> d!1668110 d!1668366))

(declare-fun b!5169945 () Bool)

(declare-fun e!3221344 () List!60180)

(assert (=> b!5169945 (= e!3221344 (Cons!60056 (h!66504 testedP!294) (++!13133 (t!373333 testedP!294) (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056))))))

(declare-fun e!3221343 () Bool)

(declare-fun b!5169947 () Bool)

(declare-fun lt!2127731 () List!60180)

(assert (=> b!5169947 (= e!3221343 (or (not (= (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056) Nil!60056)) (= lt!2127731 testedP!294)))))

(declare-fun b!5169946 () Bool)

(declare-fun res!2197461 () Bool)

(assert (=> b!5169946 (=> (not res!2197461) (not e!3221343))))

(assert (=> b!5169946 (= res!2197461 (= (size!39645 lt!2127731) (+ (size!39645 testedP!294) (size!39645 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056)))))))

(declare-fun b!5169944 () Bool)

(assert (=> b!5169944 (= e!3221344 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056))))

(declare-fun d!1668376 () Bool)

(assert (=> d!1668376 e!3221343))

(declare-fun res!2197462 () Bool)

(assert (=> d!1668376 (=> (not res!2197462) (not e!3221343))))

(assert (=> d!1668376 (= res!2197462 (= (content!10643 lt!2127731) ((_ map or) (content!10643 testedP!294) (content!10643 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056)))))))

(assert (=> d!1668376 (= lt!2127731 e!3221344)))

(declare-fun c!889851 () Bool)

(assert (=> d!1668376 (= c!889851 ((_ is Nil!60056) testedP!294))))

(assert (=> d!1668376 (= (++!13133 testedP!294 (Cons!60056 (head!11033 (getSuffix!3392 input!5817 testedP!294)) Nil!60056)) lt!2127731)))

(assert (= (and d!1668376 c!889851) b!5169944))

(assert (= (and d!1668376 (not c!889851)) b!5169945))

(assert (= (and d!1668376 res!2197462) b!5169946))

(assert (= (and b!5169946 res!2197461) b!5169947))

(declare-fun m!6222074 () Bool)

(assert (=> b!5169945 m!6222074))

(declare-fun m!6222076 () Bool)

(assert (=> b!5169946 m!6222076))

(assert (=> b!5169946 m!6221002))

(declare-fun m!6222078 () Bool)

(assert (=> b!5169946 m!6222078))

(declare-fun m!6222080 () Bool)

(assert (=> d!1668376 m!6222080))

(assert (=> d!1668376 m!6221256))

(declare-fun m!6222082 () Bool)

(assert (=> d!1668376 m!6222082))

(assert (=> d!1668110 d!1668376))

(declare-fun d!1668380 () Bool)

(declare-fun choose!38294 ((InoxSet Context!7986) Int) (InoxSet Context!7986))

(assert (=> d!1668380 (= (flatMap!442 z!4581 lambda!258055) (choose!38294 z!4581 lambda!258055))))

(declare-fun bs!1203403 () Bool)

(assert (= bs!1203403 d!1668380))

(declare-fun m!6222088 () Bool)

(assert (=> bs!1203403 m!6222088))

(assert (=> d!1668124 d!1668380))

(declare-fun d!1668386 () Bool)

(declare-fun lt!2127734 () Int)

(assert (=> d!1668386 (>= lt!2127734 0)))

(declare-fun e!3221347 () Int)

(assert (=> d!1668386 (= lt!2127734 e!3221347)))

(declare-fun c!889854 () Bool)

(assert (=> d!1668386 (= c!889854 ((_ is Nil!60056) (t!373333 input!5817)))))

(assert (=> d!1668386 (= (size!39645 (t!373333 input!5817)) lt!2127734)))

(declare-fun b!5169952 () Bool)

(assert (=> b!5169952 (= e!3221347 0)))

(declare-fun b!5169953 () Bool)

(assert (=> b!5169953 (= e!3221347 (+ 1 (size!39645 (t!373333 (t!373333 input!5817)))))))

(assert (= (and d!1668386 c!889854) b!5169952))

(assert (= (and d!1668386 (not c!889854)) b!5169953))

(declare-fun m!6222092 () Bool)

(assert (=> b!5169953 m!6222092))

(assert (=> b!5169503 d!1668386))

(declare-fun d!1668392 () Bool)

(declare-fun c!889856 () Bool)

(assert (=> d!1668392 (= c!889856 ((_ is Cons!60056) (t!373333 testedP!294)))))

(declare-fun e!3221350 () (InoxSet Context!7986))

(assert (=> d!1668392 (= (derivationZipper!232 (derivationStepZipper!963 baseZ!62 (h!66504 testedP!294)) (t!373333 testedP!294)) e!3221350)))

(declare-fun b!5169958 () Bool)

(assert (=> b!5169958 (= e!3221350 (derivationZipper!232 (derivationStepZipper!963 (derivationStepZipper!963 baseZ!62 (h!66504 testedP!294)) (h!66504 (t!373333 testedP!294))) (t!373333 (t!373333 testedP!294))))))

(declare-fun b!5169959 () Bool)

(assert (=> b!5169959 (= e!3221350 (derivationStepZipper!963 baseZ!62 (h!66504 testedP!294)))))

(assert (= (and d!1668392 c!889856) b!5169958))

(assert (= (and d!1668392 (not c!889856)) b!5169959))

(assert (=> b!5169958 m!6221086))

(declare-fun m!6222094 () Bool)

(assert (=> b!5169958 m!6222094))

(assert (=> b!5169958 m!6222094))

(declare-fun m!6222098 () Bool)

(assert (=> b!5169958 m!6222098))

(assert (=> b!5169496 d!1668392))

(declare-fun bs!1203404 () Bool)

(declare-fun d!1668394 () Bool)

(assert (= bs!1203404 (and d!1668394 d!1668124)))

(declare-fun lambda!258100 () Int)

(assert (=> bs!1203404 (= (= (h!66504 testedP!294) lt!2127210) (= lambda!258100 lambda!258055))))

(declare-fun bs!1203405 () Bool)

(assert (= bs!1203405 (and d!1668394 d!1668196)))

(assert (=> bs!1203405 (= (= (h!66504 testedP!294) call!362823) (= lambda!258100 lambda!258059))))

(assert (=> d!1668394 true))

(assert (=> d!1668394 (= (derivationStepZipper!963 baseZ!62 (h!66504 testedP!294)) (flatMap!442 baseZ!62 lambda!258100))))

(declare-fun bs!1203406 () Bool)

(assert (= bs!1203406 d!1668394))

(declare-fun m!6222106 () Bool)

(assert (=> bs!1203406 m!6222106))

(assert (=> b!5169496 d!1668394))

(declare-fun bs!1203407 () Bool)

(declare-fun d!1668398 () Bool)

(assert (= bs!1203407 (and d!1668398 d!1668124)))

(declare-fun lambda!258101 () Int)

(assert (=> bs!1203407 (= (= call!362815 lt!2127210) (= lambda!258101 lambda!258055))))

(declare-fun bs!1203408 () Bool)

(assert (= bs!1203408 (and d!1668398 d!1668196)))

(assert (=> bs!1203408 (= (= call!362815 call!362823) (= lambda!258101 lambda!258059))))

(declare-fun bs!1203409 () Bool)

(assert (= bs!1203409 (and d!1668398 d!1668394)))

(assert (=> bs!1203409 (= (= call!362815 (h!66504 testedP!294)) (= lambda!258101 lambda!258100))))

(assert (=> d!1668398 true))

(assert (=> d!1668398 (= (derivationStepZipper!963 z!4581 call!362815) (flatMap!442 z!4581 lambda!258101))))

(declare-fun bs!1203410 () Bool)

(assert (= bs!1203410 d!1668398))

(declare-fun m!6222110 () Bool)

(assert (=> bs!1203410 m!6222110))

(assert (=> bm!362810 d!1668398))

(assert (=> bm!362816 d!1668046))

(declare-fun b!5169965 () Bool)

(declare-fun e!3221352 () Bool)

(assert (=> b!5169965 (= e!3221352 (>= (size!39645 (tail!10142 input!5817)) (size!39645 (tail!10142 input!5817))))))

(declare-fun b!5169964 () Bool)

(declare-fun e!3221354 () Bool)

(assert (=> b!5169964 (= e!3221354 (isPrefix!5742 (tail!10142 (tail!10142 input!5817)) (tail!10142 (tail!10142 input!5817))))))

(declare-fun b!5169963 () Bool)

(declare-fun res!2197466 () Bool)

(assert (=> b!5169963 (=> (not res!2197466) (not e!3221354))))

(assert (=> b!5169963 (= res!2197466 (= (head!11033 (tail!10142 input!5817)) (head!11033 (tail!10142 input!5817))))))

(declare-fun b!5169962 () Bool)

(declare-fun e!3221353 () Bool)

(assert (=> b!5169962 (= e!3221353 e!3221354)))

(declare-fun res!2197465 () Bool)

(assert (=> b!5169962 (=> (not res!2197465) (not e!3221354))))

(assert (=> b!5169962 (= res!2197465 (not ((_ is Nil!60056) (tail!10142 input!5817))))))

(declare-fun d!1668402 () Bool)

(assert (=> d!1668402 e!3221352))

(declare-fun res!2197468 () Bool)

(assert (=> d!1668402 (=> res!2197468 e!3221352)))

(declare-fun lt!2127737 () Bool)

(assert (=> d!1668402 (= res!2197468 (not lt!2127737))))

(assert (=> d!1668402 (= lt!2127737 e!3221353)))

(declare-fun res!2197467 () Bool)

(assert (=> d!1668402 (=> res!2197467 e!3221353)))

(assert (=> d!1668402 (= res!2197467 ((_ is Nil!60056) (tail!10142 input!5817)))))

(assert (=> d!1668402 (= (isPrefix!5742 (tail!10142 input!5817) (tail!10142 input!5817)) lt!2127737)))

(assert (= (and d!1668402 (not res!2197467)) b!5169962))

(assert (= (and b!5169962 res!2197465) b!5169963))

(assert (= (and b!5169963 res!2197466) b!5169964))

(assert (= (and d!1668402 (not res!2197468)) b!5169965))

(assert (=> b!5169965 m!6221028))

(assert (=> b!5169965 m!6221414))

(assert (=> b!5169965 m!6221028))

(assert (=> b!5169965 m!6221414))

(assert (=> b!5169964 m!6221028))

(assert (=> b!5169964 m!6221420))

(assert (=> b!5169964 m!6221028))

(assert (=> b!5169964 m!6221420))

(assert (=> b!5169964 m!6221420))

(assert (=> b!5169964 m!6221420))

(declare-fun m!6222114 () Bool)

(assert (=> b!5169964 m!6222114))

(assert (=> b!5169963 m!6221028))

(assert (=> b!5169963 m!6221428))

(assert (=> b!5169963 m!6221028))

(assert (=> b!5169963 m!6221428))

(assert (=> b!5169430 d!1668402))

(assert (=> b!5169430 d!1668180))

(assert (=> b!5169613 d!1668076))

(assert (=> b!5169613 d!1668376))

(assert (=> b!5169613 d!1668078))

(assert (=> b!5169613 d!1668126))

(assert (=> b!5169613 d!1668358))

(assert (=> b!5169613 d!1668102))

(assert (=> b!5169613 d!1668110))

(declare-fun d!1668406 () Bool)

(assert (=> d!1668406 (= (++!13133 (++!13133 testedP!294 (Cons!60056 lt!2127443 Nil!60056)) lt!2127434) input!5817)))

(declare-fun lt!2127738 () Unit!151618)

(assert (=> d!1668406 (= lt!2127738 (choose!38286 testedP!294 lt!2127443 lt!2127434 input!5817))))

(assert (=> d!1668406 (= (++!13133 testedP!294 (Cons!60056 lt!2127443 lt!2127434)) input!5817)))

(assert (=> d!1668406 (= (lemmaMoveElementToOtherListKeepsConcatEq!1572 testedP!294 lt!2127443 lt!2127434 input!5817) lt!2127738)))

(declare-fun bs!1203411 () Bool)

(assert (= bs!1203411 d!1668406))

(assert (=> bs!1203411 m!6221206))

(assert (=> bs!1203411 m!6221206))

(assert (=> bs!1203411 m!6221210))

(declare-fun m!6222118 () Bool)

(assert (=> bs!1203411 m!6222118))

(declare-fun m!6222122 () Bool)

(assert (=> bs!1203411 m!6222122))

(assert (=> b!5169613 d!1668406))

(assert (=> b!5169613 d!1668360))

(declare-fun e!3221361 () List!60180)

(declare-fun b!5169976 () Bool)

(assert (=> b!5169976 (= e!3221361 (Cons!60056 (h!66504 (++!13133 testedP!294 (Cons!60056 lt!2127443 Nil!60056))) (++!13133 (t!373333 (++!13133 testedP!294 (Cons!60056 lt!2127443 Nil!60056))) lt!2127434)))))

(declare-fun e!3221360 () Bool)

(declare-fun b!5169978 () Bool)

(declare-fun lt!2127739 () List!60180)

(assert (=> b!5169978 (= e!3221360 (or (not (= lt!2127434 Nil!60056)) (= lt!2127739 (++!13133 testedP!294 (Cons!60056 lt!2127443 Nil!60056)))))))

(declare-fun b!5169977 () Bool)

(declare-fun res!2197471 () Bool)

(assert (=> b!5169977 (=> (not res!2197471) (not e!3221360))))

(assert (=> b!5169977 (= res!2197471 (= (size!39645 lt!2127739) (+ (size!39645 (++!13133 testedP!294 (Cons!60056 lt!2127443 Nil!60056))) (size!39645 lt!2127434))))))

(declare-fun b!5169975 () Bool)

(assert (=> b!5169975 (= e!3221361 lt!2127434)))

(declare-fun d!1668408 () Bool)

(assert (=> d!1668408 e!3221360))

(declare-fun res!2197472 () Bool)

(assert (=> d!1668408 (=> (not res!2197472) (not e!3221360))))

(assert (=> d!1668408 (= res!2197472 (= (content!10643 lt!2127739) ((_ map or) (content!10643 (++!13133 testedP!294 (Cons!60056 lt!2127443 Nil!60056))) (content!10643 lt!2127434))))))

(assert (=> d!1668408 (= lt!2127739 e!3221361)))

(declare-fun c!889858 () Bool)

(assert (=> d!1668408 (= c!889858 ((_ is Nil!60056) (++!13133 testedP!294 (Cons!60056 lt!2127443 Nil!60056))))))

(assert (=> d!1668408 (= (++!13133 (++!13133 testedP!294 (Cons!60056 lt!2127443 Nil!60056)) lt!2127434) lt!2127739)))

(assert (= (and d!1668408 c!889858) b!5169975))

(assert (= (and d!1668408 (not c!889858)) b!5169976))

(assert (= (and d!1668408 res!2197472) b!5169977))

(assert (= (and b!5169977 res!2197471) b!5169978))

(declare-fun m!6222124 () Bool)

(assert (=> b!5169976 m!6222124))

(declare-fun m!6222126 () Bool)

(assert (=> b!5169977 m!6222126))

(assert (=> b!5169977 m!6221206))

(declare-fun m!6222128 () Bool)

(assert (=> b!5169977 m!6222128))

(declare-fun m!6222130 () Bool)

(assert (=> b!5169977 m!6222130))

(declare-fun m!6222132 () Bool)

(assert (=> d!1668408 m!6222132))

(assert (=> d!1668408 m!6221206))

(declare-fun m!6222134 () Bool)

(assert (=> d!1668408 m!6222134))

(declare-fun m!6222136 () Bool)

(assert (=> d!1668408 m!6222136))

(assert (=> b!5169613 d!1668408))

(declare-fun b!5169984 () Bool)

(declare-fun e!3221363 () List!60180)

(assert (=> b!5169984 (= e!3221363 (Cons!60056 (h!66504 testedP!294) (++!13133 (t!373333 testedP!294) (Cons!60056 (head!11033 lt!2127213) Nil!60056))))))

(declare-fun lt!2127740 () List!60180)

(declare-fun b!5169986 () Bool)

(declare-fun e!3221362 () Bool)

(assert (=> b!5169986 (= e!3221362 (or (not (= (Cons!60056 (head!11033 lt!2127213) Nil!60056) Nil!60056)) (= lt!2127740 testedP!294)))))

(declare-fun b!5169985 () Bool)

(declare-fun res!2197473 () Bool)

(assert (=> b!5169985 (=> (not res!2197473) (not e!3221362))))

(assert (=> b!5169985 (= res!2197473 (= (size!39645 lt!2127740) (+ (size!39645 testedP!294) (size!39645 (Cons!60056 (head!11033 lt!2127213) Nil!60056)))))))

(declare-fun b!5169983 () Bool)

(assert (=> b!5169983 (= e!3221363 (Cons!60056 (head!11033 lt!2127213) Nil!60056))))

(declare-fun d!1668410 () Bool)

(assert (=> d!1668410 e!3221362))

(declare-fun res!2197474 () Bool)

(assert (=> d!1668410 (=> (not res!2197474) (not e!3221362))))

(assert (=> d!1668410 (= res!2197474 (= (content!10643 lt!2127740) ((_ map or) (content!10643 testedP!294) (content!10643 (Cons!60056 (head!11033 lt!2127213) Nil!60056)))))))

(assert (=> d!1668410 (= lt!2127740 e!3221363)))

(declare-fun c!889859 () Bool)

(assert (=> d!1668410 (= c!889859 ((_ is Nil!60056) testedP!294))))

(assert (=> d!1668410 (= (++!13133 testedP!294 (Cons!60056 (head!11033 lt!2127213) Nil!60056)) lt!2127740)))

(assert (= (and d!1668410 c!889859) b!5169983))

(assert (= (and d!1668410 (not c!889859)) b!5169984))

(assert (= (and d!1668410 res!2197474) b!5169985))

(assert (= (and b!5169985 res!2197473) b!5169986))

(declare-fun m!6222138 () Bool)

(assert (=> b!5169984 m!6222138))

(declare-fun m!6222140 () Bool)

(assert (=> b!5169985 m!6222140))

(assert (=> b!5169985 m!6221002))

(declare-fun m!6222142 () Bool)

(assert (=> b!5169985 m!6222142))

(declare-fun m!6222144 () Bool)

(assert (=> d!1668410 m!6222144))

(assert (=> d!1668410 m!6221256))

(declare-fun m!6222146 () Bool)

(assert (=> d!1668410 m!6222146))

(assert (=> b!5169613 d!1668410))

(assert (=> b!5169613 d!1668040))

(declare-fun b!5169993 () Bool)

(declare-fun e!3221367 () List!60180)

(assert (=> b!5169993 (= e!3221367 (Cons!60056 (h!66504 testedP!294) (++!13133 (t!373333 testedP!294) (Cons!60056 lt!2127443 Nil!60056))))))

(declare-fun e!3221366 () Bool)

(declare-fun lt!2127741 () List!60180)

(declare-fun b!5169995 () Bool)

(assert (=> b!5169995 (= e!3221366 (or (not (= (Cons!60056 lt!2127443 Nil!60056) Nil!60056)) (= lt!2127741 testedP!294)))))

(declare-fun b!5169994 () Bool)

(declare-fun res!2197475 () Bool)

(assert (=> b!5169994 (=> (not res!2197475) (not e!3221366))))

(assert (=> b!5169994 (= res!2197475 (= (size!39645 lt!2127741) (+ (size!39645 testedP!294) (size!39645 (Cons!60056 lt!2127443 Nil!60056)))))))

(declare-fun b!5169992 () Bool)

(assert (=> b!5169992 (= e!3221367 (Cons!60056 lt!2127443 Nil!60056))))

(declare-fun d!1668412 () Bool)

(assert (=> d!1668412 e!3221366))

(declare-fun res!2197476 () Bool)

(assert (=> d!1668412 (=> (not res!2197476) (not e!3221366))))

(assert (=> d!1668412 (= res!2197476 (= (content!10643 lt!2127741) ((_ map or) (content!10643 testedP!294) (content!10643 (Cons!60056 lt!2127443 Nil!60056)))))))

(assert (=> d!1668412 (= lt!2127741 e!3221367)))

(declare-fun c!889860 () Bool)

(assert (=> d!1668412 (= c!889860 ((_ is Nil!60056) testedP!294))))

(assert (=> d!1668412 (= (++!13133 testedP!294 (Cons!60056 lt!2127443 Nil!60056)) lt!2127741)))

(assert (= (and d!1668412 c!889860) b!5169992))

(assert (= (and d!1668412 (not c!889860)) b!5169993))

(assert (= (and d!1668412 res!2197476) b!5169994))

(assert (= (and b!5169994 res!2197475) b!5169995))

(declare-fun m!6222148 () Bool)

(assert (=> b!5169993 m!6222148))

(declare-fun m!6222150 () Bool)

(assert (=> b!5169994 m!6222150))

(assert (=> b!5169994 m!6221002))

(declare-fun m!6222152 () Bool)

(assert (=> b!5169994 m!6222152))

(declare-fun m!6222154 () Bool)

(assert (=> d!1668412 m!6222154))

(assert (=> d!1668412 m!6221256))

(declare-fun m!6222158 () Bool)

(assert (=> d!1668412 m!6222158))

(assert (=> b!5169613 d!1668412))

(assert (=> b!5169613 d!1668108))

(assert (=> bm!362809 d!1668108))

(declare-fun d!1668414 () Bool)

(assert (=> d!1668414 (= (isEmpty!32153 (_1!35189 lt!2127474)) ((_ is Nil!60056) (_1!35189 lt!2127474)))))

(assert (=> b!5169645 d!1668414))

(assert (=> bm!362822 d!1668042))

(declare-fun d!1668416 () Bool)

(declare-fun lt!2127742 () Int)

(assert (=> d!1668416 (>= lt!2127742 0)))

(declare-fun e!3221372 () Int)

(assert (=> d!1668416 (= lt!2127742 e!3221372)))

(declare-fun c!889861 () Bool)

(assert (=> d!1668416 (= c!889861 ((_ is Nil!60056) (_1!35189 lt!2127459)))))

(assert (=> d!1668416 (= (size!39645 (_1!35189 lt!2127459)) lt!2127742)))

(declare-fun b!5170000 () Bool)

(assert (=> b!5170000 (= e!3221372 0)))

(declare-fun b!5170001 () Bool)

(assert (=> b!5170001 (= e!3221372 (+ 1 (size!39645 (t!373333 (_1!35189 lt!2127459)))))))

(assert (= (and d!1668416 c!889861) b!5170000))

(assert (= (and d!1668416 (not c!889861)) b!5170001))

(declare-fun m!6222160 () Bool)

(assert (=> b!5170001 m!6222160))

(assert (=> b!5169642 d!1668416))

(assert (=> b!5169642 d!1668228))

(declare-fun bs!1203412 () Bool)

(declare-fun d!1668418 () Bool)

(assert (= bs!1203412 (and d!1668418 d!1668050)))

(declare-fun lambda!258102 () Int)

(assert (=> bs!1203412 (= lambda!258102 lambda!258044)))

(declare-fun bs!1203413 () Bool)

(assert (= bs!1203413 (and d!1668418 d!1668118)))

(assert (=> bs!1203413 (= lambda!258102 lambda!258052)))

(declare-fun bs!1203414 () Bool)

(assert (= bs!1203414 (and d!1668418 d!1668264)))

(assert (=> bs!1203414 (= lambda!258102 lambda!258062)))

(assert (=> d!1668418 (= (inv!79769 setElem!31932) (forall!14125 (exprs!4493 setElem!31932) lambda!258102))))

(declare-fun bs!1203416 () Bool)

(assert (= bs!1203416 d!1668418))

(declare-fun m!6222162 () Bool)

(assert (=> bs!1203416 m!6222162))

(assert (=> setNonEmpty!31932 d!1668418))

(declare-fun bs!1203418 () Bool)

(declare-fun d!1668422 () Bool)

(assert (= bs!1203418 (and d!1668422 d!1668336)))

(declare-fun lambda!258103 () Int)

(assert (=> bs!1203418 (not (= lambda!258103 lambda!258093))))

(declare-fun bs!1203419 () Bool)

(assert (= bs!1203419 (and d!1668422 b!5169855)))

(assert (=> bs!1203419 (not (= lambda!258103 lambda!258092))))

(declare-fun bs!1203420 () Bool)

(assert (= bs!1203420 (and d!1668422 b!5169902)))

(assert (=> bs!1203420 (not (= lambda!258103 lambda!258094))))

(declare-fun bs!1203421 () Bool)

(assert (= bs!1203421 (and d!1668422 b!5169903)))

(assert (=> bs!1203421 (not (= lambda!258103 lambda!258095))))

(declare-fun bs!1203422 () Bool)

(assert (= bs!1203422 (and d!1668422 d!1668112)))

(assert (=> bs!1203422 (= lambda!258103 lambda!258051)))

(declare-fun bs!1203423 () Bool)

(assert (= bs!1203423 (and d!1668422 d!1668284)))

(assert (=> bs!1203423 (not (= lambda!258103 lambda!258090))))

(declare-fun bs!1203424 () Bool)

(assert (= bs!1203424 (and d!1668422 b!5169854)))

(assert (=> bs!1203424 (not (= lambda!258103 lambda!258091))))

(assert (=> d!1668422 (= (nullableZipper!1155 (derivationStepZipper!963 z!4581 lt!2127210)) (exists!1908 (derivationStepZipper!963 z!4581 lt!2127210) lambda!258103))))

(declare-fun bs!1203425 () Bool)

(assert (= bs!1203425 d!1668422))

(assert (=> bs!1203425 m!6220994))

(declare-fun m!6222168 () Bool)

(assert (=> bs!1203425 m!6222168))

(assert (=> bm!362821 d!1668422))

(declare-fun d!1668426 () Bool)

(declare-fun c!889864 () Bool)

(assert (=> d!1668426 (= c!889864 ((_ is Nil!60056) lt!2127451))))

(declare-fun e!3221378 () (InoxSet C!29488))

(assert (=> d!1668426 (= (content!10643 lt!2127451) e!3221378)))

(declare-fun b!5170012 () Bool)

(assert (=> b!5170012 (= e!3221378 ((as const (Array C!29488 Bool)) false))))

(declare-fun b!5170013 () Bool)

(assert (=> b!5170013 (= e!3221378 ((_ map or) (store ((as const (Array C!29488 Bool)) false) (h!66504 lt!2127451) true) (content!10643 (t!373333 lt!2127451))))))

(assert (= (and d!1668426 c!889864) b!5170012))

(assert (= (and d!1668426 (not c!889864)) b!5170013))

(declare-fun m!6222170 () Bool)

(assert (=> b!5170013 m!6222170))

(declare-fun m!6222172 () Bool)

(assert (=> b!5170013 m!6222172))

(assert (=> d!1668114 d!1668426))

(declare-fun d!1668428 () Bool)

(declare-fun c!889865 () Bool)

(assert (=> d!1668428 (= c!889865 ((_ is Nil!60056) testedP!294))))

(declare-fun e!3221379 () (InoxSet C!29488))

(assert (=> d!1668428 (= (content!10643 testedP!294) e!3221379)))

(declare-fun b!5170014 () Bool)

(assert (=> b!5170014 (= e!3221379 ((as const (Array C!29488 Bool)) false))))

(declare-fun b!5170015 () Bool)

(assert (=> b!5170015 (= e!3221379 ((_ map or) (store ((as const (Array C!29488 Bool)) false) (h!66504 testedP!294) true) (content!10643 (t!373333 testedP!294))))))

(assert (= (and d!1668428 c!889865) b!5170014))

(assert (= (and d!1668428 (not c!889865)) b!5170015))

(declare-fun m!6222174 () Bool)

(assert (=> b!5170015 m!6222174))

(assert (=> b!5170015 m!6222018))

(assert (=> d!1668114 d!1668428))

(declare-fun d!1668430 () Bool)

(declare-fun c!889866 () Bool)

(assert (=> d!1668430 (= c!889866 ((_ is Nil!60056) (Cons!60056 lt!2127210 Nil!60056)))))

(declare-fun e!3221380 () (InoxSet C!29488))

(assert (=> d!1668430 (= (content!10643 (Cons!60056 lt!2127210 Nil!60056)) e!3221380)))

(declare-fun b!5170016 () Bool)

(assert (=> b!5170016 (= e!3221380 ((as const (Array C!29488 Bool)) false))))

(declare-fun b!5170017 () Bool)

(assert (=> b!5170017 (= e!3221380 ((_ map or) (store ((as const (Array C!29488 Bool)) false) (h!66504 (Cons!60056 lt!2127210 Nil!60056)) true) (content!10643 (t!373333 (Cons!60056 lt!2127210 Nil!60056)))))))

(assert (= (and d!1668430 c!889866) b!5170016))

(assert (= (and d!1668430 (not c!889866)) b!5170017))

(declare-fun m!6222176 () Bool)

(assert (=> b!5170017 m!6222176))

(declare-fun m!6222178 () Bool)

(assert (=> b!5170017 m!6222178))

(assert (=> d!1668114 d!1668430))

(declare-fun b!5170018 () Bool)

(declare-fun e!3221381 () Bool)

(declare-fun tp!1450374 () Bool)

(assert (=> b!5170018 (= e!3221381 (and tp_is_empty!38471 tp!1450374))))

(assert (=> b!5169667 (= tp!1450328 e!3221381)))

(assert (= (and b!5169667 ((_ is Cons!60056) (t!373333 (t!373333 testedP!294)))) b!5170018))

(declare-fun b!5170030 () Bool)

(declare-fun e!3221384 () Bool)

(declare-fun tp!1450387 () Bool)

(declare-fun tp!1450388 () Bool)

(assert (=> b!5170030 (= e!3221384 (and tp!1450387 tp!1450388))))

(declare-fun b!5170029 () Bool)

(assert (=> b!5170029 (= e!3221384 tp_is_empty!38471)))

(declare-fun b!5170032 () Bool)

(declare-fun tp!1450389 () Bool)

(declare-fun tp!1450386 () Bool)

(assert (=> b!5170032 (= e!3221384 (and tp!1450389 tp!1450386))))

(declare-fun b!5170031 () Bool)

(declare-fun tp!1450385 () Bool)

(assert (=> b!5170031 (= e!3221384 tp!1450385)))

(assert (=> b!5169662 (= tp!1450324 e!3221384)))

(assert (= (and b!5169662 ((_ is ElementMatch!14609) (h!66503 (exprs!4493 setElem!31924)))) b!5170029))

(assert (= (and b!5169662 ((_ is Concat!23454) (h!66503 (exprs!4493 setElem!31924)))) b!5170030))

(assert (= (and b!5169662 ((_ is Star!14609) (h!66503 (exprs!4493 setElem!31924)))) b!5170031))

(assert (= (and b!5169662 ((_ is Union!14609) (h!66503 (exprs!4493 setElem!31924)))) b!5170032))

(declare-fun b!5170033 () Bool)

(declare-fun e!3221385 () Bool)

(declare-fun tp!1450390 () Bool)

(declare-fun tp!1450391 () Bool)

(assert (=> b!5170033 (= e!3221385 (and tp!1450390 tp!1450391))))

(assert (=> b!5169662 (= tp!1450325 e!3221385)))

(assert (= (and b!5169662 ((_ is Cons!60055) (t!373332 (exprs!4493 setElem!31924)))) b!5170033))

(declare-fun condSetEmpty!31935 () Bool)

(assert (=> setNonEmpty!31932 (= condSetEmpty!31935 (= setRest!31932 ((as const (Array Context!7986 Bool)) false)))))

(declare-fun setRes!31935 () Bool)

(assert (=> setNonEmpty!31932 (= tp!1450337 setRes!31935)))

(declare-fun setIsEmpty!31935 () Bool)

(assert (=> setIsEmpty!31935 setRes!31935))

(declare-fun setElem!31935 () Context!7986)

(declare-fun e!3221386 () Bool)

(declare-fun tp!1450392 () Bool)

(declare-fun setNonEmpty!31935 () Bool)

(assert (=> setNonEmpty!31935 (= setRes!31935 (and tp!1450392 (inv!79769 setElem!31935) e!3221386))))

(declare-fun setRest!31935 () (InoxSet Context!7986))

(assert (=> setNonEmpty!31935 (= setRest!31932 ((_ map or) (store ((as const (Array Context!7986 Bool)) false) setElem!31935 true) setRest!31935))))

(declare-fun b!5170034 () Bool)

(declare-fun tp!1450393 () Bool)

(assert (=> b!5170034 (= e!3221386 tp!1450393)))

(assert (= (and setNonEmpty!31932 condSetEmpty!31935) setIsEmpty!31935))

(assert (= (and setNonEmpty!31932 (not condSetEmpty!31935)) setNonEmpty!31935))

(assert (= setNonEmpty!31935 b!5170034))

(declare-fun m!6222180 () Bool)

(assert (=> setNonEmpty!31935 m!6222180))

(declare-fun condSetEmpty!31936 () Bool)

(assert (=> setNonEmpty!31931 (= condSetEmpty!31936 (= setRest!31931 ((as const (Array Context!7986 Bool)) false)))))

(declare-fun setRes!31936 () Bool)

(assert (=> setNonEmpty!31931 (= tp!1450333 setRes!31936)))

(declare-fun setIsEmpty!31936 () Bool)

(assert (=> setIsEmpty!31936 setRes!31936))

(declare-fun setElem!31936 () Context!7986)

(declare-fun e!3221387 () Bool)

(declare-fun tp!1450394 () Bool)

(declare-fun setNonEmpty!31936 () Bool)

(assert (=> setNonEmpty!31936 (= setRes!31936 (and tp!1450394 (inv!79769 setElem!31936) e!3221387))))

(declare-fun setRest!31936 () (InoxSet Context!7986))

(assert (=> setNonEmpty!31936 (= setRest!31931 ((_ map or) (store ((as const (Array Context!7986 Bool)) false) setElem!31936 true) setRest!31936))))

(declare-fun b!5170035 () Bool)

(declare-fun tp!1450395 () Bool)

(assert (=> b!5170035 (= e!3221387 tp!1450395)))

(assert (= (and setNonEmpty!31931 condSetEmpty!31936) setIsEmpty!31936))

(assert (= (and setNonEmpty!31931 (not condSetEmpty!31936)) setNonEmpty!31936))

(assert (= setNonEmpty!31936 b!5170035))

(declare-fun m!6222182 () Bool)

(assert (=> setNonEmpty!31936 m!6222182))

(declare-fun b!5170036 () Bool)

(declare-fun e!3221388 () Bool)

(declare-fun tp!1450396 () Bool)

(assert (=> b!5170036 (= e!3221388 (and tp_is_empty!38471 tp!1450396))))

(assert (=> b!5169675 (= tp!1450339 e!3221388)))

(assert (= (and b!5169675 ((_ is Cons!60056) (t!373333 (t!373333 input!5817)))) b!5170036))

(declare-fun b!5170037 () Bool)

(declare-fun e!3221389 () Bool)

(declare-fun tp!1450397 () Bool)

(declare-fun tp!1450398 () Bool)

(assert (=> b!5170037 (= e!3221389 (and tp!1450397 tp!1450398))))

(assert (=> b!5169674 (= tp!1450338 e!3221389)))

(assert (= (and b!5169674 ((_ is Cons!60055) (exprs!4493 setElem!31932))) b!5170037))

(declare-fun b!5170038 () Bool)

(declare-fun e!3221390 () Bool)

(declare-fun tp!1450399 () Bool)

(declare-fun tp!1450400 () Bool)

(assert (=> b!5170038 (= e!3221390 (and tp!1450399 tp!1450400))))

(assert (=> b!5169672 (= tp!1450334 e!3221390)))

(assert (= (and b!5169672 ((_ is Cons!60055) (exprs!4493 setElem!31931))) b!5170038))

(declare-fun b!5170040 () Bool)

(declare-fun e!3221391 () Bool)

(declare-fun tp!1450403 () Bool)

(declare-fun tp!1450404 () Bool)

(assert (=> b!5170040 (= e!3221391 (and tp!1450403 tp!1450404))))

(declare-fun b!5170039 () Bool)

(assert (=> b!5170039 (= e!3221391 tp_is_empty!38471)))

(declare-fun b!5170042 () Bool)

(declare-fun tp!1450405 () Bool)

(declare-fun tp!1450402 () Bool)

(assert (=> b!5170042 (= e!3221391 (and tp!1450405 tp!1450402))))

(declare-fun b!5170041 () Bool)

(declare-fun tp!1450401 () Bool)

(assert (=> b!5170041 (= e!3221391 tp!1450401)))

(assert (=> b!5169673 (= tp!1450335 e!3221391)))

(assert (= (and b!5169673 ((_ is ElementMatch!14609) (h!66503 (exprs!4493 setElem!31923)))) b!5170039))

(assert (= (and b!5169673 ((_ is Concat!23454) (h!66503 (exprs!4493 setElem!31923)))) b!5170040))

(assert (= (and b!5169673 ((_ is Star!14609) (h!66503 (exprs!4493 setElem!31923)))) b!5170041))

(assert (= (and b!5169673 ((_ is Union!14609) (h!66503 (exprs!4493 setElem!31923)))) b!5170042))

(declare-fun b!5170043 () Bool)

(declare-fun e!3221392 () Bool)

(declare-fun tp!1450406 () Bool)

(declare-fun tp!1450407 () Bool)

(assert (=> b!5170043 (= e!3221392 (and tp!1450406 tp!1450407))))

(assert (=> b!5169673 (= tp!1450336 e!3221392)))

(assert (= (and b!5169673 ((_ is Cons!60055) (t!373332 (exprs!4493 setElem!31923)))) b!5170043))

(declare-fun b_lambda!200861 () Bool)

(assert (= b_lambda!200849 (or d!1668050 b_lambda!200861)))

(declare-fun bs!1203426 () Bool)

(declare-fun d!1668432 () Bool)

(assert (= bs!1203426 (and d!1668432 d!1668050)))

(declare-fun validRegex!6395 (Regex!14609) Bool)

(assert (=> bs!1203426 (= (dynLambda!23867 lambda!258044 (h!66503 (exprs!4493 setElem!31923))) (validRegex!6395 (h!66503 (exprs!4493 setElem!31923))))))

(declare-fun m!6222184 () Bool)

(assert (=> bs!1203426 m!6222184))

(assert (=> b!5169788 d!1668432))

(declare-fun b_lambda!200863 () Bool)

(assert (= b_lambda!200851 (or d!1668118 b_lambda!200863)))

(declare-fun bs!1203427 () Bool)

(declare-fun d!1668434 () Bool)

(assert (= bs!1203427 (and d!1668434 d!1668118)))

(assert (=> bs!1203427 (= (dynLambda!23867 lambda!258052 (h!66503 (exprs!4493 setElem!31924))) (validRegex!6395 (h!66503 (exprs!4493 setElem!31924))))))

(declare-fun m!6222186 () Bool)

(assert (=> bs!1203427 m!6222186))

(assert (=> b!5169804 d!1668434))

(check-sat (not d!1668252) (not b!5169789) (not d!1668264) (not bm!362835) (not b!5169709) (not b!5169919) (not b!5170018) (not b!5169782) (not b!5169984) (not b!5169977) (not b!5169930) (not bs!1203426) (not bm!362823) (not b!5169717) (not b!5169772) (not b!5169993) (not bm!362867) (not d!1668408) (not b!5170032) (not b!5169926) (not bm!362826) (not b!5170040) (not bs!1203427) (not bm!362825) (not b!5169790) (not d!1668236) (not d!1668336) (not b!5169767) (not b!5169903) (not b!5169749) (not b!5169760) (not d!1668284) (not d!1668258) (not d!1668314) (not d!1668272) (not b!5169916) (not b!5170013) (not b!5170038) (not b!5169881) (not d!1668230) (not bm!362868) (not b!5169710) (not b!5169871) (not b!5169771) (not b!5170017) (not b!5169920) (not d!1668406) (not bm!362838) (not d!1668394) (not bm!362834) (not b!5169797) tp_is_empty!38471 (not b!5170036) (not b!5169855) (not b!5170043) (not d!1668356) (not b!5169879) (not b!5169963) (not b!5169811) (not bm!362824) (not bm!362829) (not b!5169901) (not d!1668322) (not bm!362857) (not d!1668376) (not b!5169872) (not b!5170030) (not d!1668220) (not bm!362833) (not d!1668422) (not bm!362837) (not d!1668242) (not bm!362830) (not d!1668250) (not b!5169946) (not d!1668348) (not b!5169805) (not b!5169912) (not d!1668192) (not b!5170033) (not b!5169915) (not b!5169958) (not b!5169757) (not d!1668346) (not bm!362831) (not bm!362828) (not b!5169781) (not b!5170037) (not d!1668352) (not b!5169923) (not b!5169864) (not b!5169953) (not b!5169803) (not b!5169742) (not b!5169783) (not b!5169793) (not b!5169741) (not b!5169751) (not b!5170015) (not b!5169711) (not b!5169777) (not b!5170035) (not b_lambda!200861) (not d!1668398) (not d!1668366) (not d!1668182) (not bm!362832) (not b!5170034) (not b!5169900) (not b!5169925) (not b!5169759) (not d!1668418) (not setNonEmpty!31936) (not d!1668282) (not d!1668412) (not b!5169774) (not b!5169778) (not d!1668212) (not d!1668318) (not b!5169865) (not b!5169976) (not d!1668196) (not b!5169931) (not b!5170041) (not b!5169965) (not d!1668334) (not d!1668344) (not d!1668234) (not b!5170042) (not b!5169945) (not b!5170031) (not d!1668266) (not b!5169727) (not bm!362858) (not d!1668270) (not b!5169899) (not b!5169964) (not b!5169911) (not b!5169985) (not setNonEmpty!31935) (not b!5169863) (not b!5169739) (not b!5170001) (not b!5169994) (not b!5169854) (not b!5169721) (not d!1668410) (not bm!362836) (not b!5169902) (not d!1668240) (not b!5169740) (not b_lambda!200863) (not bm!362827) (not b!5169929) (not b!5169714) (not b!5169768) (not d!1668380))
(check-sat)
