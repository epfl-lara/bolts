; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547544 () Bool)

(assert start!547544)

(declare-fun setIsEmpty!32087 () Bool)

(declare-fun setRes!32088 () Bool)

(assert (=> setIsEmpty!32087 setRes!32088))

(declare-fun b!5172248 () Bool)

(declare-fun e!3222827 () Bool)

(declare-fun e!3222828 () Bool)

(assert (=> b!5172248 (= e!3222827 e!3222828)))

(declare-fun res!2198327 () Bool)

(assert (=> b!5172248 (=> (not res!2198327) (not e!3222828))))

(declare-datatypes ((C!29528 0))(
  ( (C!29529 (val!24466 Int)) )
))
(declare-datatypes ((List!60225 0))(
  ( (Nil!60101) (Cons!60101 (h!66549 C!29528) (t!373378 List!60225)) )
))
(declare-fun input!5817 () List!60225)

(declare-fun lt!2129703 () Int)

(declare-fun lt!2129710 () Int)

(declare-fun lt!2129708 () List!60225)

(declare-fun testedP!294 () List!60225)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14629 0))(
  ( (ElementMatch!14629 (c!890398 C!29528)) (Concat!23474 (regOne!29770 Regex!14629) (regTwo!29770 Regex!14629)) (EmptyExpr!14629) (Star!14629 (reg!14958 Regex!14629)) (EmptyLang!14629) (Union!14629 (regOne!29771 Regex!14629) (regTwo!29771 Regex!14629)) )
))
(declare-datatypes ((List!60226 0))(
  ( (Nil!60102) (Cons!60102 (h!66550 Regex!14629) (t!373379 List!60226)) )
))
(declare-datatypes ((Context!8026 0))(
  ( (Context!8027 (exprs!4513 List!60226)) )
))
(declare-fun z!4581 () (InoxSet Context!8026))

(declare-fun isEmpty!32179 (List!60225) Bool)

(declare-datatypes ((tuple2!63812 0))(
  ( (tuple2!63813 (_1!35209 List!60225) (_2!35209 List!60225)) )
))
(declare-fun findLongestMatchInnerZipper!287 ((InoxSet Context!8026) List!60225 Int List!60225 List!60225 Int) tuple2!63812)

(assert (=> b!5172248 (= res!2198327 (not (isEmpty!32179 (_1!35209 (findLongestMatchInnerZipper!287 z!4581 testedP!294 lt!2129710 lt!2129708 input!5817 lt!2129703)))))))

(declare-fun size!39665 (List!60225) Int)

(assert (=> b!5172248 (= lt!2129703 (size!39665 input!5817))))

(declare-fun getSuffix!3412 (List!60225 List!60225) List!60225)

(assert (=> b!5172248 (= lt!2129708 (getSuffix!3412 input!5817 testedP!294))))

(assert (=> b!5172248 (= lt!2129710 (size!39665 testedP!294))))

(declare-fun b!5172249 () Bool)

(declare-fun e!3222830 () Bool)

(declare-fun tp!1451021 () Bool)

(assert (=> b!5172249 (= e!3222830 tp!1451021)))

(declare-fun setIsEmpty!32088 () Bool)

(declare-fun setRes!32087 () Bool)

(assert (=> setIsEmpty!32088 setRes!32087))

(declare-fun b!5172250 () Bool)

(declare-fun e!3222833 () Bool)

(declare-fun tp_is_empty!38511 () Bool)

(declare-fun tp!1451019 () Bool)

(assert (=> b!5172250 (= e!3222833 (and tp_is_empty!38511 tp!1451019))))

(declare-fun b!5172251 () Bool)

(declare-fun res!2198328 () Bool)

(assert (=> b!5172251 (=> (not res!2198328) (not e!3222828))))

(assert (=> b!5172251 (= res!2198328 (not (= testedP!294 input!5817)))))

(declare-fun b!5172252 () Bool)

(declare-fun e!3222832 () Bool)

(assert (=> b!5172252 (= e!3222828 (not e!3222832))))

(declare-fun res!2198324 () Bool)

(assert (=> b!5172252 (=> res!2198324 e!3222832)))

(assert (=> b!5172252 (= res!2198324 (>= lt!2129710 lt!2129703))))

(declare-datatypes ((Unit!151796 0))(
  ( (Unit!151797) )
))
(declare-fun lt!2129700 () Unit!151796)

(declare-fun e!3222829 () Unit!151796)

(assert (=> b!5172252 (= lt!2129700 e!3222829)))

(declare-fun c!890397 () Bool)

(assert (=> b!5172252 (= c!890397 (= lt!2129710 lt!2129703))))

(assert (=> b!5172252 (<= lt!2129710 lt!2129703)))

(declare-fun lt!2129707 () Unit!151796)

(declare-fun lemmaIsPrefixThenSmallerEqSize!925 (List!60225 List!60225) Unit!151796)

(assert (=> b!5172252 (= lt!2129707 (lemmaIsPrefixThenSmallerEqSize!925 testedP!294 input!5817))))

(declare-fun res!2198326 () Bool)

(assert (=> start!547544 (=> (not res!2198326) (not e!3222827))))

(declare-fun isPrefix!5762 (List!60225 List!60225) Bool)

(assert (=> start!547544 (= res!2198326 (isPrefix!5762 testedP!294 input!5817))))

(assert (=> start!547544 e!3222827))

(assert (=> start!547544 e!3222833))

(declare-fun e!3222826 () Bool)

(assert (=> start!547544 e!3222826))

(declare-fun condSetEmpty!32088 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!8026))

(assert (=> start!547544 (= condSetEmpty!32088 (= baseZ!62 ((as const (Array Context!8026 Bool)) false)))))

(assert (=> start!547544 setRes!32088))

(declare-fun condSetEmpty!32087 () Bool)

(assert (=> start!547544 (= condSetEmpty!32087 (= z!4581 ((as const (Array Context!8026 Bool)) false)))))

(assert (=> start!547544 setRes!32087))

(declare-fun b!5172253 () Bool)

(declare-fun e!3222834 () Bool)

(assert (=> b!5172253 (= e!3222832 e!3222834)))

(declare-fun res!2198325 () Bool)

(assert (=> b!5172253 (=> res!2198325 e!3222834)))

(declare-fun nullableZipper!1175 ((InoxSet Context!8026)) Bool)

(assert (=> b!5172253 (= res!2198325 (nullableZipper!1175 z!4581))))

(declare-fun lt!2129709 () List!60225)

(assert (=> b!5172253 (isPrefix!5762 lt!2129709 input!5817)))

(declare-fun lt!2129701 () Unit!151796)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1075 (List!60225 List!60225) Unit!151796)

(assert (=> b!5172253 (= lt!2129701 (lemmaAddHeadSuffixToPrefixStillPrefix!1075 testedP!294 input!5817))))

(declare-fun lt!2129705 () C!29528)

(declare-fun ++!13153 (List!60225 List!60225) List!60225)

(assert (=> b!5172253 (= lt!2129709 (++!13153 testedP!294 (Cons!60101 lt!2129705 Nil!60101)))))

(declare-fun head!11053 (List!60225) C!29528)

(assert (=> b!5172253 (= lt!2129705 (head!11053 lt!2129708))))

(declare-fun b!5172254 () Bool)

(declare-fun Unit!151798 () Unit!151796)

(assert (=> b!5172254 (= e!3222829 Unit!151798)))

(declare-fun lt!2129704 () Unit!151796)

(declare-fun lemmaIsPrefixRefl!3769 (List!60225 List!60225) Unit!151796)

(assert (=> b!5172254 (= lt!2129704 (lemmaIsPrefixRefl!3769 input!5817 input!5817))))

(assert (=> b!5172254 (isPrefix!5762 input!5817 input!5817)))

(declare-fun lt!2129706 () Unit!151796)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1411 (List!60225 List!60225 List!60225) Unit!151796)

(assert (=> b!5172254 (= lt!2129706 (lemmaIsPrefixSameLengthThenSameList!1411 input!5817 testedP!294 input!5817))))

(assert (=> b!5172254 false))

(declare-fun b!5172255 () Bool)

(declare-fun e!3222831 () Bool)

(declare-fun tp!1451018 () Bool)

(assert (=> b!5172255 (= e!3222831 tp!1451018)))

(declare-fun b!5172256 () Bool)

(declare-fun tp!1451022 () Bool)

(assert (=> b!5172256 (= e!3222826 (and tp_is_empty!38511 tp!1451022))))

(declare-fun tp!1451020 () Bool)

(declare-fun setElem!32088 () Context!8026)

(declare-fun setNonEmpty!32087 () Bool)

(declare-fun inv!79819 (Context!8026) Bool)

(assert (=> setNonEmpty!32087 (= setRes!32088 (and tp!1451020 (inv!79819 setElem!32088) e!3222830))))

(declare-fun setRest!32087 () (InoxSet Context!8026))

(assert (=> setNonEmpty!32087 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8026 Bool)) false) setElem!32088 true) setRest!32087))))

(declare-fun b!5172257 () Bool)

(declare-fun Unit!151799 () Unit!151796)

(assert (=> b!5172257 (= e!3222829 Unit!151799)))

(declare-fun b!5172258 () Bool)

(declare-fun res!2198323 () Bool)

(assert (=> b!5172258 (=> (not res!2198323) (not e!3222827))))

(declare-fun derivationZipper!252 ((InoxSet Context!8026) List!60225) (InoxSet Context!8026))

(assert (=> b!5172258 (= res!2198323 (= (derivationZipper!252 baseZ!62 testedP!294) z!4581))))

(declare-fun setNonEmpty!32088 () Bool)

(declare-fun tp!1451023 () Bool)

(declare-fun setElem!32087 () Context!8026)

(assert (=> setNonEmpty!32088 (= setRes!32087 (and tp!1451023 (inv!79819 setElem!32087) e!3222831))))

(declare-fun setRest!32088 () (InoxSet Context!8026))

(assert (=> setNonEmpty!32088 (= z!4581 ((_ map or) (store ((as const (Array Context!8026 Bool)) false) setElem!32087 true) setRest!32088))))

(declare-fun b!5172259 () Bool)

(assert (=> b!5172259 (= e!3222834 (not (= lt!2129708 Nil!60101)))))

(declare-fun derivationStepZipper!981 ((InoxSet Context!8026) C!29528) (InoxSet Context!8026))

(assert (=> b!5172259 (= (derivationZipper!252 baseZ!62 lt!2129709) (derivationStepZipper!981 z!4581 lt!2129705))))

(declare-fun lt!2129702 () Unit!151796)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!99 ((InoxSet Context!8026) (InoxSet Context!8026) List!60225 C!29528) Unit!151796)

(assert (=> b!5172259 (= lt!2129702 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!99 baseZ!62 z!4581 testedP!294 lt!2129705))))

(assert (= (and start!547544 res!2198326) b!5172258))

(assert (= (and b!5172258 res!2198323) b!5172248))

(assert (= (and b!5172248 res!2198327) b!5172251))

(assert (= (and b!5172251 res!2198328) b!5172252))

(assert (= (and b!5172252 c!890397) b!5172254))

(assert (= (and b!5172252 (not c!890397)) b!5172257))

(assert (= (and b!5172252 (not res!2198324)) b!5172253))

(assert (= (and b!5172253 (not res!2198325)) b!5172259))

(get-info :version)

(assert (= (and start!547544 ((_ is Cons!60101) testedP!294)) b!5172250))

(assert (= (and start!547544 ((_ is Cons!60101) input!5817)) b!5172256))

(assert (= (and start!547544 condSetEmpty!32088) setIsEmpty!32087))

(assert (= (and start!547544 (not condSetEmpty!32088)) setNonEmpty!32087))

(assert (= setNonEmpty!32087 b!5172249))

(assert (= (and start!547544 condSetEmpty!32087) setIsEmpty!32088))

(assert (= (and start!547544 (not condSetEmpty!32087)) setNonEmpty!32088))

(assert (= setNonEmpty!32088 b!5172255))

(declare-fun m!6225454 () Bool)

(assert (=> b!5172254 m!6225454))

(declare-fun m!6225456 () Bool)

(assert (=> b!5172254 m!6225456))

(declare-fun m!6225458 () Bool)

(assert (=> b!5172254 m!6225458))

(declare-fun m!6225460 () Bool)

(assert (=> start!547544 m!6225460))

(declare-fun m!6225462 () Bool)

(assert (=> b!5172248 m!6225462))

(declare-fun m!6225464 () Bool)

(assert (=> b!5172248 m!6225464))

(declare-fun m!6225466 () Bool)

(assert (=> b!5172248 m!6225466))

(declare-fun m!6225468 () Bool)

(assert (=> b!5172248 m!6225468))

(declare-fun m!6225470 () Bool)

(assert (=> b!5172248 m!6225470))

(declare-fun m!6225472 () Bool)

(assert (=> b!5172258 m!6225472))

(declare-fun m!6225474 () Bool)

(assert (=> setNonEmpty!32088 m!6225474))

(declare-fun m!6225476 () Bool)

(assert (=> setNonEmpty!32087 m!6225476))

(declare-fun m!6225478 () Bool)

(assert (=> b!5172252 m!6225478))

(declare-fun m!6225480 () Bool)

(assert (=> b!5172253 m!6225480))

(declare-fun m!6225482 () Bool)

(assert (=> b!5172253 m!6225482))

(declare-fun m!6225484 () Bool)

(assert (=> b!5172253 m!6225484))

(declare-fun m!6225486 () Bool)

(assert (=> b!5172253 m!6225486))

(declare-fun m!6225488 () Bool)

(assert (=> b!5172253 m!6225488))

(declare-fun m!6225490 () Bool)

(assert (=> b!5172259 m!6225490))

(declare-fun m!6225492 () Bool)

(assert (=> b!5172259 m!6225492))

(declare-fun m!6225494 () Bool)

(assert (=> b!5172259 m!6225494))

(check-sat (not b!5172254) (not b!5172250) (not b!5172252) (not b!5172259) tp_is_empty!38511 (not setNonEmpty!32088) (not b!5172256) (not b!5172255) (not b!5172253) (not start!547544) (not setNonEmpty!32087) (not b!5172258) (not b!5172248) (not b!5172249))
(check-sat)
(get-model)

(declare-fun d!1669266 () Bool)

(declare-fun c!890401 () Bool)

(assert (=> d!1669266 (= c!890401 ((_ is Cons!60101) lt!2129709))))

(declare-fun e!3222837 () (InoxSet Context!8026))

(assert (=> d!1669266 (= (derivationZipper!252 baseZ!62 lt!2129709) e!3222837)))

(declare-fun b!5172264 () Bool)

(assert (=> b!5172264 (= e!3222837 (derivationZipper!252 (derivationStepZipper!981 baseZ!62 (h!66549 lt!2129709)) (t!373378 lt!2129709)))))

(declare-fun b!5172265 () Bool)

(assert (=> b!5172265 (= e!3222837 baseZ!62)))

(assert (= (and d!1669266 c!890401) b!5172264))

(assert (= (and d!1669266 (not c!890401)) b!5172265))

(declare-fun m!6225496 () Bool)

(assert (=> b!5172264 m!6225496))

(assert (=> b!5172264 m!6225496))

(declare-fun m!6225498 () Bool)

(assert (=> b!5172264 m!6225498))

(assert (=> b!5172259 d!1669266))

(declare-fun d!1669268 () Bool)

(assert (=> d!1669268 true))

(declare-fun lambda!258256 () Int)

(declare-fun flatMap!450 ((InoxSet Context!8026) Int) (InoxSet Context!8026))

(assert (=> d!1669268 (= (derivationStepZipper!981 z!4581 lt!2129705) (flatMap!450 z!4581 lambda!258256))))

(declare-fun bs!1203691 () Bool)

(assert (= bs!1203691 d!1669268))

(declare-fun m!6225560 () Bool)

(assert (=> bs!1203691 m!6225560))

(assert (=> b!5172259 d!1669268))

(declare-fun d!1669288 () Bool)

(assert (=> d!1669288 (= (derivationZipper!252 baseZ!62 (++!13153 testedP!294 (Cons!60101 lt!2129705 Nil!60101))) (derivationStepZipper!981 z!4581 lt!2129705))))

(declare-fun lt!2129808 () Unit!151796)

(declare-fun choose!38348 ((InoxSet Context!8026) (InoxSet Context!8026) List!60225 C!29528) Unit!151796)

(assert (=> d!1669288 (= lt!2129808 (choose!38348 baseZ!62 z!4581 testedP!294 lt!2129705))))

(assert (=> d!1669288 (= (derivationZipper!252 baseZ!62 testedP!294) z!4581)))

(assert (=> d!1669288 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!99 baseZ!62 z!4581 testedP!294 lt!2129705) lt!2129808)))

(declare-fun bs!1203694 () Bool)

(assert (= bs!1203694 d!1669288))

(declare-fun m!6225568 () Bool)

(assert (=> bs!1203694 m!6225568))

(assert (=> bs!1203694 m!6225472))

(assert (=> bs!1203694 m!6225484))

(assert (=> bs!1203694 m!6225484))

(declare-fun m!6225570 () Bool)

(assert (=> bs!1203694 m!6225570))

(assert (=> bs!1203694 m!6225492))

(assert (=> b!5172259 d!1669288))

(declare-fun d!1669296 () Bool)

(declare-fun lambda!258259 () Int)

(declare-fun forall!14139 (List!60226 Int) Bool)

(assert (=> d!1669296 (= (inv!79819 setElem!32087) (forall!14139 (exprs!4513 setElem!32087) lambda!258259))))

(declare-fun bs!1203696 () Bool)

(assert (= bs!1203696 d!1669296))

(declare-fun m!6225578 () Bool)

(assert (=> bs!1203696 m!6225578))

(assert (=> setNonEmpty!32088 d!1669296))

(declare-fun d!1669302 () Bool)

(assert (=> d!1669302 (isPrefix!5762 input!5817 input!5817)))

(declare-fun lt!2129814 () Unit!151796)

(declare-fun choose!38349 (List!60225 List!60225) Unit!151796)

(assert (=> d!1669302 (= lt!2129814 (choose!38349 input!5817 input!5817))))

(assert (=> d!1669302 (= (lemmaIsPrefixRefl!3769 input!5817 input!5817) lt!2129814)))

(declare-fun bs!1203697 () Bool)

(assert (= bs!1203697 d!1669302))

(assert (=> bs!1203697 m!6225456))

(declare-fun m!6225580 () Bool)

(assert (=> bs!1203697 m!6225580))

(assert (=> b!5172254 d!1669302))

(declare-fun b!5172359 () Bool)

(declare-fun e!3222891 () Bool)

(assert (=> b!5172359 (= e!3222891 (>= (size!39665 input!5817) (size!39665 input!5817)))))

(declare-fun b!5172357 () Bool)

(declare-fun res!2198362 () Bool)

(declare-fun e!3222890 () Bool)

(assert (=> b!5172357 (=> (not res!2198362) (not e!3222890))))

(assert (=> b!5172357 (= res!2198362 (= (head!11053 input!5817) (head!11053 input!5817)))))

(declare-fun b!5172358 () Bool)

(declare-fun tail!10160 (List!60225) List!60225)

(assert (=> b!5172358 (= e!3222890 (isPrefix!5762 (tail!10160 input!5817) (tail!10160 input!5817)))))

(declare-fun d!1669304 () Bool)

(assert (=> d!1669304 e!3222891))

(declare-fun res!2198360 () Bool)

(assert (=> d!1669304 (=> res!2198360 e!3222891)))

(declare-fun lt!2129819 () Bool)

(assert (=> d!1669304 (= res!2198360 (not lt!2129819))))

(declare-fun e!3222892 () Bool)

(assert (=> d!1669304 (= lt!2129819 e!3222892)))

(declare-fun res!2198361 () Bool)

(assert (=> d!1669304 (=> res!2198361 e!3222892)))

(assert (=> d!1669304 (= res!2198361 ((_ is Nil!60101) input!5817))))

(assert (=> d!1669304 (= (isPrefix!5762 input!5817 input!5817) lt!2129819)))

(declare-fun b!5172356 () Bool)

(assert (=> b!5172356 (= e!3222892 e!3222890)))

(declare-fun res!2198359 () Bool)

(assert (=> b!5172356 (=> (not res!2198359) (not e!3222890))))

(assert (=> b!5172356 (= res!2198359 (not ((_ is Nil!60101) input!5817)))))

(assert (= (and d!1669304 (not res!2198361)) b!5172356))

(assert (= (and b!5172356 res!2198359) b!5172357))

(assert (= (and b!5172357 res!2198362) b!5172358))

(assert (= (and d!1669304 (not res!2198360)) b!5172359))

(assert (=> b!5172359 m!6225464))

(assert (=> b!5172359 m!6225464))

(declare-fun m!6225586 () Bool)

(assert (=> b!5172357 m!6225586))

(assert (=> b!5172357 m!6225586))

(declare-fun m!6225588 () Bool)

(assert (=> b!5172358 m!6225588))

(assert (=> b!5172358 m!6225588))

(assert (=> b!5172358 m!6225588))

(assert (=> b!5172358 m!6225588))

(declare-fun m!6225592 () Bool)

(assert (=> b!5172358 m!6225592))

(assert (=> b!5172254 d!1669304))

(declare-fun d!1669310 () Bool)

(assert (=> d!1669310 (= input!5817 testedP!294)))

(declare-fun lt!2129824 () Unit!151796)

(declare-fun choose!38350 (List!60225 List!60225 List!60225) Unit!151796)

(assert (=> d!1669310 (= lt!2129824 (choose!38350 input!5817 testedP!294 input!5817))))

(assert (=> d!1669310 (isPrefix!5762 input!5817 input!5817)))

(assert (=> d!1669310 (= (lemmaIsPrefixSameLengthThenSameList!1411 input!5817 testedP!294 input!5817) lt!2129824)))

(declare-fun bs!1203700 () Bool)

(assert (= bs!1203700 d!1669310))

(declare-fun m!6225602 () Bool)

(assert (=> bs!1203700 m!6225602))

(assert (=> bs!1203700 m!6225456))

(assert (=> b!5172254 d!1669310))

(declare-fun b!5172367 () Bool)

(declare-fun e!3222897 () Bool)

(assert (=> b!5172367 (= e!3222897 (>= (size!39665 input!5817) (size!39665 testedP!294)))))

(declare-fun b!5172365 () Bool)

(declare-fun res!2198370 () Bool)

(declare-fun e!3222896 () Bool)

(assert (=> b!5172365 (=> (not res!2198370) (not e!3222896))))

(assert (=> b!5172365 (= res!2198370 (= (head!11053 testedP!294) (head!11053 input!5817)))))

(declare-fun b!5172366 () Bool)

(assert (=> b!5172366 (= e!3222896 (isPrefix!5762 (tail!10160 testedP!294) (tail!10160 input!5817)))))

(declare-fun d!1669316 () Bool)

(assert (=> d!1669316 e!3222897))

(declare-fun res!2198368 () Bool)

(assert (=> d!1669316 (=> res!2198368 e!3222897)))

(declare-fun lt!2129825 () Bool)

(assert (=> d!1669316 (= res!2198368 (not lt!2129825))))

(declare-fun e!3222898 () Bool)

(assert (=> d!1669316 (= lt!2129825 e!3222898)))

(declare-fun res!2198369 () Bool)

(assert (=> d!1669316 (=> res!2198369 e!3222898)))

(assert (=> d!1669316 (= res!2198369 ((_ is Nil!60101) testedP!294))))

(assert (=> d!1669316 (= (isPrefix!5762 testedP!294 input!5817) lt!2129825)))

(declare-fun b!5172364 () Bool)

(assert (=> b!5172364 (= e!3222898 e!3222896)))

(declare-fun res!2198367 () Bool)

(assert (=> b!5172364 (=> (not res!2198367) (not e!3222896))))

(assert (=> b!5172364 (= res!2198367 (not ((_ is Nil!60101) input!5817)))))

(assert (= (and d!1669316 (not res!2198369)) b!5172364))

(assert (= (and b!5172364 res!2198367) b!5172365))

(assert (= (and b!5172365 res!2198370) b!5172366))

(assert (= (and d!1669316 (not res!2198368)) b!5172367))

(assert (=> b!5172367 m!6225464))

(assert (=> b!5172367 m!6225462))

(declare-fun m!6225604 () Bool)

(assert (=> b!5172365 m!6225604))

(assert (=> b!5172365 m!6225586))

(declare-fun m!6225606 () Bool)

(assert (=> b!5172366 m!6225606))

(assert (=> b!5172366 m!6225588))

(assert (=> b!5172366 m!6225606))

(assert (=> b!5172366 m!6225588))

(declare-fun m!6225608 () Bool)

(assert (=> b!5172366 m!6225608))

(assert (=> start!547544 d!1669316))

(declare-fun d!1669318 () Bool)

(declare-fun c!890436 () Bool)

(assert (=> d!1669318 (= c!890436 ((_ is Cons!60101) testedP!294))))

(declare-fun e!3222899 () (InoxSet Context!8026))

(assert (=> d!1669318 (= (derivationZipper!252 baseZ!62 testedP!294) e!3222899)))

(declare-fun b!5172368 () Bool)

(assert (=> b!5172368 (= e!3222899 (derivationZipper!252 (derivationStepZipper!981 baseZ!62 (h!66549 testedP!294)) (t!373378 testedP!294)))))

(declare-fun b!5172369 () Bool)

(assert (=> b!5172369 (= e!3222899 baseZ!62)))

(assert (= (and d!1669318 c!890436) b!5172368))

(assert (= (and d!1669318 (not c!890436)) b!5172369))

(declare-fun m!6225610 () Bool)

(assert (=> b!5172368 m!6225610))

(assert (=> b!5172368 m!6225610))

(declare-fun m!6225612 () Bool)

(assert (=> b!5172368 m!6225612))

(assert (=> b!5172258 d!1669318))

(declare-fun d!1669320 () Bool)

(assert (=> d!1669320 (= (head!11053 lt!2129708) (h!66549 lt!2129708))))

(assert (=> b!5172253 d!1669320))

(declare-fun d!1669322 () Bool)

(assert (=> d!1669322 (isPrefix!5762 (++!13153 testedP!294 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101)) input!5817)))

(declare-fun lt!2129831 () Unit!151796)

(declare-fun choose!38351 (List!60225 List!60225) Unit!151796)

(assert (=> d!1669322 (= lt!2129831 (choose!38351 testedP!294 input!5817))))

(assert (=> d!1669322 (isPrefix!5762 testedP!294 input!5817)))

(assert (=> d!1669322 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1075 testedP!294 input!5817) lt!2129831)))

(declare-fun bs!1203701 () Bool)

(assert (= bs!1203701 d!1669322))

(assert (=> bs!1203701 m!6225470))

(declare-fun m!6225626 () Bool)

(assert (=> bs!1203701 m!6225626))

(declare-fun m!6225628 () Bool)

(assert (=> bs!1203701 m!6225628))

(declare-fun m!6225630 () Bool)

(assert (=> bs!1203701 m!6225630))

(declare-fun m!6225632 () Bool)

(assert (=> bs!1203701 m!6225632))

(assert (=> bs!1203701 m!6225628))

(assert (=> bs!1203701 m!6225470))

(assert (=> bs!1203701 m!6225460))

(assert (=> b!5172253 d!1669322))

(declare-fun b!5172385 () Bool)

(declare-fun e!3222907 () Bool)

(assert (=> b!5172385 (= e!3222907 (>= (size!39665 input!5817) (size!39665 lt!2129709)))))

(declare-fun b!5172383 () Bool)

(declare-fun res!2198380 () Bool)

(declare-fun e!3222906 () Bool)

(assert (=> b!5172383 (=> (not res!2198380) (not e!3222906))))

(assert (=> b!5172383 (= res!2198380 (= (head!11053 lt!2129709) (head!11053 input!5817)))))

(declare-fun b!5172384 () Bool)

(assert (=> b!5172384 (= e!3222906 (isPrefix!5762 (tail!10160 lt!2129709) (tail!10160 input!5817)))))

(declare-fun d!1669326 () Bool)

(assert (=> d!1669326 e!3222907))

(declare-fun res!2198378 () Bool)

(assert (=> d!1669326 (=> res!2198378 e!3222907)))

(declare-fun lt!2129832 () Bool)

(assert (=> d!1669326 (= res!2198378 (not lt!2129832))))

(declare-fun e!3222908 () Bool)

(assert (=> d!1669326 (= lt!2129832 e!3222908)))

(declare-fun res!2198379 () Bool)

(assert (=> d!1669326 (=> res!2198379 e!3222908)))

(assert (=> d!1669326 (= res!2198379 ((_ is Nil!60101) lt!2129709))))

(assert (=> d!1669326 (= (isPrefix!5762 lt!2129709 input!5817) lt!2129832)))

(declare-fun b!5172382 () Bool)

(assert (=> b!5172382 (= e!3222908 e!3222906)))

(declare-fun res!2198377 () Bool)

(assert (=> b!5172382 (=> (not res!2198377) (not e!3222906))))

(assert (=> b!5172382 (= res!2198377 (not ((_ is Nil!60101) input!5817)))))

(assert (= (and d!1669326 (not res!2198379)) b!5172382))

(assert (= (and b!5172382 res!2198377) b!5172383))

(assert (= (and b!5172383 res!2198380) b!5172384))

(assert (= (and d!1669326 (not res!2198378)) b!5172385))

(assert (=> b!5172385 m!6225464))

(declare-fun m!6225634 () Bool)

(assert (=> b!5172385 m!6225634))

(declare-fun m!6225636 () Bool)

(assert (=> b!5172383 m!6225636))

(assert (=> b!5172383 m!6225586))

(declare-fun m!6225638 () Bool)

(assert (=> b!5172384 m!6225638))

(assert (=> b!5172384 m!6225588))

(assert (=> b!5172384 m!6225638))

(assert (=> b!5172384 m!6225588))

(declare-fun m!6225640 () Bool)

(assert (=> b!5172384 m!6225640))

(assert (=> b!5172253 d!1669326))

(declare-fun lt!2129838 () List!60225)

(declare-fun b!5172399 () Bool)

(declare-fun e!3222915 () Bool)

(assert (=> b!5172399 (= e!3222915 (or (not (= (Cons!60101 lt!2129705 Nil!60101) Nil!60101)) (= lt!2129838 testedP!294)))))

(declare-fun b!5172397 () Bool)

(declare-fun e!3222914 () List!60225)

(assert (=> b!5172397 (= e!3222914 (Cons!60101 (h!66549 testedP!294) (++!13153 (t!373378 testedP!294) (Cons!60101 lt!2129705 Nil!60101))))))

(declare-fun b!5172396 () Bool)

(assert (=> b!5172396 (= e!3222914 (Cons!60101 lt!2129705 Nil!60101))))

(declare-fun b!5172398 () Bool)

(declare-fun res!2198385 () Bool)

(assert (=> b!5172398 (=> (not res!2198385) (not e!3222915))))

(assert (=> b!5172398 (= res!2198385 (= (size!39665 lt!2129838) (+ (size!39665 testedP!294) (size!39665 (Cons!60101 lt!2129705 Nil!60101)))))))

(declare-fun d!1669328 () Bool)

(assert (=> d!1669328 e!3222915))

(declare-fun res!2198386 () Bool)

(assert (=> d!1669328 (=> (not res!2198386) (not e!3222915))))

(declare-fun content!10651 (List!60225) (InoxSet C!29528))

(assert (=> d!1669328 (= res!2198386 (= (content!10651 lt!2129838) ((_ map or) (content!10651 testedP!294) (content!10651 (Cons!60101 lt!2129705 Nil!60101)))))))

(assert (=> d!1669328 (= lt!2129838 e!3222914)))

(declare-fun c!890445 () Bool)

(assert (=> d!1669328 (= c!890445 ((_ is Nil!60101) testedP!294))))

(assert (=> d!1669328 (= (++!13153 testedP!294 (Cons!60101 lt!2129705 Nil!60101)) lt!2129838)))

(assert (= (and d!1669328 c!890445) b!5172396))

(assert (= (and d!1669328 (not c!890445)) b!5172397))

(assert (= (and d!1669328 res!2198386) b!5172398))

(assert (= (and b!5172398 res!2198385) b!5172399))

(declare-fun m!6225650 () Bool)

(assert (=> b!5172397 m!6225650))

(declare-fun m!6225652 () Bool)

(assert (=> b!5172398 m!6225652))

(assert (=> b!5172398 m!6225462))

(declare-fun m!6225654 () Bool)

(assert (=> b!5172398 m!6225654))

(declare-fun m!6225656 () Bool)

(assert (=> d!1669328 m!6225656))

(declare-fun m!6225658 () Bool)

(assert (=> d!1669328 m!6225658))

(declare-fun m!6225660 () Bool)

(assert (=> d!1669328 m!6225660))

(assert (=> b!5172253 d!1669328))

(declare-fun d!1669334 () Bool)

(declare-fun lambda!258268 () Int)

(declare-fun exists!1922 ((InoxSet Context!8026) Int) Bool)

(assert (=> d!1669334 (= (nullableZipper!1175 z!4581) (exists!1922 z!4581 lambda!258268))))

(declare-fun bs!1203704 () Bool)

(assert (= bs!1203704 d!1669334))

(declare-fun m!6225666 () Bool)

(assert (=> bs!1203704 m!6225666))

(assert (=> b!5172253 d!1669334))

(declare-fun d!1669336 () Bool)

(assert (=> d!1669336 (<= (size!39665 testedP!294) (size!39665 input!5817))))

(declare-fun lt!2129841 () Unit!151796)

(declare-fun choose!38352 (List!60225 List!60225) Unit!151796)

(assert (=> d!1669336 (= lt!2129841 (choose!38352 testedP!294 input!5817))))

(assert (=> d!1669336 (isPrefix!5762 testedP!294 input!5817)))

(assert (=> d!1669336 (= (lemmaIsPrefixThenSmallerEqSize!925 testedP!294 input!5817) lt!2129841)))

(declare-fun bs!1203705 () Bool)

(assert (= bs!1203705 d!1669336))

(assert (=> bs!1203705 m!6225462))

(assert (=> bs!1203705 m!6225464))

(declare-fun m!6225668 () Bool)

(assert (=> bs!1203705 m!6225668))

(assert (=> bs!1203705 m!6225460))

(assert (=> b!5172252 d!1669336))

(declare-fun d!1669338 () Bool)

(declare-fun lt!2129844 () Int)

(assert (=> d!1669338 (>= lt!2129844 0)))

(declare-fun e!3222930 () Int)

(assert (=> d!1669338 (= lt!2129844 e!3222930)))

(declare-fun c!890450 () Bool)

(assert (=> d!1669338 (= c!890450 ((_ is Nil!60101) input!5817))))

(assert (=> d!1669338 (= (size!39665 input!5817) lt!2129844)))

(declare-fun b!5172422 () Bool)

(assert (=> b!5172422 (= e!3222930 0)))

(declare-fun b!5172423 () Bool)

(assert (=> b!5172423 (= e!3222930 (+ 1 (size!39665 (t!373378 input!5817))))))

(assert (= (and d!1669338 c!890450) b!5172422))

(assert (= (and d!1669338 (not c!890450)) b!5172423))

(declare-fun m!6225670 () Bool)

(assert (=> b!5172423 m!6225670))

(assert (=> b!5172248 d!1669338))

(declare-fun d!1669340 () Bool)

(declare-fun lt!2129847 () List!60225)

(assert (=> d!1669340 (= (++!13153 testedP!294 lt!2129847) input!5817)))

(declare-fun e!3222933 () List!60225)

(assert (=> d!1669340 (= lt!2129847 e!3222933)))

(declare-fun c!890453 () Bool)

(assert (=> d!1669340 (= c!890453 ((_ is Cons!60101) testedP!294))))

(assert (=> d!1669340 (>= (size!39665 input!5817) (size!39665 testedP!294))))

(assert (=> d!1669340 (= (getSuffix!3412 input!5817 testedP!294) lt!2129847)))

(declare-fun b!5172428 () Bool)

(assert (=> b!5172428 (= e!3222933 (getSuffix!3412 (tail!10160 input!5817) (t!373378 testedP!294)))))

(declare-fun b!5172429 () Bool)

(assert (=> b!5172429 (= e!3222933 input!5817)))

(assert (= (and d!1669340 c!890453) b!5172428))

(assert (= (and d!1669340 (not c!890453)) b!5172429))

(declare-fun m!6225672 () Bool)

(assert (=> d!1669340 m!6225672))

(assert (=> d!1669340 m!6225464))

(assert (=> d!1669340 m!6225462))

(assert (=> b!5172428 m!6225588))

(assert (=> b!5172428 m!6225588))

(declare-fun m!6225674 () Bool)

(assert (=> b!5172428 m!6225674))

(assert (=> b!5172248 d!1669340))

(declare-fun d!1669342 () Bool)

(declare-fun lt!2129848 () Int)

(assert (=> d!1669342 (>= lt!2129848 0)))

(declare-fun e!3222934 () Int)

(assert (=> d!1669342 (= lt!2129848 e!3222934)))

(declare-fun c!890454 () Bool)

(assert (=> d!1669342 (= c!890454 ((_ is Nil!60101) testedP!294))))

(assert (=> d!1669342 (= (size!39665 testedP!294) lt!2129848)))

(declare-fun b!5172430 () Bool)

(assert (=> b!5172430 (= e!3222934 0)))

(declare-fun b!5172431 () Bool)

(assert (=> b!5172431 (= e!3222934 (+ 1 (size!39665 (t!373378 testedP!294))))))

(assert (= (and d!1669342 c!890454) b!5172430))

(assert (= (and d!1669342 (not c!890454)) b!5172431))

(declare-fun m!6225676 () Bool)

(assert (=> b!5172431 m!6225676))

(assert (=> b!5172248 d!1669342))

(declare-fun d!1669344 () Bool)

(assert (=> d!1669344 (= (isEmpty!32179 (_1!35209 (findLongestMatchInnerZipper!287 z!4581 testedP!294 lt!2129710 lt!2129708 input!5817 lt!2129703))) ((_ is Nil!60101) (_1!35209 (findLongestMatchInnerZipper!287 z!4581 testedP!294 lt!2129710 lt!2129708 input!5817 lt!2129703))))))

(assert (=> b!5172248 d!1669344))

(declare-fun b!5172460 () Bool)

(declare-fun c!890470 () Bool)

(declare-fun call!363190 () Bool)

(assert (=> b!5172460 (= c!890470 call!363190)))

(declare-fun lt!2129908 () Unit!151796)

(declare-fun lt!2129910 () Unit!151796)

(assert (=> b!5172460 (= lt!2129908 lt!2129910)))

(assert (=> b!5172460 (= input!5817 testedP!294)))

(declare-fun call!363191 () Unit!151796)

(assert (=> b!5172460 (= lt!2129910 call!363191)))

(declare-fun lt!2129917 () Unit!151796)

(declare-fun lt!2129926 () Unit!151796)

(assert (=> b!5172460 (= lt!2129917 lt!2129926)))

(declare-fun call!363187 () Bool)

(assert (=> b!5172460 call!363187))

(declare-fun call!363184 () Unit!151796)

(assert (=> b!5172460 (= lt!2129926 call!363184)))

(declare-fun e!3222955 () tuple2!63812)

(declare-fun e!3222952 () tuple2!63812)

(assert (=> b!5172460 (= e!3222955 e!3222952)))

(declare-fun b!5172461 () Bool)

(assert (=> b!5172461 (= e!3222952 (tuple2!63813 testedP!294 Nil!60101))))

(declare-fun bm!363179 () Bool)

(assert (=> bm!363179 (= call!363190 (nullableZipper!1175 z!4581))))

(declare-fun b!5172462 () Bool)

(declare-fun c!890468 () Bool)

(assert (=> b!5172462 (= c!890468 call!363190)))

(declare-fun lt!2129918 () Unit!151796)

(declare-fun lt!2129924 () Unit!151796)

(assert (=> b!5172462 (= lt!2129918 lt!2129924)))

(declare-fun lt!2129915 () List!60225)

(declare-fun lt!2129923 () C!29528)

(assert (=> b!5172462 (= (++!13153 (++!13153 testedP!294 (Cons!60101 lt!2129923 Nil!60101)) lt!2129915) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1580 (List!60225 C!29528 List!60225 List!60225) Unit!151796)

(assert (=> b!5172462 (= lt!2129924 (lemmaMoveElementToOtherListKeepsConcatEq!1580 testedP!294 lt!2129923 lt!2129915 input!5817))))

(assert (=> b!5172462 (= lt!2129915 (tail!10160 lt!2129708))))

(assert (=> b!5172462 (= lt!2129923 (head!11053 lt!2129708))))

(declare-fun lt!2129920 () Unit!151796)

(declare-fun lt!2129913 () Unit!151796)

(assert (=> b!5172462 (= lt!2129920 lt!2129913)))

(assert (=> b!5172462 (isPrefix!5762 (++!13153 testedP!294 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101)) input!5817)))

(assert (=> b!5172462 (= lt!2129913 (lemmaAddHeadSuffixToPrefixStillPrefix!1075 testedP!294 input!5817))))

(declare-fun lt!2129901 () List!60225)

(assert (=> b!5172462 (= lt!2129901 (++!13153 testedP!294 (Cons!60101 (head!11053 lt!2129708) Nil!60101)))))

(declare-fun lt!2129911 () Unit!151796)

(declare-fun e!3222956 () Unit!151796)

(assert (=> b!5172462 (= lt!2129911 e!3222956)))

(declare-fun c!890472 () Bool)

(assert (=> b!5172462 (= c!890472 (= (size!39665 testedP!294) (size!39665 input!5817)))))

(declare-fun lt!2129925 () Unit!151796)

(declare-fun lt!2129909 () Unit!151796)

(assert (=> b!5172462 (= lt!2129925 lt!2129909)))

(assert (=> b!5172462 (<= (size!39665 testedP!294) (size!39665 input!5817))))

(assert (=> b!5172462 (= lt!2129909 (lemmaIsPrefixThenSmallerEqSize!925 testedP!294 input!5817))))

(declare-fun e!3222954 () tuple2!63812)

(assert (=> b!5172462 (= e!3222955 e!3222954)))

(declare-fun b!5172463 () Bool)

(declare-fun call!363188 () tuple2!63812)

(assert (=> b!5172463 (= e!3222954 call!363188)))

(declare-fun b!5172464 () Bool)

(declare-fun e!3222953 () Bool)

(declare-fun lt!2129912 () tuple2!63812)

(assert (=> b!5172464 (= e!3222953 (>= (size!39665 (_1!35209 lt!2129912)) (size!39665 testedP!294)))))

(declare-fun bm!363180 () Bool)

(assert (=> bm!363180 (= call!363191 (lemmaIsPrefixSameLengthThenSameList!1411 input!5817 testedP!294 input!5817))))

(declare-fun call!363189 () List!60225)

(declare-fun bm!363181 () Bool)

(declare-fun call!363185 () (InoxSet Context!8026))

(assert (=> bm!363181 (= call!363188 (findLongestMatchInnerZipper!287 call!363185 lt!2129901 (+ lt!2129710 1) call!363189 input!5817 lt!2129703))))

(declare-fun b!5172465 () Bool)

(declare-fun e!3222958 () Bool)

(assert (=> b!5172465 (= e!3222958 e!3222953)))

(declare-fun res!2198391 () Bool)

(assert (=> b!5172465 (=> res!2198391 e!3222953)))

(assert (=> b!5172465 (= res!2198391 (isEmpty!32179 (_1!35209 lt!2129912)))))

(declare-fun bm!363182 () Bool)

(assert (=> bm!363182 (= call!363184 (lemmaIsPrefixRefl!3769 input!5817 input!5817))))

(declare-fun b!5172466 () Bool)

(declare-fun Unit!151803 () Unit!151796)

(assert (=> b!5172466 (= e!3222956 Unit!151803)))

(declare-fun d!1669346 () Bool)

(assert (=> d!1669346 e!3222958))

(declare-fun res!2198392 () Bool)

(assert (=> d!1669346 (=> (not res!2198392) (not e!3222958))))

(assert (=> d!1669346 (= res!2198392 (= (++!13153 (_1!35209 lt!2129912) (_2!35209 lt!2129912)) input!5817))))

(declare-fun e!3222957 () tuple2!63812)

(assert (=> d!1669346 (= lt!2129912 e!3222957)))

(declare-fun c!890467 () Bool)

(declare-fun lostCauseZipper!1332 ((InoxSet Context!8026)) Bool)

(assert (=> d!1669346 (= c!890467 (lostCauseZipper!1332 z!4581))))

(declare-fun lt!2129903 () Unit!151796)

(declare-fun Unit!151804 () Unit!151796)

(assert (=> d!1669346 (= lt!2129903 Unit!151804)))

(assert (=> d!1669346 (= (getSuffix!3412 input!5817 testedP!294) lt!2129708)))

(declare-fun lt!2129914 () Unit!151796)

(declare-fun lt!2129907 () Unit!151796)

(assert (=> d!1669346 (= lt!2129914 lt!2129907)))

(declare-fun lt!2129905 () List!60225)

(assert (=> d!1669346 (= lt!2129708 lt!2129905)))

(declare-fun lemmaSamePrefixThenSameSuffix!2699 (List!60225 List!60225 List!60225 List!60225 List!60225) Unit!151796)

(assert (=> d!1669346 (= lt!2129907 (lemmaSamePrefixThenSameSuffix!2699 testedP!294 lt!2129708 testedP!294 lt!2129905 input!5817))))

(assert (=> d!1669346 (= lt!2129905 (getSuffix!3412 input!5817 testedP!294))))

(declare-fun lt!2129921 () Unit!151796)

(declare-fun lt!2129906 () Unit!151796)

(assert (=> d!1669346 (= lt!2129921 lt!2129906)))

(assert (=> d!1669346 (isPrefix!5762 testedP!294 (++!13153 testedP!294 lt!2129708))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3593 (List!60225 List!60225) Unit!151796)

(assert (=> d!1669346 (= lt!2129906 (lemmaConcatTwoListThenFirstIsPrefix!3593 testedP!294 lt!2129708))))

(assert (=> d!1669346 (= (++!13153 testedP!294 lt!2129708) input!5817)))

(assert (=> d!1669346 (= (findLongestMatchInnerZipper!287 z!4581 testedP!294 lt!2129710 lt!2129708 input!5817 lt!2129703) lt!2129912)))

(declare-fun bm!363183 () Bool)

(assert (=> bm!363183 (= call!363189 (tail!10160 lt!2129708))))

(declare-fun b!5172467 () Bool)

(assert (=> b!5172467 (= e!3222957 (tuple2!63813 Nil!60101 input!5817))))

(declare-fun b!5172468 () Bool)

(declare-fun Unit!151805 () Unit!151796)

(assert (=> b!5172468 (= e!3222956 Unit!151805)))

(declare-fun lt!2129904 () Unit!151796)

(assert (=> b!5172468 (= lt!2129904 call!363184)))

(assert (=> b!5172468 call!363187))

(declare-fun lt!2129916 () Unit!151796)

(assert (=> b!5172468 (= lt!2129916 lt!2129904)))

(declare-fun lt!2129902 () Unit!151796)

(assert (=> b!5172468 (= lt!2129902 call!363191)))

(assert (=> b!5172468 (= input!5817 testedP!294)))

(declare-fun lt!2129919 () Unit!151796)

(assert (=> b!5172468 (= lt!2129919 lt!2129902)))

(assert (=> b!5172468 false))

(declare-fun b!5172469 () Bool)

(assert (=> b!5172469 (= e!3222952 (tuple2!63813 Nil!60101 input!5817))))

(declare-fun bm!363184 () Bool)

(declare-fun call!363186 () C!29528)

(assert (=> bm!363184 (= call!363186 (head!11053 lt!2129708))))

(declare-fun b!5172470 () Bool)

(declare-fun e!3222951 () tuple2!63812)

(declare-fun lt!2129922 () tuple2!63812)

(assert (=> b!5172470 (= e!3222951 lt!2129922)))

(declare-fun bm!363185 () Bool)

(assert (=> bm!363185 (= call!363185 (derivationStepZipper!981 z!4581 call!363186))))

(declare-fun bm!363186 () Bool)

(assert (=> bm!363186 (= call!363187 (isPrefix!5762 input!5817 input!5817))))

(declare-fun b!5172471 () Bool)

(assert (=> b!5172471 (= e!3222957 e!3222955)))

(declare-fun c!890469 () Bool)

(assert (=> b!5172471 (= c!890469 (= lt!2129710 lt!2129703))))

(declare-fun b!5172472 () Bool)

(assert (=> b!5172472 (= e!3222954 e!3222951)))

(assert (=> b!5172472 (= lt!2129922 call!363188)))

(declare-fun c!890471 () Bool)

(assert (=> b!5172472 (= c!890471 (isEmpty!32179 (_1!35209 lt!2129922)))))

(declare-fun b!5172473 () Bool)

(assert (=> b!5172473 (= e!3222951 (tuple2!63813 testedP!294 lt!2129708))))

(assert (= (and d!1669346 c!890467) b!5172467))

(assert (= (and d!1669346 (not c!890467)) b!5172471))

(assert (= (and b!5172471 c!890469) b!5172460))

(assert (= (and b!5172471 (not c!890469)) b!5172462))

(assert (= (and b!5172460 c!890470) b!5172461))

(assert (= (and b!5172460 (not c!890470)) b!5172469))

(assert (= (and b!5172462 c!890472) b!5172468))

(assert (= (and b!5172462 (not c!890472)) b!5172466))

(assert (= (and b!5172462 c!890468) b!5172472))

(assert (= (and b!5172462 (not c!890468)) b!5172463))

(assert (= (and b!5172472 c!890471) b!5172473))

(assert (= (and b!5172472 (not c!890471)) b!5172470))

(assert (= (or b!5172472 b!5172463) bm!363183))

(assert (= (or b!5172472 b!5172463) bm!363184))

(assert (= (or b!5172472 b!5172463) bm!363185))

(assert (= (or b!5172472 b!5172463) bm!363181))

(assert (= (or b!5172460 b!5172468) bm!363182))

(assert (= (or b!5172460 b!5172462) bm!363179))

(assert (= (or b!5172460 b!5172468) bm!363186))

(assert (= (or b!5172460 b!5172468) bm!363180))

(assert (= (and d!1669346 res!2198392) b!5172465))

(assert (= (and b!5172465 (not res!2198391)) b!5172464))

(declare-fun m!6225678 () Bool)

(assert (=> bm!363181 m!6225678))

(declare-fun m!6225680 () Bool)

(assert (=> bm!363185 m!6225680))

(assert (=> bm!363184 m!6225482))

(assert (=> bm!363180 m!6225458))

(assert (=> bm!363186 m!6225456))

(assert (=> bm!363179 m!6225488))

(assert (=> bm!363182 m!6225454))

(declare-fun m!6225682 () Bool)

(assert (=> d!1669346 m!6225682))

(declare-fun m!6225684 () Bool)

(assert (=> d!1669346 m!6225684))

(declare-fun m!6225686 () Bool)

(assert (=> d!1669346 m!6225686))

(declare-fun m!6225688 () Bool)

(assert (=> d!1669346 m!6225688))

(declare-fun m!6225690 () Bool)

(assert (=> d!1669346 m!6225690))

(assert (=> d!1669346 m!6225470))

(declare-fun m!6225692 () Bool)

(assert (=> d!1669346 m!6225692))

(assert (=> d!1669346 m!6225684))

(assert (=> b!5172462 m!6225478))

(assert (=> b!5172462 m!6225482))

(assert (=> b!5172462 m!6225464))

(declare-fun m!6225694 () Bool)

(assert (=> b!5172462 m!6225694))

(assert (=> b!5172462 m!6225480))

(assert (=> b!5172462 m!6225470))

(assert (=> b!5172462 m!6225626))

(declare-fun m!6225696 () Bool)

(assert (=> b!5172462 m!6225696))

(assert (=> b!5172462 m!6225694))

(declare-fun m!6225698 () Bool)

(assert (=> b!5172462 m!6225698))

(assert (=> b!5172462 m!6225628))

(assert (=> b!5172462 m!6225630))

(assert (=> b!5172462 m!6225462))

(declare-fun m!6225700 () Bool)

(assert (=> b!5172462 m!6225700))

(declare-fun m!6225702 () Bool)

(assert (=> b!5172462 m!6225702))

(assert (=> b!5172462 m!6225470))

(assert (=> b!5172462 m!6225628))

(declare-fun m!6225704 () Bool)

(assert (=> b!5172465 m!6225704))

(assert (=> bm!363183 m!6225702))

(declare-fun m!6225706 () Bool)

(assert (=> b!5172472 m!6225706))

(declare-fun m!6225708 () Bool)

(assert (=> b!5172464 m!6225708))

(assert (=> b!5172464 m!6225462))

(assert (=> b!5172248 d!1669346))

(declare-fun bs!1203706 () Bool)

(declare-fun d!1669348 () Bool)

(assert (= bs!1203706 (and d!1669348 d!1669296)))

(declare-fun lambda!258269 () Int)

(assert (=> bs!1203706 (= lambda!258269 lambda!258259)))

(assert (=> d!1669348 (= (inv!79819 setElem!32088) (forall!14139 (exprs!4513 setElem!32088) lambda!258269))))

(declare-fun bs!1203707 () Bool)

(assert (= bs!1203707 d!1669348))

(declare-fun m!6225710 () Bool)

(assert (=> bs!1203707 m!6225710))

(assert (=> setNonEmpty!32087 d!1669348))

(declare-fun b!5172478 () Bool)

(declare-fun e!3222961 () Bool)

(declare-fun tp!1451046 () Bool)

(assert (=> b!5172478 (= e!3222961 (and tp_is_empty!38511 tp!1451046))))

(assert (=> b!5172250 (= tp!1451019 e!3222961)))

(assert (= (and b!5172250 ((_ is Cons!60101) (t!373378 testedP!294))) b!5172478))

(declare-fun condSetEmpty!32095 () Bool)

(assert (=> setNonEmpty!32088 (= condSetEmpty!32095 (= setRest!32088 ((as const (Array Context!8026 Bool)) false)))))

(declare-fun setRes!32095 () Bool)

(assert (=> setNonEmpty!32088 (= tp!1451023 setRes!32095)))

(declare-fun setIsEmpty!32095 () Bool)

(assert (=> setIsEmpty!32095 setRes!32095))

(declare-fun setElem!32095 () Context!8026)

(declare-fun e!3222964 () Bool)

(declare-fun setNonEmpty!32095 () Bool)

(declare-fun tp!1451052 () Bool)

(assert (=> setNonEmpty!32095 (= setRes!32095 (and tp!1451052 (inv!79819 setElem!32095) e!3222964))))

(declare-fun setRest!32095 () (InoxSet Context!8026))

(assert (=> setNonEmpty!32095 (= setRest!32088 ((_ map or) (store ((as const (Array Context!8026 Bool)) false) setElem!32095 true) setRest!32095))))

(declare-fun b!5172483 () Bool)

(declare-fun tp!1451051 () Bool)

(assert (=> b!5172483 (= e!3222964 tp!1451051)))

(assert (= (and setNonEmpty!32088 condSetEmpty!32095) setIsEmpty!32095))

(assert (= (and setNonEmpty!32088 (not condSetEmpty!32095)) setNonEmpty!32095))

(assert (= setNonEmpty!32095 b!5172483))

(declare-fun m!6225712 () Bool)

(assert (=> setNonEmpty!32095 m!6225712))

(declare-fun b!5172488 () Bool)

(declare-fun e!3222967 () Bool)

(declare-fun tp!1451057 () Bool)

(declare-fun tp!1451058 () Bool)

(assert (=> b!5172488 (= e!3222967 (and tp!1451057 tp!1451058))))

(assert (=> b!5172255 (= tp!1451018 e!3222967)))

(assert (= (and b!5172255 ((_ is Cons!60102) (exprs!4513 setElem!32087))) b!5172488))

(declare-fun b!5172489 () Bool)

(declare-fun e!3222968 () Bool)

(declare-fun tp!1451059 () Bool)

(declare-fun tp!1451060 () Bool)

(assert (=> b!5172489 (= e!3222968 (and tp!1451059 tp!1451060))))

(assert (=> b!5172249 (= tp!1451021 e!3222968)))

(assert (= (and b!5172249 ((_ is Cons!60102) (exprs!4513 setElem!32088))) b!5172489))

(declare-fun condSetEmpty!32096 () Bool)

(assert (=> setNonEmpty!32087 (= condSetEmpty!32096 (= setRest!32087 ((as const (Array Context!8026 Bool)) false)))))

(declare-fun setRes!32096 () Bool)

(assert (=> setNonEmpty!32087 (= tp!1451020 setRes!32096)))

(declare-fun setIsEmpty!32096 () Bool)

(assert (=> setIsEmpty!32096 setRes!32096))

(declare-fun tp!1451062 () Bool)

(declare-fun setNonEmpty!32096 () Bool)

(declare-fun e!3222969 () Bool)

(declare-fun setElem!32096 () Context!8026)

(assert (=> setNonEmpty!32096 (= setRes!32096 (and tp!1451062 (inv!79819 setElem!32096) e!3222969))))

(declare-fun setRest!32096 () (InoxSet Context!8026))

(assert (=> setNonEmpty!32096 (= setRest!32087 ((_ map or) (store ((as const (Array Context!8026 Bool)) false) setElem!32096 true) setRest!32096))))

(declare-fun b!5172490 () Bool)

(declare-fun tp!1451061 () Bool)

(assert (=> b!5172490 (= e!3222969 tp!1451061)))

(assert (= (and setNonEmpty!32087 condSetEmpty!32096) setIsEmpty!32096))

(assert (= (and setNonEmpty!32087 (not condSetEmpty!32096)) setNonEmpty!32096))

(assert (= setNonEmpty!32096 b!5172490))

(declare-fun m!6225714 () Bool)

(assert (=> setNonEmpty!32096 m!6225714))

(declare-fun b!5172491 () Bool)

(declare-fun e!3222970 () Bool)

(declare-fun tp!1451063 () Bool)

(assert (=> b!5172491 (= e!3222970 (and tp_is_empty!38511 tp!1451063))))

(assert (=> b!5172256 (= tp!1451022 e!3222970)))

(assert (= (and b!5172256 ((_ is Cons!60101) (t!373378 input!5817))) b!5172491))

(check-sat (not b!5172264) (not bm!363179) (not bm!363181) (not b!5172358) (not b!5172359) (not b!5172384) (not b!5172489) (not b!5172431) (not d!1669328) (not bm!363185) (not b!5172428) (not setNonEmpty!32096) (not d!1669322) (not b!5172465) (not b!5172423) (not d!1669302) (not d!1669310) (not bm!363183) (not setNonEmpty!32095) tp_is_empty!38511 (not b!5172472) (not b!5172491) (not bm!363186) (not b!5172357) (not b!5172488) (not b!5172368) (not b!5172365) (not d!1669334) (not d!1669296) (not b!5172483) (not bm!363184) (not b!5172490) (not d!1669348) (not b!5172398) (not b!5172478) (not b!5172367) (not d!1669336) (not d!1669340) (not b!5172397) (not b!5172464) (not bm!363180) (not b!5172385) (not b!5172366) (not d!1669346) (not b!5172383) (not d!1669288) (not b!5172462) (not bm!363182) (not d!1669268))
(check-sat)
(get-model)

(declare-fun d!1669456 () Bool)

(declare-fun res!2198443 () Bool)

(declare-fun e!3223036 () Bool)

(assert (=> d!1669456 (=> res!2198443 e!3223036)))

(assert (=> d!1669456 (= res!2198443 ((_ is Nil!60102) (exprs!4513 setElem!32087)))))

(assert (=> d!1669456 (= (forall!14139 (exprs!4513 setElem!32087) lambda!258259) e!3223036)))

(declare-fun b!5172598 () Bool)

(declare-fun e!3223037 () Bool)

(assert (=> b!5172598 (= e!3223036 e!3223037)))

(declare-fun res!2198444 () Bool)

(assert (=> b!5172598 (=> (not res!2198444) (not e!3223037))))

(declare-fun dynLambda!23873 (Int Regex!14629) Bool)

(assert (=> b!5172598 (= res!2198444 (dynLambda!23873 lambda!258259 (h!66550 (exprs!4513 setElem!32087))))))

(declare-fun b!5172599 () Bool)

(assert (=> b!5172599 (= e!3223037 (forall!14139 (t!373379 (exprs!4513 setElem!32087)) lambda!258259))))

(assert (= (and d!1669456 (not res!2198443)) b!5172598))

(assert (= (and b!5172598 res!2198444) b!5172599))

(declare-fun b_lambda!200901 () Bool)

(assert (=> (not b_lambda!200901) (not b!5172598)))

(declare-fun m!6225962 () Bool)

(assert (=> b!5172598 m!6225962))

(declare-fun m!6225964 () Bool)

(assert (=> b!5172599 m!6225964))

(assert (=> d!1669296 d!1669456))

(assert (=> d!1669336 d!1669342))

(assert (=> d!1669336 d!1669338))

(declare-fun d!1669460 () Bool)

(assert (=> d!1669460 (<= (size!39665 testedP!294) (size!39665 input!5817))))

(assert (=> d!1669460 true))

(declare-fun _$64!703 () Unit!151796)

(assert (=> d!1669460 (= (choose!38352 testedP!294 input!5817) _$64!703)))

(declare-fun bs!1203733 () Bool)

(assert (= bs!1203733 d!1669460))

(assert (=> bs!1203733 m!6225462))

(assert (=> bs!1203733 m!6225464))

(assert (=> d!1669336 d!1669460))

(assert (=> d!1669336 d!1669316))

(declare-fun d!1669462 () Bool)

(declare-fun c!890504 () Bool)

(assert (=> d!1669462 (= c!890504 ((_ is Nil!60101) lt!2129838))))

(declare-fun e!3223040 () (InoxSet C!29528))

(assert (=> d!1669462 (= (content!10651 lt!2129838) e!3223040)))

(declare-fun b!5172604 () Bool)

(assert (=> b!5172604 (= e!3223040 ((as const (Array C!29528 Bool)) false))))

(declare-fun b!5172605 () Bool)

(assert (=> b!5172605 (= e!3223040 ((_ map or) (store ((as const (Array C!29528 Bool)) false) (h!66549 lt!2129838) true) (content!10651 (t!373378 lt!2129838))))))

(assert (= (and d!1669462 c!890504) b!5172604))

(assert (= (and d!1669462 (not c!890504)) b!5172605))

(declare-fun m!6225966 () Bool)

(assert (=> b!5172605 m!6225966))

(declare-fun m!6225968 () Bool)

(assert (=> b!5172605 m!6225968))

(assert (=> d!1669328 d!1669462))

(declare-fun d!1669464 () Bool)

(declare-fun c!890505 () Bool)

(assert (=> d!1669464 (= c!890505 ((_ is Nil!60101) testedP!294))))

(declare-fun e!3223041 () (InoxSet C!29528))

(assert (=> d!1669464 (= (content!10651 testedP!294) e!3223041)))

(declare-fun b!5172606 () Bool)

(assert (=> b!5172606 (= e!3223041 ((as const (Array C!29528 Bool)) false))))

(declare-fun b!5172607 () Bool)

(assert (=> b!5172607 (= e!3223041 ((_ map or) (store ((as const (Array C!29528 Bool)) false) (h!66549 testedP!294) true) (content!10651 (t!373378 testedP!294))))))

(assert (= (and d!1669464 c!890505) b!5172606))

(assert (= (and d!1669464 (not c!890505)) b!5172607))

(declare-fun m!6225970 () Bool)

(assert (=> b!5172607 m!6225970))

(declare-fun m!6225972 () Bool)

(assert (=> b!5172607 m!6225972))

(assert (=> d!1669328 d!1669464))

(declare-fun d!1669466 () Bool)

(declare-fun c!890506 () Bool)

(assert (=> d!1669466 (= c!890506 ((_ is Nil!60101) (Cons!60101 lt!2129705 Nil!60101)))))

(declare-fun e!3223042 () (InoxSet C!29528))

(assert (=> d!1669466 (= (content!10651 (Cons!60101 lt!2129705 Nil!60101)) e!3223042)))

(declare-fun b!5172608 () Bool)

(assert (=> b!5172608 (= e!3223042 ((as const (Array C!29528 Bool)) false))))

(declare-fun b!5172609 () Bool)

(assert (=> b!5172609 (= e!3223042 ((_ map or) (store ((as const (Array C!29528 Bool)) false) (h!66549 (Cons!60101 lt!2129705 Nil!60101)) true) (content!10651 (t!373378 (Cons!60101 lt!2129705 Nil!60101)))))))

(assert (= (and d!1669466 c!890506) b!5172608))

(assert (= (and d!1669466 (not c!890506)) b!5172609))

(declare-fun m!6225974 () Bool)

(assert (=> b!5172609 m!6225974))

(declare-fun m!6225976 () Bool)

(assert (=> b!5172609 m!6225976))

(assert (=> d!1669328 d!1669466))

(assert (=> bm!363180 d!1669310))

(declare-fun b!5172613 () Bool)

(declare-fun e!3223044 () Bool)

(declare-fun lt!2129984 () List!60225)

(assert (=> b!5172613 (= e!3223044 (or (not (= (Cons!60101 lt!2129705 Nil!60101) Nil!60101)) (= lt!2129984 (t!373378 testedP!294))))))

(declare-fun b!5172611 () Bool)

(declare-fun e!3223043 () List!60225)

(assert (=> b!5172611 (= e!3223043 (Cons!60101 (h!66549 (t!373378 testedP!294)) (++!13153 (t!373378 (t!373378 testedP!294)) (Cons!60101 lt!2129705 Nil!60101))))))

(declare-fun b!5172610 () Bool)

(assert (=> b!5172610 (= e!3223043 (Cons!60101 lt!2129705 Nil!60101))))

(declare-fun b!5172612 () Bool)

(declare-fun res!2198445 () Bool)

(assert (=> b!5172612 (=> (not res!2198445) (not e!3223044))))

(assert (=> b!5172612 (= res!2198445 (= (size!39665 lt!2129984) (+ (size!39665 (t!373378 testedP!294)) (size!39665 (Cons!60101 lt!2129705 Nil!60101)))))))

(declare-fun d!1669468 () Bool)

(assert (=> d!1669468 e!3223044))

(declare-fun res!2198446 () Bool)

(assert (=> d!1669468 (=> (not res!2198446) (not e!3223044))))

(assert (=> d!1669468 (= res!2198446 (= (content!10651 lt!2129984) ((_ map or) (content!10651 (t!373378 testedP!294)) (content!10651 (Cons!60101 lt!2129705 Nil!60101)))))))

(assert (=> d!1669468 (= lt!2129984 e!3223043)))

(declare-fun c!890507 () Bool)

(assert (=> d!1669468 (= c!890507 ((_ is Nil!60101) (t!373378 testedP!294)))))

(assert (=> d!1669468 (= (++!13153 (t!373378 testedP!294) (Cons!60101 lt!2129705 Nil!60101)) lt!2129984)))

(assert (= (and d!1669468 c!890507) b!5172610))

(assert (= (and d!1669468 (not c!890507)) b!5172611))

(assert (= (and d!1669468 res!2198446) b!5172612))

(assert (= (and b!5172612 res!2198445) b!5172613))

(declare-fun m!6225978 () Bool)

(assert (=> b!5172611 m!6225978))

(declare-fun m!6225980 () Bool)

(assert (=> b!5172612 m!6225980))

(assert (=> b!5172612 m!6225676))

(assert (=> b!5172612 m!6225654))

(declare-fun m!6225982 () Bool)

(assert (=> d!1669468 m!6225982))

(assert (=> d!1669468 m!6225972))

(assert (=> d!1669468 m!6225660))

(assert (=> b!5172397 d!1669468))

(declare-fun d!1669470 () Bool)

(declare-fun lt!2129985 () Int)

(assert (=> d!1669470 (>= lt!2129985 0)))

(declare-fun e!3223045 () Int)

(assert (=> d!1669470 (= lt!2129985 e!3223045)))

(declare-fun c!890508 () Bool)

(assert (=> d!1669470 (= c!890508 ((_ is Nil!60101) (_1!35209 lt!2129912)))))

(assert (=> d!1669470 (= (size!39665 (_1!35209 lt!2129912)) lt!2129985)))

(declare-fun b!5172614 () Bool)

(assert (=> b!5172614 (= e!3223045 0)))

(declare-fun b!5172615 () Bool)

(assert (=> b!5172615 (= e!3223045 (+ 1 (size!39665 (t!373378 (_1!35209 lt!2129912)))))))

(assert (= (and d!1669470 c!890508) b!5172614))

(assert (= (and d!1669470 (not c!890508)) b!5172615))

(declare-fun m!6225984 () Bool)

(assert (=> b!5172615 m!6225984))

(assert (=> b!5172464 d!1669470))

(assert (=> b!5172464 d!1669342))

(declare-fun d!1669472 () Bool)

(declare-fun choose!38355 ((InoxSet Context!8026) Int) (InoxSet Context!8026))

(assert (=> d!1669472 (= (flatMap!450 z!4581 lambda!258256) (choose!38355 z!4581 lambda!258256))))

(declare-fun bs!1203734 () Bool)

(assert (= bs!1203734 d!1669472))

(declare-fun m!6225986 () Bool)

(assert (=> bs!1203734 m!6225986))

(assert (=> d!1669268 d!1669472))

(assert (=> bm!363182 d!1669302))

(declare-fun b!5172616 () Bool)

(declare-fun c!890512 () Bool)

(declare-fun call!363206 () Bool)

(assert (=> b!5172616 (= c!890512 call!363206)))

(declare-fun lt!2129993 () Unit!151796)

(declare-fun lt!2129995 () Unit!151796)

(assert (=> b!5172616 (= lt!2129993 lt!2129995)))

(assert (=> b!5172616 (= input!5817 lt!2129901)))

(declare-fun call!363207 () Unit!151796)

(assert (=> b!5172616 (= lt!2129995 call!363207)))

(declare-fun lt!2130002 () Unit!151796)

(declare-fun lt!2130011 () Unit!151796)

(assert (=> b!5172616 (= lt!2130002 lt!2130011)))

(declare-fun call!363203 () Bool)

(assert (=> b!5172616 call!363203))

(declare-fun call!363200 () Unit!151796)

(assert (=> b!5172616 (= lt!2130011 call!363200)))

(declare-fun e!3223050 () tuple2!63812)

(declare-fun e!3223047 () tuple2!63812)

(assert (=> b!5172616 (= e!3223050 e!3223047)))

(declare-fun b!5172617 () Bool)

(assert (=> b!5172617 (= e!3223047 (tuple2!63813 lt!2129901 Nil!60101))))

(declare-fun bm!363195 () Bool)

(assert (=> bm!363195 (= call!363206 (nullableZipper!1175 call!363185))))

(declare-fun b!5172618 () Bool)

(declare-fun c!890510 () Bool)

(assert (=> b!5172618 (= c!890510 call!363206)))

(declare-fun lt!2130003 () Unit!151796)

(declare-fun lt!2130009 () Unit!151796)

(assert (=> b!5172618 (= lt!2130003 lt!2130009)))

(declare-fun lt!2130000 () List!60225)

(declare-fun lt!2130008 () C!29528)

(assert (=> b!5172618 (= (++!13153 (++!13153 lt!2129901 (Cons!60101 lt!2130008 Nil!60101)) lt!2130000) input!5817)))

(assert (=> b!5172618 (= lt!2130009 (lemmaMoveElementToOtherListKeepsConcatEq!1580 lt!2129901 lt!2130008 lt!2130000 input!5817))))

(assert (=> b!5172618 (= lt!2130000 (tail!10160 call!363189))))

(assert (=> b!5172618 (= lt!2130008 (head!11053 call!363189))))

(declare-fun lt!2130005 () Unit!151796)

(declare-fun lt!2129998 () Unit!151796)

(assert (=> b!5172618 (= lt!2130005 lt!2129998)))

(assert (=> b!5172618 (isPrefix!5762 (++!13153 lt!2129901 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 lt!2129901)) Nil!60101)) input!5817)))

(assert (=> b!5172618 (= lt!2129998 (lemmaAddHeadSuffixToPrefixStillPrefix!1075 lt!2129901 input!5817))))

(declare-fun lt!2129986 () List!60225)

(assert (=> b!5172618 (= lt!2129986 (++!13153 lt!2129901 (Cons!60101 (head!11053 call!363189) Nil!60101)))))

(declare-fun lt!2129996 () Unit!151796)

(declare-fun e!3223051 () Unit!151796)

(assert (=> b!5172618 (= lt!2129996 e!3223051)))

(declare-fun c!890514 () Bool)

(assert (=> b!5172618 (= c!890514 (= (size!39665 lt!2129901) (size!39665 input!5817)))))

(declare-fun lt!2130010 () Unit!151796)

(declare-fun lt!2129994 () Unit!151796)

(assert (=> b!5172618 (= lt!2130010 lt!2129994)))

(assert (=> b!5172618 (<= (size!39665 lt!2129901) (size!39665 input!5817))))

(assert (=> b!5172618 (= lt!2129994 (lemmaIsPrefixThenSmallerEqSize!925 lt!2129901 input!5817))))

(declare-fun e!3223049 () tuple2!63812)

(assert (=> b!5172618 (= e!3223050 e!3223049)))

(declare-fun b!5172619 () Bool)

(declare-fun call!363204 () tuple2!63812)

(assert (=> b!5172619 (= e!3223049 call!363204)))

(declare-fun b!5172620 () Bool)

(declare-fun e!3223048 () Bool)

(declare-fun lt!2129997 () tuple2!63812)

(assert (=> b!5172620 (= e!3223048 (>= (size!39665 (_1!35209 lt!2129997)) (size!39665 lt!2129901)))))

(declare-fun bm!363196 () Bool)

(assert (=> bm!363196 (= call!363207 (lemmaIsPrefixSameLengthThenSameList!1411 input!5817 lt!2129901 input!5817))))

(declare-fun call!363201 () (InoxSet Context!8026))

(declare-fun call!363205 () List!60225)

(declare-fun bm!363197 () Bool)

(assert (=> bm!363197 (= call!363204 (findLongestMatchInnerZipper!287 call!363201 lt!2129986 (+ lt!2129710 1 1) call!363205 input!5817 lt!2129703))))

(declare-fun b!5172621 () Bool)

(declare-fun e!3223053 () Bool)

(assert (=> b!5172621 (= e!3223053 e!3223048)))

(declare-fun res!2198447 () Bool)

(assert (=> b!5172621 (=> res!2198447 e!3223048)))

(assert (=> b!5172621 (= res!2198447 (isEmpty!32179 (_1!35209 lt!2129997)))))

(declare-fun bm!363198 () Bool)

(assert (=> bm!363198 (= call!363200 (lemmaIsPrefixRefl!3769 input!5817 input!5817))))

(declare-fun b!5172622 () Bool)

(declare-fun Unit!151806 () Unit!151796)

(assert (=> b!5172622 (= e!3223051 Unit!151806)))

(declare-fun d!1669474 () Bool)

(assert (=> d!1669474 e!3223053))

(declare-fun res!2198448 () Bool)

(assert (=> d!1669474 (=> (not res!2198448) (not e!3223053))))

(assert (=> d!1669474 (= res!2198448 (= (++!13153 (_1!35209 lt!2129997) (_2!35209 lt!2129997)) input!5817))))

(declare-fun e!3223052 () tuple2!63812)

(assert (=> d!1669474 (= lt!2129997 e!3223052)))

(declare-fun c!890509 () Bool)

(assert (=> d!1669474 (= c!890509 (lostCauseZipper!1332 call!363185))))

(declare-fun lt!2129988 () Unit!151796)

(declare-fun Unit!151807 () Unit!151796)

(assert (=> d!1669474 (= lt!2129988 Unit!151807)))

(assert (=> d!1669474 (= (getSuffix!3412 input!5817 lt!2129901) call!363189)))

(declare-fun lt!2129999 () Unit!151796)

(declare-fun lt!2129992 () Unit!151796)

(assert (=> d!1669474 (= lt!2129999 lt!2129992)))

(declare-fun lt!2129990 () List!60225)

(assert (=> d!1669474 (= call!363189 lt!2129990)))

(assert (=> d!1669474 (= lt!2129992 (lemmaSamePrefixThenSameSuffix!2699 lt!2129901 call!363189 lt!2129901 lt!2129990 input!5817))))

(assert (=> d!1669474 (= lt!2129990 (getSuffix!3412 input!5817 lt!2129901))))

(declare-fun lt!2130006 () Unit!151796)

(declare-fun lt!2129991 () Unit!151796)

(assert (=> d!1669474 (= lt!2130006 lt!2129991)))

(assert (=> d!1669474 (isPrefix!5762 lt!2129901 (++!13153 lt!2129901 call!363189))))

(assert (=> d!1669474 (= lt!2129991 (lemmaConcatTwoListThenFirstIsPrefix!3593 lt!2129901 call!363189))))

(assert (=> d!1669474 (= (++!13153 lt!2129901 call!363189) input!5817)))

(assert (=> d!1669474 (= (findLongestMatchInnerZipper!287 call!363185 lt!2129901 (+ lt!2129710 1) call!363189 input!5817 lt!2129703) lt!2129997)))

(declare-fun bm!363199 () Bool)

(assert (=> bm!363199 (= call!363205 (tail!10160 call!363189))))

(declare-fun b!5172623 () Bool)

(assert (=> b!5172623 (= e!3223052 (tuple2!63813 Nil!60101 input!5817))))

(declare-fun b!5172624 () Bool)

(declare-fun Unit!151808 () Unit!151796)

(assert (=> b!5172624 (= e!3223051 Unit!151808)))

(declare-fun lt!2129989 () Unit!151796)

(assert (=> b!5172624 (= lt!2129989 call!363200)))

(assert (=> b!5172624 call!363203))

(declare-fun lt!2130001 () Unit!151796)

(assert (=> b!5172624 (= lt!2130001 lt!2129989)))

(declare-fun lt!2129987 () Unit!151796)

(assert (=> b!5172624 (= lt!2129987 call!363207)))

(assert (=> b!5172624 (= input!5817 lt!2129901)))

(declare-fun lt!2130004 () Unit!151796)

(assert (=> b!5172624 (= lt!2130004 lt!2129987)))

(assert (=> b!5172624 false))

(declare-fun b!5172625 () Bool)

(assert (=> b!5172625 (= e!3223047 (tuple2!63813 Nil!60101 input!5817))))

(declare-fun bm!363200 () Bool)

(declare-fun call!363202 () C!29528)

(assert (=> bm!363200 (= call!363202 (head!11053 call!363189))))

(declare-fun b!5172626 () Bool)

(declare-fun e!3223046 () tuple2!63812)

(declare-fun lt!2130007 () tuple2!63812)

(assert (=> b!5172626 (= e!3223046 lt!2130007)))

(declare-fun bm!363201 () Bool)

(assert (=> bm!363201 (= call!363201 (derivationStepZipper!981 call!363185 call!363202))))

(declare-fun bm!363202 () Bool)

(assert (=> bm!363202 (= call!363203 (isPrefix!5762 input!5817 input!5817))))

(declare-fun b!5172627 () Bool)

(assert (=> b!5172627 (= e!3223052 e!3223050)))

(declare-fun c!890511 () Bool)

(assert (=> b!5172627 (= c!890511 (= (+ lt!2129710 1) lt!2129703))))

(declare-fun b!5172628 () Bool)

(assert (=> b!5172628 (= e!3223049 e!3223046)))

(assert (=> b!5172628 (= lt!2130007 call!363204)))

(declare-fun c!890513 () Bool)

(assert (=> b!5172628 (= c!890513 (isEmpty!32179 (_1!35209 lt!2130007)))))

(declare-fun b!5172629 () Bool)

(assert (=> b!5172629 (= e!3223046 (tuple2!63813 lt!2129901 call!363189))))

(assert (= (and d!1669474 c!890509) b!5172623))

(assert (= (and d!1669474 (not c!890509)) b!5172627))

(assert (= (and b!5172627 c!890511) b!5172616))

(assert (= (and b!5172627 (not c!890511)) b!5172618))

(assert (= (and b!5172616 c!890512) b!5172617))

(assert (= (and b!5172616 (not c!890512)) b!5172625))

(assert (= (and b!5172618 c!890514) b!5172624))

(assert (= (and b!5172618 (not c!890514)) b!5172622))

(assert (= (and b!5172618 c!890510) b!5172628))

(assert (= (and b!5172618 (not c!890510)) b!5172619))

(assert (= (and b!5172628 c!890513) b!5172629))

(assert (= (and b!5172628 (not c!890513)) b!5172626))

(assert (= (or b!5172628 b!5172619) bm!363199))

(assert (= (or b!5172628 b!5172619) bm!363200))

(assert (= (or b!5172628 b!5172619) bm!363201))

(assert (= (or b!5172628 b!5172619) bm!363197))

(assert (= (or b!5172616 b!5172624) bm!363198))

(assert (= (or b!5172616 b!5172618) bm!363195))

(assert (= (or b!5172616 b!5172624) bm!363202))

(assert (= (or b!5172616 b!5172624) bm!363196))

(assert (= (and d!1669474 res!2198448) b!5172621))

(assert (= (and b!5172621 (not res!2198447)) b!5172620))

(declare-fun m!6225988 () Bool)

(assert (=> bm!363197 m!6225988))

(declare-fun m!6225990 () Bool)

(assert (=> bm!363201 m!6225990))

(declare-fun m!6225992 () Bool)

(assert (=> bm!363200 m!6225992))

(declare-fun m!6225994 () Bool)

(assert (=> bm!363196 m!6225994))

(assert (=> bm!363202 m!6225456))

(declare-fun m!6225996 () Bool)

(assert (=> bm!363195 m!6225996))

(assert (=> bm!363198 m!6225454))

(declare-fun m!6225998 () Bool)

(assert (=> d!1669474 m!6225998))

(declare-fun m!6226000 () Bool)

(assert (=> d!1669474 m!6226000))

(declare-fun m!6226002 () Bool)

(assert (=> d!1669474 m!6226002))

(declare-fun m!6226004 () Bool)

(assert (=> d!1669474 m!6226004))

(declare-fun m!6226006 () Bool)

(assert (=> d!1669474 m!6226006))

(declare-fun m!6226008 () Bool)

(assert (=> d!1669474 m!6226008))

(declare-fun m!6226010 () Bool)

(assert (=> d!1669474 m!6226010))

(assert (=> d!1669474 m!6226000))

(declare-fun m!6226012 () Bool)

(assert (=> b!5172618 m!6226012))

(assert (=> b!5172618 m!6225992))

(assert (=> b!5172618 m!6225464))

(declare-fun m!6226014 () Bool)

(assert (=> b!5172618 m!6226014))

(declare-fun m!6226016 () Bool)

(assert (=> b!5172618 m!6226016))

(assert (=> b!5172618 m!6226008))

(declare-fun m!6226018 () Bool)

(assert (=> b!5172618 m!6226018))

(declare-fun m!6226020 () Bool)

(assert (=> b!5172618 m!6226020))

(assert (=> b!5172618 m!6226014))

(declare-fun m!6226022 () Bool)

(assert (=> b!5172618 m!6226022))

(declare-fun m!6226024 () Bool)

(assert (=> b!5172618 m!6226024))

(declare-fun m!6226026 () Bool)

(assert (=> b!5172618 m!6226026))

(declare-fun m!6226028 () Bool)

(assert (=> b!5172618 m!6226028))

(declare-fun m!6226030 () Bool)

(assert (=> b!5172618 m!6226030))

(declare-fun m!6226032 () Bool)

(assert (=> b!5172618 m!6226032))

(assert (=> b!5172618 m!6226008))

(assert (=> b!5172618 m!6226024))

(declare-fun m!6226034 () Bool)

(assert (=> b!5172621 m!6226034))

(assert (=> bm!363199 m!6226032))

(declare-fun m!6226036 () Bool)

(assert (=> b!5172628 m!6226036))

(declare-fun m!6226038 () Bool)

(assert (=> b!5172620 m!6226038))

(assert (=> b!5172620 m!6226028))

(assert (=> bm!363181 d!1669474))

(declare-fun d!1669476 () Bool)

(declare-fun lt!2130028 () Int)

(assert (=> d!1669476 (>= lt!2130028 0)))

(declare-fun e!3223058 () Int)

(assert (=> d!1669476 (= lt!2130028 e!3223058)))

(declare-fun c!890523 () Bool)

(assert (=> d!1669476 (= c!890523 ((_ is Nil!60101) (t!373378 testedP!294)))))

(assert (=> d!1669476 (= (size!39665 (t!373378 testedP!294)) lt!2130028)))

(declare-fun b!5172634 () Bool)

(assert (=> b!5172634 (= e!3223058 0)))

(declare-fun b!5172635 () Bool)

(assert (=> b!5172635 (= e!3223058 (+ 1 (size!39665 (t!373378 (t!373378 testedP!294)))))))

(assert (= (and d!1669476 c!890523) b!5172634))

(assert (= (and d!1669476 (not c!890523)) b!5172635))

(declare-fun m!6226040 () Bool)

(assert (=> b!5172635 m!6226040))

(assert (=> b!5172431 d!1669476))

(declare-fun d!1669478 () Bool)

(declare-fun lt!2130029 () Int)

(assert (=> d!1669478 (>= lt!2130029 0)))

(declare-fun e!3223059 () Int)

(assert (=> d!1669478 (= lt!2130029 e!3223059)))

(declare-fun c!890524 () Bool)

(assert (=> d!1669478 (= c!890524 ((_ is Nil!60101) lt!2129838))))

(assert (=> d!1669478 (= (size!39665 lt!2129838) lt!2130029)))

(declare-fun b!5172636 () Bool)

(assert (=> b!5172636 (= e!3223059 0)))

(declare-fun b!5172637 () Bool)

(assert (=> b!5172637 (= e!3223059 (+ 1 (size!39665 (t!373378 lt!2129838))))))

(assert (= (and d!1669478 c!890524) b!5172636))

(assert (= (and d!1669478 (not c!890524)) b!5172637))

(declare-fun m!6226042 () Bool)

(assert (=> b!5172637 m!6226042))

(assert (=> b!5172398 d!1669478))

(assert (=> b!5172398 d!1669342))

(declare-fun d!1669480 () Bool)

(declare-fun lt!2130030 () Int)

(assert (=> d!1669480 (>= lt!2130030 0)))

(declare-fun e!3223062 () Int)

(assert (=> d!1669480 (= lt!2130030 e!3223062)))

(declare-fun c!890525 () Bool)

(assert (=> d!1669480 (= c!890525 ((_ is Nil!60101) (Cons!60101 lt!2129705 Nil!60101)))))

(assert (=> d!1669480 (= (size!39665 (Cons!60101 lt!2129705 Nil!60101)) lt!2130030)))

(declare-fun b!5172638 () Bool)

(assert (=> b!5172638 (= e!3223062 0)))

(declare-fun b!5172639 () Bool)

(assert (=> b!5172639 (= e!3223062 (+ 1 (size!39665 (t!373378 (Cons!60101 lt!2129705 Nil!60101)))))))

(assert (= (and d!1669480 c!890525) b!5172638))

(assert (= (and d!1669480 (not c!890525)) b!5172639))

(declare-fun m!6226044 () Bool)

(assert (=> b!5172639 m!6226044))

(assert (=> b!5172398 d!1669480))

(declare-fun d!1669482 () Bool)

(assert (=> d!1669482 (= (isEmpty!32179 (_1!35209 lt!2129912)) ((_ is Nil!60101) (_1!35209 lt!2129912)))))

(assert (=> b!5172465 d!1669482))

(declare-fun d!1669484 () Bool)

(assert (=> d!1669484 (= (tail!10160 lt!2129708) (t!373378 lt!2129708))))

(assert (=> bm!363183 d!1669484))

(declare-fun d!1669486 () Bool)

(declare-fun lt!2130033 () Bool)

(declare-datatypes ((List!60227 0))(
  ( (Nil!60103) (Cons!60103 (h!66551 Context!8026) (t!373380 List!60227)) )
))
(declare-fun exists!1923 (List!60227 Int) Bool)

(declare-fun toList!8452 ((InoxSet Context!8026)) List!60227)

(assert (=> d!1669486 (= lt!2130033 (exists!1923 (toList!8452 z!4581) lambda!258268))))

(declare-fun choose!38356 ((InoxSet Context!8026) Int) Bool)

(assert (=> d!1669486 (= lt!2130033 (choose!38356 z!4581 lambda!258268))))

(assert (=> d!1669486 (= (exists!1922 z!4581 lambda!258268) lt!2130033)))

(declare-fun bs!1203735 () Bool)

(assert (= bs!1203735 d!1669486))

(declare-fun m!6226046 () Bool)

(assert (=> bs!1203735 m!6226046))

(assert (=> bs!1203735 m!6226046))

(declare-fun m!6226048 () Bool)

(assert (=> bs!1203735 m!6226048))

(declare-fun m!6226050 () Bool)

(assert (=> bs!1203735 m!6226050))

(assert (=> d!1669334 d!1669486))

(assert (=> d!1669288 d!1669268))

(declare-fun d!1669488 () Bool)

(declare-fun c!890528 () Bool)

(assert (=> d!1669488 (= c!890528 ((_ is Cons!60101) (++!13153 testedP!294 (Cons!60101 lt!2129705 Nil!60101))))))

(declare-fun e!3223063 () (InoxSet Context!8026))

(assert (=> d!1669488 (= (derivationZipper!252 baseZ!62 (++!13153 testedP!294 (Cons!60101 lt!2129705 Nil!60101))) e!3223063)))

(declare-fun b!5172640 () Bool)

(assert (=> b!5172640 (= e!3223063 (derivationZipper!252 (derivationStepZipper!981 baseZ!62 (h!66549 (++!13153 testedP!294 (Cons!60101 lt!2129705 Nil!60101)))) (t!373378 (++!13153 testedP!294 (Cons!60101 lt!2129705 Nil!60101)))))))

(declare-fun b!5172641 () Bool)

(assert (=> b!5172641 (= e!3223063 baseZ!62)))

(assert (= (and d!1669488 c!890528) b!5172640))

(assert (= (and d!1669488 (not c!890528)) b!5172641))

(declare-fun m!6226052 () Bool)

(assert (=> b!5172640 m!6226052))

(assert (=> b!5172640 m!6226052))

(declare-fun m!6226054 () Bool)

(assert (=> b!5172640 m!6226054))

(assert (=> d!1669288 d!1669488))

(declare-fun d!1669490 () Bool)

(assert (=> d!1669490 (= (derivationZipper!252 baseZ!62 (++!13153 testedP!294 (Cons!60101 lt!2129705 Nil!60101))) (derivationStepZipper!981 z!4581 lt!2129705))))

(assert (=> d!1669490 true))

(declare-fun _$83!272 () Unit!151796)

(assert (=> d!1669490 (= (choose!38348 baseZ!62 z!4581 testedP!294 lt!2129705) _$83!272)))

(declare-fun bs!1203742 () Bool)

(assert (= bs!1203742 d!1669490))

(assert (=> bs!1203742 m!6225484))

(assert (=> bs!1203742 m!6225484))

(assert (=> bs!1203742 m!6225570))

(assert (=> bs!1203742 m!6225492))

(assert (=> d!1669288 d!1669490))

(assert (=> d!1669288 d!1669318))

(assert (=> d!1669288 d!1669328))

(declare-fun d!1669492 () Bool)

(declare-fun res!2198449 () Bool)

(declare-fun e!3223065 () Bool)

(assert (=> d!1669492 (=> res!2198449 e!3223065)))

(assert (=> d!1669492 (= res!2198449 ((_ is Nil!60102) (exprs!4513 setElem!32088)))))

(assert (=> d!1669492 (= (forall!14139 (exprs!4513 setElem!32088) lambda!258269) e!3223065)))

(declare-fun b!5172644 () Bool)

(declare-fun e!3223066 () Bool)

(assert (=> b!5172644 (= e!3223065 e!3223066)))

(declare-fun res!2198450 () Bool)

(assert (=> b!5172644 (=> (not res!2198450) (not e!3223066))))

(assert (=> b!5172644 (= res!2198450 (dynLambda!23873 lambda!258269 (h!66550 (exprs!4513 setElem!32088))))))

(declare-fun b!5172645 () Bool)

(assert (=> b!5172645 (= e!3223066 (forall!14139 (t!373379 (exprs!4513 setElem!32088)) lambda!258269))))

(assert (= (and d!1669492 (not res!2198449)) b!5172644))

(assert (= (and b!5172644 res!2198450) b!5172645))

(declare-fun b_lambda!200903 () Bool)

(assert (=> (not b_lambda!200903) (not b!5172644)))

(declare-fun m!6226058 () Bool)

(assert (=> b!5172644 m!6226058))

(declare-fun m!6226062 () Bool)

(assert (=> b!5172645 m!6226062))

(assert (=> d!1669348 d!1669492))

(declare-fun d!1669494 () Bool)

(declare-fun c!890531 () Bool)

(assert (=> d!1669494 (= c!890531 ((_ is Cons!60101) (t!373378 testedP!294)))))

(declare-fun e!3223067 () (InoxSet Context!8026))

(assert (=> d!1669494 (= (derivationZipper!252 (derivationStepZipper!981 baseZ!62 (h!66549 testedP!294)) (t!373378 testedP!294)) e!3223067)))

(declare-fun b!5172646 () Bool)

(assert (=> b!5172646 (= e!3223067 (derivationZipper!252 (derivationStepZipper!981 (derivationStepZipper!981 baseZ!62 (h!66549 testedP!294)) (h!66549 (t!373378 testedP!294))) (t!373378 (t!373378 testedP!294))))))

(declare-fun b!5172647 () Bool)

(assert (=> b!5172647 (= e!3223067 (derivationStepZipper!981 baseZ!62 (h!66549 testedP!294)))))

(assert (= (and d!1669494 c!890531) b!5172646))

(assert (= (and d!1669494 (not c!890531)) b!5172647))

(assert (=> b!5172646 m!6225610))

(declare-fun m!6226072 () Bool)

(assert (=> b!5172646 m!6226072))

(assert (=> b!5172646 m!6226072))

(declare-fun m!6226074 () Bool)

(assert (=> b!5172646 m!6226074))

(assert (=> b!5172368 d!1669494))

(declare-fun bs!1203743 () Bool)

(declare-fun d!1669498 () Bool)

(assert (= bs!1203743 (and d!1669498 d!1669268)))

(declare-fun lambda!258290 () Int)

(assert (=> bs!1203743 (= (= (h!66549 testedP!294) lt!2129705) (= lambda!258290 lambda!258256))))

(assert (=> d!1669498 true))

(assert (=> d!1669498 (= (derivationStepZipper!981 baseZ!62 (h!66549 testedP!294)) (flatMap!450 baseZ!62 lambda!258290))))

(declare-fun bs!1203744 () Bool)

(assert (= bs!1203744 d!1669498))

(declare-fun m!6226078 () Bool)

(assert (=> bs!1203744 m!6226078))

(assert (=> b!5172368 d!1669498))

(declare-fun d!1669500 () Bool)

(assert (=> d!1669500 (= (head!11053 input!5817) (h!66549 input!5817))))

(assert (=> b!5172357 d!1669500))

(declare-fun bs!1203747 () Bool)

(declare-fun d!1669502 () Bool)

(assert (= bs!1203747 (and d!1669502 d!1669334)))

(declare-fun lambda!258303 () Int)

(assert (=> bs!1203747 (not (= lambda!258303 lambda!258268))))

(declare-fun bs!1203748 () Bool)

(declare-fun b!5172680 () Bool)

(assert (= bs!1203748 (and b!5172680 d!1669334)))

(declare-fun lambda!258304 () Int)

(assert (=> bs!1203748 (not (= lambda!258304 lambda!258268))))

(declare-fun bs!1203749 () Bool)

(assert (= bs!1203749 (and b!5172680 d!1669502)))

(assert (=> bs!1203749 (not (= lambda!258304 lambda!258303))))

(declare-fun bs!1203750 () Bool)

(declare-fun b!5172681 () Bool)

(assert (= bs!1203750 (and b!5172681 d!1669334)))

(declare-fun lambda!258305 () Int)

(assert (=> bs!1203750 (not (= lambda!258305 lambda!258268))))

(declare-fun bs!1203751 () Bool)

(assert (= bs!1203751 (and b!5172681 d!1669502)))

(assert (=> bs!1203751 (not (= lambda!258305 lambda!258303))))

(declare-fun bs!1203752 () Bool)

(assert (= bs!1203752 (and b!5172681 b!5172680)))

(assert (=> bs!1203752 (= lambda!258305 lambda!258304)))

(declare-fun bm!363213 () Bool)

(declare-fun call!363219 () List!60227)

(assert (=> bm!363213 (= call!363219 (toList!8452 z!4581))))

(declare-fun e!3223087 () Unit!151796)

(declare-fun Unit!151812 () Unit!151796)

(assert (=> b!5172680 (= e!3223087 Unit!151812)))

(declare-fun lt!2130061 () List!60227)

(assert (=> b!5172680 (= lt!2130061 call!363219)))

(declare-fun lt!2130063 () Unit!151796)

(declare-fun lemmaNotForallThenExists!472 (List!60227 Int) Unit!151796)

(assert (=> b!5172680 (= lt!2130063 (lemmaNotForallThenExists!472 lt!2130061 lambda!258303))))

(declare-fun call!363218 () Bool)

(assert (=> b!5172680 call!363218))

(declare-fun lt!2130066 () Unit!151796)

(assert (=> b!5172680 (= lt!2130066 lt!2130063)))

(declare-fun lt!2130062 () List!60227)

(declare-fun bm!363214 () Bool)

(declare-fun c!890543 () Bool)

(assert (=> bm!363214 (= call!363218 (exists!1923 (ite c!890543 lt!2130061 lt!2130062) (ite c!890543 lambda!258304 lambda!258305)))))

(declare-fun Unit!151813 () Unit!151796)

(assert (=> b!5172681 (= e!3223087 Unit!151813)))

(assert (=> b!5172681 (= lt!2130062 call!363219)))

(declare-fun lt!2130064 () Unit!151796)

(declare-fun lemmaForallThenNotExists!439 (List!60227 Int) Unit!151796)

(assert (=> b!5172681 (= lt!2130064 (lemmaForallThenNotExists!439 lt!2130062 lambda!258303))))

(assert (=> b!5172681 (not call!363218)))

(declare-fun lt!2130060 () Unit!151796)

(assert (=> b!5172681 (= lt!2130060 lt!2130064)))

(declare-fun lt!2130059 () Bool)

(declare-datatypes ((Option!14837 0))(
  ( (None!14836) (Some!14836 (v!50865 List!60225)) )
))
(declare-fun isEmpty!32180 (Option!14837) Bool)

(declare-fun getLanguageWitness!1008 ((InoxSet Context!8026)) Option!14837)

(assert (=> d!1669502 (= lt!2130059 (isEmpty!32180 (getLanguageWitness!1008 z!4581)))))

(declare-fun forall!14140 ((InoxSet Context!8026) Int) Bool)

(assert (=> d!1669502 (= lt!2130059 (forall!14140 z!4581 lambda!258303))))

(declare-fun lt!2130065 () Unit!151796)

(assert (=> d!1669502 (= lt!2130065 e!3223087)))

(assert (=> d!1669502 (= c!890543 (not (forall!14140 z!4581 lambda!258303)))))

(assert (=> d!1669502 (= (lostCauseZipper!1332 z!4581) lt!2130059)))

(assert (= (and d!1669502 c!890543) b!5172680))

(assert (= (and d!1669502 (not c!890543)) b!5172681))

(assert (= (or b!5172680 b!5172681) bm!363213))

(assert (= (or b!5172680 b!5172681) bm!363214))

(declare-fun m!6226088 () Bool)

(assert (=> d!1669502 m!6226088))

(assert (=> d!1669502 m!6226088))

(declare-fun m!6226090 () Bool)

(assert (=> d!1669502 m!6226090))

(declare-fun m!6226092 () Bool)

(assert (=> d!1669502 m!6226092))

(assert (=> d!1669502 m!6226092))

(declare-fun m!6226094 () Bool)

(assert (=> b!5172681 m!6226094))

(declare-fun m!6226096 () Bool)

(assert (=> b!5172680 m!6226096))

(assert (=> bm!363213 m!6226046))

(declare-fun m!6226098 () Bool)

(assert (=> bm!363214 m!6226098))

(assert (=> d!1669346 d!1669502))

(declare-fun d!1669508 () Bool)

(assert (=> d!1669508 (= lt!2129708 lt!2129905)))

(declare-fun lt!2130069 () Unit!151796)

(declare-fun choose!38357 (List!60225 List!60225 List!60225 List!60225 List!60225) Unit!151796)

(assert (=> d!1669508 (= lt!2130069 (choose!38357 testedP!294 lt!2129708 testedP!294 lt!2129905 input!5817))))

(assert (=> d!1669508 (isPrefix!5762 testedP!294 input!5817)))

(assert (=> d!1669508 (= (lemmaSamePrefixThenSameSuffix!2699 testedP!294 lt!2129708 testedP!294 lt!2129905 input!5817) lt!2130069)))

(declare-fun bs!1203753 () Bool)

(assert (= bs!1203753 d!1669508))

(declare-fun m!6226100 () Bool)

(assert (=> bs!1203753 m!6226100))

(assert (=> bs!1203753 m!6225460))

(assert (=> d!1669346 d!1669508))

(assert (=> d!1669346 d!1669340))

(declare-fun d!1669510 () Bool)

(assert (=> d!1669510 (isPrefix!5762 testedP!294 (++!13153 testedP!294 lt!2129708))))

(declare-fun lt!2130072 () Unit!151796)

(declare-fun choose!38358 (List!60225 List!60225) Unit!151796)

(assert (=> d!1669510 (= lt!2130072 (choose!38358 testedP!294 lt!2129708))))

(assert (=> d!1669510 (= (lemmaConcatTwoListThenFirstIsPrefix!3593 testedP!294 lt!2129708) lt!2130072)))

(declare-fun bs!1203754 () Bool)

(assert (= bs!1203754 d!1669510))

(assert (=> bs!1203754 m!6225684))

(assert (=> bs!1203754 m!6225684))

(assert (=> bs!1203754 m!6225686))

(declare-fun m!6226102 () Bool)

(assert (=> bs!1203754 m!6226102))

(assert (=> d!1669346 d!1669510))

(declare-fun lt!2130073 () List!60225)

(declare-fun b!5172685 () Bool)

(declare-fun e!3223089 () Bool)

(assert (=> b!5172685 (= e!3223089 (or (not (= lt!2129708 Nil!60101)) (= lt!2130073 testedP!294)))))

(declare-fun b!5172683 () Bool)

(declare-fun e!3223088 () List!60225)

(assert (=> b!5172683 (= e!3223088 (Cons!60101 (h!66549 testedP!294) (++!13153 (t!373378 testedP!294) lt!2129708)))))

(declare-fun b!5172682 () Bool)

(assert (=> b!5172682 (= e!3223088 lt!2129708)))

(declare-fun b!5172684 () Bool)

(declare-fun res!2198451 () Bool)

(assert (=> b!5172684 (=> (not res!2198451) (not e!3223089))))

(assert (=> b!5172684 (= res!2198451 (= (size!39665 lt!2130073) (+ (size!39665 testedP!294) (size!39665 lt!2129708))))))

(declare-fun d!1669512 () Bool)

(assert (=> d!1669512 e!3223089))

(declare-fun res!2198452 () Bool)

(assert (=> d!1669512 (=> (not res!2198452) (not e!3223089))))

(assert (=> d!1669512 (= res!2198452 (= (content!10651 lt!2130073) ((_ map or) (content!10651 testedP!294) (content!10651 lt!2129708))))))

(assert (=> d!1669512 (= lt!2130073 e!3223088)))

(declare-fun c!890544 () Bool)

(assert (=> d!1669512 (= c!890544 ((_ is Nil!60101) testedP!294))))

(assert (=> d!1669512 (= (++!13153 testedP!294 lt!2129708) lt!2130073)))

(assert (= (and d!1669512 c!890544) b!5172682))

(assert (= (and d!1669512 (not c!890544)) b!5172683))

(assert (= (and d!1669512 res!2198452) b!5172684))

(assert (= (and b!5172684 res!2198451) b!5172685))

(declare-fun m!6226104 () Bool)

(assert (=> b!5172683 m!6226104))

(declare-fun m!6226106 () Bool)

(assert (=> b!5172684 m!6226106))

(assert (=> b!5172684 m!6225462))

(declare-fun m!6226108 () Bool)

(assert (=> b!5172684 m!6226108))

(declare-fun m!6226110 () Bool)

(assert (=> d!1669512 m!6226110))

(assert (=> d!1669512 m!6225658))

(declare-fun m!6226112 () Bool)

(assert (=> d!1669512 m!6226112))

(assert (=> d!1669346 d!1669512))

(declare-fun b!5172689 () Bool)

(declare-fun e!3223091 () Bool)

(declare-fun lt!2130074 () List!60225)

(assert (=> b!5172689 (= e!3223091 (or (not (= (_2!35209 lt!2129912) Nil!60101)) (= lt!2130074 (_1!35209 lt!2129912))))))

(declare-fun b!5172687 () Bool)

(declare-fun e!3223090 () List!60225)

(assert (=> b!5172687 (= e!3223090 (Cons!60101 (h!66549 (_1!35209 lt!2129912)) (++!13153 (t!373378 (_1!35209 lt!2129912)) (_2!35209 lt!2129912))))))

(declare-fun b!5172686 () Bool)

(assert (=> b!5172686 (= e!3223090 (_2!35209 lt!2129912))))

(declare-fun b!5172688 () Bool)

(declare-fun res!2198453 () Bool)

(assert (=> b!5172688 (=> (not res!2198453) (not e!3223091))))

(assert (=> b!5172688 (= res!2198453 (= (size!39665 lt!2130074) (+ (size!39665 (_1!35209 lt!2129912)) (size!39665 (_2!35209 lt!2129912)))))))

(declare-fun d!1669514 () Bool)

(assert (=> d!1669514 e!3223091))

(declare-fun res!2198454 () Bool)

(assert (=> d!1669514 (=> (not res!2198454) (not e!3223091))))

(assert (=> d!1669514 (= res!2198454 (= (content!10651 lt!2130074) ((_ map or) (content!10651 (_1!35209 lt!2129912)) (content!10651 (_2!35209 lt!2129912)))))))

(assert (=> d!1669514 (= lt!2130074 e!3223090)))

(declare-fun c!890545 () Bool)

(assert (=> d!1669514 (= c!890545 ((_ is Nil!60101) (_1!35209 lt!2129912)))))

(assert (=> d!1669514 (= (++!13153 (_1!35209 lt!2129912) (_2!35209 lt!2129912)) lt!2130074)))

(assert (= (and d!1669514 c!890545) b!5172686))

(assert (= (and d!1669514 (not c!890545)) b!5172687))

(assert (= (and d!1669514 res!2198454) b!5172688))

(assert (= (and b!5172688 res!2198453) b!5172689))

(declare-fun m!6226114 () Bool)

(assert (=> b!5172687 m!6226114))

(declare-fun m!6226116 () Bool)

(assert (=> b!5172688 m!6226116))

(assert (=> b!5172688 m!6225708))

(declare-fun m!6226118 () Bool)

(assert (=> b!5172688 m!6226118))

(declare-fun m!6226120 () Bool)

(assert (=> d!1669514 m!6226120))

(declare-fun m!6226122 () Bool)

(assert (=> d!1669514 m!6226122))

(declare-fun m!6226124 () Bool)

(assert (=> d!1669514 m!6226124))

(assert (=> d!1669346 d!1669514))

(declare-fun b!5172693 () Bool)

(declare-fun e!3223093 () Bool)

(assert (=> b!5172693 (= e!3223093 (>= (size!39665 (++!13153 testedP!294 lt!2129708)) (size!39665 testedP!294)))))

(declare-fun b!5172691 () Bool)

(declare-fun res!2198458 () Bool)

(declare-fun e!3223092 () Bool)

(assert (=> b!5172691 (=> (not res!2198458) (not e!3223092))))

(assert (=> b!5172691 (= res!2198458 (= (head!11053 testedP!294) (head!11053 (++!13153 testedP!294 lt!2129708))))))

(declare-fun b!5172692 () Bool)

(assert (=> b!5172692 (= e!3223092 (isPrefix!5762 (tail!10160 testedP!294) (tail!10160 (++!13153 testedP!294 lt!2129708))))))

(declare-fun d!1669516 () Bool)

(assert (=> d!1669516 e!3223093))

(declare-fun res!2198456 () Bool)

(assert (=> d!1669516 (=> res!2198456 e!3223093)))

(declare-fun lt!2130075 () Bool)

(assert (=> d!1669516 (= res!2198456 (not lt!2130075))))

(declare-fun e!3223094 () Bool)

(assert (=> d!1669516 (= lt!2130075 e!3223094)))

(declare-fun res!2198457 () Bool)

(assert (=> d!1669516 (=> res!2198457 e!3223094)))

(assert (=> d!1669516 (= res!2198457 ((_ is Nil!60101) testedP!294))))

(assert (=> d!1669516 (= (isPrefix!5762 testedP!294 (++!13153 testedP!294 lt!2129708)) lt!2130075)))

(declare-fun b!5172690 () Bool)

(assert (=> b!5172690 (= e!3223094 e!3223092)))

(declare-fun res!2198455 () Bool)

(assert (=> b!5172690 (=> (not res!2198455) (not e!3223092))))

(assert (=> b!5172690 (= res!2198455 (not ((_ is Nil!60101) (++!13153 testedP!294 lt!2129708))))))

(assert (= (and d!1669516 (not res!2198457)) b!5172690))

(assert (= (and b!5172690 res!2198455) b!5172691))

(assert (= (and b!5172691 res!2198458) b!5172692))

(assert (= (and d!1669516 (not res!2198456)) b!5172693))

(assert (=> b!5172693 m!6225684))

(declare-fun m!6226126 () Bool)

(assert (=> b!5172693 m!6226126))

(assert (=> b!5172693 m!6225462))

(assert (=> b!5172691 m!6225604))

(assert (=> b!5172691 m!6225684))

(declare-fun m!6226128 () Bool)

(assert (=> b!5172691 m!6226128))

(assert (=> b!5172692 m!6225606))

(assert (=> b!5172692 m!6225684))

(declare-fun m!6226130 () Bool)

(assert (=> b!5172692 m!6226130))

(assert (=> b!5172692 m!6225606))

(assert (=> b!5172692 m!6226130))

(declare-fun m!6226132 () Bool)

(assert (=> b!5172692 m!6226132))

(assert (=> d!1669346 d!1669516))

(declare-fun bs!1203755 () Bool)

(declare-fun d!1669518 () Bool)

(assert (= bs!1203755 (and d!1669518 d!1669268)))

(declare-fun lambda!258306 () Int)

(assert (=> bs!1203755 (= (= call!363186 lt!2129705) (= lambda!258306 lambda!258256))))

(declare-fun bs!1203756 () Bool)

(assert (= bs!1203756 (and d!1669518 d!1669498)))

(assert (=> bs!1203756 (= (= call!363186 (h!66549 testedP!294)) (= lambda!258306 lambda!258290))))

(assert (=> d!1669518 true))

(assert (=> d!1669518 (= (derivationStepZipper!981 z!4581 call!363186) (flatMap!450 z!4581 lambda!258306))))

(declare-fun bs!1203757 () Bool)

(assert (= bs!1203757 d!1669518))

(declare-fun m!6226134 () Bool)

(assert (=> bs!1203757 m!6226134))

(assert (=> bm!363185 d!1669518))

(declare-fun d!1669520 () Bool)

(declare-fun lt!2130076 () List!60225)

(assert (=> d!1669520 (= (++!13153 (t!373378 testedP!294) lt!2130076) (tail!10160 input!5817))))

(declare-fun e!3223095 () List!60225)

(assert (=> d!1669520 (= lt!2130076 e!3223095)))

(declare-fun c!890546 () Bool)

(assert (=> d!1669520 (= c!890546 ((_ is Cons!60101) (t!373378 testedP!294)))))

(assert (=> d!1669520 (>= (size!39665 (tail!10160 input!5817)) (size!39665 (t!373378 testedP!294)))))

(assert (=> d!1669520 (= (getSuffix!3412 (tail!10160 input!5817) (t!373378 testedP!294)) lt!2130076)))

(declare-fun b!5172694 () Bool)

(assert (=> b!5172694 (= e!3223095 (getSuffix!3412 (tail!10160 (tail!10160 input!5817)) (t!373378 (t!373378 testedP!294))))))

(declare-fun b!5172695 () Bool)

(assert (=> b!5172695 (= e!3223095 (tail!10160 input!5817))))

(assert (= (and d!1669520 c!890546) b!5172694))

(assert (= (and d!1669520 (not c!890546)) b!5172695))

(declare-fun m!6226136 () Bool)

(assert (=> d!1669520 m!6226136))

(assert (=> d!1669520 m!6225588))

(declare-fun m!6226138 () Bool)

(assert (=> d!1669520 m!6226138))

(assert (=> d!1669520 m!6225676))

(assert (=> b!5172694 m!6225588))

(declare-fun m!6226140 () Bool)

(assert (=> b!5172694 m!6226140))

(assert (=> b!5172694 m!6226140))

(declare-fun m!6226142 () Bool)

(assert (=> b!5172694 m!6226142))

(assert (=> b!5172428 d!1669520))

(declare-fun d!1669522 () Bool)

(assert (=> d!1669522 (= (tail!10160 input!5817) (t!373378 input!5817))))

(assert (=> b!5172428 d!1669522))

(assert (=> b!5172385 d!1669338))

(declare-fun d!1669524 () Bool)

(declare-fun lt!2130077 () Int)

(assert (=> d!1669524 (>= lt!2130077 0)))

(declare-fun e!3223096 () Int)

(assert (=> d!1669524 (= lt!2130077 e!3223096)))

(declare-fun c!890547 () Bool)

(assert (=> d!1669524 (= c!890547 ((_ is Nil!60101) lt!2129709))))

(assert (=> d!1669524 (= (size!39665 lt!2129709) lt!2130077)))

(declare-fun b!5172696 () Bool)

(assert (=> b!5172696 (= e!3223096 0)))

(declare-fun b!5172697 () Bool)

(assert (=> b!5172697 (= e!3223096 (+ 1 (size!39665 (t!373378 lt!2129709))))))

(assert (= (and d!1669524 c!890547) b!5172696))

(assert (= (and d!1669524 (not c!890547)) b!5172697))

(declare-fun m!6226144 () Bool)

(assert (=> b!5172697 m!6226144))

(assert (=> b!5172385 d!1669524))

(declare-fun d!1669526 () Bool)

(declare-fun lt!2130078 () Int)

(assert (=> d!1669526 (>= lt!2130078 0)))

(declare-fun e!3223097 () Int)

(assert (=> d!1669526 (= lt!2130078 e!3223097)))

(declare-fun c!890548 () Bool)

(assert (=> d!1669526 (= c!890548 ((_ is Nil!60101) (t!373378 input!5817)))))

(assert (=> d!1669526 (= (size!39665 (t!373378 input!5817)) lt!2130078)))

(declare-fun b!5172698 () Bool)

(assert (=> b!5172698 (= e!3223097 0)))

(declare-fun b!5172699 () Bool)

(assert (=> b!5172699 (= e!3223097 (+ 1 (size!39665 (t!373378 (t!373378 input!5817)))))))

(assert (= (and d!1669526 c!890548) b!5172698))

(assert (= (and d!1669526 (not c!890548)) b!5172699))

(declare-fun m!6226146 () Bool)

(assert (=> b!5172699 m!6226146))

(assert (=> b!5172423 d!1669526))

(assert (=> bm!363184 d!1669320))

(assert (=> d!1669302 d!1669304))

(declare-fun d!1669528 () Bool)

(assert (=> d!1669528 (isPrefix!5762 input!5817 input!5817)))

(assert (=> d!1669528 true))

(declare-fun _$45!2353 () Unit!151796)

(assert (=> d!1669528 (= (choose!38349 input!5817 input!5817) _$45!2353)))

(declare-fun bs!1203758 () Bool)

(assert (= bs!1203758 d!1669528))

(assert (=> bs!1203758 m!6225456))

(assert (=> d!1669302 d!1669528))

(declare-fun d!1669530 () Bool)

(assert (=> d!1669530 (= (head!11053 lt!2129709) (h!66549 lt!2129709))))

(assert (=> b!5172383 d!1669530))

(assert (=> b!5172383 d!1669500))

(declare-fun b!5172703 () Bool)

(declare-fun e!3223099 () Bool)

(assert (=> b!5172703 (= e!3223099 (>= (size!39665 (tail!10160 input!5817)) (size!39665 (tail!10160 lt!2129709))))))

(declare-fun b!5172701 () Bool)

(declare-fun res!2198462 () Bool)

(declare-fun e!3223098 () Bool)

(assert (=> b!5172701 (=> (not res!2198462) (not e!3223098))))

(assert (=> b!5172701 (= res!2198462 (= (head!11053 (tail!10160 lt!2129709)) (head!11053 (tail!10160 input!5817))))))

(declare-fun b!5172702 () Bool)

(assert (=> b!5172702 (= e!3223098 (isPrefix!5762 (tail!10160 (tail!10160 lt!2129709)) (tail!10160 (tail!10160 input!5817))))))

(declare-fun d!1669532 () Bool)

(assert (=> d!1669532 e!3223099))

(declare-fun res!2198460 () Bool)

(assert (=> d!1669532 (=> res!2198460 e!3223099)))

(declare-fun lt!2130079 () Bool)

(assert (=> d!1669532 (= res!2198460 (not lt!2130079))))

(declare-fun e!3223100 () Bool)

(assert (=> d!1669532 (= lt!2130079 e!3223100)))

(declare-fun res!2198461 () Bool)

(assert (=> d!1669532 (=> res!2198461 e!3223100)))

(assert (=> d!1669532 (= res!2198461 ((_ is Nil!60101) (tail!10160 lt!2129709)))))

(assert (=> d!1669532 (= (isPrefix!5762 (tail!10160 lt!2129709) (tail!10160 input!5817)) lt!2130079)))

(declare-fun b!5172700 () Bool)

(assert (=> b!5172700 (= e!3223100 e!3223098)))

(declare-fun res!2198459 () Bool)

(assert (=> b!5172700 (=> (not res!2198459) (not e!3223098))))

(assert (=> b!5172700 (= res!2198459 (not ((_ is Nil!60101) (tail!10160 input!5817))))))

(assert (= (and d!1669532 (not res!2198461)) b!5172700))

(assert (= (and b!5172700 res!2198459) b!5172701))

(assert (= (and b!5172701 res!2198462) b!5172702))

(assert (= (and d!1669532 (not res!2198460)) b!5172703))

(assert (=> b!5172703 m!6225588))

(assert (=> b!5172703 m!6226138))

(assert (=> b!5172703 m!6225638))

(declare-fun m!6226148 () Bool)

(assert (=> b!5172703 m!6226148))

(assert (=> b!5172701 m!6225638))

(declare-fun m!6226150 () Bool)

(assert (=> b!5172701 m!6226150))

(assert (=> b!5172701 m!6225588))

(declare-fun m!6226152 () Bool)

(assert (=> b!5172701 m!6226152))

(assert (=> b!5172702 m!6225638))

(declare-fun m!6226154 () Bool)

(assert (=> b!5172702 m!6226154))

(assert (=> b!5172702 m!6225588))

(assert (=> b!5172702 m!6226140))

(assert (=> b!5172702 m!6226154))

(assert (=> b!5172702 m!6226140))

(declare-fun m!6226156 () Bool)

(assert (=> b!5172702 m!6226156))

(assert (=> b!5172384 d!1669532))

(declare-fun d!1669534 () Bool)

(assert (=> d!1669534 (= (tail!10160 lt!2129709) (t!373378 lt!2129709))))

(assert (=> b!5172384 d!1669534))

(assert (=> b!5172384 d!1669522))

(declare-fun bs!1203759 () Bool)

(declare-fun d!1669536 () Bool)

(assert (= bs!1203759 (and d!1669536 d!1669296)))

(declare-fun lambda!258307 () Int)

(assert (=> bs!1203759 (= lambda!258307 lambda!258259)))

(declare-fun bs!1203760 () Bool)

(assert (= bs!1203760 (and d!1669536 d!1669348)))

(assert (=> bs!1203760 (= lambda!258307 lambda!258269)))

(assert (=> d!1669536 (= (inv!79819 setElem!32096) (forall!14139 (exprs!4513 setElem!32096) lambda!258307))))

(declare-fun bs!1203761 () Bool)

(assert (= bs!1203761 d!1669536))

(declare-fun m!6226158 () Bool)

(assert (=> bs!1203761 m!6226158))

(assert (=> setNonEmpty!32096 d!1669536))

(declare-fun e!3223102 () Bool)

(declare-fun b!5172707 () Bool)

(declare-fun lt!2130080 () List!60225)

(assert (=> b!5172707 (= e!3223102 (or (not (= lt!2129847 Nil!60101)) (= lt!2130080 testedP!294)))))

(declare-fun b!5172705 () Bool)

(declare-fun e!3223101 () List!60225)

(assert (=> b!5172705 (= e!3223101 (Cons!60101 (h!66549 testedP!294) (++!13153 (t!373378 testedP!294) lt!2129847)))))

(declare-fun b!5172704 () Bool)

(assert (=> b!5172704 (= e!3223101 lt!2129847)))

(declare-fun b!5172706 () Bool)

(declare-fun res!2198463 () Bool)

(assert (=> b!5172706 (=> (not res!2198463) (not e!3223102))))

(assert (=> b!5172706 (= res!2198463 (= (size!39665 lt!2130080) (+ (size!39665 testedP!294) (size!39665 lt!2129847))))))

(declare-fun d!1669538 () Bool)

(assert (=> d!1669538 e!3223102))

(declare-fun res!2198464 () Bool)

(assert (=> d!1669538 (=> (not res!2198464) (not e!3223102))))

(assert (=> d!1669538 (= res!2198464 (= (content!10651 lt!2130080) ((_ map or) (content!10651 testedP!294) (content!10651 lt!2129847))))))

(assert (=> d!1669538 (= lt!2130080 e!3223101)))

(declare-fun c!890549 () Bool)

(assert (=> d!1669538 (= c!890549 ((_ is Nil!60101) testedP!294))))

(assert (=> d!1669538 (= (++!13153 testedP!294 lt!2129847) lt!2130080)))

(assert (= (and d!1669538 c!890549) b!5172704))

(assert (= (and d!1669538 (not c!890549)) b!5172705))

(assert (= (and d!1669538 res!2198464) b!5172706))

(assert (= (and b!5172706 res!2198463) b!5172707))

(declare-fun m!6226160 () Bool)

(assert (=> b!5172705 m!6226160))

(declare-fun m!6226162 () Bool)

(assert (=> b!5172706 m!6226162))

(assert (=> b!5172706 m!6225462))

(declare-fun m!6226164 () Bool)

(assert (=> b!5172706 m!6226164))

(declare-fun m!6226166 () Bool)

(assert (=> d!1669538 m!6226166))

(assert (=> d!1669538 m!6225658))

(declare-fun m!6226168 () Bool)

(assert (=> d!1669538 m!6226168))

(assert (=> d!1669340 d!1669538))

(assert (=> d!1669340 d!1669338))

(assert (=> d!1669340 d!1669342))

(declare-fun d!1669540 () Bool)

(assert (=> d!1669540 (= (isEmpty!32179 (_1!35209 lt!2129922)) ((_ is Nil!60101) (_1!35209 lt!2129922)))))

(assert (=> b!5172472 d!1669540))

(declare-fun b!5172711 () Bool)

(declare-fun e!3223104 () Bool)

(assert (=> b!5172711 (= e!3223104 (>= (size!39665 (tail!10160 input!5817)) (size!39665 (tail!10160 input!5817))))))

(declare-fun b!5172709 () Bool)

(declare-fun res!2198468 () Bool)

(declare-fun e!3223103 () Bool)

(assert (=> b!5172709 (=> (not res!2198468) (not e!3223103))))

(assert (=> b!5172709 (= res!2198468 (= (head!11053 (tail!10160 input!5817)) (head!11053 (tail!10160 input!5817))))))

(declare-fun b!5172710 () Bool)

(assert (=> b!5172710 (= e!3223103 (isPrefix!5762 (tail!10160 (tail!10160 input!5817)) (tail!10160 (tail!10160 input!5817))))))

(declare-fun d!1669542 () Bool)

(assert (=> d!1669542 e!3223104))

(declare-fun res!2198466 () Bool)

(assert (=> d!1669542 (=> res!2198466 e!3223104)))

(declare-fun lt!2130081 () Bool)

(assert (=> d!1669542 (= res!2198466 (not lt!2130081))))

(declare-fun e!3223105 () Bool)

(assert (=> d!1669542 (= lt!2130081 e!3223105)))

(declare-fun res!2198467 () Bool)

(assert (=> d!1669542 (=> res!2198467 e!3223105)))

(assert (=> d!1669542 (= res!2198467 ((_ is Nil!60101) (tail!10160 input!5817)))))

(assert (=> d!1669542 (= (isPrefix!5762 (tail!10160 input!5817) (tail!10160 input!5817)) lt!2130081)))

(declare-fun b!5172708 () Bool)

(assert (=> b!5172708 (= e!3223105 e!3223103)))

(declare-fun res!2198465 () Bool)

(assert (=> b!5172708 (=> (not res!2198465) (not e!3223103))))

(assert (=> b!5172708 (= res!2198465 (not ((_ is Nil!60101) (tail!10160 input!5817))))))

(assert (= (and d!1669542 (not res!2198467)) b!5172708))

(assert (= (and b!5172708 res!2198465) b!5172709))

(assert (= (and b!5172709 res!2198468) b!5172710))

(assert (= (and d!1669542 (not res!2198466)) b!5172711))

(assert (=> b!5172711 m!6225588))

(assert (=> b!5172711 m!6226138))

(assert (=> b!5172711 m!6225588))

(assert (=> b!5172711 m!6226138))

(assert (=> b!5172709 m!6225588))

(assert (=> b!5172709 m!6226152))

(assert (=> b!5172709 m!6225588))

(assert (=> b!5172709 m!6226152))

(assert (=> b!5172710 m!6225588))

(assert (=> b!5172710 m!6226140))

(assert (=> b!5172710 m!6225588))

(assert (=> b!5172710 m!6226140))

(assert (=> b!5172710 m!6226140))

(assert (=> b!5172710 m!6226140))

(declare-fun m!6226170 () Bool)

(assert (=> b!5172710 m!6226170))

(assert (=> b!5172358 d!1669542))

(assert (=> b!5172358 d!1669522))

(assert (=> bm!363186 d!1669304))

(assert (=> b!5172359 d!1669338))

(declare-fun d!1669544 () Bool)

(declare-fun c!890550 () Bool)

(assert (=> d!1669544 (= c!890550 ((_ is Cons!60101) (t!373378 lt!2129709)))))

(declare-fun e!3223106 () (InoxSet Context!8026))

(assert (=> d!1669544 (= (derivationZipper!252 (derivationStepZipper!981 baseZ!62 (h!66549 lt!2129709)) (t!373378 lt!2129709)) e!3223106)))

(declare-fun b!5172712 () Bool)

(assert (=> b!5172712 (= e!3223106 (derivationZipper!252 (derivationStepZipper!981 (derivationStepZipper!981 baseZ!62 (h!66549 lt!2129709)) (h!66549 (t!373378 lt!2129709))) (t!373378 (t!373378 lt!2129709))))))

(declare-fun b!5172713 () Bool)

(assert (=> b!5172713 (= e!3223106 (derivationStepZipper!981 baseZ!62 (h!66549 lt!2129709)))))

(assert (= (and d!1669544 c!890550) b!5172712))

(assert (= (and d!1669544 (not c!890550)) b!5172713))

(assert (=> b!5172712 m!6225496))

(declare-fun m!6226172 () Bool)

(assert (=> b!5172712 m!6226172))

(assert (=> b!5172712 m!6226172))

(declare-fun m!6226174 () Bool)

(assert (=> b!5172712 m!6226174))

(assert (=> b!5172264 d!1669544))

(declare-fun bs!1203762 () Bool)

(declare-fun d!1669546 () Bool)

(assert (= bs!1203762 (and d!1669546 d!1669268)))

(declare-fun lambda!258308 () Int)

(assert (=> bs!1203762 (= (= (h!66549 lt!2129709) lt!2129705) (= lambda!258308 lambda!258256))))

(declare-fun bs!1203763 () Bool)

(assert (= bs!1203763 (and d!1669546 d!1669498)))

(assert (=> bs!1203763 (= (= (h!66549 lt!2129709) (h!66549 testedP!294)) (= lambda!258308 lambda!258290))))

(declare-fun bs!1203764 () Bool)

(assert (= bs!1203764 (and d!1669546 d!1669518)))

(assert (=> bs!1203764 (= (= (h!66549 lt!2129709) call!363186) (= lambda!258308 lambda!258306))))

(assert (=> d!1669546 true))

(assert (=> d!1669546 (= (derivationStepZipper!981 baseZ!62 (h!66549 lt!2129709)) (flatMap!450 baseZ!62 lambda!258308))))

(declare-fun bs!1203765 () Bool)

(assert (= bs!1203765 d!1669546))

(declare-fun m!6226176 () Bool)

(assert (=> bs!1203765 m!6226176))

(assert (=> b!5172264 d!1669546))

(declare-fun b!5172717 () Bool)

(declare-fun e!3223108 () Bool)

(assert (=> b!5172717 (= e!3223108 (>= (size!39665 (tail!10160 input!5817)) (size!39665 (tail!10160 testedP!294))))))

(declare-fun b!5172715 () Bool)

(declare-fun res!2198472 () Bool)

(declare-fun e!3223107 () Bool)

(assert (=> b!5172715 (=> (not res!2198472) (not e!3223107))))

(assert (=> b!5172715 (= res!2198472 (= (head!11053 (tail!10160 testedP!294)) (head!11053 (tail!10160 input!5817))))))

(declare-fun b!5172716 () Bool)

(assert (=> b!5172716 (= e!3223107 (isPrefix!5762 (tail!10160 (tail!10160 testedP!294)) (tail!10160 (tail!10160 input!5817))))))

(declare-fun d!1669548 () Bool)

(assert (=> d!1669548 e!3223108))

(declare-fun res!2198470 () Bool)

(assert (=> d!1669548 (=> res!2198470 e!3223108)))

(declare-fun lt!2130082 () Bool)

(assert (=> d!1669548 (= res!2198470 (not lt!2130082))))

(declare-fun e!3223109 () Bool)

(assert (=> d!1669548 (= lt!2130082 e!3223109)))

(declare-fun res!2198471 () Bool)

(assert (=> d!1669548 (=> res!2198471 e!3223109)))

(assert (=> d!1669548 (= res!2198471 ((_ is Nil!60101) (tail!10160 testedP!294)))))

(assert (=> d!1669548 (= (isPrefix!5762 (tail!10160 testedP!294) (tail!10160 input!5817)) lt!2130082)))

(declare-fun b!5172714 () Bool)

(assert (=> b!5172714 (= e!3223109 e!3223107)))

(declare-fun res!2198469 () Bool)

(assert (=> b!5172714 (=> (not res!2198469) (not e!3223107))))

(assert (=> b!5172714 (= res!2198469 (not ((_ is Nil!60101) (tail!10160 input!5817))))))

(assert (= (and d!1669548 (not res!2198471)) b!5172714))

(assert (= (and b!5172714 res!2198469) b!5172715))

(assert (= (and b!5172715 res!2198472) b!5172716))

(assert (= (and d!1669548 (not res!2198470)) b!5172717))

(assert (=> b!5172717 m!6225588))

(assert (=> b!5172717 m!6226138))

(assert (=> b!5172717 m!6225606))

(declare-fun m!6226178 () Bool)

(assert (=> b!5172717 m!6226178))

(assert (=> b!5172715 m!6225606))

(declare-fun m!6226180 () Bool)

(assert (=> b!5172715 m!6226180))

(assert (=> b!5172715 m!6225588))

(assert (=> b!5172715 m!6226152))

(assert (=> b!5172716 m!6225606))

(declare-fun m!6226182 () Bool)

(assert (=> b!5172716 m!6226182))

(assert (=> b!5172716 m!6225588))

(assert (=> b!5172716 m!6226140))

(assert (=> b!5172716 m!6226182))

(assert (=> b!5172716 m!6226140))

(declare-fun m!6226184 () Bool)

(assert (=> b!5172716 m!6226184))

(assert (=> b!5172366 d!1669548))

(declare-fun d!1669550 () Bool)

(assert (=> d!1669550 (= (tail!10160 testedP!294) (t!373378 testedP!294))))

(assert (=> b!5172366 d!1669550))

(assert (=> b!5172366 d!1669522))

(assert (=> b!5172367 d!1669338))

(assert (=> b!5172367 d!1669342))

(declare-fun d!1669552 () Bool)

(assert (=> d!1669552 (= (head!11053 testedP!294) (h!66549 testedP!294))))

(assert (=> b!5172365 d!1669552))

(assert (=> b!5172365 d!1669500))

(assert (=> b!5172462 d!1669338))

(declare-fun lt!2130083 () List!60225)

(declare-fun e!3223111 () Bool)

(declare-fun b!5172721 () Bool)

(assert (=> b!5172721 (= e!3223111 (or (not (= (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101) Nil!60101)) (= lt!2130083 testedP!294)))))

(declare-fun b!5172719 () Bool)

(declare-fun e!3223110 () List!60225)

(assert (=> b!5172719 (= e!3223110 (Cons!60101 (h!66549 testedP!294) (++!13153 (t!373378 testedP!294) (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101))))))

(declare-fun b!5172718 () Bool)

(assert (=> b!5172718 (= e!3223110 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101))))

(declare-fun b!5172720 () Bool)

(declare-fun res!2198473 () Bool)

(assert (=> b!5172720 (=> (not res!2198473) (not e!3223111))))

(assert (=> b!5172720 (= res!2198473 (= (size!39665 lt!2130083) (+ (size!39665 testedP!294) (size!39665 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101)))))))

(declare-fun d!1669554 () Bool)

(assert (=> d!1669554 e!3223111))

(declare-fun res!2198474 () Bool)

(assert (=> d!1669554 (=> (not res!2198474) (not e!3223111))))

(assert (=> d!1669554 (= res!2198474 (= (content!10651 lt!2130083) ((_ map or) (content!10651 testedP!294) (content!10651 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101)))))))

(assert (=> d!1669554 (= lt!2130083 e!3223110)))

(declare-fun c!890551 () Bool)

(assert (=> d!1669554 (= c!890551 ((_ is Nil!60101) testedP!294))))

(assert (=> d!1669554 (= (++!13153 testedP!294 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101)) lt!2130083)))

(assert (= (and d!1669554 c!890551) b!5172718))

(assert (= (and d!1669554 (not c!890551)) b!5172719))

(assert (= (and d!1669554 res!2198474) b!5172720))

(assert (= (and b!5172720 res!2198473) b!5172721))

(declare-fun m!6226186 () Bool)

(assert (=> b!5172719 m!6226186))

(declare-fun m!6226188 () Bool)

(assert (=> b!5172720 m!6226188))

(assert (=> b!5172720 m!6225462))

(declare-fun m!6226190 () Bool)

(assert (=> b!5172720 m!6226190))

(declare-fun m!6226192 () Bool)

(assert (=> d!1669554 m!6226192))

(assert (=> d!1669554 m!6225658))

(declare-fun m!6226194 () Bool)

(assert (=> d!1669554 m!6226194))

(assert (=> b!5172462 d!1669554))

(assert (=> b!5172462 d!1669320))

(assert (=> b!5172462 d!1669336))

(assert (=> b!5172462 d!1669484))

(declare-fun d!1669556 () Bool)

(assert (=> d!1669556 (= (head!11053 (getSuffix!3412 input!5817 testedP!294)) (h!66549 (getSuffix!3412 input!5817 testedP!294)))))

(assert (=> b!5172462 d!1669556))

(declare-fun b!5172725 () Bool)

(declare-fun e!3223113 () Bool)

(declare-fun lt!2130084 () List!60225)

(assert (=> b!5172725 (= e!3223113 (or (not (= lt!2129915 Nil!60101)) (= lt!2130084 (++!13153 testedP!294 (Cons!60101 lt!2129923 Nil!60101)))))))

(declare-fun b!5172723 () Bool)

(declare-fun e!3223112 () List!60225)

(assert (=> b!5172723 (= e!3223112 (Cons!60101 (h!66549 (++!13153 testedP!294 (Cons!60101 lt!2129923 Nil!60101))) (++!13153 (t!373378 (++!13153 testedP!294 (Cons!60101 lt!2129923 Nil!60101))) lt!2129915)))))

(declare-fun b!5172722 () Bool)

(assert (=> b!5172722 (= e!3223112 lt!2129915)))

(declare-fun b!5172724 () Bool)

(declare-fun res!2198475 () Bool)

(assert (=> b!5172724 (=> (not res!2198475) (not e!3223113))))

(assert (=> b!5172724 (= res!2198475 (= (size!39665 lt!2130084) (+ (size!39665 (++!13153 testedP!294 (Cons!60101 lt!2129923 Nil!60101))) (size!39665 lt!2129915))))))

(declare-fun d!1669558 () Bool)

(assert (=> d!1669558 e!3223113))

(declare-fun res!2198476 () Bool)

(assert (=> d!1669558 (=> (not res!2198476) (not e!3223113))))

(assert (=> d!1669558 (= res!2198476 (= (content!10651 lt!2130084) ((_ map or) (content!10651 (++!13153 testedP!294 (Cons!60101 lt!2129923 Nil!60101))) (content!10651 lt!2129915))))))

(assert (=> d!1669558 (= lt!2130084 e!3223112)))

(declare-fun c!890552 () Bool)

(assert (=> d!1669558 (= c!890552 ((_ is Nil!60101) (++!13153 testedP!294 (Cons!60101 lt!2129923 Nil!60101))))))

(assert (=> d!1669558 (= (++!13153 (++!13153 testedP!294 (Cons!60101 lt!2129923 Nil!60101)) lt!2129915) lt!2130084)))

(assert (= (and d!1669558 c!890552) b!5172722))

(assert (= (and d!1669558 (not c!890552)) b!5172723))

(assert (= (and d!1669558 res!2198476) b!5172724))

(assert (= (and b!5172724 res!2198475) b!5172725))

(declare-fun m!6226196 () Bool)

(assert (=> b!5172723 m!6226196))

(declare-fun m!6226198 () Bool)

(assert (=> b!5172724 m!6226198))

(assert (=> b!5172724 m!6225694))

(declare-fun m!6226200 () Bool)

(assert (=> b!5172724 m!6226200))

(declare-fun m!6226202 () Bool)

(assert (=> b!5172724 m!6226202))

(declare-fun m!6226204 () Bool)

(assert (=> d!1669558 m!6226204))

(assert (=> d!1669558 m!6225694))

(declare-fun m!6226206 () Bool)

(assert (=> d!1669558 m!6226206))

(declare-fun m!6226208 () Bool)

(assert (=> d!1669558 m!6226208))

(assert (=> b!5172462 d!1669558))

(assert (=> b!5172462 d!1669342))

(declare-fun b!5172729 () Bool)

(declare-fun e!3223115 () Bool)

(assert (=> b!5172729 (= e!3223115 (>= (size!39665 input!5817) (size!39665 (++!13153 testedP!294 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101)))))))

(declare-fun b!5172727 () Bool)

(declare-fun res!2198480 () Bool)

(declare-fun e!3223114 () Bool)

(assert (=> b!5172727 (=> (not res!2198480) (not e!3223114))))

(assert (=> b!5172727 (= res!2198480 (= (head!11053 (++!13153 testedP!294 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101))) (head!11053 input!5817)))))

(declare-fun b!5172728 () Bool)

(assert (=> b!5172728 (= e!3223114 (isPrefix!5762 (tail!10160 (++!13153 testedP!294 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101))) (tail!10160 input!5817)))))

(declare-fun d!1669560 () Bool)

(assert (=> d!1669560 e!3223115))

(declare-fun res!2198478 () Bool)

(assert (=> d!1669560 (=> res!2198478 e!3223115)))

(declare-fun lt!2130085 () Bool)

(assert (=> d!1669560 (= res!2198478 (not lt!2130085))))

(declare-fun e!3223116 () Bool)

(assert (=> d!1669560 (= lt!2130085 e!3223116)))

(declare-fun res!2198479 () Bool)

(assert (=> d!1669560 (=> res!2198479 e!3223116)))

(assert (=> d!1669560 (= res!2198479 ((_ is Nil!60101) (++!13153 testedP!294 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101))))))

(assert (=> d!1669560 (= (isPrefix!5762 (++!13153 testedP!294 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101)) input!5817) lt!2130085)))

(declare-fun b!5172726 () Bool)

(assert (=> b!5172726 (= e!3223116 e!3223114)))

(declare-fun res!2198477 () Bool)

(assert (=> b!5172726 (=> (not res!2198477) (not e!3223114))))

(assert (=> b!5172726 (= res!2198477 (not ((_ is Nil!60101) input!5817)))))

(assert (= (and d!1669560 (not res!2198479)) b!5172726))

(assert (= (and b!5172726 res!2198477) b!5172727))

(assert (= (and b!5172727 res!2198480) b!5172728))

(assert (= (and d!1669560 (not res!2198478)) b!5172729))

(assert (=> b!5172729 m!6225464))

(assert (=> b!5172729 m!6225628))

(declare-fun m!6226210 () Bool)

(assert (=> b!5172729 m!6226210))

(assert (=> b!5172727 m!6225628))

(declare-fun m!6226212 () Bool)

(assert (=> b!5172727 m!6226212))

(assert (=> b!5172727 m!6225586))

(assert (=> b!5172728 m!6225628))

(declare-fun m!6226214 () Bool)

(assert (=> b!5172728 m!6226214))

(assert (=> b!5172728 m!6225588))

(assert (=> b!5172728 m!6226214))

(assert (=> b!5172728 m!6225588))

(declare-fun m!6226216 () Bool)

(assert (=> b!5172728 m!6226216))

(assert (=> b!5172462 d!1669560))

(declare-fun e!3223118 () Bool)

(declare-fun b!5172733 () Bool)

(declare-fun lt!2130086 () List!60225)

(assert (=> b!5172733 (= e!3223118 (or (not (= (Cons!60101 (head!11053 lt!2129708) Nil!60101) Nil!60101)) (= lt!2130086 testedP!294)))))

(declare-fun b!5172731 () Bool)

(declare-fun e!3223117 () List!60225)

(assert (=> b!5172731 (= e!3223117 (Cons!60101 (h!66549 testedP!294) (++!13153 (t!373378 testedP!294) (Cons!60101 (head!11053 lt!2129708) Nil!60101))))))

(declare-fun b!5172730 () Bool)

(assert (=> b!5172730 (= e!3223117 (Cons!60101 (head!11053 lt!2129708) Nil!60101))))

(declare-fun b!5172732 () Bool)

(declare-fun res!2198481 () Bool)

(assert (=> b!5172732 (=> (not res!2198481) (not e!3223118))))

(assert (=> b!5172732 (= res!2198481 (= (size!39665 lt!2130086) (+ (size!39665 testedP!294) (size!39665 (Cons!60101 (head!11053 lt!2129708) Nil!60101)))))))

(declare-fun d!1669562 () Bool)

(assert (=> d!1669562 e!3223118))

(declare-fun res!2198482 () Bool)

(assert (=> d!1669562 (=> (not res!2198482) (not e!3223118))))

(assert (=> d!1669562 (= res!2198482 (= (content!10651 lt!2130086) ((_ map or) (content!10651 testedP!294) (content!10651 (Cons!60101 (head!11053 lt!2129708) Nil!60101)))))))

(assert (=> d!1669562 (= lt!2130086 e!3223117)))

(declare-fun c!890553 () Bool)

(assert (=> d!1669562 (= c!890553 ((_ is Nil!60101) testedP!294))))

(assert (=> d!1669562 (= (++!13153 testedP!294 (Cons!60101 (head!11053 lt!2129708) Nil!60101)) lt!2130086)))

(assert (= (and d!1669562 c!890553) b!5172730))

(assert (= (and d!1669562 (not c!890553)) b!5172731))

(assert (= (and d!1669562 res!2198482) b!5172732))

(assert (= (and b!5172732 res!2198481) b!5172733))

(declare-fun m!6226218 () Bool)

(assert (=> b!5172731 m!6226218))

(declare-fun m!6226220 () Bool)

(assert (=> b!5172732 m!6226220))

(assert (=> b!5172732 m!6225462))

(declare-fun m!6226222 () Bool)

(assert (=> b!5172732 m!6226222))

(declare-fun m!6226224 () Bool)

(assert (=> d!1669562 m!6226224))

(assert (=> d!1669562 m!6225658))

(declare-fun m!6226226 () Bool)

(assert (=> d!1669562 m!6226226))

(assert (=> b!5172462 d!1669562))

(assert (=> b!5172462 d!1669340))

(declare-fun d!1669564 () Bool)

(assert (=> d!1669564 (= (++!13153 (++!13153 testedP!294 (Cons!60101 lt!2129923 Nil!60101)) lt!2129915) input!5817)))

(declare-fun lt!2130089 () Unit!151796)

(declare-fun choose!38362 (List!60225 C!29528 List!60225 List!60225) Unit!151796)

(assert (=> d!1669564 (= lt!2130089 (choose!38362 testedP!294 lt!2129923 lt!2129915 input!5817))))

(assert (=> d!1669564 (= (++!13153 testedP!294 (Cons!60101 lt!2129923 lt!2129915)) input!5817)))

(assert (=> d!1669564 (= (lemmaMoveElementToOtherListKeepsConcatEq!1580 testedP!294 lt!2129923 lt!2129915 input!5817) lt!2130089)))

(declare-fun bs!1203766 () Bool)

(assert (= bs!1203766 d!1669564))

(assert (=> bs!1203766 m!6225694))

(assert (=> bs!1203766 m!6225694))

(assert (=> bs!1203766 m!6225698))

(declare-fun m!6226228 () Bool)

(assert (=> bs!1203766 m!6226228))

(declare-fun m!6226230 () Bool)

(assert (=> bs!1203766 m!6226230))

(assert (=> b!5172462 d!1669564))

(assert (=> b!5172462 d!1669322))

(declare-fun e!3223120 () Bool)

(declare-fun b!5172737 () Bool)

(declare-fun lt!2130090 () List!60225)

(assert (=> b!5172737 (= e!3223120 (or (not (= (Cons!60101 lt!2129923 Nil!60101) Nil!60101)) (= lt!2130090 testedP!294)))))

(declare-fun b!5172735 () Bool)

(declare-fun e!3223119 () List!60225)

(assert (=> b!5172735 (= e!3223119 (Cons!60101 (h!66549 testedP!294) (++!13153 (t!373378 testedP!294) (Cons!60101 lt!2129923 Nil!60101))))))

(declare-fun b!5172734 () Bool)

(assert (=> b!5172734 (= e!3223119 (Cons!60101 lt!2129923 Nil!60101))))

(declare-fun b!5172736 () Bool)

(declare-fun res!2198483 () Bool)

(assert (=> b!5172736 (=> (not res!2198483) (not e!3223120))))

(assert (=> b!5172736 (= res!2198483 (= (size!39665 lt!2130090) (+ (size!39665 testedP!294) (size!39665 (Cons!60101 lt!2129923 Nil!60101)))))))

(declare-fun d!1669566 () Bool)

(assert (=> d!1669566 e!3223120))

(declare-fun res!2198484 () Bool)

(assert (=> d!1669566 (=> (not res!2198484) (not e!3223120))))

(assert (=> d!1669566 (= res!2198484 (= (content!10651 lt!2130090) ((_ map or) (content!10651 testedP!294) (content!10651 (Cons!60101 lt!2129923 Nil!60101)))))))

(assert (=> d!1669566 (= lt!2130090 e!3223119)))

(declare-fun c!890554 () Bool)

(assert (=> d!1669566 (= c!890554 ((_ is Nil!60101) testedP!294))))

(assert (=> d!1669566 (= (++!13153 testedP!294 (Cons!60101 lt!2129923 Nil!60101)) lt!2130090)))

(assert (= (and d!1669566 c!890554) b!5172734))

(assert (= (and d!1669566 (not c!890554)) b!5172735))

(assert (= (and d!1669566 res!2198484) b!5172736))

(assert (= (and b!5172736 res!2198483) b!5172737))

(declare-fun m!6226232 () Bool)

(assert (=> b!5172735 m!6226232))

(declare-fun m!6226234 () Bool)

(assert (=> b!5172736 m!6226234))

(assert (=> b!5172736 m!6225462))

(declare-fun m!6226236 () Bool)

(assert (=> b!5172736 m!6226236))

(declare-fun m!6226238 () Bool)

(assert (=> d!1669566 m!6226238))

(assert (=> d!1669566 m!6225658))

(declare-fun m!6226240 () Bool)

(assert (=> d!1669566 m!6226240))

(assert (=> b!5172462 d!1669566))

(assert (=> d!1669322 d!1669340))

(assert (=> d!1669322 d!1669556))

(assert (=> d!1669322 d!1669316))

(assert (=> d!1669322 d!1669560))

(declare-fun d!1669568 () Bool)

(assert (=> d!1669568 (isPrefix!5762 (++!13153 testedP!294 (Cons!60101 (head!11053 (getSuffix!3412 input!5817 testedP!294)) Nil!60101)) input!5817)))

(assert (=> d!1669568 true))

(declare-fun _$65!1820 () Unit!151796)

(assert (=> d!1669568 (= (choose!38351 testedP!294 input!5817) _$65!1820)))

(declare-fun bs!1203767 () Bool)

(assert (= bs!1203767 d!1669568))

(assert (=> bs!1203767 m!6225470))

(assert (=> bs!1203767 m!6225470))

(assert (=> bs!1203767 m!6225626))

(assert (=> bs!1203767 m!6225628))

(assert (=> bs!1203767 m!6225628))

(assert (=> bs!1203767 m!6225630))

(assert (=> d!1669322 d!1669568))

(assert (=> d!1669322 d!1669554))

(declare-fun bs!1203768 () Bool)

(declare-fun d!1669570 () Bool)

(assert (= bs!1203768 (and d!1669570 d!1669296)))

(declare-fun lambda!258309 () Int)

(assert (=> bs!1203768 (= lambda!258309 lambda!258259)))

(declare-fun bs!1203769 () Bool)

(assert (= bs!1203769 (and d!1669570 d!1669348)))

(assert (=> bs!1203769 (= lambda!258309 lambda!258269)))

(declare-fun bs!1203770 () Bool)

(assert (= bs!1203770 (and d!1669570 d!1669536)))

(assert (=> bs!1203770 (= lambda!258309 lambda!258307)))

(assert (=> d!1669570 (= (inv!79819 setElem!32095) (forall!14139 (exprs!4513 setElem!32095) lambda!258309))))

(declare-fun bs!1203771 () Bool)

(assert (= bs!1203771 d!1669570))

(declare-fun m!6226242 () Bool)

(assert (=> bs!1203771 m!6226242))

(assert (=> setNonEmpty!32095 d!1669570))

(declare-fun d!1669572 () Bool)

(assert (=> d!1669572 (= input!5817 testedP!294)))

(assert (=> d!1669572 true))

(declare-fun _$60!973 () Unit!151796)

(assert (=> d!1669572 (= (choose!38350 input!5817 testedP!294 input!5817) _$60!973)))

(assert (=> d!1669310 d!1669572))

(assert (=> d!1669310 d!1669304))

(assert (=> bm!363179 d!1669334))

(declare-fun b!5172738 () Bool)

(declare-fun e!3223121 () Bool)

(declare-fun tp!1451098 () Bool)

(assert (=> b!5172738 (= e!3223121 (and tp_is_empty!38511 tp!1451098))))

(assert (=> b!5172478 (= tp!1451046 e!3223121)))

(assert (= (and b!5172478 ((_ is Cons!60101) (t!373378 (t!373378 testedP!294)))) b!5172738))

(declare-fun b!5172739 () Bool)

(declare-fun e!3223122 () Bool)

(declare-fun tp!1451099 () Bool)

(assert (=> b!5172739 (= e!3223122 (and tp_is_empty!38511 tp!1451099))))

(assert (=> b!5172491 (= tp!1451063 e!3223122)))

(assert (= (and b!5172491 ((_ is Cons!60101) (t!373378 (t!373378 input!5817)))) b!5172739))

(declare-fun b!5172740 () Bool)

(declare-fun e!3223123 () Bool)

(declare-fun tp!1451100 () Bool)

(declare-fun tp!1451101 () Bool)

(assert (=> b!5172740 (= e!3223123 (and tp!1451100 tp!1451101))))

(assert (=> b!5172490 (= tp!1451061 e!3223123)))

(assert (= (and b!5172490 ((_ is Cons!60102) (exprs!4513 setElem!32096))) b!5172740))

(declare-fun b!5172741 () Bool)

(declare-fun e!3223124 () Bool)

(declare-fun tp!1451102 () Bool)

(declare-fun tp!1451103 () Bool)

(assert (=> b!5172741 (= e!3223124 (and tp!1451102 tp!1451103))))

(assert (=> b!5172483 (= tp!1451051 e!3223124)))

(assert (= (and b!5172483 ((_ is Cons!60102) (exprs!4513 setElem!32095))) b!5172741))

(declare-fun condSetEmpty!32099 () Bool)

(assert (=> setNonEmpty!32096 (= condSetEmpty!32099 (= setRest!32096 ((as const (Array Context!8026 Bool)) false)))))

(declare-fun setRes!32099 () Bool)

(assert (=> setNonEmpty!32096 (= tp!1451062 setRes!32099)))

(declare-fun setIsEmpty!32099 () Bool)

(assert (=> setIsEmpty!32099 setRes!32099))

(declare-fun e!3223125 () Bool)

(declare-fun setNonEmpty!32099 () Bool)

(declare-fun tp!1451105 () Bool)

(declare-fun setElem!32099 () Context!8026)

(assert (=> setNonEmpty!32099 (= setRes!32099 (and tp!1451105 (inv!79819 setElem!32099) e!3223125))))

(declare-fun setRest!32099 () (InoxSet Context!8026))

(assert (=> setNonEmpty!32099 (= setRest!32096 ((_ map or) (store ((as const (Array Context!8026 Bool)) false) setElem!32099 true) setRest!32099))))

(declare-fun b!5172742 () Bool)

(declare-fun tp!1451104 () Bool)

(assert (=> b!5172742 (= e!3223125 tp!1451104)))

(assert (= (and setNonEmpty!32096 condSetEmpty!32099) setIsEmpty!32099))

(assert (= (and setNonEmpty!32096 (not condSetEmpty!32099)) setNonEmpty!32099))

(assert (= setNonEmpty!32099 b!5172742))

(declare-fun m!6226244 () Bool)

(assert (=> setNonEmpty!32099 m!6226244))

(declare-fun b!5172753 () Bool)

(declare-fun e!3223128 () Bool)

(assert (=> b!5172753 (= e!3223128 tp_is_empty!38511)))

(assert (=> b!5172488 (= tp!1451057 e!3223128)))

(declare-fun b!5172756 () Bool)

(declare-fun tp!1451119 () Bool)

(declare-fun tp!1451116 () Bool)

(assert (=> b!5172756 (= e!3223128 (and tp!1451119 tp!1451116))))

(declare-fun b!5172754 () Bool)

(declare-fun tp!1451118 () Bool)

(declare-fun tp!1451117 () Bool)

(assert (=> b!5172754 (= e!3223128 (and tp!1451118 tp!1451117))))

(declare-fun b!5172755 () Bool)

(declare-fun tp!1451120 () Bool)

(assert (=> b!5172755 (= e!3223128 tp!1451120)))

(assert (= (and b!5172488 ((_ is ElementMatch!14629) (h!66550 (exprs!4513 setElem!32087)))) b!5172753))

(assert (= (and b!5172488 ((_ is Concat!23474) (h!66550 (exprs!4513 setElem!32087)))) b!5172754))

(assert (= (and b!5172488 ((_ is Star!14629) (h!66550 (exprs!4513 setElem!32087)))) b!5172755))

(assert (= (and b!5172488 ((_ is Union!14629) (h!66550 (exprs!4513 setElem!32087)))) b!5172756))

(declare-fun b!5172757 () Bool)

(declare-fun e!3223129 () Bool)

(declare-fun tp!1451121 () Bool)

(declare-fun tp!1451122 () Bool)

(assert (=> b!5172757 (= e!3223129 (and tp!1451121 tp!1451122))))

(assert (=> b!5172488 (= tp!1451058 e!3223129)))

(assert (= (and b!5172488 ((_ is Cons!60102) (t!373379 (exprs!4513 setElem!32087)))) b!5172757))

(declare-fun condSetEmpty!32100 () Bool)

(assert (=> setNonEmpty!32095 (= condSetEmpty!32100 (= setRest!32095 ((as const (Array Context!8026 Bool)) false)))))

(declare-fun setRes!32100 () Bool)

(assert (=> setNonEmpty!32095 (= tp!1451052 setRes!32100)))

(declare-fun setIsEmpty!32100 () Bool)

(assert (=> setIsEmpty!32100 setRes!32100))

(declare-fun setNonEmpty!32100 () Bool)

(declare-fun setElem!32100 () Context!8026)

(declare-fun tp!1451124 () Bool)

(declare-fun e!3223130 () Bool)

(assert (=> setNonEmpty!32100 (= setRes!32100 (and tp!1451124 (inv!79819 setElem!32100) e!3223130))))

(declare-fun setRest!32100 () (InoxSet Context!8026))

(assert (=> setNonEmpty!32100 (= setRest!32095 ((_ map or) (store ((as const (Array Context!8026 Bool)) false) setElem!32100 true) setRest!32100))))

(declare-fun b!5172758 () Bool)

(declare-fun tp!1451123 () Bool)

(assert (=> b!5172758 (= e!3223130 tp!1451123)))

(assert (= (and setNonEmpty!32095 condSetEmpty!32100) setIsEmpty!32100))

(assert (= (and setNonEmpty!32095 (not condSetEmpty!32100)) setNonEmpty!32100))

(assert (= setNonEmpty!32100 b!5172758))

(declare-fun m!6226246 () Bool)

(assert (=> setNonEmpty!32100 m!6226246))

(declare-fun b!5172759 () Bool)

(declare-fun e!3223131 () Bool)

(assert (=> b!5172759 (= e!3223131 tp_is_empty!38511)))

(assert (=> b!5172489 (= tp!1451059 e!3223131)))

(declare-fun b!5172762 () Bool)

(declare-fun tp!1451128 () Bool)

(declare-fun tp!1451125 () Bool)

(assert (=> b!5172762 (= e!3223131 (and tp!1451128 tp!1451125))))

(declare-fun b!5172760 () Bool)

(declare-fun tp!1451127 () Bool)

(declare-fun tp!1451126 () Bool)

(assert (=> b!5172760 (= e!3223131 (and tp!1451127 tp!1451126))))

(declare-fun b!5172761 () Bool)

(declare-fun tp!1451129 () Bool)

(assert (=> b!5172761 (= e!3223131 tp!1451129)))

(assert (= (and b!5172489 ((_ is ElementMatch!14629) (h!66550 (exprs!4513 setElem!32088)))) b!5172759))

(assert (= (and b!5172489 ((_ is Concat!23474) (h!66550 (exprs!4513 setElem!32088)))) b!5172760))

(assert (= (and b!5172489 ((_ is Star!14629) (h!66550 (exprs!4513 setElem!32088)))) b!5172761))

(assert (= (and b!5172489 ((_ is Union!14629) (h!66550 (exprs!4513 setElem!32088)))) b!5172762))

(declare-fun b!5172763 () Bool)

(declare-fun e!3223132 () Bool)

(declare-fun tp!1451130 () Bool)

(declare-fun tp!1451131 () Bool)

(assert (=> b!5172763 (= e!3223132 (and tp!1451130 tp!1451131))))

(assert (=> b!5172489 (= tp!1451060 e!3223132)))

(assert (= (and b!5172489 ((_ is Cons!60102) (t!373379 (exprs!4513 setElem!32088)))) b!5172763))

(declare-fun b_lambda!200909 () Bool)

(assert (= b_lambda!200901 (or d!1669296 b_lambda!200909)))

(declare-fun bs!1203772 () Bool)

(declare-fun d!1669574 () Bool)

(assert (= bs!1203772 (and d!1669574 d!1669296)))

(declare-fun validRegex!6402 (Regex!14629) Bool)

(assert (=> bs!1203772 (= (dynLambda!23873 lambda!258259 (h!66550 (exprs!4513 setElem!32087))) (validRegex!6402 (h!66550 (exprs!4513 setElem!32087))))))

(declare-fun m!6226248 () Bool)

(assert (=> bs!1203772 m!6226248))

(assert (=> b!5172598 d!1669574))

(declare-fun b_lambda!200911 () Bool)

(assert (= b_lambda!200903 (or d!1669348 b_lambda!200911)))

(declare-fun bs!1203773 () Bool)

(declare-fun d!1669576 () Bool)

(assert (= bs!1203773 (and d!1669576 d!1669348)))

(assert (=> bs!1203773 (= (dynLambda!23873 lambda!258269 (h!66550 (exprs!4513 setElem!32088))) (validRegex!6402 (h!66550 (exprs!4513 setElem!32088))))))

(declare-fun m!6226250 () Bool)

(assert (=> bs!1203773 m!6226250))

(assert (=> b!5172644 d!1669576))

(check-sat (not b!5172646) (not d!1669508) (not d!1669568) (not b!5172697) (not b!5172688) (not b!5172703) (not b!5172605) (not d!1669512) (not d!1669518) (not b_lambda!200909) (not bs!1203772) (not bm!363200) (not d!1669502) (not d!1669566) (not b!5172736) (not b!5172702) (not b!5172738) tp_is_empty!38511 (not b!5172615) (not bm!363214) (not setNonEmpty!32100) (not bm!363199) (not bm!363198) (not d!1669472) (not d!1669468) (not b!5172717) (not b!5172761) (not bm!363213) (not b!5172640) (not d!1669554) (not b!5172706) (not b!5172711) (not b!5172693) (not b!5172645) (not b!5172607) (not b!5172740) (not bm!363195) (not bm!363196) (not d!1669490) (not b!5172742) (not d!1669570) (not b!5172710) (not d!1669498) (not b!5172760) (not b!5172620) (not b!5172684) (not b!5172720) (not b!5172637) (not d!1669520) (not b!5172763) (not b!5172612) (not b!5172699) (not b!5172754) (not d!1669538) (not b!5172756) (not b!5172731) (not b!5172639) (not d!1669562) (not b!5172755) (not d!1669460) (not b!5172719) (not b!5172683) (not b!5172709) (not d!1669546) (not b!5172712) (not b_lambda!200911) (not bm!363201) (not b!5172724) (not b!5172628) (not b!5172635) (not b!5172762) (not b!5172757) (not d!1669536) (not b!5172715) (not b!5172716) (not d!1669510) (not d!1669558) (not b!5172732) (not b!5172739) (not d!1669474) (not d!1669528) (not b!5172609) (not b!5172621) (not b!5172729) (not b!5172611) (not b!5172691) (not d!1669564) (not b!5172618) (not b!5172692) (not b!5172599) (not bs!1203773) (not d!1669514) (not d!1669486) (not b!5172694) (not b!5172681) (not bm!363202) (not b!5172727) (not b!5172705) (not b!5172680) (not b!5172758) (not b!5172728) (not b!5172735) (not b!5172723) (not bm!363197) (not setNonEmpty!32099) (not b!5172687) (not b!5172741) (not b!5172701))
(check-sat)
