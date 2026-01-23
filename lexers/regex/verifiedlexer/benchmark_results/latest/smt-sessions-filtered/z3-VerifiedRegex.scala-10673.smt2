; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546656 () Bool)

(assert start!546656)

(declare-fun setNonEmpty!31783 () Bool)

(declare-fun setRes!31784 () Bool)

(declare-fun e!3219297 () Bool)

(declare-datatypes ((C!29456 0))(
  ( (C!29457 (val!24430 Int)) )
))
(declare-datatypes ((Regex!14593 0))(
  ( (ElementMatch!14593 (c!888960 C!29456)) (Concat!23438 (regOne!29698 Regex!14593) (regTwo!29698 Regex!14593)) (EmptyExpr!14593) (Star!14593 (reg!14922 Regex!14593)) (EmptyLang!14593) (Union!14593 (regOne!29699 Regex!14593) (regTwo!29699 Regex!14593)) )
))
(declare-datatypes ((List!60143 0))(
  ( (Nil!60019) (Cons!60019 (h!66467 Regex!14593) (t!373296 List!60143)) )
))
(declare-datatypes ((Context!7954 0))(
  ( (Context!7955 (exprs!4477 List!60143)) )
))
(declare-fun setElem!31783 () Context!7954)

(declare-fun tp!1449536 () Bool)

(declare-fun inv!79729 (Context!7954) Bool)

(assert (=> setNonEmpty!31783 (= setRes!31784 (and tp!1449536 (inv!79729 setElem!31783) e!3219297))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!62 () (InoxSet Context!7954))

(declare-fun setRest!31784 () (InoxSet Context!7954))

(assert (=> setNonEmpty!31783 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7954 Bool)) false) setElem!31783 true) setRest!31784))))

(declare-fun b!5166592 () Bool)

(declare-fun e!3219296 () Bool)

(declare-datatypes ((List!60144 0))(
  ( (Nil!60020) (Cons!60020 (h!66468 C!29456) (t!373297 List!60144)) )
))
(declare-fun lt!2125236 () List!60144)

(assert (=> b!5166592 (= e!3219296 (not (= lt!2125236 Nil!60020)))))

(declare-fun b!5166593 () Bool)

(declare-fun e!3219294 () Bool)

(declare-fun e!3219298 () Bool)

(assert (=> b!5166593 (= e!3219294 (not e!3219298))))

(declare-fun res!2196295 () Bool)

(assert (=> b!5166593 (=> res!2196295 e!3219298)))

(declare-fun lt!2125231 () Int)

(declare-fun lt!2125234 () Int)

(assert (=> b!5166593 (= res!2196295 (>= lt!2125231 lt!2125234))))

(declare-datatypes ((Unit!151494 0))(
  ( (Unit!151495) )
))
(declare-fun lt!2125233 () Unit!151494)

(declare-fun e!3219300 () Unit!151494)

(assert (=> b!5166593 (= lt!2125233 e!3219300)))

(declare-fun c!888959 () Bool)

(assert (=> b!5166593 (= c!888959 (= lt!2125231 lt!2125234))))

(assert (=> b!5166593 (<= lt!2125231 lt!2125234)))

(declare-fun lt!2125232 () Unit!151494)

(declare-fun testedP!294 () List!60144)

(declare-fun input!5817 () List!60144)

(declare-fun lemmaIsPrefixThenSmallerEqSize!889 (List!60144 List!60144) Unit!151494)

(assert (=> b!5166593 (= lt!2125232 (lemmaIsPrefixThenSmallerEqSize!889 testedP!294 input!5817))))

(declare-fun b!5166594 () Bool)

(declare-fun res!2196297 () Bool)

(declare-fun e!3219292 () Bool)

(assert (=> b!5166594 (=> (not res!2196297) (not e!3219292))))

(declare-fun z!4581 () (InoxSet Context!7954))

(declare-fun derivationZipper!216 ((InoxSet Context!7954) List!60144) (InoxSet Context!7954))

(assert (=> b!5166594 (= res!2196297 (= (derivationZipper!216 baseZ!62 testedP!294) z!4581))))

(declare-fun setIsEmpty!31783 () Bool)

(declare-fun setRes!31783 () Bool)

(assert (=> setIsEmpty!31783 setRes!31783))

(declare-fun b!5166595 () Bool)

(declare-fun res!2196298 () Bool)

(assert (=> b!5166595 (=> (not res!2196298) (not e!3219294))))

(assert (=> b!5166595 (= res!2196298 (not (= testedP!294 input!5817)))))

(declare-fun tp!1449539 () Bool)

(declare-fun e!3219299 () Bool)

(declare-fun setNonEmpty!31784 () Bool)

(declare-fun setElem!31784 () Context!7954)

(assert (=> setNonEmpty!31784 (= setRes!31783 (and tp!1449539 (inv!79729 setElem!31784) e!3219299))))

(declare-fun setRest!31783 () (InoxSet Context!7954))

(assert (=> setNonEmpty!31784 (= z!4581 ((_ map or) (store ((as const (Array Context!7954 Bool)) false) setElem!31784 true) setRest!31783))))

(declare-fun b!5166596 () Bool)

(assert (=> b!5166596 (= e!3219298 e!3219296)))

(declare-fun res!2196296 () Bool)

(assert (=> b!5166596 (=> res!2196296 e!3219296)))

(declare-fun nullableZipper!1139 ((InoxSet Context!7954)) Bool)

(assert (=> b!5166596 (= res!2196296 (not (nullableZipper!1139 z!4581)))))

(declare-fun lt!2125230 () List!60144)

(declare-fun isPrefix!5726 (List!60144 List!60144) Bool)

(assert (=> b!5166596 (isPrefix!5726 lt!2125230 input!5817)))

(declare-fun lt!2125237 () Unit!151494)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1039 (List!60144 List!60144) Unit!151494)

(assert (=> b!5166596 (= lt!2125237 (lemmaAddHeadSuffixToPrefixStillPrefix!1039 testedP!294 input!5817))))

(declare-fun ++!13117 (List!60144 List!60144) List!60144)

(declare-fun head!11017 (List!60144) C!29456)

(assert (=> b!5166596 (= lt!2125230 (++!13117 testedP!294 (Cons!60020 (head!11017 lt!2125236) Nil!60020)))))

(declare-fun b!5166597 () Bool)

(assert (=> b!5166597 (= e!3219292 e!3219294)))

(declare-fun res!2196294 () Bool)

(assert (=> b!5166597 (=> (not res!2196294) (not e!3219294))))

(declare-fun isEmpty!32133 (List!60144) Bool)

(declare-datatypes ((tuple2!63740 0))(
  ( (tuple2!63741 (_1!35173 List!60144) (_2!35173 List!60144)) )
))
(declare-fun findLongestMatchInnerZipper!251 ((InoxSet Context!7954) List!60144 Int List!60144 List!60144 Int) tuple2!63740)

(assert (=> b!5166597 (= res!2196294 (not (isEmpty!32133 (_1!35173 (findLongestMatchInnerZipper!251 z!4581 testedP!294 lt!2125231 lt!2125236 input!5817 lt!2125234)))))))

(declare-fun size!39629 (List!60144) Int)

(assert (=> b!5166597 (= lt!2125234 (size!39629 input!5817))))

(declare-fun getSuffix!3376 (List!60144 List!60144) List!60144)

(assert (=> b!5166597 (= lt!2125236 (getSuffix!3376 input!5817 testedP!294))))

(assert (=> b!5166597 (= lt!2125231 (size!39629 testedP!294))))

(declare-fun b!5166598 () Bool)

(declare-fun Unit!151496 () Unit!151494)

(assert (=> b!5166598 (= e!3219300 Unit!151496)))

(declare-fun b!5166599 () Bool)

(declare-fun tp!1449535 () Bool)

(assert (=> b!5166599 (= e!3219299 tp!1449535)))

(declare-fun b!5166600 () Bool)

(declare-fun tp!1449538 () Bool)

(assert (=> b!5166600 (= e!3219297 tp!1449538)))

(declare-fun b!5166602 () Bool)

(declare-fun e!3219295 () Bool)

(declare-fun tp_is_empty!38439 () Bool)

(declare-fun tp!1449537 () Bool)

(assert (=> b!5166602 (= e!3219295 (and tp_is_empty!38439 tp!1449537))))

(declare-fun res!2196293 () Bool)

(assert (=> start!546656 (=> (not res!2196293) (not e!3219292))))

(assert (=> start!546656 (= res!2196293 (isPrefix!5726 testedP!294 input!5817))))

(assert (=> start!546656 e!3219292))

(assert (=> start!546656 e!3219295))

(declare-fun e!3219293 () Bool)

(assert (=> start!546656 e!3219293))

(declare-fun condSetEmpty!31783 () Bool)

(assert (=> start!546656 (= condSetEmpty!31783 (= baseZ!62 ((as const (Array Context!7954 Bool)) false)))))

(assert (=> start!546656 setRes!31784))

(declare-fun condSetEmpty!31784 () Bool)

(assert (=> start!546656 (= condSetEmpty!31784 (= z!4581 ((as const (Array Context!7954 Bool)) false)))))

(assert (=> start!546656 setRes!31783))

(declare-fun b!5166601 () Bool)

(declare-fun tp!1449534 () Bool)

(assert (=> b!5166601 (= e!3219293 (and tp_is_empty!38439 tp!1449534))))

(declare-fun b!5166603 () Bool)

(declare-fun Unit!151497 () Unit!151494)

(assert (=> b!5166603 (= e!3219300 Unit!151497)))

(declare-fun lt!2125238 () Unit!151494)

(declare-fun lemmaIsPrefixRefl!3733 (List!60144 List!60144) Unit!151494)

(assert (=> b!5166603 (= lt!2125238 (lemmaIsPrefixRefl!3733 input!5817 input!5817))))

(assert (=> b!5166603 (isPrefix!5726 input!5817 input!5817)))

(declare-fun lt!2125235 () Unit!151494)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1375 (List!60144 List!60144 List!60144) Unit!151494)

(assert (=> b!5166603 (= lt!2125235 (lemmaIsPrefixSameLengthThenSameList!1375 input!5817 testedP!294 input!5817))))

(assert (=> b!5166603 false))

(declare-fun setIsEmpty!31784 () Bool)

(assert (=> setIsEmpty!31784 setRes!31784))

(assert (= (and start!546656 res!2196293) b!5166594))

(assert (= (and b!5166594 res!2196297) b!5166597))

(assert (= (and b!5166597 res!2196294) b!5166595))

(assert (= (and b!5166595 res!2196298) b!5166593))

(assert (= (and b!5166593 c!888959) b!5166603))

(assert (= (and b!5166593 (not c!888959)) b!5166598))

(assert (= (and b!5166593 (not res!2196295)) b!5166596))

(assert (= (and b!5166596 (not res!2196296)) b!5166592))

(get-info :version)

(assert (= (and start!546656 ((_ is Cons!60020) testedP!294)) b!5166602))

(assert (= (and start!546656 ((_ is Cons!60020) input!5817)) b!5166601))

(assert (= (and start!546656 condSetEmpty!31783) setIsEmpty!31784))

(assert (= (and start!546656 (not condSetEmpty!31783)) setNonEmpty!31783))

(assert (= setNonEmpty!31783 b!5166600))

(assert (= (and start!546656 condSetEmpty!31784) setIsEmpty!31783))

(assert (= (and start!546656 (not condSetEmpty!31784)) setNonEmpty!31784))

(assert (= setNonEmpty!31784 b!5166599))

(declare-fun m!6217172 () Bool)

(assert (=> start!546656 m!6217172))

(declare-fun m!6217174 () Bool)

(assert (=> b!5166593 m!6217174))

(declare-fun m!6217176 () Bool)

(assert (=> b!5166594 m!6217176))

(declare-fun m!6217178 () Bool)

(assert (=> b!5166597 m!6217178))

(declare-fun m!6217180 () Bool)

(assert (=> b!5166597 m!6217180))

(declare-fun m!6217182 () Bool)

(assert (=> b!5166597 m!6217182))

(declare-fun m!6217184 () Bool)

(assert (=> b!5166597 m!6217184))

(declare-fun m!6217186 () Bool)

(assert (=> b!5166597 m!6217186))

(declare-fun m!6217188 () Bool)

(assert (=> b!5166603 m!6217188))

(declare-fun m!6217190 () Bool)

(assert (=> b!5166603 m!6217190))

(declare-fun m!6217192 () Bool)

(assert (=> b!5166603 m!6217192))

(declare-fun m!6217194 () Bool)

(assert (=> setNonEmpty!31784 m!6217194))

(declare-fun m!6217196 () Bool)

(assert (=> setNonEmpty!31783 m!6217196))

(declare-fun m!6217198 () Bool)

(assert (=> b!5166596 m!6217198))

(declare-fun m!6217200 () Bool)

(assert (=> b!5166596 m!6217200))

(declare-fun m!6217202 () Bool)

(assert (=> b!5166596 m!6217202))

(declare-fun m!6217204 () Bool)

(assert (=> b!5166596 m!6217204))

(declare-fun m!6217206 () Bool)

(assert (=> b!5166596 m!6217206))

(check-sat tp_is_empty!38439 (not start!546656) (not setNonEmpty!31783) (not b!5166600) (not b!5166594) (not b!5166603) (not setNonEmpty!31784) (not b!5166599) (not b!5166597) (not b!5166593) (not b!5166602) (not b!5166596) (not b!5166601))
(check-sat)
(get-model)

(declare-fun d!1666744 () Bool)

(declare-fun c!888963 () Bool)

(assert (=> d!1666744 (= c!888963 ((_ is Cons!60020) testedP!294))))

(declare-fun e!3219303 () (InoxSet Context!7954))

(assert (=> d!1666744 (= (derivationZipper!216 baseZ!62 testedP!294) e!3219303)))

(declare-fun b!5166608 () Bool)

(declare-fun derivationStepZipper!949 ((InoxSet Context!7954) C!29456) (InoxSet Context!7954))

(assert (=> b!5166608 (= e!3219303 (derivationZipper!216 (derivationStepZipper!949 baseZ!62 (h!66468 testedP!294)) (t!373297 testedP!294)))))

(declare-fun b!5166609 () Bool)

(assert (=> b!5166609 (= e!3219303 baseZ!62)))

(assert (= (and d!1666744 c!888963) b!5166608))

(assert (= (and d!1666744 (not c!888963)) b!5166609))

(declare-fun m!6217208 () Bool)

(assert (=> b!5166608 m!6217208))

(assert (=> b!5166608 m!6217208))

(declare-fun m!6217210 () Bool)

(assert (=> b!5166608 m!6217210))

(assert (=> b!5166594 d!1666744))

(declare-fun d!1666746 () Bool)

(assert (=> d!1666746 (isPrefix!5726 input!5817 input!5817)))

(declare-fun lt!2125241 () Unit!151494)

(declare-fun choose!38221 (List!60144 List!60144) Unit!151494)

(assert (=> d!1666746 (= lt!2125241 (choose!38221 input!5817 input!5817))))

(assert (=> d!1666746 (= (lemmaIsPrefixRefl!3733 input!5817 input!5817) lt!2125241)))

(declare-fun bs!1202882 () Bool)

(assert (= bs!1202882 d!1666746))

(assert (=> bs!1202882 m!6217190))

(declare-fun m!6217212 () Bool)

(assert (=> bs!1202882 m!6217212))

(assert (=> b!5166603 d!1666746))

(declare-fun b!5166626 () Bool)

(declare-fun e!3219318 () Bool)

(declare-fun e!3219317 () Bool)

(assert (=> b!5166626 (= e!3219318 e!3219317)))

(declare-fun res!2196315 () Bool)

(assert (=> b!5166626 (=> (not res!2196315) (not e!3219317))))

(assert (=> b!5166626 (= res!2196315 (not ((_ is Nil!60020) input!5817)))))

(declare-fun d!1666748 () Bool)

(declare-fun e!3219316 () Bool)

(assert (=> d!1666748 e!3219316))

(declare-fun res!2196318 () Bool)

(assert (=> d!1666748 (=> res!2196318 e!3219316)))

(declare-fun lt!2125246 () Bool)

(assert (=> d!1666748 (= res!2196318 (not lt!2125246))))

(assert (=> d!1666748 (= lt!2125246 e!3219318)))

(declare-fun res!2196316 () Bool)

(assert (=> d!1666748 (=> res!2196316 e!3219318)))

(assert (=> d!1666748 (= res!2196316 ((_ is Nil!60020) input!5817))))

(assert (=> d!1666748 (= (isPrefix!5726 input!5817 input!5817) lt!2125246)))

(declare-fun b!5166627 () Bool)

(declare-fun res!2196317 () Bool)

(assert (=> b!5166627 (=> (not res!2196317) (not e!3219317))))

(assert (=> b!5166627 (= res!2196317 (= (head!11017 input!5817) (head!11017 input!5817)))))

(declare-fun b!5166628 () Bool)

(declare-fun tail!10126 (List!60144) List!60144)

(assert (=> b!5166628 (= e!3219317 (isPrefix!5726 (tail!10126 input!5817) (tail!10126 input!5817)))))

(declare-fun b!5166629 () Bool)

(assert (=> b!5166629 (= e!3219316 (>= (size!39629 input!5817) (size!39629 input!5817)))))

(assert (= (and d!1666748 (not res!2196316)) b!5166626))

(assert (= (and b!5166626 res!2196315) b!5166627))

(assert (= (and b!5166627 res!2196317) b!5166628))

(assert (= (and d!1666748 (not res!2196318)) b!5166629))

(declare-fun m!6217214 () Bool)

(assert (=> b!5166627 m!6217214))

(assert (=> b!5166627 m!6217214))

(declare-fun m!6217216 () Bool)

(assert (=> b!5166628 m!6217216))

(assert (=> b!5166628 m!6217216))

(assert (=> b!5166628 m!6217216))

(assert (=> b!5166628 m!6217216))

(declare-fun m!6217218 () Bool)

(assert (=> b!5166628 m!6217218))

(assert (=> b!5166629 m!6217180))

(assert (=> b!5166629 m!6217180))

(assert (=> b!5166603 d!1666748))

(declare-fun d!1666752 () Bool)

(assert (=> d!1666752 (= input!5817 testedP!294)))

(declare-fun lt!2125250 () Unit!151494)

(declare-fun choose!38222 (List!60144 List!60144 List!60144) Unit!151494)

(assert (=> d!1666752 (= lt!2125250 (choose!38222 input!5817 testedP!294 input!5817))))

(assert (=> d!1666752 (isPrefix!5726 input!5817 input!5817)))

(assert (=> d!1666752 (= (lemmaIsPrefixSameLengthThenSameList!1375 input!5817 testedP!294 input!5817) lt!2125250)))

(declare-fun bs!1202883 () Bool)

(assert (= bs!1202883 d!1666752))

(declare-fun m!6217232 () Bool)

(assert (=> bs!1202883 m!6217232))

(assert (=> bs!1202883 m!6217190))

(assert (=> b!5166603 d!1666752))

(declare-fun d!1666758 () Bool)

(assert (=> d!1666758 (= (head!11017 lt!2125236) (h!66468 lt!2125236))))

(assert (=> b!5166596 d!1666758))

(declare-fun b!5166634 () Bool)

(declare-fun e!3219324 () Bool)

(declare-fun e!3219323 () Bool)

(assert (=> b!5166634 (= e!3219324 e!3219323)))

(declare-fun res!2196323 () Bool)

(assert (=> b!5166634 (=> (not res!2196323) (not e!3219323))))

(assert (=> b!5166634 (= res!2196323 (not ((_ is Nil!60020) input!5817)))))

(declare-fun d!1666760 () Bool)

(declare-fun e!3219322 () Bool)

(assert (=> d!1666760 e!3219322))

(declare-fun res!2196326 () Bool)

(assert (=> d!1666760 (=> res!2196326 e!3219322)))

(declare-fun lt!2125251 () Bool)

(assert (=> d!1666760 (= res!2196326 (not lt!2125251))))

(assert (=> d!1666760 (= lt!2125251 e!3219324)))

(declare-fun res!2196324 () Bool)

(assert (=> d!1666760 (=> res!2196324 e!3219324)))

(assert (=> d!1666760 (= res!2196324 ((_ is Nil!60020) lt!2125230))))

(assert (=> d!1666760 (= (isPrefix!5726 lt!2125230 input!5817) lt!2125251)))

(declare-fun b!5166635 () Bool)

(declare-fun res!2196325 () Bool)

(assert (=> b!5166635 (=> (not res!2196325) (not e!3219323))))

(assert (=> b!5166635 (= res!2196325 (= (head!11017 lt!2125230) (head!11017 input!5817)))))

(declare-fun b!5166636 () Bool)

(assert (=> b!5166636 (= e!3219323 (isPrefix!5726 (tail!10126 lt!2125230) (tail!10126 input!5817)))))

(declare-fun b!5166637 () Bool)

(assert (=> b!5166637 (= e!3219322 (>= (size!39629 input!5817) (size!39629 lt!2125230)))))

(assert (= (and d!1666760 (not res!2196324)) b!5166634))

(assert (= (and b!5166634 res!2196323) b!5166635))

(assert (= (and b!5166635 res!2196325) b!5166636))

(assert (= (and d!1666760 (not res!2196326)) b!5166637))

(declare-fun m!6217234 () Bool)

(assert (=> b!5166635 m!6217234))

(assert (=> b!5166635 m!6217214))

(declare-fun m!6217236 () Bool)

(assert (=> b!5166636 m!6217236))

(assert (=> b!5166636 m!6217216))

(assert (=> b!5166636 m!6217236))

(assert (=> b!5166636 m!6217216))

(declare-fun m!6217238 () Bool)

(assert (=> b!5166636 m!6217238))

(assert (=> b!5166637 m!6217180))

(declare-fun m!6217240 () Bool)

(assert (=> b!5166637 m!6217240))

(assert (=> b!5166596 d!1666760))

(declare-fun lt!2125257 () List!60144)

(declare-fun e!3219330 () Bool)

(declare-fun b!5166649 () Bool)

(assert (=> b!5166649 (= e!3219330 (or (not (= (Cons!60020 (head!11017 lt!2125236) Nil!60020) Nil!60020)) (= lt!2125257 testedP!294)))))

(declare-fun b!5166646 () Bool)

(declare-fun e!3219329 () List!60144)

(assert (=> b!5166646 (= e!3219329 (Cons!60020 (head!11017 lt!2125236) Nil!60020))))

(declare-fun b!5166648 () Bool)

(declare-fun res!2196331 () Bool)

(assert (=> b!5166648 (=> (not res!2196331) (not e!3219330))))

(assert (=> b!5166648 (= res!2196331 (= (size!39629 lt!2125257) (+ (size!39629 testedP!294) (size!39629 (Cons!60020 (head!11017 lt!2125236) Nil!60020)))))))

(declare-fun d!1666762 () Bool)

(assert (=> d!1666762 e!3219330))

(declare-fun res!2196332 () Bool)

(assert (=> d!1666762 (=> (not res!2196332) (not e!3219330))))

(declare-fun content!10633 (List!60144) (InoxSet C!29456))

(assert (=> d!1666762 (= res!2196332 (= (content!10633 lt!2125257) ((_ map or) (content!10633 testedP!294) (content!10633 (Cons!60020 (head!11017 lt!2125236) Nil!60020)))))))

(assert (=> d!1666762 (= lt!2125257 e!3219329)))

(declare-fun c!888968 () Bool)

(assert (=> d!1666762 (= c!888968 ((_ is Nil!60020) testedP!294))))

(assert (=> d!1666762 (= (++!13117 testedP!294 (Cons!60020 (head!11017 lt!2125236) Nil!60020)) lt!2125257)))

(declare-fun b!5166647 () Bool)

(assert (=> b!5166647 (= e!3219329 (Cons!60020 (h!66468 testedP!294) (++!13117 (t!373297 testedP!294) (Cons!60020 (head!11017 lt!2125236) Nil!60020))))))

(assert (= (and d!1666762 c!888968) b!5166646))

(assert (= (and d!1666762 (not c!888968)) b!5166647))

(assert (= (and d!1666762 res!2196332) b!5166648))

(assert (= (and b!5166648 res!2196331) b!5166649))

(declare-fun m!6217250 () Bool)

(assert (=> b!5166648 m!6217250))

(assert (=> b!5166648 m!6217184))

(declare-fun m!6217252 () Bool)

(assert (=> b!5166648 m!6217252))

(declare-fun m!6217254 () Bool)

(assert (=> d!1666762 m!6217254))

(declare-fun m!6217256 () Bool)

(assert (=> d!1666762 m!6217256))

(declare-fun m!6217258 () Bool)

(assert (=> d!1666762 m!6217258))

(declare-fun m!6217260 () Bool)

(assert (=> b!5166647 m!6217260))

(assert (=> b!5166596 d!1666762))

(declare-fun d!1666766 () Bool)

(assert (=> d!1666766 (isPrefix!5726 (++!13117 testedP!294 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020)) input!5817)))

(declare-fun lt!2125260 () Unit!151494)

(declare-fun choose!38223 (List!60144 List!60144) Unit!151494)

(assert (=> d!1666766 (= lt!2125260 (choose!38223 testedP!294 input!5817))))

(assert (=> d!1666766 (isPrefix!5726 testedP!294 input!5817)))

(assert (=> d!1666766 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1039 testedP!294 input!5817) lt!2125260)))

(declare-fun bs!1202885 () Bool)

(assert (= bs!1202885 d!1666766))

(declare-fun m!6217262 () Bool)

(assert (=> bs!1202885 m!6217262))

(declare-fun m!6217264 () Bool)

(assert (=> bs!1202885 m!6217264))

(assert (=> bs!1202885 m!6217264))

(declare-fun m!6217266 () Bool)

(assert (=> bs!1202885 m!6217266))

(assert (=> bs!1202885 m!6217178))

(assert (=> bs!1202885 m!6217172))

(assert (=> bs!1202885 m!6217178))

(declare-fun m!6217268 () Bool)

(assert (=> bs!1202885 m!6217268))

(assert (=> b!5166596 d!1666766))

(declare-fun d!1666768 () Bool)

(declare-fun lambda!257849 () Int)

(declare-fun exists!1896 ((InoxSet Context!7954) Int) Bool)

(assert (=> d!1666768 (= (nullableZipper!1139 z!4581) (exists!1896 z!4581 lambda!257849))))

(declare-fun bs!1202893 () Bool)

(assert (= bs!1202893 d!1666768))

(declare-fun m!6217310 () Bool)

(assert (=> bs!1202893 m!6217310))

(assert (=> b!5166596 d!1666768))

(declare-fun d!1666792 () Bool)

(assert (=> d!1666792 (<= (size!39629 testedP!294) (size!39629 input!5817))))

(declare-fun lt!2125280 () Unit!151494)

(declare-fun choose!38224 (List!60144 List!60144) Unit!151494)

(assert (=> d!1666792 (= lt!2125280 (choose!38224 testedP!294 input!5817))))

(assert (=> d!1666792 (isPrefix!5726 testedP!294 input!5817)))

(assert (=> d!1666792 (= (lemmaIsPrefixThenSmallerEqSize!889 testedP!294 input!5817) lt!2125280)))

(declare-fun bs!1202894 () Bool)

(assert (= bs!1202894 d!1666792))

(assert (=> bs!1202894 m!6217184))

(assert (=> bs!1202894 m!6217180))

(declare-fun m!6217312 () Bool)

(assert (=> bs!1202894 m!6217312))

(assert (=> bs!1202894 m!6217172))

(assert (=> b!5166593 d!1666792))

(declare-fun b!5166682 () Bool)

(declare-fun e!3219351 () Bool)

(declare-fun e!3219350 () Bool)

(assert (=> b!5166682 (= e!3219351 e!3219350)))

(declare-fun res!2196347 () Bool)

(assert (=> b!5166682 (=> (not res!2196347) (not e!3219350))))

(assert (=> b!5166682 (= res!2196347 (not ((_ is Nil!60020) input!5817)))))

(declare-fun d!1666794 () Bool)

(declare-fun e!3219349 () Bool)

(assert (=> d!1666794 e!3219349))

(declare-fun res!2196350 () Bool)

(assert (=> d!1666794 (=> res!2196350 e!3219349)))

(declare-fun lt!2125281 () Bool)

(assert (=> d!1666794 (= res!2196350 (not lt!2125281))))

(assert (=> d!1666794 (= lt!2125281 e!3219351)))

(declare-fun res!2196348 () Bool)

(assert (=> d!1666794 (=> res!2196348 e!3219351)))

(assert (=> d!1666794 (= res!2196348 ((_ is Nil!60020) testedP!294))))

(assert (=> d!1666794 (= (isPrefix!5726 testedP!294 input!5817) lt!2125281)))

(declare-fun b!5166683 () Bool)

(declare-fun res!2196349 () Bool)

(assert (=> b!5166683 (=> (not res!2196349) (not e!3219350))))

(assert (=> b!5166683 (= res!2196349 (= (head!11017 testedP!294) (head!11017 input!5817)))))

(declare-fun b!5166684 () Bool)

(assert (=> b!5166684 (= e!3219350 (isPrefix!5726 (tail!10126 testedP!294) (tail!10126 input!5817)))))

(declare-fun b!5166685 () Bool)

(assert (=> b!5166685 (= e!3219349 (>= (size!39629 input!5817) (size!39629 testedP!294)))))

(assert (= (and d!1666794 (not res!2196348)) b!5166682))

(assert (= (and b!5166682 res!2196347) b!5166683))

(assert (= (and b!5166683 res!2196349) b!5166684))

(assert (= (and d!1666794 (not res!2196350)) b!5166685))

(declare-fun m!6217314 () Bool)

(assert (=> b!5166683 m!6217314))

(assert (=> b!5166683 m!6217214))

(declare-fun m!6217316 () Bool)

(assert (=> b!5166684 m!6217316))

(assert (=> b!5166684 m!6217216))

(assert (=> b!5166684 m!6217316))

(assert (=> b!5166684 m!6217216))

(declare-fun m!6217318 () Bool)

(assert (=> b!5166684 m!6217318))

(assert (=> b!5166685 m!6217180))

(assert (=> b!5166685 m!6217184))

(assert (=> start!546656 d!1666794))

(declare-fun d!1666796 () Bool)

(declare-fun lt!2125284 () Int)

(assert (=> d!1666796 (>= lt!2125284 0)))

(declare-fun e!3219354 () Int)

(assert (=> d!1666796 (= lt!2125284 e!3219354)))

(declare-fun c!888982 () Bool)

(assert (=> d!1666796 (= c!888982 ((_ is Nil!60020) input!5817))))

(assert (=> d!1666796 (= (size!39629 input!5817) lt!2125284)))

(declare-fun b!5166690 () Bool)

(assert (=> b!5166690 (= e!3219354 0)))

(declare-fun b!5166691 () Bool)

(assert (=> b!5166691 (= e!3219354 (+ 1 (size!39629 (t!373297 input!5817))))))

(assert (= (and d!1666796 c!888982) b!5166690))

(assert (= (and d!1666796 (not c!888982)) b!5166691))

(declare-fun m!6217320 () Bool)

(assert (=> b!5166691 m!6217320))

(assert (=> b!5166597 d!1666796))

(declare-fun d!1666798 () Bool)

(declare-fun lt!2125287 () List!60144)

(assert (=> d!1666798 (= (++!13117 testedP!294 lt!2125287) input!5817)))

(declare-fun e!3219357 () List!60144)

(assert (=> d!1666798 (= lt!2125287 e!3219357)))

(declare-fun c!888985 () Bool)

(assert (=> d!1666798 (= c!888985 ((_ is Cons!60020) testedP!294))))

(assert (=> d!1666798 (>= (size!39629 input!5817) (size!39629 testedP!294))))

(assert (=> d!1666798 (= (getSuffix!3376 input!5817 testedP!294) lt!2125287)))

(declare-fun b!5166696 () Bool)

(assert (=> b!5166696 (= e!3219357 (getSuffix!3376 (tail!10126 input!5817) (t!373297 testedP!294)))))

(declare-fun b!5166697 () Bool)

(assert (=> b!5166697 (= e!3219357 input!5817)))

(assert (= (and d!1666798 c!888985) b!5166696))

(assert (= (and d!1666798 (not c!888985)) b!5166697))

(declare-fun m!6217322 () Bool)

(assert (=> d!1666798 m!6217322))

(assert (=> d!1666798 m!6217180))

(assert (=> d!1666798 m!6217184))

(assert (=> b!5166696 m!6217216))

(assert (=> b!5166696 m!6217216))

(declare-fun m!6217324 () Bool)

(assert (=> b!5166696 m!6217324))

(assert (=> b!5166597 d!1666798))

(declare-fun d!1666800 () Bool)

(assert (=> d!1666800 (= (isEmpty!32133 (_1!35173 (findLongestMatchInnerZipper!251 z!4581 testedP!294 lt!2125231 lt!2125236 input!5817 lt!2125234))) ((_ is Nil!60020) (_1!35173 (findLongestMatchInnerZipper!251 z!4581 testedP!294 lt!2125231 lt!2125236 input!5817 lt!2125234))))))

(assert (=> b!5166597 d!1666800))

(declare-fun d!1666802 () Bool)

(declare-fun lt!2125288 () Int)

(assert (=> d!1666802 (>= lt!2125288 0)))

(declare-fun e!3219358 () Int)

(assert (=> d!1666802 (= lt!2125288 e!3219358)))

(declare-fun c!888986 () Bool)

(assert (=> d!1666802 (= c!888986 ((_ is Nil!60020) testedP!294))))

(assert (=> d!1666802 (= (size!39629 testedP!294) lt!2125288)))

(declare-fun b!5166698 () Bool)

(assert (=> b!5166698 (= e!3219358 0)))

(declare-fun b!5166699 () Bool)

(assert (=> b!5166699 (= e!3219358 (+ 1 (size!39629 (t!373297 testedP!294))))))

(assert (= (and d!1666802 c!888986) b!5166698))

(assert (= (and d!1666802 (not c!888986)) b!5166699))

(declare-fun m!6217326 () Bool)

(assert (=> b!5166699 m!6217326))

(assert (=> b!5166597 d!1666802))

(declare-fun bm!362491 () Bool)

(declare-fun call!362502 () Unit!151494)

(assert (=> bm!362491 (= call!362502 (lemmaIsPrefixSameLengthThenSameList!1375 input!5817 testedP!294 input!5817))))

(declare-fun bm!362492 () Bool)

(declare-fun call!362500 () (InoxSet Context!7954))

(declare-fun call!362503 () C!29456)

(assert (=> bm!362492 (= call!362500 (derivationStepZipper!949 z!4581 call!362503))))

(declare-fun b!5166796 () Bool)

(declare-fun e!3219420 () tuple2!63740)

(assert (=> b!5166796 (= e!3219420 (tuple2!63741 Nil!60020 input!5817))))

(declare-fun b!5166797 () Bool)

(declare-fun e!3219415 () Unit!151494)

(declare-fun Unit!151501 () Unit!151494)

(assert (=> b!5166797 (= e!3219415 Unit!151501)))

(declare-fun lt!2125430 () Unit!151494)

(declare-fun call!362499 () Unit!151494)

(assert (=> b!5166797 (= lt!2125430 call!362499)))

(declare-fun call!362498 () Bool)

(assert (=> b!5166797 call!362498))

(declare-fun lt!2125447 () Unit!151494)

(assert (=> b!5166797 (= lt!2125447 lt!2125430)))

(declare-fun lt!2125441 () Unit!151494)

(assert (=> b!5166797 (= lt!2125441 call!362502)))

(assert (=> b!5166797 (= input!5817 testedP!294)))

(declare-fun lt!2125435 () Unit!151494)

(assert (=> b!5166797 (= lt!2125435 lt!2125441)))

(assert (=> b!5166797 false))

(declare-fun bm!362493 () Bool)

(assert (=> bm!362493 (= call!362498 (isPrefix!5726 input!5817 input!5817))))

(declare-fun b!5166798 () Bool)

(declare-fun c!889021 () Bool)

(declare-fun call!362501 () Bool)

(assert (=> b!5166798 (= c!889021 call!362501)))

(declare-fun lt!2125432 () Unit!151494)

(declare-fun lt!2125434 () Unit!151494)

(assert (=> b!5166798 (= lt!2125432 lt!2125434)))

(declare-fun lt!2125429 () C!29456)

(declare-fun lt!2125423 () List!60144)

(assert (=> b!5166798 (= (++!13117 (++!13117 testedP!294 (Cons!60020 lt!2125429 Nil!60020)) lt!2125423) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1564 (List!60144 C!29456 List!60144 List!60144) Unit!151494)

(assert (=> b!5166798 (= lt!2125434 (lemmaMoveElementToOtherListKeepsConcatEq!1564 testedP!294 lt!2125429 lt!2125423 input!5817))))

(assert (=> b!5166798 (= lt!2125423 (tail!10126 lt!2125236))))

(assert (=> b!5166798 (= lt!2125429 (head!11017 lt!2125236))))

(declare-fun lt!2125424 () Unit!151494)

(declare-fun lt!2125436 () Unit!151494)

(assert (=> b!5166798 (= lt!2125424 lt!2125436)))

(assert (=> b!5166798 (isPrefix!5726 (++!13117 testedP!294 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020)) input!5817)))

(assert (=> b!5166798 (= lt!2125436 (lemmaAddHeadSuffixToPrefixStillPrefix!1039 testedP!294 input!5817))))

(declare-fun lt!2125444 () List!60144)

(assert (=> b!5166798 (= lt!2125444 (++!13117 testedP!294 (Cons!60020 (head!11017 lt!2125236) Nil!60020)))))

(declare-fun lt!2125442 () Unit!151494)

(assert (=> b!5166798 (= lt!2125442 e!3219415)))

(declare-fun c!889023 () Bool)

(assert (=> b!5166798 (= c!889023 (= (size!39629 testedP!294) (size!39629 input!5817)))))

(declare-fun lt!2125440 () Unit!151494)

(declare-fun lt!2125443 () Unit!151494)

(assert (=> b!5166798 (= lt!2125440 lt!2125443)))

(assert (=> b!5166798 (<= (size!39629 testedP!294) (size!39629 input!5817))))

(assert (=> b!5166798 (= lt!2125443 (lemmaIsPrefixThenSmallerEqSize!889 testedP!294 input!5817))))

(declare-fun e!3219421 () tuple2!63740)

(declare-fun e!3219418 () tuple2!63740)

(assert (=> b!5166798 (= e!3219421 e!3219418)))

(declare-fun b!5166799 () Bool)

(declare-fun call!362497 () tuple2!63740)

(assert (=> b!5166799 (= e!3219418 call!362497)))

(declare-fun bm!362494 () Bool)

(assert (=> bm!362494 (= call!362499 (lemmaIsPrefixRefl!3733 input!5817 input!5817))))

(declare-fun b!5166801 () Bool)

(assert (=> b!5166801 (= e!3219420 e!3219421)))

(declare-fun c!889026 () Bool)

(assert (=> b!5166801 (= c!889026 (= lt!2125231 lt!2125234))))

(declare-fun bm!362495 () Bool)

(assert (=> bm!362495 (= call!362501 (nullableZipper!1139 z!4581))))

(declare-fun b!5166802 () Bool)

(declare-fun e!3219417 () Bool)

(declare-fun lt!2125428 () tuple2!63740)

(assert (=> b!5166802 (= e!3219417 (>= (size!39629 (_1!35173 lt!2125428)) (size!39629 testedP!294)))))

(declare-fun b!5166803 () Bool)

(declare-fun e!3219422 () tuple2!63740)

(assert (=> b!5166803 (= e!3219422 (tuple2!63741 testedP!294 Nil!60020))))

(declare-fun bm!362496 () Bool)

(assert (=> bm!362496 (= call!362503 (head!11017 lt!2125236))))

(declare-fun b!5166804 () Bool)

(declare-fun c!889022 () Bool)

(assert (=> b!5166804 (= c!889022 call!362501)))

(declare-fun lt!2125438 () Unit!151494)

(declare-fun lt!2125448 () Unit!151494)

(assert (=> b!5166804 (= lt!2125438 lt!2125448)))

(assert (=> b!5166804 (= input!5817 testedP!294)))

(assert (=> b!5166804 (= lt!2125448 call!362502)))

(declare-fun lt!2125425 () Unit!151494)

(declare-fun lt!2125445 () Unit!151494)

(assert (=> b!5166804 (= lt!2125425 lt!2125445)))

(assert (=> b!5166804 call!362498))

(assert (=> b!5166804 (= lt!2125445 call!362499)))

(assert (=> b!5166804 (= e!3219421 e!3219422)))

(declare-fun b!5166805 () Bool)

(declare-fun e!3219416 () Bool)

(assert (=> b!5166805 (= e!3219416 e!3219417)))

(declare-fun res!2196361 () Bool)

(assert (=> b!5166805 (=> res!2196361 e!3219417)))

(assert (=> b!5166805 (= res!2196361 (isEmpty!32133 (_1!35173 lt!2125428)))))

(declare-fun d!1666804 () Bool)

(assert (=> d!1666804 e!3219416))

(declare-fun res!2196362 () Bool)

(assert (=> d!1666804 (=> (not res!2196362) (not e!3219416))))

(assert (=> d!1666804 (= res!2196362 (= (++!13117 (_1!35173 lt!2125428) (_2!35173 lt!2125428)) input!5817))))

(assert (=> d!1666804 (= lt!2125428 e!3219420)))

(declare-fun c!889024 () Bool)

(declare-fun lostCauseZipper!1316 ((InoxSet Context!7954)) Bool)

(assert (=> d!1666804 (= c!889024 (lostCauseZipper!1316 z!4581))))

(declare-fun lt!2125426 () Unit!151494)

(declare-fun Unit!151502 () Unit!151494)

(assert (=> d!1666804 (= lt!2125426 Unit!151502)))

(assert (=> d!1666804 (= (getSuffix!3376 input!5817 testedP!294) lt!2125236)))

(declare-fun lt!2125437 () Unit!151494)

(declare-fun lt!2125427 () Unit!151494)

(assert (=> d!1666804 (= lt!2125437 lt!2125427)))

(declare-fun lt!2125433 () List!60144)

(assert (=> d!1666804 (= lt!2125236 lt!2125433)))

(declare-fun lemmaSamePrefixThenSameSuffix!2683 (List!60144 List!60144 List!60144 List!60144 List!60144) Unit!151494)

(assert (=> d!1666804 (= lt!2125427 (lemmaSamePrefixThenSameSuffix!2683 testedP!294 lt!2125236 testedP!294 lt!2125433 input!5817))))

(assert (=> d!1666804 (= lt!2125433 (getSuffix!3376 input!5817 testedP!294))))

(declare-fun lt!2125431 () Unit!151494)

(declare-fun lt!2125446 () Unit!151494)

(assert (=> d!1666804 (= lt!2125431 lt!2125446)))

(assert (=> d!1666804 (isPrefix!5726 testedP!294 (++!13117 testedP!294 lt!2125236))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3577 (List!60144 List!60144) Unit!151494)

(assert (=> d!1666804 (= lt!2125446 (lemmaConcatTwoListThenFirstIsPrefix!3577 testedP!294 lt!2125236))))

(assert (=> d!1666804 (= (++!13117 testedP!294 lt!2125236) input!5817)))

(assert (=> d!1666804 (= (findLongestMatchInnerZipper!251 z!4581 testedP!294 lt!2125231 lt!2125236 input!5817 lt!2125234) lt!2125428)))

(declare-fun b!5166800 () Bool)

(declare-fun e!3219419 () tuple2!63740)

(assert (=> b!5166800 (= e!3219419 (tuple2!63741 testedP!294 lt!2125236))))

(declare-fun call!362496 () List!60144)

(declare-fun bm!362497 () Bool)

(assert (=> bm!362497 (= call!362497 (findLongestMatchInnerZipper!251 call!362500 lt!2125444 (+ lt!2125231 1) call!362496 input!5817 lt!2125234))))

(declare-fun b!5166806 () Bool)

(assert (=> b!5166806 (= e!3219422 (tuple2!63741 Nil!60020 input!5817))))

(declare-fun b!5166807 () Bool)

(declare-fun lt!2125439 () tuple2!63740)

(assert (=> b!5166807 (= e!3219419 lt!2125439)))

(declare-fun bm!362498 () Bool)

(assert (=> bm!362498 (= call!362496 (tail!10126 lt!2125236))))

(declare-fun b!5166808 () Bool)

(declare-fun Unit!151503 () Unit!151494)

(assert (=> b!5166808 (= e!3219415 Unit!151503)))

(declare-fun b!5166809 () Bool)

(assert (=> b!5166809 (= e!3219418 e!3219419)))

(assert (=> b!5166809 (= lt!2125439 call!362497)))

(declare-fun c!889025 () Bool)

(assert (=> b!5166809 (= c!889025 (isEmpty!32133 (_1!35173 lt!2125439)))))

(assert (= (and d!1666804 c!889024) b!5166796))

(assert (= (and d!1666804 (not c!889024)) b!5166801))

(assert (= (and b!5166801 c!889026) b!5166804))

(assert (= (and b!5166801 (not c!889026)) b!5166798))

(assert (= (and b!5166804 c!889022) b!5166803))

(assert (= (and b!5166804 (not c!889022)) b!5166806))

(assert (= (and b!5166798 c!889023) b!5166797))

(assert (= (and b!5166798 (not c!889023)) b!5166808))

(assert (= (and b!5166798 c!889021) b!5166809))

(assert (= (and b!5166798 (not c!889021)) b!5166799))

(assert (= (and b!5166809 c!889025) b!5166800))

(assert (= (and b!5166809 (not c!889025)) b!5166807))

(assert (= (or b!5166809 b!5166799) bm!362498))

(assert (= (or b!5166809 b!5166799) bm!362496))

(assert (= (or b!5166809 b!5166799) bm!362492))

(assert (= (or b!5166809 b!5166799) bm!362497))

(assert (= (or b!5166804 b!5166797) bm!362494))

(assert (= (or b!5166804 b!5166798) bm!362495))

(assert (= (or b!5166804 b!5166797) bm!362493))

(assert (= (or b!5166804 b!5166797) bm!362491))

(assert (= (and d!1666804 res!2196362) b!5166805))

(assert (= (and b!5166805 (not res!2196361)) b!5166802))

(declare-fun m!6217366 () Bool)

(assert (=> d!1666804 m!6217366))

(declare-fun m!6217368 () Bool)

(assert (=> d!1666804 m!6217368))

(declare-fun m!6217370 () Bool)

(assert (=> d!1666804 m!6217370))

(assert (=> d!1666804 m!6217366))

(declare-fun m!6217372 () Bool)

(assert (=> d!1666804 m!6217372))

(declare-fun m!6217374 () Bool)

(assert (=> d!1666804 m!6217374))

(declare-fun m!6217376 () Bool)

(assert (=> d!1666804 m!6217376))

(assert (=> d!1666804 m!6217178))

(assert (=> bm!362493 m!6217190))

(declare-fun m!6217378 () Bool)

(assert (=> b!5166802 m!6217378))

(assert (=> b!5166802 m!6217184))

(declare-fun m!6217380 () Bool)

(assert (=> b!5166805 m!6217380))

(declare-fun m!6217382 () Bool)

(assert (=> bm!362497 m!6217382))

(assert (=> bm!362491 m!6217192))

(assert (=> bm!362495 m!6217204))

(declare-fun m!6217384 () Bool)

(assert (=> b!5166809 m!6217384))

(assert (=> bm!362494 m!6217188))

(assert (=> b!5166798 m!6217202))

(assert (=> b!5166798 m!6217178))

(assert (=> b!5166798 m!6217180))

(assert (=> b!5166798 m!6217178))

(assert (=> b!5166798 m!6217268))

(assert (=> b!5166798 m!6217184))

(declare-fun m!6217386 () Bool)

(assert (=> b!5166798 m!6217386))

(assert (=> b!5166798 m!6217386))

(declare-fun m!6217388 () Bool)

(assert (=> b!5166798 m!6217388))

(assert (=> b!5166798 m!6217174))

(assert (=> b!5166798 m!6217200))

(declare-fun m!6217390 () Bool)

(assert (=> b!5166798 m!6217390))

(assert (=> b!5166798 m!6217198))

(declare-fun m!6217392 () Bool)

(assert (=> b!5166798 m!6217392))

(assert (=> b!5166798 m!6217264))

(assert (=> b!5166798 m!6217266))

(assert (=> b!5166798 m!6217264))

(assert (=> bm!362496 m!6217200))

(declare-fun m!6217394 () Bool)

(assert (=> bm!362492 m!6217394))

(assert (=> bm!362498 m!6217390))

(assert (=> b!5166597 d!1666804))

(declare-fun d!1666812 () Bool)

(declare-fun lambda!257852 () Int)

(declare-fun forall!14111 (List!60143 Int) Bool)

(assert (=> d!1666812 (= (inv!79729 setElem!31784) (forall!14111 (exprs!4477 setElem!31784) lambda!257852))))

(declare-fun bs!1202895 () Bool)

(assert (= bs!1202895 d!1666812))

(declare-fun m!6217396 () Bool)

(assert (=> bs!1202895 m!6217396))

(assert (=> setNonEmpty!31784 d!1666812))

(declare-fun bs!1202896 () Bool)

(declare-fun d!1666814 () Bool)

(assert (= bs!1202896 (and d!1666814 d!1666812)))

(declare-fun lambda!257853 () Int)

(assert (=> bs!1202896 (= lambda!257853 lambda!257852)))

(assert (=> d!1666814 (= (inv!79729 setElem!31783) (forall!14111 (exprs!4477 setElem!31783) lambda!257853))))

(declare-fun bs!1202897 () Bool)

(assert (= bs!1202897 d!1666814))

(declare-fun m!6217398 () Bool)

(assert (=> bs!1202897 m!6217398))

(assert (=> setNonEmpty!31783 d!1666814))

(declare-fun b!5166814 () Bool)

(declare-fun e!3219425 () Bool)

(declare-fun tp!1449562 () Bool)

(assert (=> b!5166814 (= e!3219425 (and tp_is_empty!38439 tp!1449562))))

(assert (=> b!5166602 (= tp!1449537 e!3219425)))

(assert (= (and b!5166602 ((_ is Cons!60020) (t!373297 testedP!294))) b!5166814))

(declare-fun b!5166819 () Bool)

(declare-fun e!3219428 () Bool)

(declare-fun tp!1449567 () Bool)

(declare-fun tp!1449568 () Bool)

(assert (=> b!5166819 (= e!3219428 (and tp!1449567 tp!1449568))))

(assert (=> b!5166600 (= tp!1449538 e!3219428)))

(assert (= (and b!5166600 ((_ is Cons!60019) (exprs!4477 setElem!31783))) b!5166819))

(declare-fun condSetEmpty!31791 () Bool)

(assert (=> setNonEmpty!31784 (= condSetEmpty!31791 (= setRest!31783 ((as const (Array Context!7954 Bool)) false)))))

(declare-fun setRes!31791 () Bool)

(assert (=> setNonEmpty!31784 (= tp!1449539 setRes!31791)))

(declare-fun setIsEmpty!31791 () Bool)

(assert (=> setIsEmpty!31791 setRes!31791))

(declare-fun e!3219431 () Bool)

(declare-fun setElem!31791 () Context!7954)

(declare-fun tp!1449573 () Bool)

(declare-fun setNonEmpty!31791 () Bool)

(assert (=> setNonEmpty!31791 (= setRes!31791 (and tp!1449573 (inv!79729 setElem!31791) e!3219431))))

(declare-fun setRest!31791 () (InoxSet Context!7954))

(assert (=> setNonEmpty!31791 (= setRest!31783 ((_ map or) (store ((as const (Array Context!7954 Bool)) false) setElem!31791 true) setRest!31791))))

(declare-fun b!5166824 () Bool)

(declare-fun tp!1449574 () Bool)

(assert (=> b!5166824 (= e!3219431 tp!1449574)))

(assert (= (and setNonEmpty!31784 condSetEmpty!31791) setIsEmpty!31791))

(assert (= (and setNonEmpty!31784 (not condSetEmpty!31791)) setNonEmpty!31791))

(assert (= setNonEmpty!31791 b!5166824))

(declare-fun m!6217400 () Bool)

(assert (=> setNonEmpty!31791 m!6217400))

(declare-fun b!5166825 () Bool)

(declare-fun e!3219432 () Bool)

(declare-fun tp!1449575 () Bool)

(assert (=> b!5166825 (= e!3219432 (and tp_is_empty!38439 tp!1449575))))

(assert (=> b!5166601 (= tp!1449534 e!3219432)))

(assert (= (and b!5166601 ((_ is Cons!60020) (t!373297 input!5817))) b!5166825))

(declare-fun b!5166826 () Bool)

(declare-fun e!3219433 () Bool)

(declare-fun tp!1449576 () Bool)

(declare-fun tp!1449577 () Bool)

(assert (=> b!5166826 (= e!3219433 (and tp!1449576 tp!1449577))))

(assert (=> b!5166599 (= tp!1449535 e!3219433)))

(assert (= (and b!5166599 ((_ is Cons!60019) (exprs!4477 setElem!31784))) b!5166826))

(declare-fun condSetEmpty!31792 () Bool)

(assert (=> setNonEmpty!31783 (= condSetEmpty!31792 (= setRest!31784 ((as const (Array Context!7954 Bool)) false)))))

(declare-fun setRes!31792 () Bool)

(assert (=> setNonEmpty!31783 (= tp!1449536 setRes!31792)))

(declare-fun setIsEmpty!31792 () Bool)

(assert (=> setIsEmpty!31792 setRes!31792))

(declare-fun e!3219434 () Bool)

(declare-fun setNonEmpty!31792 () Bool)

(declare-fun setElem!31792 () Context!7954)

(declare-fun tp!1449578 () Bool)

(assert (=> setNonEmpty!31792 (= setRes!31792 (and tp!1449578 (inv!79729 setElem!31792) e!3219434))))

(declare-fun setRest!31792 () (InoxSet Context!7954))

(assert (=> setNonEmpty!31792 (= setRest!31784 ((_ map or) (store ((as const (Array Context!7954 Bool)) false) setElem!31792 true) setRest!31792))))

(declare-fun b!5166827 () Bool)

(declare-fun tp!1449579 () Bool)

(assert (=> b!5166827 (= e!3219434 tp!1449579)))

(assert (= (and setNonEmpty!31783 condSetEmpty!31792) setIsEmpty!31792))

(assert (= (and setNonEmpty!31783 (not condSetEmpty!31792)) setNonEmpty!31792))

(assert (= setNonEmpty!31792 b!5166827))

(declare-fun m!6217402 () Bool)

(assert (=> setNonEmpty!31792 m!6217402))

(check-sat (not d!1666762) (not b!5166809) (not bm!362498) (not b!5166648) (not d!1666812) (not d!1666746) (not b!5166798) (not b!5166636) (not b!5166814) (not b!5166684) (not b!5166637) (not b!5166825) (not bm!362491) (not d!1666768) (not b!5166802) (not b!5166608) (not bm!362494) (not b!5166685) (not b!5166819) (not bm!362493) (not b!5166629) (not b!5166627) tp_is_empty!38439 (not b!5166699) (not bm!362492) (not bm!362496) (not d!1666766) (not setNonEmpty!31791) (not d!1666814) (not d!1666804) (not b!5166647) (not bm!362497) (not b!5166826) (not b!5166628) (not bm!362495) (not b!5166696) (not b!5166691) (not b!5166827) (not d!1666798) (not b!5166683) (not d!1666752) (not d!1666792) (not b!5166824) (not b!5166635) (not setNonEmpty!31792) (not b!5166805))
(check-sat)
(get-model)

(assert (=> b!5166685 d!1666796))

(assert (=> b!5166685 d!1666802))

(declare-fun d!1666838 () Bool)

(assert (=> d!1666838 true))

(declare-fun lambda!257865 () Int)

(declare-fun flatMap!436 ((InoxSet Context!7954) Int) (InoxSet Context!7954))

(assert (=> d!1666838 (= (derivationStepZipper!949 z!4581 call!362503) (flatMap!436 z!4581 lambda!257865))))

(declare-fun bs!1202900 () Bool)

(assert (= bs!1202900 d!1666838))

(declare-fun m!6217422 () Bool)

(assert (=> bs!1202900 m!6217422))

(assert (=> bm!362492 d!1666838))

(declare-fun d!1666840 () Bool)

(declare-fun lt!2125472 () Int)

(assert (=> d!1666840 (>= lt!2125472 0)))

(declare-fun e!3219443 () Int)

(assert (=> d!1666840 (= lt!2125472 e!3219443)))

(declare-fun c!889043 () Bool)

(assert (=> d!1666840 (= c!889043 ((_ is Nil!60020) lt!2125257))))

(assert (=> d!1666840 (= (size!39629 lt!2125257) lt!2125472)))

(declare-fun b!5166844 () Bool)

(assert (=> b!5166844 (= e!3219443 0)))

(declare-fun b!5166845 () Bool)

(assert (=> b!5166845 (= e!3219443 (+ 1 (size!39629 (t!373297 lt!2125257))))))

(assert (= (and d!1666840 c!889043) b!5166844))

(assert (= (and d!1666840 (not c!889043)) b!5166845))

(declare-fun m!6217424 () Bool)

(assert (=> b!5166845 m!6217424))

(assert (=> b!5166648 d!1666840))

(assert (=> b!5166648 d!1666802))

(declare-fun d!1666842 () Bool)

(declare-fun lt!2125473 () Int)

(assert (=> d!1666842 (>= lt!2125473 0)))

(declare-fun e!3219446 () Int)

(assert (=> d!1666842 (= lt!2125473 e!3219446)))

(declare-fun c!889044 () Bool)

(assert (=> d!1666842 (= c!889044 ((_ is Nil!60020) (Cons!60020 (head!11017 lt!2125236) Nil!60020)))))

(assert (=> d!1666842 (= (size!39629 (Cons!60020 (head!11017 lt!2125236) Nil!60020)) lt!2125473)))

(declare-fun b!5166846 () Bool)

(assert (=> b!5166846 (= e!3219446 0)))

(declare-fun b!5166847 () Bool)

(assert (=> b!5166847 (= e!3219446 (+ 1 (size!39629 (t!373297 (Cons!60020 (head!11017 lt!2125236) Nil!60020)))))))

(assert (= (and d!1666842 c!889044) b!5166846))

(assert (= (and d!1666842 (not c!889044)) b!5166847))

(declare-fun m!6217426 () Bool)

(assert (=> b!5166847 m!6217426))

(assert (=> b!5166648 d!1666842))

(declare-fun d!1666844 () Bool)

(declare-fun lt!2125474 () Int)

(assert (=> d!1666844 (>= lt!2125474 0)))

(declare-fun e!3219447 () Int)

(assert (=> d!1666844 (= lt!2125474 e!3219447)))

(declare-fun c!889045 () Bool)

(assert (=> d!1666844 (= c!889045 ((_ is Nil!60020) (t!373297 testedP!294)))))

(assert (=> d!1666844 (= (size!39629 (t!373297 testedP!294)) lt!2125474)))

(declare-fun b!5166848 () Bool)

(assert (=> b!5166848 (= e!3219447 0)))

(declare-fun b!5166849 () Bool)

(assert (=> b!5166849 (= e!3219447 (+ 1 (size!39629 (t!373297 (t!373297 testedP!294)))))))

(assert (= (and d!1666844 c!889045) b!5166848))

(assert (= (and d!1666844 (not c!889045)) b!5166849))

(declare-fun m!6217428 () Bool)

(assert (=> b!5166849 m!6217428))

(assert (=> b!5166699 d!1666844))

(declare-fun d!1666846 () Bool)

(assert (=> d!1666846 (= input!5817 testedP!294)))

(assert (=> d!1666846 true))

(declare-fun _$60!943 () Unit!151494)

(assert (=> d!1666846 (= (choose!38222 input!5817 testedP!294 input!5817) _$60!943)))

(assert (=> d!1666752 d!1666846))

(assert (=> d!1666752 d!1666748))

(declare-fun lt!2125475 () List!60144)

(declare-fun e!3219449 () Bool)

(declare-fun b!5166853 () Bool)

(assert (=> b!5166853 (= e!3219449 (or (not (= (Cons!60020 (head!11017 lt!2125236) Nil!60020) Nil!60020)) (= lt!2125475 (t!373297 testedP!294))))))

(declare-fun b!5166850 () Bool)

(declare-fun e!3219448 () List!60144)

(assert (=> b!5166850 (= e!3219448 (Cons!60020 (head!11017 lt!2125236) Nil!60020))))

(declare-fun b!5166852 () Bool)

(declare-fun res!2196363 () Bool)

(assert (=> b!5166852 (=> (not res!2196363) (not e!3219449))))

(assert (=> b!5166852 (= res!2196363 (= (size!39629 lt!2125475) (+ (size!39629 (t!373297 testedP!294)) (size!39629 (Cons!60020 (head!11017 lt!2125236) Nil!60020)))))))

(declare-fun d!1666848 () Bool)

(assert (=> d!1666848 e!3219449))

(declare-fun res!2196364 () Bool)

(assert (=> d!1666848 (=> (not res!2196364) (not e!3219449))))

(assert (=> d!1666848 (= res!2196364 (= (content!10633 lt!2125475) ((_ map or) (content!10633 (t!373297 testedP!294)) (content!10633 (Cons!60020 (head!11017 lt!2125236) Nil!60020)))))))

(assert (=> d!1666848 (= lt!2125475 e!3219448)))

(declare-fun c!889046 () Bool)

(assert (=> d!1666848 (= c!889046 ((_ is Nil!60020) (t!373297 testedP!294)))))

(assert (=> d!1666848 (= (++!13117 (t!373297 testedP!294) (Cons!60020 (head!11017 lt!2125236) Nil!60020)) lt!2125475)))

(declare-fun b!5166851 () Bool)

(assert (=> b!5166851 (= e!3219448 (Cons!60020 (h!66468 (t!373297 testedP!294)) (++!13117 (t!373297 (t!373297 testedP!294)) (Cons!60020 (head!11017 lt!2125236) Nil!60020))))))

(assert (= (and d!1666848 c!889046) b!5166850))

(assert (= (and d!1666848 (not c!889046)) b!5166851))

(assert (= (and d!1666848 res!2196364) b!5166852))

(assert (= (and b!5166852 res!2196363) b!5166853))

(declare-fun m!6217430 () Bool)

(assert (=> b!5166852 m!6217430))

(assert (=> b!5166852 m!6217326))

(assert (=> b!5166852 m!6217252))

(declare-fun m!6217432 () Bool)

(assert (=> d!1666848 m!6217432))

(declare-fun m!6217434 () Bool)

(assert (=> d!1666848 m!6217434))

(assert (=> d!1666848 m!6217258))

(declare-fun m!6217436 () Bool)

(assert (=> b!5166851 m!6217436))

(assert (=> b!5166647 d!1666848))

(assert (=> d!1666792 d!1666802))

(assert (=> d!1666792 d!1666796))

(declare-fun d!1666850 () Bool)

(assert (=> d!1666850 (<= (size!39629 testedP!294) (size!39629 input!5817))))

(assert (=> d!1666850 true))

(declare-fun _$64!670 () Unit!151494)

(assert (=> d!1666850 (= (choose!38224 testedP!294 input!5817) _$64!670)))

(declare-fun bs!1202901 () Bool)

(assert (= bs!1202901 d!1666850))

(assert (=> bs!1202901 m!6217184))

(assert (=> bs!1202901 m!6217180))

(assert (=> d!1666792 d!1666850))

(assert (=> d!1666792 d!1666794))

(declare-fun b!5166854 () Bool)

(declare-fun e!3219452 () Bool)

(declare-fun e!3219451 () Bool)

(assert (=> b!5166854 (= e!3219452 e!3219451)))

(declare-fun res!2196365 () Bool)

(assert (=> b!5166854 (=> (not res!2196365) (not e!3219451))))

(assert (=> b!5166854 (= res!2196365 (not ((_ is Nil!60020) (tail!10126 input!5817))))))

(declare-fun d!1666852 () Bool)

(declare-fun e!3219450 () Bool)

(assert (=> d!1666852 e!3219450))

(declare-fun res!2196368 () Bool)

(assert (=> d!1666852 (=> res!2196368 e!3219450)))

(declare-fun lt!2125476 () Bool)

(assert (=> d!1666852 (= res!2196368 (not lt!2125476))))

(assert (=> d!1666852 (= lt!2125476 e!3219452)))

(declare-fun res!2196366 () Bool)

(assert (=> d!1666852 (=> res!2196366 e!3219452)))

(assert (=> d!1666852 (= res!2196366 ((_ is Nil!60020) (tail!10126 testedP!294)))))

(assert (=> d!1666852 (= (isPrefix!5726 (tail!10126 testedP!294) (tail!10126 input!5817)) lt!2125476)))

(declare-fun b!5166855 () Bool)

(declare-fun res!2196367 () Bool)

(assert (=> b!5166855 (=> (not res!2196367) (not e!3219451))))

(assert (=> b!5166855 (= res!2196367 (= (head!11017 (tail!10126 testedP!294)) (head!11017 (tail!10126 input!5817))))))

(declare-fun b!5166856 () Bool)

(assert (=> b!5166856 (= e!3219451 (isPrefix!5726 (tail!10126 (tail!10126 testedP!294)) (tail!10126 (tail!10126 input!5817))))))

(declare-fun b!5166857 () Bool)

(assert (=> b!5166857 (= e!3219450 (>= (size!39629 (tail!10126 input!5817)) (size!39629 (tail!10126 testedP!294))))))

(assert (= (and d!1666852 (not res!2196366)) b!5166854))

(assert (= (and b!5166854 res!2196365) b!5166855))

(assert (= (and b!5166855 res!2196367) b!5166856))

(assert (= (and d!1666852 (not res!2196368)) b!5166857))

(assert (=> b!5166855 m!6217316))

(declare-fun m!6217438 () Bool)

(assert (=> b!5166855 m!6217438))

(assert (=> b!5166855 m!6217216))

(declare-fun m!6217440 () Bool)

(assert (=> b!5166855 m!6217440))

(assert (=> b!5166856 m!6217316))

(declare-fun m!6217442 () Bool)

(assert (=> b!5166856 m!6217442))

(assert (=> b!5166856 m!6217216))

(declare-fun m!6217444 () Bool)

(assert (=> b!5166856 m!6217444))

(assert (=> b!5166856 m!6217442))

(assert (=> b!5166856 m!6217444))

(declare-fun m!6217446 () Bool)

(assert (=> b!5166856 m!6217446))

(assert (=> b!5166857 m!6217216))

(declare-fun m!6217448 () Bool)

(assert (=> b!5166857 m!6217448))

(assert (=> b!5166857 m!6217316))

(declare-fun m!6217450 () Bool)

(assert (=> b!5166857 m!6217450))

(assert (=> b!5166684 d!1666852))

(declare-fun d!1666854 () Bool)

(assert (=> d!1666854 (= (tail!10126 testedP!294) (t!373297 testedP!294))))

(assert (=> b!5166684 d!1666854))

(declare-fun d!1666856 () Bool)

(assert (=> d!1666856 (= (tail!10126 input!5817) (t!373297 input!5817))))

(assert (=> b!5166684 d!1666856))

(assert (=> bm!362491 d!1666752))

(assert (=> b!5166637 d!1666796))

(declare-fun d!1666858 () Bool)

(declare-fun lt!2125485 () Int)

(assert (=> d!1666858 (>= lt!2125485 0)))

(declare-fun e!3219454 () Int)

(assert (=> d!1666858 (= lt!2125485 e!3219454)))

(declare-fun c!889050 () Bool)

(assert (=> d!1666858 (= c!889050 ((_ is Nil!60020) lt!2125230))))

(assert (=> d!1666858 (= (size!39629 lt!2125230) lt!2125485)))

(declare-fun b!5166860 () Bool)

(assert (=> b!5166860 (= e!3219454 0)))

(declare-fun b!5166861 () Bool)

(assert (=> b!5166861 (= e!3219454 (+ 1 (size!39629 (t!373297 lt!2125230))))))

(assert (= (and d!1666858 c!889050) b!5166860))

(assert (= (and d!1666858 (not c!889050)) b!5166861))

(declare-fun m!6217452 () Bool)

(assert (=> b!5166861 m!6217452))

(assert (=> b!5166637 d!1666858))

(declare-fun d!1666860 () Bool)

(assert (=> d!1666860 (= (isEmpty!32133 (_1!35173 lt!2125439)) ((_ is Nil!60020) (_1!35173 lt!2125439)))))

(assert (=> b!5166809 d!1666860))

(declare-fun d!1666862 () Bool)

(assert (=> d!1666862 (= (head!11017 testedP!294) (h!66468 testedP!294))))

(assert (=> b!5166683 d!1666862))

(declare-fun d!1666864 () Bool)

(assert (=> d!1666864 (= (head!11017 input!5817) (h!66468 input!5817))))

(assert (=> b!5166683 d!1666864))

(declare-fun d!1666866 () Bool)

(declare-fun res!2196375 () Bool)

(declare-fun e!3219461 () Bool)

(assert (=> d!1666866 (=> res!2196375 e!3219461)))

(assert (=> d!1666866 (= res!2196375 ((_ is Nil!60019) (exprs!4477 setElem!31783)))))

(assert (=> d!1666866 (= (forall!14111 (exprs!4477 setElem!31783) lambda!257853) e!3219461)))

(declare-fun b!5166870 () Bool)

(declare-fun e!3219462 () Bool)

(assert (=> b!5166870 (= e!3219461 e!3219462)))

(declare-fun res!2196376 () Bool)

(assert (=> b!5166870 (=> (not res!2196376) (not e!3219462))))

(declare-fun dynLambda!23861 (Int Regex!14593) Bool)

(assert (=> b!5166870 (= res!2196376 (dynLambda!23861 lambda!257853 (h!66467 (exprs!4477 setElem!31783))))))

(declare-fun b!5166871 () Bool)

(assert (=> b!5166871 (= e!3219462 (forall!14111 (t!373296 (exprs!4477 setElem!31783)) lambda!257853))))

(assert (= (and d!1666866 (not res!2196375)) b!5166870))

(assert (= (and b!5166870 res!2196376) b!5166871))

(declare-fun b_lambda!200785 () Bool)

(assert (=> (not b_lambda!200785) (not b!5166870)))

(declare-fun m!6217480 () Bool)

(assert (=> b!5166870 m!6217480))

(declare-fun m!6217482 () Bool)

(assert (=> b!5166871 m!6217482))

(assert (=> d!1666814 d!1666866))

(declare-fun d!1666872 () Bool)

(declare-fun lt!2125488 () List!60144)

(assert (=> d!1666872 (= (++!13117 (t!373297 testedP!294) lt!2125488) (tail!10126 input!5817))))

(declare-fun e!3219466 () List!60144)

(assert (=> d!1666872 (= lt!2125488 e!3219466)))

(declare-fun c!889052 () Bool)

(assert (=> d!1666872 (= c!889052 ((_ is Cons!60020) (t!373297 testedP!294)))))

(assert (=> d!1666872 (>= (size!39629 (tail!10126 input!5817)) (size!39629 (t!373297 testedP!294)))))

(assert (=> d!1666872 (= (getSuffix!3376 (tail!10126 input!5817) (t!373297 testedP!294)) lt!2125488)))

(declare-fun b!5166876 () Bool)

(assert (=> b!5166876 (= e!3219466 (getSuffix!3376 (tail!10126 (tail!10126 input!5817)) (t!373297 (t!373297 testedP!294))))))

(declare-fun b!5166877 () Bool)

(assert (=> b!5166877 (= e!3219466 (tail!10126 input!5817))))

(assert (= (and d!1666872 c!889052) b!5166876))

(assert (= (and d!1666872 (not c!889052)) b!5166877))

(declare-fun m!6217488 () Bool)

(assert (=> d!1666872 m!6217488))

(assert (=> d!1666872 m!6217216))

(assert (=> d!1666872 m!6217448))

(assert (=> d!1666872 m!6217326))

(assert (=> b!5166876 m!6217216))

(assert (=> b!5166876 m!6217444))

(assert (=> b!5166876 m!6217444))

(declare-fun m!6217494 () Bool)

(assert (=> b!5166876 m!6217494))

(assert (=> b!5166696 d!1666872))

(assert (=> b!5166696 d!1666856))

(declare-fun b!5166885 () Bool)

(declare-fun e!3219470 () Bool)

(declare-fun lt!2125490 () List!60144)

(assert (=> b!5166885 (= e!3219470 (or (not (= (_2!35173 lt!2125428) Nil!60020)) (= lt!2125490 (_1!35173 lt!2125428))))))

(declare-fun b!5166882 () Bool)

(declare-fun e!3219469 () List!60144)

(assert (=> b!5166882 (= e!3219469 (_2!35173 lt!2125428))))

(declare-fun b!5166884 () Bool)

(declare-fun res!2196383 () Bool)

(assert (=> b!5166884 (=> (not res!2196383) (not e!3219470))))

(assert (=> b!5166884 (= res!2196383 (= (size!39629 lt!2125490) (+ (size!39629 (_1!35173 lt!2125428)) (size!39629 (_2!35173 lt!2125428)))))))

(declare-fun d!1666876 () Bool)

(assert (=> d!1666876 e!3219470))

(declare-fun res!2196384 () Bool)

(assert (=> d!1666876 (=> (not res!2196384) (not e!3219470))))

(assert (=> d!1666876 (= res!2196384 (= (content!10633 lt!2125490) ((_ map or) (content!10633 (_1!35173 lt!2125428)) (content!10633 (_2!35173 lt!2125428)))))))

(assert (=> d!1666876 (= lt!2125490 e!3219469)))

(declare-fun c!889054 () Bool)

(assert (=> d!1666876 (= c!889054 ((_ is Nil!60020) (_1!35173 lt!2125428)))))

(assert (=> d!1666876 (= (++!13117 (_1!35173 lt!2125428) (_2!35173 lt!2125428)) lt!2125490)))

(declare-fun b!5166883 () Bool)

(assert (=> b!5166883 (= e!3219469 (Cons!60020 (h!66468 (_1!35173 lt!2125428)) (++!13117 (t!373297 (_1!35173 lt!2125428)) (_2!35173 lt!2125428))))))

(assert (= (and d!1666876 c!889054) b!5166882))

(assert (= (and d!1666876 (not c!889054)) b!5166883))

(assert (= (and d!1666876 res!2196384) b!5166884))

(assert (= (and b!5166884 res!2196383) b!5166885))

(declare-fun m!6217504 () Bool)

(assert (=> b!5166884 m!6217504))

(assert (=> b!5166884 m!6217378))

(declare-fun m!6217508 () Bool)

(assert (=> b!5166884 m!6217508))

(declare-fun m!6217510 () Bool)

(assert (=> d!1666876 m!6217510))

(declare-fun m!6217512 () Bool)

(assert (=> d!1666876 m!6217512))

(declare-fun m!6217514 () Bool)

(assert (=> d!1666876 m!6217514))

(declare-fun m!6217516 () Bool)

(assert (=> b!5166883 m!6217516))

(assert (=> d!1666804 d!1666876))

(declare-fun bs!1202916 () Bool)

(declare-fun d!1666880 () Bool)

(assert (= bs!1202916 (and d!1666880 d!1666768)))

(declare-fun lambda!257889 () Int)

(assert (=> bs!1202916 (not (= lambda!257889 lambda!257849))))

(declare-fun bs!1202917 () Bool)

(declare-fun b!5166924 () Bool)

(assert (= bs!1202917 (and b!5166924 d!1666768)))

(declare-fun lambda!257890 () Int)

(assert (=> bs!1202917 (not (= lambda!257890 lambda!257849))))

(declare-fun bs!1202918 () Bool)

(assert (= bs!1202918 (and b!5166924 d!1666880)))

(assert (=> bs!1202918 (not (= lambda!257890 lambda!257889))))

(declare-fun bs!1202920 () Bool)

(declare-fun b!5166925 () Bool)

(assert (= bs!1202920 (and b!5166925 d!1666768)))

(declare-fun lambda!257891 () Int)

(assert (=> bs!1202920 (not (= lambda!257891 lambda!257849))))

(declare-fun bs!1202921 () Bool)

(assert (= bs!1202921 (and b!5166925 d!1666880)))

(assert (=> bs!1202921 (not (= lambda!257891 lambda!257889))))

(declare-fun bs!1202922 () Bool)

(assert (= bs!1202922 (and b!5166925 b!5166924)))

(assert (=> bs!1202922 (= lambda!257891 lambda!257890)))

(declare-fun lt!2125524 () Bool)

(declare-datatypes ((Option!14828 0))(
  ( (None!14827) (Some!14827 (v!50856 List!60144)) )
))
(declare-fun isEmpty!32135 (Option!14828) Bool)

(declare-fun getLanguageWitness!997 ((InoxSet Context!7954)) Option!14828)

(assert (=> d!1666880 (= lt!2125524 (isEmpty!32135 (getLanguageWitness!997 z!4581)))))

(declare-fun forall!14113 ((InoxSet Context!7954) Int) Bool)

(assert (=> d!1666880 (= lt!2125524 (forall!14113 z!4581 lambda!257889))))

(declare-fun lt!2125520 () Unit!151494)

(declare-fun e!3219497 () Unit!151494)

(assert (=> d!1666880 (= lt!2125520 e!3219497)))

(declare-fun c!889074 () Bool)

(assert (=> d!1666880 (= c!889074 (not (forall!14113 z!4581 lambda!257889)))))

(assert (=> d!1666880 (= (lostCauseZipper!1316 z!4581) lt!2125524)))

(declare-fun Unit!151506 () Unit!151494)

(assert (=> b!5166925 (= e!3219497 Unit!151506)))

(declare-datatypes ((List!60146 0))(
  ( (Nil!60022) (Cons!60022 (h!66470 Context!7954) (t!373299 List!60146)) )
))
(declare-fun lt!2125525 () List!60146)

(declare-fun call!362515 () List!60146)

(assert (=> b!5166925 (= lt!2125525 call!362515)))

(declare-fun lt!2125519 () Unit!151494)

(declare-fun lemmaForallThenNotExists!430 (List!60146 Int) Unit!151494)

(assert (=> b!5166925 (= lt!2125519 (lemmaForallThenNotExists!430 lt!2125525 lambda!257889))))

(declare-fun call!362514 () Bool)

(assert (=> b!5166925 (not call!362514)))

(declare-fun lt!2125523 () Unit!151494)

(assert (=> b!5166925 (= lt!2125523 lt!2125519)))

(declare-fun lt!2125526 () List!60146)

(declare-fun bm!362510 () Bool)

(declare-fun exists!1898 (List!60146 Int) Bool)

(assert (=> bm!362510 (= call!362514 (exists!1898 (ite c!889074 lt!2125526 lt!2125525) (ite c!889074 lambda!257890 lambda!257891)))))

(declare-fun bm!362509 () Bool)

(declare-fun toList!8443 ((InoxSet Context!7954)) List!60146)

(assert (=> bm!362509 (= call!362515 (toList!8443 z!4581))))

(declare-fun Unit!151507 () Unit!151494)

(assert (=> b!5166924 (= e!3219497 Unit!151507)))

(assert (=> b!5166924 (= lt!2125526 call!362515)))

(declare-fun lt!2125521 () Unit!151494)

(declare-fun lemmaNotForallThenExists!463 (List!60146 Int) Unit!151494)

(assert (=> b!5166924 (= lt!2125521 (lemmaNotForallThenExists!463 lt!2125526 lambda!257889))))

(assert (=> b!5166924 call!362514))

(declare-fun lt!2125522 () Unit!151494)

(assert (=> b!5166924 (= lt!2125522 lt!2125521)))

(assert (= (and d!1666880 c!889074) b!5166924))

(assert (= (and d!1666880 (not c!889074)) b!5166925))

(assert (= (or b!5166924 b!5166925) bm!362509))

(assert (= (or b!5166924 b!5166925) bm!362510))

(declare-fun m!6217592 () Bool)

(assert (=> d!1666880 m!6217592))

(assert (=> d!1666880 m!6217592))

(declare-fun m!6217594 () Bool)

(assert (=> d!1666880 m!6217594))

(declare-fun m!6217596 () Bool)

(assert (=> d!1666880 m!6217596))

(assert (=> d!1666880 m!6217596))

(declare-fun m!6217598 () Bool)

(assert (=> b!5166924 m!6217598))

(declare-fun m!6217600 () Bool)

(assert (=> bm!362509 m!6217600))

(declare-fun m!6217602 () Bool)

(assert (=> bm!362510 m!6217602))

(declare-fun m!6217604 () Bool)

(assert (=> b!5166925 m!6217604))

(assert (=> d!1666804 d!1666880))

(declare-fun b!5166930 () Bool)

(declare-fun e!3219504 () Bool)

(declare-fun e!3219503 () Bool)

(assert (=> b!5166930 (= e!3219504 e!3219503)))

(declare-fun res!2196405 () Bool)

(assert (=> b!5166930 (=> (not res!2196405) (not e!3219503))))

(assert (=> b!5166930 (= res!2196405 (not ((_ is Nil!60020) (++!13117 testedP!294 lt!2125236))))))

(declare-fun d!1666926 () Bool)

(declare-fun e!3219502 () Bool)

(assert (=> d!1666926 e!3219502))

(declare-fun res!2196408 () Bool)

(assert (=> d!1666926 (=> res!2196408 e!3219502)))

(declare-fun lt!2125527 () Bool)

(assert (=> d!1666926 (= res!2196408 (not lt!2125527))))

(assert (=> d!1666926 (= lt!2125527 e!3219504)))

(declare-fun res!2196406 () Bool)

(assert (=> d!1666926 (=> res!2196406 e!3219504)))

(assert (=> d!1666926 (= res!2196406 ((_ is Nil!60020) testedP!294))))

(assert (=> d!1666926 (= (isPrefix!5726 testedP!294 (++!13117 testedP!294 lt!2125236)) lt!2125527)))

(declare-fun b!5166931 () Bool)

(declare-fun res!2196407 () Bool)

(assert (=> b!5166931 (=> (not res!2196407) (not e!3219503))))

(assert (=> b!5166931 (= res!2196407 (= (head!11017 testedP!294) (head!11017 (++!13117 testedP!294 lt!2125236))))))

(declare-fun b!5166932 () Bool)

(assert (=> b!5166932 (= e!3219503 (isPrefix!5726 (tail!10126 testedP!294) (tail!10126 (++!13117 testedP!294 lt!2125236))))))

(declare-fun b!5166933 () Bool)

(assert (=> b!5166933 (= e!3219502 (>= (size!39629 (++!13117 testedP!294 lt!2125236)) (size!39629 testedP!294)))))

(assert (= (and d!1666926 (not res!2196406)) b!5166930))

(assert (= (and b!5166930 res!2196405) b!5166931))

(assert (= (and b!5166931 res!2196407) b!5166932))

(assert (= (and d!1666926 (not res!2196408)) b!5166933))

(assert (=> b!5166931 m!6217314))

(assert (=> b!5166931 m!6217366))

(declare-fun m!6217606 () Bool)

(assert (=> b!5166931 m!6217606))

(assert (=> b!5166932 m!6217316))

(assert (=> b!5166932 m!6217366))

(declare-fun m!6217608 () Bool)

(assert (=> b!5166932 m!6217608))

(assert (=> b!5166932 m!6217316))

(assert (=> b!5166932 m!6217608))

(declare-fun m!6217610 () Bool)

(assert (=> b!5166932 m!6217610))

(assert (=> b!5166933 m!6217366))

(declare-fun m!6217612 () Bool)

(assert (=> b!5166933 m!6217612))

(assert (=> b!5166933 m!6217184))

(assert (=> d!1666804 d!1666926))

(declare-fun lt!2125528 () List!60144)

(declare-fun e!3219506 () Bool)

(declare-fun b!5166937 () Bool)

(assert (=> b!5166937 (= e!3219506 (or (not (= lt!2125236 Nil!60020)) (= lt!2125528 testedP!294)))))

(declare-fun b!5166934 () Bool)

(declare-fun e!3219505 () List!60144)

(assert (=> b!5166934 (= e!3219505 lt!2125236)))

(declare-fun b!5166936 () Bool)

(declare-fun res!2196409 () Bool)

(assert (=> b!5166936 (=> (not res!2196409) (not e!3219506))))

(assert (=> b!5166936 (= res!2196409 (= (size!39629 lt!2125528) (+ (size!39629 testedP!294) (size!39629 lt!2125236))))))

(declare-fun d!1666928 () Bool)

(assert (=> d!1666928 e!3219506))

(declare-fun res!2196410 () Bool)

(assert (=> d!1666928 (=> (not res!2196410) (not e!3219506))))

(assert (=> d!1666928 (= res!2196410 (= (content!10633 lt!2125528) ((_ map or) (content!10633 testedP!294) (content!10633 lt!2125236))))))

(assert (=> d!1666928 (= lt!2125528 e!3219505)))

(declare-fun c!889075 () Bool)

(assert (=> d!1666928 (= c!889075 ((_ is Nil!60020) testedP!294))))

(assert (=> d!1666928 (= (++!13117 testedP!294 lt!2125236) lt!2125528)))

(declare-fun b!5166935 () Bool)

(assert (=> b!5166935 (= e!3219505 (Cons!60020 (h!66468 testedP!294) (++!13117 (t!373297 testedP!294) lt!2125236)))))

(assert (= (and d!1666928 c!889075) b!5166934))

(assert (= (and d!1666928 (not c!889075)) b!5166935))

(assert (= (and d!1666928 res!2196410) b!5166936))

(assert (= (and b!5166936 res!2196409) b!5166937))

(declare-fun m!6217614 () Bool)

(assert (=> b!5166936 m!6217614))

(assert (=> b!5166936 m!6217184))

(declare-fun m!6217616 () Bool)

(assert (=> b!5166936 m!6217616))

(declare-fun m!6217618 () Bool)

(assert (=> d!1666928 m!6217618))

(assert (=> d!1666928 m!6217256))

(declare-fun m!6217620 () Bool)

(assert (=> d!1666928 m!6217620))

(declare-fun m!6217622 () Bool)

(assert (=> b!5166935 m!6217622))

(assert (=> d!1666804 d!1666928))

(declare-fun d!1666930 () Bool)

(assert (=> d!1666930 (isPrefix!5726 testedP!294 (++!13117 testedP!294 lt!2125236))))

(declare-fun lt!2125531 () Unit!151494)

(declare-fun choose!38228 (List!60144 List!60144) Unit!151494)

(assert (=> d!1666930 (= lt!2125531 (choose!38228 testedP!294 lt!2125236))))

(assert (=> d!1666930 (= (lemmaConcatTwoListThenFirstIsPrefix!3577 testedP!294 lt!2125236) lt!2125531)))

(declare-fun bs!1202923 () Bool)

(assert (= bs!1202923 d!1666930))

(assert (=> bs!1202923 m!6217366))

(assert (=> bs!1202923 m!6217366))

(assert (=> bs!1202923 m!6217368))

(declare-fun m!6217628 () Bool)

(assert (=> bs!1202923 m!6217628))

(assert (=> d!1666804 d!1666930))

(assert (=> d!1666804 d!1666798))

(declare-fun d!1666934 () Bool)

(assert (=> d!1666934 (= lt!2125236 lt!2125433)))

(declare-fun lt!2125538 () Unit!151494)

(declare-fun choose!38229 (List!60144 List!60144 List!60144 List!60144 List!60144) Unit!151494)

(assert (=> d!1666934 (= lt!2125538 (choose!38229 testedP!294 lt!2125236 testedP!294 lt!2125433 input!5817))))

(assert (=> d!1666934 (isPrefix!5726 testedP!294 input!5817)))

(assert (=> d!1666934 (= (lemmaSamePrefixThenSameSuffix!2683 testedP!294 lt!2125236 testedP!294 lt!2125433 input!5817) lt!2125538)))

(declare-fun bs!1202925 () Bool)

(assert (= bs!1202925 d!1666934))

(declare-fun m!6217644 () Bool)

(assert (=> bs!1202925 m!6217644))

(assert (=> bs!1202925 m!6217172))

(assert (=> d!1666804 d!1666934))

(declare-fun d!1666940 () Bool)

(declare-fun lt!2125540 () Int)

(assert (=> d!1666940 (>= lt!2125540 0)))

(declare-fun e!3219513 () Int)

(assert (=> d!1666940 (= lt!2125540 e!3219513)))

(declare-fun c!889078 () Bool)

(assert (=> d!1666940 (= c!889078 ((_ is Nil!60020) (t!373297 input!5817)))))

(assert (=> d!1666940 (= (size!39629 (t!373297 input!5817)) lt!2125540)))

(declare-fun b!5166948 () Bool)

(assert (=> b!5166948 (= e!3219513 0)))

(declare-fun b!5166949 () Bool)

(assert (=> b!5166949 (= e!3219513 (+ 1 (size!39629 (t!373297 (t!373297 input!5817)))))))

(assert (= (and d!1666940 c!889078) b!5166948))

(assert (= (and d!1666940 (not c!889078)) b!5166949))

(declare-fun m!6217646 () Bool)

(assert (=> b!5166949 m!6217646))

(assert (=> b!5166691 d!1666940))

(assert (=> bm!362494 d!1666746))

(assert (=> bm!362493 d!1666748))

(assert (=> b!5166798 d!1666796))

(declare-fun d!1666942 () Bool)

(assert (=> d!1666942 (= (tail!10126 lt!2125236) (t!373297 lt!2125236))))

(assert (=> b!5166798 d!1666942))

(declare-fun e!3219515 () Bool)

(declare-fun b!5166953 () Bool)

(declare-fun lt!2125541 () List!60144)

(assert (=> b!5166953 (= e!3219515 (or (not (= (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020) Nil!60020)) (= lt!2125541 testedP!294)))))

(declare-fun b!5166950 () Bool)

(declare-fun e!3219514 () List!60144)

(assert (=> b!5166950 (= e!3219514 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020))))

(declare-fun b!5166952 () Bool)

(declare-fun res!2196417 () Bool)

(assert (=> b!5166952 (=> (not res!2196417) (not e!3219515))))

(assert (=> b!5166952 (= res!2196417 (= (size!39629 lt!2125541) (+ (size!39629 testedP!294) (size!39629 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020)))))))

(declare-fun d!1666944 () Bool)

(assert (=> d!1666944 e!3219515))

(declare-fun res!2196418 () Bool)

(assert (=> d!1666944 (=> (not res!2196418) (not e!3219515))))

(assert (=> d!1666944 (= res!2196418 (= (content!10633 lt!2125541) ((_ map or) (content!10633 testedP!294) (content!10633 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020)))))))

(assert (=> d!1666944 (= lt!2125541 e!3219514)))

(declare-fun c!889079 () Bool)

(assert (=> d!1666944 (= c!889079 ((_ is Nil!60020) testedP!294))))

(assert (=> d!1666944 (= (++!13117 testedP!294 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020)) lt!2125541)))

(declare-fun b!5166951 () Bool)

(assert (=> b!5166951 (= e!3219514 (Cons!60020 (h!66468 testedP!294) (++!13117 (t!373297 testedP!294) (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020))))))

(assert (= (and d!1666944 c!889079) b!5166950))

(assert (= (and d!1666944 (not c!889079)) b!5166951))

(assert (= (and d!1666944 res!2196418) b!5166952))

(assert (= (and b!5166952 res!2196417) b!5166953))

(declare-fun m!6217662 () Bool)

(assert (=> b!5166952 m!6217662))

(assert (=> b!5166952 m!6217184))

(declare-fun m!6217664 () Bool)

(assert (=> b!5166952 m!6217664))

(declare-fun m!6217666 () Bool)

(assert (=> d!1666944 m!6217666))

(assert (=> d!1666944 m!6217256))

(declare-fun m!6217670 () Bool)

(assert (=> d!1666944 m!6217670))

(declare-fun m!6217674 () Bool)

(assert (=> b!5166951 m!6217674))

(assert (=> b!5166798 d!1666944))

(assert (=> b!5166798 d!1666792))

(declare-fun d!1666950 () Bool)

(assert (=> d!1666950 (= (++!13117 (++!13117 testedP!294 (Cons!60020 lt!2125429 Nil!60020)) lt!2125423) input!5817)))

(declare-fun lt!2125573 () Unit!151494)

(declare-fun choose!38230 (List!60144 C!29456 List!60144 List!60144) Unit!151494)

(assert (=> d!1666950 (= lt!2125573 (choose!38230 testedP!294 lt!2125429 lt!2125423 input!5817))))

(assert (=> d!1666950 (= (++!13117 testedP!294 (Cons!60020 lt!2125429 lt!2125423)) input!5817)))

(assert (=> d!1666950 (= (lemmaMoveElementToOtherListKeepsConcatEq!1564 testedP!294 lt!2125429 lt!2125423 input!5817) lt!2125573)))

(declare-fun bs!1202930 () Bool)

(assert (= bs!1202930 d!1666950))

(assert (=> bs!1202930 m!6217386))

(assert (=> bs!1202930 m!6217386))

(assert (=> bs!1202930 m!6217388))

(declare-fun m!6217688 () Bool)

(assert (=> bs!1202930 m!6217688))

(declare-fun m!6217690 () Bool)

(assert (=> bs!1202930 m!6217690))

(assert (=> b!5166798 d!1666950))

(assert (=> b!5166798 d!1666798))

(assert (=> b!5166798 d!1666762))

(declare-fun d!1666962 () Bool)

(assert (=> d!1666962 (= (head!11017 (getSuffix!3376 input!5817 testedP!294)) (h!66468 (getSuffix!3376 input!5817 testedP!294)))))

(assert (=> b!5166798 d!1666962))

(assert (=> b!5166798 d!1666802))

(assert (=> b!5166798 d!1666766))

(declare-fun e!3219533 () Bool)

(declare-fun lt!2125574 () List!60144)

(declare-fun b!5166983 () Bool)

(assert (=> b!5166983 (= e!3219533 (or (not (= lt!2125423 Nil!60020)) (= lt!2125574 (++!13117 testedP!294 (Cons!60020 lt!2125429 Nil!60020)))))))

(declare-fun b!5166980 () Bool)

(declare-fun e!3219532 () List!60144)

(assert (=> b!5166980 (= e!3219532 lt!2125423)))

(declare-fun b!5166982 () Bool)

(declare-fun res!2196429 () Bool)

(assert (=> b!5166982 (=> (not res!2196429) (not e!3219533))))

(assert (=> b!5166982 (= res!2196429 (= (size!39629 lt!2125574) (+ (size!39629 (++!13117 testedP!294 (Cons!60020 lt!2125429 Nil!60020))) (size!39629 lt!2125423))))))

(declare-fun d!1666964 () Bool)

(assert (=> d!1666964 e!3219533))

(declare-fun res!2196430 () Bool)

(assert (=> d!1666964 (=> (not res!2196430) (not e!3219533))))

(assert (=> d!1666964 (= res!2196430 (= (content!10633 lt!2125574) ((_ map or) (content!10633 (++!13117 testedP!294 (Cons!60020 lt!2125429 Nil!60020))) (content!10633 lt!2125423))))))

(assert (=> d!1666964 (= lt!2125574 e!3219532)))

(declare-fun c!889088 () Bool)

(assert (=> d!1666964 (= c!889088 ((_ is Nil!60020) (++!13117 testedP!294 (Cons!60020 lt!2125429 Nil!60020))))))

(assert (=> d!1666964 (= (++!13117 (++!13117 testedP!294 (Cons!60020 lt!2125429 Nil!60020)) lt!2125423) lt!2125574)))

(declare-fun b!5166981 () Bool)

(assert (=> b!5166981 (= e!3219532 (Cons!60020 (h!66468 (++!13117 testedP!294 (Cons!60020 lt!2125429 Nil!60020))) (++!13117 (t!373297 (++!13117 testedP!294 (Cons!60020 lt!2125429 Nil!60020))) lt!2125423)))))

(assert (= (and d!1666964 c!889088) b!5166980))

(assert (= (and d!1666964 (not c!889088)) b!5166981))

(assert (= (and d!1666964 res!2196430) b!5166982))

(assert (= (and b!5166982 res!2196429) b!5166983))

(declare-fun m!6217692 () Bool)

(assert (=> b!5166982 m!6217692))

(assert (=> b!5166982 m!6217386))

(declare-fun m!6217694 () Bool)

(assert (=> b!5166982 m!6217694))

(declare-fun m!6217696 () Bool)

(assert (=> b!5166982 m!6217696))

(declare-fun m!6217698 () Bool)

(assert (=> d!1666964 m!6217698))

(assert (=> d!1666964 m!6217386))

(declare-fun m!6217700 () Bool)

(assert (=> d!1666964 m!6217700))

(declare-fun m!6217702 () Bool)

(assert (=> d!1666964 m!6217702))

(declare-fun m!6217704 () Bool)

(assert (=> b!5166981 m!6217704))

(assert (=> b!5166798 d!1666964))

(declare-fun b!5166984 () Bool)

(declare-fun e!3219536 () Bool)

(declare-fun e!3219535 () Bool)

(assert (=> b!5166984 (= e!3219536 e!3219535)))

(declare-fun res!2196431 () Bool)

(assert (=> b!5166984 (=> (not res!2196431) (not e!3219535))))

(assert (=> b!5166984 (= res!2196431 (not ((_ is Nil!60020) input!5817)))))

(declare-fun d!1666966 () Bool)

(declare-fun e!3219534 () Bool)

(assert (=> d!1666966 e!3219534))

(declare-fun res!2196434 () Bool)

(assert (=> d!1666966 (=> res!2196434 e!3219534)))

(declare-fun lt!2125575 () Bool)

(assert (=> d!1666966 (= res!2196434 (not lt!2125575))))

(assert (=> d!1666966 (= lt!2125575 e!3219536)))

(declare-fun res!2196432 () Bool)

(assert (=> d!1666966 (=> res!2196432 e!3219536)))

(assert (=> d!1666966 (= res!2196432 ((_ is Nil!60020) (++!13117 testedP!294 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020))))))

(assert (=> d!1666966 (= (isPrefix!5726 (++!13117 testedP!294 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020)) input!5817) lt!2125575)))

(declare-fun b!5166985 () Bool)

(declare-fun res!2196433 () Bool)

(assert (=> b!5166985 (=> (not res!2196433) (not e!3219535))))

(assert (=> b!5166985 (= res!2196433 (= (head!11017 (++!13117 testedP!294 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020))) (head!11017 input!5817)))))

(declare-fun b!5166986 () Bool)

(assert (=> b!5166986 (= e!3219535 (isPrefix!5726 (tail!10126 (++!13117 testedP!294 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020))) (tail!10126 input!5817)))))

(declare-fun b!5166987 () Bool)

(assert (=> b!5166987 (= e!3219534 (>= (size!39629 input!5817) (size!39629 (++!13117 testedP!294 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020)))))))

(assert (= (and d!1666966 (not res!2196432)) b!5166984))

(assert (= (and b!5166984 res!2196431) b!5166985))

(assert (= (and b!5166985 res!2196433) b!5166986))

(assert (= (and d!1666966 (not res!2196434)) b!5166987))

(assert (=> b!5166985 m!6217264))

(declare-fun m!6217724 () Bool)

(assert (=> b!5166985 m!6217724))

(assert (=> b!5166985 m!6217214))

(assert (=> b!5166986 m!6217264))

(declare-fun m!6217728 () Bool)

(assert (=> b!5166986 m!6217728))

(assert (=> b!5166986 m!6217216))

(assert (=> b!5166986 m!6217728))

(assert (=> b!5166986 m!6217216))

(declare-fun m!6217734 () Bool)

(assert (=> b!5166986 m!6217734))

(assert (=> b!5166987 m!6217180))

(assert (=> b!5166987 m!6217264))

(declare-fun m!6217738 () Bool)

(assert (=> b!5166987 m!6217738))

(assert (=> b!5166798 d!1666966))

(declare-fun e!3219538 () Bool)

(declare-fun b!5166991 () Bool)

(declare-fun lt!2125576 () List!60144)

(assert (=> b!5166991 (= e!3219538 (or (not (= (Cons!60020 lt!2125429 Nil!60020) Nil!60020)) (= lt!2125576 testedP!294)))))

(declare-fun b!5166988 () Bool)

(declare-fun e!3219537 () List!60144)

(assert (=> b!5166988 (= e!3219537 (Cons!60020 lt!2125429 Nil!60020))))

(declare-fun b!5166990 () Bool)

(declare-fun res!2196435 () Bool)

(assert (=> b!5166990 (=> (not res!2196435) (not e!3219538))))

(assert (=> b!5166990 (= res!2196435 (= (size!39629 lt!2125576) (+ (size!39629 testedP!294) (size!39629 (Cons!60020 lt!2125429 Nil!60020)))))))

(declare-fun d!1666968 () Bool)

(assert (=> d!1666968 e!3219538))

(declare-fun res!2196436 () Bool)

(assert (=> d!1666968 (=> (not res!2196436) (not e!3219538))))

(assert (=> d!1666968 (= res!2196436 (= (content!10633 lt!2125576) ((_ map or) (content!10633 testedP!294) (content!10633 (Cons!60020 lt!2125429 Nil!60020)))))))

(assert (=> d!1666968 (= lt!2125576 e!3219537)))

(declare-fun c!889089 () Bool)

(assert (=> d!1666968 (= c!889089 ((_ is Nil!60020) testedP!294))))

(assert (=> d!1666968 (= (++!13117 testedP!294 (Cons!60020 lt!2125429 Nil!60020)) lt!2125576)))

(declare-fun b!5166989 () Bool)

(assert (=> b!5166989 (= e!3219537 (Cons!60020 (h!66468 testedP!294) (++!13117 (t!373297 testedP!294) (Cons!60020 lt!2125429 Nil!60020))))))

(assert (= (and d!1666968 c!889089) b!5166988))

(assert (= (and d!1666968 (not c!889089)) b!5166989))

(assert (= (and d!1666968 res!2196436) b!5166990))

(assert (= (and b!5166990 res!2196435) b!5166991))

(declare-fun m!6217764 () Bool)

(assert (=> b!5166990 m!6217764))

(assert (=> b!5166990 m!6217184))

(declare-fun m!6217768 () Bool)

(assert (=> b!5166990 m!6217768))

(declare-fun m!6217770 () Bool)

(assert (=> d!1666968 m!6217770))

(assert (=> d!1666968 m!6217256))

(declare-fun m!6217772 () Bool)

(assert (=> d!1666968 m!6217772))

(declare-fun m!6217774 () Bool)

(assert (=> b!5166989 m!6217774))

(assert (=> b!5166798 d!1666968))

(assert (=> b!5166798 d!1666758))

(assert (=> b!5166627 d!1666864))

(declare-fun d!1666972 () Bool)

(declare-fun res!2196437 () Bool)

(declare-fun e!3219540 () Bool)

(assert (=> d!1666972 (=> res!2196437 e!3219540)))

(assert (=> d!1666972 (= res!2196437 ((_ is Nil!60019) (exprs!4477 setElem!31784)))))

(assert (=> d!1666972 (= (forall!14111 (exprs!4477 setElem!31784) lambda!257852) e!3219540)))

(declare-fun b!5166994 () Bool)

(declare-fun e!3219541 () Bool)

(assert (=> b!5166994 (= e!3219540 e!3219541)))

(declare-fun res!2196438 () Bool)

(assert (=> b!5166994 (=> (not res!2196438) (not e!3219541))))

(assert (=> b!5166994 (= res!2196438 (dynLambda!23861 lambda!257852 (h!66467 (exprs!4477 setElem!31784))))))

(declare-fun b!5166995 () Bool)

(assert (=> b!5166995 (= e!3219541 (forall!14111 (t!373296 (exprs!4477 setElem!31784)) lambda!257852))))

(assert (= (and d!1666972 (not res!2196437)) b!5166994))

(assert (= (and b!5166994 res!2196438) b!5166995))

(declare-fun b_lambda!200791 () Bool)

(assert (=> (not b_lambda!200791) (not b!5166994)))

(declare-fun m!6217778 () Bool)

(assert (=> b!5166994 m!6217778))

(declare-fun m!6217780 () Bool)

(assert (=> b!5166995 m!6217780))

(assert (=> d!1666812 d!1666972))

(declare-fun d!1666976 () Bool)

(declare-fun c!889091 () Bool)

(assert (=> d!1666976 (= c!889091 ((_ is Cons!60020) (t!373297 testedP!294)))))

(declare-fun e!3219542 () (InoxSet Context!7954))

(assert (=> d!1666976 (= (derivationZipper!216 (derivationStepZipper!949 baseZ!62 (h!66468 testedP!294)) (t!373297 testedP!294)) e!3219542)))

(declare-fun b!5166996 () Bool)

(assert (=> b!5166996 (= e!3219542 (derivationZipper!216 (derivationStepZipper!949 (derivationStepZipper!949 baseZ!62 (h!66468 testedP!294)) (h!66468 (t!373297 testedP!294))) (t!373297 (t!373297 testedP!294))))))

(declare-fun b!5166997 () Bool)

(assert (=> b!5166997 (= e!3219542 (derivationStepZipper!949 baseZ!62 (h!66468 testedP!294)))))

(assert (= (and d!1666976 c!889091) b!5166996))

(assert (= (and d!1666976 (not c!889091)) b!5166997))

(assert (=> b!5166996 m!6217208))

(declare-fun m!6217782 () Bool)

(assert (=> b!5166996 m!6217782))

(assert (=> b!5166996 m!6217782))

(declare-fun m!6217784 () Bool)

(assert (=> b!5166996 m!6217784))

(assert (=> b!5166608 d!1666976))

(declare-fun bs!1202931 () Bool)

(declare-fun d!1666978 () Bool)

(assert (= bs!1202931 (and d!1666978 d!1666838)))

(declare-fun lambda!257893 () Int)

(assert (=> bs!1202931 (= (= (h!66468 testedP!294) call!362503) (= lambda!257893 lambda!257865))))

(assert (=> d!1666978 true))

(assert (=> d!1666978 (= (derivationStepZipper!949 baseZ!62 (h!66468 testedP!294)) (flatMap!436 baseZ!62 lambda!257893))))

(declare-fun bs!1202933 () Bool)

(assert (= bs!1202933 d!1666978))

(declare-fun m!6217786 () Bool)

(assert (=> bs!1202933 m!6217786))

(assert (=> b!5166608 d!1666978))

(declare-fun bs!1202934 () Bool)

(declare-fun d!1666980 () Bool)

(assert (= bs!1202934 (and d!1666980 d!1666812)))

(declare-fun lambda!257894 () Int)

(assert (=> bs!1202934 (= lambda!257894 lambda!257852)))

(declare-fun bs!1202935 () Bool)

(assert (= bs!1202935 (and d!1666980 d!1666814)))

(assert (=> bs!1202935 (= lambda!257894 lambda!257853)))

(assert (=> d!1666980 (= (inv!79729 setElem!31792) (forall!14111 (exprs!4477 setElem!31792) lambda!257894))))

(declare-fun bs!1202936 () Bool)

(assert (= bs!1202936 d!1666980))

(declare-fun m!6217790 () Bool)

(assert (=> bs!1202936 m!6217790))

(assert (=> setNonEmpty!31792 d!1666980))

(assert (=> bm!362496 d!1666758))

(declare-fun d!1666982 () Bool)

(declare-fun lt!2125580 () Bool)

(assert (=> d!1666982 (= lt!2125580 (exists!1898 (toList!8443 z!4581) lambda!257849))))

(declare-fun choose!38232 ((InoxSet Context!7954) Int) Bool)

(assert (=> d!1666982 (= lt!2125580 (choose!38232 z!4581 lambda!257849))))

(assert (=> d!1666982 (= (exists!1896 z!4581 lambda!257849) lt!2125580)))

(declare-fun bs!1202937 () Bool)

(assert (= bs!1202937 d!1666982))

(assert (=> bs!1202937 m!6217600))

(assert (=> bs!1202937 m!6217600))

(declare-fun m!6217792 () Bool)

(assert (=> bs!1202937 m!6217792))

(declare-fun m!6217794 () Bool)

(assert (=> bs!1202937 m!6217794))

(assert (=> d!1666768 d!1666982))

(declare-fun d!1666984 () Bool)

(declare-fun c!889094 () Bool)

(assert (=> d!1666984 (= c!889094 ((_ is Nil!60020) lt!2125257))))

(declare-fun e!3219557 () (InoxSet C!29456))

(assert (=> d!1666984 (= (content!10633 lt!2125257) e!3219557)))

(declare-fun b!5167028 () Bool)

(assert (=> b!5167028 (= e!3219557 ((as const (Array C!29456 Bool)) false))))

(declare-fun b!5167029 () Bool)

(assert (=> b!5167029 (= e!3219557 ((_ map or) (store ((as const (Array C!29456 Bool)) false) (h!66468 lt!2125257) true) (content!10633 (t!373297 lt!2125257))))))

(assert (= (and d!1666984 c!889094) b!5167028))

(assert (= (and d!1666984 (not c!889094)) b!5167029))

(declare-fun m!6217802 () Bool)

(assert (=> b!5167029 m!6217802))

(declare-fun m!6217804 () Bool)

(assert (=> b!5167029 m!6217804))

(assert (=> d!1666762 d!1666984))

(declare-fun d!1666990 () Bool)

(declare-fun c!889095 () Bool)

(assert (=> d!1666990 (= c!889095 ((_ is Nil!60020) testedP!294))))

(declare-fun e!3219558 () (InoxSet C!29456))

(assert (=> d!1666990 (= (content!10633 testedP!294) e!3219558)))

(declare-fun b!5167030 () Bool)

(assert (=> b!5167030 (= e!3219558 ((as const (Array C!29456 Bool)) false))))

(declare-fun b!5167031 () Bool)

(assert (=> b!5167031 (= e!3219558 ((_ map or) (store ((as const (Array C!29456 Bool)) false) (h!66468 testedP!294) true) (content!10633 (t!373297 testedP!294))))))

(assert (= (and d!1666990 c!889095) b!5167030))

(assert (= (and d!1666990 (not c!889095)) b!5167031))

(declare-fun m!6217806 () Bool)

(assert (=> b!5167031 m!6217806))

(assert (=> b!5167031 m!6217434))

(assert (=> d!1666762 d!1666990))

(declare-fun d!1666992 () Bool)

(declare-fun c!889096 () Bool)

(assert (=> d!1666992 (= c!889096 ((_ is Nil!60020) (Cons!60020 (head!11017 lt!2125236) Nil!60020)))))

(declare-fun e!3219559 () (InoxSet C!29456))

(assert (=> d!1666992 (= (content!10633 (Cons!60020 (head!11017 lt!2125236) Nil!60020)) e!3219559)))

(declare-fun b!5167032 () Bool)

(assert (=> b!5167032 (= e!3219559 ((as const (Array C!29456 Bool)) false))))

(declare-fun b!5167033 () Bool)

(assert (=> b!5167033 (= e!3219559 ((_ map or) (store ((as const (Array C!29456 Bool)) false) (h!66468 (Cons!60020 (head!11017 lt!2125236) Nil!60020)) true) (content!10633 (t!373297 (Cons!60020 (head!11017 lt!2125236) Nil!60020)))))))

(assert (= (and d!1666992 c!889096) b!5167032))

(assert (= (and d!1666992 (not c!889096)) b!5167033))

(declare-fun m!6217808 () Bool)

(assert (=> b!5167033 m!6217808))

(declare-fun m!6217810 () Bool)

(assert (=> b!5167033 m!6217810))

(assert (=> d!1666762 d!1666992))

(declare-fun d!1666994 () Bool)

(declare-fun lt!2125581 () Int)

(assert (=> d!1666994 (>= lt!2125581 0)))

(declare-fun e!3219560 () Int)

(assert (=> d!1666994 (= lt!2125581 e!3219560)))

(declare-fun c!889097 () Bool)

(assert (=> d!1666994 (= c!889097 ((_ is Nil!60020) (_1!35173 lt!2125428)))))

(assert (=> d!1666994 (= (size!39629 (_1!35173 lt!2125428)) lt!2125581)))

(declare-fun b!5167034 () Bool)

(assert (=> b!5167034 (= e!3219560 0)))

(declare-fun b!5167035 () Bool)

(assert (=> b!5167035 (= e!3219560 (+ 1 (size!39629 (t!373297 (_1!35173 lt!2125428)))))))

(assert (= (and d!1666994 c!889097) b!5167034))

(assert (= (and d!1666994 (not c!889097)) b!5167035))

(declare-fun m!6217812 () Bool)

(assert (=> b!5167035 m!6217812))

(assert (=> b!5166802 d!1666994))

(assert (=> b!5166802 d!1666802))

(declare-fun lt!2125582 () List!60144)

(declare-fun b!5167039 () Bool)

(declare-fun e!3219562 () Bool)

(assert (=> b!5167039 (= e!3219562 (or (not (= lt!2125287 Nil!60020)) (= lt!2125582 testedP!294)))))

(declare-fun b!5167036 () Bool)

(declare-fun e!3219561 () List!60144)

(assert (=> b!5167036 (= e!3219561 lt!2125287)))

(declare-fun b!5167038 () Bool)

(declare-fun res!2196439 () Bool)

(assert (=> b!5167038 (=> (not res!2196439) (not e!3219562))))

(assert (=> b!5167038 (= res!2196439 (= (size!39629 lt!2125582) (+ (size!39629 testedP!294) (size!39629 lt!2125287))))))

(declare-fun d!1666996 () Bool)

(assert (=> d!1666996 e!3219562))

(declare-fun res!2196440 () Bool)

(assert (=> d!1666996 (=> (not res!2196440) (not e!3219562))))

(assert (=> d!1666996 (= res!2196440 (= (content!10633 lt!2125582) ((_ map or) (content!10633 testedP!294) (content!10633 lt!2125287))))))

(assert (=> d!1666996 (= lt!2125582 e!3219561)))

(declare-fun c!889098 () Bool)

(assert (=> d!1666996 (= c!889098 ((_ is Nil!60020) testedP!294))))

(assert (=> d!1666996 (= (++!13117 testedP!294 lt!2125287) lt!2125582)))

(declare-fun b!5167037 () Bool)

(assert (=> b!5167037 (= e!3219561 (Cons!60020 (h!66468 testedP!294) (++!13117 (t!373297 testedP!294) lt!2125287)))))

(assert (= (and d!1666996 c!889098) b!5167036))

(assert (= (and d!1666996 (not c!889098)) b!5167037))

(assert (= (and d!1666996 res!2196440) b!5167038))

(assert (= (and b!5167038 res!2196439) b!5167039))

(declare-fun m!6217814 () Bool)

(assert (=> b!5167038 m!6217814))

(assert (=> b!5167038 m!6217184))

(declare-fun m!6217816 () Bool)

(assert (=> b!5167038 m!6217816))

(declare-fun m!6217818 () Bool)

(assert (=> d!1666996 m!6217818))

(assert (=> d!1666996 m!6217256))

(declare-fun m!6217820 () Bool)

(assert (=> d!1666996 m!6217820))

(declare-fun m!6217822 () Bool)

(assert (=> b!5167037 m!6217822))

(assert (=> d!1666798 d!1666996))

(assert (=> d!1666798 d!1666796))

(assert (=> d!1666798 d!1666802))

(assert (=> bm!362495 d!1666768))

(declare-fun d!1666998 () Bool)

(assert (=> d!1666998 (= (head!11017 lt!2125230) (h!66468 lt!2125230))))

(assert (=> b!5166635 d!1666998))

(assert (=> b!5166635 d!1666864))

(assert (=> d!1666746 d!1666748))

(declare-fun d!1667000 () Bool)

(assert (=> d!1667000 (isPrefix!5726 input!5817 input!5817)))

(assert (=> d!1667000 true))

(declare-fun _$45!2323 () Unit!151494)

(assert (=> d!1667000 (= (choose!38221 input!5817 input!5817) _$45!2323)))

(declare-fun bs!1202940 () Bool)

(assert (= bs!1202940 d!1667000))

(assert (=> bs!1202940 m!6217190))

(assert (=> d!1666746 d!1667000))

(declare-fun b!5167040 () Bool)

(declare-fun e!3219565 () Bool)

(declare-fun e!3219564 () Bool)

(assert (=> b!5167040 (= e!3219565 e!3219564)))

(declare-fun res!2196441 () Bool)

(assert (=> b!5167040 (=> (not res!2196441) (not e!3219564))))

(assert (=> b!5167040 (= res!2196441 (not ((_ is Nil!60020) (tail!10126 input!5817))))))

(declare-fun d!1667002 () Bool)

(declare-fun e!3219563 () Bool)

(assert (=> d!1667002 e!3219563))

(declare-fun res!2196444 () Bool)

(assert (=> d!1667002 (=> res!2196444 e!3219563)))

(declare-fun lt!2125583 () Bool)

(assert (=> d!1667002 (= res!2196444 (not lt!2125583))))

(assert (=> d!1667002 (= lt!2125583 e!3219565)))

(declare-fun res!2196442 () Bool)

(assert (=> d!1667002 (=> res!2196442 e!3219565)))

(assert (=> d!1667002 (= res!2196442 ((_ is Nil!60020) (tail!10126 lt!2125230)))))

(assert (=> d!1667002 (= (isPrefix!5726 (tail!10126 lt!2125230) (tail!10126 input!5817)) lt!2125583)))

(declare-fun b!5167041 () Bool)

(declare-fun res!2196443 () Bool)

(assert (=> b!5167041 (=> (not res!2196443) (not e!3219564))))

(assert (=> b!5167041 (= res!2196443 (= (head!11017 (tail!10126 lt!2125230)) (head!11017 (tail!10126 input!5817))))))

(declare-fun b!5167042 () Bool)

(assert (=> b!5167042 (= e!3219564 (isPrefix!5726 (tail!10126 (tail!10126 lt!2125230)) (tail!10126 (tail!10126 input!5817))))))

(declare-fun b!5167043 () Bool)

(assert (=> b!5167043 (= e!3219563 (>= (size!39629 (tail!10126 input!5817)) (size!39629 (tail!10126 lt!2125230))))))

(assert (= (and d!1667002 (not res!2196442)) b!5167040))

(assert (= (and b!5167040 res!2196441) b!5167041))

(assert (= (and b!5167041 res!2196443) b!5167042))

(assert (= (and d!1667002 (not res!2196444)) b!5167043))

(assert (=> b!5167041 m!6217236))

(declare-fun m!6217824 () Bool)

(assert (=> b!5167041 m!6217824))

(assert (=> b!5167041 m!6217216))

(assert (=> b!5167041 m!6217440))

(assert (=> b!5167042 m!6217236))

(declare-fun m!6217826 () Bool)

(assert (=> b!5167042 m!6217826))

(assert (=> b!5167042 m!6217216))

(assert (=> b!5167042 m!6217444))

(assert (=> b!5167042 m!6217826))

(assert (=> b!5167042 m!6217444))

(declare-fun m!6217828 () Bool)

(assert (=> b!5167042 m!6217828))

(assert (=> b!5167043 m!6217216))

(assert (=> b!5167043 m!6217448))

(assert (=> b!5167043 m!6217236))

(declare-fun m!6217830 () Bool)

(assert (=> b!5167043 m!6217830))

(assert (=> b!5166636 d!1667002))

(declare-fun d!1667004 () Bool)

(assert (=> d!1667004 (= (tail!10126 lt!2125230) (t!373297 lt!2125230))))

(assert (=> b!5166636 d!1667004))

(assert (=> b!5166636 d!1666856))

(assert (=> bm!362498 d!1666942))

(declare-fun d!1667006 () Bool)

(assert (=> d!1667006 (= (isEmpty!32133 (_1!35173 lt!2125428)) ((_ is Nil!60020) (_1!35173 lt!2125428)))))

(assert (=> b!5166805 d!1667006))

(assert (=> d!1666766 d!1666798))

(assert (=> d!1666766 d!1666962))

(assert (=> d!1666766 d!1666794))

(assert (=> d!1666766 d!1666966))

(declare-fun d!1667008 () Bool)

(assert (=> d!1667008 (isPrefix!5726 (++!13117 testedP!294 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 testedP!294)) Nil!60020)) input!5817)))

(assert (=> d!1667008 true))

(declare-fun _$65!1790 () Unit!151494)

(assert (=> d!1667008 (= (choose!38223 testedP!294 input!5817) _$65!1790)))

(declare-fun bs!1202941 () Bool)

(assert (= bs!1202941 d!1667008))

(assert (=> bs!1202941 m!6217178))

(assert (=> bs!1202941 m!6217178))

(assert (=> bs!1202941 m!6217268))

(assert (=> bs!1202941 m!6217264))

(assert (=> bs!1202941 m!6217264))

(assert (=> bs!1202941 m!6217266))

(assert (=> d!1666766 d!1667008))

(assert (=> d!1666766 d!1666944))

(declare-fun b!5167044 () Bool)

(declare-fun e!3219568 () Bool)

(declare-fun e!3219567 () Bool)

(assert (=> b!5167044 (= e!3219568 e!3219567)))

(declare-fun res!2196445 () Bool)

(assert (=> b!5167044 (=> (not res!2196445) (not e!3219567))))

(assert (=> b!5167044 (= res!2196445 (not ((_ is Nil!60020) (tail!10126 input!5817))))))

(declare-fun d!1667010 () Bool)

(declare-fun e!3219566 () Bool)

(assert (=> d!1667010 e!3219566))

(declare-fun res!2196448 () Bool)

(assert (=> d!1667010 (=> res!2196448 e!3219566)))

(declare-fun lt!2125584 () Bool)

(assert (=> d!1667010 (= res!2196448 (not lt!2125584))))

(assert (=> d!1667010 (= lt!2125584 e!3219568)))

(declare-fun res!2196446 () Bool)

(assert (=> d!1667010 (=> res!2196446 e!3219568)))

(assert (=> d!1667010 (= res!2196446 ((_ is Nil!60020) (tail!10126 input!5817)))))

(assert (=> d!1667010 (= (isPrefix!5726 (tail!10126 input!5817) (tail!10126 input!5817)) lt!2125584)))

(declare-fun b!5167045 () Bool)

(declare-fun res!2196447 () Bool)

(assert (=> b!5167045 (=> (not res!2196447) (not e!3219567))))

(assert (=> b!5167045 (= res!2196447 (= (head!11017 (tail!10126 input!5817)) (head!11017 (tail!10126 input!5817))))))

(declare-fun b!5167046 () Bool)

(assert (=> b!5167046 (= e!3219567 (isPrefix!5726 (tail!10126 (tail!10126 input!5817)) (tail!10126 (tail!10126 input!5817))))))

(declare-fun b!5167047 () Bool)

(assert (=> b!5167047 (= e!3219566 (>= (size!39629 (tail!10126 input!5817)) (size!39629 (tail!10126 input!5817))))))

(assert (= (and d!1667010 (not res!2196446)) b!5167044))

(assert (= (and b!5167044 res!2196445) b!5167045))

(assert (= (and b!5167045 res!2196447) b!5167046))

(assert (= (and d!1667010 (not res!2196448)) b!5167047))

(assert (=> b!5167045 m!6217216))

(assert (=> b!5167045 m!6217440))

(assert (=> b!5167045 m!6217216))

(assert (=> b!5167045 m!6217440))

(assert (=> b!5167046 m!6217216))

(assert (=> b!5167046 m!6217444))

(assert (=> b!5167046 m!6217216))

(assert (=> b!5167046 m!6217444))

(assert (=> b!5167046 m!6217444))

(assert (=> b!5167046 m!6217444))

(declare-fun m!6217832 () Bool)

(assert (=> b!5167046 m!6217832))

(assert (=> b!5167047 m!6217216))

(assert (=> b!5167047 m!6217448))

(assert (=> b!5167047 m!6217216))

(assert (=> b!5167047 m!6217448))

(assert (=> b!5166628 d!1667010))

(assert (=> b!5166628 d!1666856))

(declare-fun bs!1202942 () Bool)

(declare-fun d!1667012 () Bool)

(assert (= bs!1202942 (and d!1667012 d!1666812)))

(declare-fun lambda!257895 () Int)

(assert (=> bs!1202942 (= lambda!257895 lambda!257852)))

(declare-fun bs!1202943 () Bool)

(assert (= bs!1202943 (and d!1667012 d!1666814)))

(assert (=> bs!1202943 (= lambda!257895 lambda!257853)))

(declare-fun bs!1202944 () Bool)

(assert (= bs!1202944 (and d!1667012 d!1666980)))

(assert (=> bs!1202944 (= lambda!257895 lambda!257894)))

(assert (=> d!1667012 (= (inv!79729 setElem!31791) (forall!14111 (exprs!4477 setElem!31791) lambda!257895))))

(declare-fun bs!1202945 () Bool)

(assert (= bs!1202945 d!1667012))

(declare-fun m!6217834 () Bool)

(assert (=> bs!1202945 m!6217834))

(assert (=> setNonEmpty!31791 d!1667012))

(declare-fun bm!362519 () Bool)

(declare-fun call!362530 () Unit!151494)

(assert (=> bm!362519 (= call!362530 (lemmaIsPrefixSameLengthThenSameList!1375 input!5817 lt!2125444 input!5817))))

(declare-fun bm!362520 () Bool)

(declare-fun call!362528 () (InoxSet Context!7954))

(declare-fun call!362531 () C!29456)

(assert (=> bm!362520 (= call!362528 (derivationStepZipper!949 call!362500 call!362531))))

(declare-fun b!5167048 () Bool)

(declare-fun e!3219574 () tuple2!63740)

(assert (=> b!5167048 (= e!3219574 (tuple2!63741 Nil!60020 input!5817))))

(declare-fun b!5167049 () Bool)

(declare-fun e!3219569 () Unit!151494)

(declare-fun Unit!151509 () Unit!151494)

(assert (=> b!5167049 (= e!3219569 Unit!151509)))

(declare-fun lt!2125592 () Unit!151494)

(declare-fun call!362527 () Unit!151494)

(assert (=> b!5167049 (= lt!2125592 call!362527)))

(declare-fun call!362526 () Bool)

(assert (=> b!5167049 call!362526))

(declare-fun lt!2125609 () Unit!151494)

(assert (=> b!5167049 (= lt!2125609 lt!2125592)))

(declare-fun lt!2125603 () Unit!151494)

(assert (=> b!5167049 (= lt!2125603 call!362530)))

(assert (=> b!5167049 (= input!5817 lt!2125444)))

(declare-fun lt!2125597 () Unit!151494)

(assert (=> b!5167049 (= lt!2125597 lt!2125603)))

(assert (=> b!5167049 false))

(declare-fun bm!362521 () Bool)

(assert (=> bm!362521 (= call!362526 (isPrefix!5726 input!5817 input!5817))))

(declare-fun b!5167050 () Bool)

(declare-fun c!889099 () Bool)

(declare-fun call!362529 () Bool)

(assert (=> b!5167050 (= c!889099 call!362529)))

(declare-fun lt!2125594 () Unit!151494)

(declare-fun lt!2125596 () Unit!151494)

(assert (=> b!5167050 (= lt!2125594 lt!2125596)))

(declare-fun lt!2125585 () List!60144)

(declare-fun lt!2125591 () C!29456)

(assert (=> b!5167050 (= (++!13117 (++!13117 lt!2125444 (Cons!60020 lt!2125591 Nil!60020)) lt!2125585) input!5817)))

(assert (=> b!5167050 (= lt!2125596 (lemmaMoveElementToOtherListKeepsConcatEq!1564 lt!2125444 lt!2125591 lt!2125585 input!5817))))

(assert (=> b!5167050 (= lt!2125585 (tail!10126 call!362496))))

(assert (=> b!5167050 (= lt!2125591 (head!11017 call!362496))))

(declare-fun lt!2125586 () Unit!151494)

(declare-fun lt!2125598 () Unit!151494)

(assert (=> b!5167050 (= lt!2125586 lt!2125598)))

(assert (=> b!5167050 (isPrefix!5726 (++!13117 lt!2125444 (Cons!60020 (head!11017 (getSuffix!3376 input!5817 lt!2125444)) Nil!60020)) input!5817)))

(assert (=> b!5167050 (= lt!2125598 (lemmaAddHeadSuffixToPrefixStillPrefix!1039 lt!2125444 input!5817))))

(declare-fun lt!2125606 () List!60144)

(assert (=> b!5167050 (= lt!2125606 (++!13117 lt!2125444 (Cons!60020 (head!11017 call!362496) Nil!60020)))))

(declare-fun lt!2125604 () Unit!151494)

(assert (=> b!5167050 (= lt!2125604 e!3219569)))

(declare-fun c!889101 () Bool)

(assert (=> b!5167050 (= c!889101 (= (size!39629 lt!2125444) (size!39629 input!5817)))))

(declare-fun lt!2125602 () Unit!151494)

(declare-fun lt!2125605 () Unit!151494)

(assert (=> b!5167050 (= lt!2125602 lt!2125605)))

(assert (=> b!5167050 (<= (size!39629 lt!2125444) (size!39629 input!5817))))

(assert (=> b!5167050 (= lt!2125605 (lemmaIsPrefixThenSmallerEqSize!889 lt!2125444 input!5817))))

(declare-fun e!3219575 () tuple2!63740)

(declare-fun e!3219572 () tuple2!63740)

(assert (=> b!5167050 (= e!3219575 e!3219572)))

(declare-fun b!5167051 () Bool)

(declare-fun call!362525 () tuple2!63740)

(assert (=> b!5167051 (= e!3219572 call!362525)))

(declare-fun bm!362522 () Bool)

(assert (=> bm!362522 (= call!362527 (lemmaIsPrefixRefl!3733 input!5817 input!5817))))

(declare-fun b!5167053 () Bool)

(assert (=> b!5167053 (= e!3219574 e!3219575)))

(declare-fun c!889104 () Bool)

(assert (=> b!5167053 (= c!889104 (= (+ lt!2125231 1) lt!2125234))))

(declare-fun bm!362523 () Bool)

(assert (=> bm!362523 (= call!362529 (nullableZipper!1139 call!362500))))

(declare-fun b!5167054 () Bool)

(declare-fun e!3219571 () Bool)

(declare-fun lt!2125590 () tuple2!63740)

(assert (=> b!5167054 (= e!3219571 (>= (size!39629 (_1!35173 lt!2125590)) (size!39629 lt!2125444)))))

(declare-fun b!5167055 () Bool)

(declare-fun e!3219576 () tuple2!63740)

(assert (=> b!5167055 (= e!3219576 (tuple2!63741 lt!2125444 Nil!60020))))

(declare-fun bm!362524 () Bool)

(assert (=> bm!362524 (= call!362531 (head!11017 call!362496))))

(declare-fun b!5167056 () Bool)

(declare-fun c!889100 () Bool)

(assert (=> b!5167056 (= c!889100 call!362529)))

(declare-fun lt!2125600 () Unit!151494)

(declare-fun lt!2125610 () Unit!151494)

(assert (=> b!5167056 (= lt!2125600 lt!2125610)))

(assert (=> b!5167056 (= input!5817 lt!2125444)))

(assert (=> b!5167056 (= lt!2125610 call!362530)))

(declare-fun lt!2125587 () Unit!151494)

(declare-fun lt!2125607 () Unit!151494)

(assert (=> b!5167056 (= lt!2125587 lt!2125607)))

(assert (=> b!5167056 call!362526))

(assert (=> b!5167056 (= lt!2125607 call!362527)))

(assert (=> b!5167056 (= e!3219575 e!3219576)))

(declare-fun b!5167057 () Bool)

(declare-fun e!3219570 () Bool)

(assert (=> b!5167057 (= e!3219570 e!3219571)))

(declare-fun res!2196449 () Bool)

(assert (=> b!5167057 (=> res!2196449 e!3219571)))

(assert (=> b!5167057 (= res!2196449 (isEmpty!32133 (_1!35173 lt!2125590)))))

(declare-fun d!1667014 () Bool)

(assert (=> d!1667014 e!3219570))

(declare-fun res!2196450 () Bool)

(assert (=> d!1667014 (=> (not res!2196450) (not e!3219570))))

(assert (=> d!1667014 (= res!2196450 (= (++!13117 (_1!35173 lt!2125590) (_2!35173 lt!2125590)) input!5817))))

(assert (=> d!1667014 (= lt!2125590 e!3219574)))

(declare-fun c!889102 () Bool)

(assert (=> d!1667014 (= c!889102 (lostCauseZipper!1316 call!362500))))

(declare-fun lt!2125588 () Unit!151494)

(declare-fun Unit!151512 () Unit!151494)

(assert (=> d!1667014 (= lt!2125588 Unit!151512)))

(assert (=> d!1667014 (= (getSuffix!3376 input!5817 lt!2125444) call!362496)))

(declare-fun lt!2125599 () Unit!151494)

(declare-fun lt!2125589 () Unit!151494)

(assert (=> d!1667014 (= lt!2125599 lt!2125589)))

(declare-fun lt!2125595 () List!60144)

(assert (=> d!1667014 (= call!362496 lt!2125595)))

(assert (=> d!1667014 (= lt!2125589 (lemmaSamePrefixThenSameSuffix!2683 lt!2125444 call!362496 lt!2125444 lt!2125595 input!5817))))

(assert (=> d!1667014 (= lt!2125595 (getSuffix!3376 input!5817 lt!2125444))))

(declare-fun lt!2125593 () Unit!151494)

(declare-fun lt!2125608 () Unit!151494)

(assert (=> d!1667014 (= lt!2125593 lt!2125608)))

(assert (=> d!1667014 (isPrefix!5726 lt!2125444 (++!13117 lt!2125444 call!362496))))

(assert (=> d!1667014 (= lt!2125608 (lemmaConcatTwoListThenFirstIsPrefix!3577 lt!2125444 call!362496))))

(assert (=> d!1667014 (= (++!13117 lt!2125444 call!362496) input!5817)))

(assert (=> d!1667014 (= (findLongestMatchInnerZipper!251 call!362500 lt!2125444 (+ lt!2125231 1) call!362496 input!5817 lt!2125234) lt!2125590)))

(declare-fun b!5167052 () Bool)

(declare-fun e!3219573 () tuple2!63740)

(assert (=> b!5167052 (= e!3219573 (tuple2!63741 lt!2125444 call!362496))))

(declare-fun call!362524 () List!60144)

(declare-fun bm!362525 () Bool)

(assert (=> bm!362525 (= call!362525 (findLongestMatchInnerZipper!251 call!362528 lt!2125606 (+ lt!2125231 1 1) call!362524 input!5817 lt!2125234))))

(declare-fun b!5167058 () Bool)

(assert (=> b!5167058 (= e!3219576 (tuple2!63741 Nil!60020 input!5817))))

(declare-fun b!5167059 () Bool)

(declare-fun lt!2125601 () tuple2!63740)

(assert (=> b!5167059 (= e!3219573 lt!2125601)))

(declare-fun bm!362526 () Bool)

(assert (=> bm!362526 (= call!362524 (tail!10126 call!362496))))

(declare-fun b!5167060 () Bool)

(declare-fun Unit!151513 () Unit!151494)

(assert (=> b!5167060 (= e!3219569 Unit!151513)))

(declare-fun b!5167061 () Bool)

(assert (=> b!5167061 (= e!3219572 e!3219573)))

(assert (=> b!5167061 (= lt!2125601 call!362525)))

(declare-fun c!889103 () Bool)

(assert (=> b!5167061 (= c!889103 (isEmpty!32133 (_1!35173 lt!2125601)))))

(assert (= (and d!1667014 c!889102) b!5167048))

(assert (= (and d!1667014 (not c!889102)) b!5167053))

(assert (= (and b!5167053 c!889104) b!5167056))

(assert (= (and b!5167053 (not c!889104)) b!5167050))

(assert (= (and b!5167056 c!889100) b!5167055))

(assert (= (and b!5167056 (not c!889100)) b!5167058))

(assert (= (and b!5167050 c!889101) b!5167049))

(assert (= (and b!5167050 (not c!889101)) b!5167060))

(assert (= (and b!5167050 c!889099) b!5167061))

(assert (= (and b!5167050 (not c!889099)) b!5167051))

(assert (= (and b!5167061 c!889103) b!5167052))

(assert (= (and b!5167061 (not c!889103)) b!5167059))

(assert (= (or b!5167061 b!5167051) bm!362526))

(assert (= (or b!5167061 b!5167051) bm!362524))

(assert (= (or b!5167061 b!5167051) bm!362520))

(assert (= (or b!5167061 b!5167051) bm!362525))

(assert (= (or b!5167056 b!5167049) bm!362522))

(assert (= (or b!5167056 b!5167050) bm!362523))

(assert (= (or b!5167056 b!5167049) bm!362521))

(assert (= (or b!5167056 b!5167049) bm!362519))

(assert (= (and d!1667014 res!2196450) b!5167057))

(assert (= (and b!5167057 (not res!2196449)) b!5167054))

(declare-fun m!6217836 () Bool)

(assert (=> d!1667014 m!6217836))

(declare-fun m!6217838 () Bool)

(assert (=> d!1667014 m!6217838))

(declare-fun m!6217840 () Bool)

(assert (=> d!1667014 m!6217840))

(assert (=> d!1667014 m!6217836))

(declare-fun m!6217842 () Bool)

(assert (=> d!1667014 m!6217842))

(declare-fun m!6217844 () Bool)

(assert (=> d!1667014 m!6217844))

(declare-fun m!6217846 () Bool)

(assert (=> d!1667014 m!6217846))

(declare-fun m!6217848 () Bool)

(assert (=> d!1667014 m!6217848))

(assert (=> bm!362521 m!6217190))

(declare-fun m!6217850 () Bool)

(assert (=> b!5167054 m!6217850))

(declare-fun m!6217852 () Bool)

(assert (=> b!5167054 m!6217852))

(declare-fun m!6217854 () Bool)

(assert (=> b!5167057 m!6217854))

(declare-fun m!6217856 () Bool)

(assert (=> bm!362525 m!6217856))

(declare-fun m!6217858 () Bool)

(assert (=> bm!362519 m!6217858))

(declare-fun m!6217860 () Bool)

(assert (=> bm!362523 m!6217860))

(declare-fun m!6217862 () Bool)

(assert (=> b!5167061 m!6217862))

(assert (=> bm!362522 m!6217188))

(declare-fun m!6217864 () Bool)

(assert (=> b!5167050 m!6217864))

(assert (=> b!5167050 m!6217848))

(assert (=> b!5167050 m!6217180))

(assert (=> b!5167050 m!6217848))

(declare-fun m!6217866 () Bool)

(assert (=> b!5167050 m!6217866))

(assert (=> b!5167050 m!6217852))

(declare-fun m!6217868 () Bool)

(assert (=> b!5167050 m!6217868))

(assert (=> b!5167050 m!6217868))

(declare-fun m!6217870 () Bool)

(assert (=> b!5167050 m!6217870))

(declare-fun m!6217872 () Bool)

(assert (=> b!5167050 m!6217872))

(declare-fun m!6217874 () Bool)

(assert (=> b!5167050 m!6217874))

(declare-fun m!6217876 () Bool)

(assert (=> b!5167050 m!6217876))

(declare-fun m!6217878 () Bool)

(assert (=> b!5167050 m!6217878))

(declare-fun m!6217880 () Bool)

(assert (=> b!5167050 m!6217880))

(declare-fun m!6217882 () Bool)

(assert (=> b!5167050 m!6217882))

(declare-fun m!6217884 () Bool)

(assert (=> b!5167050 m!6217884))

(assert (=> b!5167050 m!6217882))

(assert (=> bm!362524 m!6217874))

(declare-fun m!6217886 () Bool)

(assert (=> bm!362520 m!6217886))

(assert (=> bm!362526 m!6217876))

(assert (=> bm!362497 d!1667014))

(assert (=> b!5166629 d!1666796))

(declare-fun b!5167062 () Bool)

(declare-fun e!3219577 () Bool)

(declare-fun tp!1449614 () Bool)

(declare-fun tp!1449615 () Bool)

(assert (=> b!5167062 (= e!3219577 (and tp!1449614 tp!1449615))))

(assert (=> b!5166824 (= tp!1449574 e!3219577)))

(assert (= (and b!5166824 ((_ is Cons!60019) (exprs!4477 setElem!31791))) b!5167062))

(declare-fun b!5167063 () Bool)

(declare-fun e!3219578 () Bool)

(declare-fun tp!1449616 () Bool)

(assert (=> b!5167063 (= e!3219578 (and tp_is_empty!38439 tp!1449616))))

(assert (=> b!5166825 (= tp!1449575 e!3219578)))

(assert (= (and b!5166825 ((_ is Cons!60020) (t!373297 (t!373297 input!5817)))) b!5167063))

(declare-fun condSetEmpty!31795 () Bool)

(assert (=> setNonEmpty!31792 (= condSetEmpty!31795 (= setRest!31792 ((as const (Array Context!7954 Bool)) false)))))

(declare-fun setRes!31795 () Bool)

(assert (=> setNonEmpty!31792 (= tp!1449578 setRes!31795)))

(declare-fun setIsEmpty!31795 () Bool)

(assert (=> setIsEmpty!31795 setRes!31795))

(declare-fun tp!1449617 () Bool)

(declare-fun e!3219579 () Bool)

(declare-fun setNonEmpty!31795 () Bool)

(declare-fun setElem!31795 () Context!7954)

(assert (=> setNonEmpty!31795 (= setRes!31795 (and tp!1449617 (inv!79729 setElem!31795) e!3219579))))

(declare-fun setRest!31795 () (InoxSet Context!7954))

(assert (=> setNonEmpty!31795 (= setRest!31792 ((_ map or) (store ((as const (Array Context!7954 Bool)) false) setElem!31795 true) setRest!31795))))

(declare-fun b!5167064 () Bool)

(declare-fun tp!1449618 () Bool)

(assert (=> b!5167064 (= e!3219579 tp!1449618)))

(assert (= (and setNonEmpty!31792 condSetEmpty!31795) setIsEmpty!31795))

(assert (= (and setNonEmpty!31792 (not condSetEmpty!31795)) setNonEmpty!31795))

(assert (= setNonEmpty!31795 b!5167064))

(declare-fun m!6217888 () Bool)

(assert (=> setNonEmpty!31795 m!6217888))

(declare-fun b!5167077 () Bool)

(declare-fun e!3219582 () Bool)

(declare-fun tp!1449633 () Bool)

(assert (=> b!5167077 (= e!3219582 tp!1449633)))

(declare-fun b!5167075 () Bool)

(assert (=> b!5167075 (= e!3219582 tp_is_empty!38439)))

(assert (=> b!5166819 (= tp!1449567 e!3219582)))

(declare-fun b!5167076 () Bool)

(declare-fun tp!1449629 () Bool)

(declare-fun tp!1449631 () Bool)

(assert (=> b!5167076 (= e!3219582 (and tp!1449629 tp!1449631))))

(declare-fun b!5167078 () Bool)

(declare-fun tp!1449630 () Bool)

(declare-fun tp!1449632 () Bool)

(assert (=> b!5167078 (= e!3219582 (and tp!1449630 tp!1449632))))

(assert (= (and b!5166819 ((_ is ElementMatch!14593) (h!66467 (exprs!4477 setElem!31783)))) b!5167075))

(assert (= (and b!5166819 ((_ is Concat!23438) (h!66467 (exprs!4477 setElem!31783)))) b!5167076))

(assert (= (and b!5166819 ((_ is Star!14593) (h!66467 (exprs!4477 setElem!31783)))) b!5167077))

(assert (= (and b!5166819 ((_ is Union!14593) (h!66467 (exprs!4477 setElem!31783)))) b!5167078))

(declare-fun b!5167079 () Bool)

(declare-fun e!3219583 () Bool)

(declare-fun tp!1449634 () Bool)

(declare-fun tp!1449635 () Bool)

(assert (=> b!5167079 (= e!3219583 (and tp!1449634 tp!1449635))))

(assert (=> b!5166819 (= tp!1449568 e!3219583)))

(assert (= (and b!5166819 ((_ is Cons!60019) (t!373296 (exprs!4477 setElem!31783)))) b!5167079))

(declare-fun b!5167080 () Bool)

(declare-fun e!3219584 () Bool)

(declare-fun tp!1449636 () Bool)

(declare-fun tp!1449637 () Bool)

(assert (=> b!5167080 (= e!3219584 (and tp!1449636 tp!1449637))))

(assert (=> b!5166827 (= tp!1449579 e!3219584)))

(assert (= (and b!5166827 ((_ is Cons!60019) (exprs!4477 setElem!31792))) b!5167080))

(declare-fun b!5167081 () Bool)

(declare-fun e!3219585 () Bool)

(declare-fun tp!1449638 () Bool)

(assert (=> b!5167081 (= e!3219585 (and tp_is_empty!38439 tp!1449638))))

(assert (=> b!5166814 (= tp!1449562 e!3219585)))

(assert (= (and b!5166814 ((_ is Cons!60020) (t!373297 (t!373297 testedP!294)))) b!5167081))

(declare-fun condSetEmpty!31796 () Bool)

(assert (=> setNonEmpty!31791 (= condSetEmpty!31796 (= setRest!31791 ((as const (Array Context!7954 Bool)) false)))))

(declare-fun setRes!31796 () Bool)

(assert (=> setNonEmpty!31791 (= tp!1449573 setRes!31796)))

(declare-fun setIsEmpty!31796 () Bool)

(assert (=> setIsEmpty!31796 setRes!31796))

(declare-fun tp!1449639 () Bool)

(declare-fun setNonEmpty!31796 () Bool)

(declare-fun e!3219586 () Bool)

(declare-fun setElem!31796 () Context!7954)

(assert (=> setNonEmpty!31796 (= setRes!31796 (and tp!1449639 (inv!79729 setElem!31796) e!3219586))))

(declare-fun setRest!31796 () (InoxSet Context!7954))

(assert (=> setNonEmpty!31796 (= setRest!31791 ((_ map or) (store ((as const (Array Context!7954 Bool)) false) setElem!31796 true) setRest!31796))))

(declare-fun b!5167082 () Bool)

(declare-fun tp!1449640 () Bool)

(assert (=> b!5167082 (= e!3219586 tp!1449640)))

(assert (= (and setNonEmpty!31791 condSetEmpty!31796) setIsEmpty!31796))

(assert (= (and setNonEmpty!31791 (not condSetEmpty!31796)) setNonEmpty!31796))

(assert (= setNonEmpty!31796 b!5167082))

(declare-fun m!6217890 () Bool)

(assert (=> setNonEmpty!31796 m!6217890))

(declare-fun b!5167085 () Bool)

(declare-fun e!3219587 () Bool)

(declare-fun tp!1449645 () Bool)

(assert (=> b!5167085 (= e!3219587 tp!1449645)))

(declare-fun b!5167083 () Bool)

(assert (=> b!5167083 (= e!3219587 tp_is_empty!38439)))

(assert (=> b!5166826 (= tp!1449576 e!3219587)))

(declare-fun b!5167084 () Bool)

(declare-fun tp!1449641 () Bool)

(declare-fun tp!1449643 () Bool)

(assert (=> b!5167084 (= e!3219587 (and tp!1449641 tp!1449643))))

(declare-fun b!5167086 () Bool)

(declare-fun tp!1449642 () Bool)

(declare-fun tp!1449644 () Bool)

(assert (=> b!5167086 (= e!3219587 (and tp!1449642 tp!1449644))))

(assert (= (and b!5166826 ((_ is ElementMatch!14593) (h!66467 (exprs!4477 setElem!31784)))) b!5167083))

(assert (= (and b!5166826 ((_ is Concat!23438) (h!66467 (exprs!4477 setElem!31784)))) b!5167084))

(assert (= (and b!5166826 ((_ is Star!14593) (h!66467 (exprs!4477 setElem!31784)))) b!5167085))

(assert (= (and b!5166826 ((_ is Union!14593) (h!66467 (exprs!4477 setElem!31784)))) b!5167086))

(declare-fun b!5167087 () Bool)

(declare-fun e!3219588 () Bool)

(declare-fun tp!1449646 () Bool)

(declare-fun tp!1449647 () Bool)

(assert (=> b!5167087 (= e!3219588 (and tp!1449646 tp!1449647))))

(assert (=> b!5166826 (= tp!1449577 e!3219588)))

(assert (= (and b!5166826 ((_ is Cons!60019) (t!373296 (exprs!4477 setElem!31784)))) b!5167087))

(declare-fun b_lambda!200797 () Bool)

(assert (= b_lambda!200791 (or d!1666812 b_lambda!200797)))

(declare-fun bs!1202946 () Bool)

(declare-fun d!1667016 () Bool)

(assert (= bs!1202946 (and d!1667016 d!1666812)))

(declare-fun validRegex!6391 (Regex!14593) Bool)

(assert (=> bs!1202946 (= (dynLambda!23861 lambda!257852 (h!66467 (exprs!4477 setElem!31784))) (validRegex!6391 (h!66467 (exprs!4477 setElem!31784))))))

(declare-fun m!6217892 () Bool)

(assert (=> bs!1202946 m!6217892))

(assert (=> b!5166994 d!1667016))

(declare-fun b_lambda!200799 () Bool)

(assert (= b_lambda!200785 (or d!1666814 b_lambda!200799)))

(declare-fun bs!1202947 () Bool)

(declare-fun d!1667018 () Bool)

(assert (= bs!1202947 (and d!1667018 d!1666814)))

(assert (=> bs!1202947 (= (dynLambda!23861 lambda!257853 (h!66467 (exprs!4477 setElem!31783))) (validRegex!6391 (h!66467 (exprs!4477 setElem!31783))))))

(declare-fun m!6217894 () Bool)

(assert (=> bs!1202947 m!6217894))

(assert (=> b!5166870 d!1667018))

(check-sat (not b!5166931) (not b!5166849) (not b!5166936) (not d!1666876) (not b!5166949) (not b!5166855) (not setNonEmpty!31795) (not b!5167064) (not d!1666928) (not d!1666930) (not b!5167043) (not d!1666996) (not bm!362521) (not b!5166876) (not b!5166996) (not b!5166981) (not bs!1202947) (not bm!362510) (not b!5167080) (not bm!362519) (not b!5167029) (not b!5167077) (not b!5167063) (not b!5166852) tp_is_empty!38439 (not b!5166989) (not b!5167031) (not b!5166925) (not d!1666978) (not b!5166883) (not b!5167086) (not b!5166982) (not d!1666872) (not d!1666982) (not b!5166995) (not b!5167057) (not b!5167062) (not b_lambda!200797) (not b!5166857) (not b!5166935) (not b!5166871) (not b!5167079) (not b!5166951) (not bm!362520) (not b!5167033) (not d!1666964) (not d!1667012) (not b!5167078) (not b_lambda!200799) (not b!5166861) (not b!5167081) (not d!1667008) (not d!1667014) (not d!1666968) (not setNonEmpty!31796) (not b!5167047) (not b!5166933) (not b!5166952) (not b!5166986) (not bm!362509) (not b!5167035) (not b!5167042) (not bm!362522) (not b!5167045) (not d!1666980) (not bm!362523) (not d!1667000) (not d!1666838) (not b!5166990) (not b!5167084) (not d!1666880) (not d!1666850) (not b!5167082) (not b!5166985) (not d!1666848) (not d!1666944) (not b!5167054) (not b!5167061) (not d!1666950) (not b!5167076) (not bs!1202946) (not b!5167038) (not b!5167087) (not b!5167041) (not bm!362525) (not b!5167037) (not b!5166884) (not d!1666934) (not b!5166987) (not b!5166851) (not b!5166924) (not b!5167050) (not b!5166847) (not bm!362524) (not b!5166932) (not bm!362526) (not b!5167046) (not b!5166845) (not b!5167085) (not b!5166856))
(check-sat)
