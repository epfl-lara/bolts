; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546346 () Bool)

(assert start!546346)

(declare-fun b!5164358 () Bool)

(declare-fun e!3217830 () Bool)

(declare-fun tp!1448600 () Bool)

(assert (=> b!5164358 (= e!3217830 tp!1448600)))

(declare-fun res!2195502 () Bool)

(declare-fun e!3217834 () Bool)

(assert (=> start!546346 (=> (not res!2195502) (not e!3217834))))

(declare-datatypes ((C!29382 0))(
  ( (C!29383 (val!24393 Int)) )
))
(declare-datatypes ((List!60067 0))(
  ( (Nil!59943) (Cons!59943 (h!66391 C!29382) (t!373220 List!60067)) )
))
(declare-fun testedP!294 () List!60067)

(declare-fun input!5817 () List!60067)

(declare-fun isPrefix!5689 (List!60067 List!60067) Bool)

(assert (=> start!546346 (= res!2195502 (isPrefix!5689 testedP!294 input!5817))))

(assert (=> start!546346 e!3217834))

(declare-fun e!3217831 () Bool)

(assert (=> start!546346 e!3217831))

(declare-fun e!3217833 () Bool)

(assert (=> start!546346 e!3217833))

(declare-fun condSetEmpty!31517 () Bool)

(declare-datatypes ((Regex!14556 0))(
  ( (ElementMatch!14556 (c!888509 C!29382)) (Concat!23401 (regOne!29624 Regex!14556) (regTwo!29624 Regex!14556)) (EmptyExpr!14556) (Star!14556 (reg!14885 Regex!14556)) (EmptyLang!14556) (Union!14556 (regOne!29625 Regex!14556) (regTwo!29625 Regex!14556)) )
))
(declare-datatypes ((List!60068 0))(
  ( (Nil!59944) (Cons!59944 (h!66392 Regex!14556) (t!373221 List!60068)) )
))
(declare-datatypes ((Context!7880 0))(
  ( (Context!7881 (exprs!4440 List!60068)) )
))
(declare-fun baseZ!62 () (Set Context!7880))

(assert (=> start!546346 (= condSetEmpty!31517 (= baseZ!62 (as set.empty (Set Context!7880))))))

(declare-fun setRes!31518 () Bool)

(assert (=> start!546346 setRes!31518))

(declare-fun condSetEmpty!31518 () Bool)

(declare-fun z!4581 () (Set Context!7880))

(assert (=> start!546346 (= condSetEmpty!31518 (= z!4581 (as set.empty (Set Context!7880))))))

(declare-fun setRes!31517 () Bool)

(assert (=> start!546346 setRes!31517))

(declare-fun e!3217832 () Bool)

(declare-fun setNonEmpty!31517 () Bool)

(declare-fun tp!1448604 () Bool)

(declare-fun setElem!31518 () Context!7880)

(declare-fun inv!79638 (Context!7880) Bool)

(assert (=> setNonEmpty!31517 (= setRes!31517 (and tp!1448604 (inv!79638 setElem!31518) e!3217832))))

(declare-fun setRest!31518 () (Set Context!7880))

(assert (=> setNonEmpty!31517 (= z!4581 (set.union (set.insert setElem!31518 (as set.empty (Set Context!7880))) setRest!31518))))

(declare-fun setIsEmpty!31517 () Bool)

(assert (=> setIsEmpty!31517 setRes!31517))

(declare-fun setNonEmpty!31518 () Bool)

(declare-fun tp!1448605 () Bool)

(declare-fun setElem!31517 () Context!7880)

(assert (=> setNonEmpty!31518 (= setRes!31518 (and tp!1448605 (inv!79638 setElem!31517) e!3217830))))

(declare-fun setRest!31517 () (Set Context!7880))

(assert (=> setNonEmpty!31518 (= baseZ!62 (set.union (set.insert setElem!31517 (as set.empty (Set Context!7880))) setRest!31517))))

(declare-fun b!5164359 () Bool)

(declare-fun e!3217829 () Bool)

(assert (=> b!5164359 (= e!3217834 e!3217829)))

(declare-fun res!2195503 () Bool)

(assert (=> b!5164359 (=> (not res!2195503) (not e!3217829))))

(declare-fun lt!2123678 () Int)

(declare-fun lt!2123679 () List!60067)

(declare-fun lt!2123677 () Int)

(declare-fun isEmpty!32096 (List!60067) Bool)

(declare-datatypes ((tuple2!63666 0))(
  ( (tuple2!63667 (_1!35136 List!60067) (_2!35136 List!60067)) )
))
(declare-fun findLongestMatchInnerZipper!214 ((Set Context!7880) List!60067 Int List!60067 List!60067 Int) tuple2!63666)

(assert (=> b!5164359 (= res!2195503 (isEmpty!32096 (_1!35136 (findLongestMatchInnerZipper!214 z!4581 testedP!294 lt!2123677 lt!2123679 input!5817 lt!2123678))))))

(declare-fun size!39592 (List!60067) Int)

(assert (=> b!5164359 (= lt!2123678 (size!39592 input!5817))))

(declare-fun getSuffix!3339 (List!60067 List!60067) List!60067)

(assert (=> b!5164359 (= lt!2123679 (getSuffix!3339 input!5817 testedP!294))))

(assert (=> b!5164359 (= lt!2123677 (size!39592 testedP!294))))

(declare-fun b!5164360 () Bool)

(declare-fun tp_is_empty!38365 () Bool)

(declare-fun tp!1448602 () Bool)

(assert (=> b!5164360 (= e!3217831 (and tp_is_empty!38365 tp!1448602))))

(declare-fun b!5164361 () Bool)

(assert (=> b!5164361 (= e!3217829 (< lt!2123678 lt!2123677))))

(declare-fun b!5164362 () Bool)

(declare-fun tp!1448601 () Bool)

(assert (=> b!5164362 (= e!3217833 (and tp_is_empty!38365 tp!1448601))))

(declare-fun setIsEmpty!31518 () Bool)

(assert (=> setIsEmpty!31518 setRes!31518))

(declare-fun b!5164363 () Bool)

(declare-fun res!2195501 () Bool)

(assert (=> b!5164363 (=> (not res!2195501) (not e!3217834))))

(declare-fun derivationZipper!179 ((Set Context!7880) List!60067) (Set Context!7880))

(assert (=> b!5164363 (= res!2195501 (= (derivationZipper!179 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5164364 () Bool)

(declare-fun tp!1448603 () Bool)

(assert (=> b!5164364 (= e!3217832 tp!1448603)))

(assert (= (and start!546346 res!2195502) b!5164363))

(assert (= (and b!5164363 res!2195501) b!5164359))

(assert (= (and b!5164359 res!2195503) b!5164361))

(assert (= (and start!546346 (is-Cons!59943 testedP!294)) b!5164360))

(assert (= (and start!546346 (is-Cons!59943 input!5817)) b!5164362))

(assert (= (and start!546346 condSetEmpty!31517) setIsEmpty!31518))

(assert (= (and start!546346 (not condSetEmpty!31517)) setNonEmpty!31518))

(assert (= setNonEmpty!31518 b!5164358))

(assert (= (and start!546346 condSetEmpty!31518) setIsEmpty!31517))

(assert (= (and start!546346 (not condSetEmpty!31518)) setNonEmpty!31517))

(assert (= setNonEmpty!31517 b!5164364))

(declare-fun m!6214920 () Bool)

(assert (=> b!5164359 m!6214920))

(declare-fun m!6214922 () Bool)

(assert (=> b!5164359 m!6214922))

(declare-fun m!6214924 () Bool)

(assert (=> b!5164359 m!6214924))

(declare-fun m!6214926 () Bool)

(assert (=> b!5164359 m!6214926))

(declare-fun m!6214928 () Bool)

(assert (=> b!5164359 m!6214928))

(declare-fun m!6214930 () Bool)

(assert (=> setNonEmpty!31517 m!6214930))

(declare-fun m!6214932 () Bool)

(assert (=> start!546346 m!6214932))

(declare-fun m!6214934 () Bool)

(assert (=> setNonEmpty!31518 m!6214934))

(declare-fun m!6214936 () Bool)

(assert (=> b!5164363 m!6214936))

(push 1)

(assert (not b!5164360))

(assert (not b!5164364))

(assert (not b!5164363))

(assert (not setNonEmpty!31517))

(assert (not b!5164359))

(assert (not start!546346))

(assert (not b!5164362))

(assert tp_is_empty!38365)

(assert (not b!5164358))

(assert (not setNonEmpty!31518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1666328 () Bool)

(declare-fun lambda!257742 () Int)

(declare-fun forall!14099 (List!60068 Int) Bool)

(assert (=> d!1666328 (= (inv!79638 setElem!31518) (forall!14099 (exprs!4440 setElem!31518) lambda!257742))))

(declare-fun bs!1202754 () Bool)

(assert (= bs!1202754 d!1666328))

(declare-fun m!6214956 () Bool)

(assert (=> bs!1202754 m!6214956))

(assert (=> setNonEmpty!31517 d!1666328))

(declare-fun bs!1202755 () Bool)

(declare-fun d!1666330 () Bool)

(assert (= bs!1202755 (and d!1666330 d!1666328)))

(declare-fun lambda!257743 () Int)

(assert (=> bs!1202755 (= lambda!257743 lambda!257742)))

(assert (=> d!1666330 (= (inv!79638 setElem!31517) (forall!14099 (exprs!4440 setElem!31517) lambda!257743))))

(declare-fun bs!1202756 () Bool)

(assert (= bs!1202756 d!1666330))

(declare-fun m!6214958 () Bool)

(assert (=> bs!1202756 m!6214958))

(assert (=> setNonEmpty!31518 d!1666330))

(declare-fun d!1666332 () Bool)

(declare-fun lt!2123691 () List!60067)

(declare-fun ++!13099 (List!60067 List!60067) List!60067)

(assert (=> d!1666332 (= (++!13099 testedP!294 lt!2123691) input!5817)))

(declare-fun e!3217855 () List!60067)

(assert (=> d!1666332 (= lt!2123691 e!3217855)))

(declare-fun c!888513 () Bool)

(assert (=> d!1666332 (= c!888513 (is-Cons!59943 testedP!294))))

(assert (=> d!1666332 (>= (size!39592 input!5817) (size!39592 testedP!294))))

(assert (=> d!1666332 (= (getSuffix!3339 input!5817 testedP!294) lt!2123691)))

(declare-fun b!5164390 () Bool)

(declare-fun tail!10115 (List!60067) List!60067)

(assert (=> b!5164390 (= e!3217855 (getSuffix!3339 (tail!10115 input!5817) (t!373220 testedP!294)))))

(declare-fun b!5164391 () Bool)

(assert (=> b!5164391 (= e!3217855 input!5817)))

(assert (= (and d!1666332 c!888513) b!5164390))

(assert (= (and d!1666332 (not c!888513)) b!5164391))

(declare-fun m!6214960 () Bool)

(assert (=> d!1666332 m!6214960))

(assert (=> d!1666332 m!6214926))

(assert (=> d!1666332 m!6214920))

(declare-fun m!6214962 () Bool)

(assert (=> b!5164390 m!6214962))

(assert (=> b!5164390 m!6214962))

(declare-fun m!6214964 () Bool)

(assert (=> b!5164390 m!6214964))

(assert (=> b!5164359 d!1666332))

(declare-fun bm!362199 () Bool)

(declare-fun call!362209 () Bool)

(declare-fun nullableZipper!1117 ((Set Context!7880)) Bool)

(assert (=> bm!362199 (= call!362209 (nullableZipper!1117 z!4581))))

(declare-fun bm!362200 () Bool)

(declare-datatypes ((Unit!151387 0))(
  ( (Unit!151388) )
))
(declare-fun call!362206 () Unit!151387)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1359 (List!60067 List!60067 List!60067) Unit!151387)

(assert (=> bm!362200 (= call!362206 (lemmaIsPrefixSameLengthThenSameList!1359 input!5817 testedP!294 input!5817))))

(declare-fun b!5164421 () Bool)

(declare-fun e!3217877 () Bool)

(declare-fun e!3217876 () Bool)

(assert (=> b!5164421 (= e!3217877 e!3217876)))

(declare-fun res!2195517 () Bool)

(assert (=> b!5164421 (=> res!2195517 e!3217876)))

(declare-fun lt!2123765 () tuple2!63666)

(assert (=> b!5164421 (= res!2195517 (isEmpty!32096 (_1!35136 lt!2123765)))))

(declare-fun b!5164422 () Bool)

(declare-fun e!3217874 () Unit!151387)

(declare-fun Unit!151389 () Unit!151387)

(assert (=> b!5164422 (= e!3217874 Unit!151389)))

(declare-fun b!5164423 () Bool)

(declare-fun e!3217872 () tuple2!63666)

(assert (=> b!5164423 (= e!3217872 (tuple2!63667 Nil!59943 input!5817))))

(declare-fun bm!362201 () Bool)

(declare-fun call!362205 () C!29382)

(declare-fun head!11004 (List!60067) C!29382)

(assert (=> bm!362201 (= call!362205 (head!11004 lt!2123679))))

(declare-fun b!5164424 () Bool)

(declare-fun c!888526 () Bool)

(assert (=> b!5164424 (= c!888526 call!362209)))

(declare-fun lt!2123769 () Unit!151387)

(declare-fun lt!2123764 () Unit!151387)

(assert (=> b!5164424 (= lt!2123769 lt!2123764)))

(declare-fun lt!2123745 () List!60067)

(declare-fun lt!2123758 () C!29382)

(assert (=> b!5164424 (= (++!13099 (++!13099 testedP!294 (Cons!59943 lt!2123758 Nil!59943)) lt!2123745) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1554 (List!60067 C!29382 List!60067 List!60067) Unit!151387)

(assert (=> b!5164424 (= lt!2123764 (lemmaMoveElementToOtherListKeepsConcatEq!1554 testedP!294 lt!2123758 lt!2123745 input!5817))))

(assert (=> b!5164424 (= lt!2123745 (tail!10115 lt!2123679))))

(assert (=> b!5164424 (= lt!2123758 (head!11004 lt!2123679))))

(declare-fun lt!2123744 () Unit!151387)

(declare-fun lt!2123755 () Unit!151387)

(assert (=> b!5164424 (= lt!2123744 lt!2123755)))

(assert (=> b!5164424 (isPrefix!5689 (++!13099 testedP!294 (Cons!59943 (head!11004 (getSuffix!3339 input!5817 testedP!294)) Nil!59943)) input!5817)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1029 (List!60067 List!60067) Unit!151387)

(assert (=> b!5164424 (= lt!2123755 (lemmaAddHeadSuffixToPrefixStillPrefix!1029 testedP!294 input!5817))))

(declare-fun lt!2123750 () List!60067)

(assert (=> b!5164424 (= lt!2123750 (++!13099 testedP!294 (Cons!59943 (head!11004 lt!2123679) Nil!59943)))))

(declare-fun lt!2123751 () Unit!151387)

(assert (=> b!5164424 (= lt!2123751 e!3217874)))

(declare-fun c!888531 () Bool)

(assert (=> b!5164424 (= c!888531 (= (size!39592 testedP!294) (size!39592 input!5817)))))

(declare-fun lt!2123752 () Unit!151387)

(declare-fun lt!2123767 () Unit!151387)

(assert (=> b!5164424 (= lt!2123752 lt!2123767)))

(assert (=> b!5164424 (<= (size!39592 testedP!294) (size!39592 input!5817))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!869 (List!60067 List!60067) Unit!151387)

(assert (=> b!5164424 (= lt!2123767 (lemmaIsPrefixThenSmallerEqSize!869 testedP!294 input!5817))))

(declare-fun e!3217879 () tuple2!63666)

(declare-fun e!3217873 () tuple2!63666)

(assert (=> b!5164424 (= e!3217879 e!3217873)))

(declare-fun b!5164425 () Bool)

(declare-fun c!888528 () Bool)

(assert (=> b!5164425 (= c!888528 call!362209)))

(declare-fun lt!2123757 () Unit!151387)

(declare-fun lt!2123759 () Unit!151387)

(assert (=> b!5164425 (= lt!2123757 lt!2123759)))

(assert (=> b!5164425 (= input!5817 testedP!294)))

(assert (=> b!5164425 (= lt!2123759 call!362206)))

(declare-fun lt!2123746 () Unit!151387)

(declare-fun lt!2123763 () Unit!151387)

(assert (=> b!5164425 (= lt!2123746 lt!2123763)))

(declare-fun call!362208 () Bool)

(assert (=> b!5164425 call!362208))

(declare-fun call!362207 () Unit!151387)

(assert (=> b!5164425 (= lt!2123763 call!362207)))

(assert (=> b!5164425 (= e!3217879 e!3217872)))

(declare-fun bm!362202 () Bool)

(assert (=> bm!362202 (= call!362208 (isPrefix!5689 input!5817 input!5817))))

(declare-fun b!5164426 () Bool)

(declare-fun Unit!151390 () Unit!151387)

(assert (=> b!5164426 (= e!3217874 Unit!151390)))

(declare-fun lt!2123756 () Unit!151387)

(assert (=> b!5164426 (= lt!2123756 call!362207)))

(assert (=> b!5164426 call!362208))

(declare-fun lt!2123768 () Unit!151387)

(assert (=> b!5164426 (= lt!2123768 lt!2123756)))

(declare-fun lt!2123749 () Unit!151387)

(assert (=> b!5164426 (= lt!2123749 call!362206)))

(assert (=> b!5164426 (= input!5817 testedP!294)))

(declare-fun lt!2123760 () Unit!151387)

(assert (=> b!5164426 (= lt!2123760 lt!2123749)))

(assert (=> b!5164426 false))

(declare-fun b!5164427 () Bool)

(assert (=> b!5164427 (= e!3217872 (tuple2!63667 testedP!294 Nil!59943))))

(declare-fun b!5164428 () Bool)

(declare-fun call!362210 () tuple2!63666)

(assert (=> b!5164428 (= e!3217873 call!362210)))

(declare-fun b!5164429 () Bool)

(assert (=> b!5164429 (= e!3217876 (>= (size!39592 (_1!35136 lt!2123765)) (size!39592 testedP!294)))))

(declare-fun bm!362203 () Bool)

(declare-fun lemmaIsPrefixRefl!3715 (List!60067 List!60067) Unit!151387)

(assert (=> bm!362203 (= call!362207 (lemmaIsPrefixRefl!3715 input!5817 input!5817))))

(declare-fun b!5164430 () Bool)

(declare-fun e!3217878 () tuple2!63666)

(assert (=> b!5164430 (= e!3217878 (tuple2!63667 testedP!294 lt!2123679))))

(declare-fun bm!362204 () Bool)

(declare-fun call!362211 () List!60067)

(declare-fun call!362204 () (Set Context!7880))

(assert (=> bm!362204 (= call!362210 (findLongestMatchInnerZipper!214 call!362204 lt!2123750 (+ lt!2123677 1) call!362211 input!5817 lt!2123678))))

(declare-fun b!5164431 () Bool)

(assert (=> b!5164431 (= e!3217873 e!3217878)))

(declare-fun lt!2123747 () tuple2!63666)

(assert (=> b!5164431 (= lt!2123747 call!362210)))

(declare-fun c!888529 () Bool)

(assert (=> b!5164431 (= c!888529 (isEmpty!32096 (_1!35136 lt!2123747)))))

(declare-fun bm!362205 () Bool)

(declare-fun derivationStepZipper!938 ((Set Context!7880) C!29382) (Set Context!7880))

(assert (=> bm!362205 (= call!362204 (derivationStepZipper!938 z!4581 call!362205))))

(declare-fun b!5164420 () Bool)

(assert (=> b!5164420 (= e!3217878 lt!2123747)))

(declare-fun d!1666334 () Bool)

(assert (=> d!1666334 e!3217877))

(declare-fun res!2195518 () Bool)

(assert (=> d!1666334 (=> (not res!2195518) (not e!3217877))))

(assert (=> d!1666334 (= res!2195518 (= (++!13099 (_1!35136 lt!2123765) (_2!35136 lt!2123765)) input!5817))))

(declare-fun e!3217875 () tuple2!63666)

(assert (=> d!1666334 (= lt!2123765 e!3217875)))

(declare-fun c!888527 () Bool)

(declare-fun lostCauseZipper!1306 ((Set Context!7880)) Bool)

(assert (=> d!1666334 (= c!888527 (lostCauseZipper!1306 z!4581))))

(declare-fun lt!2123753 () Unit!151387)

(declare-fun Unit!151391 () Unit!151387)

(assert (=> d!1666334 (= lt!2123753 Unit!151391)))

(assert (=> d!1666334 (= (getSuffix!3339 input!5817 testedP!294) lt!2123679)))

(declare-fun lt!2123761 () Unit!151387)

(declare-fun lt!2123754 () Unit!151387)

(assert (=> d!1666334 (= lt!2123761 lt!2123754)))

(declare-fun lt!2123748 () List!60067)

(assert (=> d!1666334 (= lt!2123679 lt!2123748)))

(declare-fun lemmaSamePrefixThenSameSuffix!2673 (List!60067 List!60067 List!60067 List!60067 List!60067) Unit!151387)

(assert (=> d!1666334 (= lt!2123754 (lemmaSamePrefixThenSameSuffix!2673 testedP!294 lt!2123679 testedP!294 lt!2123748 input!5817))))

(assert (=> d!1666334 (= lt!2123748 (getSuffix!3339 input!5817 testedP!294))))

(declare-fun lt!2123762 () Unit!151387)

(declare-fun lt!2123766 () Unit!151387)

(assert (=> d!1666334 (= lt!2123762 lt!2123766)))

(assert (=> d!1666334 (isPrefix!5689 testedP!294 (++!13099 testedP!294 lt!2123679))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3567 (List!60067 List!60067) Unit!151387)

(assert (=> d!1666334 (= lt!2123766 (lemmaConcatTwoListThenFirstIsPrefix!3567 testedP!294 lt!2123679))))

(assert (=> d!1666334 (= (++!13099 testedP!294 lt!2123679) input!5817)))

(assert (=> d!1666334 (= (findLongestMatchInnerZipper!214 z!4581 testedP!294 lt!2123677 lt!2123679 input!5817 lt!2123678) lt!2123765)))

(declare-fun b!5164432 () Bool)

(assert (=> b!5164432 (= e!3217875 e!3217879)))

(declare-fun c!888530 () Bool)

(assert (=> b!5164432 (= c!888530 (= lt!2123677 lt!2123678))))

(declare-fun b!5164433 () Bool)

(assert (=> b!5164433 (= e!3217875 (tuple2!63667 Nil!59943 input!5817))))

(declare-fun bm!362206 () Bool)

(assert (=> bm!362206 (= call!362211 (tail!10115 lt!2123679))))

(assert (= (and d!1666334 c!888527) b!5164433))

(assert (= (and d!1666334 (not c!888527)) b!5164432))

(assert (= (and b!5164432 c!888530) b!5164425))

(assert (= (and b!5164432 (not c!888530)) b!5164424))

(assert (= (and b!5164425 c!888528) b!5164427))

(assert (= (and b!5164425 (not c!888528)) b!5164423))

(assert (= (and b!5164424 c!888531) b!5164426))

(assert (= (and b!5164424 (not c!888531)) b!5164422))

(assert (= (and b!5164424 c!888526) b!5164431))

(assert (= (and b!5164424 (not c!888526)) b!5164428))

(assert (= (and b!5164431 c!888529) b!5164430))

(assert (= (and b!5164431 (not c!888529)) b!5164420))

(assert (= (or b!5164431 b!5164428) bm!362206))

(assert (= (or b!5164431 b!5164428) bm!362201))

(assert (= (or b!5164431 b!5164428) bm!362205))

(assert (= (or b!5164431 b!5164428) bm!362204))

(assert (= (or b!5164425 b!5164426) bm!362203))

(assert (= (or b!5164425 b!5164424) bm!362199))

(assert (= (or b!5164425 b!5164426) bm!362202))

(assert (= (or b!5164425 b!5164426) bm!362200))

(assert (= (and d!1666334 res!2195518) b!5164421))

(assert (= (and b!5164421 (not res!2195517)) b!5164429))

(declare-fun m!6214966 () Bool)

(assert (=> bm!362206 m!6214966))

(assert (=> b!5164424 m!6214926))

(declare-fun m!6214968 () Bool)

(assert (=> b!5164424 m!6214968))

(declare-fun m!6214970 () Bool)

(assert (=> b!5164424 m!6214970))

(declare-fun m!6214972 () Bool)

(assert (=> b!5164424 m!6214972))

(declare-fun m!6214974 () Bool)

(assert (=> b!5164424 m!6214974))

(assert (=> b!5164424 m!6214924))

(declare-fun m!6214976 () Bool)

(assert (=> b!5164424 m!6214976))

(assert (=> b!5164424 m!6214970))

(declare-fun m!6214978 () Bool)

(assert (=> b!5164424 m!6214978))

(declare-fun m!6214980 () Bool)

(assert (=> b!5164424 m!6214980))

(assert (=> b!5164424 m!6214978))

(assert (=> b!5164424 m!6214924))

(declare-fun m!6214982 () Bool)

(assert (=> b!5164424 m!6214982))

(declare-fun m!6214984 () Bool)

(assert (=> b!5164424 m!6214984))

(assert (=> b!5164424 m!6214920))

(assert (=> b!5164424 m!6214966))

(declare-fun m!6214986 () Bool)

(assert (=> b!5164424 m!6214986))

(declare-fun m!6214988 () Bool)

(assert (=> bm!362205 m!6214988))

(declare-fun m!6214990 () Bool)

(assert (=> d!1666334 m!6214990))

(declare-fun m!6214992 () Bool)

(assert (=> d!1666334 m!6214992))

(declare-fun m!6214994 () Bool)

(assert (=> d!1666334 m!6214994))

(declare-fun m!6214996 () Bool)

(assert (=> d!1666334 m!6214996))

(assert (=> d!1666334 m!6214924))

(declare-fun m!6214998 () Bool)

(assert (=> d!1666334 m!6214998))

(assert (=> d!1666334 m!6214992))

(declare-fun m!6215000 () Bool)

(assert (=> d!1666334 m!6215000))

(declare-fun m!6215002 () Bool)

(assert (=> bm!362204 m!6215002))

(declare-fun m!6215004 () Bool)

(assert (=> b!5164431 m!6215004))

(assert (=> bm!362201 m!6214974))

(declare-fun m!6215006 () Bool)

(assert (=> b!5164429 m!6215006))

(assert (=> b!5164429 m!6214920))

(declare-fun m!6215008 () Bool)

(assert (=> bm!362199 m!6215008))

(declare-fun m!6215010 () Bool)

(assert (=> bm!362202 m!6215010))

(declare-fun m!6215012 () Bool)

(assert (=> bm!362203 m!6215012))

(declare-fun m!6215014 () Bool)

(assert (=> b!5164421 m!6215014))

(declare-fun m!6215016 () Bool)

(assert (=> bm!362200 m!6215016))

(assert (=> b!5164359 d!1666334))

(declare-fun d!1666336 () Bool)

(declare-fun lt!2123772 () Int)

(assert (=> d!1666336 (>= lt!2123772 0)))

(declare-fun e!3217882 () Int)

(assert (=> d!1666336 (= lt!2123772 e!3217882)))

(declare-fun c!888534 () Bool)

(assert (=> d!1666336 (= c!888534 (is-Nil!59943 testedP!294))))

(assert (=> d!1666336 (= (size!39592 testedP!294) lt!2123772)))

(declare-fun b!5164438 () Bool)

(assert (=> b!5164438 (= e!3217882 0)))

(declare-fun b!5164439 () Bool)

(assert (=> b!5164439 (= e!3217882 (+ 1 (size!39592 (t!373220 testedP!294))))))

(assert (= (and d!1666336 c!888534) b!5164438))

(assert (= (and d!1666336 (not c!888534)) b!5164439))

(declare-fun m!6215018 () Bool)

(assert (=> b!5164439 m!6215018))

(assert (=> b!5164359 d!1666336))

(declare-fun d!1666338 () Bool)

(declare-fun lt!2123773 () Int)

(assert (=> d!1666338 (>= lt!2123773 0)))

(declare-fun e!3217883 () Int)

(assert (=> d!1666338 (= lt!2123773 e!3217883)))

(declare-fun c!888535 () Bool)

(assert (=> d!1666338 (= c!888535 (is-Nil!59943 input!5817))))

(assert (=> d!1666338 (= (size!39592 input!5817) lt!2123773)))

(declare-fun b!5164440 () Bool)

(assert (=> b!5164440 (= e!3217883 0)))

(declare-fun b!5164441 () Bool)

(assert (=> b!5164441 (= e!3217883 (+ 1 (size!39592 (t!373220 input!5817))))))

(assert (= (and d!1666338 c!888535) b!5164440))

(assert (= (and d!1666338 (not c!888535)) b!5164441))

(declare-fun m!6215020 () Bool)

(assert (=> b!5164441 m!6215020))

(assert (=> b!5164359 d!1666338))

(declare-fun d!1666340 () Bool)

(assert (=> d!1666340 (= (isEmpty!32096 (_1!35136 (findLongestMatchInnerZipper!214 z!4581 testedP!294 lt!2123677 lt!2123679 input!5817 lt!2123678))) (is-Nil!59943 (_1!35136 (findLongestMatchInnerZipper!214 z!4581 testedP!294 lt!2123677 lt!2123679 input!5817 lt!2123678))))))

(assert (=> b!5164359 d!1666340))

(declare-fun d!1666342 () Bool)

(declare-fun c!888538 () Bool)

(assert (=> d!1666342 (= c!888538 (is-Cons!59943 testedP!294))))

(declare-fun e!3217886 () (Set Context!7880))

(assert (=> d!1666342 (= (derivationZipper!179 baseZ!62 testedP!294) e!3217886)))

(declare-fun b!5164446 () Bool)

(assert (=> b!5164446 (= e!3217886 (derivationZipper!179 (derivationStepZipper!938 baseZ!62 (h!66391 testedP!294)) (t!373220 testedP!294)))))

(declare-fun b!5164447 () Bool)

(assert (=> b!5164447 (= e!3217886 baseZ!62)))

(assert (= (and d!1666342 c!888538) b!5164446))

(assert (= (and d!1666342 (not c!888538)) b!5164447))

(declare-fun m!6215022 () Bool)

(assert (=> b!5164446 m!6215022))

(assert (=> b!5164446 m!6215022))

(declare-fun m!6215024 () Bool)

(assert (=> b!5164446 m!6215024))

(assert (=> b!5164363 d!1666342))

(declare-fun b!5164456 () Bool)

(declare-fun e!3217893 () Bool)

(declare-fun e!3217894 () Bool)

(assert (=> b!5164456 (= e!3217893 e!3217894)))

(declare-fun res!2195530 () Bool)

(assert (=> b!5164456 (=> (not res!2195530) (not e!3217894))))

(assert (=> b!5164456 (= res!2195530 (not (is-Nil!59943 input!5817)))))

(declare-fun b!5164457 () Bool)

(declare-fun res!2195529 () Bool)

(assert (=> b!5164457 (=> (not res!2195529) (not e!3217894))))

(assert (=> b!5164457 (= res!2195529 (= (head!11004 testedP!294) (head!11004 input!5817)))))

(declare-fun d!1666344 () Bool)

(declare-fun e!3217895 () Bool)

(assert (=> d!1666344 e!3217895))

(declare-fun res!2195528 () Bool)

(assert (=> d!1666344 (=> res!2195528 e!3217895)))

(declare-fun lt!2123776 () Bool)

(assert (=> d!1666344 (= res!2195528 (not lt!2123776))))

(assert (=> d!1666344 (= lt!2123776 e!3217893)))

(declare-fun res!2195527 () Bool)

(assert (=> d!1666344 (=> res!2195527 e!3217893)))

(assert (=> d!1666344 (= res!2195527 (is-Nil!59943 testedP!294))))

(assert (=> d!1666344 (= (isPrefix!5689 testedP!294 input!5817) lt!2123776)))

(declare-fun b!5164458 () Bool)

(assert (=> b!5164458 (= e!3217894 (isPrefix!5689 (tail!10115 testedP!294) (tail!10115 input!5817)))))

(declare-fun b!5164459 () Bool)

(assert (=> b!5164459 (= e!3217895 (>= (size!39592 input!5817) (size!39592 testedP!294)))))

(assert (= (and d!1666344 (not res!2195527)) b!5164456))

(assert (= (and b!5164456 res!2195530) b!5164457))

(assert (= (and b!5164457 res!2195529) b!5164458))

(assert (= (and d!1666344 (not res!2195528)) b!5164459))

(declare-fun m!6215026 () Bool)

(assert (=> b!5164457 m!6215026))

(declare-fun m!6215028 () Bool)

(assert (=> b!5164457 m!6215028))

(declare-fun m!6215030 () Bool)

(assert (=> b!5164458 m!6215030))

(assert (=> b!5164458 m!6214962))

(assert (=> b!5164458 m!6215030))

(assert (=> b!5164458 m!6214962))

(declare-fun m!6215032 () Bool)

(assert (=> b!5164458 m!6215032))

(assert (=> b!5164459 m!6214926))

(assert (=> b!5164459 m!6214920))

(assert (=> start!546346 d!1666344))

(declare-fun b!5164464 () Bool)

(declare-fun e!3217898 () Bool)

(declare-fun tp!1448628 () Bool)

(declare-fun tp!1448629 () Bool)

(assert (=> b!5164464 (= e!3217898 (and tp!1448628 tp!1448629))))

(assert (=> b!5164358 (= tp!1448600 e!3217898)))

(assert (= (and b!5164358 (is-Cons!59944 (exprs!4440 setElem!31517))) b!5164464))

(declare-fun b!5164469 () Bool)

(declare-fun e!3217901 () Bool)

(declare-fun tp!1448632 () Bool)

(assert (=> b!5164469 (= e!3217901 (and tp_is_empty!38365 tp!1448632))))

(assert (=> b!5164360 (= tp!1448602 e!3217901)))

(assert (= (and b!5164360 (is-Cons!59943 (t!373220 testedP!294))) b!5164469))

(declare-fun b!5164470 () Bool)

(declare-fun e!3217902 () Bool)

(declare-fun tp!1448633 () Bool)

(declare-fun tp!1448634 () Bool)

(assert (=> b!5164470 (= e!3217902 (and tp!1448633 tp!1448634))))

(assert (=> b!5164364 (= tp!1448603 e!3217902)))

(assert (= (and b!5164364 (is-Cons!59944 (exprs!4440 setElem!31518))) b!5164470))

(declare-fun b!5164471 () Bool)

(declare-fun e!3217903 () Bool)

(declare-fun tp!1448635 () Bool)

(assert (=> b!5164471 (= e!3217903 (and tp_is_empty!38365 tp!1448635))))

(assert (=> b!5164362 (= tp!1448601 e!3217903)))

(assert (= (and b!5164362 (is-Cons!59943 (t!373220 input!5817))) b!5164471))

(declare-fun condSetEmpty!31527 () Bool)

(assert (=> setNonEmpty!31517 (= condSetEmpty!31527 (= setRest!31518 (as set.empty (Set Context!7880))))))

(declare-fun setRes!31527 () Bool)

(assert (=> setNonEmpty!31517 (= tp!1448604 setRes!31527)))

(declare-fun setIsEmpty!31527 () Bool)

(assert (=> setIsEmpty!31527 setRes!31527))

(declare-fun setNonEmpty!31527 () Bool)

(declare-fun setElem!31527 () Context!7880)

(declare-fun tp!1448641 () Bool)

(declare-fun e!3217906 () Bool)

(assert (=> setNonEmpty!31527 (= setRes!31527 (and tp!1448641 (inv!79638 setElem!31527) e!3217906))))

(declare-fun setRest!31527 () (Set Context!7880))

(assert (=> setNonEmpty!31527 (= setRest!31518 (set.union (set.insert setElem!31527 (as set.empty (Set Context!7880))) setRest!31527))))

(declare-fun b!5164476 () Bool)

(declare-fun tp!1448640 () Bool)

(assert (=> b!5164476 (= e!3217906 tp!1448640)))

(assert (= (and setNonEmpty!31517 condSetEmpty!31527) setIsEmpty!31527))

(assert (= (and setNonEmpty!31517 (not condSetEmpty!31527)) setNonEmpty!31527))

(assert (= setNonEmpty!31527 b!5164476))

(declare-fun m!6215034 () Bool)

(assert (=> setNonEmpty!31527 m!6215034))

(declare-fun condSetEmpty!31528 () Bool)

(assert (=> setNonEmpty!31518 (= condSetEmpty!31528 (= setRest!31517 (as set.empty (Set Context!7880))))))

(declare-fun setRes!31528 () Bool)

(assert (=> setNonEmpty!31518 (= tp!1448605 setRes!31528)))

(declare-fun setIsEmpty!31528 () Bool)

(assert (=> setIsEmpty!31528 setRes!31528))

(declare-fun setElem!31528 () Context!7880)

(declare-fun setNonEmpty!31528 () Bool)

(declare-fun e!3217907 () Bool)

(declare-fun tp!1448643 () Bool)

(assert (=> setNonEmpty!31528 (= setRes!31528 (and tp!1448643 (inv!79638 setElem!31528) e!3217907))))

(declare-fun setRest!31528 () (Set Context!7880))

(assert (=> setNonEmpty!31528 (= setRest!31517 (set.union (set.insert setElem!31528 (as set.empty (Set Context!7880))) setRest!31528))))

(declare-fun b!5164477 () Bool)

(declare-fun tp!1448642 () Bool)

(assert (=> b!5164477 (= e!3217907 tp!1448642)))

(assert (= (and setNonEmpty!31518 condSetEmpty!31528) setIsEmpty!31528))

(assert (= (and setNonEmpty!31518 (not condSetEmpty!31528)) setNonEmpty!31528))

(assert (= setNonEmpty!31528 b!5164477))

(declare-fun m!6215036 () Bool)

(assert (=> setNonEmpty!31528 m!6215036))

(push 1)

(assert (not setNonEmpty!31528))

(assert (not b!5164431))

(assert (not bm!362205))

(assert (not d!1666328))

(assert (not bm!362206))

(assert (not b!5164457))

(assert (not b!5164470))

(assert (not b!5164469))

(assert (not b!5164464))

(assert (not b!5164446))

(assert (not setNonEmpty!31527))

(assert (not b!5164459))

(assert (not b!5164477))

(assert tp_is_empty!38365)

(assert (not bm!362202))

(assert (not b!5164476))

(assert (not bm!362203))

(assert (not d!1666330))

(assert (not d!1666332))

(assert (not b!5164441))

(assert (not b!5164424))

(assert (not b!5164421))

(assert (not b!5164429))

(assert (not b!5164390))

(assert (not b!5164439))

(assert (not b!5164471))

(assert (not d!1666334))

(assert (not bm!362199))

(assert (not bm!362204))

(assert (not b!5164458))

(assert (not bm!362200))

(assert (not bm!362201))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

