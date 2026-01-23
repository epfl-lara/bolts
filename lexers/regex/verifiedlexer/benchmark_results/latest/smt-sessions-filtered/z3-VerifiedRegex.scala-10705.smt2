; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!548188 () Bool)

(assert start!548188)

(declare-fun b!5176626 () Bool)

(declare-fun e!3225533 () Bool)

(declare-fun tp_is_empty!38567 () Bool)

(declare-fun tp!1452196 () Bool)

(assert (=> b!5176626 (= e!3225533 (and tp_is_empty!38567 tp!1452196))))

(declare-fun b!5176627 () Bool)

(declare-fun res!2199796 () Bool)

(declare-fun e!3225532 () Bool)

(assert (=> b!5176627 (=> (not res!2199796) (not e!3225532))))

(declare-datatypes ((C!29584 0))(
  ( (C!29585 (val!24494 Int)) )
))
(declare-datatypes ((List!60287 0))(
  ( (Nil!60163) (Cons!60163 (h!66611 C!29584) (t!373440 List!60287)) )
))
(declare-fun testedP!294 () List!60287)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14657 0))(
  ( (ElementMatch!14657 (c!891548 C!29584)) (Concat!23502 (regOne!29826 Regex!14657) (regTwo!29826 Regex!14657)) (EmptyExpr!14657) (Star!14657 (reg!14986 Regex!14657)) (EmptyLang!14657) (Union!14657 (regOne!29827 Regex!14657) (regTwo!29827 Regex!14657)) )
))
(declare-datatypes ((List!60288 0))(
  ( (Nil!60164) (Cons!60164 (h!66612 Regex!14657) (t!373441 List!60288)) )
))
(declare-datatypes ((Context!8082 0))(
  ( (Context!8083 (exprs!4541 List!60288)) )
))
(declare-fun z!4581 () (InoxSet Context!8082))

(declare-fun baseZ!62 () (InoxSet Context!8082))

(declare-fun derivationZipper!280 ((InoxSet Context!8082) List!60287) (InoxSet Context!8082))

(assert (=> b!5176627 (= res!2199796 (= (derivationZipper!280 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5176628 () Bool)

(declare-fun e!3225529 () Bool)

(declare-fun tp!1452194 () Bool)

(assert (=> b!5176628 (= e!3225529 tp!1452194)))

(declare-fun b!5176629 () Bool)

(declare-datatypes ((Unit!151998 0))(
  ( (Unit!151999) )
))
(declare-fun e!3225528 () Unit!151998)

(declare-fun Unit!152000 () Unit!151998)

(assert (=> b!5176629 (= e!3225528 Unit!152000)))

(declare-fun setRes!32333 () Bool)

(declare-fun setNonEmpty!32333 () Bool)

(declare-fun setElem!32333 () Context!8082)

(declare-fun tp!1452197 () Bool)

(declare-fun inv!79889 (Context!8082) Bool)

(assert (=> setNonEmpty!32333 (= setRes!32333 (and tp!1452197 (inv!79889 setElem!32333) e!3225529))))

(declare-fun setRest!32334 () (InoxSet Context!8082))

(assert (=> setNonEmpty!32333 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8082 Bool)) false) setElem!32333 true) setRest!32334))))

(declare-fun b!5176630 () Bool)

(declare-fun e!3225531 () Bool)

(declare-datatypes ((tuple2!63864 0))(
  ( (tuple2!63865 (_1!35235 List!60287) (_2!35235 List!60287)) )
))
(declare-fun lt!2132877 () tuple2!63864)

(declare-fun matchZipper!987 ((InoxSet Context!8082) List!60287) Bool)

(assert (=> b!5176630 (= e!3225531 (matchZipper!987 baseZ!62 (_1!35235 lt!2132877)))))

(declare-fun res!2199794 () Bool)

(assert (=> start!548188 (=> (not res!2199794) (not e!3225532))))

(declare-fun input!5817 () List!60287)

(declare-fun isPrefix!5790 (List!60287 List!60287) Bool)

(assert (=> start!548188 (= res!2199794 (isPrefix!5790 testedP!294 input!5817))))

(assert (=> start!548188 e!3225532))

(declare-fun e!3225536 () Bool)

(assert (=> start!548188 e!3225536))

(assert (=> start!548188 e!3225533))

(declare-fun condSetEmpty!32333 () Bool)

(assert (=> start!548188 (= condSetEmpty!32333 (= baseZ!62 ((as const (Array Context!8082 Bool)) false)))))

(assert (=> start!548188 setRes!32333))

(declare-fun condSetEmpty!32334 () Bool)

(assert (=> start!548188 (= condSetEmpty!32334 (= z!4581 ((as const (Array Context!8082 Bool)) false)))))

(declare-fun setRes!32334 () Bool)

(assert (=> start!548188 setRes!32334))

(declare-fun b!5176631 () Bool)

(declare-fun e!3225535 () Bool)

(declare-fun e!3225534 () Bool)

(assert (=> b!5176631 (= e!3225535 e!3225534)))

(declare-fun res!2199793 () Bool)

(assert (=> b!5176631 (=> res!2199793 e!3225534)))

(declare-fun lt!2132889 () Int)

(declare-fun lt!2132878 () (InoxSet Context!8082))

(declare-fun lt!2132885 () List!60287)

(declare-fun lt!2132880 () Int)

(declare-fun lt!2132884 () List!60287)

(declare-fun isEmpty!32211 (List!60287) Bool)

(declare-fun findLongestMatchInnerZipper!313 ((InoxSet Context!8082) List!60287 Int List!60287 List!60287 Int) tuple2!63864)

(declare-fun tail!10174 (List!60287) List!60287)

(assert (=> b!5176631 (= res!2199793 (isEmpty!32211 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (+ 1 lt!2132889) (tail!10174 lt!2132885) input!5817 lt!2132880))))))

(declare-fun lt!2132879 () C!29584)

(declare-fun derivationStepZipper!1003 ((InoxSet Context!8082) C!29584) (InoxSet Context!8082))

(assert (=> b!5176631 (= lt!2132878 (derivationStepZipper!1003 z!4581 lt!2132879))))

(declare-fun setElem!32334 () Context!8082)

(declare-fun tp!1452195 () Bool)

(declare-fun setNonEmpty!32334 () Bool)

(declare-fun e!3225530 () Bool)

(assert (=> setNonEmpty!32334 (= setRes!32334 (and tp!1452195 (inv!79889 setElem!32334) e!3225530))))

(declare-fun setRest!32333 () (InoxSet Context!8082))

(assert (=> setNonEmpty!32334 (= z!4581 ((_ map or) (store ((as const (Array Context!8082 Bool)) false) setElem!32334 true) setRest!32333))))

(declare-fun b!5176632 () Bool)

(declare-fun e!3225526 () Bool)

(assert (=> b!5176632 (= e!3225532 e!3225526)))

(declare-fun res!2199798 () Bool)

(assert (=> b!5176632 (=> (not res!2199798) (not e!3225526))))

(declare-fun lt!2132881 () tuple2!63864)

(assert (=> b!5176632 (= res!2199798 (not (isEmpty!32211 (_1!35235 lt!2132881))))))

(assert (=> b!5176632 (= lt!2132881 (findLongestMatchInnerZipper!313 z!4581 testedP!294 lt!2132889 lt!2132885 input!5817 lt!2132880))))

(declare-fun size!39693 (List!60287) Int)

(assert (=> b!5176632 (= lt!2132880 (size!39693 input!5817))))

(declare-fun getSuffix!3438 (List!60287 List!60287) List!60287)

(assert (=> b!5176632 (= lt!2132885 (getSuffix!3438 input!5817 testedP!294))))

(assert (=> b!5176632 (= lt!2132889 (size!39693 testedP!294))))

(declare-fun b!5176633 () Bool)

(declare-fun tp!1452199 () Bool)

(assert (=> b!5176633 (= e!3225530 tp!1452199)))

(declare-fun b!5176634 () Bool)

(declare-fun tp!1452198 () Bool)

(assert (=> b!5176634 (= e!3225536 (and tp_is_empty!38567 tp!1452198))))

(declare-fun b!5176635 () Bool)

(declare-fun e!3225527 () Bool)

(assert (=> b!5176635 (= e!3225526 (not e!3225527))))

(declare-fun res!2199792 () Bool)

(assert (=> b!5176635 (=> res!2199792 e!3225527)))

(assert (=> b!5176635 (= res!2199792 (>= lt!2132889 lt!2132880))))

(declare-fun lt!2132888 () Unit!151998)

(assert (=> b!5176635 (= lt!2132888 e!3225528)))

(declare-fun c!891547 () Bool)

(assert (=> b!5176635 (= c!891547 (= lt!2132889 lt!2132880))))

(assert (=> b!5176635 (<= lt!2132889 lt!2132880)))

(declare-fun lt!2132890 () Unit!151998)

(declare-fun lemmaIsPrefixThenSmallerEqSize!951 (List!60287 List!60287) Unit!151998)

(assert (=> b!5176635 (= lt!2132890 (lemmaIsPrefixThenSmallerEqSize!951 testedP!294 input!5817))))

(declare-fun setIsEmpty!32333 () Bool)

(assert (=> setIsEmpty!32333 setRes!32334))

(declare-fun b!5176636 () Bool)

(assert (=> b!5176636 (= e!3225534 (matchZipper!987 baseZ!62 (_1!35235 lt!2132881)))))

(assert (=> b!5176636 e!3225531))

(declare-fun res!2199791 () Bool)

(assert (=> b!5176636 (=> res!2199791 e!3225531)))

(assert (=> b!5176636 (= res!2199791 (isEmpty!32211 (_1!35235 lt!2132877)))))

(assert (=> b!5176636 (= lt!2132877 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 lt!2132880))))

(declare-fun lt!2132887 () Unit!151998)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!29 ((InoxSet Context!8082) (InoxSet Context!8082) List!60287 List!60287) Unit!151998)

(assert (=> b!5176636 (= lt!2132887 (longestMatchIsAcceptedByMatchOrIsEmptyRec!29 baseZ!62 lt!2132878 lt!2132884 input!5817))))

(assert (=> b!5176636 (= (derivationZipper!280 baseZ!62 lt!2132884) lt!2132878)))

(declare-fun lt!2132882 () Unit!151998)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!113 ((InoxSet Context!8082) (InoxSet Context!8082) List!60287 C!29584) Unit!151998)

(assert (=> b!5176636 (= lt!2132882 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!113 baseZ!62 z!4581 testedP!294 lt!2132879))))

(declare-fun setIsEmpty!32334 () Bool)

(assert (=> setIsEmpty!32334 setRes!32333))

(declare-fun b!5176637 () Bool)

(declare-fun res!2199795 () Bool)

(assert (=> b!5176637 (=> (not res!2199795) (not e!3225526))))

(assert (=> b!5176637 (= res!2199795 (not (= testedP!294 input!5817)))))

(declare-fun b!5176638 () Bool)

(declare-fun Unit!152001 () Unit!151998)

(assert (=> b!5176638 (= e!3225528 Unit!152001)))

(declare-fun lt!2132886 () Unit!151998)

(declare-fun lemmaIsPrefixRefl!3795 (List!60287 List!60287) Unit!151998)

(assert (=> b!5176638 (= lt!2132886 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (=> b!5176638 (isPrefix!5790 input!5817 input!5817)))

(declare-fun lt!2132883 () Unit!151998)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1435 (List!60287 List!60287 List!60287) Unit!151998)

(assert (=> b!5176638 (= lt!2132883 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 testedP!294 input!5817))))

(assert (=> b!5176638 false))

(declare-fun b!5176639 () Bool)

(assert (=> b!5176639 (= e!3225527 e!3225535)))

(declare-fun res!2199797 () Bool)

(assert (=> b!5176639 (=> res!2199797 e!3225535)))

(declare-fun nullableZipper!1195 ((InoxSet Context!8082)) Bool)

(assert (=> b!5176639 (= res!2199797 (not (nullableZipper!1195 z!4581)))))

(assert (=> b!5176639 (isPrefix!5790 lt!2132884 input!5817)))

(declare-fun lt!2132876 () Unit!151998)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1095 (List!60287 List!60287) Unit!151998)

(assert (=> b!5176639 (= lt!2132876 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 testedP!294 input!5817))))

(declare-fun ++!13173 (List!60287 List!60287) List!60287)

(assert (=> b!5176639 (= lt!2132884 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163)))))

(declare-fun head!11075 (List!60287) C!29584)

(assert (=> b!5176639 (= lt!2132879 (head!11075 lt!2132885))))

(assert (= (and start!548188 res!2199794) b!5176627))

(assert (= (and b!5176627 res!2199796) b!5176632))

(assert (= (and b!5176632 res!2199798) b!5176637))

(assert (= (and b!5176637 res!2199795) b!5176635))

(assert (= (and b!5176635 c!891547) b!5176638))

(assert (= (and b!5176635 (not c!891547)) b!5176629))

(assert (= (and b!5176635 (not res!2199792)) b!5176639))

(assert (= (and b!5176639 (not res!2199797)) b!5176631))

(assert (= (and b!5176631 (not res!2199793)) b!5176636))

(assert (= (and b!5176636 (not res!2199791)) b!5176630))

(get-info :version)

(assert (= (and start!548188 ((_ is Cons!60163) testedP!294)) b!5176634))

(assert (= (and start!548188 ((_ is Cons!60163) input!5817)) b!5176626))

(assert (= (and start!548188 condSetEmpty!32333) setIsEmpty!32334))

(assert (= (and start!548188 (not condSetEmpty!32333)) setNonEmpty!32333))

(assert (= setNonEmpty!32333 b!5176628))

(assert (= (and start!548188 condSetEmpty!32334) setIsEmpty!32333))

(assert (= (and start!548188 (not condSetEmpty!32334)) setNonEmpty!32334))

(assert (= setNonEmpty!32334 b!5176633))

(declare-fun m!6232054 () Bool)

(assert (=> b!5176631 m!6232054))

(assert (=> b!5176631 m!6232054))

(declare-fun m!6232056 () Bool)

(assert (=> b!5176631 m!6232056))

(declare-fun m!6232058 () Bool)

(assert (=> b!5176631 m!6232058))

(declare-fun m!6232060 () Bool)

(assert (=> b!5176631 m!6232060))

(declare-fun m!6232062 () Bool)

(assert (=> b!5176635 m!6232062))

(declare-fun m!6232064 () Bool)

(assert (=> setNonEmpty!32334 m!6232064))

(declare-fun m!6232066 () Bool)

(assert (=> b!5176632 m!6232066))

(declare-fun m!6232068 () Bool)

(assert (=> b!5176632 m!6232068))

(declare-fun m!6232070 () Bool)

(assert (=> b!5176632 m!6232070))

(declare-fun m!6232072 () Bool)

(assert (=> b!5176632 m!6232072))

(declare-fun m!6232074 () Bool)

(assert (=> b!5176632 m!6232074))

(declare-fun m!6232076 () Bool)

(assert (=> b!5176639 m!6232076))

(declare-fun m!6232078 () Bool)

(assert (=> b!5176639 m!6232078))

(declare-fun m!6232080 () Bool)

(assert (=> b!5176639 m!6232080))

(declare-fun m!6232082 () Bool)

(assert (=> b!5176639 m!6232082))

(declare-fun m!6232084 () Bool)

(assert (=> b!5176639 m!6232084))

(declare-fun m!6232086 () Bool)

(assert (=> b!5176636 m!6232086))

(declare-fun m!6232088 () Bool)

(assert (=> b!5176636 m!6232088))

(declare-fun m!6232090 () Bool)

(assert (=> b!5176636 m!6232090))

(declare-fun m!6232092 () Bool)

(assert (=> b!5176636 m!6232092))

(declare-fun m!6232094 () Bool)

(assert (=> b!5176636 m!6232094))

(declare-fun m!6232096 () Bool)

(assert (=> b!5176636 m!6232096))

(assert (=> b!5176636 m!6232094))

(assert (=> b!5176636 m!6232090))

(declare-fun m!6232098 () Bool)

(assert (=> b!5176636 m!6232098))

(declare-fun m!6232100 () Bool)

(assert (=> b!5176636 m!6232100))

(declare-fun m!6232102 () Bool)

(assert (=> setNonEmpty!32333 m!6232102))

(declare-fun m!6232104 () Bool)

(assert (=> start!548188 m!6232104))

(declare-fun m!6232106 () Bool)

(assert (=> b!5176630 m!6232106))

(declare-fun m!6232108 () Bool)

(assert (=> b!5176638 m!6232108))

(declare-fun m!6232110 () Bool)

(assert (=> b!5176638 m!6232110))

(declare-fun m!6232112 () Bool)

(assert (=> b!5176638 m!6232112))

(declare-fun m!6232114 () Bool)

(assert (=> b!5176627 m!6232114))

(check-sat (not b!5176633) (not b!5176627) (not b!5176636) (not start!548188) (not b!5176638) (not b!5176631) (not setNonEmpty!32333) (not b!5176630) (not b!5176634) (not b!5176639) (not b!5176632) (not b!5176628) (not setNonEmpty!32334) tp_is_empty!38567 (not b!5176635) (not b!5176626))
(check-sat)
(get-model)

(declare-fun d!1671464 () Bool)

(declare-fun c!891551 () Bool)

(assert (=> d!1671464 (= c!891551 (isEmpty!32211 (_1!35235 lt!2132881)))))

(declare-fun e!3225539 () Bool)

(assert (=> d!1671464 (= (matchZipper!987 baseZ!62 (_1!35235 lt!2132881)) e!3225539)))

(declare-fun b!5176644 () Bool)

(assert (=> b!5176644 (= e!3225539 (nullableZipper!1195 baseZ!62))))

(declare-fun b!5176645 () Bool)

(assert (=> b!5176645 (= e!3225539 (matchZipper!987 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881))) (tail!10174 (_1!35235 lt!2132881))))))

(assert (= (and d!1671464 c!891551) b!5176644))

(assert (= (and d!1671464 (not c!891551)) b!5176645))

(assert (=> d!1671464 m!6232074))

(declare-fun m!6232116 () Bool)

(assert (=> b!5176644 m!6232116))

(declare-fun m!6232118 () Bool)

(assert (=> b!5176645 m!6232118))

(assert (=> b!5176645 m!6232118))

(declare-fun m!6232120 () Bool)

(assert (=> b!5176645 m!6232120))

(declare-fun m!6232122 () Bool)

(assert (=> b!5176645 m!6232122))

(assert (=> b!5176645 m!6232120))

(assert (=> b!5176645 m!6232122))

(declare-fun m!6232124 () Bool)

(assert (=> b!5176645 m!6232124))

(assert (=> b!5176636 d!1671464))

(declare-fun d!1671466 () Bool)

(declare-fun lt!2132893 () Int)

(assert (=> d!1671466 (>= lt!2132893 0)))

(declare-fun e!3225542 () Int)

(assert (=> d!1671466 (= lt!2132893 e!3225542)))

(declare-fun c!891554 () Bool)

(assert (=> d!1671466 (= c!891554 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1671466 (= (size!39693 lt!2132884) lt!2132893)))

(declare-fun b!5176650 () Bool)

(assert (=> b!5176650 (= e!3225542 0)))

(declare-fun b!5176651 () Bool)

(assert (=> b!5176651 (= e!3225542 (+ 1 (size!39693 (t!373440 lt!2132884))))))

(assert (= (and d!1671466 c!891554) b!5176650))

(assert (= (and d!1671466 (not c!891554)) b!5176651))

(declare-fun m!6232126 () Bool)

(assert (=> b!5176651 m!6232126))

(assert (=> b!5176636 d!1671466))

(declare-fun d!1671468 () Bool)

(assert (=> d!1671468 (= (isEmpty!32211 (_1!35235 lt!2132877)) ((_ is Nil!60163) (_1!35235 lt!2132877)))))

(assert (=> b!5176636 d!1671468))

(declare-fun d!1671470 () Bool)

(declare-fun e!3225545 () Bool)

(assert (=> d!1671470 e!3225545))

(declare-fun res!2199801 () Bool)

(assert (=> d!1671470 (=> res!2199801 e!3225545)))

(assert (=> d!1671470 (= res!2199801 (isEmpty!32211 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))))))

(declare-fun lt!2132896 () Unit!151998)

(declare-fun choose!38431 ((InoxSet Context!8082) (InoxSet Context!8082) List!60287 List!60287) Unit!151998)

(assert (=> d!1671470 (= lt!2132896 (choose!38431 baseZ!62 lt!2132878 lt!2132884 input!5817))))

(assert (=> d!1671470 (isPrefix!5790 lt!2132884 input!5817)))

(assert (=> d!1671470 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!29 baseZ!62 lt!2132878 lt!2132884 input!5817) lt!2132896)))

(declare-fun b!5176654 () Bool)

(assert (=> b!5176654 (= e!3225545 (matchZipper!987 baseZ!62 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))))))

(assert (= (and d!1671470 (not res!2199801)) b!5176654))

(declare-fun m!6232128 () Bool)

(assert (=> d!1671470 m!6232128))

(assert (=> d!1671470 m!6232094))

(assert (=> d!1671470 m!6232090))

(assert (=> d!1671470 m!6232070))

(declare-fun m!6232130 () Bool)

(assert (=> d!1671470 m!6232130))

(declare-fun m!6232132 () Bool)

(assert (=> d!1671470 m!6232132))

(assert (=> d!1671470 m!6232078))

(assert (=> d!1671470 m!6232070))

(assert (=> d!1671470 m!6232094))

(assert (=> d!1671470 m!6232090))

(assert (=> b!5176654 m!6232094))

(assert (=> b!5176654 m!6232090))

(assert (=> b!5176654 m!6232070))

(assert (=> b!5176654 m!6232130))

(declare-fun m!6232134 () Bool)

(assert (=> b!5176654 m!6232134))

(assert (=> b!5176654 m!6232070))

(assert (=> b!5176654 m!6232094))

(assert (=> b!5176654 m!6232090))

(assert (=> b!5176636 d!1671470))

(declare-fun d!1671474 () Bool)

(declare-fun lt!2132902 () List!60287)

(assert (=> d!1671474 (= (++!13173 lt!2132884 lt!2132902) input!5817)))

(declare-fun e!3225548 () List!60287)

(assert (=> d!1671474 (= lt!2132902 e!3225548)))

(declare-fun c!891557 () Bool)

(assert (=> d!1671474 (= c!891557 ((_ is Cons!60163) lt!2132884))))

(assert (=> d!1671474 (>= (size!39693 input!5817) (size!39693 lt!2132884))))

(assert (=> d!1671474 (= (getSuffix!3438 input!5817 lt!2132884) lt!2132902)))

(declare-fun b!5176659 () Bool)

(assert (=> b!5176659 (= e!3225548 (getSuffix!3438 (tail!10174 input!5817) (t!373440 lt!2132884)))))

(declare-fun b!5176660 () Bool)

(assert (=> b!5176660 (= e!3225548 input!5817)))

(assert (= (and d!1671474 c!891557) b!5176659))

(assert (= (and d!1671474 (not c!891557)) b!5176660))

(declare-fun m!6232138 () Bool)

(assert (=> d!1671474 m!6232138))

(assert (=> d!1671474 m!6232070))

(assert (=> d!1671474 m!6232094))

(declare-fun m!6232140 () Bool)

(assert (=> b!5176659 m!6232140))

(assert (=> b!5176659 m!6232140))

(declare-fun m!6232142 () Bool)

(assert (=> b!5176659 m!6232142))

(assert (=> b!5176636 d!1671474))

(declare-fun d!1671478 () Bool)

(declare-fun c!891560 () Bool)

(assert (=> d!1671478 (= c!891560 ((_ is Cons!60163) lt!2132884))))

(declare-fun e!3225557 () (InoxSet Context!8082))

(assert (=> d!1671478 (= (derivationZipper!280 baseZ!62 lt!2132884) e!3225557)))

(declare-fun b!5176673 () Bool)

(assert (=> b!5176673 (= e!3225557 (derivationZipper!280 (derivationStepZipper!1003 baseZ!62 (h!66611 lt!2132884)) (t!373440 lt!2132884)))))

(declare-fun b!5176674 () Bool)

(assert (=> b!5176674 (= e!3225557 baseZ!62)))

(assert (= (and d!1671478 c!891560) b!5176673))

(assert (= (and d!1671478 (not c!891560)) b!5176674))

(declare-fun m!6232144 () Bool)

(assert (=> b!5176673 m!6232144))

(assert (=> b!5176673 m!6232144))

(declare-fun m!6232146 () Bool)

(assert (=> b!5176673 m!6232146))

(assert (=> b!5176636 d!1671478))

(declare-fun d!1671480 () Bool)

(assert (=> d!1671480 (= (derivationZipper!280 baseZ!62 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) (derivationStepZipper!1003 z!4581 lt!2132879))))

(declare-fun lt!2132908 () Unit!151998)

(declare-fun choose!38432 ((InoxSet Context!8082) (InoxSet Context!8082) List!60287 C!29584) Unit!151998)

(assert (=> d!1671480 (= lt!2132908 (choose!38432 baseZ!62 z!4581 testedP!294 lt!2132879))))

(assert (=> d!1671480 (= (derivationZipper!280 baseZ!62 testedP!294) z!4581)))

(assert (=> d!1671480 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!113 baseZ!62 z!4581 testedP!294 lt!2132879) lt!2132908)))

(declare-fun bs!1204835 () Bool)

(assert (= bs!1204835 d!1671480))

(assert (=> bs!1204835 m!6232080))

(assert (=> bs!1204835 m!6232114))

(assert (=> bs!1204835 m!6232060))

(declare-fun m!6232154 () Bool)

(assert (=> bs!1204835 m!6232154))

(assert (=> bs!1204835 m!6232080))

(declare-fun m!6232156 () Bool)

(assert (=> bs!1204835 m!6232156))

(assert (=> b!5176636 d!1671480))

(declare-fun bm!363659 () Bool)

(declare-fun call!363664 () Bool)

(assert (=> bm!363659 (= call!363664 (nullableZipper!1195 lt!2132878))))

(declare-fun bm!363660 () Bool)

(declare-fun call!363671 () (InoxSet Context!8082))

(declare-fun call!363667 () C!29584)

(assert (=> bm!363660 (= call!363671 (derivationStepZipper!1003 lt!2132878 call!363667))))

(declare-fun b!5176711 () Bool)

(declare-fun e!3225580 () Unit!151998)

(declare-fun Unit!152002 () Unit!151998)

(assert (=> b!5176711 (= e!3225580 Unit!152002)))

(declare-fun b!5176712 () Bool)

(declare-fun e!3225586 () tuple2!63864)

(declare-fun e!3225581 () tuple2!63864)

(assert (=> b!5176712 (= e!3225586 e!3225581)))

(declare-fun lt!2132991 () tuple2!63864)

(declare-fun call!363670 () tuple2!63864)

(assert (=> b!5176712 (= lt!2132991 call!363670)))

(declare-fun c!891578 () Bool)

(assert (=> b!5176712 (= c!891578 (isEmpty!32211 (_1!35235 lt!2132991)))))

(declare-fun bm!363661 () Bool)

(declare-fun call!363668 () Unit!151998)

(assert (=> bm!363661 (= call!363668 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2132884 input!5817))))

(declare-fun b!5176713 () Bool)

(declare-fun e!3225584 () tuple2!63864)

(assert (=> b!5176713 (= e!3225584 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun b!5176714 () Bool)

(declare-fun e!3225583 () Bool)

(declare-fun lt!2132989 () tuple2!63864)

(assert (=> b!5176714 (= e!3225583 (>= (size!39693 (_1!35235 lt!2132989)) (size!39693 lt!2132884)))))

(declare-fun b!5176715 () Bool)

(declare-fun c!891577 () Bool)

(assert (=> b!5176715 (= c!891577 call!363664)))

(declare-fun lt!2132981 () Unit!151998)

(declare-fun lt!2132971 () Unit!151998)

(assert (=> b!5176715 (= lt!2132981 lt!2132971)))

(declare-fun lt!2132985 () List!60287)

(declare-fun lt!2132982 () C!29584)

(assert (=> b!5176715 (= (++!13173 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163)) lt!2132985) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1591 (List!60287 C!29584 List!60287 List!60287) Unit!151998)

(assert (=> b!5176715 (= lt!2132971 (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2132884 lt!2132982 lt!2132985 input!5817))))

(assert (=> b!5176715 (= lt!2132985 (tail!10174 (getSuffix!3438 input!5817 lt!2132884)))))

(assert (=> b!5176715 (= lt!2132982 (head!11075 (getSuffix!3438 input!5817 lt!2132884)))))

(declare-fun lt!2132984 () Unit!151998)

(declare-fun lt!2132973 () Unit!151998)

(assert (=> b!5176715 (= lt!2132984 lt!2132973)))

(assert (=> b!5176715 (isPrefix!5790 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)) input!5817)))

(assert (=> b!5176715 (= lt!2132973 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2132884 input!5817))))

(declare-fun lt!2132990 () List!60287)

(assert (=> b!5176715 (= lt!2132990 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))

(declare-fun lt!2132988 () Unit!151998)

(assert (=> b!5176715 (= lt!2132988 e!3225580)))

(declare-fun c!891579 () Bool)

(assert (=> b!5176715 (= c!891579 (= (size!39693 lt!2132884) (size!39693 input!5817)))))

(declare-fun lt!2132983 () Unit!151998)

(declare-fun lt!2132974 () Unit!151998)

(assert (=> b!5176715 (= lt!2132983 lt!2132974)))

(assert (=> b!5176715 (<= (size!39693 lt!2132884) (size!39693 input!5817))))

(assert (=> b!5176715 (= lt!2132974 (lemmaIsPrefixThenSmallerEqSize!951 lt!2132884 input!5817))))

(declare-fun e!3225587 () tuple2!63864)

(assert (=> b!5176715 (= e!3225587 e!3225586)))

(declare-fun b!5176716 () Bool)

(assert (=> b!5176716 (= e!3225584 e!3225587)))

(declare-fun c!891574 () Bool)

(assert (=> b!5176716 (= c!891574 (= (size!39693 lt!2132884) lt!2132880))))

(declare-fun b!5176717 () Bool)

(assert (=> b!5176717 (= e!3225581 lt!2132991)))

(declare-fun b!5176718 () Bool)

(declare-fun e!3225585 () tuple2!63864)

(assert (=> b!5176718 (= e!3225585 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun bm!363663 () Bool)

(declare-fun call!363669 () Bool)

(assert (=> bm!363663 (= call!363669 (isPrefix!5790 input!5817 input!5817))))

(declare-fun b!5176719 () Bool)

(assert (=> b!5176719 (= e!3225581 (tuple2!63865 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))

(declare-fun b!5176720 () Bool)

(declare-fun Unit!152003 () Unit!151998)

(assert (=> b!5176720 (= e!3225580 Unit!152003)))

(declare-fun lt!2132970 () Unit!151998)

(declare-fun call!363666 () Unit!151998)

(assert (=> b!5176720 (= lt!2132970 call!363666)))

(assert (=> b!5176720 call!363669))

(declare-fun lt!2132979 () Unit!151998)

(assert (=> b!5176720 (= lt!2132979 lt!2132970)))

(declare-fun lt!2132968 () Unit!151998)

(assert (=> b!5176720 (= lt!2132968 call!363668)))

(assert (=> b!5176720 (= input!5817 lt!2132884)))

(declare-fun lt!2132980 () Unit!151998)

(assert (=> b!5176720 (= lt!2132980 lt!2132968)))

(assert (=> b!5176720 false))

(declare-fun b!5176721 () Bool)

(declare-fun c!891576 () Bool)

(assert (=> b!5176721 (= c!891576 call!363664)))

(declare-fun lt!2132975 () Unit!151998)

(declare-fun lt!2132987 () Unit!151998)

(assert (=> b!5176721 (= lt!2132975 lt!2132987)))

(assert (=> b!5176721 (= input!5817 lt!2132884)))

(assert (=> b!5176721 (= lt!2132987 call!363668)))

(declare-fun lt!2132977 () Unit!151998)

(declare-fun lt!2132976 () Unit!151998)

(assert (=> b!5176721 (= lt!2132977 lt!2132976)))

(assert (=> b!5176721 call!363669))

(assert (=> b!5176721 (= lt!2132976 call!363666)))

(assert (=> b!5176721 (= e!3225587 e!3225585)))

(declare-fun b!5176722 () Bool)

(assert (=> b!5176722 (= e!3225586 call!363670)))

(declare-fun call!363665 () List!60287)

(declare-fun bm!363664 () Bool)

(assert (=> bm!363664 (= call!363670 (findLongestMatchInnerZipper!313 call!363671 lt!2132990 (+ (size!39693 lt!2132884) 1) call!363665 input!5817 lt!2132880))))

(declare-fun b!5176723 () Bool)

(declare-fun e!3225582 () Bool)

(assert (=> b!5176723 (= e!3225582 e!3225583)))

(declare-fun res!2199823 () Bool)

(assert (=> b!5176723 (=> res!2199823 e!3225583)))

(assert (=> b!5176723 (= res!2199823 (isEmpty!32211 (_1!35235 lt!2132989)))))

(declare-fun bm!363665 () Bool)

(assert (=> bm!363665 (= call!363667 (head!11075 (getSuffix!3438 input!5817 lt!2132884)))))

(declare-fun d!1671484 () Bool)

(assert (=> d!1671484 e!3225582))

(declare-fun res!2199822 () Bool)

(assert (=> d!1671484 (=> (not res!2199822) (not e!3225582))))

(assert (=> d!1671484 (= res!2199822 (= (++!13173 (_1!35235 lt!2132989) (_2!35235 lt!2132989)) input!5817))))

(assert (=> d!1671484 (= lt!2132989 e!3225584)))

(declare-fun c!891575 () Bool)

(declare-fun lostCauseZipper!1343 ((InoxSet Context!8082)) Bool)

(assert (=> d!1671484 (= c!891575 (lostCauseZipper!1343 lt!2132878))))

(declare-fun lt!2132978 () Unit!151998)

(declare-fun Unit!152004 () Unit!151998)

(assert (=> d!1671484 (= lt!2132978 Unit!152004)))

(assert (=> d!1671484 (= (getSuffix!3438 input!5817 lt!2132884) (getSuffix!3438 input!5817 lt!2132884))))

(declare-fun lt!2132986 () Unit!151998)

(declare-fun lt!2132992 () Unit!151998)

(assert (=> d!1671484 (= lt!2132986 lt!2132992)))

(declare-fun lt!2132993 () List!60287)

(assert (=> d!1671484 (= (getSuffix!3438 input!5817 lt!2132884) lt!2132993)))

(declare-fun lemmaSamePrefixThenSameSuffix!2710 (List!60287 List!60287 List!60287 List!60287 List!60287) Unit!151998)

(assert (=> d!1671484 (= lt!2132992 (lemmaSamePrefixThenSameSuffix!2710 lt!2132884 (getSuffix!3438 input!5817 lt!2132884) lt!2132884 lt!2132993 input!5817))))

(assert (=> d!1671484 (= lt!2132993 (getSuffix!3438 input!5817 lt!2132884))))

(declare-fun lt!2132972 () Unit!151998)

(declare-fun lt!2132969 () Unit!151998)

(assert (=> d!1671484 (= lt!2132972 lt!2132969)))

(assert (=> d!1671484 (isPrefix!5790 lt!2132884 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3604 (List!60287 List!60287) Unit!151998)

(assert (=> d!1671484 (= lt!2132969 (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))

(assert (=> d!1671484 (= (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)) input!5817)))

(assert (=> d!1671484 (= (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 lt!2132880) lt!2132989)))

(declare-fun bm!363662 () Bool)

(assert (=> bm!363662 (= call!363665 (tail!10174 (getSuffix!3438 input!5817 lt!2132884)))))

(declare-fun b!5176724 () Bool)

(assert (=> b!5176724 (= e!3225585 (tuple2!63865 lt!2132884 Nil!60163))))

(declare-fun bm!363666 () Bool)

(assert (=> bm!363666 (= call!363666 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (= (and d!1671484 c!891575) b!5176713))

(assert (= (and d!1671484 (not c!891575)) b!5176716))

(assert (= (and b!5176716 c!891574) b!5176721))

(assert (= (and b!5176716 (not c!891574)) b!5176715))

(assert (= (and b!5176721 c!891576) b!5176724))

(assert (= (and b!5176721 (not c!891576)) b!5176718))

(assert (= (and b!5176715 c!891579) b!5176720))

(assert (= (and b!5176715 (not c!891579)) b!5176711))

(assert (= (and b!5176715 c!891577) b!5176712))

(assert (= (and b!5176715 (not c!891577)) b!5176722))

(assert (= (and b!5176712 c!891578) b!5176719))

(assert (= (and b!5176712 (not c!891578)) b!5176717))

(assert (= (or b!5176712 b!5176722) bm!363662))

(assert (= (or b!5176712 b!5176722) bm!363665))

(assert (= (or b!5176712 b!5176722) bm!363660))

(assert (= (or b!5176712 b!5176722) bm!363664))

(assert (= (or b!5176721 b!5176720) bm!363666))

(assert (= (or b!5176721 b!5176715) bm!363659))

(assert (= (or b!5176721 b!5176720) bm!363663))

(assert (= (or b!5176721 b!5176720) bm!363661))

(assert (= (and d!1671484 res!2199822) b!5176723))

(assert (= (and b!5176723 (not res!2199823)) b!5176714))

(declare-fun m!6232168 () Bool)

(assert (=> bm!363661 m!6232168))

(assert (=> bm!363666 m!6232108))

(declare-fun m!6232170 () Bool)

(assert (=> b!5176712 m!6232170))

(declare-fun m!6232172 () Bool)

(assert (=> b!5176714 m!6232172))

(assert (=> b!5176714 m!6232094))

(declare-fun m!6232174 () Bool)

(assert (=> bm!363659 m!6232174))

(assert (=> bm!363662 m!6232090))

(declare-fun m!6232176 () Bool)

(assert (=> bm!363662 m!6232176))

(assert (=> bm!363663 m!6232110))

(declare-fun m!6232178 () Bool)

(assert (=> bm!363660 m!6232178))

(declare-fun m!6232180 () Bool)

(assert (=> b!5176723 m!6232180))

(assert (=> b!5176715 m!6232090))

(declare-fun m!6232182 () Bool)

(assert (=> b!5176715 m!6232182))

(assert (=> b!5176715 m!6232090))

(assert (=> b!5176715 m!6232176))

(assert (=> b!5176715 m!6232070))

(declare-fun m!6232184 () Bool)

(assert (=> b!5176715 m!6232184))

(declare-fun m!6232186 () Bool)

(assert (=> b!5176715 m!6232186))

(declare-fun m!6232188 () Bool)

(assert (=> b!5176715 m!6232188))

(declare-fun m!6232190 () Bool)

(assert (=> b!5176715 m!6232190))

(assert (=> b!5176715 m!6232090))

(assert (=> b!5176715 m!6232182))

(declare-fun m!6232192 () Bool)

(assert (=> b!5176715 m!6232192))

(assert (=> b!5176715 m!6232090))

(declare-fun m!6232194 () Bool)

(assert (=> b!5176715 m!6232194))

(assert (=> b!5176715 m!6232194))

(declare-fun m!6232196 () Bool)

(assert (=> b!5176715 m!6232196))

(assert (=> b!5176715 m!6232194))

(assert (=> b!5176715 m!6232186))

(assert (=> b!5176715 m!6232094))

(declare-fun m!6232198 () Bool)

(assert (=> bm!363664 m!6232198))

(declare-fun m!6232200 () Bool)

(assert (=> d!1671484 m!6232200))

(declare-fun m!6232202 () Bool)

(assert (=> d!1671484 m!6232202))

(declare-fun m!6232204 () Bool)

(assert (=> d!1671484 m!6232204))

(assert (=> d!1671484 m!6232090))

(assert (=> d!1671484 m!6232090))

(declare-fun m!6232206 () Bool)

(assert (=> d!1671484 m!6232206))

(assert (=> d!1671484 m!6232090))

(declare-fun m!6232208 () Bool)

(assert (=> d!1671484 m!6232208))

(assert (=> d!1671484 m!6232090))

(assert (=> d!1671484 m!6232202))

(declare-fun m!6232210 () Bool)

(assert (=> d!1671484 m!6232210))

(assert (=> bm!363665 m!6232090))

(assert (=> bm!363665 m!6232182))

(assert (=> b!5176636 d!1671484))

(declare-fun d!1671494 () Bool)

(declare-fun lt!2133030 () Int)

(assert (=> d!1671494 (>= lt!2133030 0)))

(declare-fun e!3225596 () Int)

(assert (=> d!1671494 (= lt!2133030 e!3225596)))

(declare-fun c!891588 () Bool)

(assert (=> d!1671494 (= c!891588 ((_ is Nil!60163) input!5817))))

(assert (=> d!1671494 (= (size!39693 input!5817) lt!2133030)))

(declare-fun b!5176741 () Bool)

(assert (=> b!5176741 (= e!3225596 0)))

(declare-fun b!5176742 () Bool)

(assert (=> b!5176742 (= e!3225596 (+ 1 (size!39693 (t!373440 input!5817))))))

(assert (= (and d!1671494 c!891588) b!5176741))

(assert (= (and d!1671494 (not c!891588)) b!5176742))

(declare-fun m!6232212 () Bool)

(assert (=> b!5176742 m!6232212))

(assert (=> b!5176632 d!1671494))

(declare-fun bm!363667 () Bool)

(declare-fun call!363672 () Bool)

(assert (=> bm!363667 (= call!363672 (nullableZipper!1195 z!4581))))

(declare-fun bm!363668 () Bool)

(declare-fun call!363679 () (InoxSet Context!8082))

(declare-fun call!363675 () C!29584)

(assert (=> bm!363668 (= call!363679 (derivationStepZipper!1003 z!4581 call!363675))))

(declare-fun b!5176743 () Bool)

(declare-fun e!3225597 () Unit!151998)

(declare-fun Unit!152005 () Unit!151998)

(assert (=> b!5176743 (= e!3225597 Unit!152005)))

(declare-fun b!5176744 () Bool)

(declare-fun e!3225603 () tuple2!63864)

(declare-fun e!3225598 () tuple2!63864)

(assert (=> b!5176744 (= e!3225603 e!3225598)))

(declare-fun lt!2133056 () tuple2!63864)

(declare-fun call!363678 () tuple2!63864)

(assert (=> b!5176744 (= lt!2133056 call!363678)))

(declare-fun c!891593 () Bool)

(assert (=> b!5176744 (= c!891593 (isEmpty!32211 (_1!35235 lt!2133056)))))

(declare-fun bm!363669 () Bool)

(declare-fun call!363676 () Unit!151998)

(assert (=> bm!363669 (= call!363676 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 testedP!294 input!5817))))

(declare-fun b!5176745 () Bool)

(declare-fun e!3225601 () tuple2!63864)

(assert (=> b!5176745 (= e!3225601 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun b!5176746 () Bool)

(declare-fun e!3225600 () Bool)

(declare-fun lt!2133054 () tuple2!63864)

(assert (=> b!5176746 (= e!3225600 (>= (size!39693 (_1!35235 lt!2133054)) (size!39693 testedP!294)))))

(declare-fun b!5176747 () Bool)

(declare-fun c!891592 () Bool)

(assert (=> b!5176747 (= c!891592 call!363672)))

(declare-fun lt!2133046 () Unit!151998)

(declare-fun lt!2133036 () Unit!151998)

(assert (=> b!5176747 (= lt!2133046 lt!2133036)))

(declare-fun lt!2133047 () C!29584)

(declare-fun lt!2133050 () List!60287)

(assert (=> b!5176747 (= (++!13173 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163)) lt!2133050) input!5817)))

(assert (=> b!5176747 (= lt!2133036 (lemmaMoveElementToOtherListKeepsConcatEq!1591 testedP!294 lt!2133047 lt!2133050 input!5817))))

(assert (=> b!5176747 (= lt!2133050 (tail!10174 lt!2132885))))

(assert (=> b!5176747 (= lt!2133047 (head!11075 lt!2132885))))

(declare-fun lt!2133049 () Unit!151998)

(declare-fun lt!2133038 () Unit!151998)

(assert (=> b!5176747 (= lt!2133049 lt!2133038)))

(assert (=> b!5176747 (isPrefix!5790 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)) input!5817)))

(assert (=> b!5176747 (= lt!2133038 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 testedP!294 input!5817))))

(declare-fun lt!2133055 () List!60287)

(assert (=> b!5176747 (= lt!2133055 (++!13173 testedP!294 (Cons!60163 (head!11075 lt!2132885) Nil!60163)))))

(declare-fun lt!2133053 () Unit!151998)

(assert (=> b!5176747 (= lt!2133053 e!3225597)))

(declare-fun c!891594 () Bool)

(assert (=> b!5176747 (= c!891594 (= (size!39693 testedP!294) (size!39693 input!5817)))))

(declare-fun lt!2133048 () Unit!151998)

(declare-fun lt!2133039 () Unit!151998)

(assert (=> b!5176747 (= lt!2133048 lt!2133039)))

(assert (=> b!5176747 (<= (size!39693 testedP!294) (size!39693 input!5817))))

(assert (=> b!5176747 (= lt!2133039 (lemmaIsPrefixThenSmallerEqSize!951 testedP!294 input!5817))))

(declare-fun e!3225604 () tuple2!63864)

(assert (=> b!5176747 (= e!3225604 e!3225603)))

(declare-fun b!5176748 () Bool)

(assert (=> b!5176748 (= e!3225601 e!3225604)))

(declare-fun c!891589 () Bool)

(assert (=> b!5176748 (= c!891589 (= lt!2132889 lt!2132880))))

(declare-fun b!5176749 () Bool)

(assert (=> b!5176749 (= e!3225598 lt!2133056)))

(declare-fun b!5176750 () Bool)

(declare-fun e!3225602 () tuple2!63864)

(assert (=> b!5176750 (= e!3225602 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun bm!363671 () Bool)

(declare-fun call!363677 () Bool)

(assert (=> bm!363671 (= call!363677 (isPrefix!5790 input!5817 input!5817))))

(declare-fun b!5176751 () Bool)

(assert (=> b!5176751 (= e!3225598 (tuple2!63865 testedP!294 lt!2132885))))

(declare-fun b!5176752 () Bool)

(declare-fun Unit!152008 () Unit!151998)

(assert (=> b!5176752 (= e!3225597 Unit!152008)))

(declare-fun lt!2133035 () Unit!151998)

(declare-fun call!363674 () Unit!151998)

(assert (=> b!5176752 (= lt!2133035 call!363674)))

(assert (=> b!5176752 call!363677))

(declare-fun lt!2133044 () Unit!151998)

(assert (=> b!5176752 (= lt!2133044 lt!2133035)))

(declare-fun lt!2133033 () Unit!151998)

(assert (=> b!5176752 (= lt!2133033 call!363676)))

(assert (=> b!5176752 (= input!5817 testedP!294)))

(declare-fun lt!2133045 () Unit!151998)

(assert (=> b!5176752 (= lt!2133045 lt!2133033)))

(assert (=> b!5176752 false))

(declare-fun b!5176753 () Bool)

(declare-fun c!891591 () Bool)

(assert (=> b!5176753 (= c!891591 call!363672)))

(declare-fun lt!2133040 () Unit!151998)

(declare-fun lt!2133052 () Unit!151998)

(assert (=> b!5176753 (= lt!2133040 lt!2133052)))

(assert (=> b!5176753 (= input!5817 testedP!294)))

(assert (=> b!5176753 (= lt!2133052 call!363676)))

(declare-fun lt!2133042 () Unit!151998)

(declare-fun lt!2133041 () Unit!151998)

(assert (=> b!5176753 (= lt!2133042 lt!2133041)))

(assert (=> b!5176753 call!363677))

(assert (=> b!5176753 (= lt!2133041 call!363674)))

(assert (=> b!5176753 (= e!3225604 e!3225602)))

(declare-fun b!5176754 () Bool)

(assert (=> b!5176754 (= e!3225603 call!363678)))

(declare-fun call!363673 () List!60287)

(declare-fun bm!363672 () Bool)

(assert (=> bm!363672 (= call!363678 (findLongestMatchInnerZipper!313 call!363679 lt!2133055 (+ lt!2132889 1) call!363673 input!5817 lt!2132880))))

(declare-fun b!5176755 () Bool)

(declare-fun e!3225599 () Bool)

(assert (=> b!5176755 (= e!3225599 e!3225600)))

(declare-fun res!2199825 () Bool)

(assert (=> b!5176755 (=> res!2199825 e!3225600)))

(assert (=> b!5176755 (= res!2199825 (isEmpty!32211 (_1!35235 lt!2133054)))))

(declare-fun bm!363673 () Bool)

(assert (=> bm!363673 (= call!363675 (head!11075 lt!2132885))))

(declare-fun d!1671496 () Bool)

(assert (=> d!1671496 e!3225599))

(declare-fun res!2199824 () Bool)

(assert (=> d!1671496 (=> (not res!2199824) (not e!3225599))))

(assert (=> d!1671496 (= res!2199824 (= (++!13173 (_1!35235 lt!2133054) (_2!35235 lt!2133054)) input!5817))))

(assert (=> d!1671496 (= lt!2133054 e!3225601)))

(declare-fun c!891590 () Bool)

(assert (=> d!1671496 (= c!891590 (lostCauseZipper!1343 z!4581))))

(declare-fun lt!2133043 () Unit!151998)

(declare-fun Unit!152009 () Unit!151998)

(assert (=> d!1671496 (= lt!2133043 Unit!152009)))

(assert (=> d!1671496 (= (getSuffix!3438 input!5817 testedP!294) lt!2132885)))

(declare-fun lt!2133051 () Unit!151998)

(declare-fun lt!2133057 () Unit!151998)

(assert (=> d!1671496 (= lt!2133051 lt!2133057)))

(declare-fun lt!2133058 () List!60287)

(assert (=> d!1671496 (= lt!2132885 lt!2133058)))

(assert (=> d!1671496 (= lt!2133057 (lemmaSamePrefixThenSameSuffix!2710 testedP!294 lt!2132885 testedP!294 lt!2133058 input!5817))))

(assert (=> d!1671496 (= lt!2133058 (getSuffix!3438 input!5817 testedP!294))))

(declare-fun lt!2133037 () Unit!151998)

(declare-fun lt!2133034 () Unit!151998)

(assert (=> d!1671496 (= lt!2133037 lt!2133034)))

(assert (=> d!1671496 (isPrefix!5790 testedP!294 (++!13173 testedP!294 lt!2132885))))

(assert (=> d!1671496 (= lt!2133034 (lemmaConcatTwoListThenFirstIsPrefix!3604 testedP!294 lt!2132885))))

(assert (=> d!1671496 (= (++!13173 testedP!294 lt!2132885) input!5817)))

(assert (=> d!1671496 (= (findLongestMatchInnerZipper!313 z!4581 testedP!294 lt!2132889 lt!2132885 input!5817 lt!2132880) lt!2133054)))

(declare-fun bm!363670 () Bool)

(assert (=> bm!363670 (= call!363673 (tail!10174 lt!2132885))))

(declare-fun b!5176756 () Bool)

(assert (=> b!5176756 (= e!3225602 (tuple2!63865 testedP!294 Nil!60163))))

(declare-fun bm!363674 () Bool)

(assert (=> bm!363674 (= call!363674 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (= (and d!1671496 c!891590) b!5176745))

(assert (= (and d!1671496 (not c!891590)) b!5176748))

(assert (= (and b!5176748 c!891589) b!5176753))

(assert (= (and b!5176748 (not c!891589)) b!5176747))

(assert (= (and b!5176753 c!891591) b!5176756))

(assert (= (and b!5176753 (not c!891591)) b!5176750))

(assert (= (and b!5176747 c!891594) b!5176752))

(assert (= (and b!5176747 (not c!891594)) b!5176743))

(assert (= (and b!5176747 c!891592) b!5176744))

(assert (= (and b!5176747 (not c!891592)) b!5176754))

(assert (= (and b!5176744 c!891593) b!5176751))

(assert (= (and b!5176744 (not c!891593)) b!5176749))

(assert (= (or b!5176744 b!5176754) bm!363670))

(assert (= (or b!5176744 b!5176754) bm!363673))

(assert (= (or b!5176744 b!5176754) bm!363668))

(assert (= (or b!5176744 b!5176754) bm!363672))

(assert (= (or b!5176753 b!5176752) bm!363674))

(assert (= (or b!5176753 b!5176747) bm!363667))

(assert (= (or b!5176753 b!5176752) bm!363671))

(assert (= (or b!5176753 b!5176752) bm!363669))

(assert (= (and d!1671496 res!2199824) b!5176755))

(assert (= (and b!5176755 (not res!2199825)) b!5176746))

(assert (=> bm!363669 m!6232112))

(assert (=> bm!363674 m!6232108))

(declare-fun m!6232214 () Bool)

(assert (=> b!5176744 m!6232214))

(declare-fun m!6232216 () Bool)

(assert (=> b!5176746 m!6232216))

(assert (=> b!5176746 m!6232066))

(assert (=> bm!363667 m!6232084))

(assert (=> bm!363670 m!6232054))

(assert (=> bm!363671 m!6232110))

(declare-fun m!6232218 () Bool)

(assert (=> bm!363668 m!6232218))

(declare-fun m!6232220 () Bool)

(assert (=> b!5176755 m!6232220))

(assert (=> b!5176747 m!6232082))

(assert (=> b!5176747 m!6232054))

(assert (=> b!5176747 m!6232070))

(declare-fun m!6232222 () Bool)

(assert (=> b!5176747 m!6232222))

(declare-fun m!6232224 () Bool)

(assert (=> b!5176747 m!6232224))

(declare-fun m!6232226 () Bool)

(assert (=> b!5176747 m!6232226))

(assert (=> b!5176747 m!6232062))

(assert (=> b!5176747 m!6232068))

(declare-fun m!6232228 () Bool)

(assert (=> b!5176747 m!6232228))

(assert (=> b!5176747 m!6232076))

(assert (=> b!5176747 m!6232068))

(declare-fun m!6232230 () Bool)

(assert (=> b!5176747 m!6232230))

(declare-fun m!6232232 () Bool)

(assert (=> b!5176747 m!6232232))

(declare-fun m!6232234 () Bool)

(assert (=> b!5176747 m!6232234))

(assert (=> b!5176747 m!6232232))

(assert (=> b!5176747 m!6232224))

(assert (=> b!5176747 m!6232066))

(declare-fun m!6232236 () Bool)

(assert (=> bm!363672 m!6232236))

(declare-fun m!6232238 () Bool)

(assert (=> d!1671496 m!6232238))

(declare-fun m!6232240 () Bool)

(assert (=> d!1671496 m!6232240))

(declare-fun m!6232242 () Bool)

(assert (=> d!1671496 m!6232242))

(assert (=> d!1671496 m!6232068))

(declare-fun m!6232244 () Bool)

(assert (=> d!1671496 m!6232244))

(declare-fun m!6232246 () Bool)

(assert (=> d!1671496 m!6232246))

(assert (=> d!1671496 m!6232240))

(declare-fun m!6232248 () Bool)

(assert (=> d!1671496 m!6232248))

(assert (=> bm!363673 m!6232082))

(assert (=> b!5176632 d!1671496))

(declare-fun d!1671498 () Bool)

(declare-fun lt!2133073 () List!60287)

(assert (=> d!1671498 (= (++!13173 testedP!294 lt!2133073) input!5817)))

(declare-fun e!3225609 () List!60287)

(assert (=> d!1671498 (= lt!2133073 e!3225609)))

(declare-fun c!891599 () Bool)

(assert (=> d!1671498 (= c!891599 ((_ is Cons!60163) testedP!294))))

(assert (=> d!1671498 (>= (size!39693 input!5817) (size!39693 testedP!294))))

(assert (=> d!1671498 (= (getSuffix!3438 input!5817 testedP!294) lt!2133073)))

(declare-fun b!5176765 () Bool)

(assert (=> b!5176765 (= e!3225609 (getSuffix!3438 (tail!10174 input!5817) (t!373440 testedP!294)))))

(declare-fun b!5176766 () Bool)

(assert (=> b!5176766 (= e!3225609 input!5817)))

(assert (= (and d!1671498 c!891599) b!5176765))

(assert (= (and d!1671498 (not c!891599)) b!5176766))

(declare-fun m!6232250 () Bool)

(assert (=> d!1671498 m!6232250))

(assert (=> d!1671498 m!6232070))

(assert (=> d!1671498 m!6232066))

(assert (=> b!5176765 m!6232140))

(assert (=> b!5176765 m!6232140))

(declare-fun m!6232252 () Bool)

(assert (=> b!5176765 m!6232252))

(assert (=> b!5176632 d!1671498))

(declare-fun d!1671500 () Bool)

(declare-fun lt!2133074 () Int)

(assert (=> d!1671500 (>= lt!2133074 0)))

(declare-fun e!3225610 () Int)

(assert (=> d!1671500 (= lt!2133074 e!3225610)))

(declare-fun c!891600 () Bool)

(assert (=> d!1671500 (= c!891600 ((_ is Nil!60163) testedP!294))))

(assert (=> d!1671500 (= (size!39693 testedP!294) lt!2133074)))

(declare-fun b!5176767 () Bool)

(assert (=> b!5176767 (= e!3225610 0)))

(declare-fun b!5176768 () Bool)

(assert (=> b!5176768 (= e!3225610 (+ 1 (size!39693 (t!373440 testedP!294))))))

(assert (= (and d!1671500 c!891600) b!5176767))

(assert (= (and d!1671500 (not c!891600)) b!5176768))

(declare-fun m!6232254 () Bool)

(assert (=> b!5176768 m!6232254))

(assert (=> b!5176632 d!1671500))

(declare-fun d!1671502 () Bool)

(assert (=> d!1671502 (= (isEmpty!32211 (_1!35235 lt!2132881)) ((_ is Nil!60163) (_1!35235 lt!2132881)))))

(assert (=> b!5176632 d!1671502))

(declare-fun d!1671504 () Bool)

(declare-fun lambda!258580 () Int)

(declare-fun forall!14161 (List!60288 Int) Bool)

(assert (=> d!1671504 (= (inv!79889 setElem!32333) (forall!14161 (exprs!4541 setElem!32333) lambda!258580))))

(declare-fun bs!1204838 () Bool)

(assert (= bs!1204838 d!1671504))

(declare-fun m!6232304 () Bool)

(assert (=> bs!1204838 m!6232304))

(assert (=> setNonEmpty!32333 d!1671504))

(declare-fun d!1671510 () Bool)

(declare-fun c!891609 () Bool)

(assert (=> d!1671510 (= c!891609 (isEmpty!32211 (_1!35235 lt!2132877)))))

(declare-fun e!3225623 () Bool)

(assert (=> d!1671510 (= (matchZipper!987 baseZ!62 (_1!35235 lt!2132877)) e!3225623)))

(declare-fun b!5176787 () Bool)

(assert (=> b!5176787 (= e!3225623 (nullableZipper!1195 baseZ!62))))

(declare-fun b!5176788 () Bool)

(assert (=> b!5176788 (= e!3225623 (matchZipper!987 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877))) (tail!10174 (_1!35235 lt!2132877))))))

(assert (= (and d!1671510 c!891609) b!5176787))

(assert (= (and d!1671510 (not c!891609)) b!5176788))

(assert (=> d!1671510 m!6232086))

(assert (=> b!5176787 m!6232116))

(declare-fun m!6232306 () Bool)

(assert (=> b!5176788 m!6232306))

(assert (=> b!5176788 m!6232306))

(declare-fun m!6232308 () Bool)

(assert (=> b!5176788 m!6232308))

(declare-fun m!6232310 () Bool)

(assert (=> b!5176788 m!6232310))

(assert (=> b!5176788 m!6232308))

(assert (=> b!5176788 m!6232310))

(declare-fun m!6232312 () Bool)

(assert (=> b!5176788 m!6232312))

(assert (=> b!5176630 d!1671510))

(declare-fun d!1671512 () Bool)

(assert (=> d!1671512 (isPrefix!5790 input!5817 input!5817)))

(declare-fun lt!2133103 () Unit!151998)

(declare-fun choose!38437 (List!60287 List!60287) Unit!151998)

(assert (=> d!1671512 (= lt!2133103 (choose!38437 input!5817 input!5817))))

(assert (=> d!1671512 (= (lemmaIsPrefixRefl!3795 input!5817 input!5817) lt!2133103)))

(declare-fun bs!1204839 () Bool)

(assert (= bs!1204839 d!1671512))

(assert (=> bs!1204839 m!6232110))

(declare-fun m!6232314 () Bool)

(assert (=> bs!1204839 m!6232314))

(assert (=> b!5176638 d!1671512))

(declare-fun d!1671514 () Bool)

(declare-fun e!3225630 () Bool)

(assert (=> d!1671514 e!3225630))

(declare-fun res!2199841 () Bool)

(assert (=> d!1671514 (=> res!2199841 e!3225630)))

(declare-fun lt!2133106 () Bool)

(assert (=> d!1671514 (= res!2199841 (not lt!2133106))))

(declare-fun e!3225631 () Bool)

(assert (=> d!1671514 (= lt!2133106 e!3225631)))

(declare-fun res!2199843 () Bool)

(assert (=> d!1671514 (=> res!2199843 e!3225631)))

(assert (=> d!1671514 (= res!2199843 ((_ is Nil!60163) input!5817))))

(assert (=> d!1671514 (= (isPrefix!5790 input!5817 input!5817) lt!2133106)))

(declare-fun b!5176797 () Bool)

(declare-fun e!3225632 () Bool)

(assert (=> b!5176797 (= e!3225631 e!3225632)))

(declare-fun res!2199840 () Bool)

(assert (=> b!5176797 (=> (not res!2199840) (not e!3225632))))

(assert (=> b!5176797 (= res!2199840 (not ((_ is Nil!60163) input!5817)))))

(declare-fun b!5176798 () Bool)

(declare-fun res!2199842 () Bool)

(assert (=> b!5176798 (=> (not res!2199842) (not e!3225632))))

(assert (=> b!5176798 (= res!2199842 (= (head!11075 input!5817) (head!11075 input!5817)))))

(declare-fun b!5176799 () Bool)

(assert (=> b!5176799 (= e!3225632 (isPrefix!5790 (tail!10174 input!5817) (tail!10174 input!5817)))))

(declare-fun b!5176800 () Bool)

(assert (=> b!5176800 (= e!3225630 (>= (size!39693 input!5817) (size!39693 input!5817)))))

(assert (= (and d!1671514 (not res!2199843)) b!5176797))

(assert (= (and b!5176797 res!2199840) b!5176798))

(assert (= (and b!5176798 res!2199842) b!5176799))

(assert (= (and d!1671514 (not res!2199841)) b!5176800))

(declare-fun m!6232316 () Bool)

(assert (=> b!5176798 m!6232316))

(assert (=> b!5176798 m!6232316))

(assert (=> b!5176799 m!6232140))

(assert (=> b!5176799 m!6232140))

(assert (=> b!5176799 m!6232140))

(assert (=> b!5176799 m!6232140))

(declare-fun m!6232318 () Bool)

(assert (=> b!5176799 m!6232318))

(assert (=> b!5176800 m!6232070))

(assert (=> b!5176800 m!6232070))

(assert (=> b!5176638 d!1671514))

(declare-fun d!1671516 () Bool)

(assert (=> d!1671516 (= input!5817 testedP!294)))

(declare-fun lt!2133109 () Unit!151998)

(declare-fun choose!38438 (List!60287 List!60287 List!60287) Unit!151998)

(assert (=> d!1671516 (= lt!2133109 (choose!38438 input!5817 testedP!294 input!5817))))

(assert (=> d!1671516 (isPrefix!5790 input!5817 input!5817)))

(assert (=> d!1671516 (= (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 testedP!294 input!5817) lt!2133109)))

(declare-fun bs!1204840 () Bool)

(assert (= bs!1204840 d!1671516))

(declare-fun m!6232320 () Bool)

(assert (=> bs!1204840 m!6232320))

(assert (=> bs!1204840 m!6232110))

(assert (=> b!5176638 d!1671516))

(declare-fun d!1671518 () Bool)

(assert (=> d!1671518 (<= (size!39693 testedP!294) (size!39693 input!5817))))

(declare-fun lt!2133112 () Unit!151998)

(declare-fun choose!38440 (List!60287 List!60287) Unit!151998)

(assert (=> d!1671518 (= lt!2133112 (choose!38440 testedP!294 input!5817))))

(assert (=> d!1671518 (isPrefix!5790 testedP!294 input!5817)))

(assert (=> d!1671518 (= (lemmaIsPrefixThenSmallerEqSize!951 testedP!294 input!5817) lt!2133112)))

(declare-fun bs!1204842 () Bool)

(assert (= bs!1204842 d!1671518))

(assert (=> bs!1204842 m!6232066))

(assert (=> bs!1204842 m!6232070))

(declare-fun m!6232324 () Bool)

(assert (=> bs!1204842 m!6232324))

(assert (=> bs!1204842 m!6232104))

(assert (=> b!5176635 d!1671518))

(declare-fun d!1671522 () Bool)

(declare-fun e!3225633 () Bool)

(assert (=> d!1671522 e!3225633))

(declare-fun res!2199845 () Bool)

(assert (=> d!1671522 (=> res!2199845 e!3225633)))

(declare-fun lt!2133113 () Bool)

(assert (=> d!1671522 (= res!2199845 (not lt!2133113))))

(declare-fun e!3225634 () Bool)

(assert (=> d!1671522 (= lt!2133113 e!3225634)))

(declare-fun res!2199847 () Bool)

(assert (=> d!1671522 (=> res!2199847 e!3225634)))

(assert (=> d!1671522 (= res!2199847 ((_ is Nil!60163) testedP!294))))

(assert (=> d!1671522 (= (isPrefix!5790 testedP!294 input!5817) lt!2133113)))

(declare-fun b!5176803 () Bool)

(declare-fun e!3225635 () Bool)

(assert (=> b!5176803 (= e!3225634 e!3225635)))

(declare-fun res!2199844 () Bool)

(assert (=> b!5176803 (=> (not res!2199844) (not e!3225635))))

(assert (=> b!5176803 (= res!2199844 (not ((_ is Nil!60163) input!5817)))))

(declare-fun b!5176804 () Bool)

(declare-fun res!2199846 () Bool)

(assert (=> b!5176804 (=> (not res!2199846) (not e!3225635))))

(assert (=> b!5176804 (= res!2199846 (= (head!11075 testedP!294) (head!11075 input!5817)))))

(declare-fun b!5176805 () Bool)

(assert (=> b!5176805 (= e!3225635 (isPrefix!5790 (tail!10174 testedP!294) (tail!10174 input!5817)))))

(declare-fun b!5176806 () Bool)

(assert (=> b!5176806 (= e!3225633 (>= (size!39693 input!5817) (size!39693 testedP!294)))))

(assert (= (and d!1671522 (not res!2199847)) b!5176803))

(assert (= (and b!5176803 res!2199844) b!5176804))

(assert (= (and b!5176804 res!2199846) b!5176805))

(assert (= (and d!1671522 (not res!2199845)) b!5176806))

(declare-fun m!6232326 () Bool)

(assert (=> b!5176804 m!6232326))

(assert (=> b!5176804 m!6232316))

(declare-fun m!6232328 () Bool)

(assert (=> b!5176805 m!6232328))

(assert (=> b!5176805 m!6232140))

(assert (=> b!5176805 m!6232328))

(assert (=> b!5176805 m!6232140))

(declare-fun m!6232330 () Bool)

(assert (=> b!5176805 m!6232330))

(assert (=> b!5176806 m!6232070))

(assert (=> b!5176806 m!6232066))

(assert (=> start!548188 d!1671522))

(declare-fun d!1671524 () Bool)

(assert (=> d!1671524 (= (isEmpty!32211 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (+ 1 lt!2132889) (tail!10174 lt!2132885) input!5817 lt!2132880))) ((_ is Nil!60163) (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (+ 1 lt!2132889) (tail!10174 lt!2132885) input!5817 lt!2132880))))))

(assert (=> b!5176631 d!1671524))

(declare-fun bm!363699 () Bool)

(declare-fun call!363704 () Bool)

(assert (=> bm!363699 (= call!363704 (nullableZipper!1195 lt!2132878))))

(declare-fun bm!363700 () Bool)

(declare-fun call!363711 () (InoxSet Context!8082))

(declare-fun call!363707 () C!29584)

(assert (=> bm!363700 (= call!363711 (derivationStepZipper!1003 lt!2132878 call!363707))))

(declare-fun b!5176807 () Bool)

(declare-fun e!3225636 () Unit!151998)

(declare-fun Unit!152012 () Unit!151998)

(assert (=> b!5176807 (= e!3225636 Unit!152012)))

(declare-fun b!5176808 () Bool)

(declare-fun e!3225642 () tuple2!63864)

(declare-fun e!3225637 () tuple2!63864)

(assert (=> b!5176808 (= e!3225642 e!3225637)))

(declare-fun lt!2133137 () tuple2!63864)

(declare-fun call!363710 () tuple2!63864)

(assert (=> b!5176808 (= lt!2133137 call!363710)))

(declare-fun c!891614 () Bool)

(assert (=> b!5176808 (= c!891614 (isEmpty!32211 (_1!35235 lt!2133137)))))

(declare-fun bm!363701 () Bool)

(declare-fun call!363708 () Unit!151998)

(assert (=> bm!363701 (= call!363708 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2132884 input!5817))))

(declare-fun b!5176809 () Bool)

(declare-fun e!3225640 () tuple2!63864)

(assert (=> b!5176809 (= e!3225640 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun b!5176810 () Bool)

(declare-fun e!3225639 () Bool)

(declare-fun lt!2133135 () tuple2!63864)

(assert (=> b!5176810 (= e!3225639 (>= (size!39693 (_1!35235 lt!2133135)) (size!39693 lt!2132884)))))

(declare-fun b!5176811 () Bool)

(declare-fun c!891613 () Bool)

(assert (=> b!5176811 (= c!891613 call!363704)))

(declare-fun lt!2133127 () Unit!151998)

(declare-fun lt!2133117 () Unit!151998)

(assert (=> b!5176811 (= lt!2133127 lt!2133117)))

(declare-fun lt!2133128 () C!29584)

(declare-fun lt!2133131 () List!60287)

(assert (=> b!5176811 (= (++!13173 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163)) lt!2133131) input!5817)))

(assert (=> b!5176811 (= lt!2133117 (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2132884 lt!2133128 lt!2133131 input!5817))))

(assert (=> b!5176811 (= lt!2133131 (tail!10174 (tail!10174 lt!2132885)))))

(assert (=> b!5176811 (= lt!2133128 (head!11075 (tail!10174 lt!2132885)))))

(declare-fun lt!2133130 () Unit!151998)

(declare-fun lt!2133119 () Unit!151998)

(assert (=> b!5176811 (= lt!2133130 lt!2133119)))

(assert (=> b!5176811 (isPrefix!5790 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)) input!5817)))

(assert (=> b!5176811 (= lt!2133119 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2132884 input!5817))))

(declare-fun lt!2133136 () List!60287)

(assert (=> b!5176811 (= lt!2133136 (++!13173 lt!2132884 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)))))

(declare-fun lt!2133134 () Unit!151998)

(assert (=> b!5176811 (= lt!2133134 e!3225636)))

(declare-fun c!891615 () Bool)

(assert (=> b!5176811 (= c!891615 (= (size!39693 lt!2132884) (size!39693 input!5817)))))

(declare-fun lt!2133129 () Unit!151998)

(declare-fun lt!2133120 () Unit!151998)

(assert (=> b!5176811 (= lt!2133129 lt!2133120)))

(assert (=> b!5176811 (<= (size!39693 lt!2132884) (size!39693 input!5817))))

(assert (=> b!5176811 (= lt!2133120 (lemmaIsPrefixThenSmallerEqSize!951 lt!2132884 input!5817))))

(declare-fun e!3225643 () tuple2!63864)

(assert (=> b!5176811 (= e!3225643 e!3225642)))

(declare-fun b!5176812 () Bool)

(assert (=> b!5176812 (= e!3225640 e!3225643)))

(declare-fun c!891610 () Bool)

(assert (=> b!5176812 (= c!891610 (= (+ 1 lt!2132889) lt!2132880))))

(declare-fun b!5176813 () Bool)

(assert (=> b!5176813 (= e!3225637 lt!2133137)))

(declare-fun b!5176814 () Bool)

(declare-fun e!3225641 () tuple2!63864)

(assert (=> b!5176814 (= e!3225641 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun bm!363703 () Bool)

(declare-fun call!363709 () Bool)

(assert (=> bm!363703 (= call!363709 (isPrefix!5790 input!5817 input!5817))))

(declare-fun b!5176815 () Bool)

(assert (=> b!5176815 (= e!3225637 (tuple2!63865 lt!2132884 (tail!10174 lt!2132885)))))

(declare-fun b!5176816 () Bool)

(declare-fun Unit!152014 () Unit!151998)

(assert (=> b!5176816 (= e!3225636 Unit!152014)))

(declare-fun lt!2133116 () Unit!151998)

(declare-fun call!363706 () Unit!151998)

(assert (=> b!5176816 (= lt!2133116 call!363706)))

(assert (=> b!5176816 call!363709))

(declare-fun lt!2133125 () Unit!151998)

(assert (=> b!5176816 (= lt!2133125 lt!2133116)))

(declare-fun lt!2133114 () Unit!151998)

(assert (=> b!5176816 (= lt!2133114 call!363708)))

(assert (=> b!5176816 (= input!5817 lt!2132884)))

(declare-fun lt!2133126 () Unit!151998)

(assert (=> b!5176816 (= lt!2133126 lt!2133114)))

(assert (=> b!5176816 false))

(declare-fun b!5176817 () Bool)

(declare-fun c!891612 () Bool)

(assert (=> b!5176817 (= c!891612 call!363704)))

(declare-fun lt!2133121 () Unit!151998)

(declare-fun lt!2133133 () Unit!151998)

(assert (=> b!5176817 (= lt!2133121 lt!2133133)))

(assert (=> b!5176817 (= input!5817 lt!2132884)))

(assert (=> b!5176817 (= lt!2133133 call!363708)))

(declare-fun lt!2133123 () Unit!151998)

(declare-fun lt!2133122 () Unit!151998)

(assert (=> b!5176817 (= lt!2133123 lt!2133122)))

(assert (=> b!5176817 call!363709))

(assert (=> b!5176817 (= lt!2133122 call!363706)))

(assert (=> b!5176817 (= e!3225643 e!3225641)))

(declare-fun b!5176818 () Bool)

(assert (=> b!5176818 (= e!3225642 call!363710)))

(declare-fun bm!363704 () Bool)

(declare-fun call!363705 () List!60287)

(assert (=> bm!363704 (= call!363710 (findLongestMatchInnerZipper!313 call!363711 lt!2133136 (+ 1 lt!2132889 1) call!363705 input!5817 lt!2132880))))

(declare-fun b!5176819 () Bool)

(declare-fun e!3225638 () Bool)

(assert (=> b!5176819 (= e!3225638 e!3225639)))

(declare-fun res!2199849 () Bool)

(assert (=> b!5176819 (=> res!2199849 e!3225639)))

(assert (=> b!5176819 (= res!2199849 (isEmpty!32211 (_1!35235 lt!2133135)))))

(declare-fun bm!363705 () Bool)

(assert (=> bm!363705 (= call!363707 (head!11075 (tail!10174 lt!2132885)))))

(declare-fun d!1671526 () Bool)

(assert (=> d!1671526 e!3225638))

(declare-fun res!2199848 () Bool)

(assert (=> d!1671526 (=> (not res!2199848) (not e!3225638))))

(assert (=> d!1671526 (= res!2199848 (= (++!13173 (_1!35235 lt!2133135) (_2!35235 lt!2133135)) input!5817))))

(assert (=> d!1671526 (= lt!2133135 e!3225640)))

(declare-fun c!891611 () Bool)

(assert (=> d!1671526 (= c!891611 (lostCauseZipper!1343 lt!2132878))))

(declare-fun lt!2133124 () Unit!151998)

(declare-fun Unit!152016 () Unit!151998)

(assert (=> d!1671526 (= lt!2133124 Unit!152016)))

(assert (=> d!1671526 (= (getSuffix!3438 input!5817 lt!2132884) (tail!10174 lt!2132885))))

(declare-fun lt!2133132 () Unit!151998)

(declare-fun lt!2133138 () Unit!151998)

(assert (=> d!1671526 (= lt!2133132 lt!2133138)))

(declare-fun lt!2133139 () List!60287)

(assert (=> d!1671526 (= (tail!10174 lt!2132885) lt!2133139)))

(assert (=> d!1671526 (= lt!2133138 (lemmaSamePrefixThenSameSuffix!2710 lt!2132884 (tail!10174 lt!2132885) lt!2132884 lt!2133139 input!5817))))

(assert (=> d!1671526 (= lt!2133139 (getSuffix!3438 input!5817 lt!2132884))))

(declare-fun lt!2133118 () Unit!151998)

(declare-fun lt!2133115 () Unit!151998)

(assert (=> d!1671526 (= lt!2133118 lt!2133115)))

(assert (=> d!1671526 (isPrefix!5790 lt!2132884 (++!13173 lt!2132884 (tail!10174 lt!2132885)))))

(assert (=> d!1671526 (= lt!2133115 (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2132884 (tail!10174 lt!2132885)))))

(assert (=> d!1671526 (= (++!13173 lt!2132884 (tail!10174 lt!2132885)) input!5817)))

(assert (=> d!1671526 (= (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (+ 1 lt!2132889) (tail!10174 lt!2132885) input!5817 lt!2132880) lt!2133135)))

(declare-fun bm!363702 () Bool)

(assert (=> bm!363702 (= call!363705 (tail!10174 (tail!10174 lt!2132885)))))

(declare-fun b!5176820 () Bool)

(assert (=> b!5176820 (= e!3225641 (tuple2!63865 lt!2132884 Nil!60163))))

(declare-fun bm!363706 () Bool)

(assert (=> bm!363706 (= call!363706 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (= (and d!1671526 c!891611) b!5176809))

(assert (= (and d!1671526 (not c!891611)) b!5176812))

(assert (= (and b!5176812 c!891610) b!5176817))

(assert (= (and b!5176812 (not c!891610)) b!5176811))

(assert (= (and b!5176817 c!891612) b!5176820))

(assert (= (and b!5176817 (not c!891612)) b!5176814))

(assert (= (and b!5176811 c!891615) b!5176816))

(assert (= (and b!5176811 (not c!891615)) b!5176807))

(assert (= (and b!5176811 c!891613) b!5176808))

(assert (= (and b!5176811 (not c!891613)) b!5176818))

(assert (= (and b!5176808 c!891614) b!5176815))

(assert (= (and b!5176808 (not c!891614)) b!5176813))

(assert (= (or b!5176808 b!5176818) bm!363702))

(assert (= (or b!5176808 b!5176818) bm!363705))

(assert (= (or b!5176808 b!5176818) bm!363700))

(assert (= (or b!5176808 b!5176818) bm!363704))

(assert (= (or b!5176817 b!5176816) bm!363706))

(assert (= (or b!5176817 b!5176811) bm!363699))

(assert (= (or b!5176817 b!5176816) bm!363703))

(assert (= (or b!5176817 b!5176816) bm!363701))

(assert (= (and d!1671526 res!2199848) b!5176819))

(assert (= (and b!5176819 (not res!2199849)) b!5176810))

(assert (=> bm!363701 m!6232168))

(assert (=> bm!363706 m!6232108))

(declare-fun m!6232334 () Bool)

(assert (=> b!5176808 m!6232334))

(declare-fun m!6232336 () Bool)

(assert (=> b!5176810 m!6232336))

(assert (=> b!5176810 m!6232094))

(assert (=> bm!363699 m!6232174))

(assert (=> bm!363702 m!6232054))

(declare-fun m!6232338 () Bool)

(assert (=> bm!363702 m!6232338))

(assert (=> bm!363703 m!6232110))

(declare-fun m!6232340 () Bool)

(assert (=> bm!363700 m!6232340))

(declare-fun m!6232342 () Bool)

(assert (=> b!5176819 m!6232342))

(assert (=> b!5176811 m!6232054))

(declare-fun m!6232344 () Bool)

(assert (=> b!5176811 m!6232344))

(assert (=> b!5176811 m!6232054))

(assert (=> b!5176811 m!6232338))

(assert (=> b!5176811 m!6232070))

(declare-fun m!6232346 () Bool)

(assert (=> b!5176811 m!6232346))

(declare-fun m!6232348 () Bool)

(assert (=> b!5176811 m!6232348))

(declare-fun m!6232350 () Bool)

(assert (=> b!5176811 m!6232350))

(assert (=> b!5176811 m!6232190))

(assert (=> b!5176811 m!6232090))

(assert (=> b!5176811 m!6232182))

(assert (=> b!5176811 m!6232192))

(assert (=> b!5176811 m!6232090))

(declare-fun m!6232352 () Bool)

(assert (=> b!5176811 m!6232352))

(assert (=> b!5176811 m!6232194))

(assert (=> b!5176811 m!6232196))

(assert (=> b!5176811 m!6232194))

(assert (=> b!5176811 m!6232348))

(assert (=> b!5176811 m!6232094))

(declare-fun m!6232354 () Bool)

(assert (=> bm!363704 m!6232354))

(assert (=> d!1671526 m!6232200))

(declare-fun m!6232356 () Bool)

(assert (=> d!1671526 m!6232356))

(declare-fun m!6232358 () Bool)

(assert (=> d!1671526 m!6232358))

(assert (=> d!1671526 m!6232090))

(assert (=> d!1671526 m!6232054))

(declare-fun m!6232360 () Bool)

(assert (=> d!1671526 m!6232360))

(assert (=> d!1671526 m!6232054))

(declare-fun m!6232362 () Bool)

(assert (=> d!1671526 m!6232362))

(assert (=> d!1671526 m!6232054))

(assert (=> d!1671526 m!6232356))

(declare-fun m!6232364 () Bool)

(assert (=> d!1671526 m!6232364))

(assert (=> bm!363705 m!6232054))

(assert (=> bm!363705 m!6232344))

(assert (=> b!5176631 d!1671526))

(declare-fun d!1671530 () Bool)

(assert (=> d!1671530 (= (tail!10174 lt!2132885) (t!373440 lt!2132885))))

(assert (=> b!5176631 d!1671530))

(declare-fun d!1671532 () Bool)

(assert (=> d!1671532 true))

(declare-fun lambda!258589 () Int)

(declare-fun flatMap!460 ((InoxSet Context!8082) Int) (InoxSet Context!8082))

(assert (=> d!1671532 (= (derivationStepZipper!1003 z!4581 lt!2132879) (flatMap!460 z!4581 lambda!258589))))

(declare-fun bs!1204845 () Bool)

(assert (= bs!1204845 d!1671532))

(declare-fun m!6232366 () Bool)

(assert (=> bs!1204845 m!6232366))

(assert (=> b!5176631 d!1671532))

(declare-fun d!1671534 () Bool)

(assert (=> d!1671534 (= (head!11075 lt!2132885) (h!66611 lt!2132885))))

(assert (=> b!5176639 d!1671534))

(declare-fun b!5176839 () Bool)

(declare-fun res!2199855 () Bool)

(declare-fun e!3225652 () Bool)

(assert (=> b!5176839 (=> (not res!2199855) (not e!3225652))))

(declare-fun lt!2133145 () List!60287)

(assert (=> b!5176839 (= res!2199855 (= (size!39693 lt!2133145) (+ (size!39693 testedP!294) (size!39693 (Cons!60163 lt!2132879 Nil!60163)))))))

(declare-fun b!5176838 () Bool)

(declare-fun e!3225651 () List!60287)

(assert (=> b!5176838 (= e!3225651 (Cons!60163 (h!66611 testedP!294) (++!13173 (t!373440 testedP!294) (Cons!60163 lt!2132879 Nil!60163))))))

(declare-fun b!5176837 () Bool)

(assert (=> b!5176837 (= e!3225651 (Cons!60163 lt!2132879 Nil!60163))))

(declare-fun b!5176840 () Bool)

(assert (=> b!5176840 (= e!3225652 (or (not (= (Cons!60163 lt!2132879 Nil!60163) Nil!60163)) (= lt!2133145 testedP!294)))))

(declare-fun d!1671538 () Bool)

(assert (=> d!1671538 e!3225652))

(declare-fun res!2199854 () Bool)

(assert (=> d!1671538 (=> (not res!2199854) (not e!3225652))))

(declare-fun content!10662 (List!60287) (InoxSet C!29584))

(assert (=> d!1671538 (= res!2199854 (= (content!10662 lt!2133145) ((_ map or) (content!10662 testedP!294) (content!10662 (Cons!60163 lt!2132879 Nil!60163)))))))

(assert (=> d!1671538 (= lt!2133145 e!3225651)))

(declare-fun c!891624 () Bool)

(assert (=> d!1671538 (= c!891624 ((_ is Nil!60163) testedP!294))))

(assert (=> d!1671538 (= (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163)) lt!2133145)))

(assert (= (and d!1671538 c!891624) b!5176837))

(assert (= (and d!1671538 (not c!891624)) b!5176838))

(assert (= (and d!1671538 res!2199854) b!5176839))

(assert (= (and b!5176839 res!2199855) b!5176840))

(declare-fun m!6232382 () Bool)

(assert (=> b!5176839 m!6232382))

(assert (=> b!5176839 m!6232066))

(declare-fun m!6232384 () Bool)

(assert (=> b!5176839 m!6232384))

(declare-fun m!6232386 () Bool)

(assert (=> b!5176838 m!6232386))

(declare-fun m!6232388 () Bool)

(assert (=> d!1671538 m!6232388))

(declare-fun m!6232390 () Bool)

(assert (=> d!1671538 m!6232390))

(declare-fun m!6232392 () Bool)

(assert (=> d!1671538 m!6232392))

(assert (=> b!5176639 d!1671538))

(declare-fun d!1671542 () Bool)

(assert (=> d!1671542 (isPrefix!5790 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)) input!5817)))

(declare-fun lt!2133151 () Unit!151998)

(declare-fun choose!38441 (List!60287 List!60287) Unit!151998)

(assert (=> d!1671542 (= lt!2133151 (choose!38441 testedP!294 input!5817))))

(assert (=> d!1671542 (isPrefix!5790 testedP!294 input!5817)))

(assert (=> d!1671542 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1095 testedP!294 input!5817) lt!2133151)))

(declare-fun bs!1204846 () Bool)

(assert (= bs!1204846 d!1671542))

(declare-fun m!6232398 () Bool)

(assert (=> bs!1204846 m!6232398))

(assert (=> bs!1204846 m!6232068))

(assert (=> bs!1204846 m!6232228))

(assert (=> bs!1204846 m!6232232))

(assert (=> bs!1204846 m!6232232))

(assert (=> bs!1204846 m!6232234))

(assert (=> bs!1204846 m!6232068))

(assert (=> bs!1204846 m!6232104))

(assert (=> b!5176639 d!1671542))

(declare-fun d!1671546 () Bool)

(declare-fun lambda!258592 () Int)

(declare-fun exists!1939 ((InoxSet Context!8082) Int) Bool)

(assert (=> d!1671546 (= (nullableZipper!1195 z!4581) (exists!1939 z!4581 lambda!258592))))

(declare-fun bs!1204847 () Bool)

(assert (= bs!1204847 d!1671546))

(declare-fun m!6232402 () Bool)

(assert (=> bs!1204847 m!6232402))

(assert (=> b!5176639 d!1671546))

(declare-fun d!1671550 () Bool)

(declare-fun e!3225659 () Bool)

(assert (=> d!1671550 e!3225659))

(declare-fun res!2199857 () Bool)

(assert (=> d!1671550 (=> res!2199857 e!3225659)))

(declare-fun lt!2133155 () Bool)

(assert (=> d!1671550 (= res!2199857 (not lt!2133155))))

(declare-fun e!3225660 () Bool)

(assert (=> d!1671550 (= lt!2133155 e!3225660)))

(declare-fun res!2199859 () Bool)

(assert (=> d!1671550 (=> res!2199859 e!3225660)))

(assert (=> d!1671550 (= res!2199859 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1671550 (= (isPrefix!5790 lt!2132884 input!5817) lt!2133155)))

(declare-fun b!5176853 () Bool)

(declare-fun e!3225661 () Bool)

(assert (=> b!5176853 (= e!3225660 e!3225661)))

(declare-fun res!2199856 () Bool)

(assert (=> b!5176853 (=> (not res!2199856) (not e!3225661))))

(assert (=> b!5176853 (= res!2199856 (not ((_ is Nil!60163) input!5817)))))

(declare-fun b!5176854 () Bool)

(declare-fun res!2199858 () Bool)

(assert (=> b!5176854 (=> (not res!2199858) (not e!3225661))))

(assert (=> b!5176854 (= res!2199858 (= (head!11075 lt!2132884) (head!11075 input!5817)))))

(declare-fun b!5176855 () Bool)

(assert (=> b!5176855 (= e!3225661 (isPrefix!5790 (tail!10174 lt!2132884) (tail!10174 input!5817)))))

(declare-fun b!5176856 () Bool)

(assert (=> b!5176856 (= e!3225659 (>= (size!39693 input!5817) (size!39693 lt!2132884)))))

(assert (= (and d!1671550 (not res!2199859)) b!5176853))

(assert (= (and b!5176853 res!2199856) b!5176854))

(assert (= (and b!5176854 res!2199858) b!5176855))

(assert (= (and d!1671550 (not res!2199857)) b!5176856))

(declare-fun m!6232404 () Bool)

(assert (=> b!5176854 m!6232404))

(assert (=> b!5176854 m!6232316))

(declare-fun m!6232406 () Bool)

(assert (=> b!5176855 m!6232406))

(assert (=> b!5176855 m!6232140))

(assert (=> b!5176855 m!6232406))

(assert (=> b!5176855 m!6232140))

(declare-fun m!6232408 () Bool)

(assert (=> b!5176855 m!6232408))

(assert (=> b!5176856 m!6232070))

(assert (=> b!5176856 m!6232094))

(assert (=> b!5176639 d!1671550))

(declare-fun d!1671552 () Bool)

(declare-fun c!891633 () Bool)

(assert (=> d!1671552 (= c!891633 ((_ is Cons!60163) testedP!294))))

(declare-fun e!3225662 () (InoxSet Context!8082))

(assert (=> d!1671552 (= (derivationZipper!280 baseZ!62 testedP!294) e!3225662)))

(declare-fun b!5176857 () Bool)

(assert (=> b!5176857 (= e!3225662 (derivationZipper!280 (derivationStepZipper!1003 baseZ!62 (h!66611 testedP!294)) (t!373440 testedP!294)))))

(declare-fun b!5176858 () Bool)

(assert (=> b!5176858 (= e!3225662 baseZ!62)))

(assert (= (and d!1671552 c!891633) b!5176857))

(assert (= (and d!1671552 (not c!891633)) b!5176858))

(declare-fun m!6232410 () Bool)

(assert (=> b!5176857 m!6232410))

(assert (=> b!5176857 m!6232410))

(declare-fun m!6232412 () Bool)

(assert (=> b!5176857 m!6232412))

(assert (=> b!5176627 d!1671552))

(declare-fun bs!1204848 () Bool)

(declare-fun d!1671554 () Bool)

(assert (= bs!1204848 (and d!1671554 d!1671504)))

(declare-fun lambda!258593 () Int)

(assert (=> bs!1204848 (= lambda!258593 lambda!258580)))

(assert (=> d!1671554 (= (inv!79889 setElem!32334) (forall!14161 (exprs!4541 setElem!32334) lambda!258593))))

(declare-fun bs!1204849 () Bool)

(assert (= bs!1204849 d!1671554))

(declare-fun m!6232414 () Bool)

(assert (=> bs!1204849 m!6232414))

(assert (=> setNonEmpty!32334 d!1671554))

(declare-fun b!5176863 () Bool)

(declare-fun e!3225665 () Bool)

(declare-fun tp!1452204 () Bool)

(declare-fun tp!1452205 () Bool)

(assert (=> b!5176863 (= e!3225665 (and tp!1452204 tp!1452205))))

(assert (=> b!5176633 (= tp!1452199 e!3225665)))

(assert (= (and b!5176633 ((_ is Cons!60164) (exprs!4541 setElem!32334))) b!5176863))

(declare-fun condSetEmpty!32337 () Bool)

(assert (=> setNonEmpty!32333 (= condSetEmpty!32337 (= setRest!32334 ((as const (Array Context!8082 Bool)) false)))))

(declare-fun setRes!32337 () Bool)

(assert (=> setNonEmpty!32333 (= tp!1452197 setRes!32337)))

(declare-fun setIsEmpty!32337 () Bool)

(assert (=> setIsEmpty!32337 setRes!32337))

(declare-fun setElem!32337 () Context!8082)

(declare-fun tp!1452210 () Bool)

(declare-fun setNonEmpty!32337 () Bool)

(declare-fun e!3225668 () Bool)

(assert (=> setNonEmpty!32337 (= setRes!32337 (and tp!1452210 (inv!79889 setElem!32337) e!3225668))))

(declare-fun setRest!32337 () (InoxSet Context!8082))

(assert (=> setNonEmpty!32337 (= setRest!32334 ((_ map or) (store ((as const (Array Context!8082 Bool)) false) setElem!32337 true) setRest!32337))))

(declare-fun b!5176868 () Bool)

(declare-fun tp!1452211 () Bool)

(assert (=> b!5176868 (= e!3225668 tp!1452211)))

(assert (= (and setNonEmpty!32333 condSetEmpty!32337) setIsEmpty!32337))

(assert (= (and setNonEmpty!32333 (not condSetEmpty!32337)) setNonEmpty!32337))

(assert (= setNonEmpty!32337 b!5176868))

(declare-fun m!6232416 () Bool)

(assert (=> setNonEmpty!32337 m!6232416))

(declare-fun b!5176873 () Bool)

(declare-fun e!3225671 () Bool)

(declare-fun tp!1452214 () Bool)

(assert (=> b!5176873 (= e!3225671 (and tp_is_empty!38567 tp!1452214))))

(assert (=> b!5176634 (= tp!1452198 e!3225671)))

(assert (= (and b!5176634 ((_ is Cons!60163) (t!373440 testedP!294))) b!5176873))

(declare-fun b!5176874 () Bool)

(declare-fun e!3225672 () Bool)

(declare-fun tp!1452215 () Bool)

(assert (=> b!5176874 (= e!3225672 (and tp_is_empty!38567 tp!1452215))))

(assert (=> b!5176626 (= tp!1452196 e!3225672)))

(assert (= (and b!5176626 ((_ is Cons!60163) (t!373440 input!5817))) b!5176874))

(declare-fun condSetEmpty!32338 () Bool)

(assert (=> setNonEmpty!32334 (= condSetEmpty!32338 (= setRest!32333 ((as const (Array Context!8082 Bool)) false)))))

(declare-fun setRes!32338 () Bool)

(assert (=> setNonEmpty!32334 (= tp!1452195 setRes!32338)))

(declare-fun setIsEmpty!32338 () Bool)

(assert (=> setIsEmpty!32338 setRes!32338))

(declare-fun setElem!32338 () Context!8082)

(declare-fun tp!1452216 () Bool)

(declare-fun e!3225673 () Bool)

(declare-fun setNonEmpty!32338 () Bool)

(assert (=> setNonEmpty!32338 (= setRes!32338 (and tp!1452216 (inv!79889 setElem!32338) e!3225673))))

(declare-fun setRest!32338 () (InoxSet Context!8082))

(assert (=> setNonEmpty!32338 (= setRest!32333 ((_ map or) (store ((as const (Array Context!8082 Bool)) false) setElem!32338 true) setRest!32338))))

(declare-fun b!5176875 () Bool)

(declare-fun tp!1452217 () Bool)

(assert (=> b!5176875 (= e!3225673 tp!1452217)))

(assert (= (and setNonEmpty!32334 condSetEmpty!32338) setIsEmpty!32338))

(assert (= (and setNonEmpty!32334 (not condSetEmpty!32338)) setNonEmpty!32338))

(assert (= setNonEmpty!32338 b!5176875))

(declare-fun m!6232418 () Bool)

(assert (=> setNonEmpty!32338 m!6232418))

(declare-fun b!5176876 () Bool)

(declare-fun e!3225674 () Bool)

(declare-fun tp!1452218 () Bool)

(declare-fun tp!1452219 () Bool)

(assert (=> b!5176876 (= e!3225674 (and tp!1452218 tp!1452219))))

(assert (=> b!5176628 (= tp!1452194 e!3225674)))

(assert (= (and b!5176628 ((_ is Cons!60164) (exprs!4541 setElem!32333))) b!5176876))

(check-sat (not b!5176712) (not b!5176742) (not b!5176875) (not b!5176798) (not b!5176787) (not setNonEmpty!32337) (not bm!363671) (not b!5176854) (not b!5176715) (not b!5176744) (not b!5176806) (not b!5176755) (not bm!363699) (not d!1671498) (not d!1671516) (not setNonEmpty!32338) (not bm!363659) (not b!5176863) (not d!1671538) (not bm!363705) (not bm!363702) (not b!5176800) (not bm!363704) (not b!5176873) (not b!5176746) (not bm!363661) (not bm!363662) (not bm!363669) (not d!1671470) (not b!5176765) (not bm!363667) (not b!5176804) (not d!1671504) (not b!5176838) (not bm!363668) (not d!1671480) (not b!5176714) (not d!1671474) (not d!1671554) (not bm!363701) (not d!1671510) (not b!5176768) (not b!5176723) (not b!5176654) (not bm!363670) (not b!5176855) (not d!1671518) (not bm!363674) (not bm!363703) (not b!5176799) tp_is_empty!38567 (not b!5176874) (not b!5176810) (not d!1671512) (not b!5176747) (not bm!363664) (not b!5176811) (not bm!363673) (not d!1671496) (not b!5176788) (not d!1671484) (not d!1671542) (not b!5176645) (not b!5176819) (not b!5176659) (not bm!363665) (not b!5176651) (not b!5176868) (not d!1671464) (not bm!363663) (not b!5176644) (not b!5176839) (not bm!363700) (not d!1671532) (not bm!363660) (not d!1671546) (not b!5176805) (not d!1671526) (not b!5176876) (not b!5176673) (not b!5176857) (not bm!363672) (not b!5176856) (not b!5176808) (not bm!363666) (not bm!363706))
(check-sat)
(get-model)

(assert (=> d!1671542 d!1671498))

(declare-fun d!1671588 () Bool)

(assert (=> d!1671588 (= (head!11075 (getSuffix!3438 input!5817 testedP!294)) (h!66611 (getSuffix!3438 input!5817 testedP!294)))))

(assert (=> d!1671542 d!1671588))

(assert (=> d!1671542 d!1671522))

(declare-fun d!1671590 () Bool)

(declare-fun e!3225723 () Bool)

(assert (=> d!1671590 e!3225723))

(declare-fun res!2199878 () Bool)

(assert (=> d!1671590 (=> res!2199878 e!3225723)))

(declare-fun lt!2133221 () Bool)

(assert (=> d!1671590 (= res!2199878 (not lt!2133221))))

(declare-fun e!3225724 () Bool)

(assert (=> d!1671590 (= lt!2133221 e!3225724)))

(declare-fun res!2199880 () Bool)

(assert (=> d!1671590 (=> res!2199880 e!3225724)))

(assert (=> d!1671590 (= res!2199880 ((_ is Nil!60163) (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))))))

(assert (=> d!1671590 (= (isPrefix!5790 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)) input!5817) lt!2133221)))

(declare-fun b!5176958 () Bool)

(declare-fun e!3225725 () Bool)

(assert (=> b!5176958 (= e!3225724 e!3225725)))

(declare-fun res!2199877 () Bool)

(assert (=> b!5176958 (=> (not res!2199877) (not e!3225725))))

(assert (=> b!5176958 (= res!2199877 (not ((_ is Nil!60163) input!5817)))))

(declare-fun b!5176959 () Bool)

(declare-fun res!2199879 () Bool)

(assert (=> b!5176959 (=> (not res!2199879) (not e!3225725))))

(assert (=> b!5176959 (= res!2199879 (= (head!11075 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))) (head!11075 input!5817)))))

(declare-fun b!5176960 () Bool)

(assert (=> b!5176960 (= e!3225725 (isPrefix!5790 (tail!10174 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))) (tail!10174 input!5817)))))

(declare-fun b!5176961 () Bool)

(assert (=> b!5176961 (= e!3225723 (>= (size!39693 input!5817) (size!39693 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))))))

(assert (= (and d!1671590 (not res!2199880)) b!5176958))

(assert (= (and b!5176958 res!2199877) b!5176959))

(assert (= (and b!5176959 res!2199879) b!5176960))

(assert (= (and d!1671590 (not res!2199878)) b!5176961))

(assert (=> b!5176959 m!6232232))

(declare-fun m!6232544 () Bool)

(assert (=> b!5176959 m!6232544))

(assert (=> b!5176959 m!6232316))

(assert (=> b!5176960 m!6232232))

(declare-fun m!6232546 () Bool)

(assert (=> b!5176960 m!6232546))

(assert (=> b!5176960 m!6232140))

(assert (=> b!5176960 m!6232546))

(assert (=> b!5176960 m!6232140))

(declare-fun m!6232548 () Bool)

(assert (=> b!5176960 m!6232548))

(assert (=> b!5176961 m!6232070))

(assert (=> b!5176961 m!6232232))

(declare-fun m!6232550 () Bool)

(assert (=> b!5176961 m!6232550))

(assert (=> d!1671542 d!1671590))

(declare-fun d!1671592 () Bool)

(assert (=> d!1671592 (isPrefix!5790 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)) input!5817)))

(assert (=> d!1671592 true))

(declare-fun _$65!1831 () Unit!151998)

(assert (=> d!1671592 (= (choose!38441 testedP!294 input!5817) _$65!1831)))

(declare-fun bs!1204854 () Bool)

(assert (= bs!1204854 d!1671592))

(assert (=> bs!1204854 m!6232068))

(assert (=> bs!1204854 m!6232068))

(assert (=> bs!1204854 m!6232228))

(assert (=> bs!1204854 m!6232232))

(assert (=> bs!1204854 m!6232232))

(assert (=> bs!1204854 m!6232234))

(assert (=> d!1671542 d!1671592))

(declare-fun b!5176964 () Bool)

(declare-fun res!2199882 () Bool)

(declare-fun e!3225727 () Bool)

(assert (=> b!5176964 (=> (not res!2199882) (not e!3225727))))

(declare-fun lt!2133222 () List!60287)

(assert (=> b!5176964 (= res!2199882 (= (size!39693 lt!2133222) (+ (size!39693 testedP!294) (size!39693 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))))))

(declare-fun b!5176963 () Bool)

(declare-fun e!3225726 () List!60287)

(assert (=> b!5176963 (= e!3225726 (Cons!60163 (h!66611 testedP!294) (++!13173 (t!373440 testedP!294) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))))))

(declare-fun b!5176962 () Bool)

(assert (=> b!5176962 (= e!3225726 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))))

(declare-fun b!5176965 () Bool)

(assert (=> b!5176965 (= e!3225727 (or (not (= (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163) Nil!60163)) (= lt!2133222 testedP!294)))))

(declare-fun d!1671594 () Bool)

(assert (=> d!1671594 e!3225727))

(declare-fun res!2199881 () Bool)

(assert (=> d!1671594 (=> (not res!2199881) (not e!3225727))))

(assert (=> d!1671594 (= res!2199881 (= (content!10662 lt!2133222) ((_ map or) (content!10662 testedP!294) (content!10662 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))))))

(assert (=> d!1671594 (= lt!2133222 e!3225726)))

(declare-fun c!891659 () Bool)

(assert (=> d!1671594 (= c!891659 ((_ is Nil!60163) testedP!294))))

(assert (=> d!1671594 (= (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)) lt!2133222)))

(assert (= (and d!1671594 c!891659) b!5176962))

(assert (= (and d!1671594 (not c!891659)) b!5176963))

(assert (= (and d!1671594 res!2199881) b!5176964))

(assert (= (and b!5176964 res!2199882) b!5176965))

(declare-fun m!6232552 () Bool)

(assert (=> b!5176964 m!6232552))

(assert (=> b!5176964 m!6232066))

(declare-fun m!6232554 () Bool)

(assert (=> b!5176964 m!6232554))

(declare-fun m!6232556 () Bool)

(assert (=> b!5176963 m!6232556))

(declare-fun m!6232558 () Bool)

(assert (=> d!1671594 m!6232558))

(assert (=> d!1671594 m!6232390))

(declare-fun m!6232560 () Bool)

(assert (=> d!1671594 m!6232560))

(assert (=> d!1671542 d!1671594))

(declare-fun bm!363723 () Bool)

(declare-fun call!363728 () Bool)

(assert (=> bm!363723 (= call!363728 (nullableZipper!1195 call!363679))))

(declare-fun bm!363724 () Bool)

(declare-fun call!363735 () (InoxSet Context!8082))

(declare-fun call!363731 () C!29584)

(assert (=> bm!363724 (= call!363735 (derivationStepZipper!1003 call!363679 call!363731))))

(declare-fun b!5176966 () Bool)

(declare-fun e!3225728 () Unit!151998)

(declare-fun Unit!152020 () Unit!151998)

(assert (=> b!5176966 (= e!3225728 Unit!152020)))

(declare-fun b!5176967 () Bool)

(declare-fun e!3225734 () tuple2!63864)

(declare-fun e!3225729 () tuple2!63864)

(assert (=> b!5176967 (= e!3225734 e!3225729)))

(declare-fun lt!2133246 () tuple2!63864)

(declare-fun call!363734 () tuple2!63864)

(assert (=> b!5176967 (= lt!2133246 call!363734)))

(declare-fun c!891664 () Bool)

(assert (=> b!5176967 (= c!891664 (isEmpty!32211 (_1!35235 lt!2133246)))))

(declare-fun bm!363725 () Bool)

(declare-fun call!363732 () Unit!151998)

(assert (=> bm!363725 (= call!363732 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2133055 input!5817))))

(declare-fun b!5176968 () Bool)

(declare-fun e!3225732 () tuple2!63864)

(assert (=> b!5176968 (= e!3225732 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun b!5176969 () Bool)

(declare-fun e!3225731 () Bool)

(declare-fun lt!2133244 () tuple2!63864)

(assert (=> b!5176969 (= e!3225731 (>= (size!39693 (_1!35235 lt!2133244)) (size!39693 lt!2133055)))))

(declare-fun b!5176970 () Bool)

(declare-fun c!891663 () Bool)

(assert (=> b!5176970 (= c!891663 call!363728)))

(declare-fun lt!2133236 () Unit!151998)

(declare-fun lt!2133226 () Unit!151998)

(assert (=> b!5176970 (= lt!2133236 lt!2133226)))

(declare-fun lt!2133237 () C!29584)

(declare-fun lt!2133240 () List!60287)

(assert (=> b!5176970 (= (++!13173 (++!13173 lt!2133055 (Cons!60163 lt!2133237 Nil!60163)) lt!2133240) input!5817)))

(assert (=> b!5176970 (= lt!2133226 (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2133055 lt!2133237 lt!2133240 input!5817))))

(assert (=> b!5176970 (= lt!2133240 (tail!10174 call!363673))))

(assert (=> b!5176970 (= lt!2133237 (head!11075 call!363673))))

(declare-fun lt!2133239 () Unit!151998)

(declare-fun lt!2133228 () Unit!151998)

(assert (=> b!5176970 (= lt!2133239 lt!2133228)))

(assert (=> b!5176970 (isPrefix!5790 (++!13173 lt!2133055 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163)) input!5817)))

(assert (=> b!5176970 (= lt!2133228 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2133055 input!5817))))

(declare-fun lt!2133245 () List!60287)

(assert (=> b!5176970 (= lt!2133245 (++!13173 lt!2133055 (Cons!60163 (head!11075 call!363673) Nil!60163)))))

(declare-fun lt!2133243 () Unit!151998)

(assert (=> b!5176970 (= lt!2133243 e!3225728)))

(declare-fun c!891665 () Bool)

(assert (=> b!5176970 (= c!891665 (= (size!39693 lt!2133055) (size!39693 input!5817)))))

(declare-fun lt!2133238 () Unit!151998)

(declare-fun lt!2133229 () Unit!151998)

(assert (=> b!5176970 (= lt!2133238 lt!2133229)))

(assert (=> b!5176970 (<= (size!39693 lt!2133055) (size!39693 input!5817))))

(assert (=> b!5176970 (= lt!2133229 (lemmaIsPrefixThenSmallerEqSize!951 lt!2133055 input!5817))))

(declare-fun e!3225735 () tuple2!63864)

(assert (=> b!5176970 (= e!3225735 e!3225734)))

(declare-fun b!5176971 () Bool)

(assert (=> b!5176971 (= e!3225732 e!3225735)))

(declare-fun c!891660 () Bool)

(assert (=> b!5176971 (= c!891660 (= (+ lt!2132889 1) lt!2132880))))

(declare-fun b!5176972 () Bool)

(assert (=> b!5176972 (= e!3225729 lt!2133246)))

(declare-fun b!5176973 () Bool)

(declare-fun e!3225733 () tuple2!63864)

(assert (=> b!5176973 (= e!3225733 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun bm!363727 () Bool)

(declare-fun call!363733 () Bool)

(assert (=> bm!363727 (= call!363733 (isPrefix!5790 input!5817 input!5817))))

(declare-fun b!5176974 () Bool)

(assert (=> b!5176974 (= e!3225729 (tuple2!63865 lt!2133055 call!363673))))

(declare-fun b!5176975 () Bool)

(declare-fun Unit!152021 () Unit!151998)

(assert (=> b!5176975 (= e!3225728 Unit!152021)))

(declare-fun lt!2133225 () Unit!151998)

(declare-fun call!363730 () Unit!151998)

(assert (=> b!5176975 (= lt!2133225 call!363730)))

(assert (=> b!5176975 call!363733))

(declare-fun lt!2133234 () Unit!151998)

(assert (=> b!5176975 (= lt!2133234 lt!2133225)))

(declare-fun lt!2133223 () Unit!151998)

(assert (=> b!5176975 (= lt!2133223 call!363732)))

(assert (=> b!5176975 (= input!5817 lt!2133055)))

(declare-fun lt!2133235 () Unit!151998)

(assert (=> b!5176975 (= lt!2133235 lt!2133223)))

(assert (=> b!5176975 false))

(declare-fun b!5176976 () Bool)

(declare-fun c!891662 () Bool)

(assert (=> b!5176976 (= c!891662 call!363728)))

(declare-fun lt!2133230 () Unit!151998)

(declare-fun lt!2133242 () Unit!151998)

(assert (=> b!5176976 (= lt!2133230 lt!2133242)))

(assert (=> b!5176976 (= input!5817 lt!2133055)))

(assert (=> b!5176976 (= lt!2133242 call!363732)))

(declare-fun lt!2133232 () Unit!151998)

(declare-fun lt!2133231 () Unit!151998)

(assert (=> b!5176976 (= lt!2133232 lt!2133231)))

(assert (=> b!5176976 call!363733))

(assert (=> b!5176976 (= lt!2133231 call!363730)))

(assert (=> b!5176976 (= e!3225735 e!3225733)))

(declare-fun b!5176977 () Bool)

(assert (=> b!5176977 (= e!3225734 call!363734)))

(declare-fun bm!363728 () Bool)

(declare-fun call!363729 () List!60287)

(assert (=> bm!363728 (= call!363734 (findLongestMatchInnerZipper!313 call!363735 lt!2133245 (+ lt!2132889 1 1) call!363729 input!5817 lt!2132880))))

(declare-fun b!5176978 () Bool)

(declare-fun e!3225730 () Bool)

(assert (=> b!5176978 (= e!3225730 e!3225731)))

(declare-fun res!2199884 () Bool)

(assert (=> b!5176978 (=> res!2199884 e!3225731)))

(assert (=> b!5176978 (= res!2199884 (isEmpty!32211 (_1!35235 lt!2133244)))))

(declare-fun bm!363729 () Bool)

(assert (=> bm!363729 (= call!363731 (head!11075 call!363673))))

(declare-fun d!1671596 () Bool)

(assert (=> d!1671596 e!3225730))

(declare-fun res!2199883 () Bool)

(assert (=> d!1671596 (=> (not res!2199883) (not e!3225730))))

(assert (=> d!1671596 (= res!2199883 (= (++!13173 (_1!35235 lt!2133244) (_2!35235 lt!2133244)) input!5817))))

(assert (=> d!1671596 (= lt!2133244 e!3225732)))

(declare-fun c!891661 () Bool)

(assert (=> d!1671596 (= c!891661 (lostCauseZipper!1343 call!363679))))

(declare-fun lt!2133233 () Unit!151998)

(declare-fun Unit!152022 () Unit!151998)

(assert (=> d!1671596 (= lt!2133233 Unit!152022)))

(assert (=> d!1671596 (= (getSuffix!3438 input!5817 lt!2133055) call!363673)))

(declare-fun lt!2133241 () Unit!151998)

(declare-fun lt!2133247 () Unit!151998)

(assert (=> d!1671596 (= lt!2133241 lt!2133247)))

(declare-fun lt!2133248 () List!60287)

(assert (=> d!1671596 (= call!363673 lt!2133248)))

(assert (=> d!1671596 (= lt!2133247 (lemmaSamePrefixThenSameSuffix!2710 lt!2133055 call!363673 lt!2133055 lt!2133248 input!5817))))

(assert (=> d!1671596 (= lt!2133248 (getSuffix!3438 input!5817 lt!2133055))))

(declare-fun lt!2133227 () Unit!151998)

(declare-fun lt!2133224 () Unit!151998)

(assert (=> d!1671596 (= lt!2133227 lt!2133224)))

(assert (=> d!1671596 (isPrefix!5790 lt!2133055 (++!13173 lt!2133055 call!363673))))

(assert (=> d!1671596 (= lt!2133224 (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2133055 call!363673))))

(assert (=> d!1671596 (= (++!13173 lt!2133055 call!363673) input!5817)))

(assert (=> d!1671596 (= (findLongestMatchInnerZipper!313 call!363679 lt!2133055 (+ lt!2132889 1) call!363673 input!5817 lt!2132880) lt!2133244)))

(declare-fun bm!363726 () Bool)

(assert (=> bm!363726 (= call!363729 (tail!10174 call!363673))))

(declare-fun b!5176979 () Bool)

(assert (=> b!5176979 (= e!3225733 (tuple2!63865 lt!2133055 Nil!60163))))

(declare-fun bm!363730 () Bool)

(assert (=> bm!363730 (= call!363730 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (= (and d!1671596 c!891661) b!5176968))

(assert (= (and d!1671596 (not c!891661)) b!5176971))

(assert (= (and b!5176971 c!891660) b!5176976))

(assert (= (and b!5176971 (not c!891660)) b!5176970))

(assert (= (and b!5176976 c!891662) b!5176979))

(assert (= (and b!5176976 (not c!891662)) b!5176973))

(assert (= (and b!5176970 c!891665) b!5176975))

(assert (= (and b!5176970 (not c!891665)) b!5176966))

(assert (= (and b!5176970 c!891663) b!5176967))

(assert (= (and b!5176970 (not c!891663)) b!5176977))

(assert (= (and b!5176967 c!891664) b!5176974))

(assert (= (and b!5176967 (not c!891664)) b!5176972))

(assert (= (or b!5176967 b!5176977) bm!363726))

(assert (= (or b!5176967 b!5176977) bm!363729))

(assert (= (or b!5176967 b!5176977) bm!363724))

(assert (= (or b!5176967 b!5176977) bm!363728))

(assert (= (or b!5176976 b!5176975) bm!363730))

(assert (= (or b!5176976 b!5176970) bm!363723))

(assert (= (or b!5176976 b!5176975) bm!363727))

(assert (= (or b!5176976 b!5176975) bm!363725))

(assert (= (and d!1671596 res!2199883) b!5176978))

(assert (= (and b!5176978 (not res!2199884)) b!5176969))

(declare-fun m!6232562 () Bool)

(assert (=> bm!363725 m!6232562))

(assert (=> bm!363730 m!6232108))

(declare-fun m!6232564 () Bool)

(assert (=> b!5176967 m!6232564))

(declare-fun m!6232566 () Bool)

(assert (=> b!5176969 m!6232566))

(declare-fun m!6232568 () Bool)

(assert (=> b!5176969 m!6232568))

(declare-fun m!6232570 () Bool)

(assert (=> bm!363723 m!6232570))

(declare-fun m!6232572 () Bool)

(assert (=> bm!363726 m!6232572))

(assert (=> bm!363727 m!6232110))

(declare-fun m!6232574 () Bool)

(assert (=> bm!363724 m!6232574))

(declare-fun m!6232576 () Bool)

(assert (=> b!5176978 m!6232576))

(declare-fun m!6232578 () Bool)

(assert (=> b!5176970 m!6232578))

(assert (=> b!5176970 m!6232572))

(assert (=> b!5176970 m!6232070))

(declare-fun m!6232580 () Bool)

(assert (=> b!5176970 m!6232580))

(declare-fun m!6232582 () Bool)

(assert (=> b!5176970 m!6232582))

(declare-fun m!6232584 () Bool)

(assert (=> b!5176970 m!6232584))

(declare-fun m!6232586 () Bool)

(assert (=> b!5176970 m!6232586))

(declare-fun m!6232588 () Bool)

(assert (=> b!5176970 m!6232588))

(declare-fun m!6232590 () Bool)

(assert (=> b!5176970 m!6232590))

(declare-fun m!6232592 () Bool)

(assert (=> b!5176970 m!6232592))

(assert (=> b!5176970 m!6232588))

(declare-fun m!6232594 () Bool)

(assert (=> b!5176970 m!6232594))

(declare-fun m!6232596 () Bool)

(assert (=> b!5176970 m!6232596))

(declare-fun m!6232598 () Bool)

(assert (=> b!5176970 m!6232598))

(assert (=> b!5176970 m!6232596))

(assert (=> b!5176970 m!6232582))

(assert (=> b!5176970 m!6232568))

(declare-fun m!6232600 () Bool)

(assert (=> bm!363728 m!6232600))

(declare-fun m!6232602 () Bool)

(assert (=> d!1671596 m!6232602))

(declare-fun m!6232604 () Bool)

(assert (=> d!1671596 m!6232604))

(declare-fun m!6232606 () Bool)

(assert (=> d!1671596 m!6232606))

(assert (=> d!1671596 m!6232588))

(declare-fun m!6232608 () Bool)

(assert (=> d!1671596 m!6232608))

(declare-fun m!6232610 () Bool)

(assert (=> d!1671596 m!6232610))

(assert (=> d!1671596 m!6232604))

(declare-fun m!6232612 () Bool)

(assert (=> d!1671596 m!6232612))

(assert (=> bm!363729 m!6232578))

(assert (=> bm!363672 d!1671596))

(declare-fun d!1671598 () Bool)

(assert (=> d!1671598 (= (tail!10174 (getSuffix!3438 input!5817 lt!2132884)) (t!373440 (getSuffix!3438 input!5817 lt!2132884)))))

(assert (=> bm!363662 d!1671598))

(assert (=> bm!363674 d!1671512))

(assert (=> b!5176856 d!1671494))

(assert (=> b!5176856 d!1671466))

(assert (=> bm!363663 d!1671514))

(declare-fun d!1671600 () Bool)

(declare-fun choose!38443 ((InoxSet Context!8082) Int) (InoxSet Context!8082))

(assert (=> d!1671600 (= (flatMap!460 z!4581 lambda!258589) (choose!38443 z!4581 lambda!258589))))

(declare-fun bs!1204855 () Bool)

(assert (= bs!1204855 d!1671600))

(declare-fun m!6232614 () Bool)

(assert (=> bs!1204855 m!6232614))

(assert (=> d!1671532 d!1671600))

(declare-fun b!5176982 () Bool)

(declare-fun res!2199886 () Bool)

(declare-fun e!3225737 () Bool)

(assert (=> b!5176982 (=> (not res!2199886) (not e!3225737))))

(declare-fun lt!2133249 () List!60287)

(assert (=> b!5176982 (= res!2199886 (= (size!39693 lt!2133249) (+ (size!39693 (_1!35235 lt!2133135)) (size!39693 (_2!35235 lt!2133135)))))))

(declare-fun b!5176981 () Bool)

(declare-fun e!3225736 () List!60287)

(assert (=> b!5176981 (= e!3225736 (Cons!60163 (h!66611 (_1!35235 lt!2133135)) (++!13173 (t!373440 (_1!35235 lt!2133135)) (_2!35235 lt!2133135))))))

(declare-fun b!5176980 () Bool)

(assert (=> b!5176980 (= e!3225736 (_2!35235 lt!2133135))))

(declare-fun b!5176983 () Bool)

(assert (=> b!5176983 (= e!3225737 (or (not (= (_2!35235 lt!2133135) Nil!60163)) (= lt!2133249 (_1!35235 lt!2133135))))))

(declare-fun d!1671602 () Bool)

(assert (=> d!1671602 e!3225737))

(declare-fun res!2199885 () Bool)

(assert (=> d!1671602 (=> (not res!2199885) (not e!3225737))))

(assert (=> d!1671602 (= res!2199885 (= (content!10662 lt!2133249) ((_ map or) (content!10662 (_1!35235 lt!2133135)) (content!10662 (_2!35235 lt!2133135)))))))

(assert (=> d!1671602 (= lt!2133249 e!3225736)))

(declare-fun c!891666 () Bool)

(assert (=> d!1671602 (= c!891666 ((_ is Nil!60163) (_1!35235 lt!2133135)))))

(assert (=> d!1671602 (= (++!13173 (_1!35235 lt!2133135) (_2!35235 lt!2133135)) lt!2133249)))

(assert (= (and d!1671602 c!891666) b!5176980))

(assert (= (and d!1671602 (not c!891666)) b!5176981))

(assert (= (and d!1671602 res!2199885) b!5176982))

(assert (= (and b!5176982 res!2199886) b!5176983))

(declare-fun m!6232616 () Bool)

(assert (=> b!5176982 m!6232616))

(assert (=> b!5176982 m!6232336))

(declare-fun m!6232618 () Bool)

(assert (=> b!5176982 m!6232618))

(declare-fun m!6232620 () Bool)

(assert (=> b!5176981 m!6232620))

(declare-fun m!6232622 () Bool)

(assert (=> d!1671602 m!6232622))

(declare-fun m!6232624 () Bool)

(assert (=> d!1671602 m!6232624))

(declare-fun m!6232626 () Bool)

(assert (=> d!1671602 m!6232626))

(assert (=> d!1671526 d!1671602))

(declare-fun d!1671604 () Bool)

(declare-fun e!3225738 () Bool)

(assert (=> d!1671604 e!3225738))

(declare-fun res!2199888 () Bool)

(assert (=> d!1671604 (=> res!2199888 e!3225738)))

(declare-fun lt!2133250 () Bool)

(assert (=> d!1671604 (= res!2199888 (not lt!2133250))))

(declare-fun e!3225739 () Bool)

(assert (=> d!1671604 (= lt!2133250 e!3225739)))

(declare-fun res!2199890 () Bool)

(assert (=> d!1671604 (=> res!2199890 e!3225739)))

(assert (=> d!1671604 (= res!2199890 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1671604 (= (isPrefix!5790 lt!2132884 (++!13173 lt!2132884 (tail!10174 lt!2132885))) lt!2133250)))

(declare-fun b!5176984 () Bool)

(declare-fun e!3225740 () Bool)

(assert (=> b!5176984 (= e!3225739 e!3225740)))

(declare-fun res!2199887 () Bool)

(assert (=> b!5176984 (=> (not res!2199887) (not e!3225740))))

(assert (=> b!5176984 (= res!2199887 (not ((_ is Nil!60163) (++!13173 lt!2132884 (tail!10174 lt!2132885)))))))

(declare-fun b!5176985 () Bool)

(declare-fun res!2199889 () Bool)

(assert (=> b!5176985 (=> (not res!2199889) (not e!3225740))))

(assert (=> b!5176985 (= res!2199889 (= (head!11075 lt!2132884) (head!11075 (++!13173 lt!2132884 (tail!10174 lt!2132885)))))))

(declare-fun b!5176986 () Bool)

(assert (=> b!5176986 (= e!3225740 (isPrefix!5790 (tail!10174 lt!2132884) (tail!10174 (++!13173 lt!2132884 (tail!10174 lt!2132885)))))))

(declare-fun b!5176987 () Bool)

(assert (=> b!5176987 (= e!3225738 (>= (size!39693 (++!13173 lt!2132884 (tail!10174 lt!2132885))) (size!39693 lt!2132884)))))

(assert (= (and d!1671604 (not res!2199890)) b!5176984))

(assert (= (and b!5176984 res!2199887) b!5176985))

(assert (= (and b!5176985 res!2199889) b!5176986))

(assert (= (and d!1671604 (not res!2199888)) b!5176987))

(assert (=> b!5176985 m!6232404))

(assert (=> b!5176985 m!6232356))

(declare-fun m!6232628 () Bool)

(assert (=> b!5176985 m!6232628))

(assert (=> b!5176986 m!6232406))

(assert (=> b!5176986 m!6232356))

(declare-fun m!6232630 () Bool)

(assert (=> b!5176986 m!6232630))

(assert (=> b!5176986 m!6232406))

(assert (=> b!5176986 m!6232630))

(declare-fun m!6232632 () Bool)

(assert (=> b!5176986 m!6232632))

(assert (=> b!5176987 m!6232356))

(declare-fun m!6232634 () Bool)

(assert (=> b!5176987 m!6232634))

(assert (=> b!5176987 m!6232094))

(assert (=> d!1671526 d!1671604))

(declare-fun d!1671606 () Bool)

(assert (=> d!1671606 (isPrefix!5790 lt!2132884 (++!13173 lt!2132884 (tail!10174 lt!2132885)))))

(declare-fun lt!2133253 () Unit!151998)

(declare-fun choose!38444 (List!60287 List!60287) Unit!151998)

(assert (=> d!1671606 (= lt!2133253 (choose!38444 lt!2132884 (tail!10174 lt!2132885)))))

(assert (=> d!1671606 (= (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2132884 (tail!10174 lt!2132885)) lt!2133253)))

(declare-fun bs!1204856 () Bool)

(assert (= bs!1204856 d!1671606))

(assert (=> bs!1204856 m!6232054))

(assert (=> bs!1204856 m!6232356))

(assert (=> bs!1204856 m!6232356))

(assert (=> bs!1204856 m!6232358))

(assert (=> bs!1204856 m!6232054))

(declare-fun m!6232636 () Bool)

(assert (=> bs!1204856 m!6232636))

(assert (=> d!1671526 d!1671606))

(declare-fun d!1671608 () Bool)

(assert (=> d!1671608 (= (tail!10174 lt!2132885) lt!2133139)))

(declare-fun lt!2133256 () Unit!151998)

(declare-fun choose!38445 (List!60287 List!60287 List!60287 List!60287 List!60287) Unit!151998)

(assert (=> d!1671608 (= lt!2133256 (choose!38445 lt!2132884 (tail!10174 lt!2132885) lt!2132884 lt!2133139 input!5817))))

(assert (=> d!1671608 (isPrefix!5790 lt!2132884 input!5817)))

(assert (=> d!1671608 (= (lemmaSamePrefixThenSameSuffix!2710 lt!2132884 (tail!10174 lt!2132885) lt!2132884 lt!2133139 input!5817) lt!2133256)))

(declare-fun bs!1204857 () Bool)

(assert (= bs!1204857 d!1671608))

(assert (=> bs!1204857 m!6232054))

(declare-fun m!6232638 () Bool)

(assert (=> bs!1204857 m!6232638))

(assert (=> bs!1204857 m!6232078))

(assert (=> d!1671526 d!1671608))

(assert (=> d!1671526 d!1671474))

(declare-fun b!5176990 () Bool)

(declare-fun res!2199892 () Bool)

(declare-fun e!3225742 () Bool)

(assert (=> b!5176990 (=> (not res!2199892) (not e!3225742))))

(declare-fun lt!2133257 () List!60287)

(assert (=> b!5176990 (= res!2199892 (= (size!39693 lt!2133257) (+ (size!39693 lt!2132884) (size!39693 (tail!10174 lt!2132885)))))))

(declare-fun b!5176989 () Bool)

(declare-fun e!3225741 () List!60287)

(assert (=> b!5176989 (= e!3225741 (Cons!60163 (h!66611 lt!2132884) (++!13173 (t!373440 lt!2132884) (tail!10174 lt!2132885))))))

(declare-fun b!5176988 () Bool)

(assert (=> b!5176988 (= e!3225741 (tail!10174 lt!2132885))))

(declare-fun b!5176991 () Bool)

(assert (=> b!5176991 (= e!3225742 (or (not (= (tail!10174 lt!2132885) Nil!60163)) (= lt!2133257 lt!2132884)))))

(declare-fun d!1671610 () Bool)

(assert (=> d!1671610 e!3225742))

(declare-fun res!2199891 () Bool)

(assert (=> d!1671610 (=> (not res!2199891) (not e!3225742))))

(assert (=> d!1671610 (= res!2199891 (= (content!10662 lt!2133257) ((_ map or) (content!10662 lt!2132884) (content!10662 (tail!10174 lt!2132885)))))))

(assert (=> d!1671610 (= lt!2133257 e!3225741)))

(declare-fun c!891667 () Bool)

(assert (=> d!1671610 (= c!891667 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1671610 (= (++!13173 lt!2132884 (tail!10174 lt!2132885)) lt!2133257)))

(assert (= (and d!1671610 c!891667) b!5176988))

(assert (= (and d!1671610 (not c!891667)) b!5176989))

(assert (= (and d!1671610 res!2199891) b!5176990))

(assert (= (and b!5176990 res!2199892) b!5176991))

(declare-fun m!6232640 () Bool)

(assert (=> b!5176990 m!6232640))

(assert (=> b!5176990 m!6232094))

(assert (=> b!5176990 m!6232054))

(declare-fun m!6232642 () Bool)

(assert (=> b!5176990 m!6232642))

(assert (=> b!5176989 m!6232054))

(declare-fun m!6232644 () Bool)

(assert (=> b!5176989 m!6232644))

(declare-fun m!6232646 () Bool)

(assert (=> d!1671610 m!6232646))

(declare-fun m!6232648 () Bool)

(assert (=> d!1671610 m!6232648))

(assert (=> d!1671610 m!6232054))

(declare-fun m!6232650 () Bool)

(assert (=> d!1671610 m!6232650))

(assert (=> d!1671526 d!1671610))

(declare-fun bs!1204858 () Bool)

(declare-fun d!1671612 () Bool)

(assert (= bs!1204858 (and d!1671612 d!1671546)))

(declare-fun lambda!258610 () Int)

(assert (=> bs!1204858 (not (= lambda!258610 lambda!258592))))

(declare-fun bs!1204859 () Bool)

(declare-fun b!5176996 () Bool)

(assert (= bs!1204859 (and b!5176996 d!1671546)))

(declare-fun lambda!258611 () Int)

(assert (=> bs!1204859 (not (= lambda!258611 lambda!258592))))

(declare-fun bs!1204860 () Bool)

(assert (= bs!1204860 (and b!5176996 d!1671612)))

(assert (=> bs!1204860 (not (= lambda!258611 lambda!258610))))

(declare-fun bs!1204861 () Bool)

(declare-fun b!5176997 () Bool)

(assert (= bs!1204861 (and b!5176997 d!1671546)))

(declare-fun lambda!258612 () Int)

(assert (=> bs!1204861 (not (= lambda!258612 lambda!258592))))

(declare-fun bs!1204862 () Bool)

(assert (= bs!1204862 (and b!5176997 d!1671612)))

(assert (=> bs!1204862 (not (= lambda!258612 lambda!258610))))

(declare-fun bs!1204863 () Bool)

(assert (= bs!1204863 (and b!5176997 b!5176996)))

(assert (=> bs!1204863 (= lambda!258612 lambda!258611)))

(declare-fun e!3225749 () Unit!151998)

(declare-fun Unit!152023 () Unit!151998)

(assert (=> b!5176996 (= e!3225749 Unit!152023)))

(declare-datatypes ((List!60289 0))(
  ( (Nil!60165) (Cons!60165 (h!66613 Context!8082) (t!373442 List!60289)) )
))
(declare-fun lt!2133281 () List!60289)

(declare-fun call!363740 () List!60289)

(assert (=> b!5176996 (= lt!2133281 call!363740)))

(declare-fun lt!2133275 () Unit!151998)

(declare-fun lemmaNotForallThenExists!478 (List!60289 Int) Unit!151998)

(assert (=> b!5176996 (= lt!2133275 (lemmaNotForallThenExists!478 lt!2133281 lambda!258610))))

(declare-fun call!363741 () Bool)

(assert (=> b!5176996 call!363741))

(declare-fun lt!2133278 () Unit!151998)

(assert (=> b!5176996 (= lt!2133278 lt!2133275)))

(declare-fun bm!363735 () Bool)

(declare-fun toList!8458 ((InoxSet Context!8082)) List!60289)

(assert (=> bm!363735 (= call!363740 (toList!8458 lt!2132878))))

(declare-fun Unit!152024 () Unit!151998)

(assert (=> b!5176997 (= e!3225749 Unit!152024)))

(declare-fun lt!2133274 () List!60289)

(assert (=> b!5176997 (= lt!2133274 call!363740)))

(declare-fun lt!2133276 () Unit!151998)

(declare-fun lemmaForallThenNotExists!445 (List!60289 Int) Unit!151998)

(assert (=> b!5176997 (= lt!2133276 (lemmaForallThenNotExists!445 lt!2133274 lambda!258610))))

(assert (=> b!5176997 (not call!363741)))

(declare-fun lt!2133279 () Unit!151998)

(assert (=> b!5176997 (= lt!2133279 lt!2133276)))

(declare-fun c!891678 () Bool)

(declare-fun bm!363736 () Bool)

(declare-fun exists!1941 (List!60289 Int) Bool)

(assert (=> bm!363736 (= call!363741 (exists!1941 (ite c!891678 lt!2133281 lt!2133274) (ite c!891678 lambda!258611 lambda!258612)))))

(declare-fun lt!2133277 () Bool)

(declare-datatypes ((Option!14843 0))(
  ( (None!14842) (Some!14842 (v!50871 List!60287)) )
))
(declare-fun isEmpty!32212 (Option!14843) Bool)

(declare-fun getLanguageWitness!1016 ((InoxSet Context!8082)) Option!14843)

(assert (=> d!1671612 (= lt!2133277 (isEmpty!32212 (getLanguageWitness!1016 lt!2132878)))))

(declare-fun forall!14162 ((InoxSet Context!8082) Int) Bool)

(assert (=> d!1671612 (= lt!2133277 (forall!14162 lt!2132878 lambda!258610))))

(declare-fun lt!2133280 () Unit!151998)

(assert (=> d!1671612 (= lt!2133280 e!3225749)))

(assert (=> d!1671612 (= c!891678 (not (forall!14162 lt!2132878 lambda!258610)))))

(assert (=> d!1671612 (= (lostCauseZipper!1343 lt!2132878) lt!2133277)))

(assert (= (and d!1671612 c!891678) b!5176996))

(assert (= (and d!1671612 (not c!891678)) b!5176997))

(assert (= (or b!5176996 b!5176997) bm!363735))

(assert (= (or b!5176996 b!5176997) bm!363736))

(declare-fun m!6232652 () Bool)

(assert (=> bm!363736 m!6232652))

(declare-fun m!6232654 () Bool)

(assert (=> b!5176996 m!6232654))

(declare-fun m!6232656 () Bool)

(assert (=> d!1671612 m!6232656))

(assert (=> d!1671612 m!6232656))

(declare-fun m!6232658 () Bool)

(assert (=> d!1671612 m!6232658))

(declare-fun m!6232660 () Bool)

(assert (=> d!1671612 m!6232660))

(assert (=> d!1671612 m!6232660))

(declare-fun m!6232662 () Bool)

(assert (=> b!5176997 m!6232662))

(declare-fun m!6232664 () Bool)

(assert (=> bm!363735 m!6232664))

(assert (=> d!1671526 d!1671612))

(assert (=> d!1671512 d!1671514))

(declare-fun d!1671614 () Bool)

(assert (=> d!1671614 (isPrefix!5790 input!5817 input!5817)))

(assert (=> d!1671614 true))

(declare-fun _$45!2362 () Unit!151998)

(assert (=> d!1671614 (= (choose!38437 input!5817 input!5817) _$45!2362)))

(declare-fun bs!1204864 () Bool)

(assert (= bs!1204864 d!1671614))

(assert (=> bs!1204864 m!6232110))

(assert (=> d!1671512 d!1671614))

(declare-fun b!5177000 () Bool)

(declare-fun res!2199894 () Bool)

(declare-fun e!3225751 () Bool)

(assert (=> b!5177000 (=> (not res!2199894) (not e!3225751))))

(declare-fun lt!2133282 () List!60287)

(assert (=> b!5177000 (= res!2199894 (= (size!39693 lt!2133282) (+ (size!39693 testedP!294) (size!39693 lt!2133073))))))

(declare-fun b!5176999 () Bool)

(declare-fun e!3225750 () List!60287)

(assert (=> b!5176999 (= e!3225750 (Cons!60163 (h!66611 testedP!294) (++!13173 (t!373440 testedP!294) lt!2133073)))))

(declare-fun b!5176998 () Bool)

(assert (=> b!5176998 (= e!3225750 lt!2133073)))

(declare-fun b!5177001 () Bool)

(assert (=> b!5177001 (= e!3225751 (or (not (= lt!2133073 Nil!60163)) (= lt!2133282 testedP!294)))))

(declare-fun d!1671616 () Bool)

(assert (=> d!1671616 e!3225751))

(declare-fun res!2199893 () Bool)

(assert (=> d!1671616 (=> (not res!2199893) (not e!3225751))))

(assert (=> d!1671616 (= res!2199893 (= (content!10662 lt!2133282) ((_ map or) (content!10662 testedP!294) (content!10662 lt!2133073))))))

(assert (=> d!1671616 (= lt!2133282 e!3225750)))

(declare-fun c!891679 () Bool)

(assert (=> d!1671616 (= c!891679 ((_ is Nil!60163) testedP!294))))

(assert (=> d!1671616 (= (++!13173 testedP!294 lt!2133073) lt!2133282)))

(assert (= (and d!1671616 c!891679) b!5176998))

(assert (= (and d!1671616 (not c!891679)) b!5176999))

(assert (= (and d!1671616 res!2199893) b!5177000))

(assert (= (and b!5177000 res!2199894) b!5177001))

(declare-fun m!6232666 () Bool)

(assert (=> b!5177000 m!6232666))

(assert (=> b!5177000 m!6232066))

(declare-fun m!6232668 () Bool)

(assert (=> b!5177000 m!6232668))

(declare-fun m!6232670 () Bool)

(assert (=> b!5176999 m!6232670))

(declare-fun m!6232672 () Bool)

(assert (=> d!1671616 m!6232672))

(assert (=> d!1671616 m!6232390))

(declare-fun m!6232674 () Bool)

(assert (=> d!1671616 m!6232674))

(assert (=> d!1671498 d!1671616))

(assert (=> d!1671498 d!1671494))

(assert (=> d!1671498 d!1671500))

(assert (=> bm!363703 d!1671514))

(assert (=> bm!363673 d!1671534))

(declare-fun d!1671618 () Bool)

(assert (=> d!1671618 (= (head!11075 lt!2132884) (h!66611 lt!2132884))))

(assert (=> b!5176854 d!1671618))

(declare-fun d!1671620 () Bool)

(assert (=> d!1671620 (= (head!11075 input!5817) (h!66611 input!5817))))

(assert (=> b!5176854 d!1671620))

(declare-fun d!1671622 () Bool)

(declare-fun lt!2133283 () List!60287)

(assert (=> d!1671622 (= (++!13173 (t!373440 testedP!294) lt!2133283) (tail!10174 input!5817))))

(declare-fun e!3225752 () List!60287)

(assert (=> d!1671622 (= lt!2133283 e!3225752)))

(declare-fun c!891680 () Bool)

(assert (=> d!1671622 (= c!891680 ((_ is Cons!60163) (t!373440 testedP!294)))))

(assert (=> d!1671622 (>= (size!39693 (tail!10174 input!5817)) (size!39693 (t!373440 testedP!294)))))

(assert (=> d!1671622 (= (getSuffix!3438 (tail!10174 input!5817) (t!373440 testedP!294)) lt!2133283)))

(declare-fun b!5177002 () Bool)

(assert (=> b!5177002 (= e!3225752 (getSuffix!3438 (tail!10174 (tail!10174 input!5817)) (t!373440 (t!373440 testedP!294))))))

(declare-fun b!5177003 () Bool)

(assert (=> b!5177003 (= e!3225752 (tail!10174 input!5817))))

(assert (= (and d!1671622 c!891680) b!5177002))

(assert (= (and d!1671622 (not c!891680)) b!5177003))

(declare-fun m!6232676 () Bool)

(assert (=> d!1671622 m!6232676))

(assert (=> d!1671622 m!6232140))

(declare-fun m!6232678 () Bool)

(assert (=> d!1671622 m!6232678))

(assert (=> d!1671622 m!6232254))

(assert (=> b!5177002 m!6232140))

(declare-fun m!6232680 () Bool)

(assert (=> b!5177002 m!6232680))

(assert (=> b!5177002 m!6232680))

(declare-fun m!6232682 () Bool)

(assert (=> b!5177002 m!6232682))

(assert (=> b!5176765 d!1671622))

(declare-fun d!1671624 () Bool)

(assert (=> d!1671624 (= (tail!10174 input!5817) (t!373440 input!5817))))

(assert (=> b!5176765 d!1671624))

(assert (=> bm!363667 d!1671546))

(declare-fun d!1671626 () Bool)

(assert (=> d!1671626 (= (isEmpty!32211 (_1!35235 lt!2132989)) ((_ is Nil!60163) (_1!35235 lt!2132989)))))

(assert (=> b!5176723 d!1671626))

(assert (=> bm!363669 d!1671516))

(declare-fun d!1671628 () Bool)

(assert (=> d!1671628 (= (isEmpty!32211 (_1!35235 lt!2133135)) ((_ is Nil!60163) (_1!35235 lt!2133135)))))

(assert (=> b!5176819 d!1671628))

(declare-fun d!1671630 () Bool)

(declare-fun lt!2133286 () Bool)

(assert (=> d!1671630 (= lt!2133286 (exists!1941 (toList!8458 z!4581) lambda!258592))))

(declare-fun choose!38446 ((InoxSet Context!8082) Int) Bool)

(assert (=> d!1671630 (= lt!2133286 (choose!38446 z!4581 lambda!258592))))

(assert (=> d!1671630 (= (exists!1939 z!4581 lambda!258592) lt!2133286)))

(declare-fun bs!1204865 () Bool)

(assert (= bs!1204865 d!1671630))

(declare-fun m!6232684 () Bool)

(assert (=> bs!1204865 m!6232684))

(assert (=> bs!1204865 m!6232684))

(declare-fun m!6232686 () Bool)

(assert (=> bs!1204865 m!6232686))

(declare-fun m!6232688 () Bool)

(assert (=> bs!1204865 m!6232688))

(assert (=> d!1671546 d!1671630))

(declare-fun d!1671632 () Bool)

(declare-fun lt!2133287 () Int)

(assert (=> d!1671632 (>= lt!2133287 0)))

(declare-fun e!3225753 () Int)

(assert (=> d!1671632 (= lt!2133287 e!3225753)))

(declare-fun c!891681 () Bool)

(assert (=> d!1671632 (= c!891681 ((_ is Nil!60163) lt!2133145))))

(assert (=> d!1671632 (= (size!39693 lt!2133145) lt!2133287)))

(declare-fun b!5177004 () Bool)

(assert (=> b!5177004 (= e!3225753 0)))

(declare-fun b!5177005 () Bool)

(assert (=> b!5177005 (= e!3225753 (+ 1 (size!39693 (t!373440 lt!2133145))))))

(assert (= (and d!1671632 c!891681) b!5177004))

(assert (= (and d!1671632 (not c!891681)) b!5177005))

(declare-fun m!6232690 () Bool)

(assert (=> b!5177005 m!6232690))

(assert (=> b!5176839 d!1671632))

(assert (=> b!5176839 d!1671500))

(declare-fun d!1671634 () Bool)

(declare-fun lt!2133288 () Int)

(assert (=> d!1671634 (>= lt!2133288 0)))

(declare-fun e!3225754 () Int)

(assert (=> d!1671634 (= lt!2133288 e!3225754)))

(declare-fun c!891682 () Bool)

(assert (=> d!1671634 (= c!891682 ((_ is Nil!60163) (Cons!60163 lt!2132879 Nil!60163)))))

(assert (=> d!1671634 (= (size!39693 (Cons!60163 lt!2132879 Nil!60163)) lt!2133288)))

(declare-fun b!5177006 () Bool)

(assert (=> b!5177006 (= e!3225754 0)))

(declare-fun b!5177007 () Bool)

(assert (=> b!5177007 (= e!3225754 (+ 1 (size!39693 (t!373440 (Cons!60163 lt!2132879 Nil!60163)))))))

(assert (= (and d!1671634 c!891682) b!5177006))

(assert (= (and d!1671634 (not c!891682)) b!5177007))

(declare-fun m!6232692 () Bool)

(assert (=> b!5177007 m!6232692))

(assert (=> b!5176839 d!1671634))

(declare-fun bs!1204866 () Bool)

(declare-fun d!1671636 () Bool)

(assert (= bs!1204866 (and d!1671636 d!1671546)))

(declare-fun lambda!258613 () Int)

(assert (=> bs!1204866 (= lambda!258613 lambda!258592)))

(declare-fun bs!1204867 () Bool)

(assert (= bs!1204867 (and d!1671636 d!1671612)))

(assert (=> bs!1204867 (not (= lambda!258613 lambda!258610))))

(declare-fun bs!1204868 () Bool)

(assert (= bs!1204868 (and d!1671636 b!5176996)))

(assert (=> bs!1204868 (not (= lambda!258613 lambda!258611))))

(declare-fun bs!1204869 () Bool)

(assert (= bs!1204869 (and d!1671636 b!5176997)))

(assert (=> bs!1204869 (not (= lambda!258613 lambda!258612))))

(assert (=> d!1671636 (= (nullableZipper!1195 baseZ!62) (exists!1939 baseZ!62 lambda!258613))))

(declare-fun bs!1204870 () Bool)

(assert (= bs!1204870 d!1671636))

(declare-fun m!6232694 () Bool)

(assert (=> bs!1204870 m!6232694))

(assert (=> b!5176644 d!1671636))

(declare-fun d!1671638 () Bool)

(declare-fun lt!2133289 () Int)

(assert (=> d!1671638 (>= lt!2133289 0)))

(declare-fun e!3225755 () Int)

(assert (=> d!1671638 (= lt!2133289 e!3225755)))

(declare-fun c!891683 () Bool)

(assert (=> d!1671638 (= c!891683 ((_ is Nil!60163) (t!373440 input!5817)))))

(assert (=> d!1671638 (= (size!39693 (t!373440 input!5817)) lt!2133289)))

(declare-fun b!5177008 () Bool)

(assert (=> b!5177008 (= e!3225755 0)))

(declare-fun b!5177009 () Bool)

(assert (=> b!5177009 (= e!3225755 (+ 1 (size!39693 (t!373440 (t!373440 input!5817)))))))

(assert (= (and d!1671638 c!891683) b!5177008))

(assert (= (and d!1671638 (not c!891683)) b!5177009))

(declare-fun m!6232696 () Bool)

(assert (=> b!5177009 m!6232696))

(assert (=> b!5176742 d!1671638))

(declare-fun d!1671640 () Bool)

(declare-fun c!891686 () Bool)

(assert (=> d!1671640 (= c!891686 ((_ is Nil!60163) lt!2133145))))

(declare-fun e!3225758 () (InoxSet C!29584))

(assert (=> d!1671640 (= (content!10662 lt!2133145) e!3225758)))

(declare-fun b!5177014 () Bool)

(assert (=> b!5177014 (= e!3225758 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177015 () Bool)

(assert (=> b!5177015 (= e!3225758 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133145) true) (content!10662 (t!373440 lt!2133145))))))

(assert (= (and d!1671640 c!891686) b!5177014))

(assert (= (and d!1671640 (not c!891686)) b!5177015))

(declare-fun m!6232698 () Bool)

(assert (=> b!5177015 m!6232698))

(declare-fun m!6232700 () Bool)

(assert (=> b!5177015 m!6232700))

(assert (=> d!1671538 d!1671640))

(declare-fun d!1671642 () Bool)

(declare-fun c!891687 () Bool)

(assert (=> d!1671642 (= c!891687 ((_ is Nil!60163) testedP!294))))

(declare-fun e!3225759 () (InoxSet C!29584))

(assert (=> d!1671642 (= (content!10662 testedP!294) e!3225759)))

(declare-fun b!5177016 () Bool)

(assert (=> b!5177016 (= e!3225759 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177017 () Bool)

(assert (=> b!5177017 (= e!3225759 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 testedP!294) true) (content!10662 (t!373440 testedP!294))))))

(assert (= (and d!1671642 c!891687) b!5177016))

(assert (= (and d!1671642 (not c!891687)) b!5177017))

(declare-fun m!6232702 () Bool)

(assert (=> b!5177017 m!6232702))

(declare-fun m!6232704 () Bool)

(assert (=> b!5177017 m!6232704))

(assert (=> d!1671538 d!1671642))

(declare-fun d!1671644 () Bool)

(declare-fun c!891688 () Bool)

(assert (=> d!1671644 (= c!891688 ((_ is Nil!60163) (Cons!60163 lt!2132879 Nil!60163)))))

(declare-fun e!3225760 () (InoxSet C!29584))

(assert (=> d!1671644 (= (content!10662 (Cons!60163 lt!2132879 Nil!60163)) e!3225760)))

(declare-fun b!5177018 () Bool)

(assert (=> b!5177018 (= e!3225760 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177019 () Bool)

(assert (=> b!5177019 (= e!3225760 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (Cons!60163 lt!2132879 Nil!60163)) true) (content!10662 (t!373440 (Cons!60163 lt!2132879 Nil!60163)))))))

(assert (= (and d!1671644 c!891688) b!5177018))

(assert (= (and d!1671644 (not c!891688)) b!5177019))

(declare-fun m!6232706 () Bool)

(assert (=> b!5177019 m!6232706))

(declare-fun m!6232708 () Bool)

(assert (=> b!5177019 m!6232708))

(assert (=> d!1671538 d!1671644))

(assert (=> b!5176798 d!1671620))

(declare-fun d!1671646 () Bool)

(declare-fun lt!2133290 () Int)

(assert (=> d!1671646 (>= lt!2133290 0)))

(declare-fun e!3225761 () Int)

(assert (=> d!1671646 (= lt!2133290 e!3225761)))

(declare-fun c!891689 () Bool)

(assert (=> d!1671646 (= c!891689 ((_ is Nil!60163) (_1!35235 lt!2133054)))))

(assert (=> d!1671646 (= (size!39693 (_1!35235 lt!2133054)) lt!2133290)))

(declare-fun b!5177020 () Bool)

(assert (=> b!5177020 (= e!3225761 0)))

(declare-fun b!5177021 () Bool)

(assert (=> b!5177021 (= e!3225761 (+ 1 (size!39693 (t!373440 (_1!35235 lt!2133054)))))))

(assert (= (and d!1671646 c!891689) b!5177020))

(assert (= (and d!1671646 (not c!891689)) b!5177021))

(declare-fun m!6232710 () Bool)

(assert (=> b!5177021 m!6232710))

(assert (=> b!5176746 d!1671646))

(assert (=> b!5176746 d!1671500))

(declare-fun d!1671648 () Bool)

(assert (=> d!1671648 (= (isEmpty!32211 (_1!35235 lt!2133137)) ((_ is Nil!60163) (_1!35235 lt!2133137)))))

(assert (=> b!5176808 d!1671648))

(assert (=> d!1671470 d!1671494))

(declare-fun bm!363737 () Bool)

(declare-fun call!363742 () Bool)

(assert (=> bm!363737 (= call!363742 (nullableZipper!1195 lt!2132878))))

(declare-fun bm!363738 () Bool)

(declare-fun call!363749 () (InoxSet Context!8082))

(declare-fun call!363745 () C!29584)

(assert (=> bm!363738 (= call!363749 (derivationStepZipper!1003 lt!2132878 call!363745))))

(declare-fun b!5177022 () Bool)

(declare-fun e!3225762 () Unit!151998)

(declare-fun Unit!152025 () Unit!151998)

(assert (=> b!5177022 (= e!3225762 Unit!152025)))

(declare-fun b!5177023 () Bool)

(declare-fun e!3225768 () tuple2!63864)

(declare-fun e!3225763 () tuple2!63864)

(assert (=> b!5177023 (= e!3225768 e!3225763)))

(declare-fun lt!2133314 () tuple2!63864)

(declare-fun call!363748 () tuple2!63864)

(assert (=> b!5177023 (= lt!2133314 call!363748)))

(declare-fun c!891694 () Bool)

(assert (=> b!5177023 (= c!891694 (isEmpty!32211 (_1!35235 lt!2133314)))))

(declare-fun bm!363739 () Bool)

(declare-fun call!363746 () Unit!151998)

(assert (=> bm!363739 (= call!363746 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2132884 input!5817))))

(declare-fun b!5177024 () Bool)

(declare-fun e!3225766 () tuple2!63864)

(assert (=> b!5177024 (= e!3225766 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun b!5177025 () Bool)

(declare-fun e!3225765 () Bool)

(declare-fun lt!2133312 () tuple2!63864)

(assert (=> b!5177025 (= e!3225765 (>= (size!39693 (_1!35235 lt!2133312)) (size!39693 lt!2132884)))))

(declare-fun b!5177026 () Bool)

(declare-fun c!891693 () Bool)

(assert (=> b!5177026 (= c!891693 call!363742)))

(declare-fun lt!2133304 () Unit!151998)

(declare-fun lt!2133294 () Unit!151998)

(assert (=> b!5177026 (= lt!2133304 lt!2133294)))

(declare-fun lt!2133308 () List!60287)

(declare-fun lt!2133305 () C!29584)

(assert (=> b!5177026 (= (++!13173 (++!13173 lt!2132884 (Cons!60163 lt!2133305 Nil!60163)) lt!2133308) input!5817)))

(assert (=> b!5177026 (= lt!2133294 (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2132884 lt!2133305 lt!2133308 input!5817))))

(assert (=> b!5177026 (= lt!2133308 (tail!10174 (getSuffix!3438 input!5817 lt!2132884)))))

(assert (=> b!5177026 (= lt!2133305 (head!11075 (getSuffix!3438 input!5817 lt!2132884)))))

(declare-fun lt!2133307 () Unit!151998)

(declare-fun lt!2133296 () Unit!151998)

(assert (=> b!5177026 (= lt!2133307 lt!2133296)))

(assert (=> b!5177026 (isPrefix!5790 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)) input!5817)))

(assert (=> b!5177026 (= lt!2133296 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2132884 input!5817))))

(declare-fun lt!2133313 () List!60287)

(assert (=> b!5177026 (= lt!2133313 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))

(declare-fun lt!2133311 () Unit!151998)

(assert (=> b!5177026 (= lt!2133311 e!3225762)))

(declare-fun c!891695 () Bool)

(assert (=> b!5177026 (= c!891695 (= (size!39693 lt!2132884) (size!39693 input!5817)))))

(declare-fun lt!2133306 () Unit!151998)

(declare-fun lt!2133297 () Unit!151998)

(assert (=> b!5177026 (= lt!2133306 lt!2133297)))

(assert (=> b!5177026 (<= (size!39693 lt!2132884) (size!39693 input!5817))))

(assert (=> b!5177026 (= lt!2133297 (lemmaIsPrefixThenSmallerEqSize!951 lt!2132884 input!5817))))

(declare-fun e!3225769 () tuple2!63864)

(assert (=> b!5177026 (= e!3225769 e!3225768)))

(declare-fun b!5177027 () Bool)

(assert (=> b!5177027 (= e!3225766 e!3225769)))

(declare-fun c!891690 () Bool)

(assert (=> b!5177027 (= c!891690 (= (size!39693 lt!2132884) (size!39693 input!5817)))))

(declare-fun b!5177028 () Bool)

(assert (=> b!5177028 (= e!3225763 lt!2133314)))

(declare-fun b!5177029 () Bool)

(declare-fun e!3225767 () tuple2!63864)

(assert (=> b!5177029 (= e!3225767 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun bm!363741 () Bool)

(declare-fun call!363747 () Bool)

(assert (=> bm!363741 (= call!363747 (isPrefix!5790 input!5817 input!5817))))

(declare-fun b!5177030 () Bool)

(assert (=> b!5177030 (= e!3225763 (tuple2!63865 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))

(declare-fun b!5177031 () Bool)

(declare-fun Unit!152028 () Unit!151998)

(assert (=> b!5177031 (= e!3225762 Unit!152028)))

(declare-fun lt!2133293 () Unit!151998)

(declare-fun call!363744 () Unit!151998)

(assert (=> b!5177031 (= lt!2133293 call!363744)))

(assert (=> b!5177031 call!363747))

(declare-fun lt!2133302 () Unit!151998)

(assert (=> b!5177031 (= lt!2133302 lt!2133293)))

(declare-fun lt!2133291 () Unit!151998)

(assert (=> b!5177031 (= lt!2133291 call!363746)))

(assert (=> b!5177031 (= input!5817 lt!2132884)))

(declare-fun lt!2133303 () Unit!151998)

(assert (=> b!5177031 (= lt!2133303 lt!2133291)))

(assert (=> b!5177031 false))

(declare-fun b!5177032 () Bool)

(declare-fun c!891692 () Bool)

(assert (=> b!5177032 (= c!891692 call!363742)))

(declare-fun lt!2133298 () Unit!151998)

(declare-fun lt!2133310 () Unit!151998)

(assert (=> b!5177032 (= lt!2133298 lt!2133310)))

(assert (=> b!5177032 (= input!5817 lt!2132884)))

(assert (=> b!5177032 (= lt!2133310 call!363746)))

(declare-fun lt!2133300 () Unit!151998)

(declare-fun lt!2133299 () Unit!151998)

(assert (=> b!5177032 (= lt!2133300 lt!2133299)))

(assert (=> b!5177032 call!363747))

(assert (=> b!5177032 (= lt!2133299 call!363744)))

(assert (=> b!5177032 (= e!3225769 e!3225767)))

(declare-fun b!5177033 () Bool)

(assert (=> b!5177033 (= e!3225768 call!363748)))

(declare-fun call!363743 () List!60287)

(declare-fun bm!363742 () Bool)

(assert (=> bm!363742 (= call!363748 (findLongestMatchInnerZipper!313 call!363749 lt!2133313 (+ (size!39693 lt!2132884) 1) call!363743 input!5817 (size!39693 input!5817)))))

(declare-fun b!5177034 () Bool)

(declare-fun e!3225764 () Bool)

(assert (=> b!5177034 (= e!3225764 e!3225765)))

(declare-fun res!2199896 () Bool)

(assert (=> b!5177034 (=> res!2199896 e!3225765)))

(assert (=> b!5177034 (= res!2199896 (isEmpty!32211 (_1!35235 lt!2133312)))))

(declare-fun bm!363743 () Bool)

(assert (=> bm!363743 (= call!363745 (head!11075 (getSuffix!3438 input!5817 lt!2132884)))))

(declare-fun d!1671650 () Bool)

(assert (=> d!1671650 e!3225764))

(declare-fun res!2199895 () Bool)

(assert (=> d!1671650 (=> (not res!2199895) (not e!3225764))))

(assert (=> d!1671650 (= res!2199895 (= (++!13173 (_1!35235 lt!2133312) (_2!35235 lt!2133312)) input!5817))))

(assert (=> d!1671650 (= lt!2133312 e!3225766)))

(declare-fun c!891691 () Bool)

(assert (=> d!1671650 (= c!891691 (lostCauseZipper!1343 lt!2132878))))

(declare-fun lt!2133301 () Unit!151998)

(declare-fun Unit!152030 () Unit!151998)

(assert (=> d!1671650 (= lt!2133301 Unit!152030)))

(assert (=> d!1671650 (= (getSuffix!3438 input!5817 lt!2132884) (getSuffix!3438 input!5817 lt!2132884))))

(declare-fun lt!2133309 () Unit!151998)

(declare-fun lt!2133315 () Unit!151998)

(assert (=> d!1671650 (= lt!2133309 lt!2133315)))

(declare-fun lt!2133316 () List!60287)

(assert (=> d!1671650 (= (getSuffix!3438 input!5817 lt!2132884) lt!2133316)))

(assert (=> d!1671650 (= lt!2133315 (lemmaSamePrefixThenSameSuffix!2710 lt!2132884 (getSuffix!3438 input!5817 lt!2132884) lt!2132884 lt!2133316 input!5817))))

(assert (=> d!1671650 (= lt!2133316 (getSuffix!3438 input!5817 lt!2132884))))

(declare-fun lt!2133295 () Unit!151998)

(declare-fun lt!2133292 () Unit!151998)

(assert (=> d!1671650 (= lt!2133295 lt!2133292)))

(assert (=> d!1671650 (isPrefix!5790 lt!2132884 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))

(assert (=> d!1671650 (= lt!2133292 (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))

(assert (=> d!1671650 (= (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)) input!5817)))

(assert (=> d!1671650 (= (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)) lt!2133312)))

(declare-fun bm!363740 () Bool)

(assert (=> bm!363740 (= call!363743 (tail!10174 (getSuffix!3438 input!5817 lt!2132884)))))

(declare-fun b!5177035 () Bool)

(assert (=> b!5177035 (= e!3225767 (tuple2!63865 lt!2132884 Nil!60163))))

(declare-fun bm!363744 () Bool)

(assert (=> bm!363744 (= call!363744 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (= (and d!1671650 c!891691) b!5177024))

(assert (= (and d!1671650 (not c!891691)) b!5177027))

(assert (= (and b!5177027 c!891690) b!5177032))

(assert (= (and b!5177027 (not c!891690)) b!5177026))

(assert (= (and b!5177032 c!891692) b!5177035))

(assert (= (and b!5177032 (not c!891692)) b!5177029))

(assert (= (and b!5177026 c!891695) b!5177031))

(assert (= (and b!5177026 (not c!891695)) b!5177022))

(assert (= (and b!5177026 c!891693) b!5177023))

(assert (= (and b!5177026 (not c!891693)) b!5177033))

(assert (= (and b!5177023 c!891694) b!5177030))

(assert (= (and b!5177023 (not c!891694)) b!5177028))

(assert (= (or b!5177023 b!5177033) bm!363740))

(assert (= (or b!5177023 b!5177033) bm!363743))

(assert (= (or b!5177023 b!5177033) bm!363738))

(assert (= (or b!5177023 b!5177033) bm!363742))

(assert (= (or b!5177032 b!5177031) bm!363744))

(assert (= (or b!5177032 b!5177026) bm!363737))

(assert (= (or b!5177032 b!5177031) bm!363741))

(assert (= (or b!5177032 b!5177031) bm!363739))

(assert (= (and d!1671650 res!2199895) b!5177034))

(assert (= (and b!5177034 (not res!2199896)) b!5177025))

(assert (=> bm!363739 m!6232168))

(assert (=> bm!363744 m!6232108))

(declare-fun m!6232712 () Bool)

(assert (=> b!5177023 m!6232712))

(declare-fun m!6232714 () Bool)

(assert (=> b!5177025 m!6232714))

(assert (=> b!5177025 m!6232094))

(assert (=> bm!363737 m!6232174))

(assert (=> bm!363740 m!6232090))

(assert (=> bm!363740 m!6232176))

(assert (=> bm!363741 m!6232110))

(declare-fun m!6232716 () Bool)

(assert (=> bm!363738 m!6232716))

(declare-fun m!6232718 () Bool)

(assert (=> b!5177034 m!6232718))

(assert (=> b!5177026 m!6232090))

(assert (=> b!5177026 m!6232182))

(assert (=> b!5177026 m!6232090))

(assert (=> b!5177026 m!6232176))

(assert (=> b!5177026 m!6232070))

(declare-fun m!6232720 () Bool)

(assert (=> b!5177026 m!6232720))

(declare-fun m!6232722 () Bool)

(assert (=> b!5177026 m!6232722))

(declare-fun m!6232724 () Bool)

(assert (=> b!5177026 m!6232724))

(assert (=> b!5177026 m!6232190))

(assert (=> b!5177026 m!6232090))

(assert (=> b!5177026 m!6232182))

(assert (=> b!5177026 m!6232192))

(assert (=> b!5177026 m!6232090))

(assert (=> b!5177026 m!6232194))

(assert (=> b!5177026 m!6232194))

(assert (=> b!5177026 m!6232196))

(assert (=> b!5177026 m!6232194))

(assert (=> b!5177026 m!6232722))

(assert (=> b!5177026 m!6232094))

(assert (=> bm!363742 m!6232070))

(declare-fun m!6232726 () Bool)

(assert (=> bm!363742 m!6232726))

(assert (=> d!1671650 m!6232200))

(assert (=> d!1671650 m!6232202))

(assert (=> d!1671650 m!6232204))

(assert (=> d!1671650 m!6232090))

(assert (=> d!1671650 m!6232090))

(declare-fun m!6232728 () Bool)

(assert (=> d!1671650 m!6232728))

(assert (=> d!1671650 m!6232090))

(assert (=> d!1671650 m!6232208))

(assert (=> d!1671650 m!6232090))

(assert (=> d!1671650 m!6232202))

(declare-fun m!6232730 () Bool)

(assert (=> d!1671650 m!6232730))

(assert (=> bm!363743 m!6232090))

(assert (=> bm!363743 m!6232182))

(assert (=> d!1671470 d!1671650))

(assert (=> d!1671470 d!1671466))

(assert (=> d!1671470 d!1671474))

(declare-fun d!1671652 () Bool)

(assert (=> d!1671652 (= (isEmpty!32211 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) ((_ is Nil!60163) (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))))))

(assert (=> d!1671470 d!1671652))

(declare-fun d!1671654 () Bool)

(declare-fun e!3225775 () Bool)

(assert (=> d!1671654 e!3225775))

(declare-fun res!2199899 () Bool)

(assert (=> d!1671654 (=> res!2199899 e!3225775)))

(assert (=> d!1671654 (= res!2199899 (isEmpty!32211 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))))))

(assert (=> d!1671654 true))

(declare-fun _$79!158 () Unit!151998)

(assert (=> d!1671654 (= (choose!38431 baseZ!62 lt!2132878 lt!2132884 input!5817) _$79!158)))

(declare-fun b!5177044 () Bool)

(assert (=> b!5177044 (= e!3225775 (matchZipper!987 baseZ!62 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))))))

(assert (= (and d!1671654 (not res!2199899)) b!5177044))

(assert (=> d!1671654 m!6232094))

(assert (=> d!1671654 m!6232070))

(assert (=> d!1671654 m!6232090))

(assert (=> d!1671654 m!6232094))

(assert (=> d!1671654 m!6232090))

(assert (=> d!1671654 m!6232070))

(assert (=> d!1671654 m!6232130))

(assert (=> d!1671654 m!6232132))

(assert (=> b!5177044 m!6232134))

(assert (=> b!5177044 m!6232094))

(assert (=> b!5177044 m!6232070))

(assert (=> b!5177044 m!6232090))

(assert (=> b!5177044 m!6232094))

(assert (=> b!5177044 m!6232090))

(assert (=> b!5177044 m!6232070))

(assert (=> b!5177044 m!6232130))

(assert (=> d!1671470 d!1671654))

(assert (=> d!1671470 d!1671550))

(declare-fun bs!1204871 () Bool)

(declare-fun d!1671662 () Bool)

(assert (= bs!1204871 (and d!1671662 d!1671532)))

(declare-fun lambda!258614 () Int)

(assert (=> bs!1204871 (= (= call!363667 lt!2132879) (= lambda!258614 lambda!258589))))

(assert (=> d!1671662 true))

(assert (=> d!1671662 (= (derivationStepZipper!1003 lt!2132878 call!363667) (flatMap!460 lt!2132878 lambda!258614))))

(declare-fun bs!1204872 () Bool)

(assert (= bs!1204872 d!1671662))

(declare-fun m!6232744 () Bool)

(assert (=> bs!1204872 m!6232744))

(assert (=> bm!363660 d!1671662))

(declare-fun d!1671668 () Bool)

(declare-fun e!3225779 () Bool)

(assert (=> d!1671668 e!3225779))

(declare-fun res!2199901 () Bool)

(assert (=> d!1671668 (=> res!2199901 e!3225779)))

(declare-fun lt!2133318 () Bool)

(assert (=> d!1671668 (= res!2199901 (not lt!2133318))))

(declare-fun e!3225780 () Bool)

(assert (=> d!1671668 (= lt!2133318 e!3225780)))

(declare-fun res!2199903 () Bool)

(assert (=> d!1671668 (=> res!2199903 e!3225780)))

(assert (=> d!1671668 (= res!2199903 ((_ is Nil!60163) (tail!10174 testedP!294)))))

(assert (=> d!1671668 (= (isPrefix!5790 (tail!10174 testedP!294) (tail!10174 input!5817)) lt!2133318)))

(declare-fun b!5177051 () Bool)

(declare-fun e!3225781 () Bool)

(assert (=> b!5177051 (= e!3225780 e!3225781)))

(declare-fun res!2199900 () Bool)

(assert (=> b!5177051 (=> (not res!2199900) (not e!3225781))))

(assert (=> b!5177051 (= res!2199900 (not ((_ is Nil!60163) (tail!10174 input!5817))))))

(declare-fun b!5177052 () Bool)

(declare-fun res!2199902 () Bool)

(assert (=> b!5177052 (=> (not res!2199902) (not e!3225781))))

(assert (=> b!5177052 (= res!2199902 (= (head!11075 (tail!10174 testedP!294)) (head!11075 (tail!10174 input!5817))))))

(declare-fun b!5177053 () Bool)

(assert (=> b!5177053 (= e!3225781 (isPrefix!5790 (tail!10174 (tail!10174 testedP!294)) (tail!10174 (tail!10174 input!5817))))))

(declare-fun b!5177054 () Bool)

(assert (=> b!5177054 (= e!3225779 (>= (size!39693 (tail!10174 input!5817)) (size!39693 (tail!10174 testedP!294))))))

(assert (= (and d!1671668 (not res!2199903)) b!5177051))

(assert (= (and b!5177051 res!2199900) b!5177052))

(assert (= (and b!5177052 res!2199902) b!5177053))

(assert (= (and d!1671668 (not res!2199901)) b!5177054))

(assert (=> b!5177052 m!6232328))

(declare-fun m!6232746 () Bool)

(assert (=> b!5177052 m!6232746))

(assert (=> b!5177052 m!6232140))

(declare-fun m!6232748 () Bool)

(assert (=> b!5177052 m!6232748))

(assert (=> b!5177053 m!6232328))

(declare-fun m!6232750 () Bool)

(assert (=> b!5177053 m!6232750))

(assert (=> b!5177053 m!6232140))

(assert (=> b!5177053 m!6232680))

(assert (=> b!5177053 m!6232750))

(assert (=> b!5177053 m!6232680))

(declare-fun m!6232754 () Bool)

(assert (=> b!5177053 m!6232754))

(assert (=> b!5177054 m!6232140))

(assert (=> b!5177054 m!6232678))

(assert (=> b!5177054 m!6232328))

(declare-fun m!6232758 () Bool)

(assert (=> b!5177054 m!6232758))

(assert (=> b!5176805 d!1671668))

(declare-fun d!1671670 () Bool)

(assert (=> d!1671670 (= (tail!10174 testedP!294) (t!373440 testedP!294))))

(assert (=> b!5176805 d!1671670))

(assert (=> b!5176805 d!1671624))

(assert (=> b!5176787 d!1671636))

(declare-fun bs!1204873 () Bool)

(declare-fun d!1671672 () Bool)

(assert (= bs!1204873 (and d!1671672 d!1671532)))

(declare-fun lambda!258615 () Int)

(assert (=> bs!1204873 (= (= call!363707 lt!2132879) (= lambda!258615 lambda!258589))))

(declare-fun bs!1204874 () Bool)

(assert (= bs!1204874 (and d!1671672 d!1671662)))

(assert (=> bs!1204874 (= (= call!363707 call!363667) (= lambda!258615 lambda!258614))))

(assert (=> d!1671672 true))

(assert (=> d!1671672 (= (derivationStepZipper!1003 lt!2132878 call!363707) (flatMap!460 lt!2132878 lambda!258615))))

(declare-fun bs!1204875 () Bool)

(assert (= bs!1204875 d!1671672))

(declare-fun m!6232764 () Bool)

(assert (=> bs!1204875 m!6232764))

(assert (=> bm!363700 d!1671672))

(assert (=> b!5176800 d!1671494))

(assert (=> bm!363670 d!1671530))

(assert (=> bm!363671 d!1671514))

(assert (=> d!1671464 d!1671502))

(declare-fun d!1671680 () Bool)

(assert (=> d!1671680 (= (isEmpty!32211 (_1!35235 lt!2132991)) ((_ is Nil!60163) (_1!35235 lt!2132991)))))

(assert (=> b!5176712 d!1671680))

(declare-fun d!1671682 () Bool)

(assert (=> d!1671682 (= lt!2132885 lt!2133058)))

(declare-fun lt!2133319 () Unit!151998)

(assert (=> d!1671682 (= lt!2133319 (choose!38445 testedP!294 lt!2132885 testedP!294 lt!2133058 input!5817))))

(assert (=> d!1671682 (isPrefix!5790 testedP!294 input!5817)))

(assert (=> d!1671682 (= (lemmaSamePrefixThenSameSuffix!2710 testedP!294 lt!2132885 testedP!294 lt!2133058 input!5817) lt!2133319)))

(declare-fun bs!1204876 () Bool)

(assert (= bs!1204876 d!1671682))

(declare-fun m!6232766 () Bool)

(assert (=> bs!1204876 m!6232766))

(assert (=> bs!1204876 m!6232104))

(assert (=> d!1671496 d!1671682))

(declare-fun bs!1204877 () Bool)

(declare-fun d!1671684 () Bool)

(assert (= bs!1204877 (and d!1671684 b!5176997)))

(declare-fun lambda!258616 () Int)

(assert (=> bs!1204877 (not (= lambda!258616 lambda!258612))))

(declare-fun bs!1204878 () Bool)

(assert (= bs!1204878 (and d!1671684 d!1671612)))

(assert (=> bs!1204878 (= lambda!258616 lambda!258610)))

(declare-fun bs!1204879 () Bool)

(assert (= bs!1204879 (and d!1671684 d!1671636)))

(assert (=> bs!1204879 (not (= lambda!258616 lambda!258613))))

(declare-fun bs!1204880 () Bool)

(assert (= bs!1204880 (and d!1671684 d!1671546)))

(assert (=> bs!1204880 (not (= lambda!258616 lambda!258592))))

(declare-fun bs!1204881 () Bool)

(assert (= bs!1204881 (and d!1671684 b!5176996)))

(assert (=> bs!1204881 (not (= lambda!258616 lambda!258611))))

(declare-fun bs!1204882 () Bool)

(declare-fun b!5177055 () Bool)

(assert (= bs!1204882 (and b!5177055 b!5176997)))

(declare-fun lambda!258617 () Int)

(assert (=> bs!1204882 (= lambda!258617 lambda!258612)))

(declare-fun bs!1204883 () Bool)

(assert (= bs!1204883 (and b!5177055 d!1671612)))

(assert (=> bs!1204883 (not (= lambda!258617 lambda!258610))))

(declare-fun bs!1204884 () Bool)

(assert (= bs!1204884 (and b!5177055 d!1671636)))

(assert (=> bs!1204884 (not (= lambda!258617 lambda!258613))))

(declare-fun bs!1204885 () Bool)

(assert (= bs!1204885 (and b!5177055 d!1671684)))

(assert (=> bs!1204885 (not (= lambda!258617 lambda!258616))))

(declare-fun bs!1204886 () Bool)

(assert (= bs!1204886 (and b!5177055 d!1671546)))

(assert (=> bs!1204886 (not (= lambda!258617 lambda!258592))))

(declare-fun bs!1204887 () Bool)

(assert (= bs!1204887 (and b!5177055 b!5176996)))

(assert (=> bs!1204887 (= lambda!258617 lambda!258611)))

(declare-fun bs!1204889 () Bool)

(declare-fun b!5177056 () Bool)

(assert (= bs!1204889 (and b!5177056 b!5176997)))

(declare-fun lambda!258618 () Int)

(assert (=> bs!1204889 (= lambda!258618 lambda!258612)))

(declare-fun bs!1204890 () Bool)

(assert (= bs!1204890 (and b!5177056 d!1671612)))

(assert (=> bs!1204890 (not (= lambda!258618 lambda!258610))))

(declare-fun bs!1204891 () Bool)

(assert (= bs!1204891 (and b!5177056 d!1671636)))

(assert (=> bs!1204891 (not (= lambda!258618 lambda!258613))))

(declare-fun bs!1204892 () Bool)

(assert (= bs!1204892 (and b!5177056 d!1671546)))

(assert (=> bs!1204892 (not (= lambda!258618 lambda!258592))))

(declare-fun bs!1204893 () Bool)

(assert (= bs!1204893 (and b!5177056 b!5176996)))

(assert (=> bs!1204893 (= lambda!258618 lambda!258611)))

(declare-fun bs!1204894 () Bool)

(assert (= bs!1204894 (and b!5177056 b!5177055)))

(assert (=> bs!1204894 (= lambda!258618 lambda!258617)))

(declare-fun bs!1204895 () Bool)

(assert (= bs!1204895 (and b!5177056 d!1671684)))

(assert (=> bs!1204895 (not (= lambda!258618 lambda!258616))))

(declare-fun e!3225782 () Unit!151998)

(declare-fun Unit!152031 () Unit!151998)

(assert (=> b!5177055 (= e!3225782 Unit!152031)))

(declare-fun lt!2133327 () List!60289)

(declare-fun call!363750 () List!60289)

(assert (=> b!5177055 (= lt!2133327 call!363750)))

(declare-fun lt!2133321 () Unit!151998)

(assert (=> b!5177055 (= lt!2133321 (lemmaNotForallThenExists!478 lt!2133327 lambda!258616))))

(declare-fun call!363751 () Bool)

(assert (=> b!5177055 call!363751))

(declare-fun lt!2133324 () Unit!151998)

(assert (=> b!5177055 (= lt!2133324 lt!2133321)))

(declare-fun bm!363745 () Bool)

(assert (=> bm!363745 (= call!363750 (toList!8458 z!4581))))

(declare-fun Unit!152032 () Unit!151998)

(assert (=> b!5177056 (= e!3225782 Unit!152032)))

(declare-fun lt!2133320 () List!60289)

(assert (=> b!5177056 (= lt!2133320 call!363750)))

(declare-fun lt!2133322 () Unit!151998)

(assert (=> b!5177056 (= lt!2133322 (lemmaForallThenNotExists!445 lt!2133320 lambda!258616))))

(assert (=> b!5177056 (not call!363751)))

(declare-fun lt!2133325 () Unit!151998)

(assert (=> b!5177056 (= lt!2133325 lt!2133322)))

(declare-fun c!891702 () Bool)

(declare-fun bm!363746 () Bool)

(assert (=> bm!363746 (= call!363751 (exists!1941 (ite c!891702 lt!2133327 lt!2133320) (ite c!891702 lambda!258617 lambda!258618)))))

(declare-fun lt!2133323 () Bool)

(assert (=> d!1671684 (= lt!2133323 (isEmpty!32212 (getLanguageWitness!1016 z!4581)))))

(assert (=> d!1671684 (= lt!2133323 (forall!14162 z!4581 lambda!258616))))

(declare-fun lt!2133326 () Unit!151998)

(assert (=> d!1671684 (= lt!2133326 e!3225782)))

(assert (=> d!1671684 (= c!891702 (not (forall!14162 z!4581 lambda!258616)))))

(assert (=> d!1671684 (= (lostCauseZipper!1343 z!4581) lt!2133323)))

(assert (= (and d!1671684 c!891702) b!5177055))

(assert (= (and d!1671684 (not c!891702)) b!5177056))

(assert (= (or b!5177055 b!5177056) bm!363745))

(assert (= (or b!5177055 b!5177056) bm!363746))

(declare-fun m!6232768 () Bool)

(assert (=> bm!363746 m!6232768))

(declare-fun m!6232770 () Bool)

(assert (=> b!5177055 m!6232770))

(declare-fun m!6232772 () Bool)

(assert (=> d!1671684 m!6232772))

(assert (=> d!1671684 m!6232772))

(declare-fun m!6232774 () Bool)

(assert (=> d!1671684 m!6232774))

(declare-fun m!6232776 () Bool)

(assert (=> d!1671684 m!6232776))

(assert (=> d!1671684 m!6232776))

(declare-fun m!6232778 () Bool)

(assert (=> b!5177056 m!6232778))

(assert (=> bm!363745 m!6232684))

(assert (=> d!1671496 d!1671684))

(assert (=> d!1671496 d!1671498))

(declare-fun b!5177063 () Bool)

(declare-fun res!2199909 () Bool)

(declare-fun e!3225787 () Bool)

(assert (=> b!5177063 (=> (not res!2199909) (not e!3225787))))

(declare-fun lt!2133329 () List!60287)

(assert (=> b!5177063 (= res!2199909 (= (size!39693 lt!2133329) (+ (size!39693 (_1!35235 lt!2133054)) (size!39693 (_2!35235 lt!2133054)))))))

(declare-fun b!5177062 () Bool)

(declare-fun e!3225786 () List!60287)

(assert (=> b!5177062 (= e!3225786 (Cons!60163 (h!66611 (_1!35235 lt!2133054)) (++!13173 (t!373440 (_1!35235 lt!2133054)) (_2!35235 lt!2133054))))))

(declare-fun b!5177061 () Bool)

(assert (=> b!5177061 (= e!3225786 (_2!35235 lt!2133054))))

(declare-fun b!5177064 () Bool)

(assert (=> b!5177064 (= e!3225787 (or (not (= (_2!35235 lt!2133054) Nil!60163)) (= lt!2133329 (_1!35235 lt!2133054))))))

(declare-fun d!1671690 () Bool)

(assert (=> d!1671690 e!3225787))

(declare-fun res!2199908 () Bool)

(assert (=> d!1671690 (=> (not res!2199908) (not e!3225787))))

(assert (=> d!1671690 (= res!2199908 (= (content!10662 lt!2133329) ((_ map or) (content!10662 (_1!35235 lt!2133054)) (content!10662 (_2!35235 lt!2133054)))))))

(assert (=> d!1671690 (= lt!2133329 e!3225786)))

(declare-fun c!891703 () Bool)

(assert (=> d!1671690 (= c!891703 ((_ is Nil!60163) (_1!35235 lt!2133054)))))

(assert (=> d!1671690 (= (++!13173 (_1!35235 lt!2133054) (_2!35235 lt!2133054)) lt!2133329)))

(assert (= (and d!1671690 c!891703) b!5177061))

(assert (= (and d!1671690 (not c!891703)) b!5177062))

(assert (= (and d!1671690 res!2199908) b!5177063))

(assert (= (and b!5177063 res!2199909) b!5177064))

(declare-fun m!6232780 () Bool)

(assert (=> b!5177063 m!6232780))

(assert (=> b!5177063 m!6232216))

(declare-fun m!6232782 () Bool)

(assert (=> b!5177063 m!6232782))

(declare-fun m!6232784 () Bool)

(assert (=> b!5177062 m!6232784))

(declare-fun m!6232786 () Bool)

(assert (=> d!1671690 m!6232786))

(declare-fun m!6232788 () Bool)

(assert (=> d!1671690 m!6232788))

(declare-fun m!6232790 () Bool)

(assert (=> d!1671690 m!6232790))

(assert (=> d!1671496 d!1671690))

(declare-fun d!1671692 () Bool)

(assert (=> d!1671692 (isPrefix!5790 testedP!294 (++!13173 testedP!294 lt!2132885))))

(declare-fun lt!2133330 () Unit!151998)

(assert (=> d!1671692 (= lt!2133330 (choose!38444 testedP!294 lt!2132885))))

(assert (=> d!1671692 (= (lemmaConcatTwoListThenFirstIsPrefix!3604 testedP!294 lt!2132885) lt!2133330)))

(declare-fun bs!1204896 () Bool)

(assert (= bs!1204896 d!1671692))

(assert (=> bs!1204896 m!6232240))

(assert (=> bs!1204896 m!6232240))

(assert (=> bs!1204896 m!6232242))

(declare-fun m!6232794 () Bool)

(assert (=> bs!1204896 m!6232794))

(assert (=> d!1671496 d!1671692))

(declare-fun d!1671694 () Bool)

(declare-fun e!3225788 () Bool)

(assert (=> d!1671694 e!3225788))

(declare-fun res!2199911 () Bool)

(assert (=> d!1671694 (=> res!2199911 e!3225788)))

(declare-fun lt!2133331 () Bool)

(assert (=> d!1671694 (= res!2199911 (not lt!2133331))))

(declare-fun e!3225789 () Bool)

(assert (=> d!1671694 (= lt!2133331 e!3225789)))

(declare-fun res!2199913 () Bool)

(assert (=> d!1671694 (=> res!2199913 e!3225789)))

(assert (=> d!1671694 (= res!2199913 ((_ is Nil!60163) testedP!294))))

(assert (=> d!1671694 (= (isPrefix!5790 testedP!294 (++!13173 testedP!294 lt!2132885)) lt!2133331)))

(declare-fun b!5177065 () Bool)

(declare-fun e!3225790 () Bool)

(assert (=> b!5177065 (= e!3225789 e!3225790)))

(declare-fun res!2199910 () Bool)

(assert (=> b!5177065 (=> (not res!2199910) (not e!3225790))))

(assert (=> b!5177065 (= res!2199910 (not ((_ is Nil!60163) (++!13173 testedP!294 lt!2132885))))))

(declare-fun b!5177066 () Bool)

(declare-fun res!2199912 () Bool)

(assert (=> b!5177066 (=> (not res!2199912) (not e!3225790))))

(assert (=> b!5177066 (= res!2199912 (= (head!11075 testedP!294) (head!11075 (++!13173 testedP!294 lt!2132885))))))

(declare-fun b!5177067 () Bool)

(assert (=> b!5177067 (= e!3225790 (isPrefix!5790 (tail!10174 testedP!294) (tail!10174 (++!13173 testedP!294 lt!2132885))))))

(declare-fun b!5177068 () Bool)

(assert (=> b!5177068 (= e!3225788 (>= (size!39693 (++!13173 testedP!294 lt!2132885)) (size!39693 testedP!294)))))

(assert (= (and d!1671694 (not res!2199913)) b!5177065))

(assert (= (and b!5177065 res!2199910) b!5177066))

(assert (= (and b!5177066 res!2199912) b!5177067))

(assert (= (and d!1671694 (not res!2199911)) b!5177068))

(assert (=> b!5177066 m!6232326))

(assert (=> b!5177066 m!6232240))

(declare-fun m!6232804 () Bool)

(assert (=> b!5177066 m!6232804))

(assert (=> b!5177067 m!6232328))

(assert (=> b!5177067 m!6232240))

(declare-fun m!6232806 () Bool)

(assert (=> b!5177067 m!6232806))

(assert (=> b!5177067 m!6232328))

(assert (=> b!5177067 m!6232806))

(declare-fun m!6232808 () Bool)

(assert (=> b!5177067 m!6232808))

(assert (=> b!5177068 m!6232240))

(declare-fun m!6232810 () Bool)

(assert (=> b!5177068 m!6232810))

(assert (=> b!5177068 m!6232066))

(assert (=> d!1671496 d!1671694))

(declare-fun b!5177071 () Bool)

(declare-fun res!2199915 () Bool)

(declare-fun e!3225792 () Bool)

(assert (=> b!5177071 (=> (not res!2199915) (not e!3225792))))

(declare-fun lt!2133332 () List!60287)

(assert (=> b!5177071 (= res!2199915 (= (size!39693 lt!2133332) (+ (size!39693 testedP!294) (size!39693 lt!2132885))))))

(declare-fun b!5177070 () Bool)

(declare-fun e!3225791 () List!60287)

(assert (=> b!5177070 (= e!3225791 (Cons!60163 (h!66611 testedP!294) (++!13173 (t!373440 testedP!294) lt!2132885)))))

(declare-fun b!5177069 () Bool)

(assert (=> b!5177069 (= e!3225791 lt!2132885)))

(declare-fun b!5177072 () Bool)

(assert (=> b!5177072 (= e!3225792 (or (not (= lt!2132885 Nil!60163)) (= lt!2133332 testedP!294)))))

(declare-fun d!1671700 () Bool)

(assert (=> d!1671700 e!3225792))

(declare-fun res!2199914 () Bool)

(assert (=> d!1671700 (=> (not res!2199914) (not e!3225792))))

(assert (=> d!1671700 (= res!2199914 (= (content!10662 lt!2133332) ((_ map or) (content!10662 testedP!294) (content!10662 lt!2132885))))))

(assert (=> d!1671700 (= lt!2133332 e!3225791)))

(declare-fun c!891704 () Bool)

(assert (=> d!1671700 (= c!891704 ((_ is Nil!60163) testedP!294))))

(assert (=> d!1671700 (= (++!13173 testedP!294 lt!2132885) lt!2133332)))

(assert (= (and d!1671700 c!891704) b!5177069))

(assert (= (and d!1671700 (not c!891704)) b!5177070))

(assert (= (and d!1671700 res!2199914) b!5177071))

(assert (= (and b!5177071 res!2199915) b!5177072))

(declare-fun m!6232812 () Bool)

(assert (=> b!5177071 m!6232812))

(assert (=> b!5177071 m!6232066))

(declare-fun m!6232814 () Bool)

(assert (=> b!5177071 m!6232814))

(declare-fun m!6232816 () Bool)

(assert (=> b!5177070 m!6232816))

(declare-fun m!6232818 () Bool)

(assert (=> d!1671700 m!6232818))

(assert (=> d!1671700 m!6232390))

(declare-fun m!6232820 () Bool)

(assert (=> d!1671700 m!6232820))

(assert (=> d!1671496 d!1671700))

(assert (=> b!5176715 d!1671494))

(declare-fun d!1671702 () Bool)

(assert (=> d!1671702 (= (++!13173 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163)) lt!2132985) input!5817)))

(declare-fun lt!2133361 () Unit!151998)

(declare-fun choose!38447 (List!60287 C!29584 List!60287 List!60287) Unit!151998)

(assert (=> d!1671702 (= lt!2133361 (choose!38447 lt!2132884 lt!2132982 lt!2132985 input!5817))))

(assert (=> d!1671702 (= (++!13173 lt!2132884 (Cons!60163 lt!2132982 lt!2132985)) input!5817)))

(assert (=> d!1671702 (= (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2132884 lt!2132982 lt!2132985 input!5817) lt!2133361)))

(declare-fun bs!1204899 () Bool)

(assert (= bs!1204899 d!1671702))

(assert (=> bs!1204899 m!6232186))

(assert (=> bs!1204899 m!6232186))

(assert (=> bs!1204899 m!6232188))

(declare-fun m!6232824 () Bool)

(assert (=> bs!1204899 m!6232824))

(declare-fun m!6232826 () Bool)

(assert (=> bs!1204899 m!6232826))

(assert (=> b!5176715 d!1671702))

(assert (=> b!5176715 d!1671466))

(assert (=> b!5176715 d!1671474))

(declare-fun d!1671706 () Bool)

(declare-fun e!3225801 () Bool)

(assert (=> d!1671706 e!3225801))

(declare-fun res!2199919 () Bool)

(assert (=> d!1671706 (=> res!2199919 e!3225801)))

(declare-fun lt!2133362 () Bool)

(assert (=> d!1671706 (= res!2199919 (not lt!2133362))))

(declare-fun e!3225802 () Bool)

(assert (=> d!1671706 (= lt!2133362 e!3225802)))

(declare-fun res!2199921 () Bool)

(assert (=> d!1671706 (=> res!2199921 e!3225802)))

(assert (=> d!1671706 (= res!2199921 ((_ is Nil!60163) (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))))))

(assert (=> d!1671706 (= (isPrefix!5790 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)) input!5817) lt!2133362)))

(declare-fun b!5177087 () Bool)

(declare-fun e!3225803 () Bool)

(assert (=> b!5177087 (= e!3225802 e!3225803)))

(declare-fun res!2199918 () Bool)

(assert (=> b!5177087 (=> (not res!2199918) (not e!3225803))))

(assert (=> b!5177087 (= res!2199918 (not ((_ is Nil!60163) input!5817)))))

(declare-fun b!5177088 () Bool)

(declare-fun res!2199920 () Bool)

(assert (=> b!5177088 (=> (not res!2199920) (not e!3225803))))

(assert (=> b!5177088 (= res!2199920 (= (head!11075 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))) (head!11075 input!5817)))))

(declare-fun b!5177089 () Bool)

(assert (=> b!5177089 (= e!3225803 (isPrefix!5790 (tail!10174 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))) (tail!10174 input!5817)))))

(declare-fun b!5177090 () Bool)

(assert (=> b!5177090 (= e!3225801 (>= (size!39693 input!5817) (size!39693 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))))

(assert (= (and d!1671706 (not res!2199921)) b!5177087))

(assert (= (and b!5177087 res!2199918) b!5177088))

(assert (= (and b!5177088 res!2199920) b!5177089))

(assert (= (and d!1671706 (not res!2199919)) b!5177090))

(assert (=> b!5177088 m!6232194))

(declare-fun m!6232828 () Bool)

(assert (=> b!5177088 m!6232828))

(assert (=> b!5177088 m!6232316))

(assert (=> b!5177089 m!6232194))

(declare-fun m!6232830 () Bool)

(assert (=> b!5177089 m!6232830))

(assert (=> b!5177089 m!6232140))

(assert (=> b!5177089 m!6232830))

(assert (=> b!5177089 m!6232140))

(declare-fun m!6232832 () Bool)

(assert (=> b!5177089 m!6232832))

(assert (=> b!5177090 m!6232070))

(assert (=> b!5177090 m!6232194))

(declare-fun m!6232834 () Bool)

(assert (=> b!5177090 m!6232834))

(assert (=> b!5176715 d!1671706))

(declare-fun b!5177093 () Bool)

(declare-fun res!2199923 () Bool)

(declare-fun e!3225805 () Bool)

(assert (=> b!5177093 (=> (not res!2199923) (not e!3225805))))

(declare-fun lt!2133363 () List!60287)

(assert (=> b!5177093 (= res!2199923 (= (size!39693 lt!2133363) (+ (size!39693 lt!2132884) (size!39693 (Cons!60163 lt!2132982 Nil!60163)))))))

(declare-fun b!5177092 () Bool)

(declare-fun e!3225804 () List!60287)

(assert (=> b!5177092 (= e!3225804 (Cons!60163 (h!66611 lt!2132884) (++!13173 (t!373440 lt!2132884) (Cons!60163 lt!2132982 Nil!60163))))))

(declare-fun b!5177091 () Bool)

(assert (=> b!5177091 (= e!3225804 (Cons!60163 lt!2132982 Nil!60163))))

(declare-fun b!5177094 () Bool)

(assert (=> b!5177094 (= e!3225805 (or (not (= (Cons!60163 lt!2132982 Nil!60163) Nil!60163)) (= lt!2133363 lt!2132884)))))

(declare-fun d!1671708 () Bool)

(assert (=> d!1671708 e!3225805))

(declare-fun res!2199922 () Bool)

(assert (=> d!1671708 (=> (not res!2199922) (not e!3225805))))

(assert (=> d!1671708 (= res!2199922 (= (content!10662 lt!2133363) ((_ map or) (content!10662 lt!2132884) (content!10662 (Cons!60163 lt!2132982 Nil!60163)))))))

(assert (=> d!1671708 (= lt!2133363 e!3225804)))

(declare-fun c!891711 () Bool)

(assert (=> d!1671708 (= c!891711 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1671708 (= (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163)) lt!2133363)))

(assert (= (and d!1671708 c!891711) b!5177091))

(assert (= (and d!1671708 (not c!891711)) b!5177092))

(assert (= (and d!1671708 res!2199922) b!5177093))

(assert (= (and b!5177093 res!2199923) b!5177094))

(declare-fun m!6232842 () Bool)

(assert (=> b!5177093 m!6232842))

(assert (=> b!5177093 m!6232094))

(declare-fun m!6232844 () Bool)

(assert (=> b!5177093 m!6232844))

(declare-fun m!6232846 () Bool)

(assert (=> b!5177092 m!6232846))

(declare-fun m!6232850 () Bool)

(assert (=> d!1671708 m!6232850))

(assert (=> d!1671708 m!6232648))

(declare-fun m!6232854 () Bool)

(assert (=> d!1671708 m!6232854))

(assert (=> b!5176715 d!1671708))

(assert (=> b!5176715 d!1671598))

(declare-fun d!1671710 () Bool)

(assert (=> d!1671710 (<= (size!39693 lt!2132884) (size!39693 input!5817))))

(declare-fun lt!2133364 () Unit!151998)

(assert (=> d!1671710 (= lt!2133364 (choose!38440 lt!2132884 input!5817))))

(assert (=> d!1671710 (isPrefix!5790 lt!2132884 input!5817)))

(assert (=> d!1671710 (= (lemmaIsPrefixThenSmallerEqSize!951 lt!2132884 input!5817) lt!2133364)))

(declare-fun bs!1204900 () Bool)

(assert (= bs!1204900 d!1671710))

(assert (=> bs!1204900 m!6232094))

(assert (=> bs!1204900 m!6232070))

(declare-fun m!6232866 () Bool)

(assert (=> bs!1204900 m!6232866))

(assert (=> bs!1204900 m!6232078))

(assert (=> b!5176715 d!1671710))

(declare-fun b!5177097 () Bool)

(declare-fun res!2199925 () Bool)

(declare-fun e!3225807 () Bool)

(assert (=> b!5177097 (=> (not res!2199925) (not e!3225807))))

(declare-fun lt!2133365 () List!60287)

(assert (=> b!5177097 (= res!2199925 (= (size!39693 lt!2133365) (+ (size!39693 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))) (size!39693 lt!2132985))))))

(declare-fun e!3225806 () List!60287)

(declare-fun b!5177096 () Bool)

(assert (=> b!5177096 (= e!3225806 (Cons!60163 (h!66611 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))) (++!13173 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))) lt!2132985)))))

(declare-fun b!5177095 () Bool)

(assert (=> b!5177095 (= e!3225806 lt!2132985)))

(declare-fun b!5177098 () Bool)

(assert (=> b!5177098 (= e!3225807 (or (not (= lt!2132985 Nil!60163)) (= lt!2133365 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163)))))))

(declare-fun d!1671712 () Bool)

(assert (=> d!1671712 e!3225807))

(declare-fun res!2199924 () Bool)

(assert (=> d!1671712 (=> (not res!2199924) (not e!3225807))))

(assert (=> d!1671712 (= res!2199924 (= (content!10662 lt!2133365) ((_ map or) (content!10662 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))) (content!10662 lt!2132985))))))

(assert (=> d!1671712 (= lt!2133365 e!3225806)))

(declare-fun c!891712 () Bool)

(assert (=> d!1671712 (= c!891712 ((_ is Nil!60163) (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))))))

(assert (=> d!1671712 (= (++!13173 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163)) lt!2132985) lt!2133365)))

(assert (= (and d!1671712 c!891712) b!5177095))

(assert (= (and d!1671712 (not c!891712)) b!5177096))

(assert (= (and d!1671712 res!2199924) b!5177097))

(assert (= (and b!5177097 res!2199925) b!5177098))

(declare-fun m!6232884 () Bool)

(assert (=> b!5177097 m!6232884))

(assert (=> b!5177097 m!6232186))

(declare-fun m!6232890 () Bool)

(assert (=> b!5177097 m!6232890))

(declare-fun m!6232894 () Bool)

(assert (=> b!5177097 m!6232894))

(declare-fun m!6232896 () Bool)

(assert (=> b!5177096 m!6232896))

(declare-fun m!6232900 () Bool)

(assert (=> d!1671712 m!6232900))

(assert (=> d!1671712 m!6232186))

(declare-fun m!6232902 () Bool)

(assert (=> d!1671712 m!6232902))

(declare-fun m!6232904 () Bool)

(assert (=> d!1671712 m!6232904))

(assert (=> b!5176715 d!1671712))

(declare-fun b!5177101 () Bool)

(declare-fun res!2199927 () Bool)

(declare-fun e!3225809 () Bool)

(assert (=> b!5177101 (=> (not res!2199927) (not e!3225809))))

(declare-fun lt!2133366 () List!60287)

(assert (=> b!5177101 (= res!2199927 (= (size!39693 lt!2133366) (+ (size!39693 lt!2132884) (size!39693 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))))

(declare-fun b!5177100 () Bool)

(declare-fun e!3225808 () List!60287)

(assert (=> b!5177100 (= e!3225808 (Cons!60163 (h!66611 lt!2132884) (++!13173 (t!373440 lt!2132884) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))))))

(declare-fun b!5177099 () Bool)

(assert (=> b!5177099 (= e!3225808 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))))

(declare-fun b!5177102 () Bool)

(assert (=> b!5177102 (= e!3225809 (or (not (= (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163) Nil!60163)) (= lt!2133366 lt!2132884)))))

(declare-fun d!1671714 () Bool)

(assert (=> d!1671714 e!3225809))

(declare-fun res!2199926 () Bool)

(assert (=> d!1671714 (=> (not res!2199926) (not e!3225809))))

(assert (=> d!1671714 (= res!2199926 (= (content!10662 lt!2133366) ((_ map or) (content!10662 lt!2132884) (content!10662 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))))

(assert (=> d!1671714 (= lt!2133366 e!3225808)))

(declare-fun c!891713 () Bool)

(assert (=> d!1671714 (= c!891713 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1671714 (= (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)) lt!2133366)))

(assert (= (and d!1671714 c!891713) b!5177099))

(assert (= (and d!1671714 (not c!891713)) b!5177100))

(assert (= (and d!1671714 res!2199926) b!5177101))

(assert (= (and b!5177101 res!2199927) b!5177102))

(declare-fun m!6232912 () Bool)

(assert (=> b!5177101 m!6232912))

(assert (=> b!5177101 m!6232094))

(declare-fun m!6232914 () Bool)

(assert (=> b!5177101 m!6232914))

(declare-fun m!6232916 () Bool)

(assert (=> b!5177100 m!6232916))

(declare-fun m!6232920 () Bool)

(assert (=> d!1671714 m!6232920))

(assert (=> d!1671714 m!6232648))

(declare-fun m!6232922 () Bool)

(assert (=> d!1671714 m!6232922))

(assert (=> b!5176715 d!1671714))

(declare-fun d!1671716 () Bool)

(assert (=> d!1671716 (= (head!11075 (getSuffix!3438 input!5817 lt!2132884)) (h!66611 (getSuffix!3438 input!5817 lt!2132884)))))

(assert (=> b!5176715 d!1671716))

(declare-fun d!1671718 () Bool)

(assert (=> d!1671718 (isPrefix!5790 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)) input!5817)))

(declare-fun lt!2133367 () Unit!151998)

(assert (=> d!1671718 (= lt!2133367 (choose!38441 lt!2132884 input!5817))))

(assert (=> d!1671718 (isPrefix!5790 lt!2132884 input!5817)))

(assert (=> d!1671718 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2132884 input!5817) lt!2133367)))

(declare-fun bs!1204901 () Bool)

(assert (= bs!1204901 d!1671718))

(declare-fun m!6232924 () Bool)

(assert (=> bs!1204901 m!6232924))

(assert (=> bs!1204901 m!6232090))

(assert (=> bs!1204901 m!6232182))

(assert (=> bs!1204901 m!6232194))

(assert (=> bs!1204901 m!6232194))

(assert (=> bs!1204901 m!6232196))

(assert (=> bs!1204901 m!6232090))

(assert (=> bs!1204901 m!6232078))

(assert (=> b!5176715 d!1671718))

(declare-fun b!5177107 () Bool)

(declare-fun res!2199929 () Bool)

(declare-fun e!3225812 () Bool)

(assert (=> b!5177107 (=> (not res!2199929) (not e!3225812))))

(declare-fun lt!2133369 () List!60287)

(assert (=> b!5177107 (= res!2199929 (= (size!39693 lt!2133369) (+ (size!39693 lt!2132884) (size!39693 (getSuffix!3438 input!5817 lt!2132884)))))))

(declare-fun b!5177106 () Bool)

(declare-fun e!3225811 () List!60287)

(assert (=> b!5177106 (= e!3225811 (Cons!60163 (h!66611 lt!2132884) (++!13173 (t!373440 lt!2132884) (getSuffix!3438 input!5817 lt!2132884))))))

(declare-fun b!5177105 () Bool)

(assert (=> b!5177105 (= e!3225811 (getSuffix!3438 input!5817 lt!2132884))))

(declare-fun b!5177108 () Bool)

(assert (=> b!5177108 (= e!3225812 (or (not (= (getSuffix!3438 input!5817 lt!2132884) Nil!60163)) (= lt!2133369 lt!2132884)))))

(declare-fun d!1671722 () Bool)

(assert (=> d!1671722 e!3225812))

(declare-fun res!2199928 () Bool)

(assert (=> d!1671722 (=> (not res!2199928) (not e!3225812))))

(assert (=> d!1671722 (= res!2199928 (= (content!10662 lt!2133369) ((_ map or) (content!10662 lt!2132884) (content!10662 (getSuffix!3438 input!5817 lt!2132884)))))))

(assert (=> d!1671722 (= lt!2133369 e!3225811)))

(declare-fun c!891715 () Bool)

(assert (=> d!1671722 (= c!891715 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1671722 (= (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)) lt!2133369)))

(assert (= (and d!1671722 c!891715) b!5177105))

(assert (= (and d!1671722 (not c!891715)) b!5177106))

(assert (= (and d!1671722 res!2199928) b!5177107))

(assert (= (and b!5177107 res!2199929) b!5177108))

(declare-fun m!6232928 () Bool)

(assert (=> b!5177107 m!6232928))

(assert (=> b!5177107 m!6232094))

(assert (=> b!5177107 m!6232090))

(declare-fun m!6232930 () Bool)

(assert (=> b!5177107 m!6232930))

(assert (=> b!5177106 m!6232090))

(declare-fun m!6232932 () Bool)

(assert (=> b!5177106 m!6232932))

(declare-fun m!6232934 () Bool)

(assert (=> d!1671722 m!6232934))

(assert (=> d!1671722 m!6232648))

(assert (=> d!1671722 m!6232090))

(declare-fun m!6232936 () Bool)

(assert (=> d!1671722 m!6232936))

(assert (=> d!1671484 d!1671722))

(declare-fun d!1671728 () Bool)

(declare-fun e!3225816 () Bool)

(assert (=> d!1671728 e!3225816))

(declare-fun res!2199935 () Bool)

(assert (=> d!1671728 (=> res!2199935 e!3225816)))

(declare-fun lt!2133371 () Bool)

(assert (=> d!1671728 (= res!2199935 (not lt!2133371))))

(declare-fun e!3225817 () Bool)

(assert (=> d!1671728 (= lt!2133371 e!3225817)))

(declare-fun res!2199937 () Bool)

(assert (=> d!1671728 (=> res!2199937 e!3225817)))

(assert (=> d!1671728 (= res!2199937 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1671728 (= (isPrefix!5790 lt!2132884 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))) lt!2133371)))

(declare-fun b!5177113 () Bool)

(declare-fun e!3225818 () Bool)

(assert (=> b!5177113 (= e!3225817 e!3225818)))

(declare-fun res!2199934 () Bool)

(assert (=> b!5177113 (=> (not res!2199934) (not e!3225818))))

(assert (=> b!5177113 (= res!2199934 (not ((_ is Nil!60163) (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))))

(declare-fun b!5177114 () Bool)

(declare-fun res!2199936 () Bool)

(assert (=> b!5177114 (=> (not res!2199936) (not e!3225818))))

(assert (=> b!5177114 (= res!2199936 (= (head!11075 lt!2132884) (head!11075 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))))

(declare-fun b!5177115 () Bool)

(assert (=> b!5177115 (= e!3225818 (isPrefix!5790 (tail!10174 lt!2132884) (tail!10174 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))))

(declare-fun b!5177116 () Bool)

(assert (=> b!5177116 (= e!3225816 (>= (size!39693 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))) (size!39693 lt!2132884)))))

(assert (= (and d!1671728 (not res!2199937)) b!5177113))

(assert (= (and b!5177113 res!2199934) b!5177114))

(assert (= (and b!5177114 res!2199936) b!5177115))

(assert (= (and d!1671728 (not res!2199935)) b!5177116))

(assert (=> b!5177114 m!6232404))

(assert (=> b!5177114 m!6232202))

(declare-fun m!6232938 () Bool)

(assert (=> b!5177114 m!6232938))

(assert (=> b!5177115 m!6232406))

(assert (=> b!5177115 m!6232202))

(declare-fun m!6232940 () Bool)

(assert (=> b!5177115 m!6232940))

(assert (=> b!5177115 m!6232406))

(assert (=> b!5177115 m!6232940))

(declare-fun m!6232942 () Bool)

(assert (=> b!5177115 m!6232942))

(assert (=> b!5177116 m!6232202))

(declare-fun m!6232944 () Bool)

(assert (=> b!5177116 m!6232944))

(assert (=> b!5177116 m!6232094))

(assert (=> d!1671484 d!1671728))

(assert (=> d!1671484 d!1671474))

(declare-fun d!1671730 () Bool)

(assert (=> d!1671730 (= (getSuffix!3438 input!5817 lt!2132884) lt!2132993)))

(declare-fun lt!2133372 () Unit!151998)

(assert (=> d!1671730 (= lt!2133372 (choose!38445 lt!2132884 (getSuffix!3438 input!5817 lt!2132884) lt!2132884 lt!2132993 input!5817))))

(assert (=> d!1671730 (isPrefix!5790 lt!2132884 input!5817)))

(assert (=> d!1671730 (= (lemmaSamePrefixThenSameSuffix!2710 lt!2132884 (getSuffix!3438 input!5817 lt!2132884) lt!2132884 lt!2132993 input!5817) lt!2133372)))

(declare-fun bs!1204902 () Bool)

(assert (= bs!1204902 d!1671730))

(assert (=> bs!1204902 m!6232090))

(declare-fun m!6232952 () Bool)

(assert (=> bs!1204902 m!6232952))

(assert (=> bs!1204902 m!6232078))

(assert (=> d!1671484 d!1671730))

(declare-fun d!1671732 () Bool)

(assert (=> d!1671732 (isPrefix!5790 lt!2132884 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))

(declare-fun lt!2133373 () Unit!151998)

(assert (=> d!1671732 (= lt!2133373 (choose!38444 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))

(assert (=> d!1671732 (= (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)) lt!2133373)))

(declare-fun bs!1204903 () Bool)

(assert (= bs!1204903 d!1671732))

(assert (=> bs!1204903 m!6232090))

(assert (=> bs!1204903 m!6232202))

(assert (=> bs!1204903 m!6232202))

(assert (=> bs!1204903 m!6232204))

(assert (=> bs!1204903 m!6232090))

(declare-fun m!6232956 () Bool)

(assert (=> bs!1204903 m!6232956))

(assert (=> d!1671484 d!1671732))

(declare-fun b!5177119 () Bool)

(declare-fun res!2199939 () Bool)

(declare-fun e!3225820 () Bool)

(assert (=> b!5177119 (=> (not res!2199939) (not e!3225820))))

(declare-fun lt!2133374 () List!60287)

(assert (=> b!5177119 (= res!2199939 (= (size!39693 lt!2133374) (+ (size!39693 (_1!35235 lt!2132989)) (size!39693 (_2!35235 lt!2132989)))))))

(declare-fun b!5177118 () Bool)

(declare-fun e!3225819 () List!60287)

(assert (=> b!5177118 (= e!3225819 (Cons!60163 (h!66611 (_1!35235 lt!2132989)) (++!13173 (t!373440 (_1!35235 lt!2132989)) (_2!35235 lt!2132989))))))

(declare-fun b!5177117 () Bool)

(assert (=> b!5177117 (= e!3225819 (_2!35235 lt!2132989))))

(declare-fun b!5177120 () Bool)

(assert (=> b!5177120 (= e!3225820 (or (not (= (_2!35235 lt!2132989) Nil!60163)) (= lt!2133374 (_1!35235 lt!2132989))))))

(declare-fun d!1671736 () Bool)

(assert (=> d!1671736 e!3225820))

(declare-fun res!2199938 () Bool)

(assert (=> d!1671736 (=> (not res!2199938) (not e!3225820))))

(assert (=> d!1671736 (= res!2199938 (= (content!10662 lt!2133374) ((_ map or) (content!10662 (_1!35235 lt!2132989)) (content!10662 (_2!35235 lt!2132989)))))))

(assert (=> d!1671736 (= lt!2133374 e!3225819)))

(declare-fun c!891716 () Bool)

(assert (=> d!1671736 (= c!891716 ((_ is Nil!60163) (_1!35235 lt!2132989)))))

(assert (=> d!1671736 (= (++!13173 (_1!35235 lt!2132989) (_2!35235 lt!2132989)) lt!2133374)))

(assert (= (and d!1671736 c!891716) b!5177117))

(assert (= (and d!1671736 (not c!891716)) b!5177118))

(assert (= (and d!1671736 res!2199938) b!5177119))

(assert (= (and b!5177119 res!2199939) b!5177120))

(declare-fun m!6232958 () Bool)

(assert (=> b!5177119 m!6232958))

(assert (=> b!5177119 m!6232172))

(declare-fun m!6232960 () Bool)

(assert (=> b!5177119 m!6232960))

(declare-fun m!6232962 () Bool)

(assert (=> b!5177118 m!6232962))

(declare-fun m!6232964 () Bool)

(assert (=> d!1671736 m!6232964))

(declare-fun m!6232966 () Bool)

(assert (=> d!1671736 m!6232966))

(declare-fun m!6232968 () Bool)

(assert (=> d!1671736 m!6232968))

(assert (=> d!1671484 d!1671736))

(assert (=> d!1671484 d!1671612))

(assert (=> b!5176811 d!1671494))

(declare-fun b!5177123 () Bool)

(declare-fun res!2199941 () Bool)

(declare-fun e!3225822 () Bool)

(assert (=> b!5177123 (=> (not res!2199941) (not e!3225822))))

(declare-fun lt!2133375 () List!60287)

(assert (=> b!5177123 (= res!2199941 (= (size!39693 lt!2133375) (+ (size!39693 lt!2132884) (size!39693 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)))))))

(declare-fun b!5177122 () Bool)

(declare-fun e!3225821 () List!60287)

(assert (=> b!5177122 (= e!3225821 (Cons!60163 (h!66611 lt!2132884) (++!13173 (t!373440 lt!2132884) (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163))))))

(declare-fun b!5177121 () Bool)

(assert (=> b!5177121 (= e!3225821 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163))))

(declare-fun b!5177124 () Bool)

(assert (=> b!5177124 (= e!3225822 (or (not (= (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163) Nil!60163)) (= lt!2133375 lt!2132884)))))

(declare-fun d!1671738 () Bool)

(assert (=> d!1671738 e!3225822))

(declare-fun res!2199940 () Bool)

(assert (=> d!1671738 (=> (not res!2199940) (not e!3225822))))

(assert (=> d!1671738 (= res!2199940 (= (content!10662 lt!2133375) ((_ map or) (content!10662 lt!2132884) (content!10662 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)))))))

(assert (=> d!1671738 (= lt!2133375 e!3225821)))

(declare-fun c!891717 () Bool)

(assert (=> d!1671738 (= c!891717 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1671738 (= (++!13173 lt!2132884 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)) lt!2133375)))

(assert (= (and d!1671738 c!891717) b!5177121))

(assert (= (and d!1671738 (not c!891717)) b!5177122))

(assert (= (and d!1671738 res!2199940) b!5177123))

(assert (= (and b!5177123 res!2199941) b!5177124))

(declare-fun m!6232970 () Bool)

(assert (=> b!5177123 m!6232970))

(assert (=> b!5177123 m!6232094))

(declare-fun m!6232972 () Bool)

(assert (=> b!5177123 m!6232972))

(declare-fun m!6232974 () Bool)

(assert (=> b!5177122 m!6232974))

(declare-fun m!6232976 () Bool)

(assert (=> d!1671738 m!6232976))

(assert (=> d!1671738 m!6232648))

(declare-fun m!6232978 () Bool)

(assert (=> d!1671738 m!6232978))

(assert (=> b!5176811 d!1671738))

(declare-fun b!5177127 () Bool)

(declare-fun res!2199943 () Bool)

(declare-fun e!3225824 () Bool)

(assert (=> b!5177127 (=> (not res!2199943) (not e!3225824))))

(declare-fun lt!2133376 () List!60287)

(assert (=> b!5177127 (= res!2199943 (= (size!39693 lt!2133376) (+ (size!39693 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))) (size!39693 lt!2133131))))))

(declare-fun b!5177126 () Bool)

(declare-fun e!3225823 () List!60287)

(assert (=> b!5177126 (= e!3225823 (Cons!60163 (h!66611 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))) (++!13173 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))) lt!2133131)))))

(declare-fun b!5177125 () Bool)

(assert (=> b!5177125 (= e!3225823 lt!2133131)))

(declare-fun b!5177128 () Bool)

(assert (=> b!5177128 (= e!3225824 (or (not (= lt!2133131 Nil!60163)) (= lt!2133376 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163)))))))

(declare-fun d!1671740 () Bool)

(assert (=> d!1671740 e!3225824))

(declare-fun res!2199942 () Bool)

(assert (=> d!1671740 (=> (not res!2199942) (not e!3225824))))

(assert (=> d!1671740 (= res!2199942 (= (content!10662 lt!2133376) ((_ map or) (content!10662 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))) (content!10662 lt!2133131))))))

(assert (=> d!1671740 (= lt!2133376 e!3225823)))

(declare-fun c!891718 () Bool)

(assert (=> d!1671740 (= c!891718 ((_ is Nil!60163) (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))))))

(assert (=> d!1671740 (= (++!13173 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163)) lt!2133131) lt!2133376)))

(assert (= (and d!1671740 c!891718) b!5177125))

(assert (= (and d!1671740 (not c!891718)) b!5177126))

(assert (= (and d!1671740 res!2199942) b!5177127))

(assert (= (and b!5177127 res!2199943) b!5177128))

(declare-fun m!6232980 () Bool)

(assert (=> b!5177127 m!6232980))

(assert (=> b!5177127 m!6232348))

(declare-fun m!6232982 () Bool)

(assert (=> b!5177127 m!6232982))

(declare-fun m!6232984 () Bool)

(assert (=> b!5177127 m!6232984))

(declare-fun m!6232986 () Bool)

(assert (=> b!5177126 m!6232986))

(declare-fun m!6232988 () Bool)

(assert (=> d!1671740 m!6232988))

(assert (=> d!1671740 m!6232348))

(declare-fun m!6232990 () Bool)

(assert (=> d!1671740 m!6232990))

(declare-fun m!6232992 () Bool)

(assert (=> d!1671740 m!6232992))

(assert (=> b!5176811 d!1671740))

(declare-fun b!5177131 () Bool)

(declare-fun res!2199945 () Bool)

(declare-fun e!3225826 () Bool)

(assert (=> b!5177131 (=> (not res!2199945) (not e!3225826))))

(declare-fun lt!2133377 () List!60287)

(assert (=> b!5177131 (= res!2199945 (= (size!39693 lt!2133377) (+ (size!39693 lt!2132884) (size!39693 (Cons!60163 lt!2133128 Nil!60163)))))))

(declare-fun b!5177130 () Bool)

(declare-fun e!3225825 () List!60287)

(assert (=> b!5177130 (= e!3225825 (Cons!60163 (h!66611 lt!2132884) (++!13173 (t!373440 lt!2132884) (Cons!60163 lt!2133128 Nil!60163))))))

(declare-fun b!5177129 () Bool)

(assert (=> b!5177129 (= e!3225825 (Cons!60163 lt!2133128 Nil!60163))))

(declare-fun b!5177132 () Bool)

(assert (=> b!5177132 (= e!3225826 (or (not (= (Cons!60163 lt!2133128 Nil!60163) Nil!60163)) (= lt!2133377 lt!2132884)))))

(declare-fun d!1671742 () Bool)

(assert (=> d!1671742 e!3225826))

(declare-fun res!2199944 () Bool)

(assert (=> d!1671742 (=> (not res!2199944) (not e!3225826))))

(assert (=> d!1671742 (= res!2199944 (= (content!10662 lt!2133377) ((_ map or) (content!10662 lt!2132884) (content!10662 (Cons!60163 lt!2133128 Nil!60163)))))))

(assert (=> d!1671742 (= lt!2133377 e!3225825)))

(declare-fun c!891719 () Bool)

(assert (=> d!1671742 (= c!891719 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1671742 (= (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163)) lt!2133377)))

(assert (= (and d!1671742 c!891719) b!5177129))

(assert (= (and d!1671742 (not c!891719)) b!5177130))

(assert (= (and d!1671742 res!2199944) b!5177131))

(assert (= (and b!5177131 res!2199945) b!5177132))

(declare-fun m!6232994 () Bool)

(assert (=> b!5177131 m!6232994))

(assert (=> b!5177131 m!6232094))

(declare-fun m!6232996 () Bool)

(assert (=> b!5177131 m!6232996))

(declare-fun m!6232998 () Bool)

(assert (=> b!5177130 m!6232998))

(declare-fun m!6233000 () Bool)

(assert (=> d!1671742 m!6233000))

(assert (=> d!1671742 m!6232648))

(declare-fun m!6233002 () Bool)

(assert (=> d!1671742 m!6233002))

(assert (=> b!5176811 d!1671742))

(declare-fun d!1671744 () Bool)

(assert (=> d!1671744 (= (head!11075 (tail!10174 lt!2132885)) (h!66611 (tail!10174 lt!2132885)))))

(assert (=> b!5176811 d!1671744))

(assert (=> b!5176811 d!1671474))

(assert (=> b!5176811 d!1671706))

(assert (=> b!5176811 d!1671710))

(declare-fun d!1671746 () Bool)

(assert (=> d!1671746 (= (++!13173 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163)) lt!2133131) input!5817)))

(declare-fun lt!2133378 () Unit!151998)

(assert (=> d!1671746 (= lt!2133378 (choose!38447 lt!2132884 lt!2133128 lt!2133131 input!5817))))

(assert (=> d!1671746 (= (++!13173 lt!2132884 (Cons!60163 lt!2133128 lt!2133131)) input!5817)))

(assert (=> d!1671746 (= (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2132884 lt!2133128 lt!2133131 input!5817) lt!2133378)))

(declare-fun bs!1204904 () Bool)

(assert (= bs!1204904 d!1671746))

(assert (=> bs!1204904 m!6232348))

(assert (=> bs!1204904 m!6232348))

(assert (=> bs!1204904 m!6232350))

(declare-fun m!6233004 () Bool)

(assert (=> bs!1204904 m!6233004))

(declare-fun m!6233006 () Bool)

(assert (=> bs!1204904 m!6233006))

(assert (=> b!5176811 d!1671746))

(assert (=> b!5176811 d!1671714))

(assert (=> b!5176811 d!1671716))

(assert (=> b!5176811 d!1671718))

(declare-fun d!1671748 () Bool)

(assert (=> d!1671748 (= (tail!10174 (tail!10174 lt!2132885)) (t!373440 (tail!10174 lt!2132885)))))

(assert (=> b!5176811 d!1671748))

(assert (=> b!5176811 d!1671466))

(declare-fun d!1671750 () Bool)

(assert (=> d!1671750 (= input!5817 testedP!294)))

(assert (=> d!1671750 true))

(declare-fun _$60!987 () Unit!151998)

(assert (=> d!1671750 (= (choose!38438 input!5817 testedP!294 input!5817) _$60!987)))

(assert (=> d!1671516 d!1671750))

(assert (=> d!1671516 d!1671514))

(declare-fun d!1671752 () Bool)

(assert (=> d!1671752 (= (isEmpty!32211 (_1!35235 lt!2133054)) ((_ is Nil!60163) (_1!35235 lt!2133054)))))

(assert (=> b!5176755 d!1671752))

(declare-fun d!1671754 () Bool)

(declare-fun res!2199952 () Bool)

(declare-fun e!3225833 () Bool)

(assert (=> d!1671754 (=> res!2199952 e!3225833)))

(assert (=> d!1671754 (= res!2199952 ((_ is Nil!60164) (exprs!4541 setElem!32334)))))

(assert (=> d!1671754 (= (forall!14161 (exprs!4541 setElem!32334) lambda!258593) e!3225833)))

(declare-fun b!5177141 () Bool)

(declare-fun e!3225834 () Bool)

(assert (=> b!5177141 (= e!3225833 e!3225834)))

(declare-fun res!2199953 () Bool)

(assert (=> b!5177141 (=> (not res!2199953) (not e!3225834))))

(declare-fun dynLambda!23882 (Int Regex!14657) Bool)

(assert (=> b!5177141 (= res!2199953 (dynLambda!23882 lambda!258593 (h!66612 (exprs!4541 setElem!32334))))))

(declare-fun b!5177142 () Bool)

(assert (=> b!5177142 (= e!3225834 (forall!14161 (t!373441 (exprs!4541 setElem!32334)) lambda!258593))))

(assert (= (and d!1671754 (not res!2199952)) b!5177141))

(assert (= (and b!5177141 res!2199953) b!5177142))

(declare-fun b_lambda!200977 () Bool)

(assert (=> (not b_lambda!200977) (not b!5177141)))

(declare-fun m!6233018 () Bool)

(assert (=> b!5177141 m!6233018))

(declare-fun m!6233020 () Bool)

(assert (=> b!5177142 m!6233020))

(assert (=> d!1671554 d!1671754))

(declare-fun d!1671760 () Bool)

(declare-fun lt!2133380 () Int)

(assert (=> d!1671760 (>= lt!2133380 0)))

(declare-fun e!3225836 () Int)

(assert (=> d!1671760 (= lt!2133380 e!3225836)))

(declare-fun c!891722 () Bool)

(assert (=> d!1671760 (= c!891722 ((_ is Nil!60163) (t!373440 testedP!294)))))

(assert (=> d!1671760 (= (size!39693 (t!373440 testedP!294)) lt!2133380)))

(declare-fun b!5177145 () Bool)

(assert (=> b!5177145 (= e!3225836 0)))

(declare-fun b!5177146 () Bool)

(assert (=> b!5177146 (= e!3225836 (+ 1 (size!39693 (t!373440 (t!373440 testedP!294)))))))

(assert (= (and d!1671760 c!891722) b!5177145))

(assert (= (and d!1671760 (not c!891722)) b!5177146))

(declare-fun m!6233024 () Bool)

(assert (=> b!5177146 m!6233024))

(assert (=> b!5176768 d!1671760))

(declare-fun d!1671762 () Bool)

(declare-fun e!3225837 () Bool)

(assert (=> d!1671762 e!3225837))

(declare-fun res!2199955 () Bool)

(assert (=> d!1671762 (=> res!2199955 e!3225837)))

(declare-fun lt!2133381 () Bool)

(assert (=> d!1671762 (= res!2199955 (not lt!2133381))))

(declare-fun e!3225838 () Bool)

(assert (=> d!1671762 (= lt!2133381 e!3225838)))

(declare-fun res!2199957 () Bool)

(assert (=> d!1671762 (=> res!2199957 e!3225838)))

(assert (=> d!1671762 (= res!2199957 ((_ is Nil!60163) (tail!10174 lt!2132884)))))

(assert (=> d!1671762 (= (isPrefix!5790 (tail!10174 lt!2132884) (tail!10174 input!5817)) lt!2133381)))

(declare-fun b!5177147 () Bool)

(declare-fun e!3225839 () Bool)

(assert (=> b!5177147 (= e!3225838 e!3225839)))

(declare-fun res!2199954 () Bool)

(assert (=> b!5177147 (=> (not res!2199954) (not e!3225839))))

(assert (=> b!5177147 (= res!2199954 (not ((_ is Nil!60163) (tail!10174 input!5817))))))

(declare-fun b!5177148 () Bool)

(declare-fun res!2199956 () Bool)

(assert (=> b!5177148 (=> (not res!2199956) (not e!3225839))))

(assert (=> b!5177148 (= res!2199956 (= (head!11075 (tail!10174 lt!2132884)) (head!11075 (tail!10174 input!5817))))))

(declare-fun b!5177149 () Bool)

(assert (=> b!5177149 (= e!3225839 (isPrefix!5790 (tail!10174 (tail!10174 lt!2132884)) (tail!10174 (tail!10174 input!5817))))))

(declare-fun b!5177150 () Bool)

(assert (=> b!5177150 (= e!3225837 (>= (size!39693 (tail!10174 input!5817)) (size!39693 (tail!10174 lt!2132884))))))

(assert (= (and d!1671762 (not res!2199957)) b!5177147))

(assert (= (and b!5177147 res!2199954) b!5177148))

(assert (= (and b!5177148 res!2199956) b!5177149))

(assert (= (and d!1671762 (not res!2199955)) b!5177150))

(assert (=> b!5177148 m!6232406))

(declare-fun m!6233034 () Bool)

(assert (=> b!5177148 m!6233034))

(assert (=> b!5177148 m!6232140))

(assert (=> b!5177148 m!6232748))

(assert (=> b!5177149 m!6232406))

(declare-fun m!6233036 () Bool)

(assert (=> b!5177149 m!6233036))

(assert (=> b!5177149 m!6232140))

(assert (=> b!5177149 m!6232680))

(assert (=> b!5177149 m!6233036))

(assert (=> b!5177149 m!6232680))

(declare-fun m!6233040 () Bool)

(assert (=> b!5177149 m!6233040))

(assert (=> b!5177150 m!6232140))

(assert (=> b!5177150 m!6232678))

(assert (=> b!5177150 m!6232406))

(declare-fun m!6233042 () Bool)

(assert (=> b!5177150 m!6233042))

(assert (=> b!5176855 d!1671762))

(declare-fun d!1671766 () Bool)

(assert (=> d!1671766 (= (tail!10174 lt!2132884) (t!373440 lt!2132884))))

(assert (=> b!5176855 d!1671766))

(assert (=> b!5176855 d!1671624))

(declare-fun bs!1204906 () Bool)

(declare-fun d!1671768 () Bool)

(assert (= bs!1204906 (and d!1671768 d!1671504)))

(declare-fun lambda!258621 () Int)

(assert (=> bs!1204906 (= lambda!258621 lambda!258580)))

(declare-fun bs!1204907 () Bool)

(assert (= bs!1204907 (and d!1671768 d!1671554)))

(assert (=> bs!1204907 (= lambda!258621 lambda!258593)))

(assert (=> d!1671768 (= (inv!79889 setElem!32338) (forall!14161 (exprs!4541 setElem!32338) lambda!258621))))

(declare-fun bs!1204909 () Bool)

(assert (= bs!1204909 d!1671768))

(declare-fun m!6233044 () Bool)

(assert (=> bs!1204909 m!6233044))

(assert (=> setNonEmpty!32338 d!1671768))

(assert (=> d!1671480 d!1671532))

(assert (=> d!1671480 d!1671552))

(assert (=> d!1671480 d!1671538))

(declare-fun d!1671770 () Bool)

(assert (=> d!1671770 (= (derivationZipper!280 baseZ!62 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) (derivationStepZipper!1003 z!4581 lt!2132879))))

(assert (=> d!1671770 true))

(declare-fun _$83!281 () Unit!151998)

(assert (=> d!1671770 (= (choose!38432 baseZ!62 z!4581 testedP!294 lt!2132879) _$83!281)))

(declare-fun bs!1204912 () Bool)

(assert (= bs!1204912 d!1671770))

(assert (=> bs!1204912 m!6232080))

(assert (=> bs!1204912 m!6232080))

(assert (=> bs!1204912 m!6232156))

(assert (=> bs!1204912 m!6232060))

(assert (=> d!1671480 d!1671770))

(declare-fun d!1671778 () Bool)

(declare-fun c!891730 () Bool)

(assert (=> d!1671778 (= c!891730 ((_ is Cons!60163) (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))))))

(declare-fun e!3225848 () (InoxSet Context!8082))

(assert (=> d!1671778 (= (derivationZipper!280 baseZ!62 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) e!3225848)))

(declare-fun b!5177165 () Bool)

(assert (=> b!5177165 (= e!3225848 (derivationZipper!280 (derivationStepZipper!1003 baseZ!62 (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163)))) (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163)))))))

(declare-fun b!5177166 () Bool)

(assert (=> b!5177166 (= e!3225848 baseZ!62)))

(assert (= (and d!1671778 c!891730) b!5177165))

(assert (= (and d!1671778 (not c!891730)) b!5177166))

(declare-fun m!6233048 () Bool)

(assert (=> b!5177165 m!6233048))

(assert (=> b!5177165 m!6233048))

(declare-fun m!6233050 () Bool)

(assert (=> b!5177165 m!6233050))

(assert (=> d!1671480 d!1671778))

(declare-fun d!1671780 () Bool)

(declare-fun lt!2133408 () Int)

(assert (=> d!1671780 (>= lt!2133408 0)))

(declare-fun e!3225849 () Int)

(assert (=> d!1671780 (= lt!2133408 e!3225849)))

(declare-fun c!891731 () Bool)

(assert (=> d!1671780 (= c!891731 ((_ is Nil!60163) (t!373440 lt!2132884)))))

(assert (=> d!1671780 (= (size!39693 (t!373440 lt!2132884)) lt!2133408)))

(declare-fun b!5177167 () Bool)

(assert (=> b!5177167 (= e!3225849 0)))

(declare-fun b!5177168 () Bool)

(assert (=> b!5177168 (= e!3225849 (+ 1 (size!39693 (t!373440 (t!373440 lt!2132884)))))))

(assert (= (and d!1671780 c!891731) b!5177167))

(assert (= (and d!1671780 (not c!891731)) b!5177168))

(declare-fun m!6233052 () Bool)

(assert (=> b!5177168 m!6233052))

(assert (=> b!5176651 d!1671780))

(declare-fun b!5177171 () Bool)

(declare-fun res!2199961 () Bool)

(declare-fun e!3225851 () Bool)

(assert (=> b!5177171 (=> (not res!2199961) (not e!3225851))))

(declare-fun lt!2133409 () List!60287)

(assert (=> b!5177171 (= res!2199961 (= (size!39693 lt!2133409) (+ (size!39693 (t!373440 testedP!294)) (size!39693 (Cons!60163 lt!2132879 Nil!60163)))))))

(declare-fun b!5177170 () Bool)

(declare-fun e!3225850 () List!60287)

(assert (=> b!5177170 (= e!3225850 (Cons!60163 (h!66611 (t!373440 testedP!294)) (++!13173 (t!373440 (t!373440 testedP!294)) (Cons!60163 lt!2132879 Nil!60163))))))

(declare-fun b!5177169 () Bool)

(assert (=> b!5177169 (= e!3225850 (Cons!60163 lt!2132879 Nil!60163))))

(declare-fun b!5177172 () Bool)

(assert (=> b!5177172 (= e!3225851 (or (not (= (Cons!60163 lt!2132879 Nil!60163) Nil!60163)) (= lt!2133409 (t!373440 testedP!294))))))

(declare-fun d!1671782 () Bool)

(assert (=> d!1671782 e!3225851))

(declare-fun res!2199960 () Bool)

(assert (=> d!1671782 (=> (not res!2199960) (not e!3225851))))

(assert (=> d!1671782 (= res!2199960 (= (content!10662 lt!2133409) ((_ map or) (content!10662 (t!373440 testedP!294)) (content!10662 (Cons!60163 lt!2132879 Nil!60163)))))))

(assert (=> d!1671782 (= lt!2133409 e!3225850)))

(declare-fun c!891732 () Bool)

(assert (=> d!1671782 (= c!891732 ((_ is Nil!60163) (t!373440 testedP!294)))))

(assert (=> d!1671782 (= (++!13173 (t!373440 testedP!294) (Cons!60163 lt!2132879 Nil!60163)) lt!2133409)))

(assert (= (and d!1671782 c!891732) b!5177169))

(assert (= (and d!1671782 (not c!891732)) b!5177170))

(assert (= (and d!1671782 res!2199960) b!5177171))

(assert (= (and b!5177171 res!2199961) b!5177172))

(declare-fun m!6233054 () Bool)

(assert (=> b!5177171 m!6233054))

(assert (=> b!5177171 m!6232254))

(assert (=> b!5177171 m!6232384))

(declare-fun m!6233056 () Bool)

(assert (=> b!5177170 m!6233056))

(declare-fun m!6233058 () Bool)

(assert (=> d!1671782 m!6233058))

(assert (=> d!1671782 m!6232704))

(assert (=> d!1671782 m!6232392))

(assert (=> b!5176838 d!1671782))

(declare-fun d!1671784 () Bool)

(declare-fun res!2199962 () Bool)

(declare-fun e!3225852 () Bool)

(assert (=> d!1671784 (=> res!2199962 e!3225852)))

(assert (=> d!1671784 (= res!2199962 ((_ is Nil!60164) (exprs!4541 setElem!32333)))))

(assert (=> d!1671784 (= (forall!14161 (exprs!4541 setElem!32333) lambda!258580) e!3225852)))

(declare-fun b!5177173 () Bool)

(declare-fun e!3225853 () Bool)

(assert (=> b!5177173 (= e!3225852 e!3225853)))

(declare-fun res!2199963 () Bool)

(assert (=> b!5177173 (=> (not res!2199963) (not e!3225853))))

(assert (=> b!5177173 (= res!2199963 (dynLambda!23882 lambda!258580 (h!66612 (exprs!4541 setElem!32333))))))

(declare-fun b!5177174 () Bool)

(assert (=> b!5177174 (= e!3225853 (forall!14161 (t!373441 (exprs!4541 setElem!32333)) lambda!258580))))

(assert (= (and d!1671784 (not res!2199962)) b!5177173))

(assert (= (and b!5177173 res!2199963) b!5177174))

(declare-fun b_lambda!200979 () Bool)

(assert (=> (not b_lambda!200979) (not b!5177173)))

(declare-fun m!6233060 () Bool)

(assert (=> b!5177173 m!6233060))

(declare-fun m!6233064 () Bool)

(assert (=> b!5177174 m!6233064))

(assert (=> d!1671504 d!1671784))

(declare-fun bs!1204913 () Bool)

(declare-fun d!1671786 () Bool)

(assert (= bs!1204913 (and d!1671786 d!1671532)))

(declare-fun lambda!258622 () Int)

(assert (=> bs!1204913 (= (= call!363675 lt!2132879) (= lambda!258622 lambda!258589))))

(declare-fun bs!1204914 () Bool)

(assert (= bs!1204914 (and d!1671786 d!1671662)))

(assert (=> bs!1204914 (= (= call!363675 call!363667) (= lambda!258622 lambda!258614))))

(declare-fun bs!1204915 () Bool)

(assert (= bs!1204915 (and d!1671786 d!1671672)))

(assert (=> bs!1204915 (= (= call!363675 call!363707) (= lambda!258622 lambda!258615))))

(assert (=> d!1671786 true))

(assert (=> d!1671786 (= (derivationStepZipper!1003 z!4581 call!363675) (flatMap!460 z!4581 lambda!258622))))

(declare-fun bs!1204916 () Bool)

(assert (= bs!1204916 d!1671786))

(declare-fun m!6233088 () Bool)

(assert (=> bs!1204916 m!6233088))

(assert (=> bm!363668 d!1671786))

(declare-fun b!5177177 () Bool)

(declare-fun res!2199965 () Bool)

(declare-fun e!3225855 () Bool)

(assert (=> b!5177177 (=> (not res!2199965) (not e!3225855))))

(declare-fun lt!2133410 () List!60287)

(assert (=> b!5177177 (= res!2199965 (= (size!39693 lt!2133410) (+ (size!39693 lt!2132884) (size!39693 lt!2132902))))))

(declare-fun b!5177176 () Bool)

(declare-fun e!3225854 () List!60287)

(assert (=> b!5177176 (= e!3225854 (Cons!60163 (h!66611 lt!2132884) (++!13173 (t!373440 lt!2132884) lt!2132902)))))

(declare-fun b!5177175 () Bool)

(assert (=> b!5177175 (= e!3225854 lt!2132902)))

(declare-fun b!5177178 () Bool)

(assert (=> b!5177178 (= e!3225855 (or (not (= lt!2132902 Nil!60163)) (= lt!2133410 lt!2132884)))))

(declare-fun d!1671788 () Bool)

(assert (=> d!1671788 e!3225855))

(declare-fun res!2199964 () Bool)

(assert (=> d!1671788 (=> (not res!2199964) (not e!3225855))))

(assert (=> d!1671788 (= res!2199964 (= (content!10662 lt!2133410) ((_ map or) (content!10662 lt!2132884) (content!10662 lt!2132902))))))

(assert (=> d!1671788 (= lt!2133410 e!3225854)))

(declare-fun c!891733 () Bool)

(assert (=> d!1671788 (= c!891733 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1671788 (= (++!13173 lt!2132884 lt!2132902) lt!2133410)))

(assert (= (and d!1671788 c!891733) b!5177175))

(assert (= (and d!1671788 (not c!891733)) b!5177176))

(assert (= (and d!1671788 res!2199964) b!5177177))

(assert (= (and b!5177177 res!2199965) b!5177178))

(declare-fun m!6233108 () Bool)

(assert (=> b!5177177 m!6233108))

(assert (=> b!5177177 m!6232094))

(declare-fun m!6233112 () Bool)

(assert (=> b!5177177 m!6233112))

(declare-fun m!6233114 () Bool)

(assert (=> b!5177176 m!6233114))

(declare-fun m!6233116 () Bool)

(assert (=> d!1671788 m!6233116))

(assert (=> d!1671788 m!6232648))

(declare-fun m!6233118 () Bool)

(assert (=> d!1671788 m!6233118))

(assert (=> d!1671474 d!1671788))

(assert (=> d!1671474 d!1671494))

(assert (=> d!1671474 d!1671466))

(assert (=> bm!363705 d!1671744))

(declare-fun bm!363763 () Bool)

(declare-fun call!363768 () Bool)

(assert (=> bm!363763 (= call!363768 (nullableZipper!1195 call!363671))))

(declare-fun bm!363764 () Bool)

(declare-fun call!363775 () (InoxSet Context!8082))

(declare-fun call!363771 () C!29584)

(assert (=> bm!363764 (= call!363775 (derivationStepZipper!1003 call!363671 call!363771))))

(declare-fun b!5177179 () Bool)

(declare-fun e!3225856 () Unit!151998)

(declare-fun Unit!152038 () Unit!151998)

(assert (=> b!5177179 (= e!3225856 Unit!152038)))

(declare-fun b!5177180 () Bool)

(declare-fun e!3225862 () tuple2!63864)

(declare-fun e!3225857 () tuple2!63864)

(assert (=> b!5177180 (= e!3225862 e!3225857)))

(declare-fun lt!2133434 () tuple2!63864)

(declare-fun call!363774 () tuple2!63864)

(assert (=> b!5177180 (= lt!2133434 call!363774)))

(declare-fun c!891738 () Bool)

(assert (=> b!5177180 (= c!891738 (isEmpty!32211 (_1!35235 lt!2133434)))))

(declare-fun bm!363765 () Bool)

(declare-fun call!363772 () Unit!151998)

(assert (=> bm!363765 (= call!363772 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2132990 input!5817))))

(declare-fun b!5177181 () Bool)

(declare-fun e!3225860 () tuple2!63864)

(assert (=> b!5177181 (= e!3225860 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun b!5177182 () Bool)

(declare-fun e!3225859 () Bool)

(declare-fun lt!2133432 () tuple2!63864)

(assert (=> b!5177182 (= e!3225859 (>= (size!39693 (_1!35235 lt!2133432)) (size!39693 lt!2132990)))))

(declare-fun b!5177183 () Bool)

(declare-fun c!891737 () Bool)

(assert (=> b!5177183 (= c!891737 call!363768)))

(declare-fun lt!2133424 () Unit!151998)

(declare-fun lt!2133414 () Unit!151998)

(assert (=> b!5177183 (= lt!2133424 lt!2133414)))

(declare-fun lt!2133428 () List!60287)

(declare-fun lt!2133425 () C!29584)

(assert (=> b!5177183 (= (++!13173 (++!13173 lt!2132990 (Cons!60163 lt!2133425 Nil!60163)) lt!2133428) input!5817)))

(assert (=> b!5177183 (= lt!2133414 (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2132990 lt!2133425 lt!2133428 input!5817))))

(assert (=> b!5177183 (= lt!2133428 (tail!10174 call!363665))))

(assert (=> b!5177183 (= lt!2133425 (head!11075 call!363665))))

(declare-fun lt!2133427 () Unit!151998)

(declare-fun lt!2133416 () Unit!151998)

(assert (=> b!5177183 (= lt!2133427 lt!2133416)))

(assert (=> b!5177183 (isPrefix!5790 (++!13173 lt!2132990 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163)) input!5817)))

(assert (=> b!5177183 (= lt!2133416 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2132990 input!5817))))

(declare-fun lt!2133433 () List!60287)

(assert (=> b!5177183 (= lt!2133433 (++!13173 lt!2132990 (Cons!60163 (head!11075 call!363665) Nil!60163)))))

(declare-fun lt!2133431 () Unit!151998)

(assert (=> b!5177183 (= lt!2133431 e!3225856)))

(declare-fun c!891739 () Bool)

(assert (=> b!5177183 (= c!891739 (= (size!39693 lt!2132990) (size!39693 input!5817)))))

(declare-fun lt!2133426 () Unit!151998)

(declare-fun lt!2133417 () Unit!151998)

(assert (=> b!5177183 (= lt!2133426 lt!2133417)))

(assert (=> b!5177183 (<= (size!39693 lt!2132990) (size!39693 input!5817))))

(assert (=> b!5177183 (= lt!2133417 (lemmaIsPrefixThenSmallerEqSize!951 lt!2132990 input!5817))))

(declare-fun e!3225863 () tuple2!63864)

(assert (=> b!5177183 (= e!3225863 e!3225862)))

(declare-fun b!5177184 () Bool)

(assert (=> b!5177184 (= e!3225860 e!3225863)))

(declare-fun c!891734 () Bool)

(assert (=> b!5177184 (= c!891734 (= (+ (size!39693 lt!2132884) 1) lt!2132880))))

(declare-fun b!5177185 () Bool)

(assert (=> b!5177185 (= e!3225857 lt!2133434)))

(declare-fun b!5177186 () Bool)

(declare-fun e!3225861 () tuple2!63864)

(assert (=> b!5177186 (= e!3225861 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun bm!363767 () Bool)

(declare-fun call!363773 () Bool)

(assert (=> bm!363767 (= call!363773 (isPrefix!5790 input!5817 input!5817))))

(declare-fun b!5177187 () Bool)

(assert (=> b!5177187 (= e!3225857 (tuple2!63865 lt!2132990 call!363665))))

(declare-fun b!5177188 () Bool)

(declare-fun Unit!152039 () Unit!151998)

(assert (=> b!5177188 (= e!3225856 Unit!152039)))

(declare-fun lt!2133413 () Unit!151998)

(declare-fun call!363770 () Unit!151998)

(assert (=> b!5177188 (= lt!2133413 call!363770)))

(assert (=> b!5177188 call!363773))

(declare-fun lt!2133422 () Unit!151998)

(assert (=> b!5177188 (= lt!2133422 lt!2133413)))

(declare-fun lt!2133411 () Unit!151998)

(assert (=> b!5177188 (= lt!2133411 call!363772)))

(assert (=> b!5177188 (= input!5817 lt!2132990)))

(declare-fun lt!2133423 () Unit!151998)

(assert (=> b!5177188 (= lt!2133423 lt!2133411)))

(assert (=> b!5177188 false))

(declare-fun b!5177189 () Bool)

(declare-fun c!891736 () Bool)

(assert (=> b!5177189 (= c!891736 call!363768)))

(declare-fun lt!2133418 () Unit!151998)

(declare-fun lt!2133430 () Unit!151998)

(assert (=> b!5177189 (= lt!2133418 lt!2133430)))

(assert (=> b!5177189 (= input!5817 lt!2132990)))

(assert (=> b!5177189 (= lt!2133430 call!363772)))

(declare-fun lt!2133420 () Unit!151998)

(declare-fun lt!2133419 () Unit!151998)

(assert (=> b!5177189 (= lt!2133420 lt!2133419)))

(assert (=> b!5177189 call!363773))

(assert (=> b!5177189 (= lt!2133419 call!363770)))

(assert (=> b!5177189 (= e!3225863 e!3225861)))

(declare-fun b!5177190 () Bool)

(assert (=> b!5177190 (= e!3225862 call!363774)))

(declare-fun bm!363768 () Bool)

(declare-fun call!363769 () List!60287)

(assert (=> bm!363768 (= call!363774 (findLongestMatchInnerZipper!313 call!363775 lt!2133433 (+ (size!39693 lt!2132884) 1 1) call!363769 input!5817 lt!2132880))))

(declare-fun b!5177191 () Bool)

(declare-fun e!3225858 () Bool)

(assert (=> b!5177191 (= e!3225858 e!3225859)))

(declare-fun res!2199967 () Bool)

(assert (=> b!5177191 (=> res!2199967 e!3225859)))

(assert (=> b!5177191 (= res!2199967 (isEmpty!32211 (_1!35235 lt!2133432)))))

(declare-fun bm!363769 () Bool)

(assert (=> bm!363769 (= call!363771 (head!11075 call!363665))))

(declare-fun d!1671790 () Bool)

(assert (=> d!1671790 e!3225858))

(declare-fun res!2199966 () Bool)

(assert (=> d!1671790 (=> (not res!2199966) (not e!3225858))))

(assert (=> d!1671790 (= res!2199966 (= (++!13173 (_1!35235 lt!2133432) (_2!35235 lt!2133432)) input!5817))))

(assert (=> d!1671790 (= lt!2133432 e!3225860)))

(declare-fun c!891735 () Bool)

(assert (=> d!1671790 (= c!891735 (lostCauseZipper!1343 call!363671))))

(declare-fun lt!2133421 () Unit!151998)

(declare-fun Unit!152040 () Unit!151998)

(assert (=> d!1671790 (= lt!2133421 Unit!152040)))

(assert (=> d!1671790 (= (getSuffix!3438 input!5817 lt!2132990) call!363665)))

(declare-fun lt!2133429 () Unit!151998)

(declare-fun lt!2133435 () Unit!151998)

(assert (=> d!1671790 (= lt!2133429 lt!2133435)))

(declare-fun lt!2133436 () List!60287)

(assert (=> d!1671790 (= call!363665 lt!2133436)))

(assert (=> d!1671790 (= lt!2133435 (lemmaSamePrefixThenSameSuffix!2710 lt!2132990 call!363665 lt!2132990 lt!2133436 input!5817))))

(assert (=> d!1671790 (= lt!2133436 (getSuffix!3438 input!5817 lt!2132990))))

(declare-fun lt!2133415 () Unit!151998)

(declare-fun lt!2133412 () Unit!151998)

(assert (=> d!1671790 (= lt!2133415 lt!2133412)))

(assert (=> d!1671790 (isPrefix!5790 lt!2132990 (++!13173 lt!2132990 call!363665))))

(assert (=> d!1671790 (= lt!2133412 (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2132990 call!363665))))

(assert (=> d!1671790 (= (++!13173 lt!2132990 call!363665) input!5817)))

(assert (=> d!1671790 (= (findLongestMatchInnerZipper!313 call!363671 lt!2132990 (+ (size!39693 lt!2132884) 1) call!363665 input!5817 lt!2132880) lt!2133432)))

(declare-fun bm!363766 () Bool)

(assert (=> bm!363766 (= call!363769 (tail!10174 call!363665))))

(declare-fun b!5177192 () Bool)

(assert (=> b!5177192 (= e!3225861 (tuple2!63865 lt!2132990 Nil!60163))))

(declare-fun bm!363770 () Bool)

(assert (=> bm!363770 (= call!363770 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (= (and d!1671790 c!891735) b!5177181))

(assert (= (and d!1671790 (not c!891735)) b!5177184))

(assert (= (and b!5177184 c!891734) b!5177189))

(assert (= (and b!5177184 (not c!891734)) b!5177183))

(assert (= (and b!5177189 c!891736) b!5177192))

(assert (= (and b!5177189 (not c!891736)) b!5177186))

(assert (= (and b!5177183 c!891739) b!5177188))

(assert (= (and b!5177183 (not c!891739)) b!5177179))

(assert (= (and b!5177183 c!891737) b!5177180))

(assert (= (and b!5177183 (not c!891737)) b!5177190))

(assert (= (and b!5177180 c!891738) b!5177187))

(assert (= (and b!5177180 (not c!891738)) b!5177185))

(assert (= (or b!5177180 b!5177190) bm!363766))

(assert (= (or b!5177180 b!5177190) bm!363769))

(assert (= (or b!5177180 b!5177190) bm!363764))

(assert (= (or b!5177180 b!5177190) bm!363768))

(assert (= (or b!5177189 b!5177188) bm!363770))

(assert (= (or b!5177189 b!5177183) bm!363763))

(assert (= (or b!5177189 b!5177188) bm!363767))

(assert (= (or b!5177189 b!5177188) bm!363765))

(assert (= (and d!1671790 res!2199966) b!5177191))

(assert (= (and b!5177191 (not res!2199967)) b!5177182))

(declare-fun m!6233128 () Bool)

(assert (=> bm!363765 m!6233128))

(assert (=> bm!363770 m!6232108))

(declare-fun m!6233130 () Bool)

(assert (=> b!5177180 m!6233130))

(declare-fun m!6233132 () Bool)

(assert (=> b!5177182 m!6233132))

(declare-fun m!6233134 () Bool)

(assert (=> b!5177182 m!6233134))

(declare-fun m!6233136 () Bool)

(assert (=> bm!363763 m!6233136))

(declare-fun m!6233138 () Bool)

(assert (=> bm!363766 m!6233138))

(assert (=> bm!363767 m!6232110))

(declare-fun m!6233140 () Bool)

(assert (=> bm!363764 m!6233140))

(declare-fun m!6233142 () Bool)

(assert (=> b!5177191 m!6233142))

(declare-fun m!6233144 () Bool)

(assert (=> b!5177183 m!6233144))

(assert (=> b!5177183 m!6233138))

(assert (=> b!5177183 m!6232070))

(declare-fun m!6233146 () Bool)

(assert (=> b!5177183 m!6233146))

(declare-fun m!6233148 () Bool)

(assert (=> b!5177183 m!6233148))

(declare-fun m!6233150 () Bool)

(assert (=> b!5177183 m!6233150))

(declare-fun m!6233152 () Bool)

(assert (=> b!5177183 m!6233152))

(declare-fun m!6233154 () Bool)

(assert (=> b!5177183 m!6233154))

(declare-fun m!6233156 () Bool)

(assert (=> b!5177183 m!6233156))

(declare-fun m!6233158 () Bool)

(assert (=> b!5177183 m!6233158))

(assert (=> b!5177183 m!6233154))

(declare-fun m!6233160 () Bool)

(assert (=> b!5177183 m!6233160))

(declare-fun m!6233162 () Bool)

(assert (=> b!5177183 m!6233162))

(declare-fun m!6233164 () Bool)

(assert (=> b!5177183 m!6233164))

(assert (=> b!5177183 m!6233162))

(assert (=> b!5177183 m!6233148))

(assert (=> b!5177183 m!6233134))

(declare-fun m!6233166 () Bool)

(assert (=> bm!363768 m!6233166))

(declare-fun m!6233168 () Bool)

(assert (=> d!1671790 m!6233168))

(declare-fun m!6233170 () Bool)

(assert (=> d!1671790 m!6233170))

(declare-fun m!6233172 () Bool)

(assert (=> d!1671790 m!6233172))

(assert (=> d!1671790 m!6233154))

(declare-fun m!6233174 () Bool)

(assert (=> d!1671790 m!6233174))

(declare-fun m!6233176 () Bool)

(assert (=> d!1671790 m!6233176))

(assert (=> d!1671790 m!6233170))

(declare-fun m!6233178 () Bool)

(assert (=> d!1671790 m!6233178))

(assert (=> bm!363769 m!6233144))

(assert (=> bm!363664 d!1671790))

(declare-fun d!1671794 () Bool)

(declare-fun lt!2133437 () List!60287)

(assert (=> d!1671794 (= (++!13173 (t!373440 lt!2132884) lt!2133437) (tail!10174 input!5817))))

(declare-fun e!3225868 () List!60287)

(assert (=> d!1671794 (= lt!2133437 e!3225868)))

(declare-fun c!891740 () Bool)

(assert (=> d!1671794 (= c!891740 ((_ is Cons!60163) (t!373440 lt!2132884)))))

(assert (=> d!1671794 (>= (size!39693 (tail!10174 input!5817)) (size!39693 (t!373440 lt!2132884)))))

(assert (=> d!1671794 (= (getSuffix!3438 (tail!10174 input!5817) (t!373440 lt!2132884)) lt!2133437)))

(declare-fun b!5177197 () Bool)

(assert (=> b!5177197 (= e!3225868 (getSuffix!3438 (tail!10174 (tail!10174 input!5817)) (t!373440 (t!373440 lt!2132884))))))

(declare-fun b!5177198 () Bool)

(assert (=> b!5177198 (= e!3225868 (tail!10174 input!5817))))

(assert (= (and d!1671794 c!891740) b!5177197))

(assert (= (and d!1671794 (not c!891740)) b!5177198))

(declare-fun m!6233180 () Bool)

(assert (=> d!1671794 m!6233180))

(assert (=> d!1671794 m!6232140))

(assert (=> d!1671794 m!6232678))

(assert (=> d!1671794 m!6232126))

(assert (=> b!5177197 m!6232140))

(assert (=> b!5177197 m!6232680))

(assert (=> b!5177197 m!6232680))

(declare-fun m!6233182 () Bool)

(assert (=> b!5177197 m!6233182))

(assert (=> b!5176659 d!1671794))

(assert (=> b!5176659 d!1671624))

(declare-fun d!1671796 () Bool)

(assert (=> d!1671796 (= (isEmpty!32211 (_1!35235 lt!2133056)) ((_ is Nil!60163) (_1!35235 lt!2133056)))))

(assert (=> b!5176744 d!1671796))

(declare-fun bm!363771 () Bool)

(declare-fun call!363776 () Bool)

(assert (=> bm!363771 (= call!363776 (nullableZipper!1195 call!363711))))

(declare-fun bm!363772 () Bool)

(declare-fun call!363783 () (InoxSet Context!8082))

(declare-fun call!363779 () C!29584)

(assert (=> bm!363772 (= call!363783 (derivationStepZipper!1003 call!363711 call!363779))))

(declare-fun b!5177199 () Bool)

(declare-fun e!3225869 () Unit!151998)

(declare-fun Unit!152041 () Unit!151998)

(assert (=> b!5177199 (= e!3225869 Unit!152041)))

(declare-fun b!5177200 () Bool)

(declare-fun e!3225875 () tuple2!63864)

(declare-fun e!3225870 () tuple2!63864)

(assert (=> b!5177200 (= e!3225875 e!3225870)))

(declare-fun lt!2133461 () tuple2!63864)

(declare-fun call!363782 () tuple2!63864)

(assert (=> b!5177200 (= lt!2133461 call!363782)))

(declare-fun c!891745 () Bool)

(assert (=> b!5177200 (= c!891745 (isEmpty!32211 (_1!35235 lt!2133461)))))

(declare-fun bm!363773 () Bool)

(declare-fun call!363780 () Unit!151998)

(assert (=> bm!363773 (= call!363780 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2133136 input!5817))))

(declare-fun b!5177201 () Bool)

(declare-fun e!3225873 () tuple2!63864)

(assert (=> b!5177201 (= e!3225873 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun b!5177202 () Bool)

(declare-fun e!3225872 () Bool)

(declare-fun lt!2133459 () tuple2!63864)

(assert (=> b!5177202 (= e!3225872 (>= (size!39693 (_1!35235 lt!2133459)) (size!39693 lt!2133136)))))

(declare-fun b!5177203 () Bool)

(declare-fun c!891744 () Bool)

(assert (=> b!5177203 (= c!891744 call!363776)))

(declare-fun lt!2133451 () Unit!151998)

(declare-fun lt!2133441 () Unit!151998)

(assert (=> b!5177203 (= lt!2133451 lt!2133441)))

(declare-fun lt!2133452 () C!29584)

(declare-fun lt!2133455 () List!60287)

(assert (=> b!5177203 (= (++!13173 (++!13173 lt!2133136 (Cons!60163 lt!2133452 Nil!60163)) lt!2133455) input!5817)))

(assert (=> b!5177203 (= lt!2133441 (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2133136 lt!2133452 lt!2133455 input!5817))))

(assert (=> b!5177203 (= lt!2133455 (tail!10174 call!363705))))

(assert (=> b!5177203 (= lt!2133452 (head!11075 call!363705))))

(declare-fun lt!2133454 () Unit!151998)

(declare-fun lt!2133443 () Unit!151998)

(assert (=> b!5177203 (= lt!2133454 lt!2133443)))

(assert (=> b!5177203 (isPrefix!5790 (++!13173 lt!2133136 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163)) input!5817)))

(assert (=> b!5177203 (= lt!2133443 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2133136 input!5817))))

(declare-fun lt!2133460 () List!60287)

(assert (=> b!5177203 (= lt!2133460 (++!13173 lt!2133136 (Cons!60163 (head!11075 call!363705) Nil!60163)))))

(declare-fun lt!2133458 () Unit!151998)

(assert (=> b!5177203 (= lt!2133458 e!3225869)))

(declare-fun c!891746 () Bool)

(assert (=> b!5177203 (= c!891746 (= (size!39693 lt!2133136) (size!39693 input!5817)))))

(declare-fun lt!2133453 () Unit!151998)

(declare-fun lt!2133444 () Unit!151998)

(assert (=> b!5177203 (= lt!2133453 lt!2133444)))

(assert (=> b!5177203 (<= (size!39693 lt!2133136) (size!39693 input!5817))))

(assert (=> b!5177203 (= lt!2133444 (lemmaIsPrefixThenSmallerEqSize!951 lt!2133136 input!5817))))

(declare-fun e!3225876 () tuple2!63864)

(assert (=> b!5177203 (= e!3225876 e!3225875)))

(declare-fun b!5177204 () Bool)

(assert (=> b!5177204 (= e!3225873 e!3225876)))

(declare-fun c!891741 () Bool)

(assert (=> b!5177204 (= c!891741 (= (+ 1 lt!2132889 1) lt!2132880))))

(declare-fun b!5177205 () Bool)

(assert (=> b!5177205 (= e!3225870 lt!2133461)))

(declare-fun b!5177206 () Bool)

(declare-fun e!3225874 () tuple2!63864)

(assert (=> b!5177206 (= e!3225874 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun bm!363775 () Bool)

(declare-fun call!363781 () Bool)

(assert (=> bm!363775 (= call!363781 (isPrefix!5790 input!5817 input!5817))))

(declare-fun b!5177207 () Bool)

(assert (=> b!5177207 (= e!3225870 (tuple2!63865 lt!2133136 call!363705))))

(declare-fun b!5177208 () Bool)

(declare-fun Unit!152042 () Unit!151998)

(assert (=> b!5177208 (= e!3225869 Unit!152042)))

(declare-fun lt!2133440 () Unit!151998)

(declare-fun call!363778 () Unit!151998)

(assert (=> b!5177208 (= lt!2133440 call!363778)))

(assert (=> b!5177208 call!363781))

(declare-fun lt!2133449 () Unit!151998)

(assert (=> b!5177208 (= lt!2133449 lt!2133440)))

(declare-fun lt!2133438 () Unit!151998)

(assert (=> b!5177208 (= lt!2133438 call!363780)))

(assert (=> b!5177208 (= input!5817 lt!2133136)))

(declare-fun lt!2133450 () Unit!151998)

(assert (=> b!5177208 (= lt!2133450 lt!2133438)))

(assert (=> b!5177208 false))

(declare-fun b!5177209 () Bool)

(declare-fun c!891743 () Bool)

(assert (=> b!5177209 (= c!891743 call!363776)))

(declare-fun lt!2133445 () Unit!151998)

(declare-fun lt!2133457 () Unit!151998)

(assert (=> b!5177209 (= lt!2133445 lt!2133457)))

(assert (=> b!5177209 (= input!5817 lt!2133136)))

(assert (=> b!5177209 (= lt!2133457 call!363780)))

(declare-fun lt!2133447 () Unit!151998)

(declare-fun lt!2133446 () Unit!151998)

(assert (=> b!5177209 (= lt!2133447 lt!2133446)))

(assert (=> b!5177209 call!363781))

(assert (=> b!5177209 (= lt!2133446 call!363778)))

(assert (=> b!5177209 (= e!3225876 e!3225874)))

(declare-fun b!5177210 () Bool)

(assert (=> b!5177210 (= e!3225875 call!363782)))

(declare-fun call!363777 () List!60287)

(declare-fun bm!363776 () Bool)

(assert (=> bm!363776 (= call!363782 (findLongestMatchInnerZipper!313 call!363783 lt!2133460 (+ 1 lt!2132889 1 1) call!363777 input!5817 lt!2132880))))

(declare-fun b!5177211 () Bool)

(declare-fun e!3225871 () Bool)

(assert (=> b!5177211 (= e!3225871 e!3225872)))

(declare-fun res!2199973 () Bool)

(assert (=> b!5177211 (=> res!2199973 e!3225872)))

(assert (=> b!5177211 (= res!2199973 (isEmpty!32211 (_1!35235 lt!2133459)))))

(declare-fun bm!363777 () Bool)

(assert (=> bm!363777 (= call!363779 (head!11075 call!363705))))

(declare-fun d!1671798 () Bool)

(assert (=> d!1671798 e!3225871))

(declare-fun res!2199972 () Bool)

(assert (=> d!1671798 (=> (not res!2199972) (not e!3225871))))

(assert (=> d!1671798 (= res!2199972 (= (++!13173 (_1!35235 lt!2133459) (_2!35235 lt!2133459)) input!5817))))

(assert (=> d!1671798 (= lt!2133459 e!3225873)))

(declare-fun c!891742 () Bool)

(assert (=> d!1671798 (= c!891742 (lostCauseZipper!1343 call!363711))))

(declare-fun lt!2133448 () Unit!151998)

(declare-fun Unit!152043 () Unit!151998)

(assert (=> d!1671798 (= lt!2133448 Unit!152043)))

(assert (=> d!1671798 (= (getSuffix!3438 input!5817 lt!2133136) call!363705)))

(declare-fun lt!2133456 () Unit!151998)

(declare-fun lt!2133462 () Unit!151998)

(assert (=> d!1671798 (= lt!2133456 lt!2133462)))

(declare-fun lt!2133463 () List!60287)

(assert (=> d!1671798 (= call!363705 lt!2133463)))

(assert (=> d!1671798 (= lt!2133462 (lemmaSamePrefixThenSameSuffix!2710 lt!2133136 call!363705 lt!2133136 lt!2133463 input!5817))))

(assert (=> d!1671798 (= lt!2133463 (getSuffix!3438 input!5817 lt!2133136))))

(declare-fun lt!2133442 () Unit!151998)

(declare-fun lt!2133439 () Unit!151998)

(assert (=> d!1671798 (= lt!2133442 lt!2133439)))

(assert (=> d!1671798 (isPrefix!5790 lt!2133136 (++!13173 lt!2133136 call!363705))))

(assert (=> d!1671798 (= lt!2133439 (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2133136 call!363705))))

(assert (=> d!1671798 (= (++!13173 lt!2133136 call!363705) input!5817)))

(assert (=> d!1671798 (= (findLongestMatchInnerZipper!313 call!363711 lt!2133136 (+ 1 lt!2132889 1) call!363705 input!5817 lt!2132880) lt!2133459)))

(declare-fun bm!363774 () Bool)

(assert (=> bm!363774 (= call!363777 (tail!10174 call!363705))))

(declare-fun b!5177212 () Bool)

(assert (=> b!5177212 (= e!3225874 (tuple2!63865 lt!2133136 Nil!60163))))

(declare-fun bm!363778 () Bool)

(assert (=> bm!363778 (= call!363778 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (= (and d!1671798 c!891742) b!5177201))

(assert (= (and d!1671798 (not c!891742)) b!5177204))

(assert (= (and b!5177204 c!891741) b!5177209))

(assert (= (and b!5177204 (not c!891741)) b!5177203))

(assert (= (and b!5177209 c!891743) b!5177212))

(assert (= (and b!5177209 (not c!891743)) b!5177206))

(assert (= (and b!5177203 c!891746) b!5177208))

(assert (= (and b!5177203 (not c!891746)) b!5177199))

(assert (= (and b!5177203 c!891744) b!5177200))

(assert (= (and b!5177203 (not c!891744)) b!5177210))

(assert (= (and b!5177200 c!891745) b!5177207))

(assert (= (and b!5177200 (not c!891745)) b!5177205))

(assert (= (or b!5177200 b!5177210) bm!363774))

(assert (= (or b!5177200 b!5177210) bm!363777))

(assert (= (or b!5177200 b!5177210) bm!363772))

(assert (= (or b!5177200 b!5177210) bm!363776))

(assert (= (or b!5177209 b!5177208) bm!363778))

(assert (= (or b!5177209 b!5177203) bm!363771))

(assert (= (or b!5177209 b!5177208) bm!363775))

(assert (= (or b!5177209 b!5177208) bm!363773))

(assert (= (and d!1671798 res!2199972) b!5177211))

(assert (= (and b!5177211 (not res!2199973)) b!5177202))

(declare-fun m!6233188 () Bool)

(assert (=> bm!363773 m!6233188))

(assert (=> bm!363778 m!6232108))

(declare-fun m!6233190 () Bool)

(assert (=> b!5177200 m!6233190))

(declare-fun m!6233192 () Bool)

(assert (=> b!5177202 m!6233192))

(declare-fun m!6233194 () Bool)

(assert (=> b!5177202 m!6233194))

(declare-fun m!6233196 () Bool)

(assert (=> bm!363771 m!6233196))

(declare-fun m!6233198 () Bool)

(assert (=> bm!363774 m!6233198))

(assert (=> bm!363775 m!6232110))

(declare-fun m!6233200 () Bool)

(assert (=> bm!363772 m!6233200))

(declare-fun m!6233202 () Bool)

(assert (=> b!5177211 m!6233202))

(declare-fun m!6233204 () Bool)

(assert (=> b!5177203 m!6233204))

(assert (=> b!5177203 m!6233198))

(assert (=> b!5177203 m!6232070))

(declare-fun m!6233206 () Bool)

(assert (=> b!5177203 m!6233206))

(declare-fun m!6233210 () Bool)

(assert (=> b!5177203 m!6233210))

(declare-fun m!6233212 () Bool)

(assert (=> b!5177203 m!6233212))

(declare-fun m!6233216 () Bool)

(assert (=> b!5177203 m!6233216))

(declare-fun m!6233218 () Bool)

(assert (=> b!5177203 m!6233218))

(declare-fun m!6233220 () Bool)

(assert (=> b!5177203 m!6233220))

(declare-fun m!6233222 () Bool)

(assert (=> b!5177203 m!6233222))

(assert (=> b!5177203 m!6233218))

(declare-fun m!6233224 () Bool)

(assert (=> b!5177203 m!6233224))

(declare-fun m!6233226 () Bool)

(assert (=> b!5177203 m!6233226))

(declare-fun m!6233228 () Bool)

(assert (=> b!5177203 m!6233228))

(assert (=> b!5177203 m!6233226))

(assert (=> b!5177203 m!6233210))

(assert (=> b!5177203 m!6233194))

(declare-fun m!6233230 () Bool)

(assert (=> bm!363776 m!6233230))

(declare-fun m!6233232 () Bool)

(assert (=> d!1671798 m!6233232))

(declare-fun m!6233234 () Bool)

(assert (=> d!1671798 m!6233234))

(declare-fun m!6233236 () Bool)

(assert (=> d!1671798 m!6233236))

(assert (=> d!1671798 m!6233218))

(declare-fun m!6233238 () Bool)

(assert (=> d!1671798 m!6233238))

(declare-fun m!6233240 () Bool)

(assert (=> d!1671798 m!6233240))

(assert (=> d!1671798 m!6233234))

(declare-fun m!6233242 () Bool)

(assert (=> d!1671798 m!6233242))

(assert (=> bm!363777 m!6233204))

(assert (=> bm!363704 d!1671798))

(declare-fun bs!1204919 () Bool)

(declare-fun d!1671804 () Bool)

(assert (= bs!1204919 (and d!1671804 b!5176997)))

(declare-fun lambda!258624 () Int)

(assert (=> bs!1204919 (not (= lambda!258624 lambda!258612))))

(declare-fun bs!1204921 () Bool)

(assert (= bs!1204921 (and d!1671804 d!1671612)))

(assert (=> bs!1204921 (not (= lambda!258624 lambda!258610))))

(declare-fun bs!1204922 () Bool)

(assert (= bs!1204922 (and d!1671804 b!5177056)))

(assert (=> bs!1204922 (not (= lambda!258624 lambda!258618))))

(declare-fun bs!1204923 () Bool)

(assert (= bs!1204923 (and d!1671804 d!1671636)))

(assert (=> bs!1204923 (= lambda!258624 lambda!258613)))

(declare-fun bs!1204925 () Bool)

(assert (= bs!1204925 (and d!1671804 d!1671546)))

(assert (=> bs!1204925 (= lambda!258624 lambda!258592)))

(declare-fun bs!1204926 () Bool)

(assert (= bs!1204926 (and d!1671804 b!5176996)))

(assert (=> bs!1204926 (not (= lambda!258624 lambda!258611))))

(declare-fun bs!1204927 () Bool)

(assert (= bs!1204927 (and d!1671804 b!5177055)))

(assert (=> bs!1204927 (not (= lambda!258624 lambda!258617))))

(declare-fun bs!1204928 () Bool)

(assert (= bs!1204928 (and d!1671804 d!1671684)))

(assert (=> bs!1204928 (not (= lambda!258624 lambda!258616))))

(assert (=> d!1671804 (= (nullableZipper!1195 lt!2132878) (exists!1939 lt!2132878 lambda!258624))))

(declare-fun bs!1204929 () Bool)

(assert (= bs!1204929 d!1671804))

(declare-fun m!6233246 () Bool)

(assert (=> bs!1204929 m!6233246))

(assert (=> bm!363699 d!1671804))

(declare-fun d!1671808 () Bool)

(declare-fun e!3225880 () Bool)

(assert (=> d!1671808 e!3225880))

(declare-fun res!2199977 () Bool)

(assert (=> d!1671808 (=> res!2199977 e!3225880)))

(declare-fun lt!2133465 () Bool)

(assert (=> d!1671808 (= res!2199977 (not lt!2133465))))

(declare-fun e!3225881 () Bool)

(assert (=> d!1671808 (= lt!2133465 e!3225881)))

(declare-fun res!2199979 () Bool)

(assert (=> d!1671808 (=> res!2199979 e!3225881)))

(assert (=> d!1671808 (= res!2199979 ((_ is Nil!60163) (tail!10174 input!5817)))))

(assert (=> d!1671808 (= (isPrefix!5790 (tail!10174 input!5817) (tail!10174 input!5817)) lt!2133465)))

(declare-fun b!5177217 () Bool)

(declare-fun e!3225882 () Bool)

(assert (=> b!5177217 (= e!3225881 e!3225882)))

(declare-fun res!2199976 () Bool)

(assert (=> b!5177217 (=> (not res!2199976) (not e!3225882))))

(assert (=> b!5177217 (= res!2199976 (not ((_ is Nil!60163) (tail!10174 input!5817))))))

(declare-fun b!5177218 () Bool)

(declare-fun res!2199978 () Bool)

(assert (=> b!5177218 (=> (not res!2199978) (not e!3225882))))

(assert (=> b!5177218 (= res!2199978 (= (head!11075 (tail!10174 input!5817)) (head!11075 (tail!10174 input!5817))))))

(declare-fun b!5177219 () Bool)

(assert (=> b!5177219 (= e!3225882 (isPrefix!5790 (tail!10174 (tail!10174 input!5817)) (tail!10174 (tail!10174 input!5817))))))

(declare-fun b!5177220 () Bool)

(assert (=> b!5177220 (= e!3225880 (>= (size!39693 (tail!10174 input!5817)) (size!39693 (tail!10174 input!5817))))))

(assert (= (and d!1671808 (not res!2199979)) b!5177217))

(assert (= (and b!5177217 res!2199976) b!5177218))

(assert (= (and b!5177218 res!2199978) b!5177219))

(assert (= (and d!1671808 (not res!2199977)) b!5177220))

(assert (=> b!5177218 m!6232140))

(assert (=> b!5177218 m!6232748))

(assert (=> b!5177218 m!6232140))

(assert (=> b!5177218 m!6232748))

(assert (=> b!5177219 m!6232140))

(assert (=> b!5177219 m!6232680))

(assert (=> b!5177219 m!6232140))

(assert (=> b!5177219 m!6232680))

(assert (=> b!5177219 m!6232680))

(assert (=> b!5177219 m!6232680))

(declare-fun m!6233252 () Bool)

(assert (=> b!5177219 m!6233252))

(assert (=> b!5177220 m!6232140))

(assert (=> b!5177220 m!6232678))

(assert (=> b!5177220 m!6232140))

(assert (=> b!5177220 m!6232678))

(assert (=> b!5176799 d!1671808))

(assert (=> b!5176799 d!1671624))

(assert (=> b!5176747 d!1671494))

(assert (=> b!5176747 d!1671534))

(assert (=> b!5176747 d!1671518))

(assert (=> b!5176747 d!1671588))

(declare-fun b!5177227 () Bool)

(declare-fun res!2199981 () Bool)

(declare-fun e!3225886 () Bool)

(assert (=> b!5177227 (=> (not res!2199981) (not e!3225886))))

(declare-fun lt!2133468 () List!60287)

(assert (=> b!5177227 (= res!2199981 (= (size!39693 lt!2133468) (+ (size!39693 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))) (size!39693 lt!2133050))))))

(declare-fun b!5177226 () Bool)

(declare-fun e!3225885 () List!60287)

(assert (=> b!5177226 (= e!3225885 (Cons!60163 (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))) (++!13173 (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))) lt!2133050)))))

(declare-fun b!5177225 () Bool)

(assert (=> b!5177225 (= e!3225885 lt!2133050)))

(declare-fun b!5177228 () Bool)

(assert (=> b!5177228 (= e!3225886 (or (not (= lt!2133050 Nil!60163)) (= lt!2133468 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163)))))))

(declare-fun d!1671814 () Bool)

(assert (=> d!1671814 e!3225886))

(declare-fun res!2199980 () Bool)

(assert (=> d!1671814 (=> (not res!2199980) (not e!3225886))))

(assert (=> d!1671814 (= res!2199980 (= (content!10662 lt!2133468) ((_ map or) (content!10662 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))) (content!10662 lt!2133050))))))

(assert (=> d!1671814 (= lt!2133468 e!3225885)))

(declare-fun c!891750 () Bool)

(assert (=> d!1671814 (= c!891750 ((_ is Nil!60163) (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))))))

(assert (=> d!1671814 (= (++!13173 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163)) lt!2133050) lt!2133468)))

(assert (= (and d!1671814 c!891750) b!5177225))

(assert (= (and d!1671814 (not c!891750)) b!5177226))

(assert (= (and d!1671814 res!2199980) b!5177227))

(assert (= (and b!5177227 res!2199981) b!5177228))

(declare-fun m!6233256 () Bool)

(assert (=> b!5177227 m!6233256))

(assert (=> b!5177227 m!6232224))

(declare-fun m!6233258 () Bool)

(assert (=> b!5177227 m!6233258))

(declare-fun m!6233260 () Bool)

(assert (=> b!5177227 m!6233260))

(declare-fun m!6233262 () Bool)

(assert (=> b!5177226 m!6233262))

(declare-fun m!6233264 () Bool)

(assert (=> d!1671814 m!6233264))

(assert (=> d!1671814 m!6232224))

(declare-fun m!6233266 () Bool)

(assert (=> d!1671814 m!6233266))

(declare-fun m!6233268 () Bool)

(assert (=> d!1671814 m!6233268))

(assert (=> b!5176747 d!1671814))

(assert (=> b!5176747 d!1671500))

(assert (=> b!5176747 d!1671542))

(assert (=> b!5176747 d!1671530))

(assert (=> b!5176747 d!1671590))

(declare-fun d!1671824 () Bool)

(assert (=> d!1671824 (= (++!13173 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163)) lt!2133050) input!5817)))

(declare-fun lt!2133471 () Unit!151998)

(assert (=> d!1671824 (= lt!2133471 (choose!38447 testedP!294 lt!2133047 lt!2133050 input!5817))))

(assert (=> d!1671824 (= (++!13173 testedP!294 (Cons!60163 lt!2133047 lt!2133050)) input!5817)))

(assert (=> d!1671824 (= (lemmaMoveElementToOtherListKeepsConcatEq!1591 testedP!294 lt!2133047 lt!2133050 input!5817) lt!2133471)))

(declare-fun bs!1204931 () Bool)

(assert (= bs!1204931 d!1671824))

(assert (=> bs!1204931 m!6232224))

(assert (=> bs!1204931 m!6232224))

(assert (=> bs!1204931 m!6232226))

(declare-fun m!6233274 () Bool)

(assert (=> bs!1204931 m!6233274))

(declare-fun m!6233276 () Bool)

(assert (=> bs!1204931 m!6233276))

(assert (=> b!5176747 d!1671824))

(declare-fun b!5177235 () Bool)

(declare-fun res!2199983 () Bool)

(declare-fun e!3225890 () Bool)

(assert (=> b!5177235 (=> (not res!2199983) (not e!3225890))))

(declare-fun lt!2133472 () List!60287)

(assert (=> b!5177235 (= res!2199983 (= (size!39693 lt!2133472) (+ (size!39693 testedP!294) (size!39693 (Cons!60163 lt!2133047 Nil!60163)))))))

(declare-fun b!5177234 () Bool)

(declare-fun e!3225889 () List!60287)

(assert (=> b!5177234 (= e!3225889 (Cons!60163 (h!66611 testedP!294) (++!13173 (t!373440 testedP!294) (Cons!60163 lt!2133047 Nil!60163))))))

(declare-fun b!5177233 () Bool)

(assert (=> b!5177233 (= e!3225889 (Cons!60163 lt!2133047 Nil!60163))))

(declare-fun b!5177236 () Bool)

(assert (=> b!5177236 (= e!3225890 (or (not (= (Cons!60163 lt!2133047 Nil!60163) Nil!60163)) (= lt!2133472 testedP!294)))))

(declare-fun d!1671828 () Bool)

(assert (=> d!1671828 e!3225890))

(declare-fun res!2199982 () Bool)

(assert (=> d!1671828 (=> (not res!2199982) (not e!3225890))))

(assert (=> d!1671828 (= res!2199982 (= (content!10662 lt!2133472) ((_ map or) (content!10662 testedP!294) (content!10662 (Cons!60163 lt!2133047 Nil!60163)))))))

(assert (=> d!1671828 (= lt!2133472 e!3225889)))

(declare-fun c!891753 () Bool)

(assert (=> d!1671828 (= c!891753 ((_ is Nil!60163) testedP!294))))

(assert (=> d!1671828 (= (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163)) lt!2133472)))

(assert (= (and d!1671828 c!891753) b!5177233))

(assert (= (and d!1671828 (not c!891753)) b!5177234))

(assert (= (and d!1671828 res!2199982) b!5177235))

(assert (= (and b!5177235 res!2199983) b!5177236))

(declare-fun m!6233278 () Bool)

(assert (=> b!5177235 m!6233278))

(assert (=> b!5177235 m!6232066))

(declare-fun m!6233280 () Bool)

(assert (=> b!5177235 m!6233280))

(declare-fun m!6233282 () Bool)

(assert (=> b!5177234 m!6233282))

(declare-fun m!6233284 () Bool)

(assert (=> d!1671828 m!6233284))

(assert (=> d!1671828 m!6232390))

(declare-fun m!6233286 () Bool)

(assert (=> d!1671828 m!6233286))

(assert (=> b!5176747 d!1671828))

(assert (=> b!5176747 d!1671594))

(assert (=> b!5176747 d!1671498))

(declare-fun b!5177239 () Bool)

(declare-fun res!2199985 () Bool)

(declare-fun e!3225892 () Bool)

(assert (=> b!5177239 (=> (not res!2199985) (not e!3225892))))

(declare-fun lt!2133473 () List!60287)

(assert (=> b!5177239 (= res!2199985 (= (size!39693 lt!2133473) (+ (size!39693 testedP!294) (size!39693 (Cons!60163 (head!11075 lt!2132885) Nil!60163)))))))

(declare-fun b!5177238 () Bool)

(declare-fun e!3225891 () List!60287)

(assert (=> b!5177238 (= e!3225891 (Cons!60163 (h!66611 testedP!294) (++!13173 (t!373440 testedP!294) (Cons!60163 (head!11075 lt!2132885) Nil!60163))))))

(declare-fun b!5177237 () Bool)

(assert (=> b!5177237 (= e!3225891 (Cons!60163 (head!11075 lt!2132885) Nil!60163))))

(declare-fun b!5177240 () Bool)

(assert (=> b!5177240 (= e!3225892 (or (not (= (Cons!60163 (head!11075 lt!2132885) Nil!60163) Nil!60163)) (= lt!2133473 testedP!294)))))

(declare-fun d!1671830 () Bool)

(assert (=> d!1671830 e!3225892))

(declare-fun res!2199984 () Bool)

(assert (=> d!1671830 (=> (not res!2199984) (not e!3225892))))

(assert (=> d!1671830 (= res!2199984 (= (content!10662 lt!2133473) ((_ map or) (content!10662 testedP!294) (content!10662 (Cons!60163 (head!11075 lt!2132885) Nil!60163)))))))

(assert (=> d!1671830 (= lt!2133473 e!3225891)))

(declare-fun c!891754 () Bool)

(assert (=> d!1671830 (= c!891754 ((_ is Nil!60163) testedP!294))))

(assert (=> d!1671830 (= (++!13173 testedP!294 (Cons!60163 (head!11075 lt!2132885) Nil!60163)) lt!2133473)))

(assert (= (and d!1671830 c!891754) b!5177237))

(assert (= (and d!1671830 (not c!891754)) b!5177238))

(assert (= (and d!1671830 res!2199984) b!5177239))

(assert (= (and b!5177239 res!2199985) b!5177240))

(declare-fun m!6233288 () Bool)

(assert (=> b!5177239 m!6233288))

(assert (=> b!5177239 m!6232066))

(declare-fun m!6233290 () Bool)

(assert (=> b!5177239 m!6233290))

(declare-fun m!6233292 () Bool)

(assert (=> b!5177238 m!6233292))

(declare-fun m!6233294 () Bool)

(assert (=> d!1671830 m!6233294))

(assert (=> d!1671830 m!6232390))

(declare-fun m!6233296 () Bool)

(assert (=> d!1671830 m!6233296))

(assert (=> b!5176747 d!1671830))

(assert (=> bm!363706 d!1671512))

(declare-fun d!1671832 () Bool)

(declare-fun c!891755 () Bool)

(assert (=> d!1671832 (= c!891755 (isEmpty!32211 (tail!10174 (_1!35235 lt!2132881))))))

(declare-fun e!3225893 () Bool)

(assert (=> d!1671832 (= (matchZipper!987 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881))) (tail!10174 (_1!35235 lt!2132881))) e!3225893)))

(declare-fun b!5177241 () Bool)

(assert (=> b!5177241 (= e!3225893 (nullableZipper!1195 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881)))))))

(declare-fun b!5177242 () Bool)

(assert (=> b!5177242 (= e!3225893 (matchZipper!987 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881))) (head!11075 (tail!10174 (_1!35235 lt!2132881)))) (tail!10174 (tail!10174 (_1!35235 lt!2132881)))))))

(assert (= (and d!1671832 c!891755) b!5177241))

(assert (= (and d!1671832 (not c!891755)) b!5177242))

(assert (=> d!1671832 m!6232122))

(declare-fun m!6233300 () Bool)

(assert (=> d!1671832 m!6233300))

(assert (=> b!5177241 m!6232120))

(declare-fun m!6233302 () Bool)

(assert (=> b!5177241 m!6233302))

(assert (=> b!5177242 m!6232122))

(declare-fun m!6233304 () Bool)

(assert (=> b!5177242 m!6233304))

(assert (=> b!5177242 m!6232120))

(assert (=> b!5177242 m!6233304))

(declare-fun m!6233306 () Bool)

(assert (=> b!5177242 m!6233306))

(assert (=> b!5177242 m!6232122))

(declare-fun m!6233308 () Bool)

(assert (=> b!5177242 m!6233308))

(assert (=> b!5177242 m!6233306))

(assert (=> b!5177242 m!6233308))

(declare-fun m!6233310 () Bool)

(assert (=> b!5177242 m!6233310))

(assert (=> b!5176645 d!1671832))

(declare-fun bs!1204933 () Bool)

(declare-fun d!1671836 () Bool)

(assert (= bs!1204933 (and d!1671836 d!1671532)))

(declare-fun lambda!258625 () Int)

(assert (=> bs!1204933 (= (= (head!11075 (_1!35235 lt!2132881)) lt!2132879) (= lambda!258625 lambda!258589))))

(declare-fun bs!1204934 () Bool)

(assert (= bs!1204934 (and d!1671836 d!1671662)))

(assert (=> bs!1204934 (= (= (head!11075 (_1!35235 lt!2132881)) call!363667) (= lambda!258625 lambda!258614))))

(declare-fun bs!1204935 () Bool)

(assert (= bs!1204935 (and d!1671836 d!1671672)))

(assert (=> bs!1204935 (= (= (head!11075 (_1!35235 lt!2132881)) call!363707) (= lambda!258625 lambda!258615))))

(declare-fun bs!1204936 () Bool)

(assert (= bs!1204936 (and d!1671836 d!1671786)))

(assert (=> bs!1204936 (= (= (head!11075 (_1!35235 lt!2132881)) call!363675) (= lambda!258625 lambda!258622))))

(assert (=> d!1671836 true))

(assert (=> d!1671836 (= (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881))) (flatMap!460 baseZ!62 lambda!258625))))

(declare-fun bs!1204937 () Bool)

(assert (= bs!1204937 d!1671836))

(declare-fun m!6233320 () Bool)

(assert (=> bs!1204937 m!6233320))

(assert (=> b!5176645 d!1671836))

(declare-fun d!1671840 () Bool)

(assert (=> d!1671840 (= (head!11075 (_1!35235 lt!2132881)) (h!66611 (_1!35235 lt!2132881)))))

(assert (=> b!5176645 d!1671840))

(declare-fun d!1671842 () Bool)

(assert (=> d!1671842 (= (tail!10174 (_1!35235 lt!2132881)) (t!373440 (_1!35235 lt!2132881)))))

(assert (=> b!5176645 d!1671842))

(assert (=> d!1671510 d!1671468))

(assert (=> bm!363665 d!1671716))

(assert (=> b!5176654 d!1671494))

(assert (=> b!5176654 d!1671650))

(declare-fun c!891757 () Bool)

(declare-fun d!1671844 () Bool)

(assert (=> d!1671844 (= c!891757 (isEmpty!32211 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))))))

(declare-fun e!3225899 () Bool)

(assert (=> d!1671844 (= (matchZipper!987 baseZ!62 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) e!3225899)))

(declare-fun b!5177251 () Bool)

(assert (=> b!5177251 (= e!3225899 (nullableZipper!1195 baseZ!62))))

(declare-fun b!5177252 () Bool)

(assert (=> b!5177252 (= e!3225899 (matchZipper!987 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))) (tail!10174 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))))))

(assert (= (and d!1671844 c!891757) b!5177251))

(assert (= (and d!1671844 (not c!891757)) b!5177252))

(assert (=> d!1671844 m!6232132))

(assert (=> b!5177251 m!6232116))

(declare-fun m!6233322 () Bool)

(assert (=> b!5177252 m!6233322))

(assert (=> b!5177252 m!6233322))

(declare-fun m!6233324 () Bool)

(assert (=> b!5177252 m!6233324))

(declare-fun m!6233326 () Bool)

(assert (=> b!5177252 m!6233326))

(assert (=> b!5177252 m!6233324))

(assert (=> b!5177252 m!6233326))

(declare-fun m!6233334 () Bool)

(assert (=> b!5177252 m!6233334))

(assert (=> b!5176654 d!1671844))

(assert (=> b!5176654 d!1671466))

(assert (=> b!5176654 d!1671474))

(assert (=> b!5176806 d!1671494))

(assert (=> b!5176806 d!1671500))

(declare-fun d!1671846 () Bool)

(declare-fun c!891758 () Bool)

(assert (=> d!1671846 (= c!891758 (isEmpty!32211 (tail!10174 (_1!35235 lt!2132877))))))

(declare-fun e!3225900 () Bool)

(assert (=> d!1671846 (= (matchZipper!987 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877))) (tail!10174 (_1!35235 lt!2132877))) e!3225900)))

(declare-fun b!5177253 () Bool)

(assert (=> b!5177253 (= e!3225900 (nullableZipper!1195 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877)))))))

(declare-fun b!5177254 () Bool)

(assert (=> b!5177254 (= e!3225900 (matchZipper!987 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877))) (head!11075 (tail!10174 (_1!35235 lt!2132877)))) (tail!10174 (tail!10174 (_1!35235 lt!2132877)))))))

(assert (= (and d!1671846 c!891758) b!5177253))

(assert (= (and d!1671846 (not c!891758)) b!5177254))

(assert (=> d!1671846 m!6232310))

(declare-fun m!6233342 () Bool)

(assert (=> d!1671846 m!6233342))

(assert (=> b!5177253 m!6232308))

(declare-fun m!6233344 () Bool)

(assert (=> b!5177253 m!6233344))

(assert (=> b!5177254 m!6232310))

(declare-fun m!6233346 () Bool)

(assert (=> b!5177254 m!6233346))

(assert (=> b!5177254 m!6232308))

(assert (=> b!5177254 m!6233346))

(declare-fun m!6233348 () Bool)

(assert (=> b!5177254 m!6233348))

(assert (=> b!5177254 m!6232310))

(declare-fun m!6233350 () Bool)

(assert (=> b!5177254 m!6233350))

(assert (=> b!5177254 m!6233348))

(assert (=> b!5177254 m!6233350))

(declare-fun m!6233352 () Bool)

(assert (=> b!5177254 m!6233352))

(assert (=> b!5176788 d!1671846))

(declare-fun bs!1204938 () Bool)

(declare-fun d!1671850 () Bool)

(assert (= bs!1204938 (and d!1671850 d!1671532)))

(declare-fun lambda!258626 () Int)

(assert (=> bs!1204938 (= (= (head!11075 (_1!35235 lt!2132877)) lt!2132879) (= lambda!258626 lambda!258589))))

(declare-fun bs!1204939 () Bool)

(assert (= bs!1204939 (and d!1671850 d!1671836)))

(assert (=> bs!1204939 (= (= (head!11075 (_1!35235 lt!2132877)) (head!11075 (_1!35235 lt!2132881))) (= lambda!258626 lambda!258625))))

(declare-fun bs!1204940 () Bool)

(assert (= bs!1204940 (and d!1671850 d!1671672)))

(assert (=> bs!1204940 (= (= (head!11075 (_1!35235 lt!2132877)) call!363707) (= lambda!258626 lambda!258615))))

(declare-fun bs!1204941 () Bool)

(assert (= bs!1204941 (and d!1671850 d!1671662)))

(assert (=> bs!1204941 (= (= (head!11075 (_1!35235 lt!2132877)) call!363667) (= lambda!258626 lambda!258614))))

(declare-fun bs!1204942 () Bool)

(assert (= bs!1204942 (and d!1671850 d!1671786)))

(assert (=> bs!1204942 (= (= (head!11075 (_1!35235 lt!2132877)) call!363675) (= lambda!258626 lambda!258622))))

(assert (=> d!1671850 true))

(assert (=> d!1671850 (= (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877))) (flatMap!460 baseZ!62 lambda!258626))))

(declare-fun bs!1204943 () Bool)

(assert (= bs!1204943 d!1671850))

(declare-fun m!6233354 () Bool)

(assert (=> bs!1204943 m!6233354))

(assert (=> b!5176788 d!1671850))

(declare-fun d!1671852 () Bool)

(assert (=> d!1671852 (= (head!11075 (_1!35235 lt!2132877)) (h!66611 (_1!35235 lt!2132877)))))

(assert (=> b!5176788 d!1671852))

(declare-fun d!1671854 () Bool)

(assert (=> d!1671854 (= (tail!10174 (_1!35235 lt!2132877)) (t!373440 (_1!35235 lt!2132877)))))

(assert (=> b!5176788 d!1671854))

(assert (=> bm!363659 d!1671804))

(declare-fun d!1671856 () Bool)

(assert (=> d!1671856 (= (head!11075 testedP!294) (h!66611 testedP!294))))

(assert (=> b!5176804 d!1671856))

(assert (=> b!5176804 d!1671620))

(assert (=> bm!363666 d!1671512))

(assert (=> d!1671518 d!1671500))

(assert (=> d!1671518 d!1671494))

(declare-fun d!1671858 () Bool)

(assert (=> d!1671858 (<= (size!39693 testedP!294) (size!39693 input!5817))))

(assert (=> d!1671858 true))

(declare-fun _$64!717 () Unit!151998)

(assert (=> d!1671858 (= (choose!38440 testedP!294 input!5817) _$64!717)))

(declare-fun bs!1204944 () Bool)

(assert (= bs!1204944 d!1671858))

(assert (=> bs!1204944 m!6232066))

(assert (=> bs!1204944 m!6232070))

(assert (=> d!1671518 d!1671858))

(assert (=> d!1671518 d!1671522))

(declare-fun d!1671860 () Bool)

(assert (=> d!1671860 (= input!5817 lt!2132884)))

(declare-fun lt!2133476 () Unit!151998)

(assert (=> d!1671860 (= lt!2133476 (choose!38438 input!5817 lt!2132884 input!5817))))

(assert (=> d!1671860 (isPrefix!5790 input!5817 input!5817)))

(assert (=> d!1671860 (= (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2132884 input!5817) lt!2133476)))

(declare-fun bs!1204945 () Bool)

(assert (= bs!1204945 d!1671860))

(declare-fun m!6233356 () Bool)

(assert (=> bs!1204945 m!6233356))

(assert (=> bs!1204945 m!6232110))

(assert (=> bm!363661 d!1671860))

(assert (=> bm!363701 d!1671860))

(declare-fun bs!1204946 () Bool)

(declare-fun d!1671862 () Bool)

(assert (= bs!1204946 (and d!1671862 d!1671504)))

(declare-fun lambda!258627 () Int)

(assert (=> bs!1204946 (= lambda!258627 lambda!258580)))

(declare-fun bs!1204947 () Bool)

(assert (= bs!1204947 (and d!1671862 d!1671554)))

(assert (=> bs!1204947 (= lambda!258627 lambda!258593)))

(declare-fun bs!1204948 () Bool)

(assert (= bs!1204948 (and d!1671862 d!1671768)))

(assert (=> bs!1204948 (= lambda!258627 lambda!258621)))

(assert (=> d!1671862 (= (inv!79889 setElem!32337) (forall!14161 (exprs!4541 setElem!32337) lambda!258627))))

(declare-fun bs!1204949 () Bool)

(assert (= bs!1204949 d!1671862))

(declare-fun m!6233358 () Bool)

(assert (=> bs!1204949 m!6233358))

(assert (=> setNonEmpty!32337 d!1671862))

(declare-fun d!1671864 () Bool)

(declare-fun c!891759 () Bool)

(assert (=> d!1671864 (= c!891759 ((_ is Cons!60163) (t!373440 testedP!294)))))

(declare-fun e!3225901 () (InoxSet Context!8082))

(assert (=> d!1671864 (= (derivationZipper!280 (derivationStepZipper!1003 baseZ!62 (h!66611 testedP!294)) (t!373440 testedP!294)) e!3225901)))

(declare-fun b!5177255 () Bool)

(assert (=> b!5177255 (= e!3225901 (derivationZipper!280 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (h!66611 testedP!294)) (h!66611 (t!373440 testedP!294))) (t!373440 (t!373440 testedP!294))))))

(declare-fun b!5177256 () Bool)

(assert (=> b!5177256 (= e!3225901 (derivationStepZipper!1003 baseZ!62 (h!66611 testedP!294)))))

(assert (= (and d!1671864 c!891759) b!5177255))

(assert (= (and d!1671864 (not c!891759)) b!5177256))

(assert (=> b!5177255 m!6232410))

(declare-fun m!6233360 () Bool)

(assert (=> b!5177255 m!6233360))

(assert (=> b!5177255 m!6233360))

(declare-fun m!6233362 () Bool)

(assert (=> b!5177255 m!6233362))

(assert (=> b!5176857 d!1671864))

(declare-fun bs!1204950 () Bool)

(declare-fun d!1671866 () Bool)

(assert (= bs!1204950 (and d!1671866 d!1671532)))

(declare-fun lambda!258628 () Int)

(assert (=> bs!1204950 (= (= (h!66611 testedP!294) lt!2132879) (= lambda!258628 lambda!258589))))

(declare-fun bs!1204951 () Bool)

(assert (= bs!1204951 (and d!1671866 d!1671672)))

(assert (=> bs!1204951 (= (= (h!66611 testedP!294) call!363707) (= lambda!258628 lambda!258615))))

(declare-fun bs!1204952 () Bool)

(assert (= bs!1204952 (and d!1671866 d!1671662)))

(assert (=> bs!1204952 (= (= (h!66611 testedP!294) call!363667) (= lambda!258628 lambda!258614))))

(declare-fun bs!1204953 () Bool)

(assert (= bs!1204953 (and d!1671866 d!1671786)))

(assert (=> bs!1204953 (= (= (h!66611 testedP!294) call!363675) (= lambda!258628 lambda!258622))))

(declare-fun bs!1204954 () Bool)

(assert (= bs!1204954 (and d!1671866 d!1671836)))

(assert (=> bs!1204954 (= (= (h!66611 testedP!294) (head!11075 (_1!35235 lt!2132881))) (= lambda!258628 lambda!258625))))

(declare-fun bs!1204955 () Bool)

(assert (= bs!1204955 (and d!1671866 d!1671850)))

(assert (=> bs!1204955 (= (= (h!66611 testedP!294) (head!11075 (_1!35235 lt!2132877))) (= lambda!258628 lambda!258626))))

(assert (=> d!1671866 true))

(assert (=> d!1671866 (= (derivationStepZipper!1003 baseZ!62 (h!66611 testedP!294)) (flatMap!460 baseZ!62 lambda!258628))))

(declare-fun bs!1204956 () Bool)

(assert (= bs!1204956 d!1671866))

(declare-fun m!6233364 () Bool)

(assert (=> bs!1204956 m!6233364))

(assert (=> b!5176857 d!1671866))

(declare-fun d!1671868 () Bool)

(declare-fun c!891760 () Bool)

(assert (=> d!1671868 (= c!891760 ((_ is Cons!60163) (t!373440 lt!2132884)))))

(declare-fun e!3225902 () (InoxSet Context!8082))

(assert (=> d!1671868 (= (derivationZipper!280 (derivationStepZipper!1003 baseZ!62 (h!66611 lt!2132884)) (t!373440 lt!2132884)) e!3225902)))

(declare-fun b!5177257 () Bool)

(assert (=> b!5177257 (= e!3225902 (derivationZipper!280 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (h!66611 lt!2132884)) (h!66611 (t!373440 lt!2132884))) (t!373440 (t!373440 lt!2132884))))))

(declare-fun b!5177258 () Bool)

(assert (=> b!5177258 (= e!3225902 (derivationStepZipper!1003 baseZ!62 (h!66611 lt!2132884)))))

(assert (= (and d!1671868 c!891760) b!5177257))

(assert (= (and d!1671868 (not c!891760)) b!5177258))

(assert (=> b!5177257 m!6232144))

(declare-fun m!6233366 () Bool)

(assert (=> b!5177257 m!6233366))

(assert (=> b!5177257 m!6233366))

(declare-fun m!6233368 () Bool)

(assert (=> b!5177257 m!6233368))

(assert (=> b!5176673 d!1671868))

(declare-fun bs!1204957 () Bool)

(declare-fun d!1671870 () Bool)

(assert (= bs!1204957 (and d!1671870 d!1671532)))

(declare-fun lambda!258629 () Int)

(assert (=> bs!1204957 (= (= (h!66611 lt!2132884) lt!2132879) (= lambda!258629 lambda!258589))))

(declare-fun bs!1204958 () Bool)

(assert (= bs!1204958 (and d!1671870 d!1671662)))

(assert (=> bs!1204958 (= (= (h!66611 lt!2132884) call!363667) (= lambda!258629 lambda!258614))))

(declare-fun bs!1204959 () Bool)

(assert (= bs!1204959 (and d!1671870 d!1671786)))

(assert (=> bs!1204959 (= (= (h!66611 lt!2132884) call!363675) (= lambda!258629 lambda!258622))))

(declare-fun bs!1204960 () Bool)

(assert (= bs!1204960 (and d!1671870 d!1671836)))

(assert (=> bs!1204960 (= (= (h!66611 lt!2132884) (head!11075 (_1!35235 lt!2132881))) (= lambda!258629 lambda!258625))))

(declare-fun bs!1204961 () Bool)

(assert (= bs!1204961 (and d!1671870 d!1671850)))

(assert (=> bs!1204961 (= (= (h!66611 lt!2132884) (head!11075 (_1!35235 lt!2132877))) (= lambda!258629 lambda!258626))))

(declare-fun bs!1204962 () Bool)

(assert (= bs!1204962 (and d!1671870 d!1671672)))

(assert (=> bs!1204962 (= (= (h!66611 lt!2132884) call!363707) (= lambda!258629 lambda!258615))))

(declare-fun bs!1204963 () Bool)

(assert (= bs!1204963 (and d!1671870 d!1671866)))

(assert (=> bs!1204963 (= (= (h!66611 lt!2132884) (h!66611 testedP!294)) (= lambda!258629 lambda!258628))))

(assert (=> d!1671870 true))

(assert (=> d!1671870 (= (derivationStepZipper!1003 baseZ!62 (h!66611 lt!2132884)) (flatMap!460 baseZ!62 lambda!258629))))

(declare-fun bs!1204964 () Bool)

(assert (= bs!1204964 d!1671870))

(declare-fun m!6233370 () Bool)

(assert (=> bs!1204964 m!6233370))

(assert (=> b!5176673 d!1671870))

(assert (=> bm!363702 d!1671748))

(declare-fun d!1671872 () Bool)

(declare-fun lt!2133477 () Int)

(assert (=> d!1671872 (>= lt!2133477 0)))

(declare-fun e!3225903 () Int)

(assert (=> d!1671872 (= lt!2133477 e!3225903)))

(declare-fun c!891761 () Bool)

(assert (=> d!1671872 (= c!891761 ((_ is Nil!60163) (_1!35235 lt!2132989)))))

(assert (=> d!1671872 (= (size!39693 (_1!35235 lt!2132989)) lt!2133477)))

(declare-fun b!5177259 () Bool)

(assert (=> b!5177259 (= e!3225903 0)))

(declare-fun b!5177260 () Bool)

(assert (=> b!5177260 (= e!3225903 (+ 1 (size!39693 (t!373440 (_1!35235 lt!2132989)))))))

(assert (= (and d!1671872 c!891761) b!5177259))

(assert (= (and d!1671872 (not c!891761)) b!5177260))

(declare-fun m!6233372 () Bool)

(assert (=> b!5177260 m!6233372))

(assert (=> b!5176714 d!1671872))

(assert (=> b!5176714 d!1671466))

(declare-fun d!1671874 () Bool)

(declare-fun lt!2133478 () Int)

(assert (=> d!1671874 (>= lt!2133478 0)))

(declare-fun e!3225904 () Int)

(assert (=> d!1671874 (= lt!2133478 e!3225904)))

(declare-fun c!891762 () Bool)

(assert (=> d!1671874 (= c!891762 ((_ is Nil!60163) (_1!35235 lt!2133135)))))

(assert (=> d!1671874 (= (size!39693 (_1!35235 lt!2133135)) lt!2133478)))

(declare-fun b!5177261 () Bool)

(assert (=> b!5177261 (= e!3225904 0)))

(declare-fun b!5177262 () Bool)

(assert (=> b!5177262 (= e!3225904 (+ 1 (size!39693 (t!373440 (_1!35235 lt!2133135)))))))

(assert (= (and d!1671874 c!891762) b!5177261))

(assert (= (and d!1671874 (not c!891762)) b!5177262))

(declare-fun m!6233374 () Bool)

(assert (=> b!5177262 m!6233374))

(assert (=> b!5176810 d!1671874))

(assert (=> b!5176810 d!1671466))

(declare-fun b!5177263 () Bool)

(declare-fun e!3225905 () Bool)

(declare-fun tp!1452240 () Bool)

(declare-fun tp!1452241 () Bool)

(assert (=> b!5177263 (= e!3225905 (and tp!1452240 tp!1452241))))

(assert (=> b!5176868 (= tp!1452211 e!3225905)))

(assert (= (and b!5176868 ((_ is Cons!60164) (exprs!4541 setElem!32337))) b!5177263))

(declare-fun b!5177276 () Bool)

(declare-fun e!3225908 () Bool)

(declare-fun tp!1452254 () Bool)

(assert (=> b!5177276 (= e!3225908 tp!1452254)))

(declare-fun b!5177274 () Bool)

(assert (=> b!5177274 (= e!3225908 tp_is_empty!38567)))

(declare-fun b!5177275 () Bool)

(declare-fun tp!1452252 () Bool)

(declare-fun tp!1452255 () Bool)

(assert (=> b!5177275 (= e!3225908 (and tp!1452252 tp!1452255))))

(assert (=> b!5176876 (= tp!1452218 e!3225908)))

(declare-fun b!5177277 () Bool)

(declare-fun tp!1452256 () Bool)

(declare-fun tp!1452253 () Bool)

(assert (=> b!5177277 (= e!3225908 (and tp!1452256 tp!1452253))))

(assert (= (and b!5176876 ((_ is ElementMatch!14657) (h!66612 (exprs!4541 setElem!32333)))) b!5177274))

(assert (= (and b!5176876 ((_ is Concat!23502) (h!66612 (exprs!4541 setElem!32333)))) b!5177275))

(assert (= (and b!5176876 ((_ is Star!14657) (h!66612 (exprs!4541 setElem!32333)))) b!5177276))

(assert (= (and b!5176876 ((_ is Union!14657) (h!66612 (exprs!4541 setElem!32333)))) b!5177277))

(declare-fun b!5177278 () Bool)

(declare-fun e!3225909 () Bool)

(declare-fun tp!1452257 () Bool)

(declare-fun tp!1452258 () Bool)

(assert (=> b!5177278 (= e!3225909 (and tp!1452257 tp!1452258))))

(assert (=> b!5176876 (= tp!1452219 e!3225909)))

(assert (= (and b!5176876 ((_ is Cons!60164) (t!373441 (exprs!4541 setElem!32333)))) b!5177278))

(declare-fun b!5177279 () Bool)

(declare-fun e!3225910 () Bool)

(declare-fun tp!1452259 () Bool)

(assert (=> b!5177279 (= e!3225910 (and tp_is_empty!38567 tp!1452259))))

(assert (=> b!5176874 (= tp!1452215 e!3225910)))

(assert (= (and b!5176874 ((_ is Cons!60163) (t!373440 (t!373440 input!5817)))) b!5177279))

(declare-fun condSetEmpty!32343 () Bool)

(assert (=> setNonEmpty!32337 (= condSetEmpty!32343 (= setRest!32337 ((as const (Array Context!8082 Bool)) false)))))

(declare-fun setRes!32343 () Bool)

(assert (=> setNonEmpty!32337 (= tp!1452210 setRes!32343)))

(declare-fun setIsEmpty!32343 () Bool)

(assert (=> setIsEmpty!32343 setRes!32343))

(declare-fun setElem!32343 () Context!8082)

(declare-fun e!3225911 () Bool)

(declare-fun tp!1452260 () Bool)

(declare-fun setNonEmpty!32343 () Bool)

(assert (=> setNonEmpty!32343 (= setRes!32343 (and tp!1452260 (inv!79889 setElem!32343) e!3225911))))

(declare-fun setRest!32343 () (InoxSet Context!8082))

(assert (=> setNonEmpty!32343 (= setRest!32337 ((_ map or) (store ((as const (Array Context!8082 Bool)) false) setElem!32343 true) setRest!32343))))

(declare-fun b!5177280 () Bool)

(declare-fun tp!1452261 () Bool)

(assert (=> b!5177280 (= e!3225911 tp!1452261)))

(assert (= (and setNonEmpty!32337 condSetEmpty!32343) setIsEmpty!32343))

(assert (= (and setNonEmpty!32337 (not condSetEmpty!32343)) setNonEmpty!32343))

(assert (= setNonEmpty!32343 b!5177280))

(declare-fun m!6233376 () Bool)

(assert (=> setNonEmpty!32343 m!6233376))

(declare-fun b!5177281 () Bool)

(declare-fun e!3225912 () Bool)

(declare-fun tp!1452262 () Bool)

(declare-fun tp!1452263 () Bool)

(assert (=> b!5177281 (= e!3225912 (and tp!1452262 tp!1452263))))

(assert (=> b!5176875 (= tp!1452217 e!3225912)))

(assert (= (and b!5176875 ((_ is Cons!60164) (exprs!4541 setElem!32338))) b!5177281))

(declare-fun condSetEmpty!32344 () Bool)

(assert (=> setNonEmpty!32338 (= condSetEmpty!32344 (= setRest!32338 ((as const (Array Context!8082 Bool)) false)))))

(declare-fun setRes!32344 () Bool)

(assert (=> setNonEmpty!32338 (= tp!1452216 setRes!32344)))

(declare-fun setIsEmpty!32344 () Bool)

(assert (=> setIsEmpty!32344 setRes!32344))

(declare-fun e!3225913 () Bool)

(declare-fun setElem!32344 () Context!8082)

(declare-fun tp!1452264 () Bool)

(declare-fun setNonEmpty!32344 () Bool)

(assert (=> setNonEmpty!32344 (= setRes!32344 (and tp!1452264 (inv!79889 setElem!32344) e!3225913))))

(declare-fun setRest!32344 () (InoxSet Context!8082))

(assert (=> setNonEmpty!32344 (= setRest!32338 ((_ map or) (store ((as const (Array Context!8082 Bool)) false) setElem!32344 true) setRest!32344))))

(declare-fun b!5177282 () Bool)

(declare-fun tp!1452265 () Bool)

(assert (=> b!5177282 (= e!3225913 tp!1452265)))

(assert (= (and setNonEmpty!32338 condSetEmpty!32344) setIsEmpty!32344))

(assert (= (and setNonEmpty!32338 (not condSetEmpty!32344)) setNonEmpty!32344))

(assert (= setNonEmpty!32344 b!5177282))

(declare-fun m!6233378 () Bool)

(assert (=> setNonEmpty!32344 m!6233378))

(declare-fun b!5177285 () Bool)

(declare-fun e!3225914 () Bool)

(declare-fun tp!1452268 () Bool)

(assert (=> b!5177285 (= e!3225914 tp!1452268)))

(declare-fun b!5177283 () Bool)

(assert (=> b!5177283 (= e!3225914 tp_is_empty!38567)))

(declare-fun b!5177284 () Bool)

(declare-fun tp!1452266 () Bool)

(declare-fun tp!1452269 () Bool)

(assert (=> b!5177284 (= e!3225914 (and tp!1452266 tp!1452269))))

(assert (=> b!5176863 (= tp!1452204 e!3225914)))

(declare-fun b!5177286 () Bool)

(declare-fun tp!1452270 () Bool)

(declare-fun tp!1452267 () Bool)

(assert (=> b!5177286 (= e!3225914 (and tp!1452270 tp!1452267))))

(assert (= (and b!5176863 ((_ is ElementMatch!14657) (h!66612 (exprs!4541 setElem!32334)))) b!5177283))

(assert (= (and b!5176863 ((_ is Concat!23502) (h!66612 (exprs!4541 setElem!32334)))) b!5177284))

(assert (= (and b!5176863 ((_ is Star!14657) (h!66612 (exprs!4541 setElem!32334)))) b!5177285))

(assert (= (and b!5176863 ((_ is Union!14657) (h!66612 (exprs!4541 setElem!32334)))) b!5177286))

(declare-fun b!5177287 () Bool)

(declare-fun e!3225915 () Bool)

(declare-fun tp!1452271 () Bool)

(declare-fun tp!1452272 () Bool)

(assert (=> b!5177287 (= e!3225915 (and tp!1452271 tp!1452272))))

(assert (=> b!5176863 (= tp!1452205 e!3225915)))

(assert (= (and b!5176863 ((_ is Cons!60164) (t!373441 (exprs!4541 setElem!32334)))) b!5177287))

(declare-fun b!5177288 () Bool)

(declare-fun e!3225916 () Bool)

(declare-fun tp!1452273 () Bool)

(assert (=> b!5177288 (= e!3225916 (and tp_is_empty!38567 tp!1452273))))

(assert (=> b!5176873 (= tp!1452214 e!3225916)))

(assert (= (and b!5176873 ((_ is Cons!60163) (t!373440 (t!373440 testedP!294)))) b!5177288))

(declare-fun b_lambda!200983 () Bool)

(assert (= b_lambda!200977 (or d!1671554 b_lambda!200983)))

(declare-fun bs!1204965 () Bool)

(declare-fun d!1671876 () Bool)

(assert (= bs!1204965 (and d!1671876 d!1671554)))

(declare-fun validRegex!6407 (Regex!14657) Bool)

(assert (=> bs!1204965 (= (dynLambda!23882 lambda!258593 (h!66612 (exprs!4541 setElem!32334))) (validRegex!6407 (h!66612 (exprs!4541 setElem!32334))))))

(declare-fun m!6233380 () Bool)

(assert (=> bs!1204965 m!6233380))

(assert (=> b!5177141 d!1671876))

(declare-fun b_lambda!200985 () Bool)

(assert (= b_lambda!200979 (or d!1671504 b_lambda!200985)))

(declare-fun bs!1204966 () Bool)

(declare-fun d!1671878 () Bool)

(assert (= bs!1204966 (and d!1671878 d!1671504)))

(assert (=> bs!1204966 (= (dynLambda!23882 lambda!258580 (h!66612 (exprs!4541 setElem!32333))) (validRegex!6407 (h!66612 (exprs!4541 setElem!32333))))))

(declare-fun m!6233382 () Bool)

(assert (=> bs!1204966 m!6233382))

(assert (=> b!5177173 d!1671878))

(check-sat (not b!5177005) (not bm!363764) (not b!5177122) (not b!5177284) (not b!5177234) (not b!5177044) (not b!5177126) (not b!5177239) (not b!5177242) (not b!5176960) (not b!5177254) (not b!5176981) (not bm!363727) (not b!5177089) (not d!1671636) (not b!5177068) (not d!1671850) (not b!5177197) (not d!1671612) (not d!1671708) (not d!1671746) (not bm!363744) (not d!1671594) (not b!5177026) (not b!5177219) (not b!5177017) (not b!5177202) (not b!5177118) (not b!5176999) (not bm!363769) (not b!5177148) (not b!5177116) (not b!5176967) (not bm!363724) (not d!1671682) (not b!5176985) (not bm!363746) (not b!5177021) (not b!5176964) (not d!1671804) (not b!5177288) (not b!5176969) (not b!5177119) (not b!5177282) (not d!1671790) (not d!1671870) (not b!5177211) (not b!5177260) (not b!5177203) (not b!5177009) (not d!1671836) (not b!5177218) (not b!5177171) (not b!5177053) (not bm!363766) (not b!5177056) (not bm!363772) (not d!1671798) (not d!1671860) (not b!5177070) (not b!5177097) (not d!1671866) (not bm!363725) (not b!5177092) (not d!1671718) (not d!1671770) (not b!5177177) (not b!5177170) (not d!1671684) (not b!5177276) (not d!1671710) (not d!1671614) (not b!5177100) (not b!5177227) (not b!5177238) (not d!1671622) (not bm!363728) (not bm!363773) (not setNonEmpty!32343) (not b!5177131) (not bm!363741) (not bm!363742) (not b!5177252) (not b!5177052) (not d!1671794) (not b!5177191) (not b!5177280) (not b!5177226) (not d!1671844) (not d!1671830) (not b!5177096) (not bm!363770) (not b!5177055) (not bm!363767) (not d!1671740) (not b_lambda!200985) (not b!5177090) (not b_lambda!200983) (not d!1671732) (not b!5177281) (not d!1671650) (not b!5176963) (not b!5176982) (not b!5177114) (not b!5176978) (not b!5177130) (not b!5177165) (not b!5176990) (not b!5177262) (not d!1671596) (not b!5177063) (not b!5177067) (not b!5177235) (not b!5177088) (not b!5177168) (not d!1671738) (not d!1671712) (not d!1671702) (not d!1671654) (not b!5176961) tp_is_empty!38567 (not bm!363763) (not bm!363726) (not b!5176997) (not b!5176989) (not bm!363729) (not b!5177251) (not bm!363768) (not d!1671602) (not b!5177241) (not d!1671736) (not b!5177071) (not bm!363736) (not b!5177062) (not b!5177263) (not bm!363776) (not d!1671692) (not bm!363737) (not b!5177146) (not b!5177142) (not d!1671610) (not d!1671714) (not b!5177176) (not b!5177150) (not b!5177019) (not b!5177287) (not bm!363778) (not d!1671630) (not b!5177034) (not b!5177275) (not b!5177182) (not d!1671742) (not bm!363774) (not b!5177025) (not d!1671782) (not d!1671700) (not b!5177174) (not bm!363739) (not b!5177279) (not bm!363743) (not bm!363771) (not d!1671722) (not d!1671786) (not d!1671788) (not b!5177101) (not b!5177007) (not b!5177278) (not d!1671606) (not d!1671814) (not bm!363765) (not b!5177257) (not b!5177253) (not b!5177066) (not d!1671832) (not d!1671600) (not b!5177107) (not bm!363775) (not b!5177200) (not d!1671592) (not b!5177149) (not b!5177023) (not b!5177220) (not bm!363740) (not b!5177000) (not bm!363777) (not b!5177127) (not d!1671690) (not b!5177115) (not bm!363730) (not d!1671846) (not d!1671730) (not d!1671768) (not d!1671858) (not b!5176986) (not b!5177183) (not b!5177002) (not bs!1204965) (not b!5177015) (not b!5176970) (not b!5177106) (not b!5176996) (not b!5176959) (not b!5177286) (not b!5177054) (not d!1671662) (not d!1671616) (not d!1671828) (not d!1671862) (not bs!1204966) (not d!1671672) (not d!1671608) (not b!5177123) (not bm!363723) (not b!5176987) (not b!5177255) (not b!5177180) (not bm!363735) (not b!5177285) (not b!5177277) (not d!1671824) (not setNonEmpty!32344) (not b!5177093) (not bm!363745) (not bm!363738))
(check-sat)
(get-model)

(declare-fun d!1672024 () Bool)

(declare-fun lt!2133609 () Bool)

(assert (=> d!1672024 (= lt!2133609 (exists!1941 (toList!8458 lt!2132878) lambda!258624))))

(assert (=> d!1672024 (= lt!2133609 (choose!38446 lt!2132878 lambda!258624))))

(assert (=> d!1672024 (= (exists!1939 lt!2132878 lambda!258624) lt!2133609)))

(declare-fun bs!1205054 () Bool)

(assert (= bs!1205054 d!1672024))

(assert (=> bs!1205054 m!6232664))

(assert (=> bs!1205054 m!6232664))

(declare-fun m!6233800 () Bool)

(assert (=> bs!1205054 m!6233800))

(declare-fun m!6233802 () Bool)

(assert (=> bs!1205054 m!6233802))

(assert (=> d!1671804 d!1672024))

(declare-fun d!1672026 () Bool)

(declare-fun lt!2133610 () Int)

(assert (=> d!1672026 (>= lt!2133610 0)))

(declare-fun e!3226015 () Int)

(assert (=> d!1672026 (= lt!2133610 e!3226015)))

(declare-fun c!891813 () Bool)

(assert (=> d!1672026 (= c!891813 ((_ is Nil!60163) (t!373440 (t!373440 lt!2132884))))))

(assert (=> d!1672026 (= (size!39693 (t!373440 (t!373440 lt!2132884))) lt!2133610)))

(declare-fun b!5177460 () Bool)

(assert (=> b!5177460 (= e!3226015 0)))

(declare-fun b!5177461 () Bool)

(assert (=> b!5177461 (= e!3226015 (+ 1 (size!39693 (t!373440 (t!373440 (t!373440 lt!2132884))))))))

(assert (= (and d!1672026 c!891813) b!5177460))

(assert (= (and d!1672026 (not c!891813)) b!5177461))

(declare-fun m!6233804 () Bool)

(assert (=> b!5177461 m!6233804))

(assert (=> b!5177168 d!1672026))

(assert (=> bm!363743 d!1671716))

(declare-fun bm!363803 () Bool)

(declare-fun call!363808 () Bool)

(assert (=> bm!363803 (= call!363808 (nullableZipper!1195 call!363783))))

(declare-fun bm!363804 () Bool)

(declare-fun call!363815 () (InoxSet Context!8082))

(declare-fun call!363811 () C!29584)

(assert (=> bm!363804 (= call!363815 (derivationStepZipper!1003 call!363783 call!363811))))

(declare-fun b!5177462 () Bool)

(declare-fun e!3226016 () Unit!151998)

(declare-fun Unit!152052 () Unit!151998)

(assert (=> b!5177462 (= e!3226016 Unit!152052)))

(declare-fun b!5177463 () Bool)

(declare-fun e!3226022 () tuple2!63864)

(declare-fun e!3226017 () tuple2!63864)

(assert (=> b!5177463 (= e!3226022 e!3226017)))

(declare-fun lt!2133634 () tuple2!63864)

(declare-fun call!363814 () tuple2!63864)

(assert (=> b!5177463 (= lt!2133634 call!363814)))

(declare-fun c!891818 () Bool)

(assert (=> b!5177463 (= c!891818 (isEmpty!32211 (_1!35235 lt!2133634)))))

(declare-fun bm!363805 () Bool)

(declare-fun call!363812 () Unit!151998)

(assert (=> bm!363805 (= call!363812 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2133460 input!5817))))

(declare-fun b!5177464 () Bool)

(declare-fun e!3226020 () tuple2!63864)

(assert (=> b!5177464 (= e!3226020 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun b!5177465 () Bool)

(declare-fun e!3226019 () Bool)

(declare-fun lt!2133632 () tuple2!63864)

(assert (=> b!5177465 (= e!3226019 (>= (size!39693 (_1!35235 lt!2133632)) (size!39693 lt!2133460)))))

(declare-fun b!5177466 () Bool)

(declare-fun c!891817 () Bool)

(assert (=> b!5177466 (= c!891817 call!363808)))

(declare-fun lt!2133624 () Unit!151998)

(declare-fun lt!2133614 () Unit!151998)

(assert (=> b!5177466 (= lt!2133624 lt!2133614)))

(declare-fun lt!2133625 () C!29584)

(declare-fun lt!2133628 () List!60287)

(assert (=> b!5177466 (= (++!13173 (++!13173 lt!2133460 (Cons!60163 lt!2133625 Nil!60163)) lt!2133628) input!5817)))

(assert (=> b!5177466 (= lt!2133614 (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2133460 lt!2133625 lt!2133628 input!5817))))

(assert (=> b!5177466 (= lt!2133628 (tail!10174 call!363777))))

(assert (=> b!5177466 (= lt!2133625 (head!11075 call!363777))))

(declare-fun lt!2133627 () Unit!151998)

(declare-fun lt!2133616 () Unit!151998)

(assert (=> b!5177466 (= lt!2133627 lt!2133616)))

(assert (=> b!5177466 (isPrefix!5790 (++!13173 lt!2133460 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133460)) Nil!60163)) input!5817)))

(assert (=> b!5177466 (= lt!2133616 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2133460 input!5817))))

(declare-fun lt!2133633 () List!60287)

(assert (=> b!5177466 (= lt!2133633 (++!13173 lt!2133460 (Cons!60163 (head!11075 call!363777) Nil!60163)))))

(declare-fun lt!2133631 () Unit!151998)

(assert (=> b!5177466 (= lt!2133631 e!3226016)))

(declare-fun c!891819 () Bool)

(assert (=> b!5177466 (= c!891819 (= (size!39693 lt!2133460) (size!39693 input!5817)))))

(declare-fun lt!2133626 () Unit!151998)

(declare-fun lt!2133617 () Unit!151998)

(assert (=> b!5177466 (= lt!2133626 lt!2133617)))

(assert (=> b!5177466 (<= (size!39693 lt!2133460) (size!39693 input!5817))))

(assert (=> b!5177466 (= lt!2133617 (lemmaIsPrefixThenSmallerEqSize!951 lt!2133460 input!5817))))

(declare-fun e!3226023 () tuple2!63864)

(assert (=> b!5177466 (= e!3226023 e!3226022)))

(declare-fun b!5177467 () Bool)

(assert (=> b!5177467 (= e!3226020 e!3226023)))

(declare-fun c!891814 () Bool)

(assert (=> b!5177467 (= c!891814 (= (+ 1 lt!2132889 1 1) lt!2132880))))

(declare-fun b!5177468 () Bool)

(assert (=> b!5177468 (= e!3226017 lt!2133634)))

(declare-fun b!5177469 () Bool)

(declare-fun e!3226021 () tuple2!63864)

(assert (=> b!5177469 (= e!3226021 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun bm!363807 () Bool)

(declare-fun call!363813 () Bool)

(assert (=> bm!363807 (= call!363813 (isPrefix!5790 input!5817 input!5817))))

(declare-fun b!5177470 () Bool)

(assert (=> b!5177470 (= e!3226017 (tuple2!63865 lt!2133460 call!363777))))

(declare-fun b!5177471 () Bool)

(declare-fun Unit!152053 () Unit!151998)

(assert (=> b!5177471 (= e!3226016 Unit!152053)))

(declare-fun lt!2133613 () Unit!151998)

(declare-fun call!363810 () Unit!151998)

(assert (=> b!5177471 (= lt!2133613 call!363810)))

(assert (=> b!5177471 call!363813))

(declare-fun lt!2133622 () Unit!151998)

(assert (=> b!5177471 (= lt!2133622 lt!2133613)))

(declare-fun lt!2133611 () Unit!151998)

(assert (=> b!5177471 (= lt!2133611 call!363812)))

(assert (=> b!5177471 (= input!5817 lt!2133460)))

(declare-fun lt!2133623 () Unit!151998)

(assert (=> b!5177471 (= lt!2133623 lt!2133611)))

(assert (=> b!5177471 false))

(declare-fun b!5177472 () Bool)

(declare-fun c!891816 () Bool)

(assert (=> b!5177472 (= c!891816 call!363808)))

(declare-fun lt!2133618 () Unit!151998)

(declare-fun lt!2133630 () Unit!151998)

(assert (=> b!5177472 (= lt!2133618 lt!2133630)))

(assert (=> b!5177472 (= input!5817 lt!2133460)))

(assert (=> b!5177472 (= lt!2133630 call!363812)))

(declare-fun lt!2133620 () Unit!151998)

(declare-fun lt!2133619 () Unit!151998)

(assert (=> b!5177472 (= lt!2133620 lt!2133619)))

(assert (=> b!5177472 call!363813))

(assert (=> b!5177472 (= lt!2133619 call!363810)))

(assert (=> b!5177472 (= e!3226023 e!3226021)))

(declare-fun b!5177473 () Bool)

(assert (=> b!5177473 (= e!3226022 call!363814)))

(declare-fun bm!363808 () Bool)

(declare-fun call!363809 () List!60287)

(assert (=> bm!363808 (= call!363814 (findLongestMatchInnerZipper!313 call!363815 lt!2133633 (+ 1 lt!2132889 1 1 1) call!363809 input!5817 lt!2132880))))

(declare-fun b!5177474 () Bool)

(declare-fun e!3226018 () Bool)

(assert (=> b!5177474 (= e!3226018 e!3226019)))

(declare-fun res!2200056 () Bool)

(assert (=> b!5177474 (=> res!2200056 e!3226019)))

(assert (=> b!5177474 (= res!2200056 (isEmpty!32211 (_1!35235 lt!2133632)))))

(declare-fun bm!363809 () Bool)

(assert (=> bm!363809 (= call!363811 (head!11075 call!363777))))

(declare-fun d!1672028 () Bool)

(assert (=> d!1672028 e!3226018))

(declare-fun res!2200055 () Bool)

(assert (=> d!1672028 (=> (not res!2200055) (not e!3226018))))

(assert (=> d!1672028 (= res!2200055 (= (++!13173 (_1!35235 lt!2133632) (_2!35235 lt!2133632)) input!5817))))

(assert (=> d!1672028 (= lt!2133632 e!3226020)))

(declare-fun c!891815 () Bool)

(assert (=> d!1672028 (= c!891815 (lostCauseZipper!1343 call!363783))))

(declare-fun lt!2133621 () Unit!151998)

(declare-fun Unit!152054 () Unit!151998)

(assert (=> d!1672028 (= lt!2133621 Unit!152054)))

(assert (=> d!1672028 (= (getSuffix!3438 input!5817 lt!2133460) call!363777)))

(declare-fun lt!2133629 () Unit!151998)

(declare-fun lt!2133635 () Unit!151998)

(assert (=> d!1672028 (= lt!2133629 lt!2133635)))

(declare-fun lt!2133636 () List!60287)

(assert (=> d!1672028 (= call!363777 lt!2133636)))

(assert (=> d!1672028 (= lt!2133635 (lemmaSamePrefixThenSameSuffix!2710 lt!2133460 call!363777 lt!2133460 lt!2133636 input!5817))))

(assert (=> d!1672028 (= lt!2133636 (getSuffix!3438 input!5817 lt!2133460))))

(declare-fun lt!2133615 () Unit!151998)

(declare-fun lt!2133612 () Unit!151998)

(assert (=> d!1672028 (= lt!2133615 lt!2133612)))

(assert (=> d!1672028 (isPrefix!5790 lt!2133460 (++!13173 lt!2133460 call!363777))))

(assert (=> d!1672028 (= lt!2133612 (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2133460 call!363777))))

(assert (=> d!1672028 (= (++!13173 lt!2133460 call!363777) input!5817)))

(assert (=> d!1672028 (= (findLongestMatchInnerZipper!313 call!363783 lt!2133460 (+ 1 lt!2132889 1 1) call!363777 input!5817 lt!2132880) lt!2133632)))

(declare-fun bm!363806 () Bool)

(assert (=> bm!363806 (= call!363809 (tail!10174 call!363777))))

(declare-fun b!5177475 () Bool)

(assert (=> b!5177475 (= e!3226021 (tuple2!63865 lt!2133460 Nil!60163))))

(declare-fun bm!363810 () Bool)

(assert (=> bm!363810 (= call!363810 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (= (and d!1672028 c!891815) b!5177464))

(assert (= (and d!1672028 (not c!891815)) b!5177467))

(assert (= (and b!5177467 c!891814) b!5177472))

(assert (= (and b!5177467 (not c!891814)) b!5177466))

(assert (= (and b!5177472 c!891816) b!5177475))

(assert (= (and b!5177472 (not c!891816)) b!5177469))

(assert (= (and b!5177466 c!891819) b!5177471))

(assert (= (and b!5177466 (not c!891819)) b!5177462))

(assert (= (and b!5177466 c!891817) b!5177463))

(assert (= (and b!5177466 (not c!891817)) b!5177473))

(assert (= (and b!5177463 c!891818) b!5177470))

(assert (= (and b!5177463 (not c!891818)) b!5177468))

(assert (= (or b!5177463 b!5177473) bm!363806))

(assert (= (or b!5177463 b!5177473) bm!363809))

(assert (= (or b!5177463 b!5177473) bm!363804))

(assert (= (or b!5177463 b!5177473) bm!363808))

(assert (= (or b!5177472 b!5177471) bm!363810))

(assert (= (or b!5177472 b!5177466) bm!363803))

(assert (= (or b!5177472 b!5177471) bm!363807))

(assert (= (or b!5177472 b!5177471) bm!363805))

(assert (= (and d!1672028 res!2200055) b!5177474))

(assert (= (and b!5177474 (not res!2200056)) b!5177465))

(declare-fun m!6233806 () Bool)

(assert (=> bm!363805 m!6233806))

(assert (=> bm!363810 m!6232108))

(declare-fun m!6233808 () Bool)

(assert (=> b!5177463 m!6233808))

(declare-fun m!6233810 () Bool)

(assert (=> b!5177465 m!6233810))

(declare-fun m!6233812 () Bool)

(assert (=> b!5177465 m!6233812))

(declare-fun m!6233814 () Bool)

(assert (=> bm!363803 m!6233814))

(declare-fun m!6233816 () Bool)

(assert (=> bm!363806 m!6233816))

(assert (=> bm!363807 m!6232110))

(declare-fun m!6233818 () Bool)

(assert (=> bm!363804 m!6233818))

(declare-fun m!6233820 () Bool)

(assert (=> b!5177474 m!6233820))

(declare-fun m!6233822 () Bool)

(assert (=> b!5177466 m!6233822))

(assert (=> b!5177466 m!6233816))

(assert (=> b!5177466 m!6232070))

(declare-fun m!6233824 () Bool)

(assert (=> b!5177466 m!6233824))

(declare-fun m!6233826 () Bool)

(assert (=> b!5177466 m!6233826))

(declare-fun m!6233828 () Bool)

(assert (=> b!5177466 m!6233828))

(declare-fun m!6233830 () Bool)

(assert (=> b!5177466 m!6233830))

(declare-fun m!6233832 () Bool)

(assert (=> b!5177466 m!6233832))

(declare-fun m!6233834 () Bool)

(assert (=> b!5177466 m!6233834))

(declare-fun m!6233836 () Bool)

(assert (=> b!5177466 m!6233836))

(assert (=> b!5177466 m!6233832))

(declare-fun m!6233838 () Bool)

(assert (=> b!5177466 m!6233838))

(declare-fun m!6233840 () Bool)

(assert (=> b!5177466 m!6233840))

(declare-fun m!6233842 () Bool)

(assert (=> b!5177466 m!6233842))

(assert (=> b!5177466 m!6233840))

(assert (=> b!5177466 m!6233826))

(assert (=> b!5177466 m!6233812))

(declare-fun m!6233844 () Bool)

(assert (=> bm!363808 m!6233844))

(declare-fun m!6233846 () Bool)

(assert (=> d!1672028 m!6233846))

(declare-fun m!6233848 () Bool)

(assert (=> d!1672028 m!6233848))

(declare-fun m!6233850 () Bool)

(assert (=> d!1672028 m!6233850))

(assert (=> d!1672028 m!6233832))

(declare-fun m!6233852 () Bool)

(assert (=> d!1672028 m!6233852))

(declare-fun m!6233854 () Bool)

(assert (=> d!1672028 m!6233854))

(assert (=> d!1672028 m!6233848))

(declare-fun m!6233856 () Bool)

(assert (=> d!1672028 m!6233856))

(assert (=> bm!363809 m!6233822))

(assert (=> bm!363776 d!1672028))

(declare-fun b!5177478 () Bool)

(declare-fun res!2200058 () Bool)

(declare-fun e!3226025 () Bool)

(assert (=> b!5177478 (=> (not res!2200058) (not e!3226025))))

(declare-fun lt!2133637 () List!60287)

(assert (=> b!5177478 (= res!2200058 (= (size!39693 lt!2133637) (+ (size!39693 (t!373440 testedP!294)) (size!39693 (Cons!60163 (head!11075 lt!2132885) Nil!60163)))))))

(declare-fun b!5177477 () Bool)

(declare-fun e!3226024 () List!60287)

(assert (=> b!5177477 (= e!3226024 (Cons!60163 (h!66611 (t!373440 testedP!294)) (++!13173 (t!373440 (t!373440 testedP!294)) (Cons!60163 (head!11075 lt!2132885) Nil!60163))))))

(declare-fun b!5177476 () Bool)

(assert (=> b!5177476 (= e!3226024 (Cons!60163 (head!11075 lt!2132885) Nil!60163))))

(declare-fun b!5177479 () Bool)

(assert (=> b!5177479 (= e!3226025 (or (not (= (Cons!60163 (head!11075 lt!2132885) Nil!60163) Nil!60163)) (= lt!2133637 (t!373440 testedP!294))))))

(declare-fun d!1672030 () Bool)

(assert (=> d!1672030 e!3226025))

(declare-fun res!2200057 () Bool)

(assert (=> d!1672030 (=> (not res!2200057) (not e!3226025))))

(assert (=> d!1672030 (= res!2200057 (= (content!10662 lt!2133637) ((_ map or) (content!10662 (t!373440 testedP!294)) (content!10662 (Cons!60163 (head!11075 lt!2132885) Nil!60163)))))))

(assert (=> d!1672030 (= lt!2133637 e!3226024)))

(declare-fun c!891820 () Bool)

(assert (=> d!1672030 (= c!891820 ((_ is Nil!60163) (t!373440 testedP!294)))))

(assert (=> d!1672030 (= (++!13173 (t!373440 testedP!294) (Cons!60163 (head!11075 lt!2132885) Nil!60163)) lt!2133637)))

(assert (= (and d!1672030 c!891820) b!5177476))

(assert (= (and d!1672030 (not c!891820)) b!5177477))

(assert (= (and d!1672030 res!2200057) b!5177478))

(assert (= (and b!5177478 res!2200058) b!5177479))

(declare-fun m!6233858 () Bool)

(assert (=> b!5177478 m!6233858))

(assert (=> b!5177478 m!6232254))

(assert (=> b!5177478 m!6233290))

(declare-fun m!6233860 () Bool)

(assert (=> b!5177477 m!6233860))

(declare-fun m!6233862 () Bool)

(assert (=> d!1672030 m!6233862))

(assert (=> d!1672030 m!6232704))

(assert (=> d!1672030 m!6233296))

(assert (=> b!5177238 d!1672030))

(declare-fun bs!1205055 () Bool)

(declare-fun d!1672032 () Bool)

(assert (= bs!1205055 (and d!1672032 b!5176997)))

(declare-fun lambda!258656 () Int)

(assert (=> bs!1205055 (not (= lambda!258656 lambda!258612))))

(declare-fun bs!1205056 () Bool)

(assert (= bs!1205056 (and d!1672032 d!1671804)))

(assert (=> bs!1205056 (= lambda!258656 lambda!258624)))

(declare-fun bs!1205057 () Bool)

(assert (= bs!1205057 (and d!1672032 d!1671612)))

(assert (=> bs!1205057 (not (= lambda!258656 lambda!258610))))

(declare-fun bs!1205058 () Bool)

(assert (= bs!1205058 (and d!1672032 b!5177056)))

(assert (=> bs!1205058 (not (= lambda!258656 lambda!258618))))

(declare-fun bs!1205059 () Bool)

(assert (= bs!1205059 (and d!1672032 d!1671636)))

(assert (=> bs!1205059 (= lambda!258656 lambda!258613)))

(declare-fun bs!1205060 () Bool)

(assert (= bs!1205060 (and d!1672032 d!1671546)))

(assert (=> bs!1205060 (= lambda!258656 lambda!258592)))

(declare-fun bs!1205061 () Bool)

(assert (= bs!1205061 (and d!1672032 b!5176996)))

(assert (=> bs!1205061 (not (= lambda!258656 lambda!258611))))

(declare-fun bs!1205062 () Bool)

(assert (= bs!1205062 (and d!1672032 b!5177055)))

(assert (=> bs!1205062 (not (= lambda!258656 lambda!258617))))

(declare-fun bs!1205063 () Bool)

(assert (= bs!1205063 (and d!1672032 d!1671684)))

(assert (=> bs!1205063 (not (= lambda!258656 lambda!258616))))

(assert (=> d!1672032 (= (nullableZipper!1195 call!363711) (exists!1939 call!363711 lambda!258656))))

(declare-fun bs!1205064 () Bool)

(assert (= bs!1205064 d!1672032))

(declare-fun m!6233864 () Bool)

(assert (=> bs!1205064 m!6233864))

(assert (=> bm!363771 d!1672032))

(declare-fun d!1672034 () Bool)

(assert (=> d!1672034 (= (head!11075 (tail!10174 lt!2132884)) (h!66611 (tail!10174 lt!2132884)))))

(assert (=> b!5177148 d!1672034))

(declare-fun d!1672036 () Bool)

(assert (=> d!1672036 (= (head!11075 (tail!10174 input!5817)) (h!66611 (tail!10174 input!5817)))))

(assert (=> b!5177148 d!1672036))

(declare-fun d!1672038 () Bool)

(assert (=> d!1672038 (= (isEmpty!32212 (getLanguageWitness!1016 z!4581)) (not ((_ is Some!14842) (getLanguageWitness!1016 z!4581))))))

(assert (=> d!1671684 d!1672038))

(declare-fun bs!1205065 () Bool)

(declare-fun d!1672040 () Bool)

(assert (= bs!1205065 (and d!1672040 b!5176997)))

(declare-fun lambda!258663 () Int)

(assert (=> bs!1205065 (= lambda!258663 lambda!258612)))

(declare-fun bs!1205066 () Bool)

(assert (= bs!1205066 (and d!1672040 d!1671804)))

(assert (=> bs!1205066 (not (= lambda!258663 lambda!258624))))

(declare-fun bs!1205067 () Bool)

(assert (= bs!1205067 (and d!1672040 d!1671612)))

(assert (=> bs!1205067 (not (= lambda!258663 lambda!258610))))

(declare-fun bs!1205068 () Bool)

(assert (= bs!1205068 (and d!1672040 b!5177056)))

(assert (=> bs!1205068 (= lambda!258663 lambda!258618)))

(declare-fun bs!1205069 () Bool)

(assert (= bs!1205069 (and d!1672040 d!1671636)))

(assert (=> bs!1205069 (not (= lambda!258663 lambda!258613))))

(declare-fun bs!1205070 () Bool)

(assert (= bs!1205070 (and d!1672040 d!1672032)))

(assert (=> bs!1205070 (not (= lambda!258663 lambda!258656))))

(declare-fun bs!1205071 () Bool)

(assert (= bs!1205071 (and d!1672040 d!1671546)))

(assert (=> bs!1205071 (not (= lambda!258663 lambda!258592))))

(declare-fun bs!1205072 () Bool)

(assert (= bs!1205072 (and d!1672040 b!5176996)))

(assert (=> bs!1205072 (= lambda!258663 lambda!258611)))

(declare-fun bs!1205073 () Bool)

(assert (= bs!1205073 (and d!1672040 b!5177055)))

(assert (=> bs!1205073 (= lambda!258663 lambda!258617)))

(declare-fun bs!1205074 () Bool)

(assert (= bs!1205074 (and d!1672040 d!1671684)))

(assert (=> bs!1205074 (not (= lambda!258663 lambda!258616))))

(declare-fun lt!2133640 () Option!14843)

(declare-fun isDefined!11547 (Option!14843) Bool)

(assert (=> d!1672040 (= (isDefined!11547 lt!2133640) (exists!1939 z!4581 lambda!258663))))

(declare-fun e!3226028 () Option!14843)

(assert (=> d!1672040 (= lt!2133640 e!3226028)))

(declare-fun c!891829 () Bool)

(assert (=> d!1672040 (= c!891829 (exists!1939 z!4581 lambda!258663))))

(assert (=> d!1672040 (= (getLanguageWitness!1016 z!4581) lt!2133640)))

(declare-fun b!5177484 () Bool)

(declare-fun getLanguageWitness!1018 (Context!8082) Option!14843)

(declare-fun getWitness!856 ((InoxSet Context!8082) Int) Context!8082)

(assert (=> b!5177484 (= e!3226028 (getLanguageWitness!1018 (getWitness!856 z!4581 lambda!258663)))))

(declare-fun b!5177485 () Bool)

(assert (=> b!5177485 (= e!3226028 None!14842)))

(assert (= (and d!1672040 c!891829) b!5177484))

(assert (= (and d!1672040 (not c!891829)) b!5177485))

(declare-fun m!6233866 () Bool)

(assert (=> d!1672040 m!6233866))

(declare-fun m!6233868 () Bool)

(assert (=> d!1672040 m!6233868))

(assert (=> d!1672040 m!6233868))

(declare-fun m!6233870 () Bool)

(assert (=> b!5177484 m!6233870))

(assert (=> b!5177484 m!6233870))

(declare-fun m!6233872 () Bool)

(assert (=> b!5177484 m!6233872))

(assert (=> d!1671684 d!1672040))

(declare-fun d!1672042 () Bool)

(declare-fun lt!2133643 () Bool)

(declare-fun forall!14164 (List!60289 Int) Bool)

(assert (=> d!1672042 (= lt!2133643 (forall!14164 (toList!8458 z!4581) lambda!258616))))

(declare-fun choose!38453 ((InoxSet Context!8082) Int) Bool)

(assert (=> d!1672042 (= lt!2133643 (choose!38453 z!4581 lambda!258616))))

(assert (=> d!1672042 (= (forall!14162 z!4581 lambda!258616) lt!2133643)))

(declare-fun bs!1205075 () Bool)

(assert (= bs!1205075 d!1672042))

(assert (=> bs!1205075 m!6232684))

(assert (=> bs!1205075 m!6232684))

(declare-fun m!6233874 () Bool)

(assert (=> bs!1205075 m!6233874))

(declare-fun m!6233876 () Bool)

(assert (=> bs!1205075 m!6233876))

(assert (=> d!1671684 d!1672042))

(assert (=> d!1671606 d!1671604))

(assert (=> d!1671606 d!1671610))

(declare-fun d!1672044 () Bool)

(assert (=> d!1672044 (isPrefix!5790 lt!2132884 (++!13173 lt!2132884 (tail!10174 lt!2132885)))))

(assert (=> d!1672044 true))

(declare-fun _$46!1994 () Unit!151998)

(assert (=> d!1672044 (= (choose!38444 lt!2132884 (tail!10174 lt!2132885)) _$46!1994)))

(declare-fun bs!1205076 () Bool)

(assert (= bs!1205076 d!1672044))

(assert (=> bs!1205076 m!6232054))

(assert (=> bs!1205076 m!6232356))

(assert (=> bs!1205076 m!6232356))

(assert (=> bs!1205076 m!6232358))

(assert (=> d!1671606 d!1672044))

(declare-fun d!1672046 () Bool)

(declare-fun lt!2133644 () Int)

(assert (=> d!1672046 (>= lt!2133644 0)))

(declare-fun e!3226029 () Int)

(assert (=> d!1672046 (= lt!2133644 e!3226029)))

(declare-fun c!891830 () Bool)

(assert (=> d!1672046 (= c!891830 ((_ is Nil!60163) (t!373440 (_1!35235 lt!2133054))))))

(assert (=> d!1672046 (= (size!39693 (t!373440 (_1!35235 lt!2133054))) lt!2133644)))

(declare-fun b!5177486 () Bool)

(assert (=> b!5177486 (= e!3226029 0)))

(declare-fun b!5177487 () Bool)

(assert (=> b!5177487 (= e!3226029 (+ 1 (size!39693 (t!373440 (t!373440 (_1!35235 lt!2133054))))))))

(assert (= (and d!1672046 c!891830) b!5177486))

(assert (= (and d!1672046 (not c!891830)) b!5177487))

(declare-fun m!6233878 () Bool)

(assert (=> b!5177487 m!6233878))

(assert (=> b!5177021 d!1672046))

(declare-fun d!1672048 () Bool)

(declare-fun e!3226030 () Bool)

(assert (=> d!1672048 e!3226030))

(declare-fun res!2200060 () Bool)

(assert (=> d!1672048 (=> res!2200060 e!3226030)))

(declare-fun lt!2133645 () Bool)

(assert (=> d!1672048 (= res!2200060 (not lt!2133645))))

(declare-fun e!3226031 () Bool)

(assert (=> d!1672048 (= lt!2133645 e!3226031)))

(declare-fun res!2200062 () Bool)

(assert (=> d!1672048 (=> res!2200062 e!3226031)))

(assert (=> d!1672048 (= res!2200062 ((_ is Nil!60163) (tail!10174 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))))

(assert (=> d!1672048 (= (isPrefix!5790 (tail!10174 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))) (tail!10174 input!5817)) lt!2133645)))

(declare-fun b!5177488 () Bool)

(declare-fun e!3226032 () Bool)

(assert (=> b!5177488 (= e!3226031 e!3226032)))

(declare-fun res!2200059 () Bool)

(assert (=> b!5177488 (=> (not res!2200059) (not e!3226032))))

(assert (=> b!5177488 (= res!2200059 (not ((_ is Nil!60163) (tail!10174 input!5817))))))

(declare-fun b!5177489 () Bool)

(declare-fun res!2200061 () Bool)

(assert (=> b!5177489 (=> (not res!2200061) (not e!3226032))))

(assert (=> b!5177489 (= res!2200061 (= (head!11075 (tail!10174 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))) (head!11075 (tail!10174 input!5817))))))

(declare-fun b!5177490 () Bool)

(assert (=> b!5177490 (= e!3226032 (isPrefix!5790 (tail!10174 (tail!10174 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))) (tail!10174 (tail!10174 input!5817))))))

(declare-fun b!5177491 () Bool)

(assert (=> b!5177491 (= e!3226030 (>= (size!39693 (tail!10174 input!5817)) (size!39693 (tail!10174 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))))))))

(assert (= (and d!1672048 (not res!2200062)) b!5177488))

(assert (= (and b!5177488 res!2200059) b!5177489))

(assert (= (and b!5177489 res!2200061) b!5177490))

(assert (= (and d!1672048 (not res!2200060)) b!5177491))

(assert (=> b!5177489 m!6232830))

(declare-fun m!6233880 () Bool)

(assert (=> b!5177489 m!6233880))

(assert (=> b!5177489 m!6232140))

(assert (=> b!5177489 m!6232748))

(assert (=> b!5177490 m!6232830))

(declare-fun m!6233882 () Bool)

(assert (=> b!5177490 m!6233882))

(assert (=> b!5177490 m!6232140))

(assert (=> b!5177490 m!6232680))

(assert (=> b!5177490 m!6233882))

(assert (=> b!5177490 m!6232680))

(declare-fun m!6233884 () Bool)

(assert (=> b!5177490 m!6233884))

(assert (=> b!5177491 m!6232140))

(assert (=> b!5177491 m!6232678))

(assert (=> b!5177491 m!6232830))

(declare-fun m!6233886 () Bool)

(assert (=> b!5177491 m!6233886))

(assert (=> b!5177089 d!1672048))

(declare-fun d!1672050 () Bool)

(assert (=> d!1672050 (= (tail!10174 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))) (t!373440 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))))))

(assert (=> b!5177089 d!1672050))

(assert (=> b!5177089 d!1671624))

(declare-fun bs!1205077 () Bool)

(declare-fun d!1672052 () Bool)

(assert (= bs!1205077 (and d!1672052 b!5176997)))

(declare-fun lambda!258666 () Int)

(assert (=> bs!1205077 (not (= lambda!258666 lambda!258612))))

(declare-fun bs!1205078 () Bool)

(assert (= bs!1205078 (and d!1672052 d!1671804)))

(assert (=> bs!1205078 (not (= lambda!258666 lambda!258624))))

(declare-fun bs!1205079 () Bool)

(assert (= bs!1205079 (and d!1672052 d!1671612)))

(assert (=> bs!1205079 (not (= lambda!258666 lambda!258610))))

(declare-fun bs!1205080 () Bool)

(assert (= bs!1205080 (and d!1672052 b!5177056)))

(assert (=> bs!1205080 (not (= lambda!258666 lambda!258618))))

(declare-fun bs!1205081 () Bool)

(assert (= bs!1205081 (and d!1672052 d!1672040)))

(assert (=> bs!1205081 (not (= lambda!258666 lambda!258663))))

(declare-fun bs!1205082 () Bool)

(assert (= bs!1205082 (and d!1672052 d!1671636)))

(assert (=> bs!1205082 (not (= lambda!258666 lambda!258613))))

(declare-fun bs!1205083 () Bool)

(assert (= bs!1205083 (and d!1672052 d!1672032)))

(assert (=> bs!1205083 (not (= lambda!258666 lambda!258656))))

(declare-fun bs!1205084 () Bool)

(assert (= bs!1205084 (and d!1672052 d!1671546)))

(assert (=> bs!1205084 (not (= lambda!258666 lambda!258592))))

(declare-fun bs!1205085 () Bool)

(assert (= bs!1205085 (and d!1672052 b!5176996)))

(assert (=> bs!1205085 (not (= lambda!258666 lambda!258611))))

(declare-fun bs!1205086 () Bool)

(assert (= bs!1205086 (and d!1672052 b!5177055)))

(assert (=> bs!1205086 (not (= lambda!258666 lambda!258617))))

(declare-fun bs!1205087 () Bool)

(assert (= bs!1205087 (and d!1672052 d!1671684)))

(assert (=> bs!1205087 (not (= lambda!258666 lambda!258616))))

(assert (=> d!1672052 true))

(declare-fun order!27039 () Int)

(declare-fun dynLambda!23883 (Int Int) Int)

(assert (=> d!1672052 (< (dynLambda!23883 order!27039 (ite c!891678 lambda!258611 lambda!258612)) (dynLambda!23883 order!27039 lambda!258666))))

(assert (=> d!1672052 (= (exists!1941 (ite c!891678 lt!2133281 lt!2133274) (ite c!891678 lambda!258611 lambda!258612)) (not (forall!14164 (ite c!891678 lt!2133281 lt!2133274) lambda!258666)))))

(declare-fun bs!1205088 () Bool)

(assert (= bs!1205088 d!1672052))

(declare-fun m!6233888 () Bool)

(assert (=> bs!1205088 m!6233888))

(assert (=> bm!363736 d!1672052))

(declare-fun d!1672054 () Bool)

(declare-fun lt!2133646 () Int)

(assert (=> d!1672054 (>= lt!2133646 0)))

(declare-fun e!3226033 () Int)

(assert (=> d!1672054 (= lt!2133646 e!3226033)))

(declare-fun c!891831 () Bool)

(assert (=> d!1672054 (= c!891831 ((_ is Nil!60163) lt!2133377))))

(assert (=> d!1672054 (= (size!39693 lt!2133377) lt!2133646)))

(declare-fun b!5177494 () Bool)

(assert (=> b!5177494 (= e!3226033 0)))

(declare-fun b!5177495 () Bool)

(assert (=> b!5177495 (= e!3226033 (+ 1 (size!39693 (t!373440 lt!2133377))))))

(assert (= (and d!1672054 c!891831) b!5177494))

(assert (= (and d!1672054 (not c!891831)) b!5177495))

(declare-fun m!6233890 () Bool)

(assert (=> b!5177495 m!6233890))

(assert (=> b!5177131 d!1672054))

(assert (=> b!5177131 d!1671466))

(declare-fun d!1672056 () Bool)

(declare-fun lt!2133647 () Int)

(assert (=> d!1672056 (>= lt!2133647 0)))

(declare-fun e!3226034 () Int)

(assert (=> d!1672056 (= lt!2133647 e!3226034)))

(declare-fun c!891832 () Bool)

(assert (=> d!1672056 (= c!891832 ((_ is Nil!60163) (Cons!60163 lt!2133128 Nil!60163)))))

(assert (=> d!1672056 (= (size!39693 (Cons!60163 lt!2133128 Nil!60163)) lt!2133647)))

(declare-fun b!5177496 () Bool)

(assert (=> b!5177496 (= e!3226034 0)))

(declare-fun b!5177497 () Bool)

(assert (=> b!5177497 (= e!3226034 (+ 1 (size!39693 (t!373440 (Cons!60163 lt!2133128 Nil!60163)))))))

(assert (= (and d!1672056 c!891832) b!5177496))

(assert (= (and d!1672056 (not c!891832)) b!5177497))

(declare-fun m!6233892 () Bool)

(assert (=> b!5177497 m!6233892))

(assert (=> b!5177131 d!1672056))

(declare-fun d!1672058 () Bool)

(declare-fun lt!2133648 () Int)

(assert (=> d!1672058 (>= lt!2133648 0)))

(declare-fun e!3226035 () Int)

(assert (=> d!1672058 (= lt!2133648 e!3226035)))

(declare-fun c!891833 () Bool)

(assert (=> d!1672058 (= c!891833 ((_ is Nil!60163) (_1!35235 lt!2133244)))))

(assert (=> d!1672058 (= (size!39693 (_1!35235 lt!2133244)) lt!2133648)))

(declare-fun b!5177498 () Bool)

(assert (=> b!5177498 (= e!3226035 0)))

(declare-fun b!5177499 () Bool)

(assert (=> b!5177499 (= e!3226035 (+ 1 (size!39693 (t!373440 (_1!35235 lt!2133244)))))))

(assert (= (and d!1672058 c!891833) b!5177498))

(assert (= (and d!1672058 (not c!891833)) b!5177499))

(declare-fun m!6233894 () Bool)

(assert (=> b!5177499 m!6233894))

(assert (=> b!5176969 d!1672058))

(declare-fun d!1672060 () Bool)

(declare-fun lt!2133649 () Int)

(assert (=> d!1672060 (>= lt!2133649 0)))

(declare-fun e!3226036 () Int)

(assert (=> d!1672060 (= lt!2133649 e!3226036)))

(declare-fun c!891834 () Bool)

(assert (=> d!1672060 (= c!891834 ((_ is Nil!60163) lt!2133055))))

(assert (=> d!1672060 (= (size!39693 lt!2133055) lt!2133649)))

(declare-fun b!5177500 () Bool)

(assert (=> b!5177500 (= e!3226036 0)))

(declare-fun b!5177501 () Bool)

(assert (=> b!5177501 (= e!3226036 (+ 1 (size!39693 (t!373440 lt!2133055))))))

(assert (= (and d!1672060 c!891834) b!5177500))

(assert (= (and d!1672060 (not c!891834)) b!5177501))

(declare-fun m!6233896 () Bool)

(assert (=> b!5177501 m!6233896))

(assert (=> b!5176969 d!1672060))

(declare-fun d!1672062 () Bool)

(declare-fun c!891835 () Bool)

(assert (=> d!1672062 (= c!891835 ((_ is Nil!60163) lt!2133366))))

(declare-fun e!3226037 () (InoxSet C!29584))

(assert (=> d!1672062 (= (content!10662 lt!2133366) e!3226037)))

(declare-fun b!5177502 () Bool)

(assert (=> b!5177502 (= e!3226037 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177503 () Bool)

(assert (=> b!5177503 (= e!3226037 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133366) true) (content!10662 (t!373440 lt!2133366))))))

(assert (= (and d!1672062 c!891835) b!5177502))

(assert (= (and d!1672062 (not c!891835)) b!5177503))

(declare-fun m!6233898 () Bool)

(assert (=> b!5177503 m!6233898))

(declare-fun m!6233900 () Bool)

(assert (=> b!5177503 m!6233900))

(assert (=> d!1671714 d!1672062))

(declare-fun d!1672064 () Bool)

(declare-fun c!891836 () Bool)

(assert (=> d!1672064 (= c!891836 ((_ is Nil!60163) lt!2132884))))

(declare-fun e!3226038 () (InoxSet C!29584))

(assert (=> d!1672064 (= (content!10662 lt!2132884) e!3226038)))

(declare-fun b!5177504 () Bool)

(assert (=> b!5177504 (= e!3226038 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177505 () Bool)

(assert (=> b!5177505 (= e!3226038 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2132884) true) (content!10662 (t!373440 lt!2132884))))))

(assert (= (and d!1672064 c!891836) b!5177504))

(assert (= (and d!1672064 (not c!891836)) b!5177505))

(declare-fun m!6233902 () Bool)

(assert (=> b!5177505 m!6233902))

(declare-fun m!6233904 () Bool)

(assert (=> b!5177505 m!6233904))

(assert (=> d!1671714 d!1672064))

(declare-fun d!1672066 () Bool)

(declare-fun c!891837 () Bool)

(assert (=> d!1672066 (= c!891837 ((_ is Nil!60163) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))

(declare-fun e!3226039 () (InoxSet C!29584))

(assert (=> d!1672066 (= (content!10662 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)) e!3226039)))

(declare-fun b!5177506 () Bool)

(assert (=> b!5177506 (= e!3226039 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177507 () Bool)

(assert (=> b!5177507 (= e!3226039 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)) true) (content!10662 (t!373440 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))))

(assert (= (and d!1672066 c!891837) b!5177506))

(assert (= (and d!1672066 (not c!891837)) b!5177507))

(declare-fun m!6233906 () Bool)

(assert (=> b!5177507 m!6233906))

(declare-fun m!6233908 () Bool)

(assert (=> b!5177507 m!6233908))

(assert (=> d!1671714 d!1672066))

(declare-fun d!1672068 () Bool)

(declare-fun c!891838 () Bool)

(assert (=> d!1672068 (= c!891838 ((_ is Nil!60163) lt!2133472))))

(declare-fun e!3226040 () (InoxSet C!29584))

(assert (=> d!1672068 (= (content!10662 lt!2133472) e!3226040)))

(declare-fun b!5177508 () Bool)

(assert (=> b!5177508 (= e!3226040 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177509 () Bool)

(assert (=> b!5177509 (= e!3226040 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133472) true) (content!10662 (t!373440 lt!2133472))))))

(assert (= (and d!1672068 c!891838) b!5177508))

(assert (= (and d!1672068 (not c!891838)) b!5177509))

(declare-fun m!6233910 () Bool)

(assert (=> b!5177509 m!6233910))

(declare-fun m!6233912 () Bool)

(assert (=> b!5177509 m!6233912))

(assert (=> d!1671828 d!1672068))

(assert (=> d!1671828 d!1671642))

(declare-fun d!1672070 () Bool)

(declare-fun c!891839 () Bool)

(assert (=> d!1672070 (= c!891839 ((_ is Nil!60163) (Cons!60163 lt!2133047 Nil!60163)))))

(declare-fun e!3226041 () (InoxSet C!29584))

(assert (=> d!1672070 (= (content!10662 (Cons!60163 lt!2133047 Nil!60163)) e!3226041)))

(declare-fun b!5177510 () Bool)

(assert (=> b!5177510 (= e!3226041 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177511 () Bool)

(assert (=> b!5177511 (= e!3226041 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (Cons!60163 lt!2133047 Nil!60163)) true) (content!10662 (t!373440 (Cons!60163 lt!2133047 Nil!60163)))))))

(assert (= (and d!1672070 c!891839) b!5177510))

(assert (= (and d!1672070 (not c!891839)) b!5177511))

(declare-fun m!6233914 () Bool)

(assert (=> b!5177511 m!6233914))

(declare-fun m!6233916 () Bool)

(assert (=> b!5177511 m!6233916))

(assert (=> d!1671828 d!1672070))

(declare-fun d!1672072 () Bool)

(assert (=> d!1672072 (= (tail!10174 call!363705) (t!373440 call!363705))))

(assert (=> bm!363774 d!1672072))

(declare-fun d!1672074 () Bool)

(assert (=> d!1672074 (= (isEmpty!32211 (_1!35235 lt!2133432)) ((_ is Nil!60163) (_1!35235 lt!2133432)))))

(assert (=> b!5177191 d!1672074))

(declare-fun d!1672076 () Bool)

(assert (=> d!1672076 (= (getSuffix!3438 input!5817 lt!2132884) lt!2132993)))

(assert (=> d!1672076 true))

(declare-fun _$63!1298 () Unit!151998)

(assert (=> d!1672076 (= (choose!38445 lt!2132884 (getSuffix!3438 input!5817 lt!2132884) lt!2132884 lt!2132993 input!5817) _$63!1298)))

(assert (=> d!1671730 d!1672076))

(assert (=> d!1671730 d!1671550))

(declare-fun d!1672078 () Bool)

(assert (=> d!1672078 (= (head!11075 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))) (h!66611 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))))))

(assert (=> b!5176959 d!1672078))

(assert (=> b!5176959 d!1671620))

(declare-fun bs!1205089 () Bool)

(declare-fun d!1672080 () Bool)

(assert (= bs!1205089 (and d!1672080 d!1671532)))

(declare-fun lambda!258667 () Int)

(assert (=> bs!1205089 (= (= call!363771 lt!2132879) (= lambda!258667 lambda!258589))))

(declare-fun bs!1205090 () Bool)

(assert (= bs!1205090 (and d!1672080 d!1671870)))

(assert (=> bs!1205090 (= (= call!363771 (h!66611 lt!2132884)) (= lambda!258667 lambda!258629))))

(declare-fun bs!1205091 () Bool)

(assert (= bs!1205091 (and d!1672080 d!1671662)))

(assert (=> bs!1205091 (= (= call!363771 call!363667) (= lambda!258667 lambda!258614))))

(declare-fun bs!1205092 () Bool)

(assert (= bs!1205092 (and d!1672080 d!1671786)))

(assert (=> bs!1205092 (= (= call!363771 call!363675) (= lambda!258667 lambda!258622))))

(declare-fun bs!1205093 () Bool)

(assert (= bs!1205093 (and d!1672080 d!1671836)))

(assert (=> bs!1205093 (= (= call!363771 (head!11075 (_1!35235 lt!2132881))) (= lambda!258667 lambda!258625))))

(declare-fun bs!1205094 () Bool)

(assert (= bs!1205094 (and d!1672080 d!1671850)))

(assert (=> bs!1205094 (= (= call!363771 (head!11075 (_1!35235 lt!2132877))) (= lambda!258667 lambda!258626))))

(declare-fun bs!1205095 () Bool)

(assert (= bs!1205095 (and d!1672080 d!1671672)))

(assert (=> bs!1205095 (= (= call!363771 call!363707) (= lambda!258667 lambda!258615))))

(declare-fun bs!1205096 () Bool)

(assert (= bs!1205096 (and d!1672080 d!1671866)))

(assert (=> bs!1205096 (= (= call!363771 (h!66611 testedP!294)) (= lambda!258667 lambda!258628))))

(assert (=> d!1672080 true))

(assert (=> d!1672080 (= (derivationStepZipper!1003 call!363671 call!363771) (flatMap!460 call!363671 lambda!258667))))

(declare-fun bs!1205097 () Bool)

(assert (= bs!1205097 d!1672080))

(declare-fun m!6233918 () Bool)

(assert (=> bs!1205097 m!6233918))

(assert (=> bm!363764 d!1672080))

(declare-fun d!1672082 () Bool)

(declare-fun lt!2133650 () Int)

(assert (=> d!1672082 (>= lt!2133650 0)))

(declare-fun e!3226042 () Int)

(assert (=> d!1672082 (= lt!2133650 e!3226042)))

(declare-fun c!891840 () Bool)

(assert (=> d!1672082 (= c!891840 ((_ is Nil!60163) lt!2133329))))

(assert (=> d!1672082 (= (size!39693 lt!2133329) lt!2133650)))

(declare-fun b!5177512 () Bool)

(assert (=> b!5177512 (= e!3226042 0)))

(declare-fun b!5177513 () Bool)

(assert (=> b!5177513 (= e!3226042 (+ 1 (size!39693 (t!373440 lt!2133329))))))

(assert (= (and d!1672082 c!891840) b!5177512))

(assert (= (and d!1672082 (not c!891840)) b!5177513))

(declare-fun m!6233920 () Bool)

(assert (=> b!5177513 m!6233920))

(assert (=> b!5177063 d!1672082))

(assert (=> b!5177063 d!1671646))

(declare-fun d!1672084 () Bool)

(declare-fun lt!2133651 () Int)

(assert (=> d!1672084 (>= lt!2133651 0)))

(declare-fun e!3226043 () Int)

(assert (=> d!1672084 (= lt!2133651 e!3226043)))

(declare-fun c!891841 () Bool)

(assert (=> d!1672084 (= c!891841 ((_ is Nil!60163) (_2!35235 lt!2133054)))))

(assert (=> d!1672084 (= (size!39693 (_2!35235 lt!2133054)) lt!2133651)))

(declare-fun b!5177514 () Bool)

(assert (=> b!5177514 (= e!3226043 0)))

(declare-fun b!5177515 () Bool)

(assert (=> b!5177515 (= e!3226043 (+ 1 (size!39693 (t!373440 (_2!35235 lt!2133054)))))))

(assert (= (and d!1672084 c!891841) b!5177514))

(assert (= (and d!1672084 (not c!891841)) b!5177515))

(declare-fun m!6233922 () Bool)

(assert (=> b!5177515 m!6233922))

(assert (=> b!5177063 d!1672084))

(assert (=> d!1671824 d!1671814))

(assert (=> d!1671824 d!1671828))

(declare-fun d!1672086 () Bool)

(assert (=> d!1672086 (= (++!13173 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163)) lt!2133050) input!5817)))

(assert (=> d!1672086 true))

(declare-fun _$68!872 () Unit!151998)

(assert (=> d!1672086 (= (choose!38447 testedP!294 lt!2133047 lt!2133050 input!5817) _$68!872)))

(declare-fun bs!1205098 () Bool)

(assert (= bs!1205098 d!1672086))

(assert (=> bs!1205098 m!6232224))

(assert (=> bs!1205098 m!6232224))

(assert (=> bs!1205098 m!6232226))

(assert (=> d!1671824 d!1672086))

(declare-fun b!5177518 () Bool)

(declare-fun res!2200064 () Bool)

(declare-fun e!3226045 () Bool)

(assert (=> b!5177518 (=> (not res!2200064) (not e!3226045))))

(declare-fun lt!2133652 () List!60287)

(assert (=> b!5177518 (= res!2200064 (= (size!39693 lt!2133652) (+ (size!39693 testedP!294) (size!39693 (Cons!60163 lt!2133047 lt!2133050)))))))

(declare-fun b!5177517 () Bool)

(declare-fun e!3226044 () List!60287)

(assert (=> b!5177517 (= e!3226044 (Cons!60163 (h!66611 testedP!294) (++!13173 (t!373440 testedP!294) (Cons!60163 lt!2133047 lt!2133050))))))

(declare-fun b!5177516 () Bool)

(assert (=> b!5177516 (= e!3226044 (Cons!60163 lt!2133047 lt!2133050))))

(declare-fun b!5177519 () Bool)

(assert (=> b!5177519 (= e!3226045 (or (not (= (Cons!60163 lt!2133047 lt!2133050) Nil!60163)) (= lt!2133652 testedP!294)))))

(declare-fun d!1672088 () Bool)

(assert (=> d!1672088 e!3226045))

(declare-fun res!2200063 () Bool)

(assert (=> d!1672088 (=> (not res!2200063) (not e!3226045))))

(assert (=> d!1672088 (= res!2200063 (= (content!10662 lt!2133652) ((_ map or) (content!10662 testedP!294) (content!10662 (Cons!60163 lt!2133047 lt!2133050)))))))

(assert (=> d!1672088 (= lt!2133652 e!3226044)))

(declare-fun c!891842 () Bool)

(assert (=> d!1672088 (= c!891842 ((_ is Nil!60163) testedP!294))))

(assert (=> d!1672088 (= (++!13173 testedP!294 (Cons!60163 lt!2133047 lt!2133050)) lt!2133652)))

(assert (= (and d!1672088 c!891842) b!5177516))

(assert (= (and d!1672088 (not c!891842)) b!5177517))

(assert (= (and d!1672088 res!2200063) b!5177518))

(assert (= (and b!5177518 res!2200064) b!5177519))

(declare-fun m!6233924 () Bool)

(assert (=> b!5177518 m!6233924))

(assert (=> b!5177518 m!6232066))

(declare-fun m!6233926 () Bool)

(assert (=> b!5177518 m!6233926))

(declare-fun m!6233928 () Bool)

(assert (=> b!5177517 m!6233928))

(declare-fun m!6233930 () Bool)

(assert (=> d!1672088 m!6233930))

(assert (=> d!1672088 m!6232390))

(declare-fun m!6233932 () Bool)

(assert (=> d!1672088 m!6233932))

(assert (=> d!1671824 d!1672088))

(declare-fun d!1672090 () Bool)

(assert (=> d!1672090 (= (isEmpty!32211 (_1!35235 lt!2133312)) ((_ is Nil!60163) (_1!35235 lt!2133312)))))

(assert (=> b!5177034 d!1672090))

(declare-fun d!1672092 () Bool)

(assert (=> d!1672092 (isPrefix!5790 lt!2133136 (++!13173 lt!2133136 call!363705))))

(declare-fun lt!2133653 () Unit!151998)

(assert (=> d!1672092 (= lt!2133653 (choose!38444 lt!2133136 call!363705))))

(assert (=> d!1672092 (= (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2133136 call!363705) lt!2133653)))

(declare-fun bs!1205099 () Bool)

(assert (= bs!1205099 d!1672092))

(assert (=> bs!1205099 m!6233234))

(assert (=> bs!1205099 m!6233234))

(assert (=> bs!1205099 m!6233236))

(declare-fun m!6233934 () Bool)

(assert (=> bs!1205099 m!6233934))

(assert (=> d!1671798 d!1672092))

(declare-fun b!5177522 () Bool)

(declare-fun res!2200066 () Bool)

(declare-fun e!3226047 () Bool)

(assert (=> b!5177522 (=> (not res!2200066) (not e!3226047))))

(declare-fun lt!2133654 () List!60287)

(assert (=> b!5177522 (= res!2200066 (= (size!39693 lt!2133654) (+ (size!39693 lt!2133136) (size!39693 call!363705))))))

(declare-fun b!5177521 () Bool)

(declare-fun e!3226046 () List!60287)

(assert (=> b!5177521 (= e!3226046 (Cons!60163 (h!66611 lt!2133136) (++!13173 (t!373440 lt!2133136) call!363705)))))

(declare-fun b!5177520 () Bool)

(assert (=> b!5177520 (= e!3226046 call!363705)))

(declare-fun b!5177523 () Bool)

(assert (=> b!5177523 (= e!3226047 (or (not (= call!363705 Nil!60163)) (= lt!2133654 lt!2133136)))))

(declare-fun d!1672094 () Bool)

(assert (=> d!1672094 e!3226047))

(declare-fun res!2200065 () Bool)

(assert (=> d!1672094 (=> (not res!2200065) (not e!3226047))))

(assert (=> d!1672094 (= res!2200065 (= (content!10662 lt!2133654) ((_ map or) (content!10662 lt!2133136) (content!10662 call!363705))))))

(assert (=> d!1672094 (= lt!2133654 e!3226046)))

(declare-fun c!891843 () Bool)

(assert (=> d!1672094 (= c!891843 ((_ is Nil!60163) lt!2133136))))

(assert (=> d!1672094 (= (++!13173 lt!2133136 call!363705) lt!2133654)))

(assert (= (and d!1672094 c!891843) b!5177520))

(assert (= (and d!1672094 (not c!891843)) b!5177521))

(assert (= (and d!1672094 res!2200065) b!5177522))

(assert (= (and b!5177522 res!2200066) b!5177523))

(declare-fun m!6233936 () Bool)

(assert (=> b!5177522 m!6233936))

(assert (=> b!5177522 m!6233194))

(declare-fun m!6233938 () Bool)

(assert (=> b!5177522 m!6233938))

(declare-fun m!6233940 () Bool)

(assert (=> b!5177521 m!6233940))

(declare-fun m!6233942 () Bool)

(assert (=> d!1672094 m!6233942))

(declare-fun m!6233944 () Bool)

(assert (=> d!1672094 m!6233944))

(declare-fun m!6233946 () Bool)

(assert (=> d!1672094 m!6233946))

(assert (=> d!1671798 d!1672094))

(declare-fun d!1672096 () Bool)

(declare-fun lt!2133655 () List!60287)

(assert (=> d!1672096 (= (++!13173 lt!2133136 lt!2133655) input!5817)))

(declare-fun e!3226048 () List!60287)

(assert (=> d!1672096 (= lt!2133655 e!3226048)))

(declare-fun c!891844 () Bool)

(assert (=> d!1672096 (= c!891844 ((_ is Cons!60163) lt!2133136))))

(assert (=> d!1672096 (>= (size!39693 input!5817) (size!39693 lt!2133136))))

(assert (=> d!1672096 (= (getSuffix!3438 input!5817 lt!2133136) lt!2133655)))

(declare-fun b!5177524 () Bool)

(assert (=> b!5177524 (= e!3226048 (getSuffix!3438 (tail!10174 input!5817) (t!373440 lt!2133136)))))

(declare-fun b!5177525 () Bool)

(assert (=> b!5177525 (= e!3226048 input!5817)))

(assert (= (and d!1672096 c!891844) b!5177524))

(assert (= (and d!1672096 (not c!891844)) b!5177525))

(declare-fun m!6233948 () Bool)

(assert (=> d!1672096 m!6233948))

(assert (=> d!1672096 m!6232070))

(assert (=> d!1672096 m!6233194))

(assert (=> b!5177524 m!6232140))

(assert (=> b!5177524 m!6232140))

(declare-fun m!6233950 () Bool)

(assert (=> b!5177524 m!6233950))

(assert (=> d!1671798 d!1672096))

(declare-fun d!1672098 () Bool)

(assert (=> d!1672098 (= call!363705 lt!2133463)))

(declare-fun lt!2133656 () Unit!151998)

(assert (=> d!1672098 (= lt!2133656 (choose!38445 lt!2133136 call!363705 lt!2133136 lt!2133463 input!5817))))

(assert (=> d!1672098 (isPrefix!5790 lt!2133136 input!5817)))

(assert (=> d!1672098 (= (lemmaSamePrefixThenSameSuffix!2710 lt!2133136 call!363705 lt!2133136 lt!2133463 input!5817) lt!2133656)))

(declare-fun bs!1205100 () Bool)

(assert (= bs!1205100 d!1672098))

(declare-fun m!6233952 () Bool)

(assert (=> bs!1205100 m!6233952))

(declare-fun m!6233954 () Bool)

(assert (=> bs!1205100 m!6233954))

(assert (=> d!1671798 d!1672098))

(declare-fun b!5177528 () Bool)

(declare-fun res!2200068 () Bool)

(declare-fun e!3226050 () Bool)

(assert (=> b!5177528 (=> (not res!2200068) (not e!3226050))))

(declare-fun lt!2133657 () List!60287)

(assert (=> b!5177528 (= res!2200068 (= (size!39693 lt!2133657) (+ (size!39693 (_1!35235 lt!2133459)) (size!39693 (_2!35235 lt!2133459)))))))

(declare-fun b!5177527 () Bool)

(declare-fun e!3226049 () List!60287)

(assert (=> b!5177527 (= e!3226049 (Cons!60163 (h!66611 (_1!35235 lt!2133459)) (++!13173 (t!373440 (_1!35235 lt!2133459)) (_2!35235 lt!2133459))))))

(declare-fun b!5177526 () Bool)

(assert (=> b!5177526 (= e!3226049 (_2!35235 lt!2133459))))

(declare-fun b!5177529 () Bool)

(assert (=> b!5177529 (= e!3226050 (or (not (= (_2!35235 lt!2133459) Nil!60163)) (= lt!2133657 (_1!35235 lt!2133459))))))

(declare-fun d!1672100 () Bool)

(assert (=> d!1672100 e!3226050))

(declare-fun res!2200067 () Bool)

(assert (=> d!1672100 (=> (not res!2200067) (not e!3226050))))

(assert (=> d!1672100 (= res!2200067 (= (content!10662 lt!2133657) ((_ map or) (content!10662 (_1!35235 lt!2133459)) (content!10662 (_2!35235 lt!2133459)))))))

(assert (=> d!1672100 (= lt!2133657 e!3226049)))

(declare-fun c!891845 () Bool)

(assert (=> d!1672100 (= c!891845 ((_ is Nil!60163) (_1!35235 lt!2133459)))))

(assert (=> d!1672100 (= (++!13173 (_1!35235 lt!2133459) (_2!35235 lt!2133459)) lt!2133657)))

(assert (= (and d!1672100 c!891845) b!5177526))

(assert (= (and d!1672100 (not c!891845)) b!5177527))

(assert (= (and d!1672100 res!2200067) b!5177528))

(assert (= (and b!5177528 res!2200068) b!5177529))

(declare-fun m!6233956 () Bool)

(assert (=> b!5177528 m!6233956))

(assert (=> b!5177528 m!6233192))

(declare-fun m!6233958 () Bool)

(assert (=> b!5177528 m!6233958))

(declare-fun m!6233960 () Bool)

(assert (=> b!5177527 m!6233960))

(declare-fun m!6233962 () Bool)

(assert (=> d!1672100 m!6233962))

(declare-fun m!6233964 () Bool)

(assert (=> d!1672100 m!6233964))

(declare-fun m!6233966 () Bool)

(assert (=> d!1672100 m!6233966))

(assert (=> d!1671798 d!1672100))

(declare-fun d!1672102 () Bool)

(declare-fun e!3226051 () Bool)

(assert (=> d!1672102 e!3226051))

(declare-fun res!2200070 () Bool)

(assert (=> d!1672102 (=> res!2200070 e!3226051)))

(declare-fun lt!2133658 () Bool)

(assert (=> d!1672102 (= res!2200070 (not lt!2133658))))

(declare-fun e!3226052 () Bool)

(assert (=> d!1672102 (= lt!2133658 e!3226052)))

(declare-fun res!2200072 () Bool)

(assert (=> d!1672102 (=> res!2200072 e!3226052)))

(assert (=> d!1672102 (= res!2200072 ((_ is Nil!60163) lt!2133136))))

(assert (=> d!1672102 (= (isPrefix!5790 lt!2133136 (++!13173 lt!2133136 call!363705)) lt!2133658)))

(declare-fun b!5177530 () Bool)

(declare-fun e!3226053 () Bool)

(assert (=> b!5177530 (= e!3226052 e!3226053)))

(declare-fun res!2200069 () Bool)

(assert (=> b!5177530 (=> (not res!2200069) (not e!3226053))))

(assert (=> b!5177530 (= res!2200069 (not ((_ is Nil!60163) (++!13173 lt!2133136 call!363705))))))

(declare-fun b!5177531 () Bool)

(declare-fun res!2200071 () Bool)

(assert (=> b!5177531 (=> (not res!2200071) (not e!3226053))))

(assert (=> b!5177531 (= res!2200071 (= (head!11075 lt!2133136) (head!11075 (++!13173 lt!2133136 call!363705))))))

(declare-fun b!5177532 () Bool)

(assert (=> b!5177532 (= e!3226053 (isPrefix!5790 (tail!10174 lt!2133136) (tail!10174 (++!13173 lt!2133136 call!363705))))))

(declare-fun b!5177533 () Bool)

(assert (=> b!5177533 (= e!3226051 (>= (size!39693 (++!13173 lt!2133136 call!363705)) (size!39693 lt!2133136)))))

(assert (= (and d!1672102 (not res!2200072)) b!5177530))

(assert (= (and b!5177530 res!2200069) b!5177531))

(assert (= (and b!5177531 res!2200071) b!5177532))

(assert (= (and d!1672102 (not res!2200070)) b!5177533))

(declare-fun m!6233968 () Bool)

(assert (=> b!5177531 m!6233968))

(assert (=> b!5177531 m!6233234))

(declare-fun m!6233970 () Bool)

(assert (=> b!5177531 m!6233970))

(declare-fun m!6233972 () Bool)

(assert (=> b!5177532 m!6233972))

(assert (=> b!5177532 m!6233234))

(declare-fun m!6233974 () Bool)

(assert (=> b!5177532 m!6233974))

(assert (=> b!5177532 m!6233972))

(assert (=> b!5177532 m!6233974))

(declare-fun m!6233976 () Bool)

(assert (=> b!5177532 m!6233976))

(assert (=> b!5177533 m!6233234))

(declare-fun m!6233978 () Bool)

(assert (=> b!5177533 m!6233978))

(assert (=> b!5177533 m!6233194))

(assert (=> d!1671798 d!1672102))

(declare-fun bs!1205101 () Bool)

(declare-fun d!1672104 () Bool)

(assert (= bs!1205101 (and d!1672104 b!5176997)))

(declare-fun lambda!258668 () Int)

(assert (=> bs!1205101 (not (= lambda!258668 lambda!258612))))

(declare-fun bs!1205102 () Bool)

(assert (= bs!1205102 (and d!1672104 d!1672052)))

(assert (=> bs!1205102 (not (= lambda!258668 lambda!258666))))

(declare-fun bs!1205103 () Bool)

(assert (= bs!1205103 (and d!1672104 d!1671804)))

(assert (=> bs!1205103 (not (= lambda!258668 lambda!258624))))

(declare-fun bs!1205104 () Bool)

(assert (= bs!1205104 (and d!1672104 d!1671612)))

(assert (=> bs!1205104 (= lambda!258668 lambda!258610)))

(declare-fun bs!1205105 () Bool)

(assert (= bs!1205105 (and d!1672104 b!5177056)))

(assert (=> bs!1205105 (not (= lambda!258668 lambda!258618))))

(declare-fun bs!1205106 () Bool)

(assert (= bs!1205106 (and d!1672104 d!1672040)))

(assert (=> bs!1205106 (not (= lambda!258668 lambda!258663))))

(declare-fun bs!1205107 () Bool)

(assert (= bs!1205107 (and d!1672104 d!1671636)))

(assert (=> bs!1205107 (not (= lambda!258668 lambda!258613))))

(declare-fun bs!1205108 () Bool)

(assert (= bs!1205108 (and d!1672104 d!1672032)))

(assert (=> bs!1205108 (not (= lambda!258668 lambda!258656))))

(declare-fun bs!1205109 () Bool)

(assert (= bs!1205109 (and d!1672104 d!1671546)))

(assert (=> bs!1205109 (not (= lambda!258668 lambda!258592))))

(declare-fun bs!1205110 () Bool)

(assert (= bs!1205110 (and d!1672104 b!5176996)))

(assert (=> bs!1205110 (not (= lambda!258668 lambda!258611))))

(declare-fun bs!1205111 () Bool)

(assert (= bs!1205111 (and d!1672104 b!5177055)))

(assert (=> bs!1205111 (not (= lambda!258668 lambda!258617))))

(declare-fun bs!1205112 () Bool)

(assert (= bs!1205112 (and d!1672104 d!1671684)))

(assert (=> bs!1205112 (= lambda!258668 lambda!258616)))

(declare-fun bs!1205113 () Bool)

(declare-fun b!5177534 () Bool)

(assert (= bs!1205113 (and b!5177534 b!5176997)))

(declare-fun lambda!258669 () Int)

(assert (=> bs!1205113 (= lambda!258669 lambda!258612)))

(declare-fun bs!1205114 () Bool)

(assert (= bs!1205114 (and b!5177534 d!1672052)))

(assert (=> bs!1205114 (not (= lambda!258669 lambda!258666))))

(declare-fun bs!1205115 () Bool)

(assert (= bs!1205115 (and b!5177534 d!1671804)))

(assert (=> bs!1205115 (not (= lambda!258669 lambda!258624))))

(declare-fun bs!1205116 () Bool)

(assert (= bs!1205116 (and b!5177534 d!1671612)))

(assert (=> bs!1205116 (not (= lambda!258669 lambda!258610))))

(declare-fun bs!1205117 () Bool)

(assert (= bs!1205117 (and b!5177534 b!5177056)))

(assert (=> bs!1205117 (= lambda!258669 lambda!258618)))

(declare-fun bs!1205118 () Bool)

(assert (= bs!1205118 (and b!5177534 d!1672040)))

(assert (=> bs!1205118 (= lambda!258669 lambda!258663)))

(declare-fun bs!1205119 () Bool)

(assert (= bs!1205119 (and b!5177534 d!1672104)))

(assert (=> bs!1205119 (not (= lambda!258669 lambda!258668))))

(declare-fun bs!1205120 () Bool)

(assert (= bs!1205120 (and b!5177534 d!1671636)))

(assert (=> bs!1205120 (not (= lambda!258669 lambda!258613))))

(declare-fun bs!1205121 () Bool)

(assert (= bs!1205121 (and b!5177534 d!1672032)))

(assert (=> bs!1205121 (not (= lambda!258669 lambda!258656))))

(declare-fun bs!1205122 () Bool)

(assert (= bs!1205122 (and b!5177534 d!1671546)))

(assert (=> bs!1205122 (not (= lambda!258669 lambda!258592))))

(declare-fun bs!1205123 () Bool)

(assert (= bs!1205123 (and b!5177534 b!5176996)))

(assert (=> bs!1205123 (= lambda!258669 lambda!258611)))

(declare-fun bs!1205124 () Bool)

(assert (= bs!1205124 (and b!5177534 b!5177055)))

(assert (=> bs!1205124 (= lambda!258669 lambda!258617)))

(declare-fun bs!1205125 () Bool)

(assert (= bs!1205125 (and b!5177534 d!1671684)))

(assert (=> bs!1205125 (not (= lambda!258669 lambda!258616))))

(declare-fun bs!1205126 () Bool)

(declare-fun b!5177535 () Bool)

(assert (= bs!1205126 (and b!5177535 b!5176997)))

(declare-fun lambda!258670 () Int)

(assert (=> bs!1205126 (= lambda!258670 lambda!258612)))

(declare-fun bs!1205127 () Bool)

(assert (= bs!1205127 (and b!5177535 d!1672052)))

(assert (=> bs!1205127 (not (= lambda!258670 lambda!258666))))

(declare-fun bs!1205128 () Bool)

(assert (= bs!1205128 (and b!5177535 d!1671804)))

(assert (=> bs!1205128 (not (= lambda!258670 lambda!258624))))

(declare-fun bs!1205129 () Bool)

(assert (= bs!1205129 (and b!5177535 d!1671612)))

(assert (=> bs!1205129 (not (= lambda!258670 lambda!258610))))

(declare-fun bs!1205130 () Bool)

(assert (= bs!1205130 (and b!5177535 b!5177056)))

(assert (=> bs!1205130 (= lambda!258670 lambda!258618)))

(declare-fun bs!1205131 () Bool)

(assert (= bs!1205131 (and b!5177535 d!1672040)))

(assert (=> bs!1205131 (= lambda!258670 lambda!258663)))

(declare-fun bs!1205132 () Bool)

(assert (= bs!1205132 (and b!5177535 d!1672104)))

(assert (=> bs!1205132 (not (= lambda!258670 lambda!258668))))

(declare-fun bs!1205133 () Bool)

(assert (= bs!1205133 (and b!5177535 d!1671636)))

(assert (=> bs!1205133 (not (= lambda!258670 lambda!258613))))

(declare-fun bs!1205134 () Bool)

(assert (= bs!1205134 (and b!5177535 b!5177534)))

(assert (=> bs!1205134 (= lambda!258670 lambda!258669)))

(declare-fun bs!1205135 () Bool)

(assert (= bs!1205135 (and b!5177535 d!1672032)))

(assert (=> bs!1205135 (not (= lambda!258670 lambda!258656))))

(declare-fun bs!1205136 () Bool)

(assert (= bs!1205136 (and b!5177535 d!1671546)))

(assert (=> bs!1205136 (not (= lambda!258670 lambda!258592))))

(declare-fun bs!1205137 () Bool)

(assert (= bs!1205137 (and b!5177535 b!5176996)))

(assert (=> bs!1205137 (= lambda!258670 lambda!258611)))

(declare-fun bs!1205138 () Bool)

(assert (= bs!1205138 (and b!5177535 b!5177055)))

(assert (=> bs!1205138 (= lambda!258670 lambda!258617)))

(declare-fun bs!1205139 () Bool)

(assert (= bs!1205139 (and b!5177535 d!1671684)))

(assert (=> bs!1205139 (not (= lambda!258670 lambda!258616))))

(declare-fun e!3226054 () Unit!151998)

(declare-fun Unit!152055 () Unit!151998)

(assert (=> b!5177534 (= e!3226054 Unit!152055)))

(declare-fun lt!2133666 () List!60289)

(declare-fun call!363816 () List!60289)

(assert (=> b!5177534 (= lt!2133666 call!363816)))

(declare-fun lt!2133660 () Unit!151998)

(assert (=> b!5177534 (= lt!2133660 (lemmaNotForallThenExists!478 lt!2133666 lambda!258668))))

(declare-fun call!363817 () Bool)

(assert (=> b!5177534 call!363817))

(declare-fun lt!2133663 () Unit!151998)

(assert (=> b!5177534 (= lt!2133663 lt!2133660)))

(declare-fun bm!363811 () Bool)

(assert (=> bm!363811 (= call!363816 (toList!8458 call!363711))))

(declare-fun Unit!152056 () Unit!151998)

(assert (=> b!5177535 (= e!3226054 Unit!152056)))

(declare-fun lt!2133659 () List!60289)

(assert (=> b!5177535 (= lt!2133659 call!363816)))

(declare-fun lt!2133661 () Unit!151998)

(assert (=> b!5177535 (= lt!2133661 (lemmaForallThenNotExists!445 lt!2133659 lambda!258668))))

(assert (=> b!5177535 (not call!363817)))

(declare-fun lt!2133664 () Unit!151998)

(assert (=> b!5177535 (= lt!2133664 lt!2133661)))

(declare-fun bm!363812 () Bool)

(declare-fun c!891846 () Bool)

(assert (=> bm!363812 (= call!363817 (exists!1941 (ite c!891846 lt!2133666 lt!2133659) (ite c!891846 lambda!258669 lambda!258670)))))

(declare-fun lt!2133662 () Bool)

(assert (=> d!1672104 (= lt!2133662 (isEmpty!32212 (getLanguageWitness!1016 call!363711)))))

(assert (=> d!1672104 (= lt!2133662 (forall!14162 call!363711 lambda!258668))))

(declare-fun lt!2133665 () Unit!151998)

(assert (=> d!1672104 (= lt!2133665 e!3226054)))

(assert (=> d!1672104 (= c!891846 (not (forall!14162 call!363711 lambda!258668)))))

(assert (=> d!1672104 (= (lostCauseZipper!1343 call!363711) lt!2133662)))

(assert (= (and d!1672104 c!891846) b!5177534))

(assert (= (and d!1672104 (not c!891846)) b!5177535))

(assert (= (or b!5177534 b!5177535) bm!363811))

(assert (= (or b!5177534 b!5177535) bm!363812))

(declare-fun m!6233980 () Bool)

(assert (=> bm!363812 m!6233980))

(declare-fun m!6233982 () Bool)

(assert (=> b!5177534 m!6233982))

(declare-fun m!6233984 () Bool)

(assert (=> d!1672104 m!6233984))

(assert (=> d!1672104 m!6233984))

(declare-fun m!6233986 () Bool)

(assert (=> d!1672104 m!6233986))

(declare-fun m!6233988 () Bool)

(assert (=> d!1672104 m!6233988))

(assert (=> d!1672104 m!6233988))

(declare-fun m!6233990 () Bool)

(assert (=> b!5177535 m!6233990))

(declare-fun m!6233992 () Bool)

(assert (=> bm!363811 m!6233992))

(assert (=> d!1671798 d!1672104))

(assert (=> d!1671614 d!1671514))

(declare-fun d!1672106 () Bool)

(declare-fun c!891847 () Bool)

(assert (=> d!1672106 (= c!891847 ((_ is Nil!60163) lt!2133377))))

(declare-fun e!3226055 () (InoxSet C!29584))

(assert (=> d!1672106 (= (content!10662 lt!2133377) e!3226055)))

(declare-fun b!5177536 () Bool)

(assert (=> b!5177536 (= e!3226055 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177537 () Bool)

(assert (=> b!5177537 (= e!3226055 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133377) true) (content!10662 (t!373440 lt!2133377))))))

(assert (= (and d!1672106 c!891847) b!5177536))

(assert (= (and d!1672106 (not c!891847)) b!5177537))

(declare-fun m!6233994 () Bool)

(assert (=> b!5177537 m!6233994))

(declare-fun m!6233996 () Bool)

(assert (=> b!5177537 m!6233996))

(assert (=> d!1671742 d!1672106))

(assert (=> d!1671742 d!1672064))

(declare-fun d!1672108 () Bool)

(declare-fun c!891848 () Bool)

(assert (=> d!1672108 (= c!891848 ((_ is Nil!60163) (Cons!60163 lt!2133128 Nil!60163)))))

(declare-fun e!3226056 () (InoxSet C!29584))

(assert (=> d!1672108 (= (content!10662 (Cons!60163 lt!2133128 Nil!60163)) e!3226056)))

(declare-fun b!5177538 () Bool)

(assert (=> b!5177538 (= e!3226056 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177539 () Bool)

(assert (=> b!5177539 (= e!3226056 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (Cons!60163 lt!2133128 Nil!60163)) true) (content!10662 (t!373440 (Cons!60163 lt!2133128 Nil!60163)))))))

(assert (= (and d!1672108 c!891848) b!5177538))

(assert (= (and d!1672108 (not c!891848)) b!5177539))

(declare-fun m!6233998 () Bool)

(assert (=> b!5177539 m!6233998))

(declare-fun m!6234000 () Bool)

(assert (=> b!5177539 m!6234000))

(assert (=> d!1671742 d!1672108))

(declare-fun d!1672110 () Bool)

(assert (=> d!1672110 (= (flatMap!460 lt!2132878 lambda!258614) (choose!38443 lt!2132878 lambda!258614))))

(declare-fun bs!1205140 () Bool)

(assert (= bs!1205140 d!1672110))

(declare-fun m!6234002 () Bool)

(assert (=> bs!1205140 m!6234002))

(assert (=> d!1671662 d!1672110))

(declare-fun d!1672112 () Bool)

(declare-fun lt!2133667 () Int)

(assert (=> d!1672112 (>= lt!2133667 0)))

(declare-fun e!3226057 () Int)

(assert (=> d!1672112 (= lt!2133667 e!3226057)))

(declare-fun c!891849 () Bool)

(assert (=> d!1672112 (= c!891849 ((_ is Nil!60163) lt!2133410))))

(assert (=> d!1672112 (= (size!39693 lt!2133410) lt!2133667)))

(declare-fun b!5177540 () Bool)

(assert (=> b!5177540 (= e!3226057 0)))

(declare-fun b!5177541 () Bool)

(assert (=> b!5177541 (= e!3226057 (+ 1 (size!39693 (t!373440 lt!2133410))))))

(assert (= (and d!1672112 c!891849) b!5177540))

(assert (= (and d!1672112 (not c!891849)) b!5177541))

(declare-fun m!6234004 () Bool)

(assert (=> b!5177541 m!6234004))

(assert (=> b!5177177 d!1672112))

(assert (=> b!5177177 d!1671466))

(declare-fun d!1672114 () Bool)

(declare-fun lt!2133668 () Int)

(assert (=> d!1672114 (>= lt!2133668 0)))

(declare-fun e!3226058 () Int)

(assert (=> d!1672114 (= lt!2133668 e!3226058)))

(declare-fun c!891850 () Bool)

(assert (=> d!1672114 (= c!891850 ((_ is Nil!60163) lt!2132902))))

(assert (=> d!1672114 (= (size!39693 lt!2132902) lt!2133668)))

(declare-fun b!5177542 () Bool)

(assert (=> b!5177542 (= e!3226058 0)))

(declare-fun b!5177543 () Bool)

(assert (=> b!5177543 (= e!3226058 (+ 1 (size!39693 (t!373440 lt!2132902))))))

(assert (= (and d!1672114 c!891850) b!5177542))

(assert (= (and d!1672114 (not c!891850)) b!5177543))

(declare-fun m!6234006 () Bool)

(assert (=> b!5177543 m!6234006))

(assert (=> b!5177177 d!1672114))

(declare-fun b!5177546 () Bool)

(declare-fun res!2200074 () Bool)

(declare-fun e!3226060 () Bool)

(assert (=> b!5177546 (=> (not res!2200074) (not e!3226060))))

(declare-fun lt!2133669 () List!60287)

(assert (=> b!5177546 (= res!2200074 (= (size!39693 lt!2133669) (+ (size!39693 (t!373440 testedP!294)) (size!39693 (Cons!60163 lt!2133047 Nil!60163)))))))

(declare-fun b!5177545 () Bool)

(declare-fun e!3226059 () List!60287)

(assert (=> b!5177545 (= e!3226059 (Cons!60163 (h!66611 (t!373440 testedP!294)) (++!13173 (t!373440 (t!373440 testedP!294)) (Cons!60163 lt!2133047 Nil!60163))))))

(declare-fun b!5177544 () Bool)

(assert (=> b!5177544 (= e!3226059 (Cons!60163 lt!2133047 Nil!60163))))

(declare-fun b!5177547 () Bool)

(assert (=> b!5177547 (= e!3226060 (or (not (= (Cons!60163 lt!2133047 Nil!60163) Nil!60163)) (= lt!2133669 (t!373440 testedP!294))))))

(declare-fun d!1672116 () Bool)

(assert (=> d!1672116 e!3226060))

(declare-fun res!2200073 () Bool)

(assert (=> d!1672116 (=> (not res!2200073) (not e!3226060))))

(assert (=> d!1672116 (= res!2200073 (= (content!10662 lt!2133669) ((_ map or) (content!10662 (t!373440 testedP!294)) (content!10662 (Cons!60163 lt!2133047 Nil!60163)))))))

(assert (=> d!1672116 (= lt!2133669 e!3226059)))

(declare-fun c!891851 () Bool)

(assert (=> d!1672116 (= c!891851 ((_ is Nil!60163) (t!373440 testedP!294)))))

(assert (=> d!1672116 (= (++!13173 (t!373440 testedP!294) (Cons!60163 lt!2133047 Nil!60163)) lt!2133669)))

(assert (= (and d!1672116 c!891851) b!5177544))

(assert (= (and d!1672116 (not c!891851)) b!5177545))

(assert (= (and d!1672116 res!2200073) b!5177546))

(assert (= (and b!5177546 res!2200074) b!5177547))

(declare-fun m!6234008 () Bool)

(assert (=> b!5177546 m!6234008))

(assert (=> b!5177546 m!6232254))

(assert (=> b!5177546 m!6233280))

(declare-fun m!6234010 () Bool)

(assert (=> b!5177545 m!6234010))

(declare-fun m!6234012 () Bool)

(assert (=> d!1672116 m!6234012))

(assert (=> d!1672116 m!6232704))

(assert (=> d!1672116 m!6233286))

(assert (=> b!5177234 d!1672116))

(assert (=> d!1671844 d!1671652))

(declare-fun bs!1205141 () Bool)

(declare-fun d!1672118 () Bool)

(assert (= bs!1205141 (and d!1672118 b!5176997)))

(declare-fun lambda!258671 () Int)

(assert (=> bs!1205141 (not (= lambda!258671 lambda!258612))))

(declare-fun bs!1205142 () Bool)

(assert (= bs!1205142 (and d!1672118 d!1672052)))

(assert (=> bs!1205142 (= (= (ite c!891702 lambda!258617 lambda!258618) (ite c!891678 lambda!258611 lambda!258612)) (= lambda!258671 lambda!258666))))

(declare-fun bs!1205143 () Bool)

(assert (= bs!1205143 (and d!1672118 d!1671804)))

(assert (=> bs!1205143 (not (= lambda!258671 lambda!258624))))

(declare-fun bs!1205144 () Bool)

(assert (= bs!1205144 (and d!1672118 d!1671612)))

(assert (=> bs!1205144 (not (= lambda!258671 lambda!258610))))

(declare-fun bs!1205145 () Bool)

(assert (= bs!1205145 (and d!1672118 b!5177056)))

(assert (=> bs!1205145 (not (= lambda!258671 lambda!258618))))

(declare-fun bs!1205146 () Bool)

(assert (= bs!1205146 (and d!1672118 d!1672040)))

(assert (=> bs!1205146 (not (= lambda!258671 lambda!258663))))

(declare-fun bs!1205147 () Bool)

(assert (= bs!1205147 (and d!1672118 d!1672104)))

(assert (=> bs!1205147 (not (= lambda!258671 lambda!258668))))

(declare-fun bs!1205148 () Bool)

(assert (= bs!1205148 (and d!1672118 d!1671636)))

(assert (=> bs!1205148 (not (= lambda!258671 lambda!258613))))

(declare-fun bs!1205149 () Bool)

(assert (= bs!1205149 (and d!1672118 d!1672032)))

(assert (=> bs!1205149 (not (= lambda!258671 lambda!258656))))

(declare-fun bs!1205150 () Bool)

(assert (= bs!1205150 (and d!1672118 d!1671546)))

(assert (=> bs!1205150 (not (= lambda!258671 lambda!258592))))

(declare-fun bs!1205151 () Bool)

(assert (= bs!1205151 (and d!1672118 b!5176996)))

(assert (=> bs!1205151 (not (= lambda!258671 lambda!258611))))

(declare-fun bs!1205152 () Bool)

(assert (= bs!1205152 (and d!1672118 b!5177534)))

(assert (=> bs!1205152 (not (= lambda!258671 lambda!258669))))

(declare-fun bs!1205153 () Bool)

(assert (= bs!1205153 (and d!1672118 b!5177535)))

(assert (=> bs!1205153 (not (= lambda!258671 lambda!258670))))

(declare-fun bs!1205154 () Bool)

(assert (= bs!1205154 (and d!1672118 b!5177055)))

(assert (=> bs!1205154 (not (= lambda!258671 lambda!258617))))

(declare-fun bs!1205155 () Bool)

(assert (= bs!1205155 (and d!1672118 d!1671684)))

(assert (=> bs!1205155 (not (= lambda!258671 lambda!258616))))

(assert (=> d!1672118 true))

(assert (=> d!1672118 (< (dynLambda!23883 order!27039 (ite c!891702 lambda!258617 lambda!258618)) (dynLambda!23883 order!27039 lambda!258671))))

(assert (=> d!1672118 (= (exists!1941 (ite c!891702 lt!2133327 lt!2133320) (ite c!891702 lambda!258617 lambda!258618)) (not (forall!14164 (ite c!891702 lt!2133327 lt!2133320) lambda!258671)))))

(declare-fun bs!1205156 () Bool)

(assert (= bs!1205156 d!1672118))

(declare-fun m!6234014 () Bool)

(assert (=> bs!1205156 m!6234014))

(assert (=> bm!363746 d!1672118))

(declare-fun d!1672120 () Bool)

(declare-fun lt!2133670 () Int)

(assert (=> d!1672120 (>= lt!2133670 0)))

(declare-fun e!3226061 () Int)

(assert (=> d!1672120 (= lt!2133670 e!3226061)))

(declare-fun c!891852 () Bool)

(assert (=> d!1672120 (= c!891852 ((_ is Nil!60163) lt!2133468))))

(assert (=> d!1672120 (= (size!39693 lt!2133468) lt!2133670)))

(declare-fun b!5177548 () Bool)

(assert (=> b!5177548 (= e!3226061 0)))

(declare-fun b!5177549 () Bool)

(assert (=> b!5177549 (= e!3226061 (+ 1 (size!39693 (t!373440 lt!2133468))))))

(assert (= (and d!1672120 c!891852) b!5177548))

(assert (= (and d!1672120 (not c!891852)) b!5177549))

(declare-fun m!6234016 () Bool)

(assert (=> b!5177549 m!6234016))

(assert (=> b!5177227 d!1672120))

(declare-fun d!1672122 () Bool)

(declare-fun lt!2133671 () Int)

(assert (=> d!1672122 (>= lt!2133671 0)))

(declare-fun e!3226062 () Int)

(assert (=> d!1672122 (= lt!2133671 e!3226062)))

(declare-fun c!891853 () Bool)

(assert (=> d!1672122 (= c!891853 ((_ is Nil!60163) (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))))))

(assert (=> d!1672122 (= (size!39693 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))) lt!2133671)))

(declare-fun b!5177550 () Bool)

(assert (=> b!5177550 (= e!3226062 0)))

(declare-fun b!5177551 () Bool)

(assert (=> b!5177551 (= e!3226062 (+ 1 (size!39693 (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))))))))

(assert (= (and d!1672122 c!891853) b!5177550))

(assert (= (and d!1672122 (not c!891853)) b!5177551))

(declare-fun m!6234018 () Bool)

(assert (=> b!5177551 m!6234018))

(assert (=> b!5177227 d!1672122))

(declare-fun d!1672124 () Bool)

(declare-fun lt!2133672 () Int)

(assert (=> d!1672124 (>= lt!2133672 0)))

(declare-fun e!3226063 () Int)

(assert (=> d!1672124 (= lt!2133672 e!3226063)))

(declare-fun c!891854 () Bool)

(assert (=> d!1672124 (= c!891854 ((_ is Nil!60163) lt!2133050))))

(assert (=> d!1672124 (= (size!39693 lt!2133050) lt!2133672)))

(declare-fun b!5177552 () Bool)

(assert (=> b!5177552 (= e!3226063 0)))

(declare-fun b!5177553 () Bool)

(assert (=> b!5177553 (= e!3226063 (+ 1 (size!39693 (t!373440 lt!2133050))))))

(assert (= (and d!1672124 c!891854) b!5177552))

(assert (= (and d!1672124 (not c!891854)) b!5177553))

(declare-fun m!6234020 () Bool)

(assert (=> b!5177553 m!6234020))

(assert (=> b!5177227 d!1672124))

(declare-fun bs!1205157 () Bool)

(declare-fun d!1672126 () Bool)

(assert (= bs!1205157 (and d!1672126 d!1671532)))

(declare-fun lambda!258672 () Int)

(assert (=> bs!1205157 (= (= call!363745 lt!2132879) (= lambda!258672 lambda!258589))))

(declare-fun bs!1205158 () Bool)

(assert (= bs!1205158 (and d!1672126 d!1671870)))

(assert (=> bs!1205158 (= (= call!363745 (h!66611 lt!2132884)) (= lambda!258672 lambda!258629))))

(declare-fun bs!1205159 () Bool)

(assert (= bs!1205159 (and d!1672126 d!1671662)))

(assert (=> bs!1205159 (= (= call!363745 call!363667) (= lambda!258672 lambda!258614))))

(declare-fun bs!1205160 () Bool)

(assert (= bs!1205160 (and d!1672126 d!1671786)))

(assert (=> bs!1205160 (= (= call!363745 call!363675) (= lambda!258672 lambda!258622))))

(declare-fun bs!1205161 () Bool)

(assert (= bs!1205161 (and d!1672126 d!1672080)))

(assert (=> bs!1205161 (= (= call!363745 call!363771) (= lambda!258672 lambda!258667))))

(declare-fun bs!1205162 () Bool)

(assert (= bs!1205162 (and d!1672126 d!1671836)))

(assert (=> bs!1205162 (= (= call!363745 (head!11075 (_1!35235 lt!2132881))) (= lambda!258672 lambda!258625))))

(declare-fun bs!1205163 () Bool)

(assert (= bs!1205163 (and d!1672126 d!1671850)))

(assert (=> bs!1205163 (= (= call!363745 (head!11075 (_1!35235 lt!2132877))) (= lambda!258672 lambda!258626))))

(declare-fun bs!1205164 () Bool)

(assert (= bs!1205164 (and d!1672126 d!1671672)))

(assert (=> bs!1205164 (= (= call!363745 call!363707) (= lambda!258672 lambda!258615))))

(declare-fun bs!1205165 () Bool)

(assert (= bs!1205165 (and d!1672126 d!1671866)))

(assert (=> bs!1205165 (= (= call!363745 (h!66611 testedP!294)) (= lambda!258672 lambda!258628))))

(assert (=> d!1672126 true))

(assert (=> d!1672126 (= (derivationStepZipper!1003 lt!2132878 call!363745) (flatMap!460 lt!2132878 lambda!258672))))

(declare-fun bs!1205166 () Bool)

(assert (= bs!1205166 d!1672126))

(declare-fun m!6234022 () Bool)

(assert (=> bs!1205166 m!6234022))

(assert (=> bm!363738 d!1672126))

(declare-fun d!1672128 () Bool)

(declare-fun lt!2133673 () Int)

(assert (=> d!1672128 (>= lt!2133673 0)))

(declare-fun e!3226064 () Int)

(assert (=> d!1672128 (= lt!2133673 e!3226064)))

(declare-fun c!891855 () Bool)

(assert (=> d!1672128 (= c!891855 ((_ is Nil!60163) lt!2133376))))

(assert (=> d!1672128 (= (size!39693 lt!2133376) lt!2133673)))

(declare-fun b!5177554 () Bool)

(assert (=> b!5177554 (= e!3226064 0)))

(declare-fun b!5177555 () Bool)

(assert (=> b!5177555 (= e!3226064 (+ 1 (size!39693 (t!373440 lt!2133376))))))

(assert (= (and d!1672128 c!891855) b!5177554))

(assert (= (and d!1672128 (not c!891855)) b!5177555))

(declare-fun m!6234024 () Bool)

(assert (=> b!5177555 m!6234024))

(assert (=> b!5177127 d!1672128))

(declare-fun d!1672130 () Bool)

(declare-fun lt!2133674 () Int)

(assert (=> d!1672130 (>= lt!2133674 0)))

(declare-fun e!3226065 () Int)

(assert (=> d!1672130 (= lt!2133674 e!3226065)))

(declare-fun c!891856 () Bool)

(assert (=> d!1672130 (= c!891856 ((_ is Nil!60163) (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))))))

(assert (=> d!1672130 (= (size!39693 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))) lt!2133674)))

(declare-fun b!5177556 () Bool)

(assert (=> b!5177556 (= e!3226065 0)))

(declare-fun b!5177557 () Bool)

(assert (=> b!5177557 (= e!3226065 (+ 1 (size!39693 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))))))))

(assert (= (and d!1672130 c!891856) b!5177556))

(assert (= (and d!1672130 (not c!891856)) b!5177557))

(declare-fun m!6234026 () Bool)

(assert (=> b!5177557 m!6234026))

(assert (=> b!5177127 d!1672130))

(declare-fun d!1672132 () Bool)

(declare-fun lt!2133675 () Int)

(assert (=> d!1672132 (>= lt!2133675 0)))

(declare-fun e!3226066 () Int)

(assert (=> d!1672132 (= lt!2133675 e!3226066)))

(declare-fun c!891857 () Bool)

(assert (=> d!1672132 (= c!891857 ((_ is Nil!60163) lt!2133131))))

(assert (=> d!1672132 (= (size!39693 lt!2133131) lt!2133675)))

(declare-fun b!5177558 () Bool)

(assert (=> b!5177558 (= e!3226066 0)))

(declare-fun b!5177559 () Bool)

(assert (=> b!5177559 (= e!3226066 (+ 1 (size!39693 (t!373440 lt!2133131))))))

(assert (= (and d!1672132 c!891857) b!5177558))

(assert (= (and d!1672132 (not c!891857)) b!5177559))

(declare-fun m!6234028 () Bool)

(assert (=> b!5177559 m!6234028))

(assert (=> b!5177127 d!1672132))

(declare-fun b!5177562 () Bool)

(declare-fun res!2200076 () Bool)

(declare-fun e!3226068 () Bool)

(assert (=> b!5177562 (=> (not res!2200076) (not e!3226068))))

(declare-fun lt!2133676 () List!60287)

(assert (=> b!5177562 (= res!2200076 (= (size!39693 lt!2133676) (+ (size!39693 (t!373440 lt!2132884)) (size!39693 (Cons!60163 lt!2133128 Nil!60163)))))))

(declare-fun b!5177561 () Bool)

(declare-fun e!3226067 () List!60287)

(assert (=> b!5177561 (= e!3226067 (Cons!60163 (h!66611 (t!373440 lt!2132884)) (++!13173 (t!373440 (t!373440 lt!2132884)) (Cons!60163 lt!2133128 Nil!60163))))))

(declare-fun b!5177560 () Bool)

(assert (=> b!5177560 (= e!3226067 (Cons!60163 lt!2133128 Nil!60163))))

(declare-fun b!5177563 () Bool)

(assert (=> b!5177563 (= e!3226068 (or (not (= (Cons!60163 lt!2133128 Nil!60163) Nil!60163)) (= lt!2133676 (t!373440 lt!2132884))))))

(declare-fun d!1672134 () Bool)

(assert (=> d!1672134 e!3226068))

(declare-fun res!2200075 () Bool)

(assert (=> d!1672134 (=> (not res!2200075) (not e!3226068))))

(assert (=> d!1672134 (= res!2200075 (= (content!10662 lt!2133676) ((_ map or) (content!10662 (t!373440 lt!2132884)) (content!10662 (Cons!60163 lt!2133128 Nil!60163)))))))

(assert (=> d!1672134 (= lt!2133676 e!3226067)))

(declare-fun c!891858 () Bool)

(assert (=> d!1672134 (= c!891858 ((_ is Nil!60163) (t!373440 lt!2132884)))))

(assert (=> d!1672134 (= (++!13173 (t!373440 lt!2132884) (Cons!60163 lt!2133128 Nil!60163)) lt!2133676)))

(assert (= (and d!1672134 c!891858) b!5177560))

(assert (= (and d!1672134 (not c!891858)) b!5177561))

(assert (= (and d!1672134 res!2200075) b!5177562))

(assert (= (and b!5177562 res!2200076) b!5177563))

(declare-fun m!6234030 () Bool)

(assert (=> b!5177562 m!6234030))

(assert (=> b!5177562 m!6232126))

(assert (=> b!5177562 m!6232996))

(declare-fun m!6234032 () Bool)

(assert (=> b!5177561 m!6234032))

(declare-fun m!6234034 () Bool)

(assert (=> d!1672134 m!6234034))

(assert (=> d!1672134 m!6233904))

(assert (=> d!1672134 m!6233002))

(assert (=> b!5177130 d!1672134))

(declare-fun d!1672136 () Bool)

(declare-fun e!3226071 () Bool)

(assert (=> d!1672136 e!3226071))

(declare-fun res!2200079 () Bool)

(assert (=> d!1672136 (=> (not res!2200079) (not e!3226071))))

(declare-fun lt!2133679 () List!60289)

(declare-fun noDuplicate!1136 (List!60289) Bool)

(assert (=> d!1672136 (= res!2200079 (noDuplicate!1136 lt!2133679))))

(declare-fun choose!38454 ((InoxSet Context!8082)) List!60289)

(assert (=> d!1672136 (= lt!2133679 (choose!38454 lt!2132878))))

(assert (=> d!1672136 (= (toList!8458 lt!2132878) lt!2133679)))

(declare-fun b!5177566 () Bool)

(declare-fun content!10664 (List!60289) (InoxSet Context!8082))

(assert (=> b!5177566 (= e!3226071 (= (content!10664 lt!2133679) lt!2132878))))

(assert (= (and d!1672136 res!2200079) b!5177566))

(declare-fun m!6234036 () Bool)

(assert (=> d!1672136 m!6234036))

(declare-fun m!6234038 () Bool)

(assert (=> d!1672136 m!6234038))

(declare-fun m!6234040 () Bool)

(assert (=> b!5177566 m!6234040))

(assert (=> bm!363735 d!1672136))

(declare-fun d!1672138 () Bool)

(declare-fun c!891859 () Bool)

(assert (=> d!1672138 (= c!891859 ((_ is Nil!60163) lt!2133329))))

(declare-fun e!3226072 () (InoxSet C!29584))

(assert (=> d!1672138 (= (content!10662 lt!2133329) e!3226072)))

(declare-fun b!5177567 () Bool)

(assert (=> b!5177567 (= e!3226072 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177568 () Bool)

(assert (=> b!5177568 (= e!3226072 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133329) true) (content!10662 (t!373440 lt!2133329))))))

(assert (= (and d!1672138 c!891859) b!5177567))

(assert (= (and d!1672138 (not c!891859)) b!5177568))

(declare-fun m!6234042 () Bool)

(assert (=> b!5177568 m!6234042))

(declare-fun m!6234044 () Bool)

(assert (=> b!5177568 m!6234044))

(assert (=> d!1671690 d!1672138))

(declare-fun d!1672140 () Bool)

(declare-fun c!891860 () Bool)

(assert (=> d!1672140 (= c!891860 ((_ is Nil!60163) (_1!35235 lt!2133054)))))

(declare-fun e!3226073 () (InoxSet C!29584))

(assert (=> d!1672140 (= (content!10662 (_1!35235 lt!2133054)) e!3226073)))

(declare-fun b!5177569 () Bool)

(assert (=> b!5177569 (= e!3226073 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177570 () Bool)

(assert (=> b!5177570 (= e!3226073 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (_1!35235 lt!2133054)) true) (content!10662 (t!373440 (_1!35235 lt!2133054)))))))

(assert (= (and d!1672140 c!891860) b!5177569))

(assert (= (and d!1672140 (not c!891860)) b!5177570))

(declare-fun m!6234046 () Bool)

(assert (=> b!5177570 m!6234046))

(declare-fun m!6234048 () Bool)

(assert (=> b!5177570 m!6234048))

(assert (=> d!1671690 d!1672140))

(declare-fun d!1672142 () Bool)

(declare-fun c!891861 () Bool)

(assert (=> d!1672142 (= c!891861 ((_ is Nil!60163) (_2!35235 lt!2133054)))))

(declare-fun e!3226074 () (InoxSet C!29584))

(assert (=> d!1672142 (= (content!10662 (_2!35235 lt!2133054)) e!3226074)))

(declare-fun b!5177571 () Bool)

(assert (=> b!5177571 (= e!3226074 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177572 () Bool)

(assert (=> b!5177572 (= e!3226074 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (_2!35235 lt!2133054)) true) (content!10662 (t!373440 (_2!35235 lt!2133054)))))))

(assert (= (and d!1672142 c!891861) b!5177571))

(assert (= (and d!1672142 (not c!891861)) b!5177572))

(declare-fun m!6234050 () Bool)

(assert (=> b!5177572 m!6234050))

(declare-fun m!6234052 () Bool)

(assert (=> b!5177572 m!6234052))

(assert (=> d!1671690 d!1672142))

(declare-fun d!1672144 () Bool)

(declare-fun lt!2133680 () Int)

(assert (=> d!1672144 (>= lt!2133680 0)))

(declare-fun e!3226075 () Int)

(assert (=> d!1672144 (= lt!2133680 e!3226075)))

(declare-fun c!891862 () Bool)

(assert (=> d!1672144 (= c!891862 ((_ is Nil!60163) lt!2133369))))

(assert (=> d!1672144 (= (size!39693 lt!2133369) lt!2133680)))

(declare-fun b!5177573 () Bool)

(assert (=> b!5177573 (= e!3226075 0)))

(declare-fun b!5177574 () Bool)

(assert (=> b!5177574 (= e!3226075 (+ 1 (size!39693 (t!373440 lt!2133369))))))

(assert (= (and d!1672144 c!891862) b!5177573))

(assert (= (and d!1672144 (not c!891862)) b!5177574))

(declare-fun m!6234054 () Bool)

(assert (=> b!5177574 m!6234054))

(assert (=> b!5177107 d!1672144))

(assert (=> b!5177107 d!1671466))

(declare-fun d!1672146 () Bool)

(declare-fun lt!2133681 () Int)

(assert (=> d!1672146 (>= lt!2133681 0)))

(declare-fun e!3226076 () Int)

(assert (=> d!1672146 (= lt!2133681 e!3226076)))

(declare-fun c!891863 () Bool)

(assert (=> d!1672146 (= c!891863 ((_ is Nil!60163) (getSuffix!3438 input!5817 lt!2132884)))))

(assert (=> d!1672146 (= (size!39693 (getSuffix!3438 input!5817 lt!2132884)) lt!2133681)))

(declare-fun b!5177575 () Bool)

(assert (=> b!5177575 (= e!3226076 0)))

(declare-fun b!5177576 () Bool)

(assert (=> b!5177576 (= e!3226076 (+ 1 (size!39693 (t!373440 (getSuffix!3438 input!5817 lt!2132884)))))))

(assert (= (and d!1672146 c!891863) b!5177575))

(assert (= (and d!1672146 (not c!891863)) b!5177576))

(declare-fun m!6234056 () Bool)

(assert (=> b!5177576 m!6234056))

(assert (=> b!5177107 d!1672146))

(declare-fun d!1672148 () Bool)

(assert (=> d!1672148 (= (flatMap!460 baseZ!62 lambda!258625) (choose!38443 baseZ!62 lambda!258625))))

(declare-fun bs!1205167 () Bool)

(assert (= bs!1205167 d!1672148))

(declare-fun m!6234058 () Bool)

(assert (=> bs!1205167 m!6234058))

(assert (=> d!1671836 d!1672148))

(declare-fun d!1672150 () Bool)

(declare-fun lt!2133682 () Int)

(assert (=> d!1672150 (>= lt!2133682 0)))

(declare-fun e!3226077 () Int)

(assert (=> d!1672150 (= lt!2133682 e!3226077)))

(declare-fun c!891864 () Bool)

(assert (=> d!1672150 (= c!891864 ((_ is Nil!60163) (t!373440 (t!373440 testedP!294))))))

(assert (=> d!1672150 (= (size!39693 (t!373440 (t!373440 testedP!294))) lt!2133682)))

(declare-fun b!5177577 () Bool)

(assert (=> b!5177577 (= e!3226077 0)))

(declare-fun b!5177578 () Bool)

(assert (=> b!5177578 (= e!3226077 (+ 1 (size!39693 (t!373440 (t!373440 (t!373440 testedP!294))))))))

(assert (= (and d!1672150 c!891864) b!5177577))

(assert (= (and d!1672150 (not c!891864)) b!5177578))

(declare-fun m!6234060 () Bool)

(assert (=> b!5177578 m!6234060))

(assert (=> b!5177146 d!1672150))

(declare-fun d!1672152 () Bool)

(assert (=> d!1672152 (= (head!11075 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))) (h!66611 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))))))

(assert (=> b!5177088 d!1672152))

(assert (=> b!5177088 d!1671620))

(declare-fun d!1672154 () Bool)

(declare-fun res!2200080 () Bool)

(declare-fun e!3226078 () Bool)

(assert (=> d!1672154 (=> res!2200080 e!3226078)))

(assert (=> d!1672154 (= res!2200080 ((_ is Nil!60164) (exprs!4541 setElem!32338)))))

(assert (=> d!1672154 (= (forall!14161 (exprs!4541 setElem!32338) lambda!258621) e!3226078)))

(declare-fun b!5177579 () Bool)

(declare-fun e!3226079 () Bool)

(assert (=> b!5177579 (= e!3226078 e!3226079)))

(declare-fun res!2200081 () Bool)

(assert (=> b!5177579 (=> (not res!2200081) (not e!3226079))))

(assert (=> b!5177579 (= res!2200081 (dynLambda!23882 lambda!258621 (h!66612 (exprs!4541 setElem!32338))))))

(declare-fun b!5177580 () Bool)

(assert (=> b!5177580 (= e!3226079 (forall!14161 (t!373441 (exprs!4541 setElem!32338)) lambda!258621))))

(assert (= (and d!1672154 (not res!2200080)) b!5177579))

(assert (= (and b!5177579 res!2200081) b!5177580))

(declare-fun b_lambda!200993 () Bool)

(assert (=> (not b_lambda!200993) (not b!5177579)))

(declare-fun m!6234062 () Bool)

(assert (=> b!5177579 m!6234062))

(declare-fun m!6234064 () Bool)

(assert (=> b!5177580 m!6234064))

(assert (=> d!1671768 d!1672154))

(declare-fun bm!363813 () Bool)

(declare-fun call!363818 () Bool)

(assert (=> bm!363813 (= call!363818 (nullableZipper!1195 call!363775))))

(declare-fun bm!363814 () Bool)

(declare-fun call!363825 () (InoxSet Context!8082))

(declare-fun call!363821 () C!29584)

(assert (=> bm!363814 (= call!363825 (derivationStepZipper!1003 call!363775 call!363821))))

(declare-fun b!5177581 () Bool)

(declare-fun e!3226080 () Unit!151998)

(declare-fun Unit!152057 () Unit!151998)

(assert (=> b!5177581 (= e!3226080 Unit!152057)))

(declare-fun b!5177582 () Bool)

(declare-fun e!3226086 () tuple2!63864)

(declare-fun e!3226081 () tuple2!63864)

(assert (=> b!5177582 (= e!3226086 e!3226081)))

(declare-fun lt!2133706 () tuple2!63864)

(declare-fun call!363824 () tuple2!63864)

(assert (=> b!5177582 (= lt!2133706 call!363824)))

(declare-fun c!891869 () Bool)

(assert (=> b!5177582 (= c!891869 (isEmpty!32211 (_1!35235 lt!2133706)))))

(declare-fun bm!363815 () Bool)

(declare-fun call!363822 () Unit!151998)

(assert (=> bm!363815 (= call!363822 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2133433 input!5817))))

(declare-fun b!5177583 () Bool)

(declare-fun e!3226084 () tuple2!63864)

(assert (=> b!5177583 (= e!3226084 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun b!5177584 () Bool)

(declare-fun e!3226083 () Bool)

(declare-fun lt!2133704 () tuple2!63864)

(assert (=> b!5177584 (= e!3226083 (>= (size!39693 (_1!35235 lt!2133704)) (size!39693 lt!2133433)))))

(declare-fun b!5177585 () Bool)

(declare-fun c!891868 () Bool)

(assert (=> b!5177585 (= c!891868 call!363818)))

(declare-fun lt!2133696 () Unit!151998)

(declare-fun lt!2133686 () Unit!151998)

(assert (=> b!5177585 (= lt!2133696 lt!2133686)))

(declare-fun lt!2133700 () List!60287)

(declare-fun lt!2133697 () C!29584)

(assert (=> b!5177585 (= (++!13173 (++!13173 lt!2133433 (Cons!60163 lt!2133697 Nil!60163)) lt!2133700) input!5817)))

(assert (=> b!5177585 (= lt!2133686 (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2133433 lt!2133697 lt!2133700 input!5817))))

(assert (=> b!5177585 (= lt!2133700 (tail!10174 call!363769))))

(assert (=> b!5177585 (= lt!2133697 (head!11075 call!363769))))

(declare-fun lt!2133699 () Unit!151998)

(declare-fun lt!2133688 () Unit!151998)

(assert (=> b!5177585 (= lt!2133699 lt!2133688)))

(assert (=> b!5177585 (isPrefix!5790 (++!13173 lt!2133433 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133433)) Nil!60163)) input!5817)))

(assert (=> b!5177585 (= lt!2133688 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2133433 input!5817))))

(declare-fun lt!2133705 () List!60287)

(assert (=> b!5177585 (= lt!2133705 (++!13173 lt!2133433 (Cons!60163 (head!11075 call!363769) Nil!60163)))))

(declare-fun lt!2133703 () Unit!151998)

(assert (=> b!5177585 (= lt!2133703 e!3226080)))

(declare-fun c!891870 () Bool)

(assert (=> b!5177585 (= c!891870 (= (size!39693 lt!2133433) (size!39693 input!5817)))))

(declare-fun lt!2133698 () Unit!151998)

(declare-fun lt!2133689 () Unit!151998)

(assert (=> b!5177585 (= lt!2133698 lt!2133689)))

(assert (=> b!5177585 (<= (size!39693 lt!2133433) (size!39693 input!5817))))

(assert (=> b!5177585 (= lt!2133689 (lemmaIsPrefixThenSmallerEqSize!951 lt!2133433 input!5817))))

(declare-fun e!3226087 () tuple2!63864)

(assert (=> b!5177585 (= e!3226087 e!3226086)))

(declare-fun b!5177586 () Bool)

(assert (=> b!5177586 (= e!3226084 e!3226087)))

(declare-fun c!891865 () Bool)

(assert (=> b!5177586 (= c!891865 (= (+ (size!39693 lt!2132884) 1 1) lt!2132880))))

(declare-fun b!5177587 () Bool)

(assert (=> b!5177587 (= e!3226081 lt!2133706)))

(declare-fun b!5177588 () Bool)

(declare-fun e!3226085 () tuple2!63864)

(assert (=> b!5177588 (= e!3226085 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun bm!363817 () Bool)

(declare-fun call!363823 () Bool)

(assert (=> bm!363817 (= call!363823 (isPrefix!5790 input!5817 input!5817))))

(declare-fun b!5177589 () Bool)

(assert (=> b!5177589 (= e!3226081 (tuple2!63865 lt!2133433 call!363769))))

(declare-fun b!5177590 () Bool)

(declare-fun Unit!152058 () Unit!151998)

(assert (=> b!5177590 (= e!3226080 Unit!152058)))

(declare-fun lt!2133685 () Unit!151998)

(declare-fun call!363820 () Unit!151998)

(assert (=> b!5177590 (= lt!2133685 call!363820)))

(assert (=> b!5177590 call!363823))

(declare-fun lt!2133694 () Unit!151998)

(assert (=> b!5177590 (= lt!2133694 lt!2133685)))

(declare-fun lt!2133683 () Unit!151998)

(assert (=> b!5177590 (= lt!2133683 call!363822)))

(assert (=> b!5177590 (= input!5817 lt!2133433)))

(declare-fun lt!2133695 () Unit!151998)

(assert (=> b!5177590 (= lt!2133695 lt!2133683)))

(assert (=> b!5177590 false))

(declare-fun b!5177591 () Bool)

(declare-fun c!891867 () Bool)

(assert (=> b!5177591 (= c!891867 call!363818)))

(declare-fun lt!2133690 () Unit!151998)

(declare-fun lt!2133702 () Unit!151998)

(assert (=> b!5177591 (= lt!2133690 lt!2133702)))

(assert (=> b!5177591 (= input!5817 lt!2133433)))

(assert (=> b!5177591 (= lt!2133702 call!363822)))

(declare-fun lt!2133692 () Unit!151998)

(declare-fun lt!2133691 () Unit!151998)

(assert (=> b!5177591 (= lt!2133692 lt!2133691)))

(assert (=> b!5177591 call!363823))

(assert (=> b!5177591 (= lt!2133691 call!363820)))

(assert (=> b!5177591 (= e!3226087 e!3226085)))

(declare-fun b!5177592 () Bool)

(assert (=> b!5177592 (= e!3226086 call!363824)))

(declare-fun call!363819 () List!60287)

(declare-fun bm!363818 () Bool)

(assert (=> bm!363818 (= call!363824 (findLongestMatchInnerZipper!313 call!363825 lt!2133705 (+ (size!39693 lt!2132884) 1 1 1) call!363819 input!5817 lt!2132880))))

(declare-fun b!5177593 () Bool)

(declare-fun e!3226082 () Bool)

(assert (=> b!5177593 (= e!3226082 e!3226083)))

(declare-fun res!2200083 () Bool)

(assert (=> b!5177593 (=> res!2200083 e!3226083)))

(assert (=> b!5177593 (= res!2200083 (isEmpty!32211 (_1!35235 lt!2133704)))))

(declare-fun bm!363819 () Bool)

(assert (=> bm!363819 (= call!363821 (head!11075 call!363769))))

(declare-fun d!1672156 () Bool)

(assert (=> d!1672156 e!3226082))

(declare-fun res!2200082 () Bool)

(assert (=> d!1672156 (=> (not res!2200082) (not e!3226082))))

(assert (=> d!1672156 (= res!2200082 (= (++!13173 (_1!35235 lt!2133704) (_2!35235 lt!2133704)) input!5817))))

(assert (=> d!1672156 (= lt!2133704 e!3226084)))

(declare-fun c!891866 () Bool)

(assert (=> d!1672156 (= c!891866 (lostCauseZipper!1343 call!363775))))

(declare-fun lt!2133693 () Unit!151998)

(declare-fun Unit!152059 () Unit!151998)

(assert (=> d!1672156 (= lt!2133693 Unit!152059)))

(assert (=> d!1672156 (= (getSuffix!3438 input!5817 lt!2133433) call!363769)))

(declare-fun lt!2133701 () Unit!151998)

(declare-fun lt!2133707 () Unit!151998)

(assert (=> d!1672156 (= lt!2133701 lt!2133707)))

(declare-fun lt!2133708 () List!60287)

(assert (=> d!1672156 (= call!363769 lt!2133708)))

(assert (=> d!1672156 (= lt!2133707 (lemmaSamePrefixThenSameSuffix!2710 lt!2133433 call!363769 lt!2133433 lt!2133708 input!5817))))

(assert (=> d!1672156 (= lt!2133708 (getSuffix!3438 input!5817 lt!2133433))))

(declare-fun lt!2133687 () Unit!151998)

(declare-fun lt!2133684 () Unit!151998)

(assert (=> d!1672156 (= lt!2133687 lt!2133684)))

(assert (=> d!1672156 (isPrefix!5790 lt!2133433 (++!13173 lt!2133433 call!363769))))

(assert (=> d!1672156 (= lt!2133684 (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2133433 call!363769))))

(assert (=> d!1672156 (= (++!13173 lt!2133433 call!363769) input!5817)))

(assert (=> d!1672156 (= (findLongestMatchInnerZipper!313 call!363775 lt!2133433 (+ (size!39693 lt!2132884) 1 1) call!363769 input!5817 lt!2132880) lt!2133704)))

(declare-fun bm!363816 () Bool)

(assert (=> bm!363816 (= call!363819 (tail!10174 call!363769))))

(declare-fun b!5177594 () Bool)

(assert (=> b!5177594 (= e!3226085 (tuple2!63865 lt!2133433 Nil!60163))))

(declare-fun bm!363820 () Bool)

(assert (=> bm!363820 (= call!363820 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (= (and d!1672156 c!891866) b!5177583))

(assert (= (and d!1672156 (not c!891866)) b!5177586))

(assert (= (and b!5177586 c!891865) b!5177591))

(assert (= (and b!5177586 (not c!891865)) b!5177585))

(assert (= (and b!5177591 c!891867) b!5177594))

(assert (= (and b!5177591 (not c!891867)) b!5177588))

(assert (= (and b!5177585 c!891870) b!5177590))

(assert (= (and b!5177585 (not c!891870)) b!5177581))

(assert (= (and b!5177585 c!891868) b!5177582))

(assert (= (and b!5177585 (not c!891868)) b!5177592))

(assert (= (and b!5177582 c!891869) b!5177589))

(assert (= (and b!5177582 (not c!891869)) b!5177587))

(assert (= (or b!5177582 b!5177592) bm!363816))

(assert (= (or b!5177582 b!5177592) bm!363819))

(assert (= (or b!5177582 b!5177592) bm!363814))

(assert (= (or b!5177582 b!5177592) bm!363818))

(assert (= (or b!5177591 b!5177590) bm!363820))

(assert (= (or b!5177591 b!5177585) bm!363813))

(assert (= (or b!5177591 b!5177590) bm!363817))

(assert (= (or b!5177591 b!5177590) bm!363815))

(assert (= (and d!1672156 res!2200082) b!5177593))

(assert (= (and b!5177593 (not res!2200083)) b!5177584))

(declare-fun m!6234066 () Bool)

(assert (=> bm!363815 m!6234066))

(assert (=> bm!363820 m!6232108))

(declare-fun m!6234068 () Bool)

(assert (=> b!5177582 m!6234068))

(declare-fun m!6234070 () Bool)

(assert (=> b!5177584 m!6234070))

(declare-fun m!6234072 () Bool)

(assert (=> b!5177584 m!6234072))

(declare-fun m!6234074 () Bool)

(assert (=> bm!363813 m!6234074))

(declare-fun m!6234076 () Bool)

(assert (=> bm!363816 m!6234076))

(assert (=> bm!363817 m!6232110))

(declare-fun m!6234078 () Bool)

(assert (=> bm!363814 m!6234078))

(declare-fun m!6234080 () Bool)

(assert (=> b!5177593 m!6234080))

(declare-fun m!6234082 () Bool)

(assert (=> b!5177585 m!6234082))

(assert (=> b!5177585 m!6234076))

(assert (=> b!5177585 m!6232070))

(declare-fun m!6234084 () Bool)

(assert (=> b!5177585 m!6234084))

(declare-fun m!6234086 () Bool)

(assert (=> b!5177585 m!6234086))

(declare-fun m!6234088 () Bool)

(assert (=> b!5177585 m!6234088))

(declare-fun m!6234090 () Bool)

(assert (=> b!5177585 m!6234090))

(declare-fun m!6234092 () Bool)

(assert (=> b!5177585 m!6234092))

(declare-fun m!6234094 () Bool)

(assert (=> b!5177585 m!6234094))

(declare-fun m!6234096 () Bool)

(assert (=> b!5177585 m!6234096))

(assert (=> b!5177585 m!6234092))

(declare-fun m!6234098 () Bool)

(assert (=> b!5177585 m!6234098))

(declare-fun m!6234100 () Bool)

(assert (=> b!5177585 m!6234100))

(declare-fun m!6234102 () Bool)

(assert (=> b!5177585 m!6234102))

(assert (=> b!5177585 m!6234100))

(assert (=> b!5177585 m!6234086))

(assert (=> b!5177585 m!6234072))

(declare-fun m!6234104 () Bool)

(assert (=> bm!363818 m!6234104))

(declare-fun m!6234106 () Bool)

(assert (=> d!1672156 m!6234106))

(declare-fun m!6234108 () Bool)

(assert (=> d!1672156 m!6234108))

(declare-fun m!6234110 () Bool)

(assert (=> d!1672156 m!6234110))

(assert (=> d!1672156 m!6234092))

(declare-fun m!6234112 () Bool)

(assert (=> d!1672156 m!6234112))

(declare-fun m!6234114 () Bool)

(assert (=> d!1672156 m!6234114))

(assert (=> d!1672156 m!6234108))

(declare-fun m!6234116 () Bool)

(assert (=> d!1672156 m!6234116))

(assert (=> bm!363819 m!6234082))

(assert (=> bm!363768 d!1672156))

(declare-fun d!1672158 () Bool)

(declare-fun lt!2133709 () List!60287)

(assert (=> d!1672158 (= (++!13173 (t!373440 (t!373440 lt!2132884)) lt!2133709) (tail!10174 (tail!10174 input!5817)))))

(declare-fun e!3226088 () List!60287)

(assert (=> d!1672158 (= lt!2133709 e!3226088)))

(declare-fun c!891871 () Bool)

(assert (=> d!1672158 (= c!891871 ((_ is Cons!60163) (t!373440 (t!373440 lt!2132884))))))

(assert (=> d!1672158 (>= (size!39693 (tail!10174 (tail!10174 input!5817))) (size!39693 (t!373440 (t!373440 lt!2132884))))))

(assert (=> d!1672158 (= (getSuffix!3438 (tail!10174 (tail!10174 input!5817)) (t!373440 (t!373440 lt!2132884))) lt!2133709)))

(declare-fun b!5177595 () Bool)

(assert (=> b!5177595 (= e!3226088 (getSuffix!3438 (tail!10174 (tail!10174 (tail!10174 input!5817))) (t!373440 (t!373440 (t!373440 lt!2132884)))))))

(declare-fun b!5177596 () Bool)

(assert (=> b!5177596 (= e!3226088 (tail!10174 (tail!10174 input!5817)))))

(assert (= (and d!1672158 c!891871) b!5177595))

(assert (= (and d!1672158 (not c!891871)) b!5177596))

(declare-fun m!6234118 () Bool)

(assert (=> d!1672158 m!6234118))

(assert (=> d!1672158 m!6232680))

(declare-fun m!6234120 () Bool)

(assert (=> d!1672158 m!6234120))

(assert (=> d!1672158 m!6233052))

(assert (=> b!5177595 m!6232680))

(declare-fun m!6234122 () Bool)

(assert (=> b!5177595 m!6234122))

(assert (=> b!5177595 m!6234122))

(declare-fun m!6234124 () Bool)

(assert (=> b!5177595 m!6234124))

(assert (=> b!5177197 d!1672158))

(declare-fun d!1672160 () Bool)

(assert (=> d!1672160 (= (tail!10174 (tail!10174 input!5817)) (t!373440 (tail!10174 input!5817)))))

(assert (=> b!5177197 d!1672160))

(declare-fun b!5177599 () Bool)

(declare-fun res!2200085 () Bool)

(declare-fun e!3226090 () Bool)

(assert (=> b!5177599 (=> (not res!2200085) (not e!3226090))))

(declare-fun lt!2133710 () List!60287)

(assert (=> b!5177599 (= res!2200085 (= (size!39693 lt!2133710) (+ (size!39693 (t!373440 (_1!35235 lt!2133054))) (size!39693 (_2!35235 lt!2133054)))))))

(declare-fun b!5177598 () Bool)

(declare-fun e!3226089 () List!60287)

(assert (=> b!5177598 (= e!3226089 (Cons!60163 (h!66611 (t!373440 (_1!35235 lt!2133054))) (++!13173 (t!373440 (t!373440 (_1!35235 lt!2133054))) (_2!35235 lt!2133054))))))

(declare-fun b!5177597 () Bool)

(assert (=> b!5177597 (= e!3226089 (_2!35235 lt!2133054))))

(declare-fun b!5177600 () Bool)

(assert (=> b!5177600 (= e!3226090 (or (not (= (_2!35235 lt!2133054) Nil!60163)) (= lt!2133710 (t!373440 (_1!35235 lt!2133054)))))))

(declare-fun d!1672162 () Bool)

(assert (=> d!1672162 e!3226090))

(declare-fun res!2200084 () Bool)

(assert (=> d!1672162 (=> (not res!2200084) (not e!3226090))))

(assert (=> d!1672162 (= res!2200084 (= (content!10662 lt!2133710) ((_ map or) (content!10662 (t!373440 (_1!35235 lt!2133054))) (content!10662 (_2!35235 lt!2133054)))))))

(assert (=> d!1672162 (= lt!2133710 e!3226089)))

(declare-fun c!891872 () Bool)

(assert (=> d!1672162 (= c!891872 ((_ is Nil!60163) (t!373440 (_1!35235 lt!2133054))))))

(assert (=> d!1672162 (= (++!13173 (t!373440 (_1!35235 lt!2133054)) (_2!35235 lt!2133054)) lt!2133710)))

(assert (= (and d!1672162 c!891872) b!5177597))

(assert (= (and d!1672162 (not c!891872)) b!5177598))

(assert (= (and d!1672162 res!2200084) b!5177599))

(assert (= (and b!5177599 res!2200085) b!5177600))

(declare-fun m!6234126 () Bool)

(assert (=> b!5177599 m!6234126))

(assert (=> b!5177599 m!6232710))

(assert (=> b!5177599 m!6232782))

(declare-fun m!6234128 () Bool)

(assert (=> b!5177598 m!6234128))

(declare-fun m!6234130 () Bool)

(assert (=> d!1672162 m!6234130))

(assert (=> d!1672162 m!6234048))

(assert (=> d!1672162 m!6232790))

(assert (=> b!5177062 d!1672162))

(declare-fun d!1672164 () Bool)

(declare-fun c!891873 () Bool)

(assert (=> d!1672164 (= c!891873 ((_ is Nil!60163) lt!2133468))))

(declare-fun e!3226091 () (InoxSet C!29584))

(assert (=> d!1672164 (= (content!10662 lt!2133468) e!3226091)))

(declare-fun b!5177601 () Bool)

(assert (=> b!5177601 (= e!3226091 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177602 () Bool)

(assert (=> b!5177602 (= e!3226091 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133468) true) (content!10662 (t!373440 lt!2133468))))))

(assert (= (and d!1672164 c!891873) b!5177601))

(assert (= (and d!1672164 (not c!891873)) b!5177602))

(declare-fun m!6234132 () Bool)

(assert (=> b!5177602 m!6234132))

(declare-fun m!6234134 () Bool)

(assert (=> b!5177602 m!6234134))

(assert (=> d!1671814 d!1672164))

(declare-fun d!1672166 () Bool)

(declare-fun c!891874 () Bool)

(assert (=> d!1672166 (= c!891874 ((_ is Nil!60163) (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))))))

(declare-fun e!3226092 () (InoxSet C!29584))

(assert (=> d!1672166 (= (content!10662 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))) e!3226092)))

(declare-fun b!5177603 () Bool)

(assert (=> b!5177603 (= e!3226092 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177604 () Bool)

(assert (=> b!5177604 (= e!3226092 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))) true) (content!10662 (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))))))))

(assert (= (and d!1672166 c!891874) b!5177603))

(assert (= (and d!1672166 (not c!891874)) b!5177604))

(declare-fun m!6234136 () Bool)

(assert (=> b!5177604 m!6234136))

(declare-fun m!6234138 () Bool)

(assert (=> b!5177604 m!6234138))

(assert (=> d!1671814 d!1672166))

(declare-fun d!1672168 () Bool)

(declare-fun c!891875 () Bool)

(assert (=> d!1672168 (= c!891875 ((_ is Nil!60163) lt!2133050))))

(declare-fun e!3226093 () (InoxSet C!29584))

(assert (=> d!1672168 (= (content!10662 lt!2133050) e!3226093)))

(declare-fun b!5177605 () Bool)

(assert (=> b!5177605 (= e!3226093 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177606 () Bool)

(assert (=> b!5177606 (= e!3226093 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133050) true) (content!10662 (t!373440 lt!2133050))))))

(assert (= (and d!1672168 c!891875) b!5177605))

(assert (= (and d!1672168 (not c!891875)) b!5177606))

(declare-fun m!6234140 () Bool)

(assert (=> b!5177606 m!6234140))

(declare-fun m!6234142 () Bool)

(assert (=> b!5177606 m!6234142))

(assert (=> d!1671814 d!1672168))

(declare-fun d!1672170 () Bool)

(declare-fun res!2200086 () Bool)

(declare-fun e!3226094 () Bool)

(assert (=> d!1672170 (=> res!2200086 e!3226094)))

(assert (=> d!1672170 (= res!2200086 ((_ is Nil!60164) (t!373441 (exprs!4541 setElem!32334))))))

(assert (=> d!1672170 (= (forall!14161 (t!373441 (exprs!4541 setElem!32334)) lambda!258593) e!3226094)))

(declare-fun b!5177607 () Bool)

(declare-fun e!3226095 () Bool)

(assert (=> b!5177607 (= e!3226094 e!3226095)))

(declare-fun res!2200087 () Bool)

(assert (=> b!5177607 (=> (not res!2200087) (not e!3226095))))

(assert (=> b!5177607 (= res!2200087 (dynLambda!23882 lambda!258593 (h!66612 (t!373441 (exprs!4541 setElem!32334)))))))

(declare-fun b!5177608 () Bool)

(assert (=> b!5177608 (= e!3226095 (forall!14161 (t!373441 (t!373441 (exprs!4541 setElem!32334))) lambda!258593))))

(assert (= (and d!1672170 (not res!2200086)) b!5177607))

(assert (= (and b!5177607 res!2200087) b!5177608))

(declare-fun b_lambda!200995 () Bool)

(assert (=> (not b_lambda!200995) (not b!5177607)))

(declare-fun m!6234144 () Bool)

(assert (=> b!5177607 m!6234144))

(declare-fun m!6234146 () Bool)

(assert (=> b!5177608 m!6234146))

(assert (=> b!5177142 d!1672170))

(assert (=> b!5177203 d!1671494))

(assert (=> b!5177203 d!1672072))

(declare-fun b!5177611 () Bool)

(declare-fun res!2200089 () Bool)

(declare-fun e!3226097 () Bool)

(assert (=> b!5177611 (=> (not res!2200089) (not e!3226097))))

(declare-fun lt!2133711 () List!60287)

(assert (=> b!5177611 (= res!2200089 (= (size!39693 lt!2133711) (+ (size!39693 lt!2133136) (size!39693 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163)))))))

(declare-fun b!5177610 () Bool)

(declare-fun e!3226096 () List!60287)

(assert (=> b!5177610 (= e!3226096 (Cons!60163 (h!66611 lt!2133136) (++!13173 (t!373440 lt!2133136) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163))))))

(declare-fun b!5177609 () Bool)

(assert (=> b!5177609 (= e!3226096 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163))))

(declare-fun b!5177612 () Bool)

(assert (=> b!5177612 (= e!3226097 (or (not (= (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163) Nil!60163)) (= lt!2133711 lt!2133136)))))

(declare-fun d!1672172 () Bool)

(assert (=> d!1672172 e!3226097))

(declare-fun res!2200088 () Bool)

(assert (=> d!1672172 (=> (not res!2200088) (not e!3226097))))

(assert (=> d!1672172 (= res!2200088 (= (content!10662 lt!2133711) ((_ map or) (content!10662 lt!2133136) (content!10662 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163)))))))

(assert (=> d!1672172 (= lt!2133711 e!3226096)))

(declare-fun c!891876 () Bool)

(assert (=> d!1672172 (= c!891876 ((_ is Nil!60163) lt!2133136))))

(assert (=> d!1672172 (= (++!13173 lt!2133136 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163)) lt!2133711)))

(assert (= (and d!1672172 c!891876) b!5177609))

(assert (= (and d!1672172 (not c!891876)) b!5177610))

(assert (= (and d!1672172 res!2200088) b!5177611))

(assert (= (and b!5177611 res!2200089) b!5177612))

(declare-fun m!6234148 () Bool)

(assert (=> b!5177611 m!6234148))

(assert (=> b!5177611 m!6233194))

(declare-fun m!6234150 () Bool)

(assert (=> b!5177611 m!6234150))

(declare-fun m!6234152 () Bool)

(assert (=> b!5177610 m!6234152))

(declare-fun m!6234154 () Bool)

(assert (=> d!1672172 m!6234154))

(assert (=> d!1672172 m!6233944))

(declare-fun m!6234156 () Bool)

(assert (=> d!1672172 m!6234156))

(assert (=> b!5177203 d!1672172))

(declare-fun d!1672174 () Bool)

(assert (=> d!1672174 (= (head!11075 (getSuffix!3438 input!5817 lt!2133136)) (h!66611 (getSuffix!3438 input!5817 lt!2133136)))))

(assert (=> b!5177203 d!1672174))

(declare-fun b!5177615 () Bool)

(declare-fun res!2200091 () Bool)

(declare-fun e!3226099 () Bool)

(assert (=> b!5177615 (=> (not res!2200091) (not e!3226099))))

(declare-fun lt!2133712 () List!60287)

(assert (=> b!5177615 (= res!2200091 (= (size!39693 lt!2133712) (+ (size!39693 (++!13173 lt!2133136 (Cons!60163 lt!2133452 Nil!60163))) (size!39693 lt!2133455))))))

(declare-fun e!3226098 () List!60287)

(declare-fun b!5177614 () Bool)

(assert (=> b!5177614 (= e!3226098 (Cons!60163 (h!66611 (++!13173 lt!2133136 (Cons!60163 lt!2133452 Nil!60163))) (++!13173 (t!373440 (++!13173 lt!2133136 (Cons!60163 lt!2133452 Nil!60163))) lt!2133455)))))

(declare-fun b!5177613 () Bool)

(assert (=> b!5177613 (= e!3226098 lt!2133455)))

(declare-fun b!5177616 () Bool)

(assert (=> b!5177616 (= e!3226099 (or (not (= lt!2133455 Nil!60163)) (= lt!2133712 (++!13173 lt!2133136 (Cons!60163 lt!2133452 Nil!60163)))))))

(declare-fun d!1672176 () Bool)

(assert (=> d!1672176 e!3226099))

(declare-fun res!2200090 () Bool)

(assert (=> d!1672176 (=> (not res!2200090) (not e!3226099))))

(assert (=> d!1672176 (= res!2200090 (= (content!10662 lt!2133712) ((_ map or) (content!10662 (++!13173 lt!2133136 (Cons!60163 lt!2133452 Nil!60163))) (content!10662 lt!2133455))))))

(assert (=> d!1672176 (= lt!2133712 e!3226098)))

(declare-fun c!891877 () Bool)

(assert (=> d!1672176 (= c!891877 ((_ is Nil!60163) (++!13173 lt!2133136 (Cons!60163 lt!2133452 Nil!60163))))))

(assert (=> d!1672176 (= (++!13173 (++!13173 lt!2133136 (Cons!60163 lt!2133452 Nil!60163)) lt!2133455) lt!2133712)))

(assert (= (and d!1672176 c!891877) b!5177613))

(assert (= (and d!1672176 (not c!891877)) b!5177614))

(assert (= (and d!1672176 res!2200090) b!5177615))

(assert (= (and b!5177615 res!2200091) b!5177616))

(declare-fun m!6234158 () Bool)

(assert (=> b!5177615 m!6234158))

(assert (=> b!5177615 m!6233210))

(declare-fun m!6234160 () Bool)

(assert (=> b!5177615 m!6234160))

(declare-fun m!6234162 () Bool)

(assert (=> b!5177615 m!6234162))

(declare-fun m!6234164 () Bool)

(assert (=> b!5177614 m!6234164))

(declare-fun m!6234166 () Bool)

(assert (=> d!1672176 m!6234166))

(assert (=> d!1672176 m!6233210))

(declare-fun m!6234168 () Bool)

(assert (=> d!1672176 m!6234168))

(declare-fun m!6234170 () Bool)

(assert (=> d!1672176 m!6234170))

(assert (=> b!5177203 d!1672176))

(assert (=> b!5177203 d!1672096))

(declare-fun b!5177619 () Bool)

(declare-fun res!2200093 () Bool)

(declare-fun e!3226101 () Bool)

(assert (=> b!5177619 (=> (not res!2200093) (not e!3226101))))

(declare-fun lt!2133713 () List!60287)

(assert (=> b!5177619 (= res!2200093 (= (size!39693 lt!2133713) (+ (size!39693 lt!2133136) (size!39693 (Cons!60163 lt!2133452 Nil!60163)))))))

(declare-fun b!5177618 () Bool)

(declare-fun e!3226100 () List!60287)

(assert (=> b!5177618 (= e!3226100 (Cons!60163 (h!66611 lt!2133136) (++!13173 (t!373440 lt!2133136) (Cons!60163 lt!2133452 Nil!60163))))))

(declare-fun b!5177617 () Bool)

(assert (=> b!5177617 (= e!3226100 (Cons!60163 lt!2133452 Nil!60163))))

(declare-fun b!5177620 () Bool)

(assert (=> b!5177620 (= e!3226101 (or (not (= (Cons!60163 lt!2133452 Nil!60163) Nil!60163)) (= lt!2133713 lt!2133136)))))

(declare-fun d!1672178 () Bool)

(assert (=> d!1672178 e!3226101))

(declare-fun res!2200092 () Bool)

(assert (=> d!1672178 (=> (not res!2200092) (not e!3226101))))

(assert (=> d!1672178 (= res!2200092 (= (content!10662 lt!2133713) ((_ map or) (content!10662 lt!2133136) (content!10662 (Cons!60163 lt!2133452 Nil!60163)))))))

(assert (=> d!1672178 (= lt!2133713 e!3226100)))

(declare-fun c!891878 () Bool)

(assert (=> d!1672178 (= c!891878 ((_ is Nil!60163) lt!2133136))))

(assert (=> d!1672178 (= (++!13173 lt!2133136 (Cons!60163 lt!2133452 Nil!60163)) lt!2133713)))

(assert (= (and d!1672178 c!891878) b!5177617))

(assert (= (and d!1672178 (not c!891878)) b!5177618))

(assert (= (and d!1672178 res!2200092) b!5177619))

(assert (= (and b!5177619 res!2200093) b!5177620))

(declare-fun m!6234172 () Bool)

(assert (=> b!5177619 m!6234172))

(assert (=> b!5177619 m!6233194))

(declare-fun m!6234174 () Bool)

(assert (=> b!5177619 m!6234174))

(declare-fun m!6234176 () Bool)

(assert (=> b!5177618 m!6234176))

(declare-fun m!6234178 () Bool)

(assert (=> d!1672178 m!6234178))

(assert (=> d!1672178 m!6233944))

(declare-fun m!6234180 () Bool)

(assert (=> d!1672178 m!6234180))

(assert (=> b!5177203 d!1672178))

(declare-fun d!1672180 () Bool)

(assert (=> d!1672180 (= (++!13173 (++!13173 lt!2133136 (Cons!60163 lt!2133452 Nil!60163)) lt!2133455) input!5817)))

(declare-fun lt!2133714 () Unit!151998)

(assert (=> d!1672180 (= lt!2133714 (choose!38447 lt!2133136 lt!2133452 lt!2133455 input!5817))))

(assert (=> d!1672180 (= (++!13173 lt!2133136 (Cons!60163 lt!2133452 lt!2133455)) input!5817)))

(assert (=> d!1672180 (= (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2133136 lt!2133452 lt!2133455 input!5817) lt!2133714)))

(declare-fun bs!1205168 () Bool)

(assert (= bs!1205168 d!1672180))

(assert (=> bs!1205168 m!6233210))

(assert (=> bs!1205168 m!6233210))

(assert (=> bs!1205168 m!6233212))

(declare-fun m!6234182 () Bool)

(assert (=> bs!1205168 m!6234182))

(declare-fun m!6234184 () Bool)

(assert (=> bs!1205168 m!6234184))

(assert (=> b!5177203 d!1672180))

(declare-fun d!1672182 () Bool)

(assert (=> d!1672182 (= (head!11075 call!363705) (h!66611 call!363705))))

(assert (=> b!5177203 d!1672182))

(declare-fun d!1672184 () Bool)

(assert (=> d!1672184 (isPrefix!5790 (++!13173 lt!2133136 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163)) input!5817)))

(declare-fun lt!2133715 () Unit!151998)

(assert (=> d!1672184 (= lt!2133715 (choose!38441 lt!2133136 input!5817))))

(assert (=> d!1672184 (isPrefix!5790 lt!2133136 input!5817)))

(assert (=> d!1672184 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2133136 input!5817) lt!2133715)))

(declare-fun bs!1205169 () Bool)

(assert (= bs!1205169 d!1672184))

(declare-fun m!6234186 () Bool)

(assert (=> bs!1205169 m!6234186))

(assert (=> bs!1205169 m!6233218))

(assert (=> bs!1205169 m!6233220))

(assert (=> bs!1205169 m!6233226))

(assert (=> bs!1205169 m!6233226))

(assert (=> bs!1205169 m!6233228))

(assert (=> bs!1205169 m!6233218))

(assert (=> bs!1205169 m!6233954))

(assert (=> b!5177203 d!1672184))

(declare-fun d!1672186 () Bool)

(declare-fun e!3226102 () Bool)

(assert (=> d!1672186 e!3226102))

(declare-fun res!2200095 () Bool)

(assert (=> d!1672186 (=> res!2200095 e!3226102)))

(declare-fun lt!2133716 () Bool)

(assert (=> d!1672186 (= res!2200095 (not lt!2133716))))

(declare-fun e!3226103 () Bool)

(assert (=> d!1672186 (= lt!2133716 e!3226103)))

(declare-fun res!2200097 () Bool)

(assert (=> d!1672186 (=> res!2200097 e!3226103)))

(assert (=> d!1672186 (= res!2200097 ((_ is Nil!60163) (++!13173 lt!2133136 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163))))))

(assert (=> d!1672186 (= (isPrefix!5790 (++!13173 lt!2133136 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163)) input!5817) lt!2133716)))

(declare-fun b!5177621 () Bool)

(declare-fun e!3226104 () Bool)

(assert (=> b!5177621 (= e!3226103 e!3226104)))

(declare-fun res!2200094 () Bool)

(assert (=> b!5177621 (=> (not res!2200094) (not e!3226104))))

(assert (=> b!5177621 (= res!2200094 (not ((_ is Nil!60163) input!5817)))))

(declare-fun b!5177622 () Bool)

(declare-fun res!2200096 () Bool)

(assert (=> b!5177622 (=> (not res!2200096) (not e!3226104))))

(assert (=> b!5177622 (= res!2200096 (= (head!11075 (++!13173 lt!2133136 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163))) (head!11075 input!5817)))))

(declare-fun b!5177623 () Bool)

(assert (=> b!5177623 (= e!3226104 (isPrefix!5790 (tail!10174 (++!13173 lt!2133136 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163))) (tail!10174 input!5817)))))

(declare-fun b!5177624 () Bool)

(assert (=> b!5177624 (= e!3226102 (>= (size!39693 input!5817) (size!39693 (++!13173 lt!2133136 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133136)) Nil!60163)))))))

(assert (= (and d!1672186 (not res!2200097)) b!5177621))

(assert (= (and b!5177621 res!2200094) b!5177622))

(assert (= (and b!5177622 res!2200096) b!5177623))

(assert (= (and d!1672186 (not res!2200095)) b!5177624))

(assert (=> b!5177622 m!6233226))

(declare-fun m!6234188 () Bool)

(assert (=> b!5177622 m!6234188))

(assert (=> b!5177622 m!6232316))

(assert (=> b!5177623 m!6233226))

(declare-fun m!6234190 () Bool)

(assert (=> b!5177623 m!6234190))

(assert (=> b!5177623 m!6232140))

(assert (=> b!5177623 m!6234190))

(assert (=> b!5177623 m!6232140))

(declare-fun m!6234192 () Bool)

(assert (=> b!5177623 m!6234192))

(assert (=> b!5177624 m!6232070))

(assert (=> b!5177624 m!6233226))

(declare-fun m!6234194 () Bool)

(assert (=> b!5177624 m!6234194))

(assert (=> b!5177203 d!1672186))

(declare-fun d!1672188 () Bool)

(assert (=> d!1672188 (<= (size!39693 lt!2133136) (size!39693 input!5817))))

(declare-fun lt!2133717 () Unit!151998)

(assert (=> d!1672188 (= lt!2133717 (choose!38440 lt!2133136 input!5817))))

(assert (=> d!1672188 (isPrefix!5790 lt!2133136 input!5817)))

(assert (=> d!1672188 (= (lemmaIsPrefixThenSmallerEqSize!951 lt!2133136 input!5817) lt!2133717)))

(declare-fun bs!1205170 () Bool)

(assert (= bs!1205170 d!1672188))

(assert (=> bs!1205170 m!6233194))

(assert (=> bs!1205170 m!6232070))

(declare-fun m!6234196 () Bool)

(assert (=> bs!1205170 m!6234196))

(assert (=> bs!1205170 m!6233954))

(assert (=> b!5177203 d!1672188))

(declare-fun b!5177627 () Bool)

(declare-fun res!2200099 () Bool)

(declare-fun e!3226106 () Bool)

(assert (=> b!5177627 (=> (not res!2200099) (not e!3226106))))

(declare-fun lt!2133718 () List!60287)

(assert (=> b!5177627 (= res!2200099 (= (size!39693 lt!2133718) (+ (size!39693 lt!2133136) (size!39693 (Cons!60163 (head!11075 call!363705) Nil!60163)))))))

(declare-fun b!5177626 () Bool)

(declare-fun e!3226105 () List!60287)

(assert (=> b!5177626 (= e!3226105 (Cons!60163 (h!66611 lt!2133136) (++!13173 (t!373440 lt!2133136) (Cons!60163 (head!11075 call!363705) Nil!60163))))))

(declare-fun b!5177625 () Bool)

(assert (=> b!5177625 (= e!3226105 (Cons!60163 (head!11075 call!363705) Nil!60163))))

(declare-fun b!5177628 () Bool)

(assert (=> b!5177628 (= e!3226106 (or (not (= (Cons!60163 (head!11075 call!363705) Nil!60163) Nil!60163)) (= lt!2133718 lt!2133136)))))

(declare-fun d!1672190 () Bool)

(assert (=> d!1672190 e!3226106))

(declare-fun res!2200098 () Bool)

(assert (=> d!1672190 (=> (not res!2200098) (not e!3226106))))

(assert (=> d!1672190 (= res!2200098 (= (content!10662 lt!2133718) ((_ map or) (content!10662 lt!2133136) (content!10662 (Cons!60163 (head!11075 call!363705) Nil!60163)))))))

(assert (=> d!1672190 (= lt!2133718 e!3226105)))

(declare-fun c!891879 () Bool)

(assert (=> d!1672190 (= c!891879 ((_ is Nil!60163) lt!2133136))))

(assert (=> d!1672190 (= (++!13173 lt!2133136 (Cons!60163 (head!11075 call!363705) Nil!60163)) lt!2133718)))

(assert (= (and d!1672190 c!891879) b!5177625))

(assert (= (and d!1672190 (not c!891879)) b!5177626))

(assert (= (and d!1672190 res!2200098) b!5177627))

(assert (= (and b!5177627 res!2200099) b!5177628))

(declare-fun m!6234198 () Bool)

(assert (=> b!5177627 m!6234198))

(assert (=> b!5177627 m!6233194))

(declare-fun m!6234200 () Bool)

(assert (=> b!5177627 m!6234200))

(declare-fun m!6234202 () Bool)

(assert (=> b!5177626 m!6234202))

(declare-fun m!6234204 () Bool)

(assert (=> d!1672190 m!6234204))

(assert (=> d!1672190 m!6233944))

(declare-fun m!6234206 () Bool)

(assert (=> d!1672190 m!6234206))

(assert (=> b!5177203 d!1672190))

(declare-fun d!1672192 () Bool)

(declare-fun lt!2133719 () Int)

(assert (=> d!1672192 (>= lt!2133719 0)))

(declare-fun e!3226107 () Int)

(assert (=> d!1672192 (= lt!2133719 e!3226107)))

(declare-fun c!891880 () Bool)

(assert (=> d!1672192 (= c!891880 ((_ is Nil!60163) lt!2133136))))

(assert (=> d!1672192 (= (size!39693 lt!2133136) lt!2133719)))

(declare-fun b!5177629 () Bool)

(assert (=> b!5177629 (= e!3226107 0)))

(declare-fun b!5177630 () Bool)

(assert (=> b!5177630 (= e!3226107 (+ 1 (size!39693 (t!373440 lt!2133136))))))

(assert (= (and d!1672192 c!891880) b!5177629))

(assert (= (and d!1672192 (not c!891880)) b!5177630))

(declare-fun m!6234208 () Bool)

(assert (=> b!5177630 m!6234208))

(assert (=> b!5177203 d!1672192))

(declare-fun d!1672194 () Bool)

(declare-fun lt!2133720 () Int)

(assert (=> d!1672194 (>= lt!2133720 0)))

(declare-fun e!3226108 () Int)

(assert (=> d!1672194 (= lt!2133720 e!3226108)))

(declare-fun c!891881 () Bool)

(assert (=> d!1672194 (= c!891881 ((_ is Nil!60163) lt!2133332))))

(assert (=> d!1672194 (= (size!39693 lt!2133332) lt!2133720)))

(declare-fun b!5177631 () Bool)

(assert (=> b!5177631 (= e!3226108 0)))

(declare-fun b!5177632 () Bool)

(assert (=> b!5177632 (= e!3226108 (+ 1 (size!39693 (t!373440 lt!2133332))))))

(assert (= (and d!1672194 c!891881) b!5177631))

(assert (= (and d!1672194 (not c!891881)) b!5177632))

(declare-fun m!6234210 () Bool)

(assert (=> b!5177632 m!6234210))

(assert (=> b!5177071 d!1672194))

(assert (=> b!5177071 d!1671500))

(declare-fun d!1672196 () Bool)

(declare-fun lt!2133721 () Int)

(assert (=> d!1672196 (>= lt!2133721 0)))

(declare-fun e!3226109 () Int)

(assert (=> d!1672196 (= lt!2133721 e!3226109)))

(declare-fun c!891882 () Bool)

(assert (=> d!1672196 (= c!891882 ((_ is Nil!60163) lt!2132885))))

(assert (=> d!1672196 (= (size!39693 lt!2132885) lt!2133721)))

(declare-fun b!5177633 () Bool)

(assert (=> b!5177633 (= e!3226109 0)))

(declare-fun b!5177634 () Bool)

(assert (=> b!5177634 (= e!3226109 (+ 1 (size!39693 (t!373440 lt!2132885))))))

(assert (= (and d!1672196 c!891882) b!5177633))

(assert (= (and d!1672196 (not c!891882)) b!5177634))

(declare-fun m!6234212 () Bool)

(assert (=> b!5177634 m!6234212))

(assert (=> b!5177071 d!1672196))

(declare-fun d!1672198 () Bool)

(declare-fun c!891883 () Bool)

(assert (=> d!1672198 (= c!891883 ((_ is Nil!60163) lt!2133376))))

(declare-fun e!3226110 () (InoxSet C!29584))

(assert (=> d!1672198 (= (content!10662 lt!2133376) e!3226110)))

(declare-fun b!5177635 () Bool)

(assert (=> b!5177635 (= e!3226110 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177636 () Bool)

(assert (=> b!5177636 (= e!3226110 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133376) true) (content!10662 (t!373440 lt!2133376))))))

(assert (= (and d!1672198 c!891883) b!5177635))

(assert (= (and d!1672198 (not c!891883)) b!5177636))

(declare-fun m!6234214 () Bool)

(assert (=> b!5177636 m!6234214))

(declare-fun m!6234216 () Bool)

(assert (=> b!5177636 m!6234216))

(assert (=> d!1671740 d!1672198))

(declare-fun d!1672200 () Bool)

(declare-fun c!891884 () Bool)

(assert (=> d!1672200 (= c!891884 ((_ is Nil!60163) (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))))))

(declare-fun e!3226111 () (InoxSet C!29584))

(assert (=> d!1672200 (= (content!10662 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))) e!3226111)))

(declare-fun b!5177637 () Bool)

(assert (=> b!5177637 (= e!3226111 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177638 () Bool)

(assert (=> b!5177638 (= e!3226111 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))) true) (content!10662 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))))))))

(assert (= (and d!1672200 c!891884) b!5177637))

(assert (= (and d!1672200 (not c!891884)) b!5177638))

(declare-fun m!6234218 () Bool)

(assert (=> b!5177638 m!6234218))

(declare-fun m!6234220 () Bool)

(assert (=> b!5177638 m!6234220))

(assert (=> d!1671740 d!1672200))

(declare-fun d!1672202 () Bool)

(declare-fun c!891885 () Bool)

(assert (=> d!1672202 (= c!891885 ((_ is Nil!60163) lt!2133131))))

(declare-fun e!3226112 () (InoxSet C!29584))

(assert (=> d!1672202 (= (content!10662 lt!2133131) e!3226112)))

(declare-fun b!5177639 () Bool)

(assert (=> b!5177639 (= e!3226112 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177640 () Bool)

(assert (=> b!5177640 (= e!3226112 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133131) true) (content!10662 (t!373440 lt!2133131))))))

(assert (= (and d!1672202 c!891885) b!5177639))

(assert (= (and d!1672202 (not c!891885)) b!5177640))

(declare-fun m!6234222 () Bool)

(assert (=> b!5177640 m!6234222))

(declare-fun m!6234224 () Bool)

(assert (=> b!5177640 m!6234224))

(assert (=> d!1671740 d!1672202))

(declare-fun bs!1205171 () Bool)

(declare-fun d!1672204 () Bool)

(assert (= bs!1205171 (and d!1672204 b!5176997)))

(declare-fun lambda!258673 () Int)

(assert (=> bs!1205171 (not (= lambda!258673 lambda!258612))))

(declare-fun bs!1205172 () Bool)

(assert (= bs!1205172 (and d!1672204 d!1672052)))

(assert (=> bs!1205172 (not (= lambda!258673 lambda!258666))))

(declare-fun bs!1205173 () Bool)

(assert (= bs!1205173 (and d!1672204 d!1671804)))

(assert (=> bs!1205173 (= lambda!258673 lambda!258624)))

(declare-fun bs!1205174 () Bool)

(assert (= bs!1205174 (and d!1672204 d!1671612)))

(assert (=> bs!1205174 (not (= lambda!258673 lambda!258610))))

(declare-fun bs!1205175 () Bool)

(assert (= bs!1205175 (and d!1672204 b!5177056)))

(assert (=> bs!1205175 (not (= lambda!258673 lambda!258618))))

(declare-fun bs!1205176 () Bool)

(assert (= bs!1205176 (and d!1672204 d!1672104)))

(assert (=> bs!1205176 (not (= lambda!258673 lambda!258668))))

(declare-fun bs!1205177 () Bool)

(assert (= bs!1205177 (and d!1672204 d!1671636)))

(assert (=> bs!1205177 (= lambda!258673 lambda!258613)))

(declare-fun bs!1205178 () Bool)

(assert (= bs!1205178 (and d!1672204 d!1672032)))

(assert (=> bs!1205178 (= lambda!258673 lambda!258656)))

(declare-fun bs!1205179 () Bool)

(assert (= bs!1205179 (and d!1672204 d!1671546)))

(assert (=> bs!1205179 (= lambda!258673 lambda!258592)))

(declare-fun bs!1205180 () Bool)

(assert (= bs!1205180 (and d!1672204 b!5176996)))

(assert (=> bs!1205180 (not (= lambda!258673 lambda!258611))))

(declare-fun bs!1205181 () Bool)

(assert (= bs!1205181 (and d!1672204 d!1672118)))

(assert (=> bs!1205181 (not (= lambda!258673 lambda!258671))))

(declare-fun bs!1205182 () Bool)

(assert (= bs!1205182 (and d!1672204 d!1672040)))

(assert (=> bs!1205182 (not (= lambda!258673 lambda!258663))))

(declare-fun bs!1205183 () Bool)

(assert (= bs!1205183 (and d!1672204 b!5177534)))

(assert (=> bs!1205183 (not (= lambda!258673 lambda!258669))))

(declare-fun bs!1205184 () Bool)

(assert (= bs!1205184 (and d!1672204 b!5177535)))

(assert (=> bs!1205184 (not (= lambda!258673 lambda!258670))))

(declare-fun bs!1205185 () Bool)

(assert (= bs!1205185 (and d!1672204 b!5177055)))

(assert (=> bs!1205185 (not (= lambda!258673 lambda!258617))))

(declare-fun bs!1205186 () Bool)

(assert (= bs!1205186 (and d!1672204 d!1671684)))

(assert (=> bs!1205186 (not (= lambda!258673 lambda!258616))))

(assert (=> d!1672204 (= (nullableZipper!1195 call!363671) (exists!1939 call!363671 lambda!258673))))

(declare-fun bs!1205187 () Bool)

(assert (= bs!1205187 d!1672204))

(declare-fun m!6234226 () Bool)

(assert (=> bs!1205187 m!6234226))

(assert (=> bm!363763 d!1672204))

(declare-fun bm!363821 () Bool)

(declare-fun call!363826 () Bool)

(assert (=> bm!363821 (= call!363826 (nullableZipper!1195 call!363749))))

(declare-fun bm!363822 () Bool)

(declare-fun call!363833 () (InoxSet Context!8082))

(declare-fun call!363829 () C!29584)

(assert (=> bm!363822 (= call!363833 (derivationStepZipper!1003 call!363749 call!363829))))

(declare-fun b!5177641 () Bool)

(declare-fun e!3226113 () Unit!151998)

(declare-fun Unit!152060 () Unit!151998)

(assert (=> b!5177641 (= e!3226113 Unit!152060)))

(declare-fun b!5177642 () Bool)

(declare-fun e!3226119 () tuple2!63864)

(declare-fun e!3226114 () tuple2!63864)

(assert (=> b!5177642 (= e!3226119 e!3226114)))

(declare-fun lt!2133745 () tuple2!63864)

(declare-fun call!363832 () tuple2!63864)

(assert (=> b!5177642 (= lt!2133745 call!363832)))

(declare-fun c!891890 () Bool)

(assert (=> b!5177642 (= c!891890 (isEmpty!32211 (_1!35235 lt!2133745)))))

(declare-fun bm!363823 () Bool)

(declare-fun call!363830 () Unit!151998)

(assert (=> bm!363823 (= call!363830 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2133313 input!5817))))

(declare-fun b!5177643 () Bool)

(declare-fun e!3226117 () tuple2!63864)

(assert (=> b!5177643 (= e!3226117 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun b!5177644 () Bool)

(declare-fun e!3226116 () Bool)

(declare-fun lt!2133743 () tuple2!63864)

(assert (=> b!5177644 (= e!3226116 (>= (size!39693 (_1!35235 lt!2133743)) (size!39693 lt!2133313)))))

(declare-fun b!5177645 () Bool)

(declare-fun c!891889 () Bool)

(assert (=> b!5177645 (= c!891889 call!363826)))

(declare-fun lt!2133735 () Unit!151998)

(declare-fun lt!2133725 () Unit!151998)

(assert (=> b!5177645 (= lt!2133735 lt!2133725)))

(declare-fun lt!2133736 () C!29584)

(declare-fun lt!2133739 () List!60287)

(assert (=> b!5177645 (= (++!13173 (++!13173 lt!2133313 (Cons!60163 lt!2133736 Nil!60163)) lt!2133739) input!5817)))

(assert (=> b!5177645 (= lt!2133725 (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2133313 lt!2133736 lt!2133739 input!5817))))

(assert (=> b!5177645 (= lt!2133739 (tail!10174 call!363743))))

(assert (=> b!5177645 (= lt!2133736 (head!11075 call!363743))))

(declare-fun lt!2133738 () Unit!151998)

(declare-fun lt!2133727 () Unit!151998)

(assert (=> b!5177645 (= lt!2133738 lt!2133727)))

(assert (=> b!5177645 (isPrefix!5790 (++!13173 lt!2133313 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133313)) Nil!60163)) input!5817)))

(assert (=> b!5177645 (= lt!2133727 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2133313 input!5817))))

(declare-fun lt!2133744 () List!60287)

(assert (=> b!5177645 (= lt!2133744 (++!13173 lt!2133313 (Cons!60163 (head!11075 call!363743) Nil!60163)))))

(declare-fun lt!2133742 () Unit!151998)

(assert (=> b!5177645 (= lt!2133742 e!3226113)))

(declare-fun c!891891 () Bool)

(assert (=> b!5177645 (= c!891891 (= (size!39693 lt!2133313) (size!39693 input!5817)))))

(declare-fun lt!2133737 () Unit!151998)

(declare-fun lt!2133728 () Unit!151998)

(assert (=> b!5177645 (= lt!2133737 lt!2133728)))

(assert (=> b!5177645 (<= (size!39693 lt!2133313) (size!39693 input!5817))))

(assert (=> b!5177645 (= lt!2133728 (lemmaIsPrefixThenSmallerEqSize!951 lt!2133313 input!5817))))

(declare-fun e!3226120 () tuple2!63864)

(assert (=> b!5177645 (= e!3226120 e!3226119)))

(declare-fun b!5177646 () Bool)

(assert (=> b!5177646 (= e!3226117 e!3226120)))

(declare-fun c!891886 () Bool)

(assert (=> b!5177646 (= c!891886 (= (+ (size!39693 lt!2132884) 1) (size!39693 input!5817)))))

(declare-fun b!5177647 () Bool)

(assert (=> b!5177647 (= e!3226114 lt!2133745)))

(declare-fun b!5177648 () Bool)

(declare-fun e!3226118 () tuple2!63864)

(assert (=> b!5177648 (= e!3226118 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun bm!363825 () Bool)

(declare-fun call!363831 () Bool)

(assert (=> bm!363825 (= call!363831 (isPrefix!5790 input!5817 input!5817))))

(declare-fun b!5177649 () Bool)

(assert (=> b!5177649 (= e!3226114 (tuple2!63865 lt!2133313 call!363743))))

(declare-fun b!5177650 () Bool)

(declare-fun Unit!152061 () Unit!151998)

(assert (=> b!5177650 (= e!3226113 Unit!152061)))

(declare-fun lt!2133724 () Unit!151998)

(declare-fun call!363828 () Unit!151998)

(assert (=> b!5177650 (= lt!2133724 call!363828)))

(assert (=> b!5177650 call!363831))

(declare-fun lt!2133733 () Unit!151998)

(assert (=> b!5177650 (= lt!2133733 lt!2133724)))

(declare-fun lt!2133722 () Unit!151998)

(assert (=> b!5177650 (= lt!2133722 call!363830)))

(assert (=> b!5177650 (= input!5817 lt!2133313)))

(declare-fun lt!2133734 () Unit!151998)

(assert (=> b!5177650 (= lt!2133734 lt!2133722)))

(assert (=> b!5177650 false))

(declare-fun b!5177651 () Bool)

(declare-fun c!891888 () Bool)

(assert (=> b!5177651 (= c!891888 call!363826)))

(declare-fun lt!2133729 () Unit!151998)

(declare-fun lt!2133741 () Unit!151998)

(assert (=> b!5177651 (= lt!2133729 lt!2133741)))

(assert (=> b!5177651 (= input!5817 lt!2133313)))

(assert (=> b!5177651 (= lt!2133741 call!363830)))

(declare-fun lt!2133731 () Unit!151998)

(declare-fun lt!2133730 () Unit!151998)

(assert (=> b!5177651 (= lt!2133731 lt!2133730)))

(assert (=> b!5177651 call!363831))

(assert (=> b!5177651 (= lt!2133730 call!363828)))

(assert (=> b!5177651 (= e!3226120 e!3226118)))

(declare-fun b!5177652 () Bool)

(assert (=> b!5177652 (= e!3226119 call!363832)))

(declare-fun bm!363826 () Bool)

(declare-fun call!363827 () List!60287)

(assert (=> bm!363826 (= call!363832 (findLongestMatchInnerZipper!313 call!363833 lt!2133744 (+ (size!39693 lt!2132884) 1 1) call!363827 input!5817 (size!39693 input!5817)))))

(declare-fun b!5177653 () Bool)

(declare-fun e!3226115 () Bool)

(assert (=> b!5177653 (= e!3226115 e!3226116)))

(declare-fun res!2200101 () Bool)

(assert (=> b!5177653 (=> res!2200101 e!3226116)))

(assert (=> b!5177653 (= res!2200101 (isEmpty!32211 (_1!35235 lt!2133743)))))

(declare-fun bm!363827 () Bool)

(assert (=> bm!363827 (= call!363829 (head!11075 call!363743))))

(declare-fun d!1672206 () Bool)

(assert (=> d!1672206 e!3226115))

(declare-fun res!2200100 () Bool)

(assert (=> d!1672206 (=> (not res!2200100) (not e!3226115))))

(assert (=> d!1672206 (= res!2200100 (= (++!13173 (_1!35235 lt!2133743) (_2!35235 lt!2133743)) input!5817))))

(assert (=> d!1672206 (= lt!2133743 e!3226117)))

(declare-fun c!891887 () Bool)

(assert (=> d!1672206 (= c!891887 (lostCauseZipper!1343 call!363749))))

(declare-fun lt!2133732 () Unit!151998)

(declare-fun Unit!152062 () Unit!151998)

(assert (=> d!1672206 (= lt!2133732 Unit!152062)))

(assert (=> d!1672206 (= (getSuffix!3438 input!5817 lt!2133313) call!363743)))

(declare-fun lt!2133740 () Unit!151998)

(declare-fun lt!2133746 () Unit!151998)

(assert (=> d!1672206 (= lt!2133740 lt!2133746)))

(declare-fun lt!2133747 () List!60287)

(assert (=> d!1672206 (= call!363743 lt!2133747)))

(assert (=> d!1672206 (= lt!2133746 (lemmaSamePrefixThenSameSuffix!2710 lt!2133313 call!363743 lt!2133313 lt!2133747 input!5817))))

(assert (=> d!1672206 (= lt!2133747 (getSuffix!3438 input!5817 lt!2133313))))

(declare-fun lt!2133726 () Unit!151998)

(declare-fun lt!2133723 () Unit!151998)

(assert (=> d!1672206 (= lt!2133726 lt!2133723)))

(assert (=> d!1672206 (isPrefix!5790 lt!2133313 (++!13173 lt!2133313 call!363743))))

(assert (=> d!1672206 (= lt!2133723 (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2133313 call!363743))))

(assert (=> d!1672206 (= (++!13173 lt!2133313 call!363743) input!5817)))

(assert (=> d!1672206 (= (findLongestMatchInnerZipper!313 call!363749 lt!2133313 (+ (size!39693 lt!2132884) 1) call!363743 input!5817 (size!39693 input!5817)) lt!2133743)))

(declare-fun bm!363824 () Bool)

(assert (=> bm!363824 (= call!363827 (tail!10174 call!363743))))

(declare-fun b!5177654 () Bool)

(assert (=> b!5177654 (= e!3226118 (tuple2!63865 lt!2133313 Nil!60163))))

(declare-fun bm!363828 () Bool)

(assert (=> bm!363828 (= call!363828 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (= (and d!1672206 c!891887) b!5177643))

(assert (= (and d!1672206 (not c!891887)) b!5177646))

(assert (= (and b!5177646 c!891886) b!5177651))

(assert (= (and b!5177646 (not c!891886)) b!5177645))

(assert (= (and b!5177651 c!891888) b!5177654))

(assert (= (and b!5177651 (not c!891888)) b!5177648))

(assert (= (and b!5177645 c!891891) b!5177650))

(assert (= (and b!5177645 (not c!891891)) b!5177641))

(assert (= (and b!5177645 c!891889) b!5177642))

(assert (= (and b!5177645 (not c!891889)) b!5177652))

(assert (= (and b!5177642 c!891890) b!5177649))

(assert (= (and b!5177642 (not c!891890)) b!5177647))

(assert (= (or b!5177642 b!5177652) bm!363824))

(assert (= (or b!5177642 b!5177652) bm!363827))

(assert (= (or b!5177642 b!5177652) bm!363822))

(assert (= (or b!5177642 b!5177652) bm!363826))

(assert (= (or b!5177651 b!5177650) bm!363828))

(assert (= (or b!5177651 b!5177645) bm!363821))

(assert (= (or b!5177651 b!5177650) bm!363825))

(assert (= (or b!5177651 b!5177650) bm!363823))

(assert (= (and d!1672206 res!2200100) b!5177653))

(assert (= (and b!5177653 (not res!2200101)) b!5177644))

(declare-fun m!6234228 () Bool)

(assert (=> bm!363823 m!6234228))

(assert (=> bm!363828 m!6232108))

(declare-fun m!6234230 () Bool)

(assert (=> b!5177642 m!6234230))

(declare-fun m!6234232 () Bool)

(assert (=> b!5177644 m!6234232))

(declare-fun m!6234234 () Bool)

(assert (=> b!5177644 m!6234234))

(declare-fun m!6234236 () Bool)

(assert (=> bm!363821 m!6234236))

(declare-fun m!6234238 () Bool)

(assert (=> bm!363824 m!6234238))

(assert (=> bm!363825 m!6232110))

(declare-fun m!6234240 () Bool)

(assert (=> bm!363822 m!6234240))

(declare-fun m!6234242 () Bool)

(assert (=> b!5177653 m!6234242))

(declare-fun m!6234244 () Bool)

(assert (=> b!5177645 m!6234244))

(assert (=> b!5177645 m!6234238))

(assert (=> b!5177645 m!6232070))

(declare-fun m!6234246 () Bool)

(assert (=> b!5177645 m!6234246))

(declare-fun m!6234248 () Bool)

(assert (=> b!5177645 m!6234248))

(declare-fun m!6234250 () Bool)

(assert (=> b!5177645 m!6234250))

(declare-fun m!6234252 () Bool)

(assert (=> b!5177645 m!6234252))

(declare-fun m!6234254 () Bool)

(assert (=> b!5177645 m!6234254))

(declare-fun m!6234256 () Bool)

(assert (=> b!5177645 m!6234256))

(declare-fun m!6234258 () Bool)

(assert (=> b!5177645 m!6234258))

(assert (=> b!5177645 m!6234254))

(declare-fun m!6234260 () Bool)

(assert (=> b!5177645 m!6234260))

(declare-fun m!6234262 () Bool)

(assert (=> b!5177645 m!6234262))

(declare-fun m!6234264 () Bool)

(assert (=> b!5177645 m!6234264))

(assert (=> b!5177645 m!6234262))

(assert (=> b!5177645 m!6234248))

(assert (=> b!5177645 m!6234234))

(assert (=> bm!363826 m!6232070))

(declare-fun m!6234266 () Bool)

(assert (=> bm!363826 m!6234266))

(declare-fun m!6234268 () Bool)

(assert (=> d!1672206 m!6234268))

(declare-fun m!6234270 () Bool)

(assert (=> d!1672206 m!6234270))

(declare-fun m!6234272 () Bool)

(assert (=> d!1672206 m!6234272))

(assert (=> d!1672206 m!6234254))

(declare-fun m!6234274 () Bool)

(assert (=> d!1672206 m!6234274))

(declare-fun m!6234276 () Bool)

(assert (=> d!1672206 m!6234276))

(assert (=> d!1672206 m!6234270))

(declare-fun m!6234278 () Bool)

(assert (=> d!1672206 m!6234278))

(assert (=> bm!363827 m!6234244))

(assert (=> bm!363742 d!1672206))

(declare-fun bm!363829 () Bool)

(declare-fun call!363834 () Bool)

(assert (=> bm!363829 (= call!363834 (nullableZipper!1195 call!363735))))

(declare-fun bm!363830 () Bool)

(declare-fun call!363841 () (InoxSet Context!8082))

(declare-fun call!363837 () C!29584)

(assert (=> bm!363830 (= call!363841 (derivationStepZipper!1003 call!363735 call!363837))))

(declare-fun b!5177655 () Bool)

(declare-fun e!3226121 () Unit!151998)

(declare-fun Unit!152063 () Unit!151998)

(assert (=> b!5177655 (= e!3226121 Unit!152063)))

(declare-fun b!5177656 () Bool)

(declare-fun e!3226127 () tuple2!63864)

(declare-fun e!3226122 () tuple2!63864)

(assert (=> b!5177656 (= e!3226127 e!3226122)))

(declare-fun lt!2133771 () tuple2!63864)

(declare-fun call!363840 () tuple2!63864)

(assert (=> b!5177656 (= lt!2133771 call!363840)))

(declare-fun c!891896 () Bool)

(assert (=> b!5177656 (= c!891896 (isEmpty!32211 (_1!35235 lt!2133771)))))

(declare-fun bm!363831 () Bool)

(declare-fun call!363838 () Unit!151998)

(assert (=> bm!363831 (= call!363838 (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2133245 input!5817))))

(declare-fun b!5177657 () Bool)

(declare-fun e!3226125 () tuple2!63864)

(assert (=> b!5177657 (= e!3226125 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun b!5177658 () Bool)

(declare-fun e!3226124 () Bool)

(declare-fun lt!2133769 () tuple2!63864)

(assert (=> b!5177658 (= e!3226124 (>= (size!39693 (_1!35235 lt!2133769)) (size!39693 lt!2133245)))))

(declare-fun b!5177659 () Bool)

(declare-fun c!891895 () Bool)

(assert (=> b!5177659 (= c!891895 call!363834)))

(declare-fun lt!2133761 () Unit!151998)

(declare-fun lt!2133751 () Unit!151998)

(assert (=> b!5177659 (= lt!2133761 lt!2133751)))

(declare-fun lt!2133765 () List!60287)

(declare-fun lt!2133762 () C!29584)

(assert (=> b!5177659 (= (++!13173 (++!13173 lt!2133245 (Cons!60163 lt!2133762 Nil!60163)) lt!2133765) input!5817)))

(assert (=> b!5177659 (= lt!2133751 (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2133245 lt!2133762 lt!2133765 input!5817))))

(assert (=> b!5177659 (= lt!2133765 (tail!10174 call!363729))))

(assert (=> b!5177659 (= lt!2133762 (head!11075 call!363729))))

(declare-fun lt!2133764 () Unit!151998)

(declare-fun lt!2133753 () Unit!151998)

(assert (=> b!5177659 (= lt!2133764 lt!2133753)))

(assert (=> b!5177659 (isPrefix!5790 (++!13173 lt!2133245 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133245)) Nil!60163)) input!5817)))

(assert (=> b!5177659 (= lt!2133753 (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2133245 input!5817))))

(declare-fun lt!2133770 () List!60287)

(assert (=> b!5177659 (= lt!2133770 (++!13173 lt!2133245 (Cons!60163 (head!11075 call!363729) Nil!60163)))))

(declare-fun lt!2133768 () Unit!151998)

(assert (=> b!5177659 (= lt!2133768 e!3226121)))

(declare-fun c!891897 () Bool)

(assert (=> b!5177659 (= c!891897 (= (size!39693 lt!2133245) (size!39693 input!5817)))))

(declare-fun lt!2133763 () Unit!151998)

(declare-fun lt!2133754 () Unit!151998)

(assert (=> b!5177659 (= lt!2133763 lt!2133754)))

(assert (=> b!5177659 (<= (size!39693 lt!2133245) (size!39693 input!5817))))

(assert (=> b!5177659 (= lt!2133754 (lemmaIsPrefixThenSmallerEqSize!951 lt!2133245 input!5817))))

(declare-fun e!3226128 () tuple2!63864)

(assert (=> b!5177659 (= e!3226128 e!3226127)))

(declare-fun b!5177660 () Bool)

(assert (=> b!5177660 (= e!3226125 e!3226128)))

(declare-fun c!891892 () Bool)

(assert (=> b!5177660 (= c!891892 (= (+ lt!2132889 1 1) lt!2132880))))

(declare-fun b!5177661 () Bool)

(assert (=> b!5177661 (= e!3226122 lt!2133771)))

(declare-fun b!5177662 () Bool)

(declare-fun e!3226126 () tuple2!63864)

(assert (=> b!5177662 (= e!3226126 (tuple2!63865 Nil!60163 input!5817))))

(declare-fun bm!363833 () Bool)

(declare-fun call!363839 () Bool)

(assert (=> bm!363833 (= call!363839 (isPrefix!5790 input!5817 input!5817))))

(declare-fun b!5177663 () Bool)

(assert (=> b!5177663 (= e!3226122 (tuple2!63865 lt!2133245 call!363729))))

(declare-fun b!5177664 () Bool)

(declare-fun Unit!152064 () Unit!151998)

(assert (=> b!5177664 (= e!3226121 Unit!152064)))

(declare-fun lt!2133750 () Unit!151998)

(declare-fun call!363836 () Unit!151998)

(assert (=> b!5177664 (= lt!2133750 call!363836)))

(assert (=> b!5177664 call!363839))

(declare-fun lt!2133759 () Unit!151998)

(assert (=> b!5177664 (= lt!2133759 lt!2133750)))

(declare-fun lt!2133748 () Unit!151998)

(assert (=> b!5177664 (= lt!2133748 call!363838)))

(assert (=> b!5177664 (= input!5817 lt!2133245)))

(declare-fun lt!2133760 () Unit!151998)

(assert (=> b!5177664 (= lt!2133760 lt!2133748)))

(assert (=> b!5177664 false))

(declare-fun b!5177665 () Bool)

(declare-fun c!891894 () Bool)

(assert (=> b!5177665 (= c!891894 call!363834)))

(declare-fun lt!2133755 () Unit!151998)

(declare-fun lt!2133767 () Unit!151998)

(assert (=> b!5177665 (= lt!2133755 lt!2133767)))

(assert (=> b!5177665 (= input!5817 lt!2133245)))

(assert (=> b!5177665 (= lt!2133767 call!363838)))

(declare-fun lt!2133757 () Unit!151998)

(declare-fun lt!2133756 () Unit!151998)

(assert (=> b!5177665 (= lt!2133757 lt!2133756)))

(assert (=> b!5177665 call!363839))

(assert (=> b!5177665 (= lt!2133756 call!363836)))

(assert (=> b!5177665 (= e!3226128 e!3226126)))

(declare-fun b!5177666 () Bool)

(assert (=> b!5177666 (= e!3226127 call!363840)))

(declare-fun call!363835 () List!60287)

(declare-fun bm!363834 () Bool)

(assert (=> bm!363834 (= call!363840 (findLongestMatchInnerZipper!313 call!363841 lt!2133770 (+ lt!2132889 1 1 1) call!363835 input!5817 lt!2132880))))

(declare-fun b!5177667 () Bool)

(declare-fun e!3226123 () Bool)

(assert (=> b!5177667 (= e!3226123 e!3226124)))

(declare-fun res!2200103 () Bool)

(assert (=> b!5177667 (=> res!2200103 e!3226124)))

(assert (=> b!5177667 (= res!2200103 (isEmpty!32211 (_1!35235 lt!2133769)))))

(declare-fun bm!363835 () Bool)

(assert (=> bm!363835 (= call!363837 (head!11075 call!363729))))

(declare-fun d!1672208 () Bool)

(assert (=> d!1672208 e!3226123))

(declare-fun res!2200102 () Bool)

(assert (=> d!1672208 (=> (not res!2200102) (not e!3226123))))

(assert (=> d!1672208 (= res!2200102 (= (++!13173 (_1!35235 lt!2133769) (_2!35235 lt!2133769)) input!5817))))

(assert (=> d!1672208 (= lt!2133769 e!3226125)))

(declare-fun c!891893 () Bool)

(assert (=> d!1672208 (= c!891893 (lostCauseZipper!1343 call!363735))))

(declare-fun lt!2133758 () Unit!151998)

(declare-fun Unit!152065 () Unit!151998)

(assert (=> d!1672208 (= lt!2133758 Unit!152065)))

(assert (=> d!1672208 (= (getSuffix!3438 input!5817 lt!2133245) call!363729)))

(declare-fun lt!2133766 () Unit!151998)

(declare-fun lt!2133772 () Unit!151998)

(assert (=> d!1672208 (= lt!2133766 lt!2133772)))

(declare-fun lt!2133773 () List!60287)

(assert (=> d!1672208 (= call!363729 lt!2133773)))

(assert (=> d!1672208 (= lt!2133772 (lemmaSamePrefixThenSameSuffix!2710 lt!2133245 call!363729 lt!2133245 lt!2133773 input!5817))))

(assert (=> d!1672208 (= lt!2133773 (getSuffix!3438 input!5817 lt!2133245))))

(declare-fun lt!2133752 () Unit!151998)

(declare-fun lt!2133749 () Unit!151998)

(assert (=> d!1672208 (= lt!2133752 lt!2133749)))

(assert (=> d!1672208 (isPrefix!5790 lt!2133245 (++!13173 lt!2133245 call!363729))))

(assert (=> d!1672208 (= lt!2133749 (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2133245 call!363729))))

(assert (=> d!1672208 (= (++!13173 lt!2133245 call!363729) input!5817)))

(assert (=> d!1672208 (= (findLongestMatchInnerZipper!313 call!363735 lt!2133245 (+ lt!2132889 1 1) call!363729 input!5817 lt!2132880) lt!2133769)))

(declare-fun bm!363832 () Bool)

(assert (=> bm!363832 (= call!363835 (tail!10174 call!363729))))

(declare-fun b!5177668 () Bool)

(assert (=> b!5177668 (= e!3226126 (tuple2!63865 lt!2133245 Nil!60163))))

(declare-fun bm!363836 () Bool)

(assert (=> bm!363836 (= call!363836 (lemmaIsPrefixRefl!3795 input!5817 input!5817))))

(assert (= (and d!1672208 c!891893) b!5177657))

(assert (= (and d!1672208 (not c!891893)) b!5177660))

(assert (= (and b!5177660 c!891892) b!5177665))

(assert (= (and b!5177660 (not c!891892)) b!5177659))

(assert (= (and b!5177665 c!891894) b!5177668))

(assert (= (and b!5177665 (not c!891894)) b!5177662))

(assert (= (and b!5177659 c!891897) b!5177664))

(assert (= (and b!5177659 (not c!891897)) b!5177655))

(assert (= (and b!5177659 c!891895) b!5177656))

(assert (= (and b!5177659 (not c!891895)) b!5177666))

(assert (= (and b!5177656 c!891896) b!5177663))

(assert (= (and b!5177656 (not c!891896)) b!5177661))

(assert (= (or b!5177656 b!5177666) bm!363832))

(assert (= (or b!5177656 b!5177666) bm!363835))

(assert (= (or b!5177656 b!5177666) bm!363830))

(assert (= (or b!5177656 b!5177666) bm!363834))

(assert (= (or b!5177665 b!5177664) bm!363836))

(assert (= (or b!5177665 b!5177659) bm!363829))

(assert (= (or b!5177665 b!5177664) bm!363833))

(assert (= (or b!5177665 b!5177664) bm!363831))

(assert (= (and d!1672208 res!2200102) b!5177667))

(assert (= (and b!5177667 (not res!2200103)) b!5177658))

(declare-fun m!6234280 () Bool)

(assert (=> bm!363831 m!6234280))

(assert (=> bm!363836 m!6232108))

(declare-fun m!6234282 () Bool)

(assert (=> b!5177656 m!6234282))

(declare-fun m!6234284 () Bool)

(assert (=> b!5177658 m!6234284))

(declare-fun m!6234286 () Bool)

(assert (=> b!5177658 m!6234286))

(declare-fun m!6234288 () Bool)

(assert (=> bm!363829 m!6234288))

(declare-fun m!6234290 () Bool)

(assert (=> bm!363832 m!6234290))

(assert (=> bm!363833 m!6232110))

(declare-fun m!6234292 () Bool)

(assert (=> bm!363830 m!6234292))

(declare-fun m!6234294 () Bool)

(assert (=> b!5177667 m!6234294))

(declare-fun m!6234296 () Bool)

(assert (=> b!5177659 m!6234296))

(assert (=> b!5177659 m!6234290))

(assert (=> b!5177659 m!6232070))

(declare-fun m!6234298 () Bool)

(assert (=> b!5177659 m!6234298))

(declare-fun m!6234300 () Bool)

(assert (=> b!5177659 m!6234300))

(declare-fun m!6234302 () Bool)

(assert (=> b!5177659 m!6234302))

(declare-fun m!6234304 () Bool)

(assert (=> b!5177659 m!6234304))

(declare-fun m!6234306 () Bool)

(assert (=> b!5177659 m!6234306))

(declare-fun m!6234308 () Bool)

(assert (=> b!5177659 m!6234308))

(declare-fun m!6234310 () Bool)

(assert (=> b!5177659 m!6234310))

(assert (=> b!5177659 m!6234306))

(declare-fun m!6234312 () Bool)

(assert (=> b!5177659 m!6234312))

(declare-fun m!6234314 () Bool)

(assert (=> b!5177659 m!6234314))

(declare-fun m!6234316 () Bool)

(assert (=> b!5177659 m!6234316))

(assert (=> b!5177659 m!6234314))

(assert (=> b!5177659 m!6234300))

(assert (=> b!5177659 m!6234286))

(declare-fun m!6234318 () Bool)

(assert (=> bm!363834 m!6234318))

(declare-fun m!6234320 () Bool)

(assert (=> d!1672208 m!6234320))

(declare-fun m!6234322 () Bool)

(assert (=> d!1672208 m!6234322))

(declare-fun m!6234324 () Bool)

(assert (=> d!1672208 m!6234324))

(assert (=> d!1672208 m!6234306))

(declare-fun m!6234326 () Bool)

(assert (=> d!1672208 m!6234326))

(declare-fun m!6234328 () Bool)

(assert (=> d!1672208 m!6234328))

(assert (=> d!1672208 m!6234322))

(declare-fun m!6234330 () Bool)

(assert (=> d!1672208 m!6234330))

(assert (=> bm!363835 m!6234296))

(assert (=> bm!363728 d!1672208))

(declare-fun d!1672210 () Bool)

(declare-fun lt!2133774 () Int)

(assert (=> d!1672210 (>= lt!2133774 0)))

(declare-fun e!3226129 () Int)

(assert (=> d!1672210 (= lt!2133774 e!3226129)))

(declare-fun c!891898 () Bool)

(assert (=> d!1672210 (= c!891898 ((_ is Nil!60163) lt!2133366))))

(assert (=> d!1672210 (= (size!39693 lt!2133366) lt!2133774)))

(declare-fun b!5177669 () Bool)

(assert (=> b!5177669 (= e!3226129 0)))

(declare-fun b!5177670 () Bool)

(assert (=> b!5177670 (= e!3226129 (+ 1 (size!39693 (t!373440 lt!2133366))))))

(assert (= (and d!1672210 c!891898) b!5177669))

(assert (= (and d!1672210 (not c!891898)) b!5177670))

(declare-fun m!6234332 () Bool)

(assert (=> b!5177670 m!6234332))

(assert (=> b!5177101 d!1672210))

(assert (=> b!5177101 d!1671466))

(declare-fun d!1672212 () Bool)

(declare-fun lt!2133775 () Int)

(assert (=> d!1672212 (>= lt!2133775 0)))

(declare-fun e!3226130 () Int)

(assert (=> d!1672212 (= lt!2133775 e!3226130)))

(declare-fun c!891899 () Bool)

(assert (=> d!1672212 (= c!891899 ((_ is Nil!60163) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))

(assert (=> d!1672212 (= (size!39693 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)) lt!2133775)))

(declare-fun b!5177671 () Bool)

(assert (=> b!5177671 (= e!3226130 0)))

(declare-fun b!5177672 () Bool)

(assert (=> b!5177672 (= e!3226130 (+ 1 (size!39693 (t!373440 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))))

(assert (= (and d!1672212 c!891899) b!5177671))

(assert (= (and d!1672212 (not c!891899)) b!5177672))

(declare-fun m!6234334 () Bool)

(assert (=> b!5177672 m!6234334))

(assert (=> b!5177101 d!1672212))

(assert (=> bm!363744 d!1671512))

(declare-fun d!1672214 () Bool)

(declare-fun lt!2133776 () Int)

(assert (=> d!1672214 (>= lt!2133776 0)))

(declare-fun e!3226131 () Int)

(assert (=> d!1672214 (= lt!2133776 e!3226131)))

(declare-fun c!891900 () Bool)

(assert (=> d!1672214 (= c!891900 ((_ is Nil!60163) (t!373440 (Cons!60163 lt!2132879 Nil!60163))))))

(assert (=> d!1672214 (= (size!39693 (t!373440 (Cons!60163 lt!2132879 Nil!60163))) lt!2133776)))

(declare-fun b!5177673 () Bool)

(assert (=> b!5177673 (= e!3226131 0)))

(declare-fun b!5177674 () Bool)

(assert (=> b!5177674 (= e!3226131 (+ 1 (size!39693 (t!373440 (t!373440 (Cons!60163 lt!2132879 Nil!60163))))))))

(assert (= (and d!1672214 c!891900) b!5177673))

(assert (= (and d!1672214 (not c!891900)) b!5177674))

(declare-fun m!6234336 () Bool)

(assert (=> b!5177674 m!6234336))

(assert (=> b!5177007 d!1672214))

(assert (=> b!5177114 d!1671618))

(declare-fun d!1672216 () Bool)

(assert (=> d!1672216 (= (head!11075 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))) (h!66611 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))))))

(assert (=> b!5177114 d!1672216))

(declare-fun bs!1205188 () Bool)

(declare-fun d!1672218 () Bool)

(assert (= bs!1205188 (and d!1672218 b!5176997)))

(declare-fun lambda!258674 () Int)

(assert (=> bs!1205188 (not (= lambda!258674 lambda!258612))))

(declare-fun bs!1205189 () Bool)

(assert (= bs!1205189 (and d!1672218 d!1672052)))

(assert (=> bs!1205189 (not (= lambda!258674 lambda!258666))))

(declare-fun bs!1205190 () Bool)

(assert (= bs!1205190 (and d!1672218 d!1671804)))

(assert (=> bs!1205190 (= lambda!258674 lambda!258624)))

(declare-fun bs!1205191 () Bool)

(assert (= bs!1205191 (and d!1672218 d!1671612)))

(assert (=> bs!1205191 (not (= lambda!258674 lambda!258610))))

(declare-fun bs!1205192 () Bool)

(assert (= bs!1205192 (and d!1672218 b!5177056)))

(assert (=> bs!1205192 (not (= lambda!258674 lambda!258618))))

(declare-fun bs!1205193 () Bool)

(assert (= bs!1205193 (and d!1672218 d!1672204)))

(assert (=> bs!1205193 (= lambda!258674 lambda!258673)))

(declare-fun bs!1205194 () Bool)

(assert (= bs!1205194 (and d!1672218 d!1672104)))

(assert (=> bs!1205194 (not (= lambda!258674 lambda!258668))))

(declare-fun bs!1205195 () Bool)

(assert (= bs!1205195 (and d!1672218 d!1671636)))

(assert (=> bs!1205195 (= lambda!258674 lambda!258613)))

(declare-fun bs!1205196 () Bool)

(assert (= bs!1205196 (and d!1672218 d!1672032)))

(assert (=> bs!1205196 (= lambda!258674 lambda!258656)))

(declare-fun bs!1205197 () Bool)

(assert (= bs!1205197 (and d!1672218 d!1671546)))

(assert (=> bs!1205197 (= lambda!258674 lambda!258592)))

(declare-fun bs!1205198 () Bool)

(assert (= bs!1205198 (and d!1672218 b!5176996)))

(assert (=> bs!1205198 (not (= lambda!258674 lambda!258611))))

(declare-fun bs!1205199 () Bool)

(assert (= bs!1205199 (and d!1672218 d!1672118)))

(assert (=> bs!1205199 (not (= lambda!258674 lambda!258671))))

(declare-fun bs!1205200 () Bool)

(assert (= bs!1205200 (and d!1672218 d!1672040)))

(assert (=> bs!1205200 (not (= lambda!258674 lambda!258663))))

(declare-fun bs!1205201 () Bool)

(assert (= bs!1205201 (and d!1672218 b!5177534)))

(assert (=> bs!1205201 (not (= lambda!258674 lambda!258669))))

(declare-fun bs!1205202 () Bool)

(assert (= bs!1205202 (and d!1672218 b!5177535)))

(assert (=> bs!1205202 (not (= lambda!258674 lambda!258670))))

(declare-fun bs!1205203 () Bool)

(assert (= bs!1205203 (and d!1672218 b!5177055)))

(assert (=> bs!1205203 (not (= lambda!258674 lambda!258617))))

(declare-fun bs!1205204 () Bool)

(assert (= bs!1205204 (and d!1672218 d!1671684)))

(assert (=> bs!1205204 (not (= lambda!258674 lambda!258616))))

(assert (=> d!1672218 (= (nullableZipper!1195 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881)))) (exists!1939 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881))) lambda!258674))))

(declare-fun bs!1205205 () Bool)

(assert (= bs!1205205 d!1672218))

(assert (=> bs!1205205 m!6232120))

(declare-fun m!6234338 () Bool)

(assert (=> bs!1205205 m!6234338))

(assert (=> b!5177241 d!1672218))

(assert (=> bm!363777 d!1672182))

(declare-fun d!1672220 () Bool)

(declare-fun lt!2133777 () Int)

(assert (=> d!1672220 (>= lt!2133777 0)))

(declare-fun e!3226132 () Int)

(assert (=> d!1672220 (= lt!2133777 e!3226132)))

(declare-fun c!891901 () Bool)

(assert (=> d!1672220 (= c!891901 ((_ is Nil!60163) lt!2133375))))

(assert (=> d!1672220 (= (size!39693 lt!2133375) lt!2133777)))

(declare-fun b!5177675 () Bool)

(assert (=> b!5177675 (= e!3226132 0)))

(declare-fun b!5177676 () Bool)

(assert (=> b!5177676 (= e!3226132 (+ 1 (size!39693 (t!373440 lt!2133375))))))

(assert (= (and d!1672220 c!891901) b!5177675))

(assert (= (and d!1672220 (not c!891901)) b!5177676))

(declare-fun m!6234340 () Bool)

(assert (=> b!5177676 m!6234340))

(assert (=> b!5177123 d!1672220))

(assert (=> b!5177123 d!1671466))

(declare-fun d!1672222 () Bool)

(declare-fun lt!2133778 () Int)

(assert (=> d!1672222 (>= lt!2133778 0)))

(declare-fun e!3226133 () Int)

(assert (=> d!1672222 (= lt!2133778 e!3226133)))

(declare-fun c!891902 () Bool)

(assert (=> d!1672222 (= c!891902 ((_ is Nil!60163) (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)))))

(assert (=> d!1672222 (= (size!39693 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)) lt!2133778)))

(declare-fun b!5177677 () Bool)

(assert (=> b!5177677 (= e!3226133 0)))

(declare-fun b!5177678 () Bool)

(assert (=> b!5177678 (= e!3226133 (+ 1 (size!39693 (t!373440 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)))))))

(assert (= (and d!1672222 c!891902) b!5177677))

(assert (= (and d!1672222 (not c!891902)) b!5177678))

(declare-fun m!6234342 () Bool)

(assert (=> b!5177678 m!6234342))

(assert (=> b!5177123 d!1672222))

(declare-fun d!1672224 () Bool)

(assert (=> d!1672224 (= lt!2132885 lt!2133058)))

(assert (=> d!1672224 true))

(declare-fun _$63!1299 () Unit!151998)

(assert (=> d!1672224 (= (choose!38445 testedP!294 lt!2132885 testedP!294 lt!2133058 input!5817) _$63!1299)))

(assert (=> d!1671682 d!1672224))

(assert (=> d!1671682 d!1671522))

(declare-fun d!1672226 () Bool)

(declare-fun lt!2133779 () Int)

(assert (=> d!1672226 (>= lt!2133779 0)))

(declare-fun e!3226134 () Int)

(assert (=> d!1672226 (= lt!2133779 e!3226134)))

(declare-fun c!891903 () Bool)

(assert (=> d!1672226 (= c!891903 ((_ is Nil!60163) lt!2133257))))

(assert (=> d!1672226 (= (size!39693 lt!2133257) lt!2133779)))

(declare-fun b!5177679 () Bool)

(assert (=> b!5177679 (= e!3226134 0)))

(declare-fun b!5177680 () Bool)

(assert (=> b!5177680 (= e!3226134 (+ 1 (size!39693 (t!373440 lt!2133257))))))

(assert (= (and d!1672226 c!891903) b!5177679))

(assert (= (and d!1672226 (not c!891903)) b!5177680))

(declare-fun m!6234344 () Bool)

(assert (=> b!5177680 m!6234344))

(assert (=> b!5176990 d!1672226))

(assert (=> b!5176990 d!1671466))

(declare-fun d!1672228 () Bool)

(declare-fun lt!2133780 () Int)

(assert (=> d!1672228 (>= lt!2133780 0)))

(declare-fun e!3226135 () Int)

(assert (=> d!1672228 (= lt!2133780 e!3226135)))

(declare-fun c!891904 () Bool)

(assert (=> d!1672228 (= c!891904 ((_ is Nil!60163) (tail!10174 lt!2132885)))))

(assert (=> d!1672228 (= (size!39693 (tail!10174 lt!2132885)) lt!2133780)))

(declare-fun b!5177681 () Bool)

(assert (=> b!5177681 (= e!3226135 0)))

(declare-fun b!5177682 () Bool)

(assert (=> b!5177682 (= e!3226135 (+ 1 (size!39693 (t!373440 (tail!10174 lt!2132885)))))))

(assert (= (and d!1672228 c!891904) b!5177681))

(assert (= (and d!1672228 (not c!891904)) b!5177682))

(declare-fun m!6234346 () Bool)

(assert (=> b!5177682 m!6234346))

(assert (=> b!5176990 d!1672228))

(assert (=> b!5177251 d!1671636))

(declare-fun b!5177685 () Bool)

(declare-fun res!2200105 () Bool)

(declare-fun e!3226137 () Bool)

(assert (=> b!5177685 (=> (not res!2200105) (not e!3226137))))

(declare-fun lt!2133781 () List!60287)

(assert (=> b!5177685 (= res!2200105 (= (size!39693 lt!2133781) (+ (size!39693 (t!373440 lt!2132884)) (size!39693 (Cons!60163 lt!2132982 Nil!60163)))))))

(declare-fun b!5177684 () Bool)

(declare-fun e!3226136 () List!60287)

(assert (=> b!5177684 (= e!3226136 (Cons!60163 (h!66611 (t!373440 lt!2132884)) (++!13173 (t!373440 (t!373440 lt!2132884)) (Cons!60163 lt!2132982 Nil!60163))))))

(declare-fun b!5177683 () Bool)

(assert (=> b!5177683 (= e!3226136 (Cons!60163 lt!2132982 Nil!60163))))

(declare-fun b!5177686 () Bool)

(assert (=> b!5177686 (= e!3226137 (or (not (= (Cons!60163 lt!2132982 Nil!60163) Nil!60163)) (= lt!2133781 (t!373440 lt!2132884))))))

(declare-fun d!1672230 () Bool)

(assert (=> d!1672230 e!3226137))

(declare-fun res!2200104 () Bool)

(assert (=> d!1672230 (=> (not res!2200104) (not e!3226137))))

(assert (=> d!1672230 (= res!2200104 (= (content!10662 lt!2133781) ((_ map or) (content!10662 (t!373440 lt!2132884)) (content!10662 (Cons!60163 lt!2132982 Nil!60163)))))))

(assert (=> d!1672230 (= lt!2133781 e!3226136)))

(declare-fun c!891905 () Bool)

(assert (=> d!1672230 (= c!891905 ((_ is Nil!60163) (t!373440 lt!2132884)))))

(assert (=> d!1672230 (= (++!13173 (t!373440 lt!2132884) (Cons!60163 lt!2132982 Nil!60163)) lt!2133781)))

(assert (= (and d!1672230 c!891905) b!5177683))

(assert (= (and d!1672230 (not c!891905)) b!5177684))

(assert (= (and d!1672230 res!2200104) b!5177685))

(assert (= (and b!5177685 res!2200105) b!5177686))

(declare-fun m!6234348 () Bool)

(assert (=> b!5177685 m!6234348))

(assert (=> b!5177685 m!6232126))

(assert (=> b!5177685 m!6232844))

(declare-fun m!6234350 () Bool)

(assert (=> b!5177684 m!6234350))

(declare-fun m!6234352 () Bool)

(assert (=> d!1672230 m!6234352))

(assert (=> d!1672230 m!6233904))

(assert (=> d!1672230 m!6232854))

(assert (=> b!5177092 d!1672230))

(assert (=> bm!363767 d!1671514))

(declare-fun bs!1205206 () Bool)

(declare-fun d!1672232 () Bool)

(assert (= bs!1205206 (and d!1672232 b!5176997)))

(declare-fun lambda!258675 () Int)

(assert (=> bs!1205206 (not (= lambda!258675 lambda!258612))))

(declare-fun bs!1205207 () Bool)

(assert (= bs!1205207 (and d!1672232 d!1672052)))

(assert (=> bs!1205207 (not (= lambda!258675 lambda!258666))))

(declare-fun bs!1205208 () Bool)

(assert (= bs!1205208 (and d!1672232 d!1671804)))

(assert (=> bs!1205208 (= lambda!258675 lambda!258624)))

(declare-fun bs!1205209 () Bool)

(assert (= bs!1205209 (and d!1672232 d!1671612)))

(assert (=> bs!1205209 (not (= lambda!258675 lambda!258610))))

(declare-fun bs!1205210 () Bool)

(assert (= bs!1205210 (and d!1672232 b!5177056)))

(assert (=> bs!1205210 (not (= lambda!258675 lambda!258618))))

(declare-fun bs!1205211 () Bool)

(assert (= bs!1205211 (and d!1672232 d!1672204)))

(assert (=> bs!1205211 (= lambda!258675 lambda!258673)))

(declare-fun bs!1205212 () Bool)

(assert (= bs!1205212 (and d!1672232 d!1672104)))

(assert (=> bs!1205212 (not (= lambda!258675 lambda!258668))))

(declare-fun bs!1205213 () Bool)

(assert (= bs!1205213 (and d!1672232 d!1671636)))

(assert (=> bs!1205213 (= lambda!258675 lambda!258613)))

(declare-fun bs!1205214 () Bool)

(assert (= bs!1205214 (and d!1672232 d!1672032)))

(assert (=> bs!1205214 (= lambda!258675 lambda!258656)))

(declare-fun bs!1205215 () Bool)

(assert (= bs!1205215 (and d!1672232 d!1672218)))

(assert (=> bs!1205215 (= lambda!258675 lambda!258674)))

(declare-fun bs!1205216 () Bool)

(assert (= bs!1205216 (and d!1672232 d!1671546)))

(assert (=> bs!1205216 (= lambda!258675 lambda!258592)))

(declare-fun bs!1205217 () Bool)

(assert (= bs!1205217 (and d!1672232 b!5176996)))

(assert (=> bs!1205217 (not (= lambda!258675 lambda!258611))))

(declare-fun bs!1205218 () Bool)

(assert (= bs!1205218 (and d!1672232 d!1672118)))

(assert (=> bs!1205218 (not (= lambda!258675 lambda!258671))))

(declare-fun bs!1205219 () Bool)

(assert (= bs!1205219 (and d!1672232 d!1672040)))

(assert (=> bs!1205219 (not (= lambda!258675 lambda!258663))))

(declare-fun bs!1205220 () Bool)

(assert (= bs!1205220 (and d!1672232 b!5177534)))

(assert (=> bs!1205220 (not (= lambda!258675 lambda!258669))))

(declare-fun bs!1205221 () Bool)

(assert (= bs!1205221 (and d!1672232 b!5177535)))

(assert (=> bs!1205221 (not (= lambda!258675 lambda!258670))))

(declare-fun bs!1205222 () Bool)

(assert (= bs!1205222 (and d!1672232 b!5177055)))

(assert (=> bs!1205222 (not (= lambda!258675 lambda!258617))))

(declare-fun bs!1205223 () Bool)

(assert (= bs!1205223 (and d!1672232 d!1671684)))

(assert (=> bs!1205223 (not (= lambda!258675 lambda!258616))))

(assert (=> d!1672232 (= (nullableZipper!1195 call!363679) (exists!1939 call!363679 lambda!258675))))

(declare-fun bs!1205224 () Bool)

(assert (= bs!1205224 d!1672232))

(declare-fun m!6234354 () Bool)

(assert (=> bs!1205224 m!6234354))

(assert (=> bm!363723 d!1672232))

(assert (=> bm!363739 d!1671860))

(declare-fun d!1672234 () Bool)

(declare-fun c!891906 () Bool)

(assert (=> d!1672234 (= c!891906 ((_ is Nil!60163) lt!2133365))))

(declare-fun e!3226138 () (InoxSet C!29584))

(assert (=> d!1672234 (= (content!10662 lt!2133365) e!3226138)))

(declare-fun b!5177687 () Bool)

(assert (=> b!5177687 (= e!3226138 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177688 () Bool)

(assert (=> b!5177688 (= e!3226138 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133365) true) (content!10662 (t!373440 lt!2133365))))))

(assert (= (and d!1672234 c!891906) b!5177687))

(assert (= (and d!1672234 (not c!891906)) b!5177688))

(declare-fun m!6234356 () Bool)

(assert (=> b!5177688 m!6234356))

(declare-fun m!6234358 () Bool)

(assert (=> b!5177688 m!6234358))

(assert (=> d!1671712 d!1672234))

(declare-fun d!1672236 () Bool)

(declare-fun c!891907 () Bool)

(assert (=> d!1672236 (= c!891907 ((_ is Nil!60163) (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))))))

(declare-fun e!3226139 () (InoxSet C!29584))

(assert (=> d!1672236 (= (content!10662 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))) e!3226139)))

(declare-fun b!5177689 () Bool)

(assert (=> b!5177689 (= e!3226139 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177690 () Bool)

(assert (=> b!5177690 (= e!3226139 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))) true) (content!10662 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))))))))

(assert (= (and d!1672236 c!891907) b!5177689))

(assert (= (and d!1672236 (not c!891907)) b!5177690))

(declare-fun m!6234360 () Bool)

(assert (=> b!5177690 m!6234360))

(declare-fun m!6234362 () Bool)

(assert (=> b!5177690 m!6234362))

(assert (=> d!1671712 d!1672236))

(declare-fun d!1672238 () Bool)

(declare-fun c!891908 () Bool)

(assert (=> d!1672238 (= c!891908 ((_ is Nil!60163) lt!2132985))))

(declare-fun e!3226140 () (InoxSet C!29584))

(assert (=> d!1672238 (= (content!10662 lt!2132985) e!3226140)))

(declare-fun b!5177691 () Bool)

(assert (=> b!5177691 (= e!3226140 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177692 () Bool)

(assert (=> b!5177692 (= e!3226140 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2132985) true) (content!10662 (t!373440 lt!2132985))))))

(assert (= (and d!1672238 c!891908) b!5177691))

(assert (= (and d!1672238 (not c!891908)) b!5177692))

(declare-fun m!6234364 () Bool)

(assert (=> b!5177692 m!6234364))

(declare-fun m!6234366 () Bool)

(assert (=> b!5177692 m!6234366))

(assert (=> d!1671712 d!1672238))

(declare-fun bs!1205225 () Bool)

(declare-fun d!1672240 () Bool)

(assert (= bs!1205225 (and d!1672240 d!1671504)))

(declare-fun lambda!258676 () Int)

(assert (=> bs!1205225 (= lambda!258676 lambda!258580)))

(declare-fun bs!1205226 () Bool)

(assert (= bs!1205226 (and d!1672240 d!1671554)))

(assert (=> bs!1205226 (= lambda!258676 lambda!258593)))

(declare-fun bs!1205227 () Bool)

(assert (= bs!1205227 (and d!1672240 d!1671768)))

(assert (=> bs!1205227 (= lambda!258676 lambda!258621)))

(declare-fun bs!1205228 () Bool)

(assert (= bs!1205228 (and d!1672240 d!1671862)))

(assert (=> bs!1205228 (= lambda!258676 lambda!258627)))

(assert (=> d!1672240 (= (inv!79889 setElem!32344) (forall!14161 (exprs!4541 setElem!32344) lambda!258676))))

(declare-fun bs!1205229 () Bool)

(assert (= bs!1205229 d!1672240))

(declare-fun m!6234368 () Bool)

(assert (=> bs!1205229 m!6234368))

(assert (=> setNonEmpty!32344 d!1672240))

(declare-fun d!1672242 () Bool)

(declare-fun lt!2133782 () Int)

(assert (=> d!1672242 (>= lt!2133782 0)))

(declare-fun e!3226141 () Int)

(assert (=> d!1672242 (= lt!2133782 e!3226141)))

(declare-fun c!891909 () Bool)

(assert (=> d!1672242 (= c!891909 ((_ is Nil!60163) (tail!10174 input!5817)))))

(assert (=> d!1672242 (= (size!39693 (tail!10174 input!5817)) lt!2133782)))

(declare-fun b!5177693 () Bool)

(assert (=> b!5177693 (= e!3226141 0)))

(declare-fun b!5177694 () Bool)

(assert (=> b!5177694 (= e!3226141 (+ 1 (size!39693 (t!373440 (tail!10174 input!5817)))))))

(assert (= (and d!1672242 c!891909) b!5177693))

(assert (= (and d!1672242 (not c!891909)) b!5177694))

(declare-fun m!6234370 () Bool)

(assert (=> b!5177694 m!6234370))

(assert (=> b!5177150 d!1672242))

(declare-fun d!1672244 () Bool)

(declare-fun lt!2133783 () Int)

(assert (=> d!1672244 (>= lt!2133783 0)))

(declare-fun e!3226142 () Int)

(assert (=> d!1672244 (= lt!2133783 e!3226142)))

(declare-fun c!891910 () Bool)

(assert (=> d!1672244 (= c!891910 ((_ is Nil!60163) (tail!10174 lt!2132884)))))

(assert (=> d!1672244 (= (size!39693 (tail!10174 lt!2132884)) lt!2133783)))

(declare-fun b!5177695 () Bool)

(assert (=> b!5177695 (= e!3226142 0)))

(declare-fun b!5177696 () Bool)

(assert (=> b!5177696 (= e!3226142 (+ 1 (size!39693 (t!373440 (tail!10174 lt!2132884)))))))

(assert (= (and d!1672244 c!891910) b!5177695))

(assert (= (and d!1672244 (not c!891910)) b!5177696))

(declare-fun m!6234372 () Bool)

(assert (=> b!5177696 m!6234372))

(assert (=> b!5177150 d!1672244))

(declare-fun d!1672246 () Bool)

(declare-fun lt!2133784 () Int)

(assert (=> d!1672246 (>= lt!2133784 0)))

(declare-fun e!3226143 () Int)

(assert (=> d!1672246 (= lt!2133784 e!3226143)))

(declare-fun c!891911 () Bool)

(assert (=> d!1672246 (= c!891911 ((_ is Nil!60163) (t!373440 lt!2133145)))))

(assert (=> d!1672246 (= (size!39693 (t!373440 lt!2133145)) lt!2133784)))

(declare-fun b!5177697 () Bool)

(assert (=> b!5177697 (= e!3226143 0)))

(declare-fun b!5177698 () Bool)

(assert (=> b!5177698 (= e!3226143 (+ 1 (size!39693 (t!373440 (t!373440 lt!2133145)))))))

(assert (= (and d!1672246 c!891911) b!5177697))

(assert (= (and d!1672246 (not c!891911)) b!5177698))

(declare-fun m!6234374 () Bool)

(assert (=> b!5177698 m!6234374))

(assert (=> b!5177005 d!1672246))

(declare-fun d!1672248 () Bool)

(assert (=> d!1672248 (= (flatMap!460 baseZ!62 lambda!258629) (choose!38443 baseZ!62 lambda!258629))))

(declare-fun bs!1205230 () Bool)

(assert (= bs!1205230 d!1672248))

(declare-fun m!6234376 () Bool)

(assert (=> bs!1205230 m!6234376))

(assert (=> d!1671870 d!1672248))

(declare-fun d!1672250 () Bool)

(declare-fun c!891912 () Bool)

(assert (=> d!1672250 (= c!891912 ((_ is Nil!60163) lt!2133375))))

(declare-fun e!3226144 () (InoxSet C!29584))

(assert (=> d!1672250 (= (content!10662 lt!2133375) e!3226144)))

(declare-fun b!5177699 () Bool)

(assert (=> b!5177699 (= e!3226144 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177700 () Bool)

(assert (=> b!5177700 (= e!3226144 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133375) true) (content!10662 (t!373440 lt!2133375))))))

(assert (= (and d!1672250 c!891912) b!5177699))

(assert (= (and d!1672250 (not c!891912)) b!5177700))

(declare-fun m!6234378 () Bool)

(assert (=> b!5177700 m!6234378))

(declare-fun m!6234380 () Bool)

(assert (=> b!5177700 m!6234380))

(assert (=> d!1671738 d!1672250))

(assert (=> d!1671738 d!1672064))

(declare-fun d!1672252 () Bool)

(declare-fun c!891913 () Bool)

(assert (=> d!1672252 (= c!891913 ((_ is Nil!60163) (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)))))

(declare-fun e!3226145 () (InoxSet C!29584))

(assert (=> d!1672252 (= (content!10662 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)) e!3226145)))

(declare-fun b!5177701 () Bool)

(assert (=> b!5177701 (= e!3226145 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177702 () Bool)

(assert (=> b!5177702 (= e!3226145 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)) true) (content!10662 (t!373440 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)))))))

(assert (= (and d!1672252 c!891913) b!5177701))

(assert (= (and d!1672252 (not c!891913)) b!5177702))

(declare-fun m!6234382 () Bool)

(assert (=> b!5177702 m!6234382))

(declare-fun m!6234384 () Bool)

(assert (=> b!5177702 m!6234384))

(assert (=> d!1671738 d!1672252))

(declare-fun d!1672254 () Bool)

(assert (=> d!1672254 (= (tail!10174 call!363673) (t!373440 call!363673))))

(assert (=> bm!363726 d!1672254))

(declare-fun b!5177705 () Bool)

(declare-fun res!2200107 () Bool)

(declare-fun e!3226147 () Bool)

(assert (=> b!5177705 (=> (not res!2200107) (not e!3226147))))

(declare-fun lt!2133785 () List!60287)

(assert (=> b!5177705 (= res!2200107 (= (size!39693 lt!2133785) (+ (size!39693 (t!373440 testedP!294)) (size!39693 lt!2133283))))))

(declare-fun b!5177704 () Bool)

(declare-fun e!3226146 () List!60287)

(assert (=> b!5177704 (= e!3226146 (Cons!60163 (h!66611 (t!373440 testedP!294)) (++!13173 (t!373440 (t!373440 testedP!294)) lt!2133283)))))

(declare-fun b!5177703 () Bool)

(assert (=> b!5177703 (= e!3226146 lt!2133283)))

(declare-fun b!5177706 () Bool)

(assert (=> b!5177706 (= e!3226147 (or (not (= lt!2133283 Nil!60163)) (= lt!2133785 (t!373440 testedP!294))))))

(declare-fun d!1672256 () Bool)

(assert (=> d!1672256 e!3226147))

(declare-fun res!2200106 () Bool)

(assert (=> d!1672256 (=> (not res!2200106) (not e!3226147))))

(assert (=> d!1672256 (= res!2200106 (= (content!10662 lt!2133785) ((_ map or) (content!10662 (t!373440 testedP!294)) (content!10662 lt!2133283))))))

(assert (=> d!1672256 (= lt!2133785 e!3226146)))

(declare-fun c!891914 () Bool)

(assert (=> d!1672256 (= c!891914 ((_ is Nil!60163) (t!373440 testedP!294)))))

(assert (=> d!1672256 (= (++!13173 (t!373440 testedP!294) lt!2133283) lt!2133785)))

(assert (= (and d!1672256 c!891914) b!5177703))

(assert (= (and d!1672256 (not c!891914)) b!5177704))

(assert (= (and d!1672256 res!2200106) b!5177705))

(assert (= (and b!5177705 res!2200107) b!5177706))

(declare-fun m!6234386 () Bool)

(assert (=> b!5177705 m!6234386))

(assert (=> b!5177705 m!6232254))

(declare-fun m!6234388 () Bool)

(assert (=> b!5177705 m!6234388))

(declare-fun m!6234390 () Bool)

(assert (=> b!5177704 m!6234390))

(declare-fun m!6234392 () Bool)

(assert (=> d!1672256 m!6234392))

(assert (=> d!1672256 m!6232704))

(declare-fun m!6234394 () Bool)

(assert (=> d!1672256 m!6234394))

(assert (=> d!1671622 d!1672256))

(assert (=> d!1671622 d!1672242))

(assert (=> d!1671622 d!1671760))

(assert (=> bm!363741 d!1671514))

(declare-fun d!1672258 () Bool)

(declare-fun lt!2133786 () Int)

(assert (=> d!1672258 (>= lt!2133786 0)))

(declare-fun e!3226148 () Int)

(assert (=> d!1672258 (= lt!2133786 e!3226148)))

(declare-fun c!891915 () Bool)

(assert (=> d!1672258 (= c!891915 ((_ is Nil!60163) lt!2133282))))

(assert (=> d!1672258 (= (size!39693 lt!2133282) lt!2133786)))

(declare-fun b!5177707 () Bool)

(assert (=> b!5177707 (= e!3226148 0)))

(declare-fun b!5177708 () Bool)

(assert (=> b!5177708 (= e!3226148 (+ 1 (size!39693 (t!373440 lt!2133282))))))

(assert (= (and d!1672258 c!891915) b!5177707))

(assert (= (and d!1672258 (not c!891915)) b!5177708))

(declare-fun m!6234396 () Bool)

(assert (=> b!5177708 m!6234396))

(assert (=> b!5177000 d!1672258))

(assert (=> b!5177000 d!1671500))

(declare-fun d!1672260 () Bool)

(declare-fun lt!2133787 () Int)

(assert (=> d!1672260 (>= lt!2133787 0)))

(declare-fun e!3226149 () Int)

(assert (=> d!1672260 (= lt!2133787 e!3226149)))

(declare-fun c!891916 () Bool)

(assert (=> d!1672260 (= c!891916 ((_ is Nil!60163) lt!2133073))))

(assert (=> d!1672260 (= (size!39693 lt!2133073) lt!2133787)))

(declare-fun b!5177709 () Bool)

(assert (=> b!5177709 (= e!3226149 0)))

(declare-fun b!5177710 () Bool)

(assert (=> b!5177710 (= e!3226149 (+ 1 (size!39693 (t!373440 lt!2133073))))))

(assert (= (and d!1672260 c!891916) b!5177709))

(assert (= (and d!1672260 (not c!891916)) b!5177710))

(declare-fun m!6234398 () Bool)

(assert (=> b!5177710 m!6234398))

(assert (=> b!5177000 d!1672260))

(declare-fun d!1672262 () Bool)

(declare-fun c!891917 () Bool)

(assert (=> d!1672262 (= c!891917 ((_ is Nil!60163) lt!2133257))))

(declare-fun e!3226150 () (InoxSet C!29584))

(assert (=> d!1672262 (= (content!10662 lt!2133257) e!3226150)))

(declare-fun b!5177711 () Bool)

(assert (=> b!5177711 (= e!3226150 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177712 () Bool)

(assert (=> b!5177712 (= e!3226150 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133257) true) (content!10662 (t!373440 lt!2133257))))))

(assert (= (and d!1672262 c!891917) b!5177711))

(assert (= (and d!1672262 (not c!891917)) b!5177712))

(declare-fun m!6234400 () Bool)

(assert (=> b!5177712 m!6234400))

(declare-fun m!6234402 () Bool)

(assert (=> b!5177712 m!6234402))

(assert (=> d!1671610 d!1672262))

(assert (=> d!1671610 d!1672064))

(declare-fun d!1672264 () Bool)

(declare-fun c!891918 () Bool)

(assert (=> d!1672264 (= c!891918 ((_ is Nil!60163) (tail!10174 lt!2132885)))))

(declare-fun e!3226151 () (InoxSet C!29584))

(assert (=> d!1672264 (= (content!10662 (tail!10174 lt!2132885)) e!3226151)))

(declare-fun b!5177713 () Bool)

(assert (=> b!5177713 (= e!3226151 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177714 () Bool)

(assert (=> b!5177714 (= e!3226151 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (tail!10174 lt!2132885)) true) (content!10662 (t!373440 (tail!10174 lt!2132885)))))))

(assert (= (and d!1672264 c!891918) b!5177713))

(assert (= (and d!1672264 (not c!891918)) b!5177714))

(declare-fun m!6234404 () Bool)

(assert (=> b!5177714 m!6234404))

(declare-fun m!6234406 () Bool)

(assert (=> b!5177714 m!6234406))

(assert (=> d!1671610 d!1672264))

(assert (=> b!5176961 d!1671494))

(declare-fun d!1672266 () Bool)

(declare-fun lt!2133788 () Int)

(assert (=> d!1672266 (>= lt!2133788 0)))

(declare-fun e!3226152 () Int)

(assert (=> d!1672266 (= lt!2133788 e!3226152)))

(declare-fun c!891919 () Bool)

(assert (=> d!1672266 (= c!891919 ((_ is Nil!60163) (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))))))

(assert (=> d!1672266 (= (size!39693 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))) lt!2133788)))

(declare-fun b!5177715 () Bool)

(assert (=> b!5177715 (= e!3226152 0)))

(declare-fun b!5177716 () Bool)

(assert (=> b!5177716 (= e!3226152 (+ 1 (size!39693 (t!373440 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))))))))

(assert (= (and d!1672266 c!891919) b!5177715))

(assert (= (and d!1672266 (not c!891919)) b!5177716))

(declare-fun m!6234408 () Bool)

(assert (=> b!5177716 m!6234408))

(assert (=> b!5176961 d!1672266))

(declare-fun b!5177719 () Bool)

(declare-fun res!2200109 () Bool)

(declare-fun e!3226154 () Bool)

(assert (=> b!5177719 (=> (not res!2200109) (not e!3226154))))

(declare-fun lt!2133789 () List!60287)

(assert (=> b!5177719 (= res!2200109 (= (size!39693 lt!2133789) (+ (size!39693 lt!2133055) (size!39693 call!363673))))))

(declare-fun b!5177718 () Bool)

(declare-fun e!3226153 () List!60287)

(assert (=> b!5177718 (= e!3226153 (Cons!60163 (h!66611 lt!2133055) (++!13173 (t!373440 lt!2133055) call!363673)))))

(declare-fun b!5177717 () Bool)

(assert (=> b!5177717 (= e!3226153 call!363673)))

(declare-fun b!5177720 () Bool)

(assert (=> b!5177720 (= e!3226154 (or (not (= call!363673 Nil!60163)) (= lt!2133789 lt!2133055)))))

(declare-fun d!1672268 () Bool)

(assert (=> d!1672268 e!3226154))

(declare-fun res!2200108 () Bool)

(assert (=> d!1672268 (=> (not res!2200108) (not e!3226154))))

(assert (=> d!1672268 (= res!2200108 (= (content!10662 lt!2133789) ((_ map or) (content!10662 lt!2133055) (content!10662 call!363673))))))

(assert (=> d!1672268 (= lt!2133789 e!3226153)))

(declare-fun c!891920 () Bool)

(assert (=> d!1672268 (= c!891920 ((_ is Nil!60163) lt!2133055))))

(assert (=> d!1672268 (= (++!13173 lt!2133055 call!363673) lt!2133789)))

(assert (= (and d!1672268 c!891920) b!5177717))

(assert (= (and d!1672268 (not c!891920)) b!5177718))

(assert (= (and d!1672268 res!2200108) b!5177719))

(assert (= (and b!5177719 res!2200109) b!5177720))

(declare-fun m!6234410 () Bool)

(assert (=> b!5177719 m!6234410))

(assert (=> b!5177719 m!6232568))

(declare-fun m!6234412 () Bool)

(assert (=> b!5177719 m!6234412))

(declare-fun m!6234414 () Bool)

(assert (=> b!5177718 m!6234414))

(declare-fun m!6234416 () Bool)

(assert (=> d!1672268 m!6234416))

(declare-fun m!6234418 () Bool)

(assert (=> d!1672268 m!6234418))

(declare-fun m!6234420 () Bool)

(assert (=> d!1672268 m!6234420))

(assert (=> d!1671596 d!1672268))

(declare-fun d!1672270 () Bool)

(assert (=> d!1672270 (= call!363673 lt!2133248)))

(declare-fun lt!2133790 () Unit!151998)

(assert (=> d!1672270 (= lt!2133790 (choose!38445 lt!2133055 call!363673 lt!2133055 lt!2133248 input!5817))))

(assert (=> d!1672270 (isPrefix!5790 lt!2133055 input!5817)))

(assert (=> d!1672270 (= (lemmaSamePrefixThenSameSuffix!2710 lt!2133055 call!363673 lt!2133055 lt!2133248 input!5817) lt!2133790)))

(declare-fun bs!1205231 () Bool)

(assert (= bs!1205231 d!1672270))

(declare-fun m!6234422 () Bool)

(assert (=> bs!1205231 m!6234422))

(declare-fun m!6234424 () Bool)

(assert (=> bs!1205231 m!6234424))

(assert (=> d!1671596 d!1672270))

(declare-fun d!1672272 () Bool)

(assert (=> d!1672272 (isPrefix!5790 lt!2133055 (++!13173 lt!2133055 call!363673))))

(declare-fun lt!2133791 () Unit!151998)

(assert (=> d!1672272 (= lt!2133791 (choose!38444 lt!2133055 call!363673))))

(assert (=> d!1672272 (= (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2133055 call!363673) lt!2133791)))

(declare-fun bs!1205232 () Bool)

(assert (= bs!1205232 d!1672272))

(assert (=> bs!1205232 m!6232604))

(assert (=> bs!1205232 m!6232604))

(assert (=> bs!1205232 m!6232606))

(declare-fun m!6234426 () Bool)

(assert (=> bs!1205232 m!6234426))

(assert (=> d!1671596 d!1672272))

(declare-fun d!1672274 () Bool)

(declare-fun lt!2133792 () List!60287)

(assert (=> d!1672274 (= (++!13173 lt!2133055 lt!2133792) input!5817)))

(declare-fun e!3226155 () List!60287)

(assert (=> d!1672274 (= lt!2133792 e!3226155)))

(declare-fun c!891921 () Bool)

(assert (=> d!1672274 (= c!891921 ((_ is Cons!60163) lt!2133055))))

(assert (=> d!1672274 (>= (size!39693 input!5817) (size!39693 lt!2133055))))

(assert (=> d!1672274 (= (getSuffix!3438 input!5817 lt!2133055) lt!2133792)))

(declare-fun b!5177721 () Bool)

(assert (=> b!5177721 (= e!3226155 (getSuffix!3438 (tail!10174 input!5817) (t!373440 lt!2133055)))))

(declare-fun b!5177722 () Bool)

(assert (=> b!5177722 (= e!3226155 input!5817)))

(assert (= (and d!1672274 c!891921) b!5177721))

(assert (= (and d!1672274 (not c!891921)) b!5177722))

(declare-fun m!6234428 () Bool)

(assert (=> d!1672274 m!6234428))

(assert (=> d!1672274 m!6232070))

(assert (=> d!1672274 m!6232568))

(assert (=> b!5177721 m!6232140))

(assert (=> b!5177721 m!6232140))

(declare-fun m!6234430 () Bool)

(assert (=> b!5177721 m!6234430))

(assert (=> d!1671596 d!1672274))

(declare-fun bs!1205233 () Bool)

(declare-fun d!1672276 () Bool)

(assert (= bs!1205233 (and d!1672276 b!5176997)))

(declare-fun lambda!258677 () Int)

(assert (=> bs!1205233 (not (= lambda!258677 lambda!258612))))

(declare-fun bs!1205234 () Bool)

(assert (= bs!1205234 (and d!1672276 d!1672052)))

(assert (=> bs!1205234 (not (= lambda!258677 lambda!258666))))

(declare-fun bs!1205235 () Bool)

(assert (= bs!1205235 (and d!1672276 d!1671804)))

(assert (=> bs!1205235 (not (= lambda!258677 lambda!258624))))

(declare-fun bs!1205236 () Bool)

(assert (= bs!1205236 (and d!1672276 d!1671612)))

(assert (=> bs!1205236 (= lambda!258677 lambda!258610)))

(declare-fun bs!1205237 () Bool)

(assert (= bs!1205237 (and d!1672276 d!1672232)))

(assert (=> bs!1205237 (not (= lambda!258677 lambda!258675))))

(declare-fun bs!1205238 () Bool)

(assert (= bs!1205238 (and d!1672276 b!5177056)))

(assert (=> bs!1205238 (not (= lambda!258677 lambda!258618))))

(declare-fun bs!1205239 () Bool)

(assert (= bs!1205239 (and d!1672276 d!1672204)))

(assert (=> bs!1205239 (not (= lambda!258677 lambda!258673))))

(declare-fun bs!1205240 () Bool)

(assert (= bs!1205240 (and d!1672276 d!1672104)))

(assert (=> bs!1205240 (= lambda!258677 lambda!258668)))

(declare-fun bs!1205241 () Bool)

(assert (= bs!1205241 (and d!1672276 d!1671636)))

(assert (=> bs!1205241 (not (= lambda!258677 lambda!258613))))

(declare-fun bs!1205242 () Bool)

(assert (= bs!1205242 (and d!1672276 d!1672032)))

(assert (=> bs!1205242 (not (= lambda!258677 lambda!258656))))

(declare-fun bs!1205243 () Bool)

(assert (= bs!1205243 (and d!1672276 d!1672218)))

(assert (=> bs!1205243 (not (= lambda!258677 lambda!258674))))

(declare-fun bs!1205244 () Bool)

(assert (= bs!1205244 (and d!1672276 d!1671546)))

(assert (=> bs!1205244 (not (= lambda!258677 lambda!258592))))

(declare-fun bs!1205245 () Bool)

(assert (= bs!1205245 (and d!1672276 b!5176996)))

(assert (=> bs!1205245 (not (= lambda!258677 lambda!258611))))

(declare-fun bs!1205246 () Bool)

(assert (= bs!1205246 (and d!1672276 d!1672118)))

(assert (=> bs!1205246 (not (= lambda!258677 lambda!258671))))

(declare-fun bs!1205247 () Bool)

(assert (= bs!1205247 (and d!1672276 d!1672040)))

(assert (=> bs!1205247 (not (= lambda!258677 lambda!258663))))

(declare-fun bs!1205248 () Bool)

(assert (= bs!1205248 (and d!1672276 b!5177534)))

(assert (=> bs!1205248 (not (= lambda!258677 lambda!258669))))

(declare-fun bs!1205249 () Bool)

(assert (= bs!1205249 (and d!1672276 b!5177535)))

(assert (=> bs!1205249 (not (= lambda!258677 lambda!258670))))

(declare-fun bs!1205250 () Bool)

(assert (= bs!1205250 (and d!1672276 b!5177055)))

(assert (=> bs!1205250 (not (= lambda!258677 lambda!258617))))

(declare-fun bs!1205251 () Bool)

(assert (= bs!1205251 (and d!1672276 d!1671684)))

(assert (=> bs!1205251 (= lambda!258677 lambda!258616)))

(declare-fun bs!1205252 () Bool)

(declare-fun b!5177723 () Bool)

(assert (= bs!1205252 (and b!5177723 b!5176997)))

(declare-fun lambda!258678 () Int)

(assert (=> bs!1205252 (= lambda!258678 lambda!258612)))

(declare-fun bs!1205253 () Bool)

(assert (= bs!1205253 (and b!5177723 d!1672052)))

(assert (=> bs!1205253 (not (= lambda!258678 lambda!258666))))

(declare-fun bs!1205254 () Bool)

(assert (= bs!1205254 (and b!5177723 d!1671804)))

(assert (=> bs!1205254 (not (= lambda!258678 lambda!258624))))

(declare-fun bs!1205255 () Bool)

(assert (= bs!1205255 (and b!5177723 d!1671612)))

(assert (=> bs!1205255 (not (= lambda!258678 lambda!258610))))

(declare-fun bs!1205256 () Bool)

(assert (= bs!1205256 (and b!5177723 d!1672232)))

(assert (=> bs!1205256 (not (= lambda!258678 lambda!258675))))

(declare-fun bs!1205257 () Bool)

(assert (= bs!1205257 (and b!5177723 b!5177056)))

(assert (=> bs!1205257 (= lambda!258678 lambda!258618)))

(declare-fun bs!1205258 () Bool)

(assert (= bs!1205258 (and b!5177723 d!1672204)))

(assert (=> bs!1205258 (not (= lambda!258678 lambda!258673))))

(declare-fun bs!1205259 () Bool)

(assert (= bs!1205259 (and b!5177723 d!1672276)))

(assert (=> bs!1205259 (not (= lambda!258678 lambda!258677))))

(declare-fun bs!1205260 () Bool)

(assert (= bs!1205260 (and b!5177723 d!1672104)))

(assert (=> bs!1205260 (not (= lambda!258678 lambda!258668))))

(declare-fun bs!1205261 () Bool)

(assert (= bs!1205261 (and b!5177723 d!1671636)))

(assert (=> bs!1205261 (not (= lambda!258678 lambda!258613))))

(declare-fun bs!1205262 () Bool)

(assert (= bs!1205262 (and b!5177723 d!1672032)))

(assert (=> bs!1205262 (not (= lambda!258678 lambda!258656))))

(declare-fun bs!1205263 () Bool)

(assert (= bs!1205263 (and b!5177723 d!1672218)))

(assert (=> bs!1205263 (not (= lambda!258678 lambda!258674))))

(declare-fun bs!1205264 () Bool)

(assert (= bs!1205264 (and b!5177723 d!1671546)))

(assert (=> bs!1205264 (not (= lambda!258678 lambda!258592))))

(declare-fun bs!1205265 () Bool)

(assert (= bs!1205265 (and b!5177723 b!5176996)))

(assert (=> bs!1205265 (= lambda!258678 lambda!258611)))

(declare-fun bs!1205266 () Bool)

(assert (= bs!1205266 (and b!5177723 d!1672118)))

(assert (=> bs!1205266 (not (= lambda!258678 lambda!258671))))

(declare-fun bs!1205267 () Bool)

(assert (= bs!1205267 (and b!5177723 d!1672040)))

(assert (=> bs!1205267 (= lambda!258678 lambda!258663)))

(declare-fun bs!1205268 () Bool)

(assert (= bs!1205268 (and b!5177723 b!5177534)))

(assert (=> bs!1205268 (= lambda!258678 lambda!258669)))

(declare-fun bs!1205269 () Bool)

(assert (= bs!1205269 (and b!5177723 b!5177535)))

(assert (=> bs!1205269 (= lambda!258678 lambda!258670)))

(declare-fun bs!1205270 () Bool)

(assert (= bs!1205270 (and b!5177723 b!5177055)))

(assert (=> bs!1205270 (= lambda!258678 lambda!258617)))

(declare-fun bs!1205271 () Bool)

(assert (= bs!1205271 (and b!5177723 d!1671684)))

(assert (=> bs!1205271 (not (= lambda!258678 lambda!258616))))

(declare-fun bs!1205272 () Bool)

(declare-fun b!5177724 () Bool)

(assert (= bs!1205272 (and b!5177724 b!5176997)))

(declare-fun lambda!258679 () Int)

(assert (=> bs!1205272 (= lambda!258679 lambda!258612)))

(declare-fun bs!1205273 () Bool)

(assert (= bs!1205273 (and b!5177724 d!1672052)))

(assert (=> bs!1205273 (not (= lambda!258679 lambda!258666))))

(declare-fun bs!1205274 () Bool)

(assert (= bs!1205274 (and b!5177724 d!1671804)))

(assert (=> bs!1205274 (not (= lambda!258679 lambda!258624))))

(declare-fun bs!1205275 () Bool)

(assert (= bs!1205275 (and b!5177724 d!1671612)))

(assert (=> bs!1205275 (not (= lambda!258679 lambda!258610))))

(declare-fun bs!1205276 () Bool)

(assert (= bs!1205276 (and b!5177724 b!5177723)))

(assert (=> bs!1205276 (= lambda!258679 lambda!258678)))

(declare-fun bs!1205277 () Bool)

(assert (= bs!1205277 (and b!5177724 d!1672232)))

(assert (=> bs!1205277 (not (= lambda!258679 lambda!258675))))

(declare-fun bs!1205278 () Bool)

(assert (= bs!1205278 (and b!5177724 b!5177056)))

(assert (=> bs!1205278 (= lambda!258679 lambda!258618)))

(declare-fun bs!1205279 () Bool)

(assert (= bs!1205279 (and b!5177724 d!1672204)))

(assert (=> bs!1205279 (not (= lambda!258679 lambda!258673))))

(declare-fun bs!1205280 () Bool)

(assert (= bs!1205280 (and b!5177724 d!1672276)))

(assert (=> bs!1205280 (not (= lambda!258679 lambda!258677))))

(declare-fun bs!1205281 () Bool)

(assert (= bs!1205281 (and b!5177724 d!1672104)))

(assert (=> bs!1205281 (not (= lambda!258679 lambda!258668))))

(declare-fun bs!1205282 () Bool)

(assert (= bs!1205282 (and b!5177724 d!1671636)))

(assert (=> bs!1205282 (not (= lambda!258679 lambda!258613))))

(declare-fun bs!1205283 () Bool)

(assert (= bs!1205283 (and b!5177724 d!1672032)))

(assert (=> bs!1205283 (not (= lambda!258679 lambda!258656))))

(declare-fun bs!1205284 () Bool)

(assert (= bs!1205284 (and b!5177724 d!1672218)))

(assert (=> bs!1205284 (not (= lambda!258679 lambda!258674))))

(declare-fun bs!1205285 () Bool)

(assert (= bs!1205285 (and b!5177724 d!1671546)))

(assert (=> bs!1205285 (not (= lambda!258679 lambda!258592))))

(declare-fun bs!1205286 () Bool)

(assert (= bs!1205286 (and b!5177724 b!5176996)))

(assert (=> bs!1205286 (= lambda!258679 lambda!258611)))

(declare-fun bs!1205287 () Bool)

(assert (= bs!1205287 (and b!5177724 d!1672118)))

(assert (=> bs!1205287 (not (= lambda!258679 lambda!258671))))

(declare-fun bs!1205288 () Bool)

(assert (= bs!1205288 (and b!5177724 d!1672040)))

(assert (=> bs!1205288 (= lambda!258679 lambda!258663)))

(declare-fun bs!1205289 () Bool)

(assert (= bs!1205289 (and b!5177724 b!5177534)))

(assert (=> bs!1205289 (= lambda!258679 lambda!258669)))

(declare-fun bs!1205290 () Bool)

(assert (= bs!1205290 (and b!5177724 b!5177535)))

(assert (=> bs!1205290 (= lambda!258679 lambda!258670)))

(declare-fun bs!1205291 () Bool)

(assert (= bs!1205291 (and b!5177724 b!5177055)))

(assert (=> bs!1205291 (= lambda!258679 lambda!258617)))

(declare-fun bs!1205292 () Bool)

(assert (= bs!1205292 (and b!5177724 d!1671684)))

(assert (=> bs!1205292 (not (= lambda!258679 lambda!258616))))

(declare-fun e!3226156 () Unit!151998)

(declare-fun Unit!152066 () Unit!151998)

(assert (=> b!5177723 (= e!3226156 Unit!152066)))

(declare-fun lt!2133800 () List!60289)

(declare-fun call!363842 () List!60289)

(assert (=> b!5177723 (= lt!2133800 call!363842)))

(declare-fun lt!2133794 () Unit!151998)

(assert (=> b!5177723 (= lt!2133794 (lemmaNotForallThenExists!478 lt!2133800 lambda!258677))))

(declare-fun call!363843 () Bool)

(assert (=> b!5177723 call!363843))

(declare-fun lt!2133797 () Unit!151998)

(assert (=> b!5177723 (= lt!2133797 lt!2133794)))

(declare-fun bm!363837 () Bool)

(assert (=> bm!363837 (= call!363842 (toList!8458 call!363679))))

(declare-fun Unit!152067 () Unit!151998)

(assert (=> b!5177724 (= e!3226156 Unit!152067)))

(declare-fun lt!2133793 () List!60289)

(assert (=> b!5177724 (= lt!2133793 call!363842)))

(declare-fun lt!2133795 () Unit!151998)

(assert (=> b!5177724 (= lt!2133795 (lemmaForallThenNotExists!445 lt!2133793 lambda!258677))))

(assert (=> b!5177724 (not call!363843)))

(declare-fun lt!2133798 () Unit!151998)

(assert (=> b!5177724 (= lt!2133798 lt!2133795)))

(declare-fun bm!363838 () Bool)

(declare-fun c!891922 () Bool)

(assert (=> bm!363838 (= call!363843 (exists!1941 (ite c!891922 lt!2133800 lt!2133793) (ite c!891922 lambda!258678 lambda!258679)))))

(declare-fun lt!2133796 () Bool)

(assert (=> d!1672276 (= lt!2133796 (isEmpty!32212 (getLanguageWitness!1016 call!363679)))))

(assert (=> d!1672276 (= lt!2133796 (forall!14162 call!363679 lambda!258677))))

(declare-fun lt!2133799 () Unit!151998)

(assert (=> d!1672276 (= lt!2133799 e!3226156)))

(assert (=> d!1672276 (= c!891922 (not (forall!14162 call!363679 lambda!258677)))))

(assert (=> d!1672276 (= (lostCauseZipper!1343 call!363679) lt!2133796)))

(assert (= (and d!1672276 c!891922) b!5177723))

(assert (= (and d!1672276 (not c!891922)) b!5177724))

(assert (= (or b!5177723 b!5177724) bm!363837))

(assert (= (or b!5177723 b!5177724) bm!363838))

(declare-fun m!6234432 () Bool)

(assert (=> bm!363838 m!6234432))

(declare-fun m!6234434 () Bool)

(assert (=> b!5177723 m!6234434))

(declare-fun m!6234436 () Bool)

(assert (=> d!1672276 m!6234436))

(assert (=> d!1672276 m!6234436))

(declare-fun m!6234438 () Bool)

(assert (=> d!1672276 m!6234438))

(declare-fun m!6234440 () Bool)

(assert (=> d!1672276 m!6234440))

(assert (=> d!1672276 m!6234440))

(declare-fun m!6234442 () Bool)

(assert (=> b!5177724 m!6234442))

(declare-fun m!6234444 () Bool)

(assert (=> bm!363837 m!6234444))

(assert (=> d!1671596 d!1672276))

(declare-fun b!5177727 () Bool)

(declare-fun res!2200111 () Bool)

(declare-fun e!3226158 () Bool)

(assert (=> b!5177727 (=> (not res!2200111) (not e!3226158))))

(declare-fun lt!2133801 () List!60287)

(assert (=> b!5177727 (= res!2200111 (= (size!39693 lt!2133801) (+ (size!39693 (_1!35235 lt!2133244)) (size!39693 (_2!35235 lt!2133244)))))))

(declare-fun b!5177726 () Bool)

(declare-fun e!3226157 () List!60287)

(assert (=> b!5177726 (= e!3226157 (Cons!60163 (h!66611 (_1!35235 lt!2133244)) (++!13173 (t!373440 (_1!35235 lt!2133244)) (_2!35235 lt!2133244))))))

(declare-fun b!5177725 () Bool)

(assert (=> b!5177725 (= e!3226157 (_2!35235 lt!2133244))))

(declare-fun b!5177728 () Bool)

(assert (=> b!5177728 (= e!3226158 (or (not (= (_2!35235 lt!2133244) Nil!60163)) (= lt!2133801 (_1!35235 lt!2133244))))))

(declare-fun d!1672278 () Bool)

(assert (=> d!1672278 e!3226158))

(declare-fun res!2200110 () Bool)

(assert (=> d!1672278 (=> (not res!2200110) (not e!3226158))))

(assert (=> d!1672278 (= res!2200110 (= (content!10662 lt!2133801) ((_ map or) (content!10662 (_1!35235 lt!2133244)) (content!10662 (_2!35235 lt!2133244)))))))

(assert (=> d!1672278 (= lt!2133801 e!3226157)))

(declare-fun c!891923 () Bool)

(assert (=> d!1672278 (= c!891923 ((_ is Nil!60163) (_1!35235 lt!2133244)))))

(assert (=> d!1672278 (= (++!13173 (_1!35235 lt!2133244) (_2!35235 lt!2133244)) lt!2133801)))

(assert (= (and d!1672278 c!891923) b!5177725))

(assert (= (and d!1672278 (not c!891923)) b!5177726))

(assert (= (and d!1672278 res!2200110) b!5177727))

(assert (= (and b!5177727 res!2200111) b!5177728))

(declare-fun m!6234446 () Bool)

(assert (=> b!5177727 m!6234446))

(assert (=> b!5177727 m!6232566))

(declare-fun m!6234448 () Bool)

(assert (=> b!5177727 m!6234448))

(declare-fun m!6234450 () Bool)

(assert (=> b!5177726 m!6234450))

(declare-fun m!6234452 () Bool)

(assert (=> d!1672278 m!6234452))

(declare-fun m!6234454 () Bool)

(assert (=> d!1672278 m!6234454))

(declare-fun m!6234456 () Bool)

(assert (=> d!1672278 m!6234456))

(assert (=> d!1671596 d!1672278))

(declare-fun d!1672280 () Bool)

(declare-fun e!3226159 () Bool)

(assert (=> d!1672280 e!3226159))

(declare-fun res!2200113 () Bool)

(assert (=> d!1672280 (=> res!2200113 e!3226159)))

(declare-fun lt!2133802 () Bool)

(assert (=> d!1672280 (= res!2200113 (not lt!2133802))))

(declare-fun e!3226160 () Bool)

(assert (=> d!1672280 (= lt!2133802 e!3226160)))

(declare-fun res!2200115 () Bool)

(assert (=> d!1672280 (=> res!2200115 e!3226160)))

(assert (=> d!1672280 (= res!2200115 ((_ is Nil!60163) lt!2133055))))

(assert (=> d!1672280 (= (isPrefix!5790 lt!2133055 (++!13173 lt!2133055 call!363673)) lt!2133802)))

(declare-fun b!5177729 () Bool)

(declare-fun e!3226161 () Bool)

(assert (=> b!5177729 (= e!3226160 e!3226161)))

(declare-fun res!2200112 () Bool)

(assert (=> b!5177729 (=> (not res!2200112) (not e!3226161))))

(assert (=> b!5177729 (= res!2200112 (not ((_ is Nil!60163) (++!13173 lt!2133055 call!363673))))))

(declare-fun b!5177730 () Bool)

(declare-fun res!2200114 () Bool)

(assert (=> b!5177730 (=> (not res!2200114) (not e!3226161))))

(assert (=> b!5177730 (= res!2200114 (= (head!11075 lt!2133055) (head!11075 (++!13173 lt!2133055 call!363673))))))

(declare-fun b!5177731 () Bool)

(assert (=> b!5177731 (= e!3226161 (isPrefix!5790 (tail!10174 lt!2133055) (tail!10174 (++!13173 lt!2133055 call!363673))))))

(declare-fun b!5177732 () Bool)

(assert (=> b!5177732 (= e!3226159 (>= (size!39693 (++!13173 lt!2133055 call!363673)) (size!39693 lt!2133055)))))

(assert (= (and d!1672280 (not res!2200115)) b!5177729))

(assert (= (and b!5177729 res!2200112) b!5177730))

(assert (= (and b!5177730 res!2200114) b!5177731))

(assert (= (and d!1672280 (not res!2200113)) b!5177732))

(declare-fun m!6234458 () Bool)

(assert (=> b!5177730 m!6234458))

(assert (=> b!5177730 m!6232604))

(declare-fun m!6234460 () Bool)

(assert (=> b!5177730 m!6234460))

(declare-fun m!6234462 () Bool)

(assert (=> b!5177731 m!6234462))

(assert (=> b!5177731 m!6232604))

(declare-fun m!6234464 () Bool)

(assert (=> b!5177731 m!6234464))

(assert (=> b!5177731 m!6234462))

(assert (=> b!5177731 m!6234464))

(declare-fun m!6234466 () Bool)

(assert (=> b!5177731 m!6234466))

(assert (=> b!5177732 m!6232604))

(declare-fun m!6234468 () Bool)

(assert (=> b!5177732 m!6234468))

(assert (=> b!5177732 m!6232568))

(assert (=> d!1671596 d!1672280))

(declare-fun d!1672282 () Bool)

(assert (=> d!1672282 (= (isEmpty!32211 (_1!35235 lt!2133434)) ((_ is Nil!60163) (_1!35235 lt!2133434)))))

(assert (=> b!5177180 d!1672282))

(declare-fun b!5177735 () Bool)

(declare-fun res!2200117 () Bool)

(declare-fun e!3226163 () Bool)

(assert (=> b!5177735 (=> (not res!2200117) (not e!3226163))))

(declare-fun lt!2133803 () List!60287)

(assert (=> b!5177735 (= res!2200117 (= (size!39693 lt!2133803) (+ (size!39693 (t!373440 lt!2132884)) (size!39693 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)))))))

(declare-fun b!5177734 () Bool)

(declare-fun e!3226162 () List!60287)

(assert (=> b!5177734 (= e!3226162 (Cons!60163 (h!66611 (t!373440 lt!2132884)) (++!13173 (t!373440 (t!373440 lt!2132884)) (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163))))))

(declare-fun b!5177733 () Bool)

(assert (=> b!5177733 (= e!3226162 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163))))

(declare-fun b!5177736 () Bool)

(assert (=> b!5177736 (= e!3226163 (or (not (= (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163) Nil!60163)) (= lt!2133803 (t!373440 lt!2132884))))))

(declare-fun d!1672284 () Bool)

(assert (=> d!1672284 e!3226163))

(declare-fun res!2200116 () Bool)

(assert (=> d!1672284 (=> (not res!2200116) (not e!3226163))))

(assert (=> d!1672284 (= res!2200116 (= (content!10662 lt!2133803) ((_ map or) (content!10662 (t!373440 lt!2132884)) (content!10662 (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)))))))

(assert (=> d!1672284 (= lt!2133803 e!3226162)))

(declare-fun c!891924 () Bool)

(assert (=> d!1672284 (= c!891924 ((_ is Nil!60163) (t!373440 lt!2132884)))))

(assert (=> d!1672284 (= (++!13173 (t!373440 lt!2132884) (Cons!60163 (head!11075 (tail!10174 lt!2132885)) Nil!60163)) lt!2133803)))

(assert (= (and d!1672284 c!891924) b!5177733))

(assert (= (and d!1672284 (not c!891924)) b!5177734))

(assert (= (and d!1672284 res!2200116) b!5177735))

(assert (= (and b!5177735 res!2200117) b!5177736))

(declare-fun m!6234470 () Bool)

(assert (=> b!5177735 m!6234470))

(assert (=> b!5177735 m!6232126))

(assert (=> b!5177735 m!6232972))

(declare-fun m!6234472 () Bool)

(assert (=> b!5177734 m!6234472))

(declare-fun m!6234474 () Bool)

(assert (=> d!1672284 m!6234474))

(assert (=> d!1672284 m!6233904))

(assert (=> d!1672284 m!6232978))

(assert (=> b!5177122 d!1672284))

(declare-fun b!5177739 () Bool)

(declare-fun res!2200119 () Bool)

(declare-fun e!3226165 () Bool)

(assert (=> b!5177739 (=> (not res!2200119) (not e!3226165))))

(declare-fun lt!2133804 () List!60287)

(assert (=> b!5177739 (= res!2200119 (= (size!39693 lt!2133804) (+ (size!39693 (t!373440 lt!2132884)) (size!39693 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))))

(declare-fun b!5177738 () Bool)

(declare-fun e!3226164 () List!60287)

(assert (=> b!5177738 (= e!3226164 (Cons!60163 (h!66611 (t!373440 lt!2132884)) (++!13173 (t!373440 (t!373440 lt!2132884)) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))))))

(declare-fun b!5177737 () Bool)

(assert (=> b!5177737 (= e!3226164 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))))

(declare-fun b!5177740 () Bool)

(assert (=> b!5177740 (= e!3226165 (or (not (= (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163) Nil!60163)) (= lt!2133804 (t!373440 lt!2132884))))))

(declare-fun d!1672286 () Bool)

(assert (=> d!1672286 e!3226165))

(declare-fun res!2200118 () Bool)

(assert (=> d!1672286 (=> (not res!2200118) (not e!3226165))))

(assert (=> d!1672286 (= res!2200118 (= (content!10662 lt!2133804) ((_ map or) (content!10662 (t!373440 lt!2132884)) (content!10662 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)))))))

(assert (=> d!1672286 (= lt!2133804 e!3226164)))

(declare-fun c!891925 () Bool)

(assert (=> d!1672286 (= c!891925 ((_ is Nil!60163) (t!373440 lt!2132884)))))

(assert (=> d!1672286 (= (++!13173 (t!373440 lt!2132884) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)) lt!2133804)))

(assert (= (and d!1672286 c!891925) b!5177737))

(assert (= (and d!1672286 (not c!891925)) b!5177738))

(assert (= (and d!1672286 res!2200118) b!5177739))

(assert (= (and b!5177739 res!2200119) b!5177740))

(declare-fun m!6234476 () Bool)

(assert (=> b!5177739 m!6234476))

(assert (=> b!5177739 m!6232126))

(assert (=> b!5177739 m!6232914))

(declare-fun m!6234478 () Bool)

(assert (=> b!5177738 m!6234478))

(declare-fun m!6234480 () Bool)

(assert (=> d!1672286 m!6234480))

(assert (=> d!1672286 m!6233904))

(assert (=> d!1672286 m!6232922))

(assert (=> b!5177100 d!1672286))

(declare-fun d!1672288 () Bool)

(declare-fun lt!2133805 () Int)

(assert (=> d!1672288 (>= lt!2133805 0)))

(declare-fun e!3226166 () Int)

(assert (=> d!1672288 (= lt!2133805 e!3226166)))

(declare-fun c!891926 () Bool)

(assert (=> d!1672288 (= c!891926 ((_ is Nil!60163) lt!2133473))))

(assert (=> d!1672288 (= (size!39693 lt!2133473) lt!2133805)))

(declare-fun b!5177741 () Bool)

(assert (=> b!5177741 (= e!3226166 0)))

(declare-fun b!5177742 () Bool)

(assert (=> b!5177742 (= e!3226166 (+ 1 (size!39693 (t!373440 lt!2133473))))))

(assert (= (and d!1672288 c!891926) b!5177741))

(assert (= (and d!1672288 (not c!891926)) b!5177742))

(declare-fun m!6234482 () Bool)

(assert (=> b!5177742 m!6234482))

(assert (=> b!5177239 d!1672288))

(assert (=> b!5177239 d!1671500))

(declare-fun d!1672290 () Bool)

(declare-fun lt!2133806 () Int)

(assert (=> d!1672290 (>= lt!2133806 0)))

(declare-fun e!3226167 () Int)

(assert (=> d!1672290 (= lt!2133806 e!3226167)))

(declare-fun c!891927 () Bool)

(assert (=> d!1672290 (= c!891927 ((_ is Nil!60163) (Cons!60163 (head!11075 lt!2132885) Nil!60163)))))

(assert (=> d!1672290 (= (size!39693 (Cons!60163 (head!11075 lt!2132885) Nil!60163)) lt!2133806)))

(declare-fun b!5177743 () Bool)

(assert (=> b!5177743 (= e!3226167 0)))

(declare-fun b!5177744 () Bool)

(assert (=> b!5177744 (= e!3226167 (+ 1 (size!39693 (t!373440 (Cons!60163 (head!11075 lt!2132885) Nil!60163)))))))

(assert (= (and d!1672290 c!891927) b!5177743))

(assert (= (and d!1672290 (not c!891927)) b!5177744))

(declare-fun m!6234484 () Bool)

(assert (=> b!5177744 m!6234484))

(assert (=> b!5177239 d!1672290))

(assert (=> d!1671654 d!1671494))

(assert (=> d!1671654 d!1671650))

(assert (=> d!1671654 d!1671466))

(assert (=> d!1671654 d!1671474))

(assert (=> d!1671654 d!1671652))

(declare-fun b!5177747 () Bool)

(declare-fun res!2200121 () Bool)

(declare-fun e!3226169 () Bool)

(assert (=> b!5177747 (=> (not res!2200121) (not e!3226169))))

(declare-fun lt!2133807 () List!60287)

(assert (=> b!5177747 (= res!2200121 (= (size!39693 lt!2133807) (+ (size!39693 (t!373440 lt!2132884)) (size!39693 (tail!10174 lt!2132885)))))))

(declare-fun b!5177746 () Bool)

(declare-fun e!3226168 () List!60287)

(assert (=> b!5177746 (= e!3226168 (Cons!60163 (h!66611 (t!373440 lt!2132884)) (++!13173 (t!373440 (t!373440 lt!2132884)) (tail!10174 lt!2132885))))))

(declare-fun b!5177745 () Bool)

(assert (=> b!5177745 (= e!3226168 (tail!10174 lt!2132885))))

(declare-fun b!5177748 () Bool)

(assert (=> b!5177748 (= e!3226169 (or (not (= (tail!10174 lt!2132885) Nil!60163)) (= lt!2133807 (t!373440 lt!2132884))))))

(declare-fun d!1672292 () Bool)

(assert (=> d!1672292 e!3226169))

(declare-fun res!2200120 () Bool)

(assert (=> d!1672292 (=> (not res!2200120) (not e!3226169))))

(assert (=> d!1672292 (= res!2200120 (= (content!10662 lt!2133807) ((_ map or) (content!10662 (t!373440 lt!2132884)) (content!10662 (tail!10174 lt!2132885)))))))

(assert (=> d!1672292 (= lt!2133807 e!3226168)))

(declare-fun c!891928 () Bool)

(assert (=> d!1672292 (= c!891928 ((_ is Nil!60163) (t!373440 lt!2132884)))))

(assert (=> d!1672292 (= (++!13173 (t!373440 lt!2132884) (tail!10174 lt!2132885)) lt!2133807)))

(assert (= (and d!1672292 c!891928) b!5177745))

(assert (= (and d!1672292 (not c!891928)) b!5177746))

(assert (= (and d!1672292 res!2200120) b!5177747))

(assert (= (and b!5177747 res!2200121) b!5177748))

(declare-fun m!6234486 () Bool)

(assert (=> b!5177747 m!6234486))

(assert (=> b!5177747 m!6232126))

(assert (=> b!5177747 m!6232054))

(assert (=> b!5177747 m!6232642))

(assert (=> b!5177746 m!6232054))

(declare-fun m!6234488 () Bool)

(assert (=> b!5177746 m!6234488))

(declare-fun m!6234490 () Bool)

(assert (=> d!1672292 m!6234490))

(assert (=> d!1672292 m!6233904))

(assert (=> d!1672292 m!6232054))

(assert (=> d!1672292 m!6232650))

(assert (=> b!5176989 d!1672292))

(assert (=> d!1671732 d!1671728))

(assert (=> d!1671732 d!1671722))

(declare-fun d!1672294 () Bool)

(assert (=> d!1672294 (isPrefix!5790 lt!2132884 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))))

(assert (=> d!1672294 true))

(declare-fun _$46!1995 () Unit!151998)

(assert (=> d!1672294 (= (choose!38444 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)) _$46!1995)))

(declare-fun bs!1205293 () Bool)

(assert (= bs!1205293 d!1672294))

(assert (=> bs!1205293 m!6232090))

(assert (=> bs!1205293 m!6232202))

(assert (=> bs!1205293 m!6232202))

(assert (=> bs!1205293 m!6232204))

(assert (=> d!1671732 d!1672294))

(declare-fun d!1672296 () Bool)

(assert (=> d!1672296 (= (isEmpty!32211 (_1!35235 lt!2133459)) ((_ is Nil!60163) (_1!35235 lt!2133459)))))

(assert (=> b!5177211 d!1672296))

(declare-fun d!1672298 () Bool)

(assert (=> d!1672298 (= (flatMap!460 lt!2132878 lambda!258615) (choose!38443 lt!2132878 lambda!258615))))

(declare-fun bs!1205294 () Bool)

(assert (= bs!1205294 d!1672298))

(declare-fun m!6234492 () Bool)

(assert (=> bs!1205294 m!6234492))

(assert (=> d!1671672 d!1672298))

(declare-fun d!1672300 () Bool)

(declare-fun e!3226170 () Bool)

(assert (=> d!1672300 e!3226170))

(declare-fun res!2200123 () Bool)

(assert (=> d!1672300 (=> res!2200123 e!3226170)))

(declare-fun lt!2133808 () Bool)

(assert (=> d!1672300 (= res!2200123 (not lt!2133808))))

(declare-fun e!3226171 () Bool)

(assert (=> d!1672300 (= lt!2133808 e!3226171)))

(declare-fun res!2200125 () Bool)

(assert (=> d!1672300 (=> res!2200125 e!3226171)))

(assert (=> d!1672300 (= res!2200125 ((_ is Nil!60163) (tail!10174 (tail!10174 lt!2132884))))))

(assert (=> d!1672300 (= (isPrefix!5790 (tail!10174 (tail!10174 lt!2132884)) (tail!10174 (tail!10174 input!5817))) lt!2133808)))

(declare-fun b!5177749 () Bool)

(declare-fun e!3226172 () Bool)

(assert (=> b!5177749 (= e!3226171 e!3226172)))

(declare-fun res!2200122 () Bool)

(assert (=> b!5177749 (=> (not res!2200122) (not e!3226172))))

(assert (=> b!5177749 (= res!2200122 (not ((_ is Nil!60163) (tail!10174 (tail!10174 input!5817)))))))

(declare-fun b!5177750 () Bool)

(declare-fun res!2200124 () Bool)

(assert (=> b!5177750 (=> (not res!2200124) (not e!3226172))))

(assert (=> b!5177750 (= res!2200124 (= (head!11075 (tail!10174 (tail!10174 lt!2132884))) (head!11075 (tail!10174 (tail!10174 input!5817)))))))

(declare-fun b!5177751 () Bool)

(assert (=> b!5177751 (= e!3226172 (isPrefix!5790 (tail!10174 (tail!10174 (tail!10174 lt!2132884))) (tail!10174 (tail!10174 (tail!10174 input!5817)))))))

(declare-fun b!5177752 () Bool)

(assert (=> b!5177752 (= e!3226170 (>= (size!39693 (tail!10174 (tail!10174 input!5817))) (size!39693 (tail!10174 (tail!10174 lt!2132884)))))))

(assert (= (and d!1672300 (not res!2200125)) b!5177749))

(assert (= (and b!5177749 res!2200122) b!5177750))

(assert (= (and b!5177750 res!2200124) b!5177751))

(assert (= (and d!1672300 (not res!2200123)) b!5177752))

(assert (=> b!5177750 m!6233036))

(declare-fun m!6234494 () Bool)

(assert (=> b!5177750 m!6234494))

(assert (=> b!5177750 m!6232680))

(declare-fun m!6234496 () Bool)

(assert (=> b!5177750 m!6234496))

(assert (=> b!5177751 m!6233036))

(declare-fun m!6234498 () Bool)

(assert (=> b!5177751 m!6234498))

(assert (=> b!5177751 m!6232680))

(assert (=> b!5177751 m!6234122))

(assert (=> b!5177751 m!6234498))

(assert (=> b!5177751 m!6234122))

(declare-fun m!6234500 () Bool)

(assert (=> b!5177751 m!6234500))

(assert (=> b!5177752 m!6232680))

(assert (=> b!5177752 m!6234120))

(assert (=> b!5177752 m!6233036))

(declare-fun m!6234502 () Bool)

(assert (=> b!5177752 m!6234502))

(assert (=> b!5177149 d!1672300))

(declare-fun d!1672302 () Bool)

(assert (=> d!1672302 (= (tail!10174 (tail!10174 lt!2132884)) (t!373440 (tail!10174 lt!2132884)))))

(assert (=> b!5177149 d!1672302))

(assert (=> b!5177149 d!1672160))

(declare-fun d!1672304 () Bool)

(assert (=> d!1672304 (= (isEmpty!32211 (_1!35235 lt!2133314)) ((_ is Nil!60163) (_1!35235 lt!2133314)))))

(assert (=> b!5177023 d!1672304))

(assert (=> d!1671710 d!1671466))

(assert (=> d!1671710 d!1671494))

(declare-fun d!1672306 () Bool)

(assert (=> d!1672306 (<= (size!39693 lt!2132884) (size!39693 input!5817))))

(assert (=> d!1672306 true))

(declare-fun _$64!718 () Unit!151998)

(assert (=> d!1672306 (= (choose!38440 lt!2132884 input!5817) _$64!718)))

(declare-fun bs!1205295 () Bool)

(assert (= bs!1205295 d!1672306))

(assert (=> bs!1205295 m!6232094))

(assert (=> bs!1205295 m!6232070))

(assert (=> d!1671710 d!1672306))

(assert (=> d!1671710 d!1671550))

(assert (=> b!5177090 d!1671494))

(declare-fun d!1672308 () Bool)

(declare-fun lt!2133809 () Int)

(assert (=> d!1672308 (>= lt!2133809 0)))

(declare-fun e!3226173 () Int)

(assert (=> d!1672308 (= lt!2133809 e!3226173)))

(declare-fun c!891929 () Bool)

(assert (=> d!1672308 (= c!891929 ((_ is Nil!60163) (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))))))

(assert (=> d!1672308 (= (size!39693 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))) lt!2133809)))

(declare-fun b!5177753 () Bool)

(assert (=> b!5177753 (= e!3226173 0)))

(declare-fun b!5177754 () Bool)

(assert (=> b!5177754 (= e!3226173 (+ 1 (size!39693 (t!373440 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163))))))))

(assert (= (and d!1672308 c!891929) b!5177753))

(assert (= (and d!1672308 (not c!891929)) b!5177754))

(declare-fun m!6234504 () Bool)

(assert (=> b!5177754 m!6234504))

(assert (=> b!5177090 d!1672308))

(declare-fun bs!1205296 () Bool)

(declare-fun d!1672310 () Bool)

(assert (= bs!1205296 (and d!1672310 d!1672126)))

(declare-fun lambda!258680 () Int)

(assert (=> bs!1205296 (= (= call!363779 call!363745) (= lambda!258680 lambda!258672))))

(declare-fun bs!1205297 () Bool)

(assert (= bs!1205297 (and d!1672310 d!1671532)))

(assert (=> bs!1205297 (= (= call!363779 lt!2132879) (= lambda!258680 lambda!258589))))

(declare-fun bs!1205298 () Bool)

(assert (= bs!1205298 (and d!1672310 d!1671870)))

(assert (=> bs!1205298 (= (= call!363779 (h!66611 lt!2132884)) (= lambda!258680 lambda!258629))))

(declare-fun bs!1205299 () Bool)

(assert (= bs!1205299 (and d!1672310 d!1671662)))

(assert (=> bs!1205299 (= (= call!363779 call!363667) (= lambda!258680 lambda!258614))))

(declare-fun bs!1205300 () Bool)

(assert (= bs!1205300 (and d!1672310 d!1671786)))

(assert (=> bs!1205300 (= (= call!363779 call!363675) (= lambda!258680 lambda!258622))))

(declare-fun bs!1205301 () Bool)

(assert (= bs!1205301 (and d!1672310 d!1672080)))

(assert (=> bs!1205301 (= (= call!363779 call!363771) (= lambda!258680 lambda!258667))))

(declare-fun bs!1205302 () Bool)

(assert (= bs!1205302 (and d!1672310 d!1671836)))

(assert (=> bs!1205302 (= (= call!363779 (head!11075 (_1!35235 lt!2132881))) (= lambda!258680 lambda!258625))))

(declare-fun bs!1205303 () Bool)

(assert (= bs!1205303 (and d!1672310 d!1671850)))

(assert (=> bs!1205303 (= (= call!363779 (head!11075 (_1!35235 lt!2132877))) (= lambda!258680 lambda!258626))))

(declare-fun bs!1205304 () Bool)

(assert (= bs!1205304 (and d!1672310 d!1671672)))

(assert (=> bs!1205304 (= (= call!363779 call!363707) (= lambda!258680 lambda!258615))))

(declare-fun bs!1205305 () Bool)

(assert (= bs!1205305 (and d!1672310 d!1671866)))

(assert (=> bs!1205305 (= (= call!363779 (h!66611 testedP!294)) (= lambda!258680 lambda!258628))))

(assert (=> d!1672310 true))

(assert (=> d!1672310 (= (derivationStepZipper!1003 call!363711 call!363779) (flatMap!460 call!363711 lambda!258680))))

(declare-fun bs!1205306 () Bool)

(assert (= bs!1205306 d!1672310))

(declare-fun m!6234506 () Bool)

(assert (=> bs!1205306 m!6234506))

(assert (=> bm!363772 d!1672310))

(declare-fun d!1672312 () Bool)

(declare-fun c!891930 () Bool)

(assert (=> d!1672312 (= c!891930 ((_ is Nil!60163) lt!2133282))))

(declare-fun e!3226174 () (InoxSet C!29584))

(assert (=> d!1672312 (= (content!10662 lt!2133282) e!3226174)))

(declare-fun b!5177755 () Bool)

(assert (=> b!5177755 (= e!3226174 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177756 () Bool)

(assert (=> b!5177756 (= e!3226174 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133282) true) (content!10662 (t!373440 lt!2133282))))))

(assert (= (and d!1672312 c!891930) b!5177755))

(assert (= (and d!1672312 (not c!891930)) b!5177756))

(declare-fun m!6234508 () Bool)

(assert (=> b!5177756 m!6234508))

(declare-fun m!6234510 () Bool)

(assert (=> b!5177756 m!6234510))

(assert (=> d!1671616 d!1672312))

(assert (=> d!1671616 d!1671642))

(declare-fun d!1672314 () Bool)

(declare-fun c!891931 () Bool)

(assert (=> d!1672314 (= c!891931 ((_ is Nil!60163) lt!2133073))))

(declare-fun e!3226175 () (InoxSet C!29584))

(assert (=> d!1672314 (= (content!10662 lt!2133073) e!3226175)))

(declare-fun b!5177757 () Bool)

(assert (=> b!5177757 (= e!3226175 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177758 () Bool)

(assert (=> b!5177758 (= e!3226175 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133073) true) (content!10662 (t!373440 lt!2133073))))))

(assert (= (and d!1672314 c!891931) b!5177757))

(assert (= (and d!1672314 (not c!891931)) b!5177758))

(declare-fun m!6234512 () Bool)

(assert (=> b!5177758 m!6234512))

(declare-fun m!6234514 () Bool)

(assert (=> b!5177758 m!6234514))

(assert (=> d!1671616 d!1672314))

(assert (=> b!5176970 d!1671494))

(assert (=> b!5176970 d!1672060))

(declare-fun b!5177761 () Bool)

(declare-fun res!2200127 () Bool)

(declare-fun e!3226177 () Bool)

(assert (=> b!5177761 (=> (not res!2200127) (not e!3226177))))

(declare-fun lt!2133810 () List!60287)

(assert (=> b!5177761 (= res!2200127 (= (size!39693 lt!2133810) (+ (size!39693 lt!2133055) (size!39693 (Cons!60163 (head!11075 call!363673) Nil!60163)))))))

(declare-fun b!5177760 () Bool)

(declare-fun e!3226176 () List!60287)

(assert (=> b!5177760 (= e!3226176 (Cons!60163 (h!66611 lt!2133055) (++!13173 (t!373440 lt!2133055) (Cons!60163 (head!11075 call!363673) Nil!60163))))))

(declare-fun b!5177759 () Bool)

(assert (=> b!5177759 (= e!3226176 (Cons!60163 (head!11075 call!363673) Nil!60163))))

(declare-fun b!5177762 () Bool)

(assert (=> b!5177762 (= e!3226177 (or (not (= (Cons!60163 (head!11075 call!363673) Nil!60163) Nil!60163)) (= lt!2133810 lt!2133055)))))

(declare-fun d!1672316 () Bool)

(assert (=> d!1672316 e!3226177))

(declare-fun res!2200126 () Bool)

(assert (=> d!1672316 (=> (not res!2200126) (not e!3226177))))

(assert (=> d!1672316 (= res!2200126 (= (content!10662 lt!2133810) ((_ map or) (content!10662 lt!2133055) (content!10662 (Cons!60163 (head!11075 call!363673) Nil!60163)))))))

(assert (=> d!1672316 (= lt!2133810 e!3226176)))

(declare-fun c!891932 () Bool)

(assert (=> d!1672316 (= c!891932 ((_ is Nil!60163) lt!2133055))))

(assert (=> d!1672316 (= (++!13173 lt!2133055 (Cons!60163 (head!11075 call!363673) Nil!60163)) lt!2133810)))

(assert (= (and d!1672316 c!891932) b!5177759))

(assert (= (and d!1672316 (not c!891932)) b!5177760))

(assert (= (and d!1672316 res!2200126) b!5177761))

(assert (= (and b!5177761 res!2200127) b!5177762))

(declare-fun m!6234516 () Bool)

(assert (=> b!5177761 m!6234516))

(assert (=> b!5177761 m!6232568))

(declare-fun m!6234518 () Bool)

(assert (=> b!5177761 m!6234518))

(declare-fun m!6234520 () Bool)

(assert (=> b!5177760 m!6234520))

(declare-fun m!6234522 () Bool)

(assert (=> d!1672316 m!6234522))

(assert (=> d!1672316 m!6234418))

(declare-fun m!6234524 () Bool)

(assert (=> d!1672316 m!6234524))

(assert (=> b!5176970 d!1672316))

(declare-fun d!1672318 () Bool)

(assert (=> d!1672318 (<= (size!39693 lt!2133055) (size!39693 input!5817))))

(declare-fun lt!2133811 () Unit!151998)

(assert (=> d!1672318 (= lt!2133811 (choose!38440 lt!2133055 input!5817))))

(assert (=> d!1672318 (isPrefix!5790 lt!2133055 input!5817)))

(assert (=> d!1672318 (= (lemmaIsPrefixThenSmallerEqSize!951 lt!2133055 input!5817) lt!2133811)))

(declare-fun bs!1205307 () Bool)

(assert (= bs!1205307 d!1672318))

(assert (=> bs!1205307 m!6232568))

(assert (=> bs!1205307 m!6232070))

(declare-fun m!6234526 () Bool)

(assert (=> bs!1205307 m!6234526))

(assert (=> bs!1205307 m!6234424))

(assert (=> b!5176970 d!1672318))

(declare-fun b!5177765 () Bool)

(declare-fun res!2200129 () Bool)

(declare-fun e!3226179 () Bool)

(assert (=> b!5177765 (=> (not res!2200129) (not e!3226179))))

(declare-fun lt!2133812 () List!60287)

(assert (=> b!5177765 (= res!2200129 (= (size!39693 lt!2133812) (+ (size!39693 (++!13173 lt!2133055 (Cons!60163 lt!2133237 Nil!60163))) (size!39693 lt!2133240))))))

(declare-fun e!3226178 () List!60287)

(declare-fun b!5177764 () Bool)

(assert (=> b!5177764 (= e!3226178 (Cons!60163 (h!66611 (++!13173 lt!2133055 (Cons!60163 lt!2133237 Nil!60163))) (++!13173 (t!373440 (++!13173 lt!2133055 (Cons!60163 lt!2133237 Nil!60163))) lt!2133240)))))

(declare-fun b!5177763 () Bool)

(assert (=> b!5177763 (= e!3226178 lt!2133240)))

(declare-fun b!5177766 () Bool)

(assert (=> b!5177766 (= e!3226179 (or (not (= lt!2133240 Nil!60163)) (= lt!2133812 (++!13173 lt!2133055 (Cons!60163 lt!2133237 Nil!60163)))))))

(declare-fun d!1672320 () Bool)

(assert (=> d!1672320 e!3226179))

(declare-fun res!2200128 () Bool)

(assert (=> d!1672320 (=> (not res!2200128) (not e!3226179))))

(assert (=> d!1672320 (= res!2200128 (= (content!10662 lt!2133812) ((_ map or) (content!10662 (++!13173 lt!2133055 (Cons!60163 lt!2133237 Nil!60163))) (content!10662 lt!2133240))))))

(assert (=> d!1672320 (= lt!2133812 e!3226178)))

(declare-fun c!891933 () Bool)

(assert (=> d!1672320 (= c!891933 ((_ is Nil!60163) (++!13173 lt!2133055 (Cons!60163 lt!2133237 Nil!60163))))))

(assert (=> d!1672320 (= (++!13173 (++!13173 lt!2133055 (Cons!60163 lt!2133237 Nil!60163)) lt!2133240) lt!2133812)))

(assert (= (and d!1672320 c!891933) b!5177763))

(assert (= (and d!1672320 (not c!891933)) b!5177764))

(assert (= (and d!1672320 res!2200128) b!5177765))

(assert (= (and b!5177765 res!2200129) b!5177766))

(declare-fun m!6234528 () Bool)

(assert (=> b!5177765 m!6234528))

(assert (=> b!5177765 m!6232582))

(declare-fun m!6234530 () Bool)

(assert (=> b!5177765 m!6234530))

(declare-fun m!6234532 () Bool)

(assert (=> b!5177765 m!6234532))

(declare-fun m!6234534 () Bool)

(assert (=> b!5177764 m!6234534))

(declare-fun m!6234536 () Bool)

(assert (=> d!1672320 m!6234536))

(assert (=> d!1672320 m!6232582))

(declare-fun m!6234538 () Bool)

(assert (=> d!1672320 m!6234538))

(declare-fun m!6234540 () Bool)

(assert (=> d!1672320 m!6234540))

(assert (=> b!5176970 d!1672320))

(declare-fun b!5177769 () Bool)

(declare-fun res!2200131 () Bool)

(declare-fun e!3226181 () Bool)

(assert (=> b!5177769 (=> (not res!2200131) (not e!3226181))))

(declare-fun lt!2133813 () List!60287)

(assert (=> b!5177769 (= res!2200131 (= (size!39693 lt!2133813) (+ (size!39693 lt!2133055) (size!39693 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163)))))))

(declare-fun b!5177768 () Bool)

(declare-fun e!3226180 () List!60287)

(assert (=> b!5177768 (= e!3226180 (Cons!60163 (h!66611 lt!2133055) (++!13173 (t!373440 lt!2133055) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163))))))

(declare-fun b!5177767 () Bool)

(assert (=> b!5177767 (= e!3226180 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163))))

(declare-fun b!5177770 () Bool)

(assert (=> b!5177770 (= e!3226181 (or (not (= (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163) Nil!60163)) (= lt!2133813 lt!2133055)))))

(declare-fun d!1672322 () Bool)

(assert (=> d!1672322 e!3226181))

(declare-fun res!2200130 () Bool)

(assert (=> d!1672322 (=> (not res!2200130) (not e!3226181))))

(assert (=> d!1672322 (= res!2200130 (= (content!10662 lt!2133813) ((_ map or) (content!10662 lt!2133055) (content!10662 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163)))))))

(assert (=> d!1672322 (= lt!2133813 e!3226180)))

(declare-fun c!891934 () Bool)

(assert (=> d!1672322 (= c!891934 ((_ is Nil!60163) lt!2133055))))

(assert (=> d!1672322 (= (++!13173 lt!2133055 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163)) lt!2133813)))

(assert (= (and d!1672322 c!891934) b!5177767))

(assert (= (and d!1672322 (not c!891934)) b!5177768))

(assert (= (and d!1672322 res!2200130) b!5177769))

(assert (= (and b!5177769 res!2200131) b!5177770))

(declare-fun m!6234542 () Bool)

(assert (=> b!5177769 m!6234542))

(assert (=> b!5177769 m!6232568))

(declare-fun m!6234544 () Bool)

(assert (=> b!5177769 m!6234544))

(declare-fun m!6234546 () Bool)

(assert (=> b!5177768 m!6234546))

(declare-fun m!6234548 () Bool)

(assert (=> d!1672322 m!6234548))

(assert (=> d!1672322 m!6234418))

(declare-fun m!6234550 () Bool)

(assert (=> d!1672322 m!6234550))

(assert (=> b!5176970 d!1672322))

(assert (=> b!5176970 d!1672274))

(assert (=> b!5176970 d!1672254))

(declare-fun d!1672324 () Bool)

(assert (=> d!1672324 (= (++!13173 (++!13173 lt!2133055 (Cons!60163 lt!2133237 Nil!60163)) lt!2133240) input!5817)))

(declare-fun lt!2133814 () Unit!151998)

(assert (=> d!1672324 (= lt!2133814 (choose!38447 lt!2133055 lt!2133237 lt!2133240 input!5817))))

(assert (=> d!1672324 (= (++!13173 lt!2133055 (Cons!60163 lt!2133237 lt!2133240)) input!5817)))

(assert (=> d!1672324 (= (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2133055 lt!2133237 lt!2133240 input!5817) lt!2133814)))

(declare-fun bs!1205308 () Bool)

(assert (= bs!1205308 d!1672324))

(assert (=> bs!1205308 m!6232582))

(assert (=> bs!1205308 m!6232582))

(assert (=> bs!1205308 m!6232584))

(declare-fun m!6234552 () Bool)

(assert (=> bs!1205308 m!6234552))

(declare-fun m!6234554 () Bool)

(assert (=> bs!1205308 m!6234554))

(assert (=> b!5176970 d!1672324))

(declare-fun d!1672326 () Bool)

(assert (=> d!1672326 (= (head!11075 call!363673) (h!66611 call!363673))))

(assert (=> b!5176970 d!1672326))

(declare-fun b!5177773 () Bool)

(declare-fun res!2200133 () Bool)

(declare-fun e!3226183 () Bool)

(assert (=> b!5177773 (=> (not res!2200133) (not e!3226183))))

(declare-fun lt!2133815 () List!60287)

(assert (=> b!5177773 (= res!2200133 (= (size!39693 lt!2133815) (+ (size!39693 lt!2133055) (size!39693 (Cons!60163 lt!2133237 Nil!60163)))))))

(declare-fun b!5177772 () Bool)

(declare-fun e!3226182 () List!60287)

(assert (=> b!5177772 (= e!3226182 (Cons!60163 (h!66611 lt!2133055) (++!13173 (t!373440 lt!2133055) (Cons!60163 lt!2133237 Nil!60163))))))

(declare-fun b!5177771 () Bool)

(assert (=> b!5177771 (= e!3226182 (Cons!60163 lt!2133237 Nil!60163))))

(declare-fun b!5177774 () Bool)

(assert (=> b!5177774 (= e!3226183 (or (not (= (Cons!60163 lt!2133237 Nil!60163) Nil!60163)) (= lt!2133815 lt!2133055)))))

(declare-fun d!1672328 () Bool)

(assert (=> d!1672328 e!3226183))

(declare-fun res!2200132 () Bool)

(assert (=> d!1672328 (=> (not res!2200132) (not e!3226183))))

(assert (=> d!1672328 (= res!2200132 (= (content!10662 lt!2133815) ((_ map or) (content!10662 lt!2133055) (content!10662 (Cons!60163 lt!2133237 Nil!60163)))))))

(assert (=> d!1672328 (= lt!2133815 e!3226182)))

(declare-fun c!891935 () Bool)

(assert (=> d!1672328 (= c!891935 ((_ is Nil!60163) lt!2133055))))

(assert (=> d!1672328 (= (++!13173 lt!2133055 (Cons!60163 lt!2133237 Nil!60163)) lt!2133815)))

(assert (= (and d!1672328 c!891935) b!5177771))

(assert (= (and d!1672328 (not c!891935)) b!5177772))

(assert (= (and d!1672328 res!2200132) b!5177773))

(assert (= (and b!5177773 res!2200133) b!5177774))

(declare-fun m!6234556 () Bool)

(assert (=> b!5177773 m!6234556))

(assert (=> b!5177773 m!6232568))

(declare-fun m!6234558 () Bool)

(assert (=> b!5177773 m!6234558))

(declare-fun m!6234560 () Bool)

(assert (=> b!5177772 m!6234560))

(declare-fun m!6234562 () Bool)

(assert (=> d!1672328 m!6234562))

(assert (=> d!1672328 m!6234418))

(declare-fun m!6234564 () Bool)

(assert (=> d!1672328 m!6234564))

(assert (=> b!5176970 d!1672328))

(declare-fun d!1672330 () Bool)

(assert (=> d!1672330 (isPrefix!5790 (++!13173 lt!2133055 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163)) input!5817)))

(declare-fun lt!2133816 () Unit!151998)

(assert (=> d!1672330 (= lt!2133816 (choose!38441 lt!2133055 input!5817))))

(assert (=> d!1672330 (isPrefix!5790 lt!2133055 input!5817)))

(assert (=> d!1672330 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2133055 input!5817) lt!2133816)))

(declare-fun bs!1205309 () Bool)

(assert (= bs!1205309 d!1672330))

(declare-fun m!6234566 () Bool)

(assert (=> bs!1205309 m!6234566))

(assert (=> bs!1205309 m!6232588))

(assert (=> bs!1205309 m!6232590))

(assert (=> bs!1205309 m!6232596))

(assert (=> bs!1205309 m!6232596))

(assert (=> bs!1205309 m!6232598))

(assert (=> bs!1205309 m!6232588))

(assert (=> bs!1205309 m!6234424))

(assert (=> b!5176970 d!1672330))

(declare-fun d!1672332 () Bool)

(declare-fun e!3226184 () Bool)

(assert (=> d!1672332 e!3226184))

(declare-fun res!2200135 () Bool)

(assert (=> d!1672332 (=> res!2200135 e!3226184)))

(declare-fun lt!2133817 () Bool)

(assert (=> d!1672332 (= res!2200135 (not lt!2133817))))

(declare-fun e!3226185 () Bool)

(assert (=> d!1672332 (= lt!2133817 e!3226185)))

(declare-fun res!2200137 () Bool)

(assert (=> d!1672332 (=> res!2200137 e!3226185)))

(assert (=> d!1672332 (= res!2200137 ((_ is Nil!60163) (++!13173 lt!2133055 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163))))))

(assert (=> d!1672332 (= (isPrefix!5790 (++!13173 lt!2133055 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163)) input!5817) lt!2133817)))

(declare-fun b!5177775 () Bool)

(declare-fun e!3226186 () Bool)

(assert (=> b!5177775 (= e!3226185 e!3226186)))

(declare-fun res!2200134 () Bool)

(assert (=> b!5177775 (=> (not res!2200134) (not e!3226186))))

(assert (=> b!5177775 (= res!2200134 (not ((_ is Nil!60163) input!5817)))))

(declare-fun b!5177776 () Bool)

(declare-fun res!2200136 () Bool)

(assert (=> b!5177776 (=> (not res!2200136) (not e!3226186))))

(assert (=> b!5177776 (= res!2200136 (= (head!11075 (++!13173 lt!2133055 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163))) (head!11075 input!5817)))))

(declare-fun b!5177777 () Bool)

(assert (=> b!5177777 (= e!3226186 (isPrefix!5790 (tail!10174 (++!13173 lt!2133055 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163))) (tail!10174 input!5817)))))

(declare-fun b!5177778 () Bool)

(assert (=> b!5177778 (= e!3226184 (>= (size!39693 input!5817) (size!39693 (++!13173 lt!2133055 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2133055)) Nil!60163)))))))

(assert (= (and d!1672332 (not res!2200137)) b!5177775))

(assert (= (and b!5177775 res!2200134) b!5177776))

(assert (= (and b!5177776 res!2200136) b!5177777))

(assert (= (and d!1672332 (not res!2200135)) b!5177778))

(assert (=> b!5177776 m!6232596))

(declare-fun m!6234568 () Bool)

(assert (=> b!5177776 m!6234568))

(assert (=> b!5177776 m!6232316))

(assert (=> b!5177777 m!6232596))

(declare-fun m!6234570 () Bool)

(assert (=> b!5177777 m!6234570))

(assert (=> b!5177777 m!6232140))

(assert (=> b!5177777 m!6234570))

(assert (=> b!5177777 m!6232140))

(declare-fun m!6234572 () Bool)

(assert (=> b!5177777 m!6234572))

(assert (=> b!5177778 m!6232070))

(assert (=> b!5177778 m!6232596))

(declare-fun m!6234574 () Bool)

(assert (=> b!5177778 m!6234574))

(assert (=> b!5176970 d!1672332))

(declare-fun d!1672334 () Bool)

(assert (=> d!1672334 (= (head!11075 (getSuffix!3438 input!5817 lt!2133055)) (h!66611 (getSuffix!3438 input!5817 lt!2133055)))))

(assert (=> b!5176970 d!1672334))

(declare-fun d!1672336 () Bool)

(assert (=> d!1672336 (= (head!11075 call!363665) (h!66611 call!363665))))

(assert (=> bm!363769 d!1672336))

(declare-fun d!1672338 () Bool)

(declare-fun c!891936 () Bool)

(assert (=> d!1672338 (= c!891936 ((_ is Nil!60163) lt!2133473))))

(declare-fun e!3226187 () (InoxSet C!29584))

(assert (=> d!1672338 (= (content!10662 lt!2133473) e!3226187)))

(declare-fun b!5177779 () Bool)

(assert (=> b!5177779 (= e!3226187 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177780 () Bool)

(assert (=> b!5177780 (= e!3226187 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133473) true) (content!10662 (t!373440 lt!2133473))))))

(assert (= (and d!1672338 c!891936) b!5177779))

(assert (= (and d!1672338 (not c!891936)) b!5177780))

(declare-fun m!6234576 () Bool)

(assert (=> b!5177780 m!6234576))

(declare-fun m!6234578 () Bool)

(assert (=> b!5177780 m!6234578))

(assert (=> d!1671830 d!1672338))

(assert (=> d!1671830 d!1671642))

(declare-fun d!1672340 () Bool)

(declare-fun c!891937 () Bool)

(assert (=> d!1672340 (= c!891937 ((_ is Nil!60163) (Cons!60163 (head!11075 lt!2132885) Nil!60163)))))

(declare-fun e!3226188 () (InoxSet C!29584))

(assert (=> d!1672340 (= (content!10662 (Cons!60163 (head!11075 lt!2132885) Nil!60163)) e!3226188)))

(declare-fun b!5177781 () Bool)

(assert (=> b!5177781 (= e!3226188 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177782 () Bool)

(assert (=> b!5177782 (= e!3226188 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (Cons!60163 (head!11075 lt!2132885) Nil!60163)) true) (content!10662 (t!373440 (Cons!60163 (head!11075 lt!2132885) Nil!60163)))))))

(assert (= (and d!1672340 c!891937) b!5177781))

(assert (= (and d!1672340 (not c!891937)) b!5177782))

(declare-fun m!6234580 () Bool)

(assert (=> b!5177782 m!6234580))

(declare-fun m!6234582 () Bool)

(assert (=> b!5177782 m!6234582))

(assert (=> d!1671830 d!1672340))

(declare-fun b!5177785 () Bool)

(declare-fun res!2200139 () Bool)

(declare-fun e!3226190 () Bool)

(assert (=> b!5177785 (=> (not res!2200139) (not e!3226190))))

(declare-fun lt!2133818 () List!60287)

(assert (=> b!5177785 (= res!2200139 (= (size!39693 lt!2133818) (+ (size!39693 (t!373440 testedP!294)) (size!39693 lt!2133073))))))

(declare-fun b!5177784 () Bool)

(declare-fun e!3226189 () List!60287)

(assert (=> b!5177784 (= e!3226189 (Cons!60163 (h!66611 (t!373440 testedP!294)) (++!13173 (t!373440 (t!373440 testedP!294)) lt!2133073)))))

(declare-fun b!5177783 () Bool)

(assert (=> b!5177783 (= e!3226189 lt!2133073)))

(declare-fun b!5177786 () Bool)

(assert (=> b!5177786 (= e!3226190 (or (not (= lt!2133073 Nil!60163)) (= lt!2133818 (t!373440 testedP!294))))))

(declare-fun d!1672342 () Bool)

(assert (=> d!1672342 e!3226190))

(declare-fun res!2200138 () Bool)

(assert (=> d!1672342 (=> (not res!2200138) (not e!3226190))))

(assert (=> d!1672342 (= res!2200138 (= (content!10662 lt!2133818) ((_ map or) (content!10662 (t!373440 testedP!294)) (content!10662 lt!2133073))))))

(assert (=> d!1672342 (= lt!2133818 e!3226189)))

(declare-fun c!891938 () Bool)

(assert (=> d!1672342 (= c!891938 ((_ is Nil!60163) (t!373440 testedP!294)))))

(assert (=> d!1672342 (= (++!13173 (t!373440 testedP!294) lt!2133073) lt!2133818)))

(assert (= (and d!1672342 c!891938) b!5177783))

(assert (= (and d!1672342 (not c!891938)) b!5177784))

(assert (= (and d!1672342 res!2200138) b!5177785))

(assert (= (and b!5177785 res!2200139) b!5177786))

(declare-fun m!6234584 () Bool)

(assert (=> b!5177785 m!6234584))

(assert (=> b!5177785 m!6232254))

(assert (=> b!5177785 m!6232668))

(declare-fun m!6234586 () Bool)

(assert (=> b!5177784 m!6234586))

(declare-fun m!6234588 () Bool)

(assert (=> d!1672342 m!6234588))

(assert (=> d!1672342 m!6232704))

(assert (=> d!1672342 m!6232674))

(assert (=> b!5176999 d!1672342))

(declare-fun d!1672344 () Bool)

(declare-fun lt!2133819 () Int)

(assert (=> d!1672344 (>= lt!2133819 0)))

(declare-fun e!3226191 () Int)

(assert (=> d!1672344 (= lt!2133819 e!3226191)))

(declare-fun c!891939 () Bool)

(assert (=> d!1672344 (= c!891939 ((_ is Nil!60163) lt!2133472))))

(assert (=> d!1672344 (= (size!39693 lt!2133472) lt!2133819)))

(declare-fun b!5177787 () Bool)

(assert (=> b!5177787 (= e!3226191 0)))

(declare-fun b!5177788 () Bool)

(assert (=> b!5177788 (= e!3226191 (+ 1 (size!39693 (t!373440 lt!2133472))))))

(assert (= (and d!1672344 c!891939) b!5177787))

(assert (= (and d!1672344 (not c!891939)) b!5177788))

(declare-fun m!6234590 () Bool)

(assert (=> b!5177788 m!6234590))

(assert (=> b!5177235 d!1672344))

(assert (=> b!5177235 d!1671500))

(declare-fun d!1672346 () Bool)

(declare-fun lt!2133820 () Int)

(assert (=> d!1672346 (>= lt!2133820 0)))

(declare-fun e!3226192 () Int)

(assert (=> d!1672346 (= lt!2133820 e!3226192)))

(declare-fun c!891940 () Bool)

(assert (=> d!1672346 (= c!891940 ((_ is Nil!60163) (Cons!60163 lt!2133047 Nil!60163)))))

(assert (=> d!1672346 (= (size!39693 (Cons!60163 lt!2133047 Nil!60163)) lt!2133820)))

(declare-fun b!5177789 () Bool)

(assert (=> b!5177789 (= e!3226192 0)))

(declare-fun b!5177790 () Bool)

(assert (=> b!5177790 (= e!3226192 (+ 1 (size!39693 (t!373440 (Cons!60163 lt!2133047 Nil!60163)))))))

(assert (= (and d!1672346 c!891940) b!5177789))

(assert (= (and d!1672346 (not c!891940)) b!5177790))

(declare-fun m!6234592 () Bool)

(assert (=> b!5177790 m!6234592))

(assert (=> b!5177235 d!1672346))

(declare-fun b!5177809 () Bool)

(declare-fun e!3226208 () Bool)

(declare-fun call!363851 () Bool)

(assert (=> b!5177809 (= e!3226208 call!363851)))

(declare-fun b!5177810 () Bool)

(declare-fun e!3226211 () Bool)

(declare-fun e!3226213 () Bool)

(assert (=> b!5177810 (= e!3226211 e!3226213)))

(declare-fun c!891945 () Bool)

(assert (=> b!5177810 (= c!891945 ((_ is Star!14657) (h!66612 (exprs!4541 setElem!32333))))))

(declare-fun b!5177811 () Bool)

(declare-fun e!3226207 () Bool)

(declare-fun call!363852 () Bool)

(assert (=> b!5177811 (= e!3226207 call!363852)))

(declare-fun d!1672348 () Bool)

(declare-fun res!2200154 () Bool)

(assert (=> d!1672348 (=> res!2200154 e!3226211)))

(assert (=> d!1672348 (= res!2200154 ((_ is ElementMatch!14657) (h!66612 (exprs!4541 setElem!32333))))))

(assert (=> d!1672348 (= (validRegex!6407 (h!66612 (exprs!4541 setElem!32333))) e!3226211)))

(declare-fun b!5177812 () Bool)

(declare-fun e!3226209 () Bool)

(declare-fun e!3226210 () Bool)

(assert (=> b!5177812 (= e!3226209 e!3226210)))

(declare-fun res!2200150 () Bool)

(assert (=> b!5177812 (=> (not res!2200150) (not e!3226210))))

(declare-fun call!363850 () Bool)

(assert (=> b!5177812 (= res!2200150 call!363850)))

(declare-fun b!5177813 () Bool)

(declare-fun e!3226212 () Bool)

(assert (=> b!5177813 (= e!3226213 e!3226212)))

(declare-fun c!891946 () Bool)

(assert (=> b!5177813 (= c!891946 ((_ is Union!14657) (h!66612 (exprs!4541 setElem!32333))))))

(declare-fun bm!363845 () Bool)

(assert (=> bm!363845 (= call!363850 (validRegex!6407 (ite c!891946 (regOne!29827 (h!66612 (exprs!4541 setElem!32333))) (regOne!29826 (h!66612 (exprs!4541 setElem!32333))))))))

(declare-fun b!5177814 () Bool)

(declare-fun res!2200151 () Bool)

(assert (=> b!5177814 (=> (not res!2200151) (not e!3226208))))

(assert (=> b!5177814 (= res!2200151 call!363850)))

(assert (=> b!5177814 (= e!3226212 e!3226208)))

(declare-fun bm!363846 () Bool)

(assert (=> bm!363846 (= call!363851 call!363852)))

(declare-fun b!5177815 () Bool)

(assert (=> b!5177815 (= e!3226210 call!363851)))

(declare-fun b!5177816 () Bool)

(assert (=> b!5177816 (= e!3226213 e!3226207)))

(declare-fun res!2200153 () Bool)

(declare-fun nullable!4894 (Regex!14657) Bool)

(assert (=> b!5177816 (= res!2200153 (not (nullable!4894 (reg!14986 (h!66612 (exprs!4541 setElem!32333))))))))

(assert (=> b!5177816 (=> (not res!2200153) (not e!3226207))))

(declare-fun bm!363847 () Bool)

(assert (=> bm!363847 (= call!363852 (validRegex!6407 (ite c!891945 (reg!14986 (h!66612 (exprs!4541 setElem!32333))) (ite c!891946 (regTwo!29827 (h!66612 (exprs!4541 setElem!32333))) (regTwo!29826 (h!66612 (exprs!4541 setElem!32333)))))))))

(declare-fun b!5177817 () Bool)

(declare-fun res!2200152 () Bool)

(assert (=> b!5177817 (=> res!2200152 e!3226209)))

(assert (=> b!5177817 (= res!2200152 (not ((_ is Concat!23502) (h!66612 (exprs!4541 setElem!32333)))))))

(assert (=> b!5177817 (= e!3226212 e!3226209)))

(assert (= (and d!1672348 (not res!2200154)) b!5177810))

(assert (= (and b!5177810 c!891945) b!5177816))

(assert (= (and b!5177810 (not c!891945)) b!5177813))

(assert (= (and b!5177816 res!2200153) b!5177811))

(assert (= (and b!5177813 c!891946) b!5177814))

(assert (= (and b!5177813 (not c!891946)) b!5177817))

(assert (= (and b!5177814 res!2200151) b!5177809))

(assert (= (and b!5177817 (not res!2200152)) b!5177812))

(assert (= (and b!5177812 res!2200150) b!5177815))

(assert (= (or b!5177809 b!5177815) bm!363846))

(assert (= (or b!5177814 b!5177812) bm!363845))

(assert (= (or b!5177811 bm!363846) bm!363847))

(declare-fun m!6234594 () Bool)

(assert (=> bm!363845 m!6234594))

(declare-fun m!6234596 () Bool)

(assert (=> b!5177816 m!6234596))

(declare-fun m!6234598 () Bool)

(assert (=> bm!363847 m!6234598))

(assert (=> bs!1204966 d!1672348))

(declare-fun d!1672350 () Bool)

(assert (=> d!1672350 (= (isEmpty!32212 (getLanguageWitness!1016 lt!2132878)) (not ((_ is Some!14842) (getLanguageWitness!1016 lt!2132878))))))

(assert (=> d!1671612 d!1672350))

(declare-fun bs!1205310 () Bool)

(declare-fun d!1672352 () Bool)

(assert (= bs!1205310 (and d!1672352 b!5176997)))

(declare-fun lambda!258681 () Int)

(assert (=> bs!1205310 (= lambda!258681 lambda!258612)))

(declare-fun bs!1205311 () Bool)

(assert (= bs!1205311 (and d!1672352 d!1672052)))

(assert (=> bs!1205311 (not (= lambda!258681 lambda!258666))))

(declare-fun bs!1205312 () Bool)

(assert (= bs!1205312 (and d!1672352 d!1671804)))

(assert (=> bs!1205312 (not (= lambda!258681 lambda!258624))))

(declare-fun bs!1205313 () Bool)

(assert (= bs!1205313 (and d!1672352 d!1671612)))

(assert (=> bs!1205313 (not (= lambda!258681 lambda!258610))))

(declare-fun bs!1205314 () Bool)

(assert (= bs!1205314 (and d!1672352 b!5177723)))

(assert (=> bs!1205314 (= lambda!258681 lambda!258678)))

(declare-fun bs!1205315 () Bool)

(assert (= bs!1205315 (and d!1672352 d!1672232)))

(assert (=> bs!1205315 (not (= lambda!258681 lambda!258675))))

(declare-fun bs!1205316 () Bool)

(assert (= bs!1205316 (and d!1672352 b!5177056)))

(assert (=> bs!1205316 (= lambda!258681 lambda!258618)))

(declare-fun bs!1205317 () Bool)

(assert (= bs!1205317 (and d!1672352 d!1672204)))

(assert (=> bs!1205317 (not (= lambda!258681 lambda!258673))))

(declare-fun bs!1205318 () Bool)

(assert (= bs!1205318 (and d!1672352 d!1672276)))

(assert (=> bs!1205318 (not (= lambda!258681 lambda!258677))))

(declare-fun bs!1205319 () Bool)

(assert (= bs!1205319 (and d!1672352 b!5177724)))

(assert (=> bs!1205319 (= lambda!258681 lambda!258679)))

(declare-fun bs!1205320 () Bool)

(assert (= bs!1205320 (and d!1672352 d!1672104)))

(assert (=> bs!1205320 (not (= lambda!258681 lambda!258668))))

(declare-fun bs!1205321 () Bool)

(assert (= bs!1205321 (and d!1672352 d!1671636)))

(assert (=> bs!1205321 (not (= lambda!258681 lambda!258613))))

(declare-fun bs!1205322 () Bool)

(assert (= bs!1205322 (and d!1672352 d!1672032)))

(assert (=> bs!1205322 (not (= lambda!258681 lambda!258656))))

(declare-fun bs!1205323 () Bool)

(assert (= bs!1205323 (and d!1672352 d!1672218)))

(assert (=> bs!1205323 (not (= lambda!258681 lambda!258674))))

(declare-fun bs!1205324 () Bool)

(assert (= bs!1205324 (and d!1672352 d!1671546)))

(assert (=> bs!1205324 (not (= lambda!258681 lambda!258592))))

(declare-fun bs!1205325 () Bool)

(assert (= bs!1205325 (and d!1672352 b!5176996)))

(assert (=> bs!1205325 (= lambda!258681 lambda!258611)))

(declare-fun bs!1205326 () Bool)

(assert (= bs!1205326 (and d!1672352 d!1672118)))

(assert (=> bs!1205326 (not (= lambda!258681 lambda!258671))))

(declare-fun bs!1205327 () Bool)

(assert (= bs!1205327 (and d!1672352 d!1672040)))

(assert (=> bs!1205327 (= lambda!258681 lambda!258663)))

(declare-fun bs!1205328 () Bool)

(assert (= bs!1205328 (and d!1672352 b!5177534)))

(assert (=> bs!1205328 (= lambda!258681 lambda!258669)))

(declare-fun bs!1205329 () Bool)

(assert (= bs!1205329 (and d!1672352 b!5177535)))

(assert (=> bs!1205329 (= lambda!258681 lambda!258670)))

(declare-fun bs!1205330 () Bool)

(assert (= bs!1205330 (and d!1672352 b!5177055)))

(assert (=> bs!1205330 (= lambda!258681 lambda!258617)))

(declare-fun bs!1205331 () Bool)

(assert (= bs!1205331 (and d!1672352 d!1671684)))

(assert (=> bs!1205331 (not (= lambda!258681 lambda!258616))))

(declare-fun lt!2133821 () Option!14843)

(assert (=> d!1672352 (= (isDefined!11547 lt!2133821) (exists!1939 lt!2132878 lambda!258681))))

(declare-fun e!3226214 () Option!14843)

(assert (=> d!1672352 (= lt!2133821 e!3226214)))

(declare-fun c!891947 () Bool)

(assert (=> d!1672352 (= c!891947 (exists!1939 lt!2132878 lambda!258681))))

(assert (=> d!1672352 (= (getLanguageWitness!1016 lt!2132878) lt!2133821)))

(declare-fun b!5177818 () Bool)

(assert (=> b!5177818 (= e!3226214 (getLanguageWitness!1018 (getWitness!856 lt!2132878 lambda!258681)))))

(declare-fun b!5177819 () Bool)

(assert (=> b!5177819 (= e!3226214 None!14842)))

(assert (= (and d!1672352 c!891947) b!5177818))

(assert (= (and d!1672352 (not c!891947)) b!5177819))

(declare-fun m!6234600 () Bool)

(assert (=> d!1672352 m!6234600))

(declare-fun m!6234602 () Bool)

(assert (=> d!1672352 m!6234602))

(assert (=> d!1672352 m!6234602))

(declare-fun m!6234604 () Bool)

(assert (=> b!5177818 m!6234604))

(assert (=> b!5177818 m!6234604))

(declare-fun m!6234606 () Bool)

(assert (=> b!5177818 m!6234606))

(assert (=> d!1671612 d!1672352))

(declare-fun d!1672354 () Bool)

(declare-fun lt!2133822 () Bool)

(assert (=> d!1672354 (= lt!2133822 (forall!14164 (toList!8458 lt!2132878) lambda!258610))))

(assert (=> d!1672354 (= lt!2133822 (choose!38453 lt!2132878 lambda!258610))))

(assert (=> d!1672354 (= (forall!14162 lt!2132878 lambda!258610) lt!2133822)))

(declare-fun bs!1205332 () Bool)

(assert (= bs!1205332 d!1672354))

(assert (=> bs!1205332 m!6232664))

(assert (=> bs!1205332 m!6232664))

(declare-fun m!6234608 () Bool)

(assert (=> bs!1205332 m!6234608))

(declare-fun m!6234610 () Bool)

(assert (=> bs!1205332 m!6234610))

(assert (=> d!1671612 d!1672354))

(assert (=> d!1671770 d!1671778))

(assert (=> d!1671770 d!1671538))

(assert (=> d!1671770 d!1671532))

(declare-fun d!1672356 () Bool)

(declare-fun e!3226215 () Bool)

(assert (=> d!1672356 e!3226215))

(declare-fun res!2200156 () Bool)

(assert (=> d!1672356 (=> res!2200156 e!3226215)))

(declare-fun lt!2133823 () Bool)

(assert (=> d!1672356 (= res!2200156 (not lt!2133823))))

(declare-fun e!3226216 () Bool)

(assert (=> d!1672356 (= lt!2133823 e!3226216)))

(declare-fun res!2200158 () Bool)

(assert (=> d!1672356 (=> res!2200158 e!3226216)))

(assert (=> d!1672356 (= res!2200158 ((_ is Nil!60163) (tail!10174 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))))))

(assert (=> d!1672356 (= (isPrefix!5790 (tail!10174 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))) (tail!10174 input!5817)) lt!2133823)))

(declare-fun b!5177820 () Bool)

(declare-fun e!3226217 () Bool)

(assert (=> b!5177820 (= e!3226216 e!3226217)))

(declare-fun res!2200155 () Bool)

(assert (=> b!5177820 (=> (not res!2200155) (not e!3226217))))

(assert (=> b!5177820 (= res!2200155 (not ((_ is Nil!60163) (tail!10174 input!5817))))))

(declare-fun b!5177821 () Bool)

(declare-fun res!2200157 () Bool)

(assert (=> b!5177821 (=> (not res!2200157) (not e!3226217))))

(assert (=> b!5177821 (= res!2200157 (= (head!11075 (tail!10174 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))) (head!11075 (tail!10174 input!5817))))))

(declare-fun b!5177822 () Bool)

(assert (=> b!5177822 (= e!3226217 (isPrefix!5790 (tail!10174 (tail!10174 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))) (tail!10174 (tail!10174 input!5817))))))

(declare-fun b!5177823 () Bool)

(assert (=> b!5177823 (= e!3226215 (>= (size!39693 (tail!10174 input!5817)) (size!39693 (tail!10174 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))))))))

(assert (= (and d!1672356 (not res!2200158)) b!5177820))

(assert (= (and b!5177820 res!2200155) b!5177821))

(assert (= (and b!5177821 res!2200157) b!5177822))

(assert (= (and d!1672356 (not res!2200156)) b!5177823))

(assert (=> b!5177821 m!6232546))

(declare-fun m!6234612 () Bool)

(assert (=> b!5177821 m!6234612))

(assert (=> b!5177821 m!6232140))

(assert (=> b!5177821 m!6232748))

(assert (=> b!5177822 m!6232546))

(declare-fun m!6234614 () Bool)

(assert (=> b!5177822 m!6234614))

(assert (=> b!5177822 m!6232140))

(assert (=> b!5177822 m!6232680))

(assert (=> b!5177822 m!6234614))

(assert (=> b!5177822 m!6232680))

(declare-fun m!6234616 () Bool)

(assert (=> b!5177822 m!6234616))

(assert (=> b!5177823 m!6232140))

(assert (=> b!5177823 m!6232678))

(assert (=> b!5177823 m!6232546))

(declare-fun m!6234618 () Bool)

(assert (=> b!5177823 m!6234618))

(assert (=> b!5176960 d!1672356))

(declare-fun d!1672358 () Bool)

(assert (=> d!1672358 (= (tail!10174 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))) (t!373440 (++!13173 testedP!294 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))))))

(assert (=> b!5176960 d!1672358))

(assert (=> b!5176960 d!1671624))

(declare-fun d!1672360 () Bool)

(declare-fun lt!2133824 () Int)

(assert (=> d!1672360 (>= lt!2133824 0)))

(declare-fun e!3226218 () Int)

(assert (=> d!1672360 (= lt!2133824 e!3226218)))

(declare-fun c!891948 () Bool)

(assert (=> d!1672360 (= c!891948 ((_ is Nil!60163) (_1!35235 lt!2133432)))))

(assert (=> d!1672360 (= (size!39693 (_1!35235 lt!2133432)) lt!2133824)))

(declare-fun b!5177824 () Bool)

(assert (=> b!5177824 (= e!3226218 0)))

(declare-fun b!5177825 () Bool)

(assert (=> b!5177825 (= e!3226218 (+ 1 (size!39693 (t!373440 (_1!35235 lt!2133432)))))))

(assert (= (and d!1672360 c!891948) b!5177824))

(assert (= (and d!1672360 (not c!891948)) b!5177825))

(declare-fun m!6234620 () Bool)

(assert (=> b!5177825 m!6234620))

(assert (=> b!5177182 d!1672360))

(declare-fun d!1672362 () Bool)

(declare-fun lt!2133825 () Int)

(assert (=> d!1672362 (>= lt!2133825 0)))

(declare-fun e!3226219 () Int)

(assert (=> d!1672362 (= lt!2133825 e!3226219)))

(declare-fun c!891949 () Bool)

(assert (=> d!1672362 (= c!891949 ((_ is Nil!60163) lt!2132990))))

(assert (=> d!1672362 (= (size!39693 lt!2132990) lt!2133825)))

(declare-fun b!5177826 () Bool)

(assert (=> b!5177826 (= e!3226219 0)))

(declare-fun b!5177827 () Bool)

(assert (=> b!5177827 (= e!3226219 (+ 1 (size!39693 (t!373440 lt!2132990))))))

(assert (= (and d!1672362 c!891949) b!5177826))

(assert (= (and d!1672362 (not c!891949)) b!5177827))

(declare-fun m!6234622 () Bool)

(assert (=> b!5177827 m!6234622))

(assert (=> b!5177182 d!1672362))

(declare-fun bs!1205333 () Bool)

(declare-fun d!1672364 () Bool)

(assert (= bs!1205333 (and d!1672364 b!5176997)))

(declare-fun lambda!258684 () Int)

(assert (=> bs!1205333 (not (= lambda!258684 lambda!258612))))

(declare-fun bs!1205334 () Bool)

(assert (= bs!1205334 (and d!1672364 d!1672052)))

(assert (=> bs!1205334 (= (= lambda!258616 (ite c!891678 lambda!258611 lambda!258612)) (= lambda!258684 lambda!258666))))

(declare-fun bs!1205335 () Bool)

(assert (= bs!1205335 (and d!1672364 d!1671804)))

(assert (=> bs!1205335 (not (= lambda!258684 lambda!258624))))

(declare-fun bs!1205336 () Bool)

(assert (= bs!1205336 (and d!1672364 d!1671612)))

(assert (=> bs!1205336 (not (= lambda!258684 lambda!258610))))

(declare-fun bs!1205337 () Bool)

(assert (= bs!1205337 (and d!1672364 b!5177723)))

(assert (=> bs!1205337 (not (= lambda!258684 lambda!258678))))

(declare-fun bs!1205338 () Bool)

(assert (= bs!1205338 (and d!1672364 d!1672232)))

(assert (=> bs!1205338 (not (= lambda!258684 lambda!258675))))

(declare-fun bs!1205339 () Bool)

(assert (= bs!1205339 (and d!1672364 b!5177056)))

(assert (=> bs!1205339 (not (= lambda!258684 lambda!258618))))

(declare-fun bs!1205340 () Bool)

(assert (= bs!1205340 (and d!1672364 d!1672352)))

(assert (=> bs!1205340 (not (= lambda!258684 lambda!258681))))

(declare-fun bs!1205341 () Bool)

(assert (= bs!1205341 (and d!1672364 d!1672204)))

(assert (=> bs!1205341 (not (= lambda!258684 lambda!258673))))

(declare-fun bs!1205342 () Bool)

(assert (= bs!1205342 (and d!1672364 d!1672276)))

(assert (=> bs!1205342 (not (= lambda!258684 lambda!258677))))

(declare-fun bs!1205343 () Bool)

(assert (= bs!1205343 (and d!1672364 b!5177724)))

(assert (=> bs!1205343 (not (= lambda!258684 lambda!258679))))

(declare-fun bs!1205344 () Bool)

(assert (= bs!1205344 (and d!1672364 d!1672104)))

(assert (=> bs!1205344 (not (= lambda!258684 lambda!258668))))

(declare-fun bs!1205345 () Bool)

(assert (= bs!1205345 (and d!1672364 d!1671636)))

(assert (=> bs!1205345 (not (= lambda!258684 lambda!258613))))

(declare-fun bs!1205346 () Bool)

(assert (= bs!1205346 (and d!1672364 d!1672032)))

(assert (=> bs!1205346 (not (= lambda!258684 lambda!258656))))

(declare-fun bs!1205347 () Bool)

(assert (= bs!1205347 (and d!1672364 d!1672218)))

(assert (=> bs!1205347 (not (= lambda!258684 lambda!258674))))

(declare-fun bs!1205348 () Bool)

(assert (= bs!1205348 (and d!1672364 d!1671546)))

(assert (=> bs!1205348 (not (= lambda!258684 lambda!258592))))

(declare-fun bs!1205349 () Bool)

(assert (= bs!1205349 (and d!1672364 b!5176996)))

(assert (=> bs!1205349 (not (= lambda!258684 lambda!258611))))

(declare-fun bs!1205350 () Bool)

(assert (= bs!1205350 (and d!1672364 d!1672118)))

(assert (=> bs!1205350 (= (= lambda!258616 (ite c!891702 lambda!258617 lambda!258618)) (= lambda!258684 lambda!258671))))

(declare-fun bs!1205351 () Bool)

(assert (= bs!1205351 (and d!1672364 d!1672040)))

(assert (=> bs!1205351 (not (= lambda!258684 lambda!258663))))

(declare-fun bs!1205352 () Bool)

(assert (= bs!1205352 (and d!1672364 b!5177534)))

(assert (=> bs!1205352 (not (= lambda!258684 lambda!258669))))

(declare-fun bs!1205353 () Bool)

(assert (= bs!1205353 (and d!1672364 b!5177535)))

(assert (=> bs!1205353 (not (= lambda!258684 lambda!258670))))

(declare-fun bs!1205354 () Bool)

(assert (= bs!1205354 (and d!1672364 b!5177055)))

(assert (=> bs!1205354 (not (= lambda!258684 lambda!258617))))

(declare-fun bs!1205355 () Bool)

(assert (= bs!1205355 (and d!1672364 d!1671684)))

(assert (=> bs!1205355 (not (= lambda!258684 lambda!258616))))

(assert (=> d!1672364 true))

(assert (=> d!1672364 (< (dynLambda!23883 order!27039 lambda!258616) (dynLambda!23883 order!27039 lambda!258684))))

(assert (=> d!1672364 (exists!1941 lt!2133327 lambda!258684)))

(declare-fun lt!2133828 () Unit!151998)

(declare-fun choose!38457 (List!60289 Int) Unit!151998)

(assert (=> d!1672364 (= lt!2133828 (choose!38457 lt!2133327 lambda!258616))))

(assert (=> d!1672364 (not (forall!14164 lt!2133327 lambda!258616))))

(assert (=> d!1672364 (= (lemmaNotForallThenExists!478 lt!2133327 lambda!258616) lt!2133828)))

(declare-fun bs!1205356 () Bool)

(assert (= bs!1205356 d!1672364))

(declare-fun m!6234624 () Bool)

(assert (=> bs!1205356 m!6234624))

(declare-fun m!6234626 () Bool)

(assert (=> bs!1205356 m!6234626))

(declare-fun m!6234628 () Bool)

(assert (=> bs!1205356 m!6234628))

(assert (=> b!5177055 d!1672364))

(declare-fun d!1672366 () Bool)

(declare-fun lt!2133829 () Int)

(assert (=> d!1672366 (>= lt!2133829 0)))

(declare-fun e!3226222 () Int)

(assert (=> d!1672366 (= lt!2133829 e!3226222)))

(declare-fun c!891950 () Bool)

(assert (=> d!1672366 (= c!891950 ((_ is Nil!60163) (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))))))

(assert (=> d!1672366 (= (size!39693 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))) lt!2133829)))

(declare-fun b!5177828 () Bool)

(assert (=> b!5177828 (= e!3226222 0)))

(declare-fun b!5177829 () Bool)

(assert (=> b!5177829 (= e!3226222 (+ 1 (size!39693 (t!373440 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))))))))

(assert (= (and d!1672366 c!891950) b!5177828))

(assert (= (and d!1672366 (not c!891950)) b!5177829))

(declare-fun m!6234630 () Bool)

(assert (=> b!5177829 m!6234630))

(assert (=> b!5177116 d!1672366))

(assert (=> b!5177116 d!1671466))

(declare-fun d!1672368 () Bool)

(declare-fun c!891951 () Bool)

(assert (=> d!1672368 (= c!891951 ((_ is Nil!60163) lt!2133409))))

(declare-fun e!3226223 () (InoxSet C!29584))

(assert (=> d!1672368 (= (content!10662 lt!2133409) e!3226223)))

(declare-fun b!5177830 () Bool)

(assert (=> b!5177830 (= e!3226223 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177831 () Bool)

(assert (=> b!5177831 (= e!3226223 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133409) true) (content!10662 (t!373440 lt!2133409))))))

(assert (= (and d!1672368 c!891951) b!5177830))

(assert (= (and d!1672368 (not c!891951)) b!5177831))

(declare-fun m!6234632 () Bool)

(assert (=> b!5177831 m!6234632))

(declare-fun m!6234634 () Bool)

(assert (=> b!5177831 m!6234634))

(assert (=> d!1671782 d!1672368))

(declare-fun d!1672370 () Bool)

(declare-fun c!891952 () Bool)

(assert (=> d!1672370 (= c!891952 ((_ is Nil!60163) (t!373440 testedP!294)))))

(declare-fun e!3226224 () (InoxSet C!29584))

(assert (=> d!1672370 (= (content!10662 (t!373440 testedP!294)) e!3226224)))

(declare-fun b!5177832 () Bool)

(assert (=> b!5177832 (= e!3226224 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177833 () Bool)

(assert (=> b!5177833 (= e!3226224 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (t!373440 testedP!294)) true) (content!10662 (t!373440 (t!373440 testedP!294)))))))

(assert (= (and d!1672370 c!891952) b!5177832))

(assert (= (and d!1672370 (not c!891952)) b!5177833))

(declare-fun m!6234636 () Bool)

(assert (=> b!5177833 m!6234636))

(declare-fun m!6234638 () Bool)

(assert (=> b!5177833 m!6234638))

(assert (=> d!1671782 d!1672370))

(assert (=> d!1671782 d!1671644))

(assert (=> bm!363729 d!1672326))

(assert (=> bm!363778 d!1671512))

(declare-fun d!1672372 () Bool)

(declare-fun c!891953 () Bool)

(assert (=> d!1672372 (= c!891953 ((_ is Nil!60163) lt!2133410))))

(declare-fun e!3226225 () (InoxSet C!29584))

(assert (=> d!1672372 (= (content!10662 lt!2133410) e!3226225)))

(declare-fun b!5177834 () Bool)

(assert (=> b!5177834 (= e!3226225 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177835 () Bool)

(assert (=> b!5177835 (= e!3226225 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133410) true) (content!10662 (t!373440 lt!2133410))))))

(assert (= (and d!1672372 c!891953) b!5177834))

(assert (= (and d!1672372 (not c!891953)) b!5177835))

(declare-fun m!6234640 () Bool)

(assert (=> b!5177835 m!6234640))

(declare-fun m!6234642 () Bool)

(assert (=> b!5177835 m!6234642))

(assert (=> d!1671788 d!1672372))

(assert (=> d!1671788 d!1672064))

(declare-fun d!1672374 () Bool)

(declare-fun c!891954 () Bool)

(assert (=> d!1672374 (= c!891954 ((_ is Nil!60163) lt!2132902))))

(declare-fun e!3226226 () (InoxSet C!29584))

(assert (=> d!1672374 (= (content!10662 lt!2132902) e!3226226)))

(declare-fun b!5177836 () Bool)

(assert (=> b!5177836 (= e!3226226 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177837 () Bool)

(assert (=> b!5177837 (= e!3226226 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2132902) true) (content!10662 (t!373440 lt!2132902))))))

(assert (= (and d!1672374 c!891954) b!5177836))

(assert (= (and d!1672374 (not c!891954)) b!5177837))

(declare-fun m!6234644 () Bool)

(assert (=> b!5177837 m!6234644))

(declare-fun m!6234646 () Bool)

(assert (=> b!5177837 m!6234646))

(assert (=> d!1671788 d!1672374))

(declare-fun d!1672376 () Bool)

(declare-fun c!891955 () Bool)

(assert (=> d!1672376 (= c!891955 ((_ is Nil!60163) lt!2133249))))

(declare-fun e!3226227 () (InoxSet C!29584))

(assert (=> d!1672376 (= (content!10662 lt!2133249) e!3226227)))

(declare-fun b!5177838 () Bool)

(assert (=> b!5177838 (= e!3226227 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177839 () Bool)

(assert (=> b!5177839 (= e!3226227 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133249) true) (content!10662 (t!373440 lt!2133249))))))

(assert (= (and d!1672376 c!891955) b!5177838))

(assert (= (and d!1672376 (not c!891955)) b!5177839))

(declare-fun m!6234648 () Bool)

(assert (=> b!5177839 m!6234648))

(declare-fun m!6234650 () Bool)

(assert (=> b!5177839 m!6234650))

(assert (=> d!1671602 d!1672376))

(declare-fun d!1672378 () Bool)

(declare-fun c!891956 () Bool)

(assert (=> d!1672378 (= c!891956 ((_ is Nil!60163) (_1!35235 lt!2133135)))))

(declare-fun e!3226228 () (InoxSet C!29584))

(assert (=> d!1672378 (= (content!10662 (_1!35235 lt!2133135)) e!3226228)))

(declare-fun b!5177840 () Bool)

(assert (=> b!5177840 (= e!3226228 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177841 () Bool)

(assert (=> b!5177841 (= e!3226228 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (_1!35235 lt!2133135)) true) (content!10662 (t!373440 (_1!35235 lt!2133135)))))))

(assert (= (and d!1672378 c!891956) b!5177840))

(assert (= (and d!1672378 (not c!891956)) b!5177841))

(declare-fun m!6234652 () Bool)

(assert (=> b!5177841 m!6234652))

(declare-fun m!6234654 () Bool)

(assert (=> b!5177841 m!6234654))

(assert (=> d!1671602 d!1672378))

(declare-fun d!1672380 () Bool)

(declare-fun c!891957 () Bool)

(assert (=> d!1672380 (= c!891957 ((_ is Nil!60163) (_2!35235 lt!2133135)))))

(declare-fun e!3226229 () (InoxSet C!29584))

(assert (=> d!1672380 (= (content!10662 (_2!35235 lt!2133135)) e!3226229)))

(declare-fun b!5177842 () Bool)

(assert (=> b!5177842 (= e!3226229 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177843 () Bool)

(assert (=> b!5177843 (= e!3226229 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (_2!35235 lt!2133135)) true) (content!10662 (t!373440 (_2!35235 lt!2133135)))))))

(assert (= (and d!1672380 c!891957) b!5177842))

(assert (= (and d!1672380 (not c!891957)) b!5177843))

(declare-fun m!6234656 () Bool)

(assert (=> b!5177843 m!6234656))

(declare-fun m!6234658 () Bool)

(assert (=> b!5177843 m!6234658))

(assert (=> d!1671602 d!1672380))

(declare-fun b!5177846 () Bool)

(declare-fun res!2200160 () Bool)

(declare-fun e!3226231 () Bool)

(assert (=> b!5177846 (=> (not res!2200160) (not e!3226231))))

(declare-fun lt!2133830 () List!60287)

(assert (=> b!5177846 (= res!2200160 (= (size!39693 lt!2133830) (+ (size!39693 (t!373440 testedP!294)) (size!39693 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))))))

(declare-fun b!5177845 () Bool)

(declare-fun e!3226230 () List!60287)

(assert (=> b!5177845 (= e!3226230 (Cons!60163 (h!66611 (t!373440 testedP!294)) (++!13173 (t!373440 (t!373440 testedP!294)) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))))))

(declare-fun b!5177844 () Bool)

(assert (=> b!5177844 (= e!3226230 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163))))

(declare-fun b!5177847 () Bool)

(assert (=> b!5177847 (= e!3226231 (or (not (= (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163) Nil!60163)) (= lt!2133830 (t!373440 testedP!294))))))

(declare-fun d!1672382 () Bool)

(assert (=> d!1672382 e!3226231))

(declare-fun res!2200159 () Bool)

(assert (=> d!1672382 (=> (not res!2200159) (not e!3226231))))

(assert (=> d!1672382 (= res!2200159 (= (content!10662 lt!2133830) ((_ map or) (content!10662 (t!373440 testedP!294)) (content!10662 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))))))

(assert (=> d!1672382 (= lt!2133830 e!3226230)))

(declare-fun c!891958 () Bool)

(assert (=> d!1672382 (= c!891958 ((_ is Nil!60163) (t!373440 testedP!294)))))

(assert (=> d!1672382 (= (++!13173 (t!373440 testedP!294) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)) lt!2133830)))

(assert (= (and d!1672382 c!891958) b!5177844))

(assert (= (and d!1672382 (not c!891958)) b!5177845))

(assert (= (and d!1672382 res!2200159) b!5177846))

(assert (= (and b!5177846 res!2200160) b!5177847))

(declare-fun m!6234660 () Bool)

(assert (=> b!5177846 m!6234660))

(assert (=> b!5177846 m!6232254))

(assert (=> b!5177846 m!6232554))

(declare-fun m!6234662 () Bool)

(assert (=> b!5177845 m!6234662))

(declare-fun m!6234664 () Bool)

(assert (=> d!1672382 m!6234664))

(assert (=> d!1672382 m!6232704))

(assert (=> d!1672382 m!6232560))

(assert (=> b!5176963 d!1672382))

(declare-fun d!1672384 () Bool)

(assert (=> d!1672384 (= (head!11075 (tail!10174 testedP!294)) (h!66611 (tail!10174 testedP!294)))))

(assert (=> b!5177052 d!1672384))

(assert (=> b!5177052 d!1672036))

(declare-fun b!5177850 () Bool)

(declare-fun res!2200162 () Bool)

(declare-fun e!3226233 () Bool)

(assert (=> b!5177850 (=> (not res!2200162) (not e!3226233))))

(declare-fun lt!2133831 () List!60287)

(assert (=> b!5177850 (= res!2200162 (= (size!39693 lt!2133831) (+ (size!39693 lt!2132990) (size!39693 call!363665))))))

(declare-fun b!5177849 () Bool)

(declare-fun e!3226232 () List!60287)

(assert (=> b!5177849 (= e!3226232 (Cons!60163 (h!66611 lt!2132990) (++!13173 (t!373440 lt!2132990) call!363665)))))

(declare-fun b!5177848 () Bool)

(assert (=> b!5177848 (= e!3226232 call!363665)))

(declare-fun b!5177851 () Bool)

(assert (=> b!5177851 (= e!3226233 (or (not (= call!363665 Nil!60163)) (= lt!2133831 lt!2132990)))))

(declare-fun d!1672386 () Bool)

(assert (=> d!1672386 e!3226233))

(declare-fun res!2200161 () Bool)

(assert (=> d!1672386 (=> (not res!2200161) (not e!3226233))))

(assert (=> d!1672386 (= res!2200161 (= (content!10662 lt!2133831) ((_ map or) (content!10662 lt!2132990) (content!10662 call!363665))))))

(assert (=> d!1672386 (= lt!2133831 e!3226232)))

(declare-fun c!891959 () Bool)

(assert (=> d!1672386 (= c!891959 ((_ is Nil!60163) lt!2132990))))

(assert (=> d!1672386 (= (++!13173 lt!2132990 call!363665) lt!2133831)))

(assert (= (and d!1672386 c!891959) b!5177848))

(assert (= (and d!1672386 (not c!891959)) b!5177849))

(assert (= (and d!1672386 res!2200161) b!5177850))

(assert (= (and b!5177850 res!2200162) b!5177851))

(declare-fun m!6234666 () Bool)

(assert (=> b!5177850 m!6234666))

(assert (=> b!5177850 m!6233134))

(declare-fun m!6234668 () Bool)

(assert (=> b!5177850 m!6234668))

(declare-fun m!6234670 () Bool)

(assert (=> b!5177849 m!6234670))

(declare-fun m!6234672 () Bool)

(assert (=> d!1672386 m!6234672))

(declare-fun m!6234674 () Bool)

(assert (=> d!1672386 m!6234674))

(declare-fun m!6234676 () Bool)

(assert (=> d!1672386 m!6234676))

(assert (=> d!1671790 d!1672386))

(declare-fun b!5177854 () Bool)

(declare-fun res!2200164 () Bool)

(declare-fun e!3226235 () Bool)

(assert (=> b!5177854 (=> (not res!2200164) (not e!3226235))))

(declare-fun lt!2133832 () List!60287)

(assert (=> b!5177854 (= res!2200164 (= (size!39693 lt!2133832) (+ (size!39693 (_1!35235 lt!2133432)) (size!39693 (_2!35235 lt!2133432)))))))

(declare-fun b!5177853 () Bool)

(declare-fun e!3226234 () List!60287)

(assert (=> b!5177853 (= e!3226234 (Cons!60163 (h!66611 (_1!35235 lt!2133432)) (++!13173 (t!373440 (_1!35235 lt!2133432)) (_2!35235 lt!2133432))))))

(declare-fun b!5177852 () Bool)

(assert (=> b!5177852 (= e!3226234 (_2!35235 lt!2133432))))

(declare-fun b!5177855 () Bool)

(assert (=> b!5177855 (= e!3226235 (or (not (= (_2!35235 lt!2133432) Nil!60163)) (= lt!2133832 (_1!35235 lt!2133432))))))

(declare-fun d!1672388 () Bool)

(assert (=> d!1672388 e!3226235))

(declare-fun res!2200163 () Bool)

(assert (=> d!1672388 (=> (not res!2200163) (not e!3226235))))

(assert (=> d!1672388 (= res!2200163 (= (content!10662 lt!2133832) ((_ map or) (content!10662 (_1!35235 lt!2133432)) (content!10662 (_2!35235 lt!2133432)))))))

(assert (=> d!1672388 (= lt!2133832 e!3226234)))

(declare-fun c!891960 () Bool)

(assert (=> d!1672388 (= c!891960 ((_ is Nil!60163) (_1!35235 lt!2133432)))))

(assert (=> d!1672388 (= (++!13173 (_1!35235 lt!2133432) (_2!35235 lt!2133432)) lt!2133832)))

(assert (= (and d!1672388 c!891960) b!5177852))

(assert (= (and d!1672388 (not c!891960)) b!5177853))

(assert (= (and d!1672388 res!2200163) b!5177854))

(assert (= (and b!5177854 res!2200164) b!5177855))

(declare-fun m!6234678 () Bool)

(assert (=> b!5177854 m!6234678))

(assert (=> b!5177854 m!6233132))

(declare-fun m!6234680 () Bool)

(assert (=> b!5177854 m!6234680))

(declare-fun m!6234682 () Bool)

(assert (=> b!5177853 m!6234682))

(declare-fun m!6234684 () Bool)

(assert (=> d!1672388 m!6234684))

(declare-fun m!6234686 () Bool)

(assert (=> d!1672388 m!6234686))

(declare-fun m!6234688 () Bool)

(assert (=> d!1672388 m!6234688))

(assert (=> d!1671790 d!1672388))

(declare-fun bs!1205357 () Bool)

(declare-fun d!1672390 () Bool)

(assert (= bs!1205357 (and d!1672390 b!5176997)))

(declare-fun lambda!258685 () Int)

(assert (=> bs!1205357 (not (= lambda!258685 lambda!258612))))

(declare-fun bs!1205358 () Bool)

(assert (= bs!1205358 (and d!1672390 d!1672052)))

(assert (=> bs!1205358 (not (= lambda!258685 lambda!258666))))

(declare-fun bs!1205359 () Bool)

(assert (= bs!1205359 (and d!1672390 d!1671804)))

(assert (=> bs!1205359 (not (= lambda!258685 lambda!258624))))

(declare-fun bs!1205360 () Bool)

(assert (= bs!1205360 (and d!1672390 d!1672364)))

(assert (=> bs!1205360 (not (= lambda!258685 lambda!258684))))

(declare-fun bs!1205361 () Bool)

(assert (= bs!1205361 (and d!1672390 d!1671612)))

(assert (=> bs!1205361 (= lambda!258685 lambda!258610)))

(declare-fun bs!1205362 () Bool)

(assert (= bs!1205362 (and d!1672390 b!5177723)))

(assert (=> bs!1205362 (not (= lambda!258685 lambda!258678))))

(declare-fun bs!1205363 () Bool)

(assert (= bs!1205363 (and d!1672390 d!1672232)))

(assert (=> bs!1205363 (not (= lambda!258685 lambda!258675))))

(declare-fun bs!1205364 () Bool)

(assert (= bs!1205364 (and d!1672390 b!5177056)))

(assert (=> bs!1205364 (not (= lambda!258685 lambda!258618))))

(declare-fun bs!1205365 () Bool)

(assert (= bs!1205365 (and d!1672390 d!1672352)))

(assert (=> bs!1205365 (not (= lambda!258685 lambda!258681))))

(declare-fun bs!1205366 () Bool)

(assert (= bs!1205366 (and d!1672390 d!1672204)))

(assert (=> bs!1205366 (not (= lambda!258685 lambda!258673))))

(declare-fun bs!1205367 () Bool)

(assert (= bs!1205367 (and d!1672390 d!1672276)))

(assert (=> bs!1205367 (= lambda!258685 lambda!258677)))

(declare-fun bs!1205368 () Bool)

(assert (= bs!1205368 (and d!1672390 b!5177724)))

(assert (=> bs!1205368 (not (= lambda!258685 lambda!258679))))

(declare-fun bs!1205369 () Bool)

(assert (= bs!1205369 (and d!1672390 d!1672104)))

(assert (=> bs!1205369 (= lambda!258685 lambda!258668)))

(declare-fun bs!1205370 () Bool)

(assert (= bs!1205370 (and d!1672390 d!1671636)))

(assert (=> bs!1205370 (not (= lambda!258685 lambda!258613))))

(declare-fun bs!1205371 () Bool)

(assert (= bs!1205371 (and d!1672390 d!1672032)))

(assert (=> bs!1205371 (not (= lambda!258685 lambda!258656))))

(declare-fun bs!1205372 () Bool)

(assert (= bs!1205372 (and d!1672390 d!1672218)))

(assert (=> bs!1205372 (not (= lambda!258685 lambda!258674))))

(declare-fun bs!1205373 () Bool)

(assert (= bs!1205373 (and d!1672390 d!1671546)))

(assert (=> bs!1205373 (not (= lambda!258685 lambda!258592))))

(declare-fun bs!1205374 () Bool)

(assert (= bs!1205374 (and d!1672390 b!5176996)))

(assert (=> bs!1205374 (not (= lambda!258685 lambda!258611))))

(declare-fun bs!1205375 () Bool)

(assert (= bs!1205375 (and d!1672390 d!1672118)))

(assert (=> bs!1205375 (not (= lambda!258685 lambda!258671))))

(declare-fun bs!1205376 () Bool)

(assert (= bs!1205376 (and d!1672390 d!1672040)))

(assert (=> bs!1205376 (not (= lambda!258685 lambda!258663))))

(declare-fun bs!1205377 () Bool)

(assert (= bs!1205377 (and d!1672390 b!5177534)))

(assert (=> bs!1205377 (not (= lambda!258685 lambda!258669))))

(declare-fun bs!1205378 () Bool)

(assert (= bs!1205378 (and d!1672390 b!5177535)))

(assert (=> bs!1205378 (not (= lambda!258685 lambda!258670))))

(declare-fun bs!1205379 () Bool)

(assert (= bs!1205379 (and d!1672390 b!5177055)))

(assert (=> bs!1205379 (not (= lambda!258685 lambda!258617))))

(declare-fun bs!1205380 () Bool)

(assert (= bs!1205380 (and d!1672390 d!1671684)))

(assert (=> bs!1205380 (= lambda!258685 lambda!258616)))

(declare-fun bs!1205381 () Bool)

(declare-fun b!5177856 () Bool)

(assert (= bs!1205381 (and b!5177856 b!5176997)))

(declare-fun lambda!258686 () Int)

(assert (=> bs!1205381 (= lambda!258686 lambda!258612)))

(declare-fun bs!1205382 () Bool)

(assert (= bs!1205382 (and b!5177856 d!1672052)))

(assert (=> bs!1205382 (not (= lambda!258686 lambda!258666))))

(declare-fun bs!1205383 () Bool)

(assert (= bs!1205383 (and b!5177856 d!1671804)))

(assert (=> bs!1205383 (not (= lambda!258686 lambda!258624))))

(declare-fun bs!1205384 () Bool)

(assert (= bs!1205384 (and b!5177856 d!1672364)))

(assert (=> bs!1205384 (not (= lambda!258686 lambda!258684))))

(declare-fun bs!1205385 () Bool)

(assert (= bs!1205385 (and b!5177856 d!1671612)))

(assert (=> bs!1205385 (not (= lambda!258686 lambda!258610))))

(declare-fun bs!1205386 () Bool)

(assert (= bs!1205386 (and b!5177856 b!5177723)))

(assert (=> bs!1205386 (= lambda!258686 lambda!258678)))

(declare-fun bs!1205387 () Bool)

(assert (= bs!1205387 (and b!5177856 d!1672232)))

(assert (=> bs!1205387 (not (= lambda!258686 lambda!258675))))

(declare-fun bs!1205388 () Bool)

(assert (= bs!1205388 (and b!5177856 b!5177056)))

(assert (=> bs!1205388 (= lambda!258686 lambda!258618)))

(declare-fun bs!1205389 () Bool)

(assert (= bs!1205389 (and b!5177856 d!1672390)))

(assert (=> bs!1205389 (not (= lambda!258686 lambda!258685))))

(declare-fun bs!1205390 () Bool)

(assert (= bs!1205390 (and b!5177856 d!1672352)))

(assert (=> bs!1205390 (= lambda!258686 lambda!258681)))

(declare-fun bs!1205391 () Bool)

(assert (= bs!1205391 (and b!5177856 d!1672204)))

(assert (=> bs!1205391 (not (= lambda!258686 lambda!258673))))

(declare-fun bs!1205392 () Bool)

(assert (= bs!1205392 (and b!5177856 d!1672276)))

(assert (=> bs!1205392 (not (= lambda!258686 lambda!258677))))

(declare-fun bs!1205393 () Bool)

(assert (= bs!1205393 (and b!5177856 b!5177724)))

(assert (=> bs!1205393 (= lambda!258686 lambda!258679)))

(declare-fun bs!1205394 () Bool)

(assert (= bs!1205394 (and b!5177856 d!1672104)))

(assert (=> bs!1205394 (not (= lambda!258686 lambda!258668))))

(declare-fun bs!1205395 () Bool)

(assert (= bs!1205395 (and b!5177856 d!1671636)))

(assert (=> bs!1205395 (not (= lambda!258686 lambda!258613))))

(declare-fun bs!1205396 () Bool)

(assert (= bs!1205396 (and b!5177856 d!1672032)))

(assert (=> bs!1205396 (not (= lambda!258686 lambda!258656))))

(declare-fun bs!1205397 () Bool)

(assert (= bs!1205397 (and b!5177856 d!1672218)))

(assert (=> bs!1205397 (not (= lambda!258686 lambda!258674))))

(declare-fun bs!1205398 () Bool)

(assert (= bs!1205398 (and b!5177856 d!1671546)))

(assert (=> bs!1205398 (not (= lambda!258686 lambda!258592))))

(declare-fun bs!1205399 () Bool)

(assert (= bs!1205399 (and b!5177856 b!5176996)))

(assert (=> bs!1205399 (= lambda!258686 lambda!258611)))

(declare-fun bs!1205400 () Bool)

(assert (= bs!1205400 (and b!5177856 d!1672118)))

(assert (=> bs!1205400 (not (= lambda!258686 lambda!258671))))

(declare-fun bs!1205401 () Bool)

(assert (= bs!1205401 (and b!5177856 d!1672040)))

(assert (=> bs!1205401 (= lambda!258686 lambda!258663)))

(declare-fun bs!1205402 () Bool)

(assert (= bs!1205402 (and b!5177856 b!5177534)))

(assert (=> bs!1205402 (= lambda!258686 lambda!258669)))

(declare-fun bs!1205403 () Bool)

(assert (= bs!1205403 (and b!5177856 b!5177535)))

(assert (=> bs!1205403 (= lambda!258686 lambda!258670)))

(declare-fun bs!1205404 () Bool)

(assert (= bs!1205404 (and b!5177856 b!5177055)))

(assert (=> bs!1205404 (= lambda!258686 lambda!258617)))

(declare-fun bs!1205405 () Bool)

(assert (= bs!1205405 (and b!5177856 d!1671684)))

(assert (=> bs!1205405 (not (= lambda!258686 lambda!258616))))

(declare-fun bs!1205406 () Bool)

(declare-fun b!5177857 () Bool)

(assert (= bs!1205406 (and b!5177857 b!5176997)))

(declare-fun lambda!258687 () Int)

(assert (=> bs!1205406 (= lambda!258687 lambda!258612)))

(declare-fun bs!1205407 () Bool)

(assert (= bs!1205407 (and b!5177857 d!1672052)))

(assert (=> bs!1205407 (not (= lambda!258687 lambda!258666))))

(declare-fun bs!1205408 () Bool)

(assert (= bs!1205408 (and b!5177857 d!1671804)))

(assert (=> bs!1205408 (not (= lambda!258687 lambda!258624))))

(declare-fun bs!1205409 () Bool)

(assert (= bs!1205409 (and b!5177857 d!1672364)))

(assert (=> bs!1205409 (not (= lambda!258687 lambda!258684))))

(declare-fun bs!1205410 () Bool)

(assert (= bs!1205410 (and b!5177857 d!1671612)))

(assert (=> bs!1205410 (not (= lambda!258687 lambda!258610))))

(declare-fun bs!1205411 () Bool)

(assert (= bs!1205411 (and b!5177857 b!5177723)))

(assert (=> bs!1205411 (= lambda!258687 lambda!258678)))

(declare-fun bs!1205412 () Bool)

(assert (= bs!1205412 (and b!5177857 d!1672232)))

(assert (=> bs!1205412 (not (= lambda!258687 lambda!258675))))

(declare-fun bs!1205413 () Bool)

(assert (= bs!1205413 (and b!5177857 b!5177056)))

(assert (=> bs!1205413 (= lambda!258687 lambda!258618)))

(declare-fun bs!1205414 () Bool)

(assert (= bs!1205414 (and b!5177857 d!1672390)))

(assert (=> bs!1205414 (not (= lambda!258687 lambda!258685))))

(declare-fun bs!1205415 () Bool)

(assert (= bs!1205415 (and b!5177857 d!1672352)))

(assert (=> bs!1205415 (= lambda!258687 lambda!258681)))

(declare-fun bs!1205416 () Bool)

(assert (= bs!1205416 (and b!5177857 d!1672204)))

(assert (=> bs!1205416 (not (= lambda!258687 lambda!258673))))

(declare-fun bs!1205417 () Bool)

(assert (= bs!1205417 (and b!5177857 d!1672276)))

(assert (=> bs!1205417 (not (= lambda!258687 lambda!258677))))

(declare-fun bs!1205418 () Bool)

(assert (= bs!1205418 (and b!5177857 b!5177724)))

(assert (=> bs!1205418 (= lambda!258687 lambda!258679)))

(declare-fun bs!1205419 () Bool)

(assert (= bs!1205419 (and b!5177857 d!1672104)))

(assert (=> bs!1205419 (not (= lambda!258687 lambda!258668))))

(declare-fun bs!1205420 () Bool)

(assert (= bs!1205420 (and b!5177857 d!1671636)))

(assert (=> bs!1205420 (not (= lambda!258687 lambda!258613))))

(declare-fun bs!1205421 () Bool)

(assert (= bs!1205421 (and b!5177857 d!1672032)))

(assert (=> bs!1205421 (not (= lambda!258687 lambda!258656))))

(declare-fun bs!1205422 () Bool)

(assert (= bs!1205422 (and b!5177857 d!1672218)))

(assert (=> bs!1205422 (not (= lambda!258687 lambda!258674))))

(declare-fun bs!1205423 () Bool)

(assert (= bs!1205423 (and b!5177857 b!5176996)))

(assert (=> bs!1205423 (= lambda!258687 lambda!258611)))

(declare-fun bs!1205424 () Bool)

(assert (= bs!1205424 (and b!5177857 d!1671546)))

(assert (=> bs!1205424 (not (= lambda!258687 lambda!258592))))

(declare-fun bs!1205425 () Bool)

(assert (= bs!1205425 (and b!5177857 b!5177856)))

(assert (=> bs!1205425 (= lambda!258687 lambda!258686)))

(declare-fun bs!1205426 () Bool)

(assert (= bs!1205426 (and b!5177857 d!1672118)))

(assert (=> bs!1205426 (not (= lambda!258687 lambda!258671))))

(declare-fun bs!1205427 () Bool)

(assert (= bs!1205427 (and b!5177857 d!1672040)))

(assert (=> bs!1205427 (= lambda!258687 lambda!258663)))

(declare-fun bs!1205428 () Bool)

(assert (= bs!1205428 (and b!5177857 b!5177534)))

(assert (=> bs!1205428 (= lambda!258687 lambda!258669)))

(declare-fun bs!1205429 () Bool)

(assert (= bs!1205429 (and b!5177857 b!5177535)))

(assert (=> bs!1205429 (= lambda!258687 lambda!258670)))

(declare-fun bs!1205430 () Bool)

(assert (= bs!1205430 (and b!5177857 b!5177055)))

(assert (=> bs!1205430 (= lambda!258687 lambda!258617)))

(declare-fun bs!1205431 () Bool)

(assert (= bs!1205431 (and b!5177857 d!1671684)))

(assert (=> bs!1205431 (not (= lambda!258687 lambda!258616))))

(declare-fun e!3226236 () Unit!151998)

(declare-fun Unit!152074 () Unit!151998)

(assert (=> b!5177856 (= e!3226236 Unit!152074)))

(declare-fun lt!2133840 () List!60289)

(declare-fun call!363853 () List!60289)

(assert (=> b!5177856 (= lt!2133840 call!363853)))

(declare-fun lt!2133834 () Unit!151998)

(assert (=> b!5177856 (= lt!2133834 (lemmaNotForallThenExists!478 lt!2133840 lambda!258685))))

(declare-fun call!363854 () Bool)

(assert (=> b!5177856 call!363854))

(declare-fun lt!2133837 () Unit!151998)

(assert (=> b!5177856 (= lt!2133837 lt!2133834)))

(declare-fun bm!363848 () Bool)

(assert (=> bm!363848 (= call!363853 (toList!8458 call!363671))))

(declare-fun Unit!152075 () Unit!151998)

(assert (=> b!5177857 (= e!3226236 Unit!152075)))

(declare-fun lt!2133833 () List!60289)

(assert (=> b!5177857 (= lt!2133833 call!363853)))

(declare-fun lt!2133835 () Unit!151998)

(assert (=> b!5177857 (= lt!2133835 (lemmaForallThenNotExists!445 lt!2133833 lambda!258685))))

(assert (=> b!5177857 (not call!363854)))

(declare-fun lt!2133838 () Unit!151998)

(assert (=> b!5177857 (= lt!2133838 lt!2133835)))

(declare-fun bm!363849 () Bool)

(declare-fun c!891961 () Bool)

(assert (=> bm!363849 (= call!363854 (exists!1941 (ite c!891961 lt!2133840 lt!2133833) (ite c!891961 lambda!258686 lambda!258687)))))

(declare-fun lt!2133836 () Bool)

(assert (=> d!1672390 (= lt!2133836 (isEmpty!32212 (getLanguageWitness!1016 call!363671)))))

(assert (=> d!1672390 (= lt!2133836 (forall!14162 call!363671 lambda!258685))))

(declare-fun lt!2133839 () Unit!151998)

(assert (=> d!1672390 (= lt!2133839 e!3226236)))

(assert (=> d!1672390 (= c!891961 (not (forall!14162 call!363671 lambda!258685)))))

(assert (=> d!1672390 (= (lostCauseZipper!1343 call!363671) lt!2133836)))

(assert (= (and d!1672390 c!891961) b!5177856))

(assert (= (and d!1672390 (not c!891961)) b!5177857))

(assert (= (or b!5177856 b!5177857) bm!363848))

(assert (= (or b!5177856 b!5177857) bm!363849))

(declare-fun m!6234690 () Bool)

(assert (=> bm!363849 m!6234690))

(declare-fun m!6234692 () Bool)

(assert (=> b!5177856 m!6234692))

(declare-fun m!6234694 () Bool)

(assert (=> d!1672390 m!6234694))

(assert (=> d!1672390 m!6234694))

(declare-fun m!6234696 () Bool)

(assert (=> d!1672390 m!6234696))

(declare-fun m!6234698 () Bool)

(assert (=> d!1672390 m!6234698))

(assert (=> d!1672390 m!6234698))

(declare-fun m!6234700 () Bool)

(assert (=> b!5177857 m!6234700))

(declare-fun m!6234702 () Bool)

(assert (=> bm!363848 m!6234702))

(assert (=> d!1671790 d!1672390))

(declare-fun d!1672392 () Bool)

(declare-fun e!3226237 () Bool)

(assert (=> d!1672392 e!3226237))

(declare-fun res!2200166 () Bool)

(assert (=> d!1672392 (=> res!2200166 e!3226237)))

(declare-fun lt!2133841 () Bool)

(assert (=> d!1672392 (= res!2200166 (not lt!2133841))))

(declare-fun e!3226238 () Bool)

(assert (=> d!1672392 (= lt!2133841 e!3226238)))

(declare-fun res!2200168 () Bool)

(assert (=> d!1672392 (=> res!2200168 e!3226238)))

(assert (=> d!1672392 (= res!2200168 ((_ is Nil!60163) lt!2132990))))

(assert (=> d!1672392 (= (isPrefix!5790 lt!2132990 (++!13173 lt!2132990 call!363665)) lt!2133841)))

(declare-fun b!5177858 () Bool)

(declare-fun e!3226239 () Bool)

(assert (=> b!5177858 (= e!3226238 e!3226239)))

(declare-fun res!2200165 () Bool)

(assert (=> b!5177858 (=> (not res!2200165) (not e!3226239))))

(assert (=> b!5177858 (= res!2200165 (not ((_ is Nil!60163) (++!13173 lt!2132990 call!363665))))))

(declare-fun b!5177859 () Bool)

(declare-fun res!2200167 () Bool)

(assert (=> b!5177859 (=> (not res!2200167) (not e!3226239))))

(assert (=> b!5177859 (= res!2200167 (= (head!11075 lt!2132990) (head!11075 (++!13173 lt!2132990 call!363665))))))

(declare-fun b!5177860 () Bool)

(assert (=> b!5177860 (= e!3226239 (isPrefix!5790 (tail!10174 lt!2132990) (tail!10174 (++!13173 lt!2132990 call!363665))))))

(declare-fun b!5177861 () Bool)

(assert (=> b!5177861 (= e!3226237 (>= (size!39693 (++!13173 lt!2132990 call!363665)) (size!39693 lt!2132990)))))

(assert (= (and d!1672392 (not res!2200168)) b!5177858))

(assert (= (and b!5177858 res!2200165) b!5177859))

(assert (= (and b!5177859 res!2200167) b!5177860))

(assert (= (and d!1672392 (not res!2200166)) b!5177861))

(declare-fun m!6234704 () Bool)

(assert (=> b!5177859 m!6234704))

(assert (=> b!5177859 m!6233170))

(declare-fun m!6234706 () Bool)

(assert (=> b!5177859 m!6234706))

(declare-fun m!6234708 () Bool)

(assert (=> b!5177860 m!6234708))

(assert (=> b!5177860 m!6233170))

(declare-fun m!6234710 () Bool)

(assert (=> b!5177860 m!6234710))

(assert (=> b!5177860 m!6234708))

(assert (=> b!5177860 m!6234710))

(declare-fun m!6234712 () Bool)

(assert (=> b!5177860 m!6234712))

(assert (=> b!5177861 m!6233170))

(declare-fun m!6234714 () Bool)

(assert (=> b!5177861 m!6234714))

(assert (=> b!5177861 m!6233134))

(assert (=> d!1671790 d!1672392))

(declare-fun d!1672394 () Bool)

(assert (=> d!1672394 (isPrefix!5790 lt!2132990 (++!13173 lt!2132990 call!363665))))

(declare-fun lt!2133842 () Unit!151998)

(assert (=> d!1672394 (= lt!2133842 (choose!38444 lt!2132990 call!363665))))

(assert (=> d!1672394 (= (lemmaConcatTwoListThenFirstIsPrefix!3604 lt!2132990 call!363665) lt!2133842)))

(declare-fun bs!1205432 () Bool)

(assert (= bs!1205432 d!1672394))

(assert (=> bs!1205432 m!6233170))

(assert (=> bs!1205432 m!6233170))

(assert (=> bs!1205432 m!6233172))

(declare-fun m!6234716 () Bool)

(assert (=> bs!1205432 m!6234716))

(assert (=> d!1671790 d!1672394))

(declare-fun d!1672396 () Bool)

(assert (=> d!1672396 (= call!363665 lt!2133436)))

(declare-fun lt!2133843 () Unit!151998)

(assert (=> d!1672396 (= lt!2133843 (choose!38445 lt!2132990 call!363665 lt!2132990 lt!2133436 input!5817))))

(assert (=> d!1672396 (isPrefix!5790 lt!2132990 input!5817)))

(assert (=> d!1672396 (= (lemmaSamePrefixThenSameSuffix!2710 lt!2132990 call!363665 lt!2132990 lt!2133436 input!5817) lt!2133843)))

(declare-fun bs!1205433 () Bool)

(assert (= bs!1205433 d!1672396))

(declare-fun m!6234718 () Bool)

(assert (=> bs!1205433 m!6234718))

(declare-fun m!6234720 () Bool)

(assert (=> bs!1205433 m!6234720))

(assert (=> d!1671790 d!1672396))

(declare-fun d!1672398 () Bool)

(declare-fun lt!2133844 () List!60287)

(assert (=> d!1672398 (= (++!13173 lt!2132990 lt!2133844) input!5817)))

(declare-fun e!3226240 () List!60287)

(assert (=> d!1672398 (= lt!2133844 e!3226240)))

(declare-fun c!891962 () Bool)

(assert (=> d!1672398 (= c!891962 ((_ is Cons!60163) lt!2132990))))

(assert (=> d!1672398 (>= (size!39693 input!5817) (size!39693 lt!2132990))))

(assert (=> d!1672398 (= (getSuffix!3438 input!5817 lt!2132990) lt!2133844)))

(declare-fun b!5177862 () Bool)

(assert (=> b!5177862 (= e!3226240 (getSuffix!3438 (tail!10174 input!5817) (t!373440 lt!2132990)))))

(declare-fun b!5177863 () Bool)

(assert (=> b!5177863 (= e!3226240 input!5817)))

(assert (= (and d!1672398 c!891962) b!5177862))

(assert (= (and d!1672398 (not c!891962)) b!5177863))

(declare-fun m!6234722 () Bool)

(assert (=> d!1672398 m!6234722))

(assert (=> d!1672398 m!6232070))

(assert (=> d!1672398 m!6233134))

(assert (=> b!5177862 m!6232140))

(assert (=> b!5177862 m!6232140))

(declare-fun m!6234724 () Bool)

(assert (=> b!5177862 m!6234724))

(assert (=> d!1671790 d!1672398))

(assert (=> b!5177017 d!1672370))

(declare-fun d!1672400 () Bool)

(declare-fun lt!2133845 () Int)

(assert (=> d!1672400 (>= lt!2133845 0)))

(declare-fun e!3226241 () Int)

(assert (=> d!1672400 (= lt!2133845 e!3226241)))

(declare-fun c!891963 () Bool)

(assert (=> d!1672400 (= c!891963 ((_ is Nil!60163) (_1!35235 lt!2133312)))))

(assert (=> d!1672400 (= (size!39693 (_1!35235 lt!2133312)) lt!2133845)))

(declare-fun b!5177864 () Bool)

(assert (=> b!5177864 (= e!3226241 0)))

(declare-fun b!5177865 () Bool)

(assert (=> b!5177865 (= e!3226241 (+ 1 (size!39693 (t!373440 (_1!35235 lt!2133312)))))))

(assert (= (and d!1672400 c!891963) b!5177864))

(assert (= (and d!1672400 (not c!891963)) b!5177865))

(declare-fun m!6234726 () Bool)

(assert (=> b!5177865 m!6234726))

(assert (=> b!5177025 d!1672400))

(assert (=> b!5177025 d!1671466))

(assert (=> d!1671746 d!1671740))

(assert (=> d!1671746 d!1671742))

(declare-fun d!1672402 () Bool)

(assert (=> d!1672402 (= (++!13173 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163)) lt!2133131) input!5817)))

(assert (=> d!1672402 true))

(declare-fun _$68!873 () Unit!151998)

(assert (=> d!1672402 (= (choose!38447 lt!2132884 lt!2133128 lt!2133131 input!5817) _$68!873)))

(declare-fun bs!1205434 () Bool)

(assert (= bs!1205434 d!1672402))

(assert (=> bs!1205434 m!6232348))

(assert (=> bs!1205434 m!6232348))

(assert (=> bs!1205434 m!6232350))

(assert (=> d!1671746 d!1672402))

(declare-fun b!5177868 () Bool)

(declare-fun res!2200170 () Bool)

(declare-fun e!3226243 () Bool)

(assert (=> b!5177868 (=> (not res!2200170) (not e!3226243))))

(declare-fun lt!2133846 () List!60287)

(assert (=> b!5177868 (= res!2200170 (= (size!39693 lt!2133846) (+ (size!39693 lt!2132884) (size!39693 (Cons!60163 lt!2133128 lt!2133131)))))))

(declare-fun b!5177867 () Bool)

(declare-fun e!3226242 () List!60287)

(assert (=> b!5177867 (= e!3226242 (Cons!60163 (h!66611 lt!2132884) (++!13173 (t!373440 lt!2132884) (Cons!60163 lt!2133128 lt!2133131))))))

(declare-fun b!5177866 () Bool)

(assert (=> b!5177866 (= e!3226242 (Cons!60163 lt!2133128 lt!2133131))))

(declare-fun b!5177869 () Bool)

(assert (=> b!5177869 (= e!3226243 (or (not (= (Cons!60163 lt!2133128 lt!2133131) Nil!60163)) (= lt!2133846 lt!2132884)))))

(declare-fun d!1672404 () Bool)

(assert (=> d!1672404 e!3226243))

(declare-fun res!2200169 () Bool)

(assert (=> d!1672404 (=> (not res!2200169) (not e!3226243))))

(assert (=> d!1672404 (= res!2200169 (= (content!10662 lt!2133846) ((_ map or) (content!10662 lt!2132884) (content!10662 (Cons!60163 lt!2133128 lt!2133131)))))))

(assert (=> d!1672404 (= lt!2133846 e!3226242)))

(declare-fun c!891964 () Bool)

(assert (=> d!1672404 (= c!891964 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1672404 (= (++!13173 lt!2132884 (Cons!60163 lt!2133128 lt!2133131)) lt!2133846)))

(assert (= (and d!1672404 c!891964) b!5177866))

(assert (= (and d!1672404 (not c!891964)) b!5177867))

(assert (= (and d!1672404 res!2200169) b!5177868))

(assert (= (and b!5177868 res!2200170) b!5177869))

(declare-fun m!6234728 () Bool)

(assert (=> b!5177868 m!6234728))

(assert (=> b!5177868 m!6232094))

(declare-fun m!6234730 () Bool)

(assert (=> b!5177868 m!6234730))

(declare-fun m!6234732 () Bool)

(assert (=> b!5177867 m!6234732))

(declare-fun m!6234734 () Bool)

(assert (=> d!1672404 m!6234734))

(assert (=> d!1672404 m!6232648))

(declare-fun m!6234736 () Bool)

(assert (=> d!1672404 m!6234736))

(assert (=> d!1671746 d!1672404))

(declare-fun b!5177872 () Bool)

(declare-fun res!2200172 () Bool)

(declare-fun e!3226245 () Bool)

(assert (=> b!5177872 (=> (not res!2200172) (not e!3226245))))

(declare-fun lt!2133847 () List!60287)

(assert (=> b!5177872 (= res!2200172 (= (size!39693 lt!2133847) (+ (size!39693 (t!373440 (t!373440 testedP!294))) (size!39693 (Cons!60163 lt!2132879 Nil!60163)))))))

(declare-fun b!5177871 () Bool)

(declare-fun e!3226244 () List!60287)

(assert (=> b!5177871 (= e!3226244 (Cons!60163 (h!66611 (t!373440 (t!373440 testedP!294))) (++!13173 (t!373440 (t!373440 (t!373440 testedP!294))) (Cons!60163 lt!2132879 Nil!60163))))))

(declare-fun b!5177870 () Bool)

(assert (=> b!5177870 (= e!3226244 (Cons!60163 lt!2132879 Nil!60163))))

(declare-fun b!5177873 () Bool)

(assert (=> b!5177873 (= e!3226245 (or (not (= (Cons!60163 lt!2132879 Nil!60163) Nil!60163)) (= lt!2133847 (t!373440 (t!373440 testedP!294)))))))

(declare-fun d!1672406 () Bool)

(assert (=> d!1672406 e!3226245))

(declare-fun res!2200171 () Bool)

(assert (=> d!1672406 (=> (not res!2200171) (not e!3226245))))

(assert (=> d!1672406 (= res!2200171 (= (content!10662 lt!2133847) ((_ map or) (content!10662 (t!373440 (t!373440 testedP!294))) (content!10662 (Cons!60163 lt!2132879 Nil!60163)))))))

(assert (=> d!1672406 (= lt!2133847 e!3226244)))

(declare-fun c!891965 () Bool)

(assert (=> d!1672406 (= c!891965 ((_ is Nil!60163) (t!373440 (t!373440 testedP!294))))))

(assert (=> d!1672406 (= (++!13173 (t!373440 (t!373440 testedP!294)) (Cons!60163 lt!2132879 Nil!60163)) lt!2133847)))

(assert (= (and d!1672406 c!891965) b!5177870))

(assert (= (and d!1672406 (not c!891965)) b!5177871))

(assert (= (and d!1672406 res!2200171) b!5177872))

(assert (= (and b!5177872 res!2200172) b!5177873))

(declare-fun m!6234738 () Bool)

(assert (=> b!5177872 m!6234738))

(assert (=> b!5177872 m!6233024))

(assert (=> b!5177872 m!6232384))

(declare-fun m!6234740 () Bool)

(assert (=> b!5177871 m!6234740))

(declare-fun m!6234742 () Bool)

(assert (=> d!1672406 m!6234742))

(assert (=> d!1672406 m!6234638))

(assert (=> d!1672406 m!6232392))

(assert (=> b!5177170 d!1672406))

(declare-fun d!1672408 () Bool)

(assert (=> d!1672408 (= input!5817 lt!2133136)))

(declare-fun lt!2133848 () Unit!151998)

(assert (=> d!1672408 (= lt!2133848 (choose!38438 input!5817 lt!2133136 input!5817))))

(assert (=> d!1672408 (isPrefix!5790 input!5817 input!5817)))

(assert (=> d!1672408 (= (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2133136 input!5817) lt!2133848)))

(declare-fun bs!1205435 () Bool)

(assert (= bs!1205435 d!1672408))

(declare-fun m!6234744 () Bool)

(assert (=> bs!1205435 m!6234744))

(assert (=> bs!1205435 m!6232110))

(assert (=> bm!363773 d!1672408))

(declare-fun d!1672410 () Bool)

(declare-fun e!3226246 () Bool)

(assert (=> d!1672410 e!3226246))

(declare-fun res!2200174 () Bool)

(assert (=> d!1672410 (=> res!2200174 e!3226246)))

(declare-fun lt!2133849 () Bool)

(assert (=> d!1672410 (= res!2200174 (not lt!2133849))))

(declare-fun e!3226247 () Bool)

(assert (=> d!1672410 (= lt!2133849 e!3226247)))

(declare-fun res!2200176 () Bool)

(assert (=> d!1672410 (=> res!2200176 e!3226247)))

(assert (=> d!1672410 (= res!2200176 ((_ is Nil!60163) (tail!10174 testedP!294)))))

(assert (=> d!1672410 (= (isPrefix!5790 (tail!10174 testedP!294) (tail!10174 (++!13173 testedP!294 lt!2132885))) lt!2133849)))

(declare-fun b!5177874 () Bool)

(declare-fun e!3226248 () Bool)

(assert (=> b!5177874 (= e!3226247 e!3226248)))

(declare-fun res!2200173 () Bool)

(assert (=> b!5177874 (=> (not res!2200173) (not e!3226248))))

(assert (=> b!5177874 (= res!2200173 (not ((_ is Nil!60163) (tail!10174 (++!13173 testedP!294 lt!2132885)))))))

(declare-fun b!5177875 () Bool)

(declare-fun res!2200175 () Bool)

(assert (=> b!5177875 (=> (not res!2200175) (not e!3226248))))

(assert (=> b!5177875 (= res!2200175 (= (head!11075 (tail!10174 testedP!294)) (head!11075 (tail!10174 (++!13173 testedP!294 lt!2132885)))))))

(declare-fun b!5177876 () Bool)

(assert (=> b!5177876 (= e!3226248 (isPrefix!5790 (tail!10174 (tail!10174 testedP!294)) (tail!10174 (tail!10174 (++!13173 testedP!294 lt!2132885)))))))

(declare-fun b!5177877 () Bool)

(assert (=> b!5177877 (= e!3226246 (>= (size!39693 (tail!10174 (++!13173 testedP!294 lt!2132885))) (size!39693 (tail!10174 testedP!294))))))

(assert (= (and d!1672410 (not res!2200176)) b!5177874))

(assert (= (and b!5177874 res!2200173) b!5177875))

(assert (= (and b!5177875 res!2200175) b!5177876))

(assert (= (and d!1672410 (not res!2200174)) b!5177877))

(assert (=> b!5177875 m!6232328))

(assert (=> b!5177875 m!6232746))

(assert (=> b!5177875 m!6232806))

(declare-fun m!6234746 () Bool)

(assert (=> b!5177875 m!6234746))

(assert (=> b!5177876 m!6232328))

(assert (=> b!5177876 m!6232750))

(assert (=> b!5177876 m!6232806))

(declare-fun m!6234748 () Bool)

(assert (=> b!5177876 m!6234748))

(assert (=> b!5177876 m!6232750))

(assert (=> b!5177876 m!6234748))

(declare-fun m!6234750 () Bool)

(assert (=> b!5177876 m!6234750))

(assert (=> b!5177877 m!6232806))

(declare-fun m!6234752 () Bool)

(assert (=> b!5177877 m!6234752))

(assert (=> b!5177877 m!6232328))

(assert (=> b!5177877 m!6232758))

(assert (=> b!5177067 d!1672410))

(assert (=> b!5177067 d!1671670))

(declare-fun d!1672412 () Bool)

(assert (=> d!1672412 (= (tail!10174 (++!13173 testedP!294 lt!2132885)) (t!373440 (++!13173 testedP!294 lt!2132885)))))

(assert (=> b!5177067 d!1672412))

(declare-fun b!5177878 () Bool)

(declare-fun e!3226250 () Bool)

(declare-fun call!363856 () Bool)

(assert (=> b!5177878 (= e!3226250 call!363856)))

(declare-fun b!5177879 () Bool)

(declare-fun e!3226253 () Bool)

(declare-fun e!3226255 () Bool)

(assert (=> b!5177879 (= e!3226253 e!3226255)))

(declare-fun c!891966 () Bool)

(assert (=> b!5177879 (= c!891966 ((_ is Star!14657) (h!66612 (exprs!4541 setElem!32334))))))

(declare-fun b!5177880 () Bool)

(declare-fun e!3226249 () Bool)

(declare-fun call!363857 () Bool)

(assert (=> b!5177880 (= e!3226249 call!363857)))

(declare-fun d!1672414 () Bool)

(declare-fun res!2200181 () Bool)

(assert (=> d!1672414 (=> res!2200181 e!3226253)))

(assert (=> d!1672414 (= res!2200181 ((_ is ElementMatch!14657) (h!66612 (exprs!4541 setElem!32334))))))

(assert (=> d!1672414 (= (validRegex!6407 (h!66612 (exprs!4541 setElem!32334))) e!3226253)))

(declare-fun b!5177881 () Bool)

(declare-fun e!3226251 () Bool)

(declare-fun e!3226252 () Bool)

(assert (=> b!5177881 (= e!3226251 e!3226252)))

(declare-fun res!2200177 () Bool)

(assert (=> b!5177881 (=> (not res!2200177) (not e!3226252))))

(declare-fun call!363855 () Bool)

(assert (=> b!5177881 (= res!2200177 call!363855)))

(declare-fun b!5177882 () Bool)

(declare-fun e!3226254 () Bool)

(assert (=> b!5177882 (= e!3226255 e!3226254)))

(declare-fun c!891967 () Bool)

(assert (=> b!5177882 (= c!891967 ((_ is Union!14657) (h!66612 (exprs!4541 setElem!32334))))))

(declare-fun bm!363850 () Bool)

(assert (=> bm!363850 (= call!363855 (validRegex!6407 (ite c!891967 (regOne!29827 (h!66612 (exprs!4541 setElem!32334))) (regOne!29826 (h!66612 (exprs!4541 setElem!32334))))))))

(declare-fun b!5177883 () Bool)

(declare-fun res!2200178 () Bool)

(assert (=> b!5177883 (=> (not res!2200178) (not e!3226250))))

(assert (=> b!5177883 (= res!2200178 call!363855)))

(assert (=> b!5177883 (= e!3226254 e!3226250)))

(declare-fun bm!363851 () Bool)

(assert (=> bm!363851 (= call!363856 call!363857)))

(declare-fun b!5177884 () Bool)

(assert (=> b!5177884 (= e!3226252 call!363856)))

(declare-fun b!5177885 () Bool)

(assert (=> b!5177885 (= e!3226255 e!3226249)))

(declare-fun res!2200180 () Bool)

(assert (=> b!5177885 (= res!2200180 (not (nullable!4894 (reg!14986 (h!66612 (exprs!4541 setElem!32334))))))))

(assert (=> b!5177885 (=> (not res!2200180) (not e!3226249))))

(declare-fun bm!363852 () Bool)

(assert (=> bm!363852 (= call!363857 (validRegex!6407 (ite c!891966 (reg!14986 (h!66612 (exprs!4541 setElem!32334))) (ite c!891967 (regTwo!29827 (h!66612 (exprs!4541 setElem!32334))) (regTwo!29826 (h!66612 (exprs!4541 setElem!32334)))))))))

(declare-fun b!5177886 () Bool)

(declare-fun res!2200179 () Bool)

(assert (=> b!5177886 (=> res!2200179 e!3226251)))

(assert (=> b!5177886 (= res!2200179 (not ((_ is Concat!23502) (h!66612 (exprs!4541 setElem!32334)))))))

(assert (=> b!5177886 (= e!3226254 e!3226251)))

(assert (= (and d!1672414 (not res!2200181)) b!5177879))

(assert (= (and b!5177879 c!891966) b!5177885))

(assert (= (and b!5177879 (not c!891966)) b!5177882))

(assert (= (and b!5177885 res!2200180) b!5177880))

(assert (= (and b!5177882 c!891967) b!5177883))

(assert (= (and b!5177882 (not c!891967)) b!5177886))

(assert (= (and b!5177883 res!2200178) b!5177878))

(assert (= (and b!5177886 (not res!2200179)) b!5177881))

(assert (= (and b!5177881 res!2200177) b!5177884))

(assert (= (or b!5177878 b!5177884) bm!363851))

(assert (= (or b!5177883 b!5177881) bm!363850))

(assert (= (or b!5177880 bm!363851) bm!363852))

(declare-fun m!6234754 () Bool)

(assert (=> bm!363850 m!6234754))

(declare-fun m!6234756 () Bool)

(assert (=> b!5177885 m!6234756))

(declare-fun m!6234758 () Bool)

(assert (=> bm!363852 m!6234758))

(assert (=> bs!1204965 d!1672414))

(declare-fun b!5177889 () Bool)

(declare-fun res!2200183 () Bool)

(declare-fun e!3226257 () Bool)

(assert (=> b!5177889 (=> (not res!2200183) (not e!3226257))))

(declare-fun lt!2133850 () List!60287)

(assert (=> b!5177889 (= res!2200183 (= (size!39693 lt!2133850) (+ (size!39693 (t!373440 (_1!35235 lt!2133135))) (size!39693 (_2!35235 lt!2133135)))))))

(declare-fun b!5177888 () Bool)

(declare-fun e!3226256 () List!60287)

(assert (=> b!5177888 (= e!3226256 (Cons!60163 (h!66611 (t!373440 (_1!35235 lt!2133135))) (++!13173 (t!373440 (t!373440 (_1!35235 lt!2133135))) (_2!35235 lt!2133135))))))

(declare-fun b!5177887 () Bool)

(assert (=> b!5177887 (= e!3226256 (_2!35235 lt!2133135))))

(declare-fun b!5177890 () Bool)

(assert (=> b!5177890 (= e!3226257 (or (not (= (_2!35235 lt!2133135) Nil!60163)) (= lt!2133850 (t!373440 (_1!35235 lt!2133135)))))))

(declare-fun d!1672416 () Bool)

(assert (=> d!1672416 e!3226257))

(declare-fun res!2200182 () Bool)

(assert (=> d!1672416 (=> (not res!2200182) (not e!3226257))))

(assert (=> d!1672416 (= res!2200182 (= (content!10662 lt!2133850) ((_ map or) (content!10662 (t!373440 (_1!35235 lt!2133135))) (content!10662 (_2!35235 lt!2133135)))))))

(assert (=> d!1672416 (= lt!2133850 e!3226256)))

(declare-fun c!891968 () Bool)

(assert (=> d!1672416 (= c!891968 ((_ is Nil!60163) (t!373440 (_1!35235 lt!2133135))))))

(assert (=> d!1672416 (= (++!13173 (t!373440 (_1!35235 lt!2133135)) (_2!35235 lt!2133135)) lt!2133850)))

(assert (= (and d!1672416 c!891968) b!5177887))

(assert (= (and d!1672416 (not c!891968)) b!5177888))

(assert (= (and d!1672416 res!2200182) b!5177889))

(assert (= (and b!5177889 res!2200183) b!5177890))

(declare-fun m!6234760 () Bool)

(assert (=> b!5177889 m!6234760))

(assert (=> b!5177889 m!6233374))

(assert (=> b!5177889 m!6232618))

(declare-fun m!6234762 () Bool)

(assert (=> b!5177888 m!6234762))

(declare-fun m!6234764 () Bool)

(assert (=> d!1672416 m!6234764))

(assert (=> d!1672416 m!6234654))

(assert (=> d!1672416 m!6232626))

(assert (=> b!5176981 d!1672416))

(declare-fun b!5177893 () Bool)

(declare-fun res!2200185 () Bool)

(declare-fun e!3226259 () Bool)

(assert (=> b!5177893 (=> (not res!2200185) (not e!3226259))))

(declare-fun lt!2133851 () List!60287)

(assert (=> b!5177893 (= res!2200185 (= (size!39693 lt!2133851) (+ (size!39693 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163)))) (size!39693 lt!2132985))))))

(declare-fun b!5177892 () Bool)

(declare-fun e!3226258 () List!60287)

(assert (=> b!5177892 (= e!3226258 (Cons!60163 (h!66611 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163)))) (++!13173 (t!373440 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163)))) lt!2132985)))))

(declare-fun b!5177891 () Bool)

(assert (=> b!5177891 (= e!3226258 lt!2132985)))

(declare-fun b!5177894 () Bool)

(assert (=> b!5177894 (= e!3226259 (or (not (= lt!2132985 Nil!60163)) (= lt!2133851 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))))))))

(declare-fun d!1672418 () Bool)

(assert (=> d!1672418 e!3226259))

(declare-fun res!2200184 () Bool)

(assert (=> d!1672418 (=> (not res!2200184) (not e!3226259))))

(assert (=> d!1672418 (= res!2200184 (= (content!10662 lt!2133851) ((_ map or) (content!10662 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163)))) (content!10662 lt!2132985))))))

(assert (=> d!1672418 (= lt!2133851 e!3226258)))

(declare-fun c!891969 () Bool)

(assert (=> d!1672418 (= c!891969 ((_ is Nil!60163) (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163)))))))

(assert (=> d!1672418 (= (++!13173 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))) lt!2132985) lt!2133851)))

(assert (= (and d!1672418 c!891969) b!5177891))

(assert (= (and d!1672418 (not c!891969)) b!5177892))

(assert (= (and d!1672418 res!2200184) b!5177893))

(assert (= (and b!5177893 res!2200185) b!5177894))

(declare-fun m!6234766 () Bool)

(assert (=> b!5177893 m!6234766))

(declare-fun m!6234768 () Bool)

(assert (=> b!5177893 m!6234768))

(assert (=> b!5177893 m!6232894))

(declare-fun m!6234770 () Bool)

(assert (=> b!5177892 m!6234770))

(declare-fun m!6234772 () Bool)

(assert (=> d!1672418 m!6234772))

(assert (=> d!1672418 m!6234362))

(assert (=> d!1672418 m!6232904))

(assert (=> b!5177096 d!1672418))

(assert (=> b!5177218 d!1672036))

(declare-fun d!1672420 () Bool)

(declare-fun lt!2133852 () Int)

(assert (=> d!1672420 (>= lt!2133852 0)))

(declare-fun e!3226260 () Int)

(assert (=> d!1672420 (= lt!2133852 e!3226260)))

(declare-fun c!891970 () Bool)

(assert (=> d!1672420 (= c!891970 ((_ is Nil!60163) (t!373440 (_1!35235 lt!2133135))))))

(assert (=> d!1672420 (= (size!39693 (t!373440 (_1!35235 lt!2133135))) lt!2133852)))

(declare-fun b!5177895 () Bool)

(assert (=> b!5177895 (= e!3226260 0)))

(declare-fun b!5177896 () Bool)

(assert (=> b!5177896 (= e!3226260 (+ 1 (size!39693 (t!373440 (t!373440 (_1!35235 lt!2133135))))))))

(assert (= (and d!1672420 c!891970) b!5177895))

(assert (= (and d!1672420 (not c!891970)) b!5177896))

(declare-fun m!6234774 () Bool)

(assert (=> b!5177896 m!6234774))

(assert (=> b!5177262 d!1672420))

(assert (=> d!1671858 d!1671500))

(assert (=> d!1671858 d!1671494))

(declare-fun d!1672422 () Bool)

(assert (=> d!1672422 true))

(declare-fun setRes!32349 () Bool)

(assert (=> d!1672422 setRes!32349))

(declare-fun condSetEmpty!32349 () Bool)

(declare-fun res!2200188 () (InoxSet Context!8082))

(assert (=> d!1672422 (= condSetEmpty!32349 (= res!2200188 ((as const (Array Context!8082 Bool)) false)))))

(assert (=> d!1672422 (= (choose!38443 z!4581 lambda!258589) res!2200188)))

(declare-fun setIsEmpty!32349 () Bool)

(assert (=> setIsEmpty!32349 setRes!32349))

(declare-fun setNonEmpty!32349 () Bool)

(declare-fun tp!1452312 () Bool)

(declare-fun setElem!32349 () Context!8082)

(declare-fun e!3226263 () Bool)

(assert (=> setNonEmpty!32349 (= setRes!32349 (and tp!1452312 (inv!79889 setElem!32349) e!3226263))))

(declare-fun setRest!32349 () (InoxSet Context!8082))

(assert (=> setNonEmpty!32349 (= res!2200188 ((_ map or) (store ((as const (Array Context!8082 Bool)) false) setElem!32349 true) setRest!32349))))

(declare-fun b!5177899 () Bool)

(declare-fun tp!1452313 () Bool)

(assert (=> b!5177899 (= e!3226263 tp!1452313)))

(assert (= (and d!1672422 condSetEmpty!32349) setIsEmpty!32349))

(assert (= (and d!1672422 (not condSetEmpty!32349)) setNonEmpty!32349))

(assert (= setNonEmpty!32349 b!5177899))

(declare-fun m!6234776 () Bool)

(assert (=> setNonEmpty!32349 m!6234776))

(assert (=> d!1671600 d!1672422))

(assert (=> bm!363775 d!1671514))

(declare-fun d!1672424 () Bool)

(declare-fun c!891971 () Bool)

(assert (=> d!1672424 (= c!891971 (isEmpty!32211 (tail!10174 (tail!10174 (_1!35235 lt!2132881)))))))

(declare-fun e!3226264 () Bool)

(assert (=> d!1672424 (= (matchZipper!987 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881))) (head!11075 (tail!10174 (_1!35235 lt!2132881)))) (tail!10174 (tail!10174 (_1!35235 lt!2132881)))) e!3226264)))

(declare-fun b!5177900 () Bool)

(assert (=> b!5177900 (= e!3226264 (nullableZipper!1195 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881))) (head!11075 (tail!10174 (_1!35235 lt!2132881))))))))

(declare-fun b!5177901 () Bool)

(assert (=> b!5177901 (= e!3226264 (matchZipper!987 (derivationStepZipper!1003 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881))) (head!11075 (tail!10174 (_1!35235 lt!2132881)))) (head!11075 (tail!10174 (tail!10174 (_1!35235 lt!2132881))))) (tail!10174 (tail!10174 (tail!10174 (_1!35235 lt!2132881))))))))

(assert (= (and d!1672424 c!891971) b!5177900))

(assert (= (and d!1672424 (not c!891971)) b!5177901))

(assert (=> d!1672424 m!6233308))

(declare-fun m!6234778 () Bool)

(assert (=> d!1672424 m!6234778))

(assert (=> b!5177900 m!6233306))

(declare-fun m!6234780 () Bool)

(assert (=> b!5177900 m!6234780))

(assert (=> b!5177901 m!6233308))

(declare-fun m!6234782 () Bool)

(assert (=> b!5177901 m!6234782))

(assert (=> b!5177901 m!6233306))

(assert (=> b!5177901 m!6234782))

(declare-fun m!6234784 () Bool)

(assert (=> b!5177901 m!6234784))

(assert (=> b!5177901 m!6233308))

(declare-fun m!6234786 () Bool)

(assert (=> b!5177901 m!6234786))

(assert (=> b!5177901 m!6234784))

(assert (=> b!5177901 m!6234786))

(declare-fun m!6234788 () Bool)

(assert (=> b!5177901 m!6234788))

(assert (=> b!5177242 d!1672424))

(declare-fun bs!1205436 () Bool)

(declare-fun d!1672426 () Bool)

(assert (= bs!1205436 (and d!1672426 d!1672126)))

(declare-fun lambda!258688 () Int)

(assert (=> bs!1205436 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) call!363745) (= lambda!258688 lambda!258672))))

(declare-fun bs!1205437 () Bool)

(assert (= bs!1205437 (and d!1672426 d!1671532)))

(assert (=> bs!1205437 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) lt!2132879) (= lambda!258688 lambda!258589))))

(declare-fun bs!1205438 () Bool)

(assert (= bs!1205438 (and d!1672426 d!1671870)))

(assert (=> bs!1205438 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) (h!66611 lt!2132884)) (= lambda!258688 lambda!258629))))

(declare-fun bs!1205439 () Bool)

(assert (= bs!1205439 (and d!1672426 d!1671662)))

(assert (=> bs!1205439 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) call!363667) (= lambda!258688 lambda!258614))))

(declare-fun bs!1205440 () Bool)

(assert (= bs!1205440 (and d!1672426 d!1671786)))

(assert (=> bs!1205440 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) call!363675) (= lambda!258688 lambda!258622))))

(declare-fun bs!1205441 () Bool)

(assert (= bs!1205441 (and d!1672426 d!1672310)))

(assert (=> bs!1205441 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) call!363779) (= lambda!258688 lambda!258680))))

(declare-fun bs!1205442 () Bool)

(assert (= bs!1205442 (and d!1672426 d!1672080)))

(assert (=> bs!1205442 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) call!363771) (= lambda!258688 lambda!258667))))

(declare-fun bs!1205443 () Bool)

(assert (= bs!1205443 (and d!1672426 d!1671836)))

(assert (=> bs!1205443 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) (head!11075 (_1!35235 lt!2132881))) (= lambda!258688 lambda!258625))))

(declare-fun bs!1205444 () Bool)

(assert (= bs!1205444 (and d!1672426 d!1671850)))

(assert (=> bs!1205444 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) (head!11075 (_1!35235 lt!2132877))) (= lambda!258688 lambda!258626))))

(declare-fun bs!1205445 () Bool)

(assert (= bs!1205445 (and d!1672426 d!1671672)))

(assert (=> bs!1205445 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) call!363707) (= lambda!258688 lambda!258615))))

(declare-fun bs!1205446 () Bool)

(assert (= bs!1205446 (and d!1672426 d!1671866)))

(assert (=> bs!1205446 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) (h!66611 testedP!294)) (= lambda!258688 lambda!258628))))

(assert (=> d!1672426 true))

(assert (=> d!1672426 (= (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881))) (head!11075 (tail!10174 (_1!35235 lt!2132881)))) (flatMap!460 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132881))) lambda!258688))))

(declare-fun bs!1205447 () Bool)

(assert (= bs!1205447 d!1672426))

(assert (=> bs!1205447 m!6232120))

(declare-fun m!6234790 () Bool)

(assert (=> bs!1205447 m!6234790))

(assert (=> b!5177242 d!1672426))

(declare-fun d!1672428 () Bool)

(assert (=> d!1672428 (= (head!11075 (tail!10174 (_1!35235 lt!2132881))) (h!66611 (tail!10174 (_1!35235 lt!2132881))))))

(assert (=> b!5177242 d!1672428))

(declare-fun d!1672430 () Bool)

(assert (=> d!1672430 (= (tail!10174 (tail!10174 (_1!35235 lt!2132881))) (t!373440 (tail!10174 (_1!35235 lt!2132881))))))

(assert (=> b!5177242 d!1672430))

(declare-fun d!1672432 () Bool)

(declare-fun lt!2133853 () Int)

(assert (=> d!1672432 (>= lt!2133853 0)))

(declare-fun e!3226265 () Int)

(assert (=> d!1672432 (= lt!2133853 e!3226265)))

(declare-fun c!891972 () Bool)

(assert (=> d!1672432 (= c!891972 ((_ is Nil!60163) lt!2133374))))

(assert (=> d!1672432 (= (size!39693 lt!2133374) lt!2133853)))

(declare-fun b!5177902 () Bool)

(assert (=> b!5177902 (= e!3226265 0)))

(declare-fun b!5177903 () Bool)

(assert (=> b!5177903 (= e!3226265 (+ 1 (size!39693 (t!373440 lt!2133374))))))

(assert (= (and d!1672432 c!891972) b!5177902))

(assert (= (and d!1672432 (not c!891972)) b!5177903))

(declare-fun m!6234792 () Bool)

(assert (=> b!5177903 m!6234792))

(assert (=> b!5177119 d!1672432))

(assert (=> b!5177119 d!1671872))

(declare-fun d!1672434 () Bool)

(declare-fun lt!2133854 () Int)

(assert (=> d!1672434 (>= lt!2133854 0)))

(declare-fun e!3226266 () Int)

(assert (=> d!1672434 (= lt!2133854 e!3226266)))

(declare-fun c!891973 () Bool)

(assert (=> d!1672434 (= c!891973 ((_ is Nil!60163) (_2!35235 lt!2132989)))))

(assert (=> d!1672434 (= (size!39693 (_2!35235 lt!2132989)) lt!2133854)))

(declare-fun b!5177904 () Bool)

(assert (=> b!5177904 (= e!3226266 0)))

(declare-fun b!5177905 () Bool)

(assert (=> b!5177905 (= e!3226266 (+ 1 (size!39693 (t!373440 (_2!35235 lt!2132989)))))))

(assert (= (and d!1672434 c!891973) b!5177904))

(assert (= (and d!1672434 (not c!891973)) b!5177905))

(declare-fun m!6234794 () Bool)

(assert (=> b!5177905 m!6234794))

(assert (=> b!5177119 d!1672434))

(declare-fun d!1672436 () Bool)

(assert (=> d!1672436 (= (tail!10174 lt!2132885) lt!2133139)))

(assert (=> d!1672436 true))

(declare-fun _$63!1300 () Unit!151998)

(assert (=> d!1672436 (= (choose!38445 lt!2132884 (tail!10174 lt!2132885) lt!2132884 lt!2133139 input!5817) _$63!1300)))

(assert (=> d!1671608 d!1672436))

(assert (=> d!1671608 d!1671550))

(declare-fun d!1672438 () Bool)

(declare-fun e!3226267 () Bool)

(assert (=> d!1672438 e!3226267))

(declare-fun res!2200190 () Bool)

(assert (=> d!1672438 (=> res!2200190 e!3226267)))

(declare-fun lt!2133855 () Bool)

(assert (=> d!1672438 (= res!2200190 (not lt!2133855))))

(declare-fun e!3226268 () Bool)

(assert (=> d!1672438 (= lt!2133855 e!3226268)))

(declare-fun res!2200192 () Bool)

(assert (=> d!1672438 (=> res!2200192 e!3226268)))

(assert (=> d!1672438 (= res!2200192 ((_ is Nil!60163) (tail!10174 lt!2132884)))))

(assert (=> d!1672438 (= (isPrefix!5790 (tail!10174 lt!2132884) (tail!10174 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))) lt!2133855)))

(declare-fun b!5177906 () Bool)

(declare-fun e!3226269 () Bool)

(assert (=> b!5177906 (= e!3226268 e!3226269)))

(declare-fun res!2200189 () Bool)

(assert (=> b!5177906 (=> (not res!2200189) (not e!3226269))))

(assert (=> b!5177906 (= res!2200189 (not ((_ is Nil!60163) (tail!10174 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))))))))

(declare-fun b!5177907 () Bool)

(declare-fun res!2200191 () Bool)

(assert (=> b!5177907 (=> (not res!2200191) (not e!3226269))))

(assert (=> b!5177907 (= res!2200191 (= (head!11075 (tail!10174 lt!2132884)) (head!11075 (tail!10174 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))))))))

(declare-fun b!5177908 () Bool)

(assert (=> b!5177908 (= e!3226269 (isPrefix!5790 (tail!10174 (tail!10174 lt!2132884)) (tail!10174 (tail!10174 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))))))))

(declare-fun b!5177909 () Bool)

(assert (=> b!5177909 (= e!3226267 (>= (size!39693 (tail!10174 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884)))) (size!39693 (tail!10174 lt!2132884))))))

(assert (= (and d!1672438 (not res!2200192)) b!5177906))

(assert (= (and b!5177906 res!2200189) b!5177907))

(assert (= (and b!5177907 res!2200191) b!5177908))

(assert (= (and d!1672438 (not res!2200190)) b!5177909))

(assert (=> b!5177907 m!6232406))

(assert (=> b!5177907 m!6233034))

(assert (=> b!5177907 m!6232940))

(declare-fun m!6234796 () Bool)

(assert (=> b!5177907 m!6234796))

(assert (=> b!5177908 m!6232406))

(assert (=> b!5177908 m!6233036))

(assert (=> b!5177908 m!6232940))

(declare-fun m!6234798 () Bool)

(assert (=> b!5177908 m!6234798))

(assert (=> b!5177908 m!6233036))

(assert (=> b!5177908 m!6234798))

(declare-fun m!6234800 () Bool)

(assert (=> b!5177908 m!6234800))

(assert (=> b!5177909 m!6232940))

(declare-fun m!6234802 () Bool)

(assert (=> b!5177909 m!6234802))

(assert (=> b!5177909 m!6232406))

(assert (=> b!5177909 m!6233042))

(assert (=> b!5177115 d!1672438))

(assert (=> b!5177115 d!1671766))

(declare-fun d!1672440 () Bool)

(assert (=> d!1672440 (= (tail!10174 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))) (t!373440 (++!13173 lt!2132884 (getSuffix!3438 input!5817 lt!2132884))))))

(assert (=> b!5177115 d!1672440))

(declare-fun d!1672442 () Bool)

(assert (=> d!1672442 (= (flatMap!460 baseZ!62 lambda!258626) (choose!38443 baseZ!62 lambda!258626))))

(declare-fun bs!1205448 () Bool)

(assert (= bs!1205448 d!1672442))

(declare-fun m!6234804 () Bool)

(assert (=> bs!1205448 m!6234804))

(assert (=> d!1671850 d!1672442))

(declare-fun c!891974 () Bool)

(declare-fun d!1672444 () Bool)

(assert (=> d!1672444 (= c!891974 (isEmpty!32211 (tail!10174 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))))))

(declare-fun e!3226270 () Bool)

(assert (=> d!1672444 (= (matchZipper!987 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))) (tail!10174 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))) e!3226270)))

(declare-fun b!5177910 () Bool)

(assert (=> b!5177910 (= e!3226270 (nullableZipper!1195 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))))))))

(declare-fun b!5177911 () Bool)

(assert (=> b!5177911 (= e!3226270 (matchZipper!987 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))) (head!11075 (tail!10174 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))))) (tail!10174 (tail!10174 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))))))))

(assert (= (and d!1672444 c!891974) b!5177910))

(assert (= (and d!1672444 (not c!891974)) b!5177911))

(assert (=> d!1672444 m!6233326))

(declare-fun m!6234806 () Bool)

(assert (=> d!1672444 m!6234806))

(assert (=> b!5177910 m!6233324))

(declare-fun m!6234808 () Bool)

(assert (=> b!5177910 m!6234808))

(assert (=> b!5177911 m!6233326))

(declare-fun m!6234810 () Bool)

(assert (=> b!5177911 m!6234810))

(assert (=> b!5177911 m!6233324))

(assert (=> b!5177911 m!6234810))

(declare-fun m!6234812 () Bool)

(assert (=> b!5177911 m!6234812))

(assert (=> b!5177911 m!6233326))

(declare-fun m!6234814 () Bool)

(assert (=> b!5177911 m!6234814))

(assert (=> b!5177911 m!6234812))

(assert (=> b!5177911 m!6234814))

(declare-fun m!6234816 () Bool)

(assert (=> b!5177911 m!6234816))

(assert (=> b!5177252 d!1672444))

(declare-fun bs!1205449 () Bool)

(declare-fun d!1672446 () Bool)

(assert (= bs!1205449 (and d!1672446 d!1672126)))

(declare-fun lambda!258689 () Int)

(assert (=> bs!1205449 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) call!363745) (= lambda!258689 lambda!258672))))

(declare-fun bs!1205450 () Bool)

(assert (= bs!1205450 (and d!1672446 d!1671532)))

(assert (=> bs!1205450 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) lt!2132879) (= lambda!258689 lambda!258589))))

(declare-fun bs!1205451 () Bool)

(assert (= bs!1205451 (and d!1672446 d!1672426)))

(assert (=> bs!1205451 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) (head!11075 (tail!10174 (_1!35235 lt!2132881)))) (= lambda!258689 lambda!258688))))

(declare-fun bs!1205452 () Bool)

(assert (= bs!1205452 (and d!1672446 d!1671870)))

(assert (=> bs!1205452 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) (h!66611 lt!2132884)) (= lambda!258689 lambda!258629))))

(declare-fun bs!1205453 () Bool)

(assert (= bs!1205453 (and d!1672446 d!1671662)))

(assert (=> bs!1205453 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) call!363667) (= lambda!258689 lambda!258614))))

(declare-fun bs!1205454 () Bool)

(assert (= bs!1205454 (and d!1672446 d!1671786)))

(assert (=> bs!1205454 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) call!363675) (= lambda!258689 lambda!258622))))

(declare-fun bs!1205455 () Bool)

(assert (= bs!1205455 (and d!1672446 d!1672310)))

(assert (=> bs!1205455 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) call!363779) (= lambda!258689 lambda!258680))))

(declare-fun bs!1205456 () Bool)

(assert (= bs!1205456 (and d!1672446 d!1672080)))

(assert (=> bs!1205456 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) call!363771) (= lambda!258689 lambda!258667))))

(declare-fun bs!1205457 () Bool)

(assert (= bs!1205457 (and d!1672446 d!1671836)))

(assert (=> bs!1205457 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) (head!11075 (_1!35235 lt!2132881))) (= lambda!258689 lambda!258625))))

(declare-fun bs!1205458 () Bool)

(assert (= bs!1205458 (and d!1672446 d!1671850)))

(assert (=> bs!1205458 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) (head!11075 (_1!35235 lt!2132877))) (= lambda!258689 lambda!258626))))

(declare-fun bs!1205459 () Bool)

(assert (= bs!1205459 (and d!1672446 d!1671672)))

(assert (=> bs!1205459 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) call!363707) (= lambda!258689 lambda!258615))))

(declare-fun bs!1205460 () Bool)

(assert (= bs!1205460 (and d!1672446 d!1671866)))

(assert (=> bs!1205460 (= (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) (h!66611 testedP!294)) (= lambda!258689 lambda!258628))))

(assert (=> d!1672446 true))

(assert (=> d!1672446 (= (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))) (flatMap!460 baseZ!62 lambda!258689))))

(declare-fun bs!1205461 () Bool)

(assert (= bs!1205461 d!1672446))

(declare-fun m!6234818 () Bool)

(assert (=> bs!1205461 m!6234818))

(assert (=> b!5177252 d!1672446))

(declare-fun d!1672448 () Bool)

(assert (=> d!1672448 (= (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) (h!66611 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))))))

(assert (=> b!5177252 d!1672448))

(declare-fun d!1672450 () Bool)

(assert (=> d!1672450 (= (tail!10174 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))) (t!373440 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817)))))))

(assert (=> b!5177252 d!1672450))

(declare-fun d!1672452 () Bool)

(assert (=> d!1672452 (= (isEmpty!32211 (_1!35235 lt!2133244)) ((_ is Nil!60163) (_1!35235 lt!2133244)))))

(assert (=> b!5176978 d!1672452))

(declare-fun bs!1205462 () Bool)

(declare-fun d!1672454 () Bool)

(assert (= bs!1205462 (and d!1672454 d!1672126)))

(declare-fun lambda!258690 () Int)

(assert (=> bs!1205462 (= (= call!363731 call!363745) (= lambda!258690 lambda!258672))))

(declare-fun bs!1205463 () Bool)

(assert (= bs!1205463 (and d!1672454 d!1671532)))

(assert (=> bs!1205463 (= (= call!363731 lt!2132879) (= lambda!258690 lambda!258589))))

(declare-fun bs!1205464 () Bool)

(assert (= bs!1205464 (and d!1672454 d!1672426)))

(assert (=> bs!1205464 (= (= call!363731 (head!11075 (tail!10174 (_1!35235 lt!2132881)))) (= lambda!258690 lambda!258688))))

(declare-fun bs!1205465 () Bool)

(assert (= bs!1205465 (and d!1672454 d!1671870)))

(assert (=> bs!1205465 (= (= call!363731 (h!66611 lt!2132884)) (= lambda!258690 lambda!258629))))

(declare-fun bs!1205466 () Bool)

(assert (= bs!1205466 (and d!1672454 d!1671662)))

(assert (=> bs!1205466 (= (= call!363731 call!363667) (= lambda!258690 lambda!258614))))

(declare-fun bs!1205467 () Bool)

(assert (= bs!1205467 (and d!1672454 d!1671786)))

(assert (=> bs!1205467 (= (= call!363731 call!363675) (= lambda!258690 lambda!258622))))

(declare-fun bs!1205468 () Bool)

(assert (= bs!1205468 (and d!1672454 d!1672446)))

(assert (=> bs!1205468 (= (= call!363731 (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))) (= lambda!258690 lambda!258689))))

(declare-fun bs!1205469 () Bool)

(assert (= bs!1205469 (and d!1672454 d!1672310)))

(assert (=> bs!1205469 (= (= call!363731 call!363779) (= lambda!258690 lambda!258680))))

(declare-fun bs!1205470 () Bool)

(assert (= bs!1205470 (and d!1672454 d!1672080)))

(assert (=> bs!1205470 (= (= call!363731 call!363771) (= lambda!258690 lambda!258667))))

(declare-fun bs!1205471 () Bool)

(assert (= bs!1205471 (and d!1672454 d!1671836)))

(assert (=> bs!1205471 (= (= call!363731 (head!11075 (_1!35235 lt!2132881))) (= lambda!258690 lambda!258625))))

(declare-fun bs!1205472 () Bool)

(assert (= bs!1205472 (and d!1672454 d!1671850)))

(assert (=> bs!1205472 (= (= call!363731 (head!11075 (_1!35235 lt!2132877))) (= lambda!258690 lambda!258626))))

(declare-fun bs!1205473 () Bool)

(assert (= bs!1205473 (and d!1672454 d!1671672)))

(assert (=> bs!1205473 (= (= call!363731 call!363707) (= lambda!258690 lambda!258615))))

(declare-fun bs!1205474 () Bool)

(assert (= bs!1205474 (and d!1672454 d!1671866)))

(assert (=> bs!1205474 (= (= call!363731 (h!66611 testedP!294)) (= lambda!258690 lambda!258628))))

(assert (=> d!1672454 true))

(assert (=> d!1672454 (= (derivationStepZipper!1003 call!363679 call!363731) (flatMap!460 call!363679 lambda!258690))))

(declare-fun bs!1205475 () Bool)

(assert (= bs!1205475 d!1672454))

(declare-fun m!6234820 () Bool)

(assert (=> bs!1205475 m!6234820))

(assert (=> bm!363724 d!1672454))

(declare-fun d!1672456 () Bool)

(declare-fun res!2200193 () Bool)

(declare-fun e!3226271 () Bool)

(assert (=> d!1672456 (=> res!2200193 e!3226271)))

(assert (=> d!1672456 (= res!2200193 ((_ is Nil!60164) (t!373441 (exprs!4541 setElem!32333))))))

(assert (=> d!1672456 (= (forall!14161 (t!373441 (exprs!4541 setElem!32333)) lambda!258580) e!3226271)))

(declare-fun b!5177912 () Bool)

(declare-fun e!3226272 () Bool)

(assert (=> b!5177912 (= e!3226271 e!3226272)))

(declare-fun res!2200194 () Bool)

(assert (=> b!5177912 (=> (not res!2200194) (not e!3226272))))

(assert (=> b!5177912 (= res!2200194 (dynLambda!23882 lambda!258580 (h!66612 (t!373441 (exprs!4541 setElem!32333)))))))

(declare-fun b!5177913 () Bool)

(assert (=> b!5177913 (= e!3226272 (forall!14161 (t!373441 (t!373441 (exprs!4541 setElem!32333))) lambda!258580))))

(assert (= (and d!1672456 (not res!2200193)) b!5177912))

(assert (= (and b!5177912 res!2200194) b!5177913))

(declare-fun b_lambda!200997 () Bool)

(assert (=> (not b_lambda!200997) (not b!5177912)))

(declare-fun m!6234822 () Bool)

(assert (=> b!5177912 m!6234822))

(declare-fun m!6234824 () Bool)

(assert (=> b!5177913 m!6234824))

(assert (=> b!5177174 d!1672456))

(declare-fun b!5177916 () Bool)

(declare-fun res!2200196 () Bool)

(declare-fun e!3226274 () Bool)

(assert (=> b!5177916 (=> (not res!2200196) (not e!3226274))))

(declare-fun lt!2133856 () List!60287)

(assert (=> b!5177916 (= res!2200196 (= (size!39693 lt!2133856) (+ (size!39693 (t!373440 lt!2132884)) (size!39693 lt!2133437))))))

(declare-fun b!5177915 () Bool)

(declare-fun e!3226273 () List!60287)

(assert (=> b!5177915 (= e!3226273 (Cons!60163 (h!66611 (t!373440 lt!2132884)) (++!13173 (t!373440 (t!373440 lt!2132884)) lt!2133437)))))

(declare-fun b!5177914 () Bool)

(assert (=> b!5177914 (= e!3226273 lt!2133437)))

(declare-fun b!5177917 () Bool)

(assert (=> b!5177917 (= e!3226274 (or (not (= lt!2133437 Nil!60163)) (= lt!2133856 (t!373440 lt!2132884))))))

(declare-fun d!1672458 () Bool)

(assert (=> d!1672458 e!3226274))

(declare-fun res!2200195 () Bool)

(assert (=> d!1672458 (=> (not res!2200195) (not e!3226274))))

(assert (=> d!1672458 (= res!2200195 (= (content!10662 lt!2133856) ((_ map or) (content!10662 (t!373440 lt!2132884)) (content!10662 lt!2133437))))))

(assert (=> d!1672458 (= lt!2133856 e!3226273)))

(declare-fun c!891975 () Bool)

(assert (=> d!1672458 (= c!891975 ((_ is Nil!60163) (t!373440 lt!2132884)))))

(assert (=> d!1672458 (= (++!13173 (t!373440 lt!2132884) lt!2133437) lt!2133856)))

(assert (= (and d!1672458 c!891975) b!5177914))

(assert (= (and d!1672458 (not c!891975)) b!5177915))

(assert (= (and d!1672458 res!2200195) b!5177916))

(assert (= (and b!5177916 res!2200196) b!5177917))

(declare-fun m!6234826 () Bool)

(assert (=> b!5177916 m!6234826))

(assert (=> b!5177916 m!6232126))

(declare-fun m!6234828 () Bool)

(assert (=> b!5177916 m!6234828))

(declare-fun m!6234830 () Bool)

(assert (=> b!5177915 m!6234830))

(declare-fun m!6234832 () Bool)

(assert (=> d!1672458 m!6234832))

(assert (=> d!1672458 m!6233904))

(declare-fun m!6234834 () Bool)

(assert (=> d!1672458 m!6234834))

(assert (=> d!1671794 d!1672458))

(assert (=> d!1671794 d!1672242))

(assert (=> d!1671794 d!1671780))

(declare-fun d!1672460 () Bool)

(declare-fun c!891976 () Bool)

(assert (=> d!1672460 (= c!891976 ((_ is Cons!60163) (t!373440 (t!373440 lt!2132884))))))

(declare-fun e!3226275 () (InoxSet Context!8082))

(assert (=> d!1672460 (= (derivationZipper!280 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (h!66611 lt!2132884)) (h!66611 (t!373440 lt!2132884))) (t!373440 (t!373440 lt!2132884))) e!3226275)))

(declare-fun b!5177918 () Bool)

(assert (=> b!5177918 (= e!3226275 (derivationZipper!280 (derivationStepZipper!1003 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (h!66611 lt!2132884)) (h!66611 (t!373440 lt!2132884))) (h!66611 (t!373440 (t!373440 lt!2132884)))) (t!373440 (t!373440 (t!373440 lt!2132884)))))))

(declare-fun b!5177919 () Bool)

(assert (=> b!5177919 (= e!3226275 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (h!66611 lt!2132884)) (h!66611 (t!373440 lt!2132884))))))

(assert (= (and d!1672460 c!891976) b!5177918))

(assert (= (and d!1672460 (not c!891976)) b!5177919))

(assert (=> b!5177918 m!6233366))

(declare-fun m!6234836 () Bool)

(assert (=> b!5177918 m!6234836))

(assert (=> b!5177918 m!6234836))

(declare-fun m!6234838 () Bool)

(assert (=> b!5177918 m!6234838))

(assert (=> b!5177257 d!1672460))

(declare-fun bs!1205476 () Bool)

(declare-fun d!1672462 () Bool)

(assert (= bs!1205476 (and d!1672462 d!1672126)))

(declare-fun lambda!258691 () Int)

(assert (=> bs!1205476 (= (= (h!66611 (t!373440 lt!2132884)) call!363745) (= lambda!258691 lambda!258672))))

(declare-fun bs!1205477 () Bool)

(assert (= bs!1205477 (and d!1672462 d!1671532)))

(assert (=> bs!1205477 (= (= (h!66611 (t!373440 lt!2132884)) lt!2132879) (= lambda!258691 lambda!258589))))

(declare-fun bs!1205478 () Bool)

(assert (= bs!1205478 (and d!1672462 d!1672454)))

(assert (=> bs!1205478 (= (= (h!66611 (t!373440 lt!2132884)) call!363731) (= lambda!258691 lambda!258690))))

(declare-fun bs!1205479 () Bool)

(assert (= bs!1205479 (and d!1672462 d!1672426)))

(assert (=> bs!1205479 (= (= (h!66611 (t!373440 lt!2132884)) (head!11075 (tail!10174 (_1!35235 lt!2132881)))) (= lambda!258691 lambda!258688))))

(declare-fun bs!1205480 () Bool)

(assert (= bs!1205480 (and d!1672462 d!1671870)))

(assert (=> bs!1205480 (= (= (h!66611 (t!373440 lt!2132884)) (h!66611 lt!2132884)) (= lambda!258691 lambda!258629))))

(declare-fun bs!1205481 () Bool)

(assert (= bs!1205481 (and d!1672462 d!1671662)))

(assert (=> bs!1205481 (= (= (h!66611 (t!373440 lt!2132884)) call!363667) (= lambda!258691 lambda!258614))))

(declare-fun bs!1205482 () Bool)

(assert (= bs!1205482 (and d!1672462 d!1671786)))

(assert (=> bs!1205482 (= (= (h!66611 (t!373440 lt!2132884)) call!363675) (= lambda!258691 lambda!258622))))

(declare-fun bs!1205483 () Bool)

(assert (= bs!1205483 (and d!1672462 d!1672446)))

(assert (=> bs!1205483 (= (= (h!66611 (t!373440 lt!2132884)) (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))) (= lambda!258691 lambda!258689))))

(declare-fun bs!1205484 () Bool)

(assert (= bs!1205484 (and d!1672462 d!1672310)))

(assert (=> bs!1205484 (= (= (h!66611 (t!373440 lt!2132884)) call!363779) (= lambda!258691 lambda!258680))))

(declare-fun bs!1205485 () Bool)

(assert (= bs!1205485 (and d!1672462 d!1672080)))

(assert (=> bs!1205485 (= (= (h!66611 (t!373440 lt!2132884)) call!363771) (= lambda!258691 lambda!258667))))

(declare-fun bs!1205486 () Bool)

(assert (= bs!1205486 (and d!1672462 d!1671836)))

(assert (=> bs!1205486 (= (= (h!66611 (t!373440 lt!2132884)) (head!11075 (_1!35235 lt!2132881))) (= lambda!258691 lambda!258625))))

(declare-fun bs!1205487 () Bool)

(assert (= bs!1205487 (and d!1672462 d!1671850)))

(assert (=> bs!1205487 (= (= (h!66611 (t!373440 lt!2132884)) (head!11075 (_1!35235 lt!2132877))) (= lambda!258691 lambda!258626))))

(declare-fun bs!1205488 () Bool)

(assert (= bs!1205488 (and d!1672462 d!1671672)))

(assert (=> bs!1205488 (= (= (h!66611 (t!373440 lt!2132884)) call!363707) (= lambda!258691 lambda!258615))))

(declare-fun bs!1205489 () Bool)

(assert (= bs!1205489 (and d!1672462 d!1671866)))

(assert (=> bs!1205489 (= (= (h!66611 (t!373440 lt!2132884)) (h!66611 testedP!294)) (= lambda!258691 lambda!258628))))

(assert (=> d!1672462 true))

(assert (=> d!1672462 (= (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (h!66611 lt!2132884)) (h!66611 (t!373440 lt!2132884))) (flatMap!460 (derivationStepZipper!1003 baseZ!62 (h!66611 lt!2132884)) lambda!258691))))

(declare-fun bs!1205490 () Bool)

(assert (= bs!1205490 d!1672462))

(assert (=> bs!1205490 m!6232144))

(declare-fun m!6234840 () Bool)

(assert (=> bs!1205490 m!6234840))

(assert (=> b!5177257 d!1672462))

(declare-fun d!1672464 () Bool)

(assert (=> d!1672464 (= (isEmpty!32211 (_1!35235 lt!2133461)) ((_ is Nil!60163) (_1!35235 lt!2133461)))))

(assert (=> b!5177200 d!1672464))

(assert (=> d!1671592 d!1671590))

(assert (=> d!1671592 d!1671594))

(assert (=> d!1671592 d!1671588))

(assert (=> d!1671592 d!1671498))

(declare-fun d!1672466 () Bool)

(declare-fun lt!2133857 () Int)

(assert (=> d!1672466 (>= lt!2133857 0)))

(declare-fun e!3226276 () Int)

(assert (=> d!1672466 (= lt!2133857 e!3226276)))

(declare-fun c!891977 () Bool)

(assert (=> d!1672466 (= c!891977 ((_ is Nil!60163) lt!2133363))))

(assert (=> d!1672466 (= (size!39693 lt!2133363) lt!2133857)))

(declare-fun b!5177920 () Bool)

(assert (=> b!5177920 (= e!3226276 0)))

(declare-fun b!5177921 () Bool)

(assert (=> b!5177921 (= e!3226276 (+ 1 (size!39693 (t!373440 lt!2133363))))))

(assert (= (and d!1672466 c!891977) b!5177920))

(assert (= (and d!1672466 (not c!891977)) b!5177921))

(declare-fun m!6234842 () Bool)

(assert (=> b!5177921 m!6234842))

(assert (=> b!5177093 d!1672466))

(assert (=> b!5177093 d!1671466))

(declare-fun d!1672468 () Bool)

(declare-fun lt!2133858 () Int)

(assert (=> d!1672468 (>= lt!2133858 0)))

(declare-fun e!3226277 () Int)

(assert (=> d!1672468 (= lt!2133858 e!3226277)))

(declare-fun c!891978 () Bool)

(assert (=> d!1672468 (= c!891978 ((_ is Nil!60163) (Cons!60163 lt!2132982 Nil!60163)))))

(assert (=> d!1672468 (= (size!39693 (Cons!60163 lt!2132982 Nil!60163)) lt!2133858)))

(declare-fun b!5177922 () Bool)

(assert (=> b!5177922 (= e!3226277 0)))

(declare-fun b!5177923 () Bool)

(assert (=> b!5177923 (= e!3226277 (+ 1 (size!39693 (t!373440 (Cons!60163 lt!2132982 Nil!60163)))))))

(assert (= (and d!1672468 c!891978) b!5177922))

(assert (= (and d!1672468 (not c!891978)) b!5177923))

(declare-fun m!6234844 () Bool)

(assert (=> b!5177923 m!6234844))

(assert (=> b!5177093 d!1672468))

(declare-fun d!1672470 () Bool)

(declare-fun c!891979 () Bool)

(assert (=> d!1672470 (= c!891979 ((_ is Nil!60163) lt!2133374))))

(declare-fun e!3226278 () (InoxSet C!29584))

(assert (=> d!1672470 (= (content!10662 lt!2133374) e!3226278)))

(declare-fun b!5177924 () Bool)

(assert (=> b!5177924 (= e!3226278 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177925 () Bool)

(assert (=> b!5177925 (= e!3226278 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133374) true) (content!10662 (t!373440 lt!2133374))))))

(assert (= (and d!1672470 c!891979) b!5177924))

(assert (= (and d!1672470 (not c!891979)) b!5177925))

(declare-fun m!6234846 () Bool)

(assert (=> b!5177925 m!6234846))

(declare-fun m!6234848 () Bool)

(assert (=> b!5177925 m!6234848))

(assert (=> d!1671736 d!1672470))

(declare-fun d!1672472 () Bool)

(declare-fun c!891980 () Bool)

(assert (=> d!1672472 (= c!891980 ((_ is Nil!60163) (_1!35235 lt!2132989)))))

(declare-fun e!3226279 () (InoxSet C!29584))

(assert (=> d!1672472 (= (content!10662 (_1!35235 lt!2132989)) e!3226279)))

(declare-fun b!5177926 () Bool)

(assert (=> b!5177926 (= e!3226279 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177927 () Bool)

(assert (=> b!5177927 (= e!3226279 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (_1!35235 lt!2132989)) true) (content!10662 (t!373440 (_1!35235 lt!2132989)))))))

(assert (= (and d!1672472 c!891980) b!5177926))

(assert (= (and d!1672472 (not c!891980)) b!5177927))

(declare-fun m!6234850 () Bool)

(assert (=> b!5177927 m!6234850))

(declare-fun m!6234852 () Bool)

(assert (=> b!5177927 m!6234852))

(assert (=> d!1671736 d!1672472))

(declare-fun d!1672474 () Bool)

(declare-fun c!891981 () Bool)

(assert (=> d!1672474 (= c!891981 ((_ is Nil!60163) (_2!35235 lt!2132989)))))

(declare-fun e!3226280 () (InoxSet C!29584))

(assert (=> d!1672474 (= (content!10662 (_2!35235 lt!2132989)) e!3226280)))

(declare-fun b!5177928 () Bool)

(assert (=> b!5177928 (= e!3226280 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177929 () Bool)

(assert (=> b!5177929 (= e!3226280 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (_2!35235 lt!2132989)) true) (content!10662 (t!373440 (_2!35235 lt!2132989)))))))

(assert (= (and d!1672474 c!891981) b!5177928))

(assert (= (and d!1672474 (not c!891981)) b!5177929))

(declare-fun m!6234854 () Bool)

(assert (=> b!5177929 m!6234854))

(declare-fun m!6234856 () Bool)

(assert (=> b!5177929 m!6234856))

(assert (=> d!1671736 d!1672474))

(declare-fun d!1672476 () Bool)

(declare-fun lt!2133859 () Int)

(assert (=> d!1672476 (>= lt!2133859 0)))

(declare-fun e!3226281 () Int)

(assert (=> d!1672476 (= lt!2133859 e!3226281)))

(declare-fun c!891982 () Bool)

(assert (=> d!1672476 (= c!891982 ((_ is Nil!60163) (t!373440 (_1!35235 lt!2132989))))))

(assert (=> d!1672476 (= (size!39693 (t!373440 (_1!35235 lt!2132989))) lt!2133859)))

(declare-fun b!5177930 () Bool)

(assert (=> b!5177930 (= e!3226281 0)))

(declare-fun b!5177931 () Bool)

(assert (=> b!5177931 (= e!3226281 (+ 1 (size!39693 (t!373440 (t!373440 (_1!35235 lt!2132989))))))))

(assert (= (and d!1672476 c!891982) b!5177930))

(assert (= (and d!1672476 (not c!891982)) b!5177931))

(declare-fun m!6234858 () Bool)

(assert (=> b!5177931 m!6234858))

(assert (=> b!5177260 d!1672476))

(assert (=> b!5177066 d!1671856))

(declare-fun d!1672478 () Bool)

(assert (=> d!1672478 (= (head!11075 (++!13173 testedP!294 lt!2132885)) (h!66611 (++!13173 testedP!294 lt!2132885)))))

(assert (=> b!5177066 d!1672478))

(declare-fun bs!1205491 () Bool)

(declare-fun d!1672480 () Bool)

(assert (= bs!1205491 (and d!1672480 d!1671554)))

(declare-fun lambda!258692 () Int)

(assert (=> bs!1205491 (= lambda!258692 lambda!258593)))

(declare-fun bs!1205492 () Bool)

(assert (= bs!1205492 (and d!1672480 d!1671862)))

(assert (=> bs!1205492 (= lambda!258692 lambda!258627)))

(declare-fun bs!1205493 () Bool)

(assert (= bs!1205493 (and d!1672480 d!1672240)))

(assert (=> bs!1205493 (= lambda!258692 lambda!258676)))

(declare-fun bs!1205494 () Bool)

(assert (= bs!1205494 (and d!1672480 d!1671768)))

(assert (=> bs!1205494 (= lambda!258692 lambda!258621)))

(declare-fun bs!1205495 () Bool)

(assert (= bs!1205495 (and d!1672480 d!1671504)))

(assert (=> bs!1205495 (= lambda!258692 lambda!258580)))

(assert (=> d!1672480 (= (inv!79889 setElem!32343) (forall!14161 (exprs!4541 setElem!32343) lambda!258692))))

(declare-fun bs!1205496 () Bool)

(assert (= bs!1205496 d!1672480))

(declare-fun m!6234860 () Bool)

(assert (=> bs!1205496 m!6234860))

(assert (=> setNonEmpty!32343 d!1672480))

(declare-fun d!1672482 () Bool)

(declare-fun res!2200197 () Bool)

(declare-fun e!3226282 () Bool)

(assert (=> d!1672482 (=> res!2200197 e!3226282)))

(assert (=> d!1672482 (= res!2200197 ((_ is Nil!60164) (exprs!4541 setElem!32337)))))

(assert (=> d!1672482 (= (forall!14161 (exprs!4541 setElem!32337) lambda!258627) e!3226282)))

(declare-fun b!5177932 () Bool)

(declare-fun e!3226283 () Bool)

(assert (=> b!5177932 (= e!3226282 e!3226283)))

(declare-fun res!2200198 () Bool)

(assert (=> b!5177932 (=> (not res!2200198) (not e!3226283))))

(assert (=> b!5177932 (= res!2200198 (dynLambda!23882 lambda!258627 (h!66612 (exprs!4541 setElem!32337))))))

(declare-fun b!5177933 () Bool)

(assert (=> b!5177933 (= e!3226283 (forall!14161 (t!373441 (exprs!4541 setElem!32337)) lambda!258627))))

(assert (= (and d!1672482 (not res!2200197)) b!5177932))

(assert (= (and b!5177932 res!2200198) b!5177933))

(declare-fun b_lambda!200999 () Bool)

(assert (=> (not b_lambda!200999) (not b!5177932)))

(declare-fun m!6234862 () Bool)

(assert (=> b!5177932 m!6234862))

(declare-fun m!6234864 () Bool)

(assert (=> b!5177933 m!6234864))

(assert (=> d!1671862 d!1672482))

(assert (=> b!5177044 d!1671494))

(assert (=> b!5177044 d!1671650))

(assert (=> b!5177044 d!1671844))

(assert (=> b!5177044 d!1671466))

(assert (=> b!5177044 d!1671474))

(assert (=> bm!363770 d!1671512))

(declare-fun d!1672484 () Bool)

(declare-fun c!891983 () Bool)

(assert (=> d!1672484 (= c!891983 ((_ is Nil!60163) lt!2133363))))

(declare-fun e!3226284 () (InoxSet C!29584))

(assert (=> d!1672484 (= (content!10662 lt!2133363) e!3226284)))

(declare-fun b!5177934 () Bool)

(assert (=> b!5177934 (= e!3226284 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177935 () Bool)

(assert (=> b!5177935 (= e!3226284 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133363) true) (content!10662 (t!373440 lt!2133363))))))

(assert (= (and d!1672484 c!891983) b!5177934))

(assert (= (and d!1672484 (not c!891983)) b!5177935))

(declare-fun m!6234866 () Bool)

(assert (=> b!5177935 m!6234866))

(declare-fun m!6234868 () Bool)

(assert (=> b!5177935 m!6234868))

(assert (=> d!1671708 d!1672484))

(assert (=> d!1671708 d!1672064))

(declare-fun d!1672486 () Bool)

(declare-fun c!891984 () Bool)

(assert (=> d!1672486 (= c!891984 ((_ is Nil!60163) (Cons!60163 lt!2132982 Nil!60163)))))

(declare-fun e!3226285 () (InoxSet C!29584))

(assert (=> d!1672486 (= (content!10662 (Cons!60163 lt!2132982 Nil!60163)) e!3226285)))

(declare-fun b!5177936 () Bool)

(assert (=> b!5177936 (= e!3226285 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177937 () Bool)

(assert (=> b!5177937 (= e!3226285 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (Cons!60163 lt!2132982 Nil!60163)) true) (content!10662 (t!373440 (Cons!60163 lt!2132982 Nil!60163)))))))

(assert (= (and d!1672486 c!891984) b!5177936))

(assert (= (and d!1672486 (not c!891984)) b!5177937))

(declare-fun m!6234870 () Bool)

(assert (=> b!5177937 m!6234870))

(declare-fun m!6234872 () Bool)

(assert (=> b!5177937 m!6234872))

(assert (=> d!1671708 d!1672486))

(declare-fun d!1672488 () Bool)

(declare-fun c!891985 () Bool)

(assert (=> d!1672488 (= c!891985 ((_ is Nil!60163) (t!373440 lt!2133145)))))

(declare-fun e!3226286 () (InoxSet C!29584))

(assert (=> d!1672488 (= (content!10662 (t!373440 lt!2133145)) e!3226286)))

(declare-fun b!5177938 () Bool)

(assert (=> b!5177938 (= e!3226286 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177939 () Bool)

(assert (=> b!5177939 (= e!3226286 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (t!373440 lt!2133145)) true) (content!10662 (t!373440 (t!373440 lt!2133145)))))))

(assert (= (and d!1672488 c!891985) b!5177938))

(assert (= (and d!1672488 (not c!891985)) b!5177939))

(declare-fun m!6234874 () Bool)

(assert (=> b!5177939 m!6234874))

(declare-fun m!6234876 () Bool)

(assert (=> b!5177939 m!6234876))

(assert (=> b!5177015 d!1672488))

(declare-fun d!1672490 () Bool)

(assert (=> d!1672490 (= input!5817 lt!2132990)))

(declare-fun lt!2133860 () Unit!151998)

(assert (=> d!1672490 (= lt!2133860 (choose!38438 input!5817 lt!2132990 input!5817))))

(assert (=> d!1672490 (isPrefix!5790 input!5817 input!5817)))

(assert (=> d!1672490 (= (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2132990 input!5817) lt!2133860)))

(declare-fun bs!1205497 () Bool)

(assert (= bs!1205497 d!1672490))

(declare-fun m!6234878 () Bool)

(assert (=> bs!1205497 m!6234878))

(assert (=> bs!1205497 m!6232110))

(assert (=> bm!363765 d!1672490))

(declare-fun b!5177942 () Bool)

(declare-fun res!2200200 () Bool)

(declare-fun e!3226288 () Bool)

(assert (=> b!5177942 (=> (not res!2200200) (not e!3226288))))

(declare-fun lt!2133861 () List!60287)

(assert (=> b!5177942 (= res!2200200 (= (size!39693 lt!2133861) (+ (size!39693 (t!373440 (_1!35235 lt!2132989))) (size!39693 (_2!35235 lt!2132989)))))))

(declare-fun b!5177941 () Bool)

(declare-fun e!3226287 () List!60287)

(assert (=> b!5177941 (= e!3226287 (Cons!60163 (h!66611 (t!373440 (_1!35235 lt!2132989))) (++!13173 (t!373440 (t!373440 (_1!35235 lt!2132989))) (_2!35235 lt!2132989))))))

(declare-fun b!5177940 () Bool)

(assert (=> b!5177940 (= e!3226287 (_2!35235 lt!2132989))))

(declare-fun b!5177943 () Bool)

(assert (=> b!5177943 (= e!3226288 (or (not (= (_2!35235 lt!2132989) Nil!60163)) (= lt!2133861 (t!373440 (_1!35235 lt!2132989)))))))

(declare-fun d!1672492 () Bool)

(assert (=> d!1672492 e!3226288))

(declare-fun res!2200199 () Bool)

(assert (=> d!1672492 (=> (not res!2200199) (not e!3226288))))

(assert (=> d!1672492 (= res!2200199 (= (content!10662 lt!2133861) ((_ map or) (content!10662 (t!373440 (_1!35235 lt!2132989))) (content!10662 (_2!35235 lt!2132989)))))))

(assert (=> d!1672492 (= lt!2133861 e!3226287)))

(declare-fun c!891986 () Bool)

(assert (=> d!1672492 (= c!891986 ((_ is Nil!60163) (t!373440 (_1!35235 lt!2132989))))))

(assert (=> d!1672492 (= (++!13173 (t!373440 (_1!35235 lt!2132989)) (_2!35235 lt!2132989)) lt!2133861)))

(assert (= (and d!1672492 c!891986) b!5177940))

(assert (= (and d!1672492 (not c!891986)) b!5177941))

(assert (= (and d!1672492 res!2200199) b!5177942))

(assert (= (and b!5177942 res!2200200) b!5177943))

(declare-fun m!6234880 () Bool)

(assert (=> b!5177942 m!6234880))

(assert (=> b!5177942 m!6233372))

(assert (=> b!5177942 m!6232960))

(declare-fun m!6234882 () Bool)

(assert (=> b!5177941 m!6234882))

(declare-fun m!6234884 () Bool)

(assert (=> d!1672492 m!6234884))

(assert (=> d!1672492 m!6234852))

(assert (=> d!1672492 m!6232968))

(assert (=> b!5177118 d!1672492))

(assert (=> bm!363737 d!1671804))

(declare-fun b!5177946 () Bool)

(declare-fun res!2200202 () Bool)

(declare-fun e!3226290 () Bool)

(assert (=> b!5177946 (=> (not res!2200202) (not e!3226290))))

(declare-fun lt!2133862 () List!60287)

(assert (=> b!5177946 (= res!2200202 (= (size!39693 lt!2133862) (+ (size!39693 (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163)))) (size!39693 lt!2133050))))))

(declare-fun b!5177945 () Bool)

(declare-fun e!3226289 () List!60287)

(assert (=> b!5177945 (= e!3226289 (Cons!60163 (h!66611 (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163)))) (++!13173 (t!373440 (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163)))) lt!2133050)))))

(declare-fun b!5177944 () Bool)

(assert (=> b!5177944 (= e!3226289 lt!2133050)))

(declare-fun b!5177947 () Bool)

(assert (=> b!5177947 (= e!3226290 (or (not (= lt!2133050 Nil!60163)) (= lt!2133862 (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))))))))

(declare-fun d!1672494 () Bool)

(assert (=> d!1672494 e!3226290))

(declare-fun res!2200201 () Bool)

(assert (=> d!1672494 (=> (not res!2200201) (not e!3226290))))

(assert (=> d!1672494 (= res!2200201 (= (content!10662 lt!2133862) ((_ map or) (content!10662 (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163)))) (content!10662 lt!2133050))))))

(assert (=> d!1672494 (= lt!2133862 e!3226289)))

(declare-fun c!891987 () Bool)

(assert (=> d!1672494 (= c!891987 ((_ is Nil!60163) (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163)))))))

(assert (=> d!1672494 (= (++!13173 (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2133047 Nil!60163))) lt!2133050) lt!2133862)))

(assert (= (and d!1672494 c!891987) b!5177944))

(assert (= (and d!1672494 (not c!891987)) b!5177945))

(assert (= (and d!1672494 res!2200201) b!5177946))

(assert (= (and b!5177946 res!2200202) b!5177947))

(declare-fun m!6234886 () Bool)

(assert (=> b!5177946 m!6234886))

(assert (=> b!5177946 m!6234018))

(assert (=> b!5177946 m!6233260))

(declare-fun m!6234888 () Bool)

(assert (=> b!5177945 m!6234888))

(declare-fun m!6234890 () Bool)

(assert (=> d!1672494 m!6234890))

(assert (=> d!1672494 m!6234138))

(assert (=> d!1672494 m!6233268))

(assert (=> b!5177226 d!1672494))

(assert (=> d!1671718 d!1671716))

(assert (=> d!1671718 d!1671474))

(declare-fun d!1672496 () Bool)

(assert (=> d!1672496 (isPrefix!5790 (++!13173 lt!2132884 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132884)) Nil!60163)) input!5817)))

(assert (=> d!1672496 true))

(declare-fun _$65!1835 () Unit!151998)

(assert (=> d!1672496 (= (choose!38441 lt!2132884 input!5817) _$65!1835)))

(declare-fun bs!1205498 () Bool)

(assert (= bs!1205498 d!1672496))

(assert (=> bs!1205498 m!6232090))

(assert (=> bs!1205498 m!6232090))

(assert (=> bs!1205498 m!6232182))

(assert (=> bs!1205498 m!6232194))

(assert (=> bs!1205498 m!6232194))

(assert (=> bs!1205498 m!6232196))

(assert (=> d!1671718 d!1672496))

(assert (=> d!1671718 d!1671706))

(assert (=> d!1671718 d!1671550))

(assert (=> d!1671718 d!1671714))

(declare-fun d!1672498 () Bool)

(declare-fun lt!2133863 () Int)

(assert (=> d!1672498 (>= lt!2133863 0)))

(declare-fun e!3226291 () Int)

(assert (=> d!1672498 (= lt!2133863 e!3226291)))

(declare-fun c!891988 () Bool)

(assert (=> d!1672498 (= c!891988 ((_ is Nil!60163) (++!13173 lt!2132884 (tail!10174 lt!2132885))))))

(assert (=> d!1672498 (= (size!39693 (++!13173 lt!2132884 (tail!10174 lt!2132885))) lt!2133863)))

(declare-fun b!5177948 () Bool)

(assert (=> b!5177948 (= e!3226291 0)))

(declare-fun b!5177949 () Bool)

(assert (=> b!5177949 (= e!3226291 (+ 1 (size!39693 (t!373440 (++!13173 lt!2132884 (tail!10174 lt!2132885))))))))

(assert (= (and d!1672498 c!891988) b!5177948))

(assert (= (and d!1672498 (not c!891988)) b!5177949))

(declare-fun m!6234892 () Bool)

(assert (=> b!5177949 m!6234892))

(assert (=> b!5176987 d!1672498))

(assert (=> b!5176987 d!1671466))

(declare-fun d!1672500 () Bool)

(declare-fun lt!2133864 () Bool)

(assert (=> d!1672500 (= lt!2133864 (exists!1941 (toList!8458 baseZ!62) lambda!258613))))

(assert (=> d!1672500 (= lt!2133864 (choose!38446 baseZ!62 lambda!258613))))

(assert (=> d!1672500 (= (exists!1939 baseZ!62 lambda!258613) lt!2133864)))

(declare-fun bs!1205499 () Bool)

(assert (= bs!1205499 d!1672500))

(declare-fun m!6234894 () Bool)

(assert (=> bs!1205499 m!6234894))

(assert (=> bs!1205499 m!6234894))

(declare-fun m!6234896 () Bool)

(assert (=> bs!1205499 m!6234896))

(declare-fun m!6234898 () Bool)

(assert (=> bs!1205499 m!6234898))

(assert (=> d!1671636 d!1672500))

(declare-fun b!5177952 () Bool)

(declare-fun res!2200204 () Bool)

(declare-fun e!3226293 () Bool)

(assert (=> b!5177952 (=> (not res!2200204) (not e!3226293))))

(declare-fun lt!2133865 () List!60287)

(assert (=> b!5177952 (= res!2200204 (= (size!39693 lt!2133865) (+ (size!39693 (t!373440 lt!2132884)) (size!39693 (getSuffix!3438 input!5817 lt!2132884)))))))

(declare-fun b!5177951 () Bool)

(declare-fun e!3226292 () List!60287)

(assert (=> b!5177951 (= e!3226292 (Cons!60163 (h!66611 (t!373440 lt!2132884)) (++!13173 (t!373440 (t!373440 lt!2132884)) (getSuffix!3438 input!5817 lt!2132884))))))

(declare-fun b!5177950 () Bool)

(assert (=> b!5177950 (= e!3226292 (getSuffix!3438 input!5817 lt!2132884))))

(declare-fun b!5177953 () Bool)

(assert (=> b!5177953 (= e!3226293 (or (not (= (getSuffix!3438 input!5817 lt!2132884) Nil!60163)) (= lt!2133865 (t!373440 lt!2132884))))))

(declare-fun d!1672502 () Bool)

(assert (=> d!1672502 e!3226293))

(declare-fun res!2200203 () Bool)

(assert (=> d!1672502 (=> (not res!2200203) (not e!3226293))))

(assert (=> d!1672502 (= res!2200203 (= (content!10662 lt!2133865) ((_ map or) (content!10662 (t!373440 lt!2132884)) (content!10662 (getSuffix!3438 input!5817 lt!2132884)))))))

(assert (=> d!1672502 (= lt!2133865 e!3226292)))

(declare-fun c!891989 () Bool)

(assert (=> d!1672502 (= c!891989 ((_ is Nil!60163) (t!373440 lt!2132884)))))

(assert (=> d!1672502 (= (++!13173 (t!373440 lt!2132884) (getSuffix!3438 input!5817 lt!2132884)) lt!2133865)))

(assert (= (and d!1672502 c!891989) b!5177950))

(assert (= (and d!1672502 (not c!891989)) b!5177951))

(assert (= (and d!1672502 res!2200203) b!5177952))

(assert (= (and b!5177952 res!2200204) b!5177953))

(declare-fun m!6234900 () Bool)

(assert (=> b!5177952 m!6234900))

(assert (=> b!5177952 m!6232126))

(assert (=> b!5177952 m!6232090))

(assert (=> b!5177952 m!6232930))

(assert (=> b!5177951 m!6232090))

(declare-fun m!6234902 () Bool)

(assert (=> b!5177951 m!6234902))

(declare-fun m!6234904 () Bool)

(assert (=> d!1672502 m!6234904))

(assert (=> d!1672502 m!6233904))

(assert (=> d!1672502 m!6232090))

(assert (=> d!1672502 m!6232936))

(assert (=> b!5177106 d!1672502))

(declare-fun b!5177956 () Bool)

(declare-fun res!2200206 () Bool)

(declare-fun e!3226295 () Bool)

(assert (=> b!5177956 (=> (not res!2200206) (not e!3226295))))

(declare-fun lt!2133866 () List!60287)

(assert (=> b!5177956 (= res!2200206 (= (size!39693 lt!2133866) (+ (size!39693 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163)))) (size!39693 lt!2133131))))))

(declare-fun e!3226294 () List!60287)

(declare-fun b!5177955 () Bool)

(assert (=> b!5177955 (= e!3226294 (Cons!60163 (h!66611 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163)))) (++!13173 (t!373440 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163)))) lt!2133131)))))

(declare-fun b!5177954 () Bool)

(assert (=> b!5177954 (= e!3226294 lt!2133131)))

(declare-fun b!5177957 () Bool)

(assert (=> b!5177957 (= e!3226295 (or (not (= lt!2133131 Nil!60163)) (= lt!2133866 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))))))))

(declare-fun d!1672504 () Bool)

(assert (=> d!1672504 e!3226295))

(declare-fun res!2200205 () Bool)

(assert (=> d!1672504 (=> (not res!2200205) (not e!3226295))))

(assert (=> d!1672504 (= res!2200205 (= (content!10662 lt!2133866) ((_ map or) (content!10662 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163)))) (content!10662 lt!2133131))))))

(assert (=> d!1672504 (= lt!2133866 e!3226294)))

(declare-fun c!891990 () Bool)

(assert (=> d!1672504 (= c!891990 ((_ is Nil!60163) (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163)))))))

(assert (=> d!1672504 (= (++!13173 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2133128 Nil!60163))) lt!2133131) lt!2133866)))

(assert (= (and d!1672504 c!891990) b!5177954))

(assert (= (and d!1672504 (not c!891990)) b!5177955))

(assert (= (and d!1672504 res!2200205) b!5177956))

(assert (= (and b!5177956 res!2200206) b!5177957))

(declare-fun m!6234906 () Bool)

(assert (=> b!5177956 m!6234906))

(assert (=> b!5177956 m!6234026))

(assert (=> b!5177956 m!6232984))

(declare-fun m!6234908 () Bool)

(assert (=> b!5177955 m!6234908))

(declare-fun m!6234910 () Bool)

(assert (=> d!1672504 m!6234910))

(assert (=> d!1672504 m!6234220))

(assert (=> d!1672504 m!6232992))

(assert (=> b!5177126 d!1672504))

(declare-fun d!1672506 () Bool)

(assert (=> d!1672506 (= (tail!10174 call!363665) (t!373440 call!363665))))

(assert (=> bm!363766 d!1672506))

(declare-fun d!1672508 () Bool)

(assert (=> d!1672508 (= (isEmpty!32211 (tail!10174 (_1!35235 lt!2132877))) ((_ is Nil!60163) (tail!10174 (_1!35235 lt!2132877))))))

(assert (=> d!1671846 d!1672508))

(declare-fun d!1672510 () Bool)

(declare-fun e!3226296 () Bool)

(assert (=> d!1672510 e!3226296))

(declare-fun res!2200207 () Bool)

(assert (=> d!1672510 (=> (not res!2200207) (not e!3226296))))

(declare-fun lt!2133867 () List!60289)

(assert (=> d!1672510 (= res!2200207 (noDuplicate!1136 lt!2133867))))

(assert (=> d!1672510 (= lt!2133867 (choose!38454 z!4581))))

(assert (=> d!1672510 (= (toList!8458 z!4581) lt!2133867)))

(declare-fun b!5177958 () Bool)

(assert (=> b!5177958 (= e!3226296 (= (content!10664 lt!2133867) z!4581))))

(assert (= (and d!1672510 res!2200207) b!5177958))

(declare-fun m!6234912 () Bool)

(assert (=> d!1672510 m!6234912))

(declare-fun m!6234914 () Bool)

(assert (=> d!1672510 m!6234914))

(declare-fun m!6234916 () Bool)

(assert (=> b!5177958 m!6234916))

(assert (=> bm!363745 d!1672510))

(assert (=> bm!363730 d!1671512))

(declare-fun bs!1205500 () Bool)

(declare-fun d!1672512 () Bool)

(assert (= bs!1205500 (and d!1672512 b!5176997)))

(declare-fun lambda!258695 () Int)

(assert (=> bs!1205500 (not (= lambda!258695 lambda!258612))))

(declare-fun bs!1205501 () Bool)

(assert (= bs!1205501 (and d!1672512 d!1672052)))

(assert (=> bs!1205501 (= (= lambda!258610 (ite c!891678 lambda!258611 lambda!258612)) (= lambda!258695 lambda!258666))))

(declare-fun bs!1205502 () Bool)

(assert (= bs!1205502 (and d!1672512 d!1671804)))

(assert (=> bs!1205502 (not (= lambda!258695 lambda!258624))))

(declare-fun bs!1205503 () Bool)

(assert (= bs!1205503 (and d!1672512 d!1672364)))

(assert (=> bs!1205503 (= (= lambda!258610 lambda!258616) (= lambda!258695 lambda!258684))))

(declare-fun bs!1205504 () Bool)

(assert (= bs!1205504 (and d!1672512 b!5177857)))

(assert (=> bs!1205504 (not (= lambda!258695 lambda!258687))))

(declare-fun bs!1205505 () Bool)

(assert (= bs!1205505 (and d!1672512 d!1671612)))

(assert (=> bs!1205505 (not (= lambda!258695 lambda!258610))))

(declare-fun bs!1205506 () Bool)

(assert (= bs!1205506 (and d!1672512 b!5177723)))

(assert (=> bs!1205506 (not (= lambda!258695 lambda!258678))))

(declare-fun bs!1205507 () Bool)

(assert (= bs!1205507 (and d!1672512 d!1672232)))

(assert (=> bs!1205507 (not (= lambda!258695 lambda!258675))))

(declare-fun bs!1205508 () Bool)

(assert (= bs!1205508 (and d!1672512 b!5177056)))

(assert (=> bs!1205508 (not (= lambda!258695 lambda!258618))))

(declare-fun bs!1205509 () Bool)

(assert (= bs!1205509 (and d!1672512 d!1672390)))

(assert (=> bs!1205509 (not (= lambda!258695 lambda!258685))))

(declare-fun bs!1205510 () Bool)

(assert (= bs!1205510 (and d!1672512 d!1672352)))

(assert (=> bs!1205510 (not (= lambda!258695 lambda!258681))))

(declare-fun bs!1205511 () Bool)

(assert (= bs!1205511 (and d!1672512 d!1672204)))

(assert (=> bs!1205511 (not (= lambda!258695 lambda!258673))))

(declare-fun bs!1205512 () Bool)

(assert (= bs!1205512 (and d!1672512 d!1672276)))

(assert (=> bs!1205512 (not (= lambda!258695 lambda!258677))))

(declare-fun bs!1205513 () Bool)

(assert (= bs!1205513 (and d!1672512 b!5177724)))

(assert (=> bs!1205513 (not (= lambda!258695 lambda!258679))))

(declare-fun bs!1205514 () Bool)

(assert (= bs!1205514 (and d!1672512 d!1672104)))

(assert (=> bs!1205514 (not (= lambda!258695 lambda!258668))))

(declare-fun bs!1205515 () Bool)

(assert (= bs!1205515 (and d!1672512 d!1671636)))

(assert (=> bs!1205515 (not (= lambda!258695 lambda!258613))))

(declare-fun bs!1205516 () Bool)

(assert (= bs!1205516 (and d!1672512 d!1672032)))

(assert (=> bs!1205516 (not (= lambda!258695 lambda!258656))))

(declare-fun bs!1205517 () Bool)

(assert (= bs!1205517 (and d!1672512 d!1672218)))

(assert (=> bs!1205517 (not (= lambda!258695 lambda!258674))))

(declare-fun bs!1205518 () Bool)

(assert (= bs!1205518 (and d!1672512 b!5176996)))

(assert (=> bs!1205518 (not (= lambda!258695 lambda!258611))))

(declare-fun bs!1205519 () Bool)

(assert (= bs!1205519 (and d!1672512 d!1671546)))

(assert (=> bs!1205519 (not (= lambda!258695 lambda!258592))))

(declare-fun bs!1205520 () Bool)

(assert (= bs!1205520 (and d!1672512 b!5177856)))

(assert (=> bs!1205520 (not (= lambda!258695 lambda!258686))))

(declare-fun bs!1205521 () Bool)

(assert (= bs!1205521 (and d!1672512 d!1672118)))

(assert (=> bs!1205521 (= (= lambda!258610 (ite c!891702 lambda!258617 lambda!258618)) (= lambda!258695 lambda!258671))))

(declare-fun bs!1205522 () Bool)

(assert (= bs!1205522 (and d!1672512 d!1672040)))

(assert (=> bs!1205522 (not (= lambda!258695 lambda!258663))))

(declare-fun bs!1205523 () Bool)

(assert (= bs!1205523 (and d!1672512 b!5177534)))

(assert (=> bs!1205523 (not (= lambda!258695 lambda!258669))))

(declare-fun bs!1205524 () Bool)

(assert (= bs!1205524 (and d!1672512 b!5177535)))

(assert (=> bs!1205524 (not (= lambda!258695 lambda!258670))))

(declare-fun bs!1205525 () Bool)

(assert (= bs!1205525 (and d!1672512 b!5177055)))

(assert (=> bs!1205525 (not (= lambda!258695 lambda!258617))))

(declare-fun bs!1205526 () Bool)

(assert (= bs!1205526 (and d!1672512 d!1671684)))

(assert (=> bs!1205526 (not (= lambda!258695 lambda!258616))))

(assert (=> d!1672512 true))

(assert (=> d!1672512 (< (dynLambda!23883 order!27039 lambda!258610) (dynLambda!23883 order!27039 lambda!258695))))

(assert (=> d!1672512 (not (exists!1941 lt!2133274 lambda!258695))))

(declare-fun lt!2133870 () Unit!151998)

(declare-fun choose!38459 (List!60289 Int) Unit!151998)

(assert (=> d!1672512 (= lt!2133870 (choose!38459 lt!2133274 lambda!258610))))

(assert (=> d!1672512 (forall!14164 lt!2133274 lambda!258610)))

(assert (=> d!1672512 (= (lemmaForallThenNotExists!445 lt!2133274 lambda!258610) lt!2133870)))

(declare-fun bs!1205527 () Bool)

(assert (= bs!1205527 d!1672512))

(declare-fun m!6234918 () Bool)

(assert (=> bs!1205527 m!6234918))

(declare-fun m!6234920 () Bool)

(assert (=> bs!1205527 m!6234920))

(declare-fun m!6234922 () Bool)

(assert (=> bs!1205527 m!6234922))

(assert (=> b!5176997 d!1672512))

(declare-fun d!1672514 () Bool)

(declare-fun c!891991 () Bool)

(assert (=> d!1672514 (= c!891991 ((_ is Cons!60163) (t!373440 (t!373440 testedP!294))))))

(declare-fun e!3226299 () (InoxSet Context!8082))

(assert (=> d!1672514 (= (derivationZipper!280 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (h!66611 testedP!294)) (h!66611 (t!373440 testedP!294))) (t!373440 (t!373440 testedP!294))) e!3226299)))

(declare-fun b!5177959 () Bool)

(assert (=> b!5177959 (= e!3226299 (derivationZipper!280 (derivationStepZipper!1003 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (h!66611 testedP!294)) (h!66611 (t!373440 testedP!294))) (h!66611 (t!373440 (t!373440 testedP!294)))) (t!373440 (t!373440 (t!373440 testedP!294)))))))

(declare-fun b!5177960 () Bool)

(assert (=> b!5177960 (= e!3226299 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (h!66611 testedP!294)) (h!66611 (t!373440 testedP!294))))))

(assert (= (and d!1672514 c!891991) b!5177959))

(assert (= (and d!1672514 (not c!891991)) b!5177960))

(assert (=> b!5177959 m!6233360))

(declare-fun m!6234924 () Bool)

(assert (=> b!5177959 m!6234924))

(assert (=> b!5177959 m!6234924))

(declare-fun m!6234926 () Bool)

(assert (=> b!5177959 m!6234926))

(assert (=> b!5177255 d!1672514))

(declare-fun bs!1205528 () Bool)

(declare-fun d!1672516 () Bool)

(assert (= bs!1205528 (and d!1672516 d!1672126)))

(declare-fun lambda!258696 () Int)

(assert (=> bs!1205528 (= (= (h!66611 (t!373440 testedP!294)) call!363745) (= lambda!258696 lambda!258672))))

(declare-fun bs!1205529 () Bool)

(assert (= bs!1205529 (and d!1672516 d!1671532)))

(assert (=> bs!1205529 (= (= (h!66611 (t!373440 testedP!294)) lt!2132879) (= lambda!258696 lambda!258589))))

(declare-fun bs!1205530 () Bool)

(assert (= bs!1205530 (and d!1672516 d!1672454)))

(assert (=> bs!1205530 (= (= (h!66611 (t!373440 testedP!294)) call!363731) (= lambda!258696 lambda!258690))))

(declare-fun bs!1205531 () Bool)

(assert (= bs!1205531 (and d!1672516 d!1672426)))

(assert (=> bs!1205531 (= (= (h!66611 (t!373440 testedP!294)) (head!11075 (tail!10174 (_1!35235 lt!2132881)))) (= lambda!258696 lambda!258688))))

(declare-fun bs!1205532 () Bool)

(assert (= bs!1205532 (and d!1672516 d!1671870)))

(assert (=> bs!1205532 (= (= (h!66611 (t!373440 testedP!294)) (h!66611 lt!2132884)) (= lambda!258696 lambda!258629))))

(declare-fun bs!1205533 () Bool)

(assert (= bs!1205533 (and d!1672516 d!1671662)))

(assert (=> bs!1205533 (= (= (h!66611 (t!373440 testedP!294)) call!363667) (= lambda!258696 lambda!258614))))

(declare-fun bs!1205534 () Bool)

(assert (= bs!1205534 (and d!1672516 d!1672462)))

(assert (=> bs!1205534 (= (= (h!66611 (t!373440 testedP!294)) (h!66611 (t!373440 lt!2132884))) (= lambda!258696 lambda!258691))))

(declare-fun bs!1205535 () Bool)

(assert (= bs!1205535 (and d!1672516 d!1671786)))

(assert (=> bs!1205535 (= (= (h!66611 (t!373440 testedP!294)) call!363675) (= lambda!258696 lambda!258622))))

(declare-fun bs!1205536 () Bool)

(assert (= bs!1205536 (and d!1672516 d!1672446)))

(assert (=> bs!1205536 (= (= (h!66611 (t!373440 testedP!294)) (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))) (= lambda!258696 lambda!258689))))

(declare-fun bs!1205537 () Bool)

(assert (= bs!1205537 (and d!1672516 d!1672310)))

(assert (=> bs!1205537 (= (= (h!66611 (t!373440 testedP!294)) call!363779) (= lambda!258696 lambda!258680))))

(declare-fun bs!1205538 () Bool)

(assert (= bs!1205538 (and d!1672516 d!1672080)))

(assert (=> bs!1205538 (= (= (h!66611 (t!373440 testedP!294)) call!363771) (= lambda!258696 lambda!258667))))

(declare-fun bs!1205539 () Bool)

(assert (= bs!1205539 (and d!1672516 d!1671836)))

(assert (=> bs!1205539 (= (= (h!66611 (t!373440 testedP!294)) (head!11075 (_1!35235 lt!2132881))) (= lambda!258696 lambda!258625))))

(declare-fun bs!1205540 () Bool)

(assert (= bs!1205540 (and d!1672516 d!1671850)))

(assert (=> bs!1205540 (= (= (h!66611 (t!373440 testedP!294)) (head!11075 (_1!35235 lt!2132877))) (= lambda!258696 lambda!258626))))

(declare-fun bs!1205541 () Bool)

(assert (= bs!1205541 (and d!1672516 d!1671672)))

(assert (=> bs!1205541 (= (= (h!66611 (t!373440 testedP!294)) call!363707) (= lambda!258696 lambda!258615))))

(declare-fun bs!1205542 () Bool)

(assert (= bs!1205542 (and d!1672516 d!1671866)))

(assert (=> bs!1205542 (= (= (h!66611 (t!373440 testedP!294)) (h!66611 testedP!294)) (= lambda!258696 lambda!258628))))

(assert (=> d!1672516 true))

(assert (=> d!1672516 (= (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (h!66611 testedP!294)) (h!66611 (t!373440 testedP!294))) (flatMap!460 (derivationStepZipper!1003 baseZ!62 (h!66611 testedP!294)) lambda!258696))))

(declare-fun bs!1205543 () Bool)

(assert (= bs!1205543 d!1672516))

(assert (=> bs!1205543 m!6232410))

(declare-fun m!6234928 () Bool)

(assert (=> bs!1205543 m!6234928))

(assert (=> b!5177255 d!1672516))

(declare-fun d!1672518 () Bool)

(assert (=> d!1672518 (= input!5817 lt!2133055)))

(declare-fun lt!2133871 () Unit!151998)

(assert (=> d!1672518 (= lt!2133871 (choose!38438 input!5817 lt!2133055 input!5817))))

(assert (=> d!1672518 (isPrefix!5790 input!5817 input!5817)))

(assert (=> d!1672518 (= (lemmaIsPrefixSameLengthThenSameList!1435 input!5817 lt!2133055 input!5817) lt!2133871)))

(declare-fun bs!1205544 () Bool)

(assert (= bs!1205544 d!1672518))

(declare-fun m!6234930 () Bool)

(assert (=> bs!1205544 m!6234930))

(assert (=> bs!1205544 m!6232110))

(assert (=> bm!363725 d!1672518))

(declare-fun d!1672520 () Bool)

(declare-fun c!891992 () Bool)

(assert (=> d!1672520 (= c!891992 ((_ is Nil!60163) lt!2133332))))

(declare-fun e!3226300 () (InoxSet C!29584))

(assert (=> d!1672520 (= (content!10662 lt!2133332) e!3226300)))

(declare-fun b!5177961 () Bool)

(assert (=> b!5177961 (= e!3226300 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177962 () Bool)

(assert (=> b!5177962 (= e!3226300 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133332) true) (content!10662 (t!373440 lt!2133332))))))

(assert (= (and d!1672520 c!891992) b!5177961))

(assert (= (and d!1672520 (not c!891992)) b!5177962))

(declare-fun m!6234932 () Bool)

(assert (=> b!5177962 m!6234932))

(declare-fun m!6234934 () Bool)

(assert (=> b!5177962 m!6234934))

(assert (=> d!1671700 d!1672520))

(assert (=> d!1671700 d!1671642))

(declare-fun d!1672522 () Bool)

(declare-fun c!891993 () Bool)

(assert (=> d!1672522 (= c!891993 ((_ is Nil!60163) lt!2132885))))

(declare-fun e!3226301 () (InoxSet C!29584))

(assert (=> d!1672522 (= (content!10662 lt!2132885) e!3226301)))

(declare-fun b!5177963 () Bool)

(assert (=> b!5177963 (= e!3226301 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177964 () Bool)

(assert (=> b!5177964 (= e!3226301 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2132885) true) (content!10662 (t!373440 lt!2132885))))))

(assert (= (and d!1672522 c!891993) b!5177963))

(assert (= (and d!1672522 (not c!891993)) b!5177964))

(declare-fun m!6234936 () Bool)

(assert (=> b!5177964 m!6234936))

(declare-fun m!6234938 () Bool)

(assert (=> b!5177964 m!6234938))

(assert (=> d!1671700 d!1672522))

(assert (=> bm!363740 d!1671598))

(assert (=> d!1671692 d!1671694))

(assert (=> d!1671692 d!1671700))

(declare-fun d!1672524 () Bool)

(assert (=> d!1672524 (isPrefix!5790 testedP!294 (++!13173 testedP!294 lt!2132885))))

(assert (=> d!1672524 true))

(declare-fun _$46!1996 () Unit!151998)

(assert (=> d!1672524 (= (choose!38444 testedP!294 lt!2132885) _$46!1996)))

(declare-fun bs!1205545 () Bool)

(assert (= bs!1205545 d!1672524))

(assert (=> bs!1205545 m!6232240))

(assert (=> bs!1205545 m!6232240))

(assert (=> bs!1205545 m!6232242))

(assert (=> d!1671692 d!1672524))

(assert (=> b!5177054 d!1672242))

(declare-fun d!1672526 () Bool)

(declare-fun lt!2133872 () Int)

(assert (=> d!1672526 (>= lt!2133872 0)))

(declare-fun e!3226302 () Int)

(assert (=> d!1672526 (= lt!2133872 e!3226302)))

(declare-fun c!891994 () Bool)

(assert (=> d!1672526 (= c!891994 ((_ is Nil!60163) (tail!10174 testedP!294)))))

(assert (=> d!1672526 (= (size!39693 (tail!10174 testedP!294)) lt!2133872)))

(declare-fun b!5177965 () Bool)

(assert (=> b!5177965 (= e!3226302 0)))

(declare-fun b!5177966 () Bool)

(assert (=> b!5177966 (= e!3226302 (+ 1 (size!39693 (t!373440 (tail!10174 testedP!294)))))))

(assert (= (and d!1672526 c!891994) b!5177965))

(assert (= (and d!1672526 (not c!891994)) b!5177966))

(declare-fun m!6234940 () Bool)

(assert (=> b!5177966 m!6234940))

(assert (=> b!5177054 d!1672526))

(declare-fun bs!1205546 () Bool)

(declare-fun d!1672528 () Bool)

(assert (= bs!1205546 (and d!1672528 b!5176997)))

(declare-fun lambda!258697 () Int)

(assert (=> bs!1205546 (not (= lambda!258697 lambda!258612))))

(declare-fun bs!1205547 () Bool)

(assert (= bs!1205547 (and d!1672528 d!1672052)))

(assert (=> bs!1205547 (= (= lambda!258592 (ite c!891678 lambda!258611 lambda!258612)) (= lambda!258697 lambda!258666))))

(declare-fun bs!1205548 () Bool)

(assert (= bs!1205548 (and d!1672528 d!1671804)))

(assert (=> bs!1205548 (not (= lambda!258697 lambda!258624))))

(declare-fun bs!1205549 () Bool)

(assert (= bs!1205549 (and d!1672528 d!1672364)))

(assert (=> bs!1205549 (= (= lambda!258592 lambda!258616) (= lambda!258697 lambda!258684))))

(declare-fun bs!1205550 () Bool)

(assert (= bs!1205550 (and d!1672528 b!5177857)))

(assert (=> bs!1205550 (not (= lambda!258697 lambda!258687))))

(declare-fun bs!1205551 () Bool)

(assert (= bs!1205551 (and d!1672528 d!1671612)))

(assert (=> bs!1205551 (not (= lambda!258697 lambda!258610))))

(declare-fun bs!1205552 () Bool)

(assert (= bs!1205552 (and d!1672528 b!5177723)))

(assert (=> bs!1205552 (not (= lambda!258697 lambda!258678))))

(declare-fun bs!1205553 () Bool)

(assert (= bs!1205553 (and d!1672528 d!1672232)))

(assert (=> bs!1205553 (not (= lambda!258697 lambda!258675))))

(declare-fun bs!1205554 () Bool)

(assert (= bs!1205554 (and d!1672528 b!5177056)))

(assert (=> bs!1205554 (not (= lambda!258697 lambda!258618))))

(declare-fun bs!1205555 () Bool)

(assert (= bs!1205555 (and d!1672528 d!1672390)))

(assert (=> bs!1205555 (not (= lambda!258697 lambda!258685))))

(declare-fun bs!1205556 () Bool)

(assert (= bs!1205556 (and d!1672528 d!1672352)))

(assert (=> bs!1205556 (not (= lambda!258697 lambda!258681))))

(declare-fun bs!1205557 () Bool)

(assert (= bs!1205557 (and d!1672528 d!1672204)))

(assert (=> bs!1205557 (not (= lambda!258697 lambda!258673))))

(declare-fun bs!1205558 () Bool)

(assert (= bs!1205558 (and d!1672528 b!5177724)))

(assert (=> bs!1205558 (not (= lambda!258697 lambda!258679))))

(declare-fun bs!1205559 () Bool)

(assert (= bs!1205559 (and d!1672528 d!1672104)))

(assert (=> bs!1205559 (not (= lambda!258697 lambda!258668))))

(declare-fun bs!1205560 () Bool)

(assert (= bs!1205560 (and d!1672528 d!1671636)))

(assert (=> bs!1205560 (not (= lambda!258697 lambda!258613))))

(declare-fun bs!1205561 () Bool)

(assert (= bs!1205561 (and d!1672528 d!1672032)))

(assert (=> bs!1205561 (not (= lambda!258697 lambda!258656))))

(declare-fun bs!1205562 () Bool)

(assert (= bs!1205562 (and d!1672528 d!1672218)))

(assert (=> bs!1205562 (not (= lambda!258697 lambda!258674))))

(declare-fun bs!1205563 () Bool)

(assert (= bs!1205563 (and d!1672528 b!5176996)))

(assert (=> bs!1205563 (not (= lambda!258697 lambda!258611))))

(declare-fun bs!1205564 () Bool)

(assert (= bs!1205564 (and d!1672528 d!1671546)))

(assert (=> bs!1205564 (not (= lambda!258697 lambda!258592))))

(declare-fun bs!1205565 () Bool)

(assert (= bs!1205565 (and d!1672528 b!5177856)))

(assert (=> bs!1205565 (not (= lambda!258697 lambda!258686))))

(declare-fun bs!1205566 () Bool)

(assert (= bs!1205566 (and d!1672528 d!1672512)))

(assert (=> bs!1205566 (= (= lambda!258592 lambda!258610) (= lambda!258697 lambda!258695))))

(declare-fun bs!1205567 () Bool)

(assert (= bs!1205567 (and d!1672528 d!1672276)))

(assert (=> bs!1205567 (not (= lambda!258697 lambda!258677))))

(declare-fun bs!1205568 () Bool)

(assert (= bs!1205568 (and d!1672528 d!1672118)))

(assert (=> bs!1205568 (= (= lambda!258592 (ite c!891702 lambda!258617 lambda!258618)) (= lambda!258697 lambda!258671))))

(declare-fun bs!1205569 () Bool)

(assert (= bs!1205569 (and d!1672528 d!1672040)))

(assert (=> bs!1205569 (not (= lambda!258697 lambda!258663))))

(declare-fun bs!1205570 () Bool)

(assert (= bs!1205570 (and d!1672528 b!5177534)))

(assert (=> bs!1205570 (not (= lambda!258697 lambda!258669))))

(declare-fun bs!1205571 () Bool)

(assert (= bs!1205571 (and d!1672528 b!5177535)))

(assert (=> bs!1205571 (not (= lambda!258697 lambda!258670))))

(declare-fun bs!1205572 () Bool)

(assert (= bs!1205572 (and d!1672528 b!5177055)))

(assert (=> bs!1205572 (not (= lambda!258697 lambda!258617))))

(declare-fun bs!1205573 () Bool)

(assert (= bs!1205573 (and d!1672528 d!1671684)))

(assert (=> bs!1205573 (not (= lambda!258697 lambda!258616))))

(assert (=> d!1672528 true))

(assert (=> d!1672528 (< (dynLambda!23883 order!27039 lambda!258592) (dynLambda!23883 order!27039 lambda!258697))))

(assert (=> d!1672528 (= (exists!1941 (toList!8458 z!4581) lambda!258592) (not (forall!14164 (toList!8458 z!4581) lambda!258697)))))

(declare-fun bs!1205574 () Bool)

(assert (= bs!1205574 d!1672528))

(assert (=> bs!1205574 m!6232684))

(declare-fun m!6234942 () Bool)

(assert (=> bs!1205574 m!6234942))

(assert (=> d!1671630 d!1672528))

(assert (=> d!1671630 d!1672510))

(declare-fun d!1672530 () Bool)

(declare-fun res!2200210 () Bool)

(assert (=> d!1672530 (= res!2200210 (exists!1941 (toList!8458 z!4581) lambda!258592))))

(assert (=> d!1672530 true))

(assert (=> d!1672530 (= (choose!38446 z!4581 lambda!258592) res!2200210)))

(declare-fun bs!1205575 () Bool)

(assert (= bs!1205575 d!1672530))

(assert (=> bs!1205575 m!6232684))

(assert (=> bs!1205575 m!6232684))

(assert (=> bs!1205575 m!6232686))

(assert (=> d!1671630 d!1672530))

(declare-fun d!1672532 () Bool)

(declare-fun lt!2133873 () Int)

(assert (=> d!1672532 (>= lt!2133873 0)))

(declare-fun e!3226303 () Int)

(assert (=> d!1672532 (= lt!2133873 e!3226303)))

(declare-fun c!891995 () Bool)

(assert (=> d!1672532 (= c!891995 ((_ is Nil!60163) (_1!35235 lt!2133459)))))

(assert (=> d!1672532 (= (size!39693 (_1!35235 lt!2133459)) lt!2133873)))

(declare-fun b!5177967 () Bool)

(assert (=> b!5177967 (= e!3226303 0)))

(declare-fun b!5177968 () Bool)

(assert (=> b!5177968 (= e!3226303 (+ 1 (size!39693 (t!373440 (_1!35235 lt!2133459)))))))

(assert (= (and d!1672532 c!891995) b!5177967))

(assert (= (and d!1672532 (not c!891995)) b!5177968))

(declare-fun m!6234944 () Bool)

(assert (=> b!5177968 m!6234944))

(assert (=> b!5177202 d!1672532))

(assert (=> b!5177202 d!1672192))

(declare-fun d!1672534 () Bool)

(declare-fun c!891996 () Bool)

(assert (=> d!1672534 (= c!891996 (isEmpty!32211 (tail!10174 (tail!10174 (_1!35235 lt!2132877)))))))

(declare-fun e!3226304 () Bool)

(assert (=> d!1672534 (= (matchZipper!987 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877))) (head!11075 (tail!10174 (_1!35235 lt!2132877)))) (tail!10174 (tail!10174 (_1!35235 lt!2132877)))) e!3226304)))

(declare-fun b!5177969 () Bool)

(assert (=> b!5177969 (= e!3226304 (nullableZipper!1195 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877))) (head!11075 (tail!10174 (_1!35235 lt!2132877))))))))

(declare-fun b!5177970 () Bool)

(assert (=> b!5177970 (= e!3226304 (matchZipper!987 (derivationStepZipper!1003 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877))) (head!11075 (tail!10174 (_1!35235 lt!2132877)))) (head!11075 (tail!10174 (tail!10174 (_1!35235 lt!2132877))))) (tail!10174 (tail!10174 (tail!10174 (_1!35235 lt!2132877))))))))

(assert (= (and d!1672534 c!891996) b!5177969))

(assert (= (and d!1672534 (not c!891996)) b!5177970))

(assert (=> d!1672534 m!6233350))

(declare-fun m!6234946 () Bool)

(assert (=> d!1672534 m!6234946))

(assert (=> b!5177969 m!6233348))

(declare-fun m!6234948 () Bool)

(assert (=> b!5177969 m!6234948))

(assert (=> b!5177970 m!6233350))

(declare-fun m!6234950 () Bool)

(assert (=> b!5177970 m!6234950))

(assert (=> b!5177970 m!6233348))

(assert (=> b!5177970 m!6234950))

(declare-fun m!6234952 () Bool)

(assert (=> b!5177970 m!6234952))

(assert (=> b!5177970 m!6233350))

(declare-fun m!6234954 () Bool)

(assert (=> b!5177970 m!6234954))

(assert (=> b!5177970 m!6234952))

(assert (=> b!5177970 m!6234954))

(declare-fun m!6234956 () Bool)

(assert (=> b!5177970 m!6234956))

(assert (=> b!5177254 d!1672534))

(declare-fun bs!1205576 () Bool)

(declare-fun d!1672536 () Bool)

(assert (= bs!1205576 (and d!1672536 d!1672126)))

(declare-fun lambda!258698 () Int)

(assert (=> bs!1205576 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) call!363745) (= lambda!258698 lambda!258672))))

(declare-fun bs!1205577 () Bool)

(assert (= bs!1205577 (and d!1672536 d!1671532)))

(assert (=> bs!1205577 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) lt!2132879) (= lambda!258698 lambda!258589))))

(declare-fun bs!1205578 () Bool)

(assert (= bs!1205578 (and d!1672536 d!1672454)))

(assert (=> bs!1205578 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) call!363731) (= lambda!258698 lambda!258690))))

(declare-fun bs!1205579 () Bool)

(assert (= bs!1205579 (and d!1672536 d!1672516)))

(assert (=> bs!1205579 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) (h!66611 (t!373440 testedP!294))) (= lambda!258698 lambda!258696))))

(declare-fun bs!1205580 () Bool)

(assert (= bs!1205580 (and d!1672536 d!1672426)))

(assert (=> bs!1205580 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) (head!11075 (tail!10174 (_1!35235 lt!2132881)))) (= lambda!258698 lambda!258688))))

(declare-fun bs!1205581 () Bool)

(assert (= bs!1205581 (and d!1672536 d!1671870)))

(assert (=> bs!1205581 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) (h!66611 lt!2132884)) (= lambda!258698 lambda!258629))))

(declare-fun bs!1205582 () Bool)

(assert (= bs!1205582 (and d!1672536 d!1671662)))

(assert (=> bs!1205582 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) call!363667) (= lambda!258698 lambda!258614))))

(declare-fun bs!1205583 () Bool)

(assert (= bs!1205583 (and d!1672536 d!1672462)))

(assert (=> bs!1205583 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) (h!66611 (t!373440 lt!2132884))) (= lambda!258698 lambda!258691))))

(declare-fun bs!1205584 () Bool)

(assert (= bs!1205584 (and d!1672536 d!1671786)))

(assert (=> bs!1205584 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) call!363675) (= lambda!258698 lambda!258622))))

(declare-fun bs!1205585 () Bool)

(assert (= bs!1205585 (and d!1672536 d!1672446)))

(assert (=> bs!1205585 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))) (= lambda!258698 lambda!258689))))

(declare-fun bs!1205586 () Bool)

(assert (= bs!1205586 (and d!1672536 d!1672310)))

(assert (=> bs!1205586 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) call!363779) (= lambda!258698 lambda!258680))))

(declare-fun bs!1205587 () Bool)

(assert (= bs!1205587 (and d!1672536 d!1672080)))

(assert (=> bs!1205587 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) call!363771) (= lambda!258698 lambda!258667))))

(declare-fun bs!1205588 () Bool)

(assert (= bs!1205588 (and d!1672536 d!1671836)))

(assert (=> bs!1205588 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) (head!11075 (_1!35235 lt!2132881))) (= lambda!258698 lambda!258625))))

(declare-fun bs!1205589 () Bool)

(assert (= bs!1205589 (and d!1672536 d!1671850)))

(assert (=> bs!1205589 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) (head!11075 (_1!35235 lt!2132877))) (= lambda!258698 lambda!258626))))

(declare-fun bs!1205590 () Bool)

(assert (= bs!1205590 (and d!1672536 d!1671672)))

(assert (=> bs!1205590 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) call!363707) (= lambda!258698 lambda!258615))))

(declare-fun bs!1205591 () Bool)

(assert (= bs!1205591 (and d!1672536 d!1671866)))

(assert (=> bs!1205591 (= (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) (h!66611 testedP!294)) (= lambda!258698 lambda!258628))))

(assert (=> d!1672536 true))

(assert (=> d!1672536 (= (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877))) (head!11075 (tail!10174 (_1!35235 lt!2132877)))) (flatMap!460 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877))) lambda!258698))))

(declare-fun bs!1205592 () Bool)

(assert (= bs!1205592 d!1672536))

(assert (=> bs!1205592 m!6232308))

(declare-fun m!6234958 () Bool)

(assert (=> bs!1205592 m!6234958))

(assert (=> b!5177254 d!1672536))

(declare-fun d!1672538 () Bool)

(assert (=> d!1672538 (= (head!11075 (tail!10174 (_1!35235 lt!2132877))) (h!66611 (tail!10174 (_1!35235 lt!2132877))))))

(assert (=> b!5177254 d!1672538))

(declare-fun d!1672540 () Bool)

(assert (=> d!1672540 (= (tail!10174 (tail!10174 (_1!35235 lt!2132877))) (t!373440 (tail!10174 (_1!35235 lt!2132877))))))

(assert (=> b!5177254 d!1672540))

(assert (=> d!1671650 d!1671722))

(assert (=> d!1671650 d!1671728))

(declare-fun d!1672542 () Bool)

(assert (=> d!1672542 (= (getSuffix!3438 input!5817 lt!2132884) lt!2133316)))

(declare-fun lt!2133874 () Unit!151998)

(assert (=> d!1672542 (= lt!2133874 (choose!38445 lt!2132884 (getSuffix!3438 input!5817 lt!2132884) lt!2132884 lt!2133316 input!5817))))

(assert (=> d!1672542 (isPrefix!5790 lt!2132884 input!5817)))

(assert (=> d!1672542 (= (lemmaSamePrefixThenSameSuffix!2710 lt!2132884 (getSuffix!3438 input!5817 lt!2132884) lt!2132884 lt!2133316 input!5817) lt!2133874)))

(declare-fun bs!1205593 () Bool)

(assert (= bs!1205593 d!1672542))

(assert (=> bs!1205593 m!6232090))

(declare-fun m!6234960 () Bool)

(assert (=> bs!1205593 m!6234960))

(assert (=> bs!1205593 m!6232078))

(assert (=> d!1671650 d!1672542))

(assert (=> d!1671650 d!1671474))

(assert (=> d!1671650 d!1671732))

(assert (=> d!1671650 d!1671612))

(declare-fun b!5177973 () Bool)

(declare-fun res!2200212 () Bool)

(declare-fun e!3226306 () Bool)

(assert (=> b!5177973 (=> (not res!2200212) (not e!3226306))))

(declare-fun lt!2133875 () List!60287)

(assert (=> b!5177973 (= res!2200212 (= (size!39693 lt!2133875) (+ (size!39693 (_1!35235 lt!2133312)) (size!39693 (_2!35235 lt!2133312)))))))

(declare-fun b!5177972 () Bool)

(declare-fun e!3226305 () List!60287)

(assert (=> b!5177972 (= e!3226305 (Cons!60163 (h!66611 (_1!35235 lt!2133312)) (++!13173 (t!373440 (_1!35235 lt!2133312)) (_2!35235 lt!2133312))))))

(declare-fun b!5177971 () Bool)

(assert (=> b!5177971 (= e!3226305 (_2!35235 lt!2133312))))

(declare-fun b!5177974 () Bool)

(assert (=> b!5177974 (= e!3226306 (or (not (= (_2!35235 lt!2133312) Nil!60163)) (= lt!2133875 (_1!35235 lt!2133312))))))

(declare-fun d!1672544 () Bool)

(assert (=> d!1672544 e!3226306))

(declare-fun res!2200211 () Bool)

(assert (=> d!1672544 (=> (not res!2200211) (not e!3226306))))

(assert (=> d!1672544 (= res!2200211 (= (content!10662 lt!2133875) ((_ map or) (content!10662 (_1!35235 lt!2133312)) (content!10662 (_2!35235 lt!2133312)))))))

(assert (=> d!1672544 (= lt!2133875 e!3226305)))

(declare-fun c!891997 () Bool)

(assert (=> d!1672544 (= c!891997 ((_ is Nil!60163) (_1!35235 lt!2133312)))))

(assert (=> d!1672544 (= (++!13173 (_1!35235 lt!2133312) (_2!35235 lt!2133312)) lt!2133875)))

(assert (= (and d!1672544 c!891997) b!5177971))

(assert (= (and d!1672544 (not c!891997)) b!5177972))

(assert (= (and d!1672544 res!2200211) b!5177973))

(assert (= (and b!5177973 res!2200212) b!5177974))

(declare-fun m!6234962 () Bool)

(assert (=> b!5177973 m!6234962))

(assert (=> b!5177973 m!6232714))

(declare-fun m!6234964 () Bool)

(assert (=> b!5177973 m!6234964))

(declare-fun m!6234966 () Bool)

(assert (=> b!5177972 m!6234966))

(declare-fun m!6234968 () Bool)

(assert (=> d!1672544 m!6234968))

(declare-fun m!6234970 () Bool)

(assert (=> d!1672544 m!6234970))

(declare-fun m!6234972 () Bool)

(assert (=> d!1672544 m!6234972))

(assert (=> d!1671650 d!1672544))

(assert (=> bm!363727 d!1671514))

(declare-fun d!1672546 () Bool)

(declare-fun lt!2133876 () List!60287)

(assert (=> d!1672546 (= (++!13173 (t!373440 (t!373440 testedP!294)) lt!2133876) (tail!10174 (tail!10174 input!5817)))))

(declare-fun e!3226307 () List!60287)

(assert (=> d!1672546 (= lt!2133876 e!3226307)))

(declare-fun c!891998 () Bool)

(assert (=> d!1672546 (= c!891998 ((_ is Cons!60163) (t!373440 (t!373440 testedP!294))))))

(assert (=> d!1672546 (>= (size!39693 (tail!10174 (tail!10174 input!5817))) (size!39693 (t!373440 (t!373440 testedP!294))))))

(assert (=> d!1672546 (= (getSuffix!3438 (tail!10174 (tail!10174 input!5817)) (t!373440 (t!373440 testedP!294))) lt!2133876)))

(declare-fun b!5177975 () Bool)

(assert (=> b!5177975 (= e!3226307 (getSuffix!3438 (tail!10174 (tail!10174 (tail!10174 input!5817))) (t!373440 (t!373440 (t!373440 testedP!294)))))))

(declare-fun b!5177976 () Bool)

(assert (=> b!5177976 (= e!3226307 (tail!10174 (tail!10174 input!5817)))))

(assert (= (and d!1672546 c!891998) b!5177975))

(assert (= (and d!1672546 (not c!891998)) b!5177976))

(declare-fun m!6234974 () Bool)

(assert (=> d!1672546 m!6234974))

(assert (=> d!1672546 m!6232680))

(assert (=> d!1672546 m!6234120))

(assert (=> d!1672546 m!6233024))

(assert (=> b!5177975 m!6232680))

(assert (=> b!5177975 m!6234122))

(assert (=> b!5177975 m!6234122))

(declare-fun m!6234976 () Bool)

(assert (=> b!5177975 m!6234976))

(assert (=> b!5177002 d!1672546))

(assert (=> b!5177002 d!1672160))

(declare-fun b!5177979 () Bool)

(declare-fun res!2200214 () Bool)

(declare-fun e!3226309 () Bool)

(assert (=> b!5177979 (=> (not res!2200214) (not e!3226309))))

(declare-fun lt!2133877 () List!60287)

(assert (=> b!5177979 (= res!2200214 (= (size!39693 lt!2133877) (+ (size!39693 (t!373440 testedP!294)) (size!39693 lt!2132885))))))

(declare-fun b!5177978 () Bool)

(declare-fun e!3226308 () List!60287)

(assert (=> b!5177978 (= e!3226308 (Cons!60163 (h!66611 (t!373440 testedP!294)) (++!13173 (t!373440 (t!373440 testedP!294)) lt!2132885)))))

(declare-fun b!5177977 () Bool)

(assert (=> b!5177977 (= e!3226308 lt!2132885)))

(declare-fun b!5177980 () Bool)

(assert (=> b!5177980 (= e!3226309 (or (not (= lt!2132885 Nil!60163)) (= lt!2133877 (t!373440 testedP!294))))))

(declare-fun d!1672548 () Bool)

(assert (=> d!1672548 e!3226309))

(declare-fun res!2200213 () Bool)

(assert (=> d!1672548 (=> (not res!2200213) (not e!3226309))))

(assert (=> d!1672548 (= res!2200213 (= (content!10662 lt!2133877) ((_ map or) (content!10662 (t!373440 testedP!294)) (content!10662 lt!2132885))))))

(assert (=> d!1672548 (= lt!2133877 e!3226308)))

(declare-fun c!891999 () Bool)

(assert (=> d!1672548 (= c!891999 ((_ is Nil!60163) (t!373440 testedP!294)))))

(assert (=> d!1672548 (= (++!13173 (t!373440 testedP!294) lt!2132885) lt!2133877)))

(assert (= (and d!1672548 c!891999) b!5177977))

(assert (= (and d!1672548 (not c!891999)) b!5177978))

(assert (= (and d!1672548 res!2200213) b!5177979))

(assert (= (and b!5177979 res!2200214) b!5177980))

(declare-fun m!6234978 () Bool)

(assert (=> b!5177979 m!6234978))

(assert (=> b!5177979 m!6232254))

(assert (=> b!5177979 m!6232814))

(declare-fun m!6234980 () Bool)

(assert (=> b!5177978 m!6234980))

(declare-fun m!6234982 () Bool)

(assert (=> d!1672548 m!6234982))

(assert (=> d!1672548 m!6232704))

(assert (=> d!1672548 m!6232820))

(assert (=> b!5177070 d!1672548))

(declare-fun b!5177983 () Bool)

(declare-fun res!2200216 () Bool)

(declare-fun e!3226311 () Bool)

(assert (=> b!5177983 (=> (not res!2200216) (not e!3226311))))

(declare-fun lt!2133878 () List!60287)

(assert (=> b!5177983 (= res!2200216 (= (size!39693 lt!2133878) (+ (size!39693 (t!373440 lt!2132884)) (size!39693 lt!2132902))))))

(declare-fun b!5177982 () Bool)

(declare-fun e!3226310 () List!60287)

(assert (=> b!5177982 (= e!3226310 (Cons!60163 (h!66611 (t!373440 lt!2132884)) (++!13173 (t!373440 (t!373440 lt!2132884)) lt!2132902)))))

(declare-fun b!5177981 () Bool)

(assert (=> b!5177981 (= e!3226310 lt!2132902)))

(declare-fun b!5177984 () Bool)

(assert (=> b!5177984 (= e!3226311 (or (not (= lt!2132902 Nil!60163)) (= lt!2133878 (t!373440 lt!2132884))))))

(declare-fun d!1672550 () Bool)

(assert (=> d!1672550 e!3226311))

(declare-fun res!2200215 () Bool)

(assert (=> d!1672550 (=> (not res!2200215) (not e!3226311))))

(assert (=> d!1672550 (= res!2200215 (= (content!10662 lt!2133878) ((_ map or) (content!10662 (t!373440 lt!2132884)) (content!10662 lt!2132902))))))

(assert (=> d!1672550 (= lt!2133878 e!3226310)))

(declare-fun c!892000 () Bool)

(assert (=> d!1672550 (= c!892000 ((_ is Nil!60163) (t!373440 lt!2132884)))))

(assert (=> d!1672550 (= (++!13173 (t!373440 lt!2132884) lt!2132902) lt!2133878)))

(assert (= (and d!1672550 c!892000) b!5177981))

(assert (= (and d!1672550 (not c!892000)) b!5177982))

(assert (= (and d!1672550 res!2200215) b!5177983))

(assert (= (and b!5177983 res!2200216) b!5177984))

(declare-fun m!6234984 () Bool)

(assert (=> b!5177983 m!6234984))

(assert (=> b!5177983 m!6232126))

(assert (=> b!5177983 m!6233112))

(declare-fun m!6234986 () Bool)

(assert (=> b!5177982 m!6234986))

(declare-fun m!6234988 () Bool)

(assert (=> d!1672550 m!6234988))

(assert (=> d!1672550 m!6233904))

(assert (=> d!1672550 m!6233118))

(assert (=> b!5177176 d!1672550))

(declare-fun d!1672552 () Bool)

(assert (=> d!1672552 (= (isEmpty!32211 (tail!10174 (_1!35235 lt!2132881))) ((_ is Nil!60163) (tail!10174 (_1!35235 lt!2132881))))))

(assert (=> d!1671832 d!1672552))

(declare-fun d!1672554 () Bool)

(declare-fun e!3226312 () Bool)

(assert (=> d!1672554 e!3226312))

(declare-fun res!2200218 () Bool)

(assert (=> d!1672554 (=> res!2200218 e!3226312)))

(declare-fun lt!2133879 () Bool)

(assert (=> d!1672554 (= res!2200218 (not lt!2133879))))

(declare-fun e!3226313 () Bool)

(assert (=> d!1672554 (= lt!2133879 e!3226313)))

(declare-fun res!2200220 () Bool)

(assert (=> d!1672554 (=> res!2200220 e!3226313)))

(assert (=> d!1672554 (= res!2200220 ((_ is Nil!60163) (tail!10174 lt!2132884)))))

(assert (=> d!1672554 (= (isPrefix!5790 (tail!10174 lt!2132884) (tail!10174 (++!13173 lt!2132884 (tail!10174 lt!2132885)))) lt!2133879)))

(declare-fun b!5177985 () Bool)

(declare-fun e!3226314 () Bool)

(assert (=> b!5177985 (= e!3226313 e!3226314)))

(declare-fun res!2200217 () Bool)

(assert (=> b!5177985 (=> (not res!2200217) (not e!3226314))))

(assert (=> b!5177985 (= res!2200217 (not ((_ is Nil!60163) (tail!10174 (++!13173 lt!2132884 (tail!10174 lt!2132885))))))))

(declare-fun b!5177986 () Bool)

(declare-fun res!2200219 () Bool)

(assert (=> b!5177986 (=> (not res!2200219) (not e!3226314))))

(assert (=> b!5177986 (= res!2200219 (= (head!11075 (tail!10174 lt!2132884)) (head!11075 (tail!10174 (++!13173 lt!2132884 (tail!10174 lt!2132885))))))))

(declare-fun b!5177987 () Bool)

(assert (=> b!5177987 (= e!3226314 (isPrefix!5790 (tail!10174 (tail!10174 lt!2132884)) (tail!10174 (tail!10174 (++!13173 lt!2132884 (tail!10174 lt!2132885))))))))

(declare-fun b!5177988 () Bool)

(assert (=> b!5177988 (= e!3226312 (>= (size!39693 (tail!10174 (++!13173 lt!2132884 (tail!10174 lt!2132885)))) (size!39693 (tail!10174 lt!2132884))))))

(assert (= (and d!1672554 (not res!2200220)) b!5177985))

(assert (= (and b!5177985 res!2200217) b!5177986))

(assert (= (and b!5177986 res!2200219) b!5177987))

(assert (= (and d!1672554 (not res!2200218)) b!5177988))

(assert (=> b!5177986 m!6232406))

(assert (=> b!5177986 m!6233034))

(assert (=> b!5177986 m!6232630))

(declare-fun m!6234990 () Bool)

(assert (=> b!5177986 m!6234990))

(assert (=> b!5177987 m!6232406))

(assert (=> b!5177987 m!6233036))

(assert (=> b!5177987 m!6232630))

(declare-fun m!6234992 () Bool)

(assert (=> b!5177987 m!6234992))

(assert (=> b!5177987 m!6233036))

(assert (=> b!5177987 m!6234992))

(declare-fun m!6234994 () Bool)

(assert (=> b!5177987 m!6234994))

(assert (=> b!5177988 m!6232630))

(declare-fun m!6234996 () Bool)

(assert (=> b!5177988 m!6234996))

(assert (=> b!5177988 m!6232406))

(assert (=> b!5177988 m!6233042))

(assert (=> b!5176986 d!1672554))

(assert (=> b!5176986 d!1671766))

(declare-fun d!1672556 () Bool)

(assert (=> d!1672556 (= (tail!10174 (++!13173 lt!2132884 (tail!10174 lt!2132885))) (t!373440 (++!13173 lt!2132884 (tail!10174 lt!2132885))))))

(assert (=> b!5176986 d!1672556))

(assert (=> b!5177220 d!1672242))

(declare-fun d!1672558 () Bool)

(declare-fun c!892001 () Bool)

(assert (=> d!1672558 (= c!892001 ((_ is Nil!60163) (t!373440 (Cons!60163 lt!2132879 Nil!60163))))))

(declare-fun e!3226315 () (InoxSet C!29584))

(assert (=> d!1672558 (= (content!10662 (t!373440 (Cons!60163 lt!2132879 Nil!60163))) e!3226315)))

(declare-fun b!5177989 () Bool)

(assert (=> b!5177989 (= e!3226315 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5177990 () Bool)

(assert (=> b!5177990 (= e!3226315 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (t!373440 (Cons!60163 lt!2132879 Nil!60163))) true) (content!10662 (t!373440 (t!373440 (Cons!60163 lt!2132879 Nil!60163))))))))

(assert (= (and d!1672558 c!892001) b!5177989))

(assert (= (and d!1672558 (not c!892001)) b!5177990))

(declare-fun m!6234998 () Bool)

(assert (=> b!5177990 m!6234998))

(declare-fun m!6235000 () Bool)

(assert (=> b!5177990 m!6235000))

(assert (=> b!5177019 d!1672558))

(declare-fun bs!1205594 () Bool)

(declare-fun d!1672560 () Bool)

(assert (= bs!1205594 (and d!1672560 b!5176997)))

(declare-fun lambda!258699 () Int)

(assert (=> bs!1205594 (not (= lambda!258699 lambda!258612))))

(declare-fun bs!1205595 () Bool)

(assert (= bs!1205595 (and d!1672560 d!1672052)))

(assert (=> bs!1205595 (= (= lambda!258616 (ite c!891678 lambda!258611 lambda!258612)) (= lambda!258699 lambda!258666))))

(declare-fun bs!1205596 () Bool)

(assert (= bs!1205596 (and d!1672560 d!1671804)))

(assert (=> bs!1205596 (not (= lambda!258699 lambda!258624))))

(declare-fun bs!1205597 () Bool)

(assert (= bs!1205597 (and d!1672560 d!1672364)))

(assert (=> bs!1205597 (= lambda!258699 lambda!258684)))

(declare-fun bs!1205598 () Bool)

(assert (= bs!1205598 (and d!1672560 b!5177857)))

(assert (=> bs!1205598 (not (= lambda!258699 lambda!258687))))

(declare-fun bs!1205599 () Bool)

(assert (= bs!1205599 (and d!1672560 d!1671612)))

(assert (=> bs!1205599 (not (= lambda!258699 lambda!258610))))

(declare-fun bs!1205600 () Bool)

(assert (= bs!1205600 (and d!1672560 b!5177723)))

(assert (=> bs!1205600 (not (= lambda!258699 lambda!258678))))

(declare-fun bs!1205601 () Bool)

(assert (= bs!1205601 (and d!1672560 d!1672232)))

(assert (=> bs!1205601 (not (= lambda!258699 lambda!258675))))

(declare-fun bs!1205602 () Bool)

(assert (= bs!1205602 (and d!1672560 b!5177056)))

(assert (=> bs!1205602 (not (= lambda!258699 lambda!258618))))

(declare-fun bs!1205603 () Bool)

(assert (= bs!1205603 (and d!1672560 d!1672390)))

(assert (=> bs!1205603 (not (= lambda!258699 lambda!258685))))

(declare-fun bs!1205604 () Bool)

(assert (= bs!1205604 (and d!1672560 d!1672352)))

(assert (=> bs!1205604 (not (= lambda!258699 lambda!258681))))

(declare-fun bs!1205605 () Bool)

(assert (= bs!1205605 (and d!1672560 d!1672204)))

(assert (=> bs!1205605 (not (= lambda!258699 lambda!258673))))

(declare-fun bs!1205606 () Bool)

(assert (= bs!1205606 (and d!1672560 b!5177724)))

(assert (=> bs!1205606 (not (= lambda!258699 lambda!258679))))

(declare-fun bs!1205607 () Bool)

(assert (= bs!1205607 (and d!1672560 d!1672104)))

(assert (=> bs!1205607 (not (= lambda!258699 lambda!258668))))

(declare-fun bs!1205608 () Bool)

(assert (= bs!1205608 (and d!1672560 d!1671636)))

(assert (=> bs!1205608 (not (= lambda!258699 lambda!258613))))

(declare-fun bs!1205609 () Bool)

(assert (= bs!1205609 (and d!1672560 d!1672032)))

(assert (=> bs!1205609 (not (= lambda!258699 lambda!258656))))

(declare-fun bs!1205610 () Bool)

(assert (= bs!1205610 (and d!1672560 d!1672218)))

(assert (=> bs!1205610 (not (= lambda!258699 lambda!258674))))

(declare-fun bs!1205611 () Bool)

(assert (= bs!1205611 (and d!1672560 b!5176996)))

(assert (=> bs!1205611 (not (= lambda!258699 lambda!258611))))

(declare-fun bs!1205612 () Bool)

(assert (= bs!1205612 (and d!1672560 d!1671546)))

(assert (=> bs!1205612 (not (= lambda!258699 lambda!258592))))

(declare-fun bs!1205613 () Bool)

(assert (= bs!1205613 (and d!1672560 b!5177856)))

(assert (=> bs!1205613 (not (= lambda!258699 lambda!258686))))

(declare-fun bs!1205614 () Bool)

(assert (= bs!1205614 (and d!1672560 d!1672512)))

(assert (=> bs!1205614 (= (= lambda!258616 lambda!258610) (= lambda!258699 lambda!258695))))

(declare-fun bs!1205615 () Bool)

(assert (= bs!1205615 (and d!1672560 d!1672276)))

(assert (=> bs!1205615 (not (= lambda!258699 lambda!258677))))

(declare-fun bs!1205616 () Bool)

(assert (= bs!1205616 (and d!1672560 d!1672118)))

(assert (=> bs!1205616 (= (= lambda!258616 (ite c!891702 lambda!258617 lambda!258618)) (= lambda!258699 lambda!258671))))

(declare-fun bs!1205617 () Bool)

(assert (= bs!1205617 (and d!1672560 d!1672040)))

(assert (=> bs!1205617 (not (= lambda!258699 lambda!258663))))

(declare-fun bs!1205618 () Bool)

(assert (= bs!1205618 (and d!1672560 d!1672528)))

(assert (=> bs!1205618 (= (= lambda!258616 lambda!258592) (= lambda!258699 lambda!258697))))

(declare-fun bs!1205619 () Bool)

(assert (= bs!1205619 (and d!1672560 b!5177534)))

(assert (=> bs!1205619 (not (= lambda!258699 lambda!258669))))

(declare-fun bs!1205620 () Bool)

(assert (= bs!1205620 (and d!1672560 b!5177535)))

(assert (=> bs!1205620 (not (= lambda!258699 lambda!258670))))

(declare-fun bs!1205621 () Bool)

(assert (= bs!1205621 (and d!1672560 b!5177055)))

(assert (=> bs!1205621 (not (= lambda!258699 lambda!258617))))

(declare-fun bs!1205622 () Bool)

(assert (= bs!1205622 (and d!1672560 d!1671684)))

(assert (=> bs!1205622 (not (= lambda!258699 lambda!258616))))

(assert (=> d!1672560 true))

(assert (=> d!1672560 (< (dynLambda!23883 order!27039 lambda!258616) (dynLambda!23883 order!27039 lambda!258699))))

(assert (=> d!1672560 (not (exists!1941 lt!2133320 lambda!258699))))

(declare-fun lt!2133880 () Unit!151998)

(assert (=> d!1672560 (= lt!2133880 (choose!38459 lt!2133320 lambda!258616))))

(assert (=> d!1672560 (forall!14164 lt!2133320 lambda!258616)))

(assert (=> d!1672560 (= (lemmaForallThenNotExists!445 lt!2133320 lambda!258616) lt!2133880)))

(declare-fun bs!1205623 () Bool)

(assert (= bs!1205623 d!1672560))

(declare-fun m!6235002 () Bool)

(assert (=> bs!1205623 m!6235002))

(declare-fun m!6235004 () Bool)

(assert (=> bs!1205623 m!6235004))

(declare-fun m!6235006 () Bool)

(assert (=> bs!1205623 m!6235006))

(assert (=> b!5177056 d!1672560))

(assert (=> b!5177183 d!1671494))

(declare-fun d!1672562 () Bool)

(declare-fun e!3226316 () Bool)

(assert (=> d!1672562 e!3226316))

(declare-fun res!2200222 () Bool)

(assert (=> d!1672562 (=> res!2200222 e!3226316)))

(declare-fun lt!2133881 () Bool)

(assert (=> d!1672562 (= res!2200222 (not lt!2133881))))

(declare-fun e!3226317 () Bool)

(assert (=> d!1672562 (= lt!2133881 e!3226317)))

(declare-fun res!2200224 () Bool)

(assert (=> d!1672562 (=> res!2200224 e!3226317)))

(assert (=> d!1672562 (= res!2200224 ((_ is Nil!60163) (++!13173 lt!2132990 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163))))))

(assert (=> d!1672562 (= (isPrefix!5790 (++!13173 lt!2132990 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163)) input!5817) lt!2133881)))

(declare-fun b!5177991 () Bool)

(declare-fun e!3226318 () Bool)

(assert (=> b!5177991 (= e!3226317 e!3226318)))

(declare-fun res!2200221 () Bool)

(assert (=> b!5177991 (=> (not res!2200221) (not e!3226318))))

(assert (=> b!5177991 (= res!2200221 (not ((_ is Nil!60163) input!5817)))))

(declare-fun b!5177992 () Bool)

(declare-fun res!2200223 () Bool)

(assert (=> b!5177992 (=> (not res!2200223) (not e!3226318))))

(assert (=> b!5177992 (= res!2200223 (= (head!11075 (++!13173 lt!2132990 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163))) (head!11075 input!5817)))))

(declare-fun b!5177993 () Bool)

(assert (=> b!5177993 (= e!3226318 (isPrefix!5790 (tail!10174 (++!13173 lt!2132990 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163))) (tail!10174 input!5817)))))

(declare-fun b!5177994 () Bool)

(assert (=> b!5177994 (= e!3226316 (>= (size!39693 input!5817) (size!39693 (++!13173 lt!2132990 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163)))))))

(assert (= (and d!1672562 (not res!2200224)) b!5177991))

(assert (= (and b!5177991 res!2200221) b!5177992))

(assert (= (and b!5177992 res!2200223) b!5177993))

(assert (= (and d!1672562 (not res!2200222)) b!5177994))

(assert (=> b!5177992 m!6233162))

(declare-fun m!6235008 () Bool)

(assert (=> b!5177992 m!6235008))

(assert (=> b!5177992 m!6232316))

(assert (=> b!5177993 m!6233162))

(declare-fun m!6235010 () Bool)

(assert (=> b!5177993 m!6235010))

(assert (=> b!5177993 m!6232140))

(assert (=> b!5177993 m!6235010))

(assert (=> b!5177993 m!6232140))

(declare-fun m!6235012 () Bool)

(assert (=> b!5177993 m!6235012))

(assert (=> b!5177994 m!6232070))

(assert (=> b!5177994 m!6233162))

(declare-fun m!6235014 () Bool)

(assert (=> b!5177994 m!6235014))

(assert (=> b!5177183 d!1672562))

(assert (=> b!5177183 d!1672398))

(declare-fun d!1672564 () Bool)

(assert (=> d!1672564 (<= (size!39693 lt!2132990) (size!39693 input!5817))))

(declare-fun lt!2133882 () Unit!151998)

(assert (=> d!1672564 (= lt!2133882 (choose!38440 lt!2132990 input!5817))))

(assert (=> d!1672564 (isPrefix!5790 lt!2132990 input!5817)))

(assert (=> d!1672564 (= (lemmaIsPrefixThenSmallerEqSize!951 lt!2132990 input!5817) lt!2133882)))

(declare-fun bs!1205624 () Bool)

(assert (= bs!1205624 d!1672564))

(assert (=> bs!1205624 m!6233134))

(assert (=> bs!1205624 m!6232070))

(declare-fun m!6235016 () Bool)

(assert (=> bs!1205624 m!6235016))

(assert (=> bs!1205624 m!6234720))

(assert (=> b!5177183 d!1672564))

(declare-fun b!5177997 () Bool)

(declare-fun res!2200226 () Bool)

(declare-fun e!3226320 () Bool)

(assert (=> b!5177997 (=> (not res!2200226) (not e!3226320))))

(declare-fun lt!2133883 () List!60287)

(assert (=> b!5177997 (= res!2200226 (= (size!39693 lt!2133883) (+ (size!39693 lt!2132990) (size!39693 (Cons!60163 lt!2133425 Nil!60163)))))))

(declare-fun b!5177996 () Bool)

(declare-fun e!3226319 () List!60287)

(assert (=> b!5177996 (= e!3226319 (Cons!60163 (h!66611 lt!2132990) (++!13173 (t!373440 lt!2132990) (Cons!60163 lt!2133425 Nil!60163))))))

(declare-fun b!5177995 () Bool)

(assert (=> b!5177995 (= e!3226319 (Cons!60163 lt!2133425 Nil!60163))))

(declare-fun b!5177998 () Bool)

(assert (=> b!5177998 (= e!3226320 (or (not (= (Cons!60163 lt!2133425 Nil!60163) Nil!60163)) (= lt!2133883 lt!2132990)))))

(declare-fun d!1672566 () Bool)

(assert (=> d!1672566 e!3226320))

(declare-fun res!2200225 () Bool)

(assert (=> d!1672566 (=> (not res!2200225) (not e!3226320))))

(assert (=> d!1672566 (= res!2200225 (= (content!10662 lt!2133883) ((_ map or) (content!10662 lt!2132990) (content!10662 (Cons!60163 lt!2133425 Nil!60163)))))))

(assert (=> d!1672566 (= lt!2133883 e!3226319)))

(declare-fun c!892002 () Bool)

(assert (=> d!1672566 (= c!892002 ((_ is Nil!60163) lt!2132990))))

(assert (=> d!1672566 (= (++!13173 lt!2132990 (Cons!60163 lt!2133425 Nil!60163)) lt!2133883)))

(assert (= (and d!1672566 c!892002) b!5177995))

(assert (= (and d!1672566 (not c!892002)) b!5177996))

(assert (= (and d!1672566 res!2200225) b!5177997))

(assert (= (and b!5177997 res!2200226) b!5177998))

(declare-fun m!6235018 () Bool)

(assert (=> b!5177997 m!6235018))

(assert (=> b!5177997 m!6233134))

(declare-fun m!6235020 () Bool)

(assert (=> b!5177997 m!6235020))

(declare-fun m!6235022 () Bool)

(assert (=> b!5177996 m!6235022))

(declare-fun m!6235024 () Bool)

(assert (=> d!1672566 m!6235024))

(assert (=> d!1672566 m!6234674))

(declare-fun m!6235026 () Bool)

(assert (=> d!1672566 m!6235026))

(assert (=> b!5177183 d!1672566))

(declare-fun d!1672568 () Bool)

(assert (=> d!1672568 (= (head!11075 (getSuffix!3438 input!5817 lt!2132990)) (h!66611 (getSuffix!3438 input!5817 lt!2132990)))))

(assert (=> b!5177183 d!1672568))

(declare-fun b!5178001 () Bool)

(declare-fun res!2200228 () Bool)

(declare-fun e!3226322 () Bool)

(assert (=> b!5178001 (=> (not res!2200228) (not e!3226322))))

(declare-fun lt!2133884 () List!60287)

(assert (=> b!5178001 (= res!2200228 (= (size!39693 lt!2133884) (+ (size!39693 lt!2132990) (size!39693 (Cons!60163 (head!11075 call!363665) Nil!60163)))))))

(declare-fun b!5178000 () Bool)

(declare-fun e!3226321 () List!60287)

(assert (=> b!5178000 (= e!3226321 (Cons!60163 (h!66611 lt!2132990) (++!13173 (t!373440 lt!2132990) (Cons!60163 (head!11075 call!363665) Nil!60163))))))

(declare-fun b!5177999 () Bool)

(assert (=> b!5177999 (= e!3226321 (Cons!60163 (head!11075 call!363665) Nil!60163))))

(declare-fun b!5178002 () Bool)

(assert (=> b!5178002 (= e!3226322 (or (not (= (Cons!60163 (head!11075 call!363665) Nil!60163) Nil!60163)) (= lt!2133884 lt!2132990)))))

(declare-fun d!1672570 () Bool)

(assert (=> d!1672570 e!3226322))

(declare-fun res!2200227 () Bool)

(assert (=> d!1672570 (=> (not res!2200227) (not e!3226322))))

(assert (=> d!1672570 (= res!2200227 (= (content!10662 lt!2133884) ((_ map or) (content!10662 lt!2132990) (content!10662 (Cons!60163 (head!11075 call!363665) Nil!60163)))))))

(assert (=> d!1672570 (= lt!2133884 e!3226321)))

(declare-fun c!892003 () Bool)

(assert (=> d!1672570 (= c!892003 ((_ is Nil!60163) lt!2132990))))

(assert (=> d!1672570 (= (++!13173 lt!2132990 (Cons!60163 (head!11075 call!363665) Nil!60163)) lt!2133884)))

(assert (= (and d!1672570 c!892003) b!5177999))

(assert (= (and d!1672570 (not c!892003)) b!5178000))

(assert (= (and d!1672570 res!2200227) b!5178001))

(assert (= (and b!5178001 res!2200228) b!5178002))

(declare-fun m!6235028 () Bool)

(assert (=> b!5178001 m!6235028))

(assert (=> b!5178001 m!6233134))

(declare-fun m!6235030 () Bool)

(assert (=> b!5178001 m!6235030))

(declare-fun m!6235032 () Bool)

(assert (=> b!5178000 m!6235032))

(declare-fun m!6235034 () Bool)

(assert (=> d!1672570 m!6235034))

(assert (=> d!1672570 m!6234674))

(declare-fun m!6235036 () Bool)

(assert (=> d!1672570 m!6235036))

(assert (=> b!5177183 d!1672570))

(declare-fun b!5178005 () Bool)

(declare-fun res!2200230 () Bool)

(declare-fun e!3226324 () Bool)

(assert (=> b!5178005 (=> (not res!2200230) (not e!3226324))))

(declare-fun lt!2133885 () List!60287)

(assert (=> b!5178005 (= res!2200230 (= (size!39693 lt!2133885) (+ (size!39693 lt!2132990) (size!39693 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163)))))))

(declare-fun b!5178004 () Bool)

(declare-fun e!3226323 () List!60287)

(assert (=> b!5178004 (= e!3226323 (Cons!60163 (h!66611 lt!2132990) (++!13173 (t!373440 lt!2132990) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163))))))

(declare-fun b!5178003 () Bool)

(assert (=> b!5178003 (= e!3226323 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163))))

(declare-fun b!5178006 () Bool)

(assert (=> b!5178006 (= e!3226324 (or (not (= (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163) Nil!60163)) (= lt!2133885 lt!2132990)))))

(declare-fun d!1672572 () Bool)

(assert (=> d!1672572 e!3226324))

(declare-fun res!2200229 () Bool)

(assert (=> d!1672572 (=> (not res!2200229) (not e!3226324))))

(assert (=> d!1672572 (= res!2200229 (= (content!10662 lt!2133885) ((_ map or) (content!10662 lt!2132990) (content!10662 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163)))))))

(assert (=> d!1672572 (= lt!2133885 e!3226323)))

(declare-fun c!892004 () Bool)

(assert (=> d!1672572 (= c!892004 ((_ is Nil!60163) lt!2132990))))

(assert (=> d!1672572 (= (++!13173 lt!2132990 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163)) lt!2133885)))

(assert (= (and d!1672572 c!892004) b!5178003))

(assert (= (and d!1672572 (not c!892004)) b!5178004))

(assert (= (and d!1672572 res!2200229) b!5178005))

(assert (= (and b!5178005 res!2200230) b!5178006))

(declare-fun m!6235038 () Bool)

(assert (=> b!5178005 m!6235038))

(assert (=> b!5178005 m!6233134))

(declare-fun m!6235040 () Bool)

(assert (=> b!5178005 m!6235040))

(declare-fun m!6235042 () Bool)

(assert (=> b!5178004 m!6235042))

(declare-fun m!6235044 () Bool)

(assert (=> d!1672572 m!6235044))

(assert (=> d!1672572 m!6234674))

(declare-fun m!6235046 () Bool)

(assert (=> d!1672572 m!6235046))

(assert (=> b!5177183 d!1672572))

(assert (=> b!5177183 d!1672506))

(declare-fun d!1672574 () Bool)

(assert (=> d!1672574 (isPrefix!5790 (++!13173 lt!2132990 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 lt!2132990)) Nil!60163)) input!5817)))

(declare-fun lt!2133886 () Unit!151998)

(assert (=> d!1672574 (= lt!2133886 (choose!38441 lt!2132990 input!5817))))

(assert (=> d!1672574 (isPrefix!5790 lt!2132990 input!5817)))

(assert (=> d!1672574 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1095 lt!2132990 input!5817) lt!2133886)))

(declare-fun bs!1205625 () Bool)

(assert (= bs!1205625 d!1672574))

(declare-fun m!6235048 () Bool)

(assert (=> bs!1205625 m!6235048))

(assert (=> bs!1205625 m!6233154))

(assert (=> bs!1205625 m!6233156))

(assert (=> bs!1205625 m!6233162))

(assert (=> bs!1205625 m!6233162))

(assert (=> bs!1205625 m!6233164))

(assert (=> bs!1205625 m!6233154))

(assert (=> bs!1205625 m!6234720))

(assert (=> b!5177183 d!1672574))

(declare-fun b!5178009 () Bool)

(declare-fun res!2200232 () Bool)

(declare-fun e!3226326 () Bool)

(assert (=> b!5178009 (=> (not res!2200232) (not e!3226326))))

(declare-fun lt!2133887 () List!60287)

(assert (=> b!5178009 (= res!2200232 (= (size!39693 lt!2133887) (+ (size!39693 (++!13173 lt!2132990 (Cons!60163 lt!2133425 Nil!60163))) (size!39693 lt!2133428))))))

(declare-fun e!3226325 () List!60287)

(declare-fun b!5178008 () Bool)

(assert (=> b!5178008 (= e!3226325 (Cons!60163 (h!66611 (++!13173 lt!2132990 (Cons!60163 lt!2133425 Nil!60163))) (++!13173 (t!373440 (++!13173 lt!2132990 (Cons!60163 lt!2133425 Nil!60163))) lt!2133428)))))

(declare-fun b!5178007 () Bool)

(assert (=> b!5178007 (= e!3226325 lt!2133428)))

(declare-fun b!5178010 () Bool)

(assert (=> b!5178010 (= e!3226326 (or (not (= lt!2133428 Nil!60163)) (= lt!2133887 (++!13173 lt!2132990 (Cons!60163 lt!2133425 Nil!60163)))))))

(declare-fun d!1672576 () Bool)

(assert (=> d!1672576 e!3226326))

(declare-fun res!2200231 () Bool)

(assert (=> d!1672576 (=> (not res!2200231) (not e!3226326))))

(assert (=> d!1672576 (= res!2200231 (= (content!10662 lt!2133887) ((_ map or) (content!10662 (++!13173 lt!2132990 (Cons!60163 lt!2133425 Nil!60163))) (content!10662 lt!2133428))))))

(assert (=> d!1672576 (= lt!2133887 e!3226325)))

(declare-fun c!892005 () Bool)

(assert (=> d!1672576 (= c!892005 ((_ is Nil!60163) (++!13173 lt!2132990 (Cons!60163 lt!2133425 Nil!60163))))))

(assert (=> d!1672576 (= (++!13173 (++!13173 lt!2132990 (Cons!60163 lt!2133425 Nil!60163)) lt!2133428) lt!2133887)))

(assert (= (and d!1672576 c!892005) b!5178007))

(assert (= (and d!1672576 (not c!892005)) b!5178008))

(assert (= (and d!1672576 res!2200231) b!5178009))

(assert (= (and b!5178009 res!2200232) b!5178010))

(declare-fun m!6235050 () Bool)

(assert (=> b!5178009 m!6235050))

(assert (=> b!5178009 m!6233148))

(declare-fun m!6235052 () Bool)

(assert (=> b!5178009 m!6235052))

(declare-fun m!6235054 () Bool)

(assert (=> b!5178009 m!6235054))

(declare-fun m!6235056 () Bool)

(assert (=> b!5178008 m!6235056))

(declare-fun m!6235058 () Bool)

(assert (=> d!1672576 m!6235058))

(assert (=> d!1672576 m!6233148))

(declare-fun m!6235060 () Bool)

(assert (=> d!1672576 m!6235060))

(declare-fun m!6235062 () Bool)

(assert (=> d!1672576 m!6235062))

(assert (=> b!5177183 d!1672576))

(assert (=> b!5177183 d!1672362))

(declare-fun d!1672578 () Bool)

(assert (=> d!1672578 (= (++!13173 (++!13173 lt!2132990 (Cons!60163 lt!2133425 Nil!60163)) lt!2133428) input!5817)))

(declare-fun lt!2133888 () Unit!151998)

(assert (=> d!1672578 (= lt!2133888 (choose!38447 lt!2132990 lt!2133425 lt!2133428 input!5817))))

(assert (=> d!1672578 (= (++!13173 lt!2132990 (Cons!60163 lt!2133425 lt!2133428)) input!5817)))

(assert (=> d!1672578 (= (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2132990 lt!2133425 lt!2133428 input!5817) lt!2133888)))

(declare-fun bs!1205626 () Bool)

(assert (= bs!1205626 d!1672578))

(assert (=> bs!1205626 m!6233148))

(assert (=> bs!1205626 m!6233148))

(assert (=> bs!1205626 m!6233150))

(declare-fun m!6235064 () Bool)

(assert (=> bs!1205626 m!6235064))

(declare-fun m!6235066 () Bool)

(assert (=> bs!1205626 m!6235066))

(assert (=> b!5177183 d!1672578))

(assert (=> b!5177183 d!1672336))

(declare-fun d!1672580 () Bool)

(declare-fun e!3226327 () Bool)

(assert (=> d!1672580 e!3226327))

(declare-fun res!2200234 () Bool)

(assert (=> d!1672580 (=> res!2200234 e!3226327)))

(declare-fun lt!2133889 () Bool)

(assert (=> d!1672580 (= res!2200234 (not lt!2133889))))

(declare-fun e!3226328 () Bool)

(assert (=> d!1672580 (= lt!2133889 e!3226328)))

(declare-fun res!2200236 () Bool)

(assert (=> d!1672580 (=> res!2200236 e!3226328)))

(assert (=> d!1672580 (= res!2200236 ((_ is Nil!60163) (tail!10174 (tail!10174 testedP!294))))))

(assert (=> d!1672580 (= (isPrefix!5790 (tail!10174 (tail!10174 testedP!294)) (tail!10174 (tail!10174 input!5817))) lt!2133889)))

(declare-fun b!5178011 () Bool)

(declare-fun e!3226329 () Bool)

(assert (=> b!5178011 (= e!3226328 e!3226329)))

(declare-fun res!2200233 () Bool)

(assert (=> b!5178011 (=> (not res!2200233) (not e!3226329))))

(assert (=> b!5178011 (= res!2200233 (not ((_ is Nil!60163) (tail!10174 (tail!10174 input!5817)))))))

(declare-fun b!5178012 () Bool)

(declare-fun res!2200235 () Bool)

(assert (=> b!5178012 (=> (not res!2200235) (not e!3226329))))

(assert (=> b!5178012 (= res!2200235 (= (head!11075 (tail!10174 (tail!10174 testedP!294))) (head!11075 (tail!10174 (tail!10174 input!5817)))))))

(declare-fun b!5178013 () Bool)

(assert (=> b!5178013 (= e!3226329 (isPrefix!5790 (tail!10174 (tail!10174 (tail!10174 testedP!294))) (tail!10174 (tail!10174 (tail!10174 input!5817)))))))

(declare-fun b!5178014 () Bool)

(assert (=> b!5178014 (= e!3226327 (>= (size!39693 (tail!10174 (tail!10174 input!5817))) (size!39693 (tail!10174 (tail!10174 testedP!294)))))))

(assert (= (and d!1672580 (not res!2200236)) b!5178011))

(assert (= (and b!5178011 res!2200233) b!5178012))

(assert (= (and b!5178012 res!2200235) b!5178013))

(assert (= (and d!1672580 (not res!2200234)) b!5178014))

(assert (=> b!5178012 m!6232750))

(declare-fun m!6235068 () Bool)

(assert (=> b!5178012 m!6235068))

(assert (=> b!5178012 m!6232680))

(assert (=> b!5178012 m!6234496))

(assert (=> b!5178013 m!6232750))

(declare-fun m!6235070 () Bool)

(assert (=> b!5178013 m!6235070))

(assert (=> b!5178013 m!6232680))

(assert (=> b!5178013 m!6234122))

(assert (=> b!5178013 m!6235070))

(assert (=> b!5178013 m!6234122))

(declare-fun m!6235072 () Bool)

(assert (=> b!5178013 m!6235072))

(assert (=> b!5178014 m!6232680))

(assert (=> b!5178014 m!6234120))

(assert (=> b!5178014 m!6232750))

(declare-fun m!6235074 () Bool)

(assert (=> b!5178014 m!6235074))

(assert (=> b!5177053 d!1672580))

(declare-fun d!1672582 () Bool)

(assert (=> d!1672582 (= (tail!10174 (tail!10174 testedP!294)) (t!373440 (tail!10174 testedP!294)))))

(assert (=> b!5177053 d!1672582))

(assert (=> b!5177053 d!1672160))

(declare-fun d!1672584 () Bool)

(declare-fun lt!2133890 () Int)

(assert (=> d!1672584 (>= lt!2133890 0)))

(declare-fun e!3226330 () Int)

(assert (=> d!1672584 (= lt!2133890 e!3226330)))

(declare-fun c!892006 () Bool)

(assert (=> d!1672584 (= c!892006 ((_ is Nil!60163) lt!2133222))))

(assert (=> d!1672584 (= (size!39693 lt!2133222) lt!2133890)))

(declare-fun b!5178015 () Bool)

(assert (=> b!5178015 (= e!3226330 0)))

(declare-fun b!5178016 () Bool)

(assert (=> b!5178016 (= e!3226330 (+ 1 (size!39693 (t!373440 lt!2133222))))))

(assert (= (and d!1672584 c!892006) b!5178015))

(assert (= (and d!1672584 (not c!892006)) b!5178016))

(declare-fun m!6235076 () Bool)

(assert (=> b!5178016 m!6235076))

(assert (=> b!5176964 d!1672584))

(assert (=> b!5176964 d!1671500))

(declare-fun d!1672586 () Bool)

(declare-fun lt!2133891 () Int)

(assert (=> d!1672586 (>= lt!2133891 0)))

(declare-fun e!3226331 () Int)

(assert (=> d!1672586 (= lt!2133891 e!3226331)))

(declare-fun c!892007 () Bool)

(assert (=> d!1672586 (= c!892007 ((_ is Nil!60163) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))))

(assert (=> d!1672586 (= (size!39693 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)) lt!2133891)))

(declare-fun b!5178017 () Bool)

(assert (=> b!5178017 (= e!3226331 0)))

(declare-fun b!5178018 () Bool)

(assert (=> b!5178018 (= e!3226331 (+ 1 (size!39693 (t!373440 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))))))

(assert (= (and d!1672586 c!892007) b!5178017))

(assert (= (and d!1672586 (not c!892007)) b!5178018))

(declare-fun m!6235078 () Bool)

(assert (=> b!5178018 m!6235078))

(assert (=> b!5176964 d!1672586))

(declare-fun bs!1205627 () Bool)

(declare-fun d!1672588 () Bool)

(assert (= bs!1205627 (and d!1672588 b!5176997)))

(declare-fun lambda!258700 () Int)

(assert (=> bs!1205627 (not (= lambda!258700 lambda!258612))))

(declare-fun bs!1205628 () Bool)

(assert (= bs!1205628 (and d!1672588 d!1672052)))

(assert (=> bs!1205628 (= (= lambda!258610 (ite c!891678 lambda!258611 lambda!258612)) (= lambda!258700 lambda!258666))))

(declare-fun bs!1205629 () Bool)

(assert (= bs!1205629 (and d!1672588 d!1671804)))

(assert (=> bs!1205629 (not (= lambda!258700 lambda!258624))))

(declare-fun bs!1205630 () Bool)

(assert (= bs!1205630 (and d!1672588 d!1672364)))

(assert (=> bs!1205630 (= (= lambda!258610 lambda!258616) (= lambda!258700 lambda!258684))))

(declare-fun bs!1205631 () Bool)

(assert (= bs!1205631 (and d!1672588 b!5177857)))

(assert (=> bs!1205631 (not (= lambda!258700 lambda!258687))))

(declare-fun bs!1205632 () Bool)

(assert (= bs!1205632 (and d!1672588 d!1671612)))

(assert (=> bs!1205632 (not (= lambda!258700 lambda!258610))))

(declare-fun bs!1205633 () Bool)

(assert (= bs!1205633 (and d!1672588 b!5177723)))

(assert (=> bs!1205633 (not (= lambda!258700 lambda!258678))))

(declare-fun bs!1205634 () Bool)

(assert (= bs!1205634 (and d!1672588 d!1672232)))

(assert (=> bs!1205634 (not (= lambda!258700 lambda!258675))))

(declare-fun bs!1205635 () Bool)

(assert (= bs!1205635 (and d!1672588 b!5177056)))

(assert (=> bs!1205635 (not (= lambda!258700 lambda!258618))))

(declare-fun bs!1205636 () Bool)

(assert (= bs!1205636 (and d!1672588 d!1672390)))

(assert (=> bs!1205636 (not (= lambda!258700 lambda!258685))))

(declare-fun bs!1205637 () Bool)

(assert (= bs!1205637 (and d!1672588 d!1672352)))

(assert (=> bs!1205637 (not (= lambda!258700 lambda!258681))))

(declare-fun bs!1205638 () Bool)

(assert (= bs!1205638 (and d!1672588 d!1672204)))

(assert (=> bs!1205638 (not (= lambda!258700 lambda!258673))))

(declare-fun bs!1205639 () Bool)

(assert (= bs!1205639 (and d!1672588 b!5177724)))

(assert (=> bs!1205639 (not (= lambda!258700 lambda!258679))))

(declare-fun bs!1205640 () Bool)

(assert (= bs!1205640 (and d!1672588 d!1672104)))

(assert (=> bs!1205640 (not (= lambda!258700 lambda!258668))))

(declare-fun bs!1205641 () Bool)

(assert (= bs!1205641 (and d!1672588 d!1671636)))

(assert (=> bs!1205641 (not (= lambda!258700 lambda!258613))))

(declare-fun bs!1205642 () Bool)

(assert (= bs!1205642 (and d!1672588 d!1672560)))

(assert (=> bs!1205642 (= (= lambda!258610 lambda!258616) (= lambda!258700 lambda!258699))))

(declare-fun bs!1205643 () Bool)

(assert (= bs!1205643 (and d!1672588 d!1672032)))

(assert (=> bs!1205643 (not (= lambda!258700 lambda!258656))))

(declare-fun bs!1205644 () Bool)

(assert (= bs!1205644 (and d!1672588 d!1672218)))

(assert (=> bs!1205644 (not (= lambda!258700 lambda!258674))))

(declare-fun bs!1205645 () Bool)

(assert (= bs!1205645 (and d!1672588 b!5176996)))

(assert (=> bs!1205645 (not (= lambda!258700 lambda!258611))))

(declare-fun bs!1205646 () Bool)

(assert (= bs!1205646 (and d!1672588 d!1671546)))

(assert (=> bs!1205646 (not (= lambda!258700 lambda!258592))))

(declare-fun bs!1205647 () Bool)

(assert (= bs!1205647 (and d!1672588 b!5177856)))

(assert (=> bs!1205647 (not (= lambda!258700 lambda!258686))))

(declare-fun bs!1205648 () Bool)

(assert (= bs!1205648 (and d!1672588 d!1672512)))

(assert (=> bs!1205648 (= lambda!258700 lambda!258695)))

(declare-fun bs!1205649 () Bool)

(assert (= bs!1205649 (and d!1672588 d!1672276)))

(assert (=> bs!1205649 (not (= lambda!258700 lambda!258677))))

(declare-fun bs!1205650 () Bool)

(assert (= bs!1205650 (and d!1672588 d!1672118)))

(assert (=> bs!1205650 (= (= lambda!258610 (ite c!891702 lambda!258617 lambda!258618)) (= lambda!258700 lambda!258671))))

(declare-fun bs!1205651 () Bool)

(assert (= bs!1205651 (and d!1672588 d!1672040)))

(assert (=> bs!1205651 (not (= lambda!258700 lambda!258663))))

(declare-fun bs!1205652 () Bool)

(assert (= bs!1205652 (and d!1672588 d!1672528)))

(assert (=> bs!1205652 (= (= lambda!258610 lambda!258592) (= lambda!258700 lambda!258697))))

(declare-fun bs!1205653 () Bool)

(assert (= bs!1205653 (and d!1672588 b!5177534)))

(assert (=> bs!1205653 (not (= lambda!258700 lambda!258669))))

(declare-fun bs!1205654 () Bool)

(assert (= bs!1205654 (and d!1672588 b!5177535)))

(assert (=> bs!1205654 (not (= lambda!258700 lambda!258670))))

(declare-fun bs!1205655 () Bool)

(assert (= bs!1205655 (and d!1672588 b!5177055)))

(assert (=> bs!1205655 (not (= lambda!258700 lambda!258617))))

(declare-fun bs!1205656 () Bool)

(assert (= bs!1205656 (and d!1672588 d!1671684)))

(assert (=> bs!1205656 (not (= lambda!258700 lambda!258616))))

(assert (=> d!1672588 true))

(assert (=> d!1672588 (< (dynLambda!23883 order!27039 lambda!258610) (dynLambda!23883 order!27039 lambda!258700))))

(assert (=> d!1672588 (exists!1941 lt!2133281 lambda!258700)))

(declare-fun lt!2133892 () Unit!151998)

(assert (=> d!1672588 (= lt!2133892 (choose!38457 lt!2133281 lambda!258610))))

(assert (=> d!1672588 (not (forall!14164 lt!2133281 lambda!258610))))

(assert (=> d!1672588 (= (lemmaNotForallThenExists!478 lt!2133281 lambda!258610) lt!2133892)))

(declare-fun bs!1205657 () Bool)

(assert (= bs!1205657 d!1672588))

(declare-fun m!6235080 () Bool)

(assert (=> bs!1205657 m!6235080))

(declare-fun m!6235082 () Bool)

(assert (=> bs!1205657 m!6235082))

(declare-fun m!6235084 () Bool)

(assert (=> bs!1205657 m!6235084))

(assert (=> b!5176996 d!1672588))

(declare-fun d!1672590 () Bool)

(declare-fun c!892008 () Bool)

(assert (=> d!1672590 (= c!892008 ((_ is Cons!60163) (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163)))))))

(declare-fun e!3226332 () (InoxSet Context!8082))

(assert (=> d!1672590 (= (derivationZipper!280 (derivationStepZipper!1003 baseZ!62 (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163)))) (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163)))) e!3226332)))

(declare-fun b!5178019 () Bool)

(assert (=> b!5178019 (= e!3226332 (derivationZipper!280 (derivationStepZipper!1003 (derivationStepZipper!1003 baseZ!62 (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163)))) (h!66611 (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))))) (t!373440 (t!373440 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))))))))

(declare-fun b!5178020 () Bool)

(assert (=> b!5178020 (= e!3226332 (derivationStepZipper!1003 baseZ!62 (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163)))))))

(assert (= (and d!1672590 c!892008) b!5178019))

(assert (= (and d!1672590 (not c!892008)) b!5178020))

(assert (=> b!5178019 m!6233048))

(declare-fun m!6235086 () Bool)

(assert (=> b!5178019 m!6235086))

(assert (=> b!5178019 m!6235086))

(declare-fun m!6235088 () Bool)

(assert (=> b!5178019 m!6235088))

(assert (=> b!5177165 d!1672590))

(declare-fun bs!1205658 () Bool)

(declare-fun d!1672592 () Bool)

(assert (= bs!1205658 (and d!1672592 d!1672126)))

(declare-fun lambda!258701 () Int)

(assert (=> bs!1205658 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) call!363745) (= lambda!258701 lambda!258672))))

(declare-fun bs!1205659 () Bool)

(assert (= bs!1205659 (and d!1672592 d!1671532)))

(assert (=> bs!1205659 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) lt!2132879) (= lambda!258701 lambda!258589))))

(declare-fun bs!1205660 () Bool)

(assert (= bs!1205660 (and d!1672592 d!1672454)))

(assert (=> bs!1205660 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) call!363731) (= lambda!258701 lambda!258690))))

(declare-fun bs!1205661 () Bool)

(assert (= bs!1205661 (and d!1672592 d!1672426)))

(assert (=> bs!1205661 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) (head!11075 (tail!10174 (_1!35235 lt!2132881)))) (= lambda!258701 lambda!258688))))

(declare-fun bs!1205662 () Bool)

(assert (= bs!1205662 (and d!1672592 d!1671870)))

(assert (=> bs!1205662 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) (h!66611 lt!2132884)) (= lambda!258701 lambda!258629))))

(declare-fun bs!1205663 () Bool)

(assert (= bs!1205663 (and d!1672592 d!1671662)))

(assert (=> bs!1205663 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) call!363667) (= lambda!258701 lambda!258614))))

(declare-fun bs!1205664 () Bool)

(assert (= bs!1205664 (and d!1672592 d!1672462)))

(assert (=> bs!1205664 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) (h!66611 (t!373440 lt!2132884))) (= lambda!258701 lambda!258691))))

(declare-fun bs!1205665 () Bool)

(assert (= bs!1205665 (and d!1672592 d!1671786)))

(assert (=> bs!1205665 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) call!363675) (= lambda!258701 lambda!258622))))

(declare-fun bs!1205666 () Bool)

(assert (= bs!1205666 (and d!1672592 d!1672446)))

(assert (=> bs!1205666 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) (head!11075 (_1!35235 (findLongestMatchInnerZipper!313 lt!2132878 lt!2132884 (size!39693 lt!2132884) (getSuffix!3438 input!5817 lt!2132884) input!5817 (size!39693 input!5817))))) (= lambda!258701 lambda!258689))))

(declare-fun bs!1205667 () Bool)

(assert (= bs!1205667 (and d!1672592 d!1672310)))

(assert (=> bs!1205667 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) call!363779) (= lambda!258701 lambda!258680))))

(declare-fun bs!1205668 () Bool)

(assert (= bs!1205668 (and d!1672592 d!1672080)))

(assert (=> bs!1205668 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) call!363771) (= lambda!258701 lambda!258667))))

(declare-fun bs!1205669 () Bool)

(assert (= bs!1205669 (and d!1672592 d!1672536)))

(assert (=> bs!1205669 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) (head!11075 (tail!10174 (_1!35235 lt!2132877)))) (= lambda!258701 lambda!258698))))

(declare-fun bs!1205670 () Bool)

(assert (= bs!1205670 (and d!1672592 d!1672516)))

(assert (=> bs!1205670 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) (h!66611 (t!373440 testedP!294))) (= lambda!258701 lambda!258696))))

(declare-fun bs!1205671 () Bool)

(assert (= bs!1205671 (and d!1672592 d!1671836)))

(assert (=> bs!1205671 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) (head!11075 (_1!35235 lt!2132881))) (= lambda!258701 lambda!258625))))

(declare-fun bs!1205672 () Bool)

(assert (= bs!1205672 (and d!1672592 d!1671850)))

(assert (=> bs!1205672 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) (head!11075 (_1!35235 lt!2132877))) (= lambda!258701 lambda!258626))))

(declare-fun bs!1205673 () Bool)

(assert (= bs!1205673 (and d!1672592 d!1671672)))

(assert (=> bs!1205673 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) call!363707) (= lambda!258701 lambda!258615))))

(declare-fun bs!1205674 () Bool)

(assert (= bs!1205674 (and d!1672592 d!1671866)))

(assert (=> bs!1205674 (= (= (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163))) (h!66611 testedP!294)) (= lambda!258701 lambda!258628))))

(assert (=> d!1672592 true))

(assert (=> d!1672592 (= (derivationStepZipper!1003 baseZ!62 (h!66611 (++!13173 testedP!294 (Cons!60163 lt!2132879 Nil!60163)))) (flatMap!460 baseZ!62 lambda!258701))))

(declare-fun bs!1205675 () Bool)

(assert (= bs!1205675 d!1672592))

(declare-fun m!6235090 () Bool)

(assert (=> bs!1205675 m!6235090))

(assert (=> b!5177165 d!1672592))

(assert (=> b!5177026 d!1671494))

(assert (=> b!5177026 d!1671466))

(declare-fun b!5178023 () Bool)

(declare-fun res!2200238 () Bool)

(declare-fun e!3226334 () Bool)

(assert (=> b!5178023 (=> (not res!2200238) (not e!3226334))))

(declare-fun lt!2133893 () List!60287)

(assert (=> b!5178023 (= res!2200238 (= (size!39693 lt!2133893) (+ (size!39693 lt!2132884) (size!39693 (Cons!60163 lt!2133305 Nil!60163)))))))

(declare-fun b!5178022 () Bool)

(declare-fun e!3226333 () List!60287)

(assert (=> b!5178022 (= e!3226333 (Cons!60163 (h!66611 lt!2132884) (++!13173 (t!373440 lt!2132884) (Cons!60163 lt!2133305 Nil!60163))))))

(declare-fun b!5178021 () Bool)

(assert (=> b!5178021 (= e!3226333 (Cons!60163 lt!2133305 Nil!60163))))

(declare-fun b!5178024 () Bool)

(assert (=> b!5178024 (= e!3226334 (or (not (= (Cons!60163 lt!2133305 Nil!60163) Nil!60163)) (= lt!2133893 lt!2132884)))))

(declare-fun d!1672594 () Bool)

(assert (=> d!1672594 e!3226334))

(declare-fun res!2200237 () Bool)

(assert (=> d!1672594 (=> (not res!2200237) (not e!3226334))))

(assert (=> d!1672594 (= res!2200237 (= (content!10662 lt!2133893) ((_ map or) (content!10662 lt!2132884) (content!10662 (Cons!60163 lt!2133305 Nil!60163)))))))

(assert (=> d!1672594 (= lt!2133893 e!3226333)))

(declare-fun c!892009 () Bool)

(assert (=> d!1672594 (= c!892009 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1672594 (= (++!13173 lt!2132884 (Cons!60163 lt!2133305 Nil!60163)) lt!2133893)))

(assert (= (and d!1672594 c!892009) b!5178021))

(assert (= (and d!1672594 (not c!892009)) b!5178022))

(assert (= (and d!1672594 res!2200237) b!5178023))

(assert (= (and b!5178023 res!2200238) b!5178024))

(declare-fun m!6235092 () Bool)

(assert (=> b!5178023 m!6235092))

(assert (=> b!5178023 m!6232094))

(declare-fun m!6235094 () Bool)

(assert (=> b!5178023 m!6235094))

(declare-fun m!6235096 () Bool)

(assert (=> b!5178022 m!6235096))

(declare-fun m!6235098 () Bool)

(assert (=> d!1672594 m!6235098))

(assert (=> d!1672594 m!6232648))

(declare-fun m!6235100 () Bool)

(assert (=> d!1672594 m!6235100))

(assert (=> b!5177026 d!1672594))

(declare-fun d!1672596 () Bool)

(assert (=> d!1672596 (= (++!13173 (++!13173 lt!2132884 (Cons!60163 lt!2133305 Nil!60163)) lt!2133308) input!5817)))

(declare-fun lt!2133894 () Unit!151998)

(assert (=> d!1672596 (= lt!2133894 (choose!38447 lt!2132884 lt!2133305 lt!2133308 input!5817))))

(assert (=> d!1672596 (= (++!13173 lt!2132884 (Cons!60163 lt!2133305 lt!2133308)) input!5817)))

(assert (=> d!1672596 (= (lemmaMoveElementToOtherListKeepsConcatEq!1591 lt!2132884 lt!2133305 lt!2133308 input!5817) lt!2133894)))

(declare-fun bs!1205676 () Bool)

(assert (= bs!1205676 d!1672596))

(assert (=> bs!1205676 m!6232722))

(assert (=> bs!1205676 m!6232722))

(assert (=> bs!1205676 m!6232724))

(declare-fun m!6235102 () Bool)

(assert (=> bs!1205676 m!6235102))

(declare-fun m!6235104 () Bool)

(assert (=> bs!1205676 m!6235104))

(assert (=> b!5177026 d!1672596))

(assert (=> b!5177026 d!1671474))

(assert (=> b!5177026 d!1671706))

(assert (=> b!5177026 d!1671598))

(assert (=> b!5177026 d!1671710))

(declare-fun b!5178027 () Bool)

(declare-fun res!2200240 () Bool)

(declare-fun e!3226336 () Bool)

(assert (=> b!5178027 (=> (not res!2200240) (not e!3226336))))

(declare-fun lt!2133895 () List!60287)

(assert (=> b!5178027 (= res!2200240 (= (size!39693 lt!2133895) (+ (size!39693 (++!13173 lt!2132884 (Cons!60163 lt!2133305 Nil!60163))) (size!39693 lt!2133308))))))

(declare-fun b!5178026 () Bool)

(declare-fun e!3226335 () List!60287)

(assert (=> b!5178026 (= e!3226335 (Cons!60163 (h!66611 (++!13173 lt!2132884 (Cons!60163 lt!2133305 Nil!60163))) (++!13173 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2133305 Nil!60163))) lt!2133308)))))

(declare-fun b!5178025 () Bool)

(assert (=> b!5178025 (= e!3226335 lt!2133308)))

(declare-fun b!5178028 () Bool)

(assert (=> b!5178028 (= e!3226336 (or (not (= lt!2133308 Nil!60163)) (= lt!2133895 (++!13173 lt!2132884 (Cons!60163 lt!2133305 Nil!60163)))))))

(declare-fun d!1672598 () Bool)

(assert (=> d!1672598 e!3226336))

(declare-fun res!2200239 () Bool)

(assert (=> d!1672598 (=> (not res!2200239) (not e!3226336))))

(assert (=> d!1672598 (= res!2200239 (= (content!10662 lt!2133895) ((_ map or) (content!10662 (++!13173 lt!2132884 (Cons!60163 lt!2133305 Nil!60163))) (content!10662 lt!2133308))))))

(assert (=> d!1672598 (= lt!2133895 e!3226335)))

(declare-fun c!892010 () Bool)

(assert (=> d!1672598 (= c!892010 ((_ is Nil!60163) (++!13173 lt!2132884 (Cons!60163 lt!2133305 Nil!60163))))))

(assert (=> d!1672598 (= (++!13173 (++!13173 lt!2132884 (Cons!60163 lt!2133305 Nil!60163)) lt!2133308) lt!2133895)))

(assert (= (and d!1672598 c!892010) b!5178025))

(assert (= (and d!1672598 (not c!892010)) b!5178026))

(assert (= (and d!1672598 res!2200239) b!5178027))

(assert (= (and b!5178027 res!2200240) b!5178028))

(declare-fun m!6235106 () Bool)

(assert (=> b!5178027 m!6235106))

(assert (=> b!5178027 m!6232722))

(declare-fun m!6235108 () Bool)

(assert (=> b!5178027 m!6235108))

(declare-fun m!6235110 () Bool)

(assert (=> b!5178027 m!6235110))

(declare-fun m!6235112 () Bool)

(assert (=> b!5178026 m!6235112))

(declare-fun m!6235114 () Bool)

(assert (=> d!1672598 m!6235114))

(assert (=> d!1672598 m!6232722))

(declare-fun m!6235116 () Bool)

(assert (=> d!1672598 m!6235116))

(declare-fun m!6235118 () Bool)

(assert (=> d!1672598 m!6235118))

(assert (=> b!5177026 d!1672598))

(assert (=> b!5177026 d!1671714))

(assert (=> b!5177026 d!1671716))

(assert (=> b!5177026 d!1671718))

(declare-fun d!1672600 () Bool)

(assert (=> d!1672600 (= input!5817 lt!2132884)))

(assert (=> d!1672600 true))

(declare-fun _$60!988 () Unit!151998)

(assert (=> d!1672600 (= (choose!38438 input!5817 lt!2132884 input!5817) _$60!988)))

(assert (=> d!1671860 d!1672600))

(assert (=> d!1671860 d!1671514))

(declare-fun d!1672602 () Bool)

(assert (=> d!1672602 (= (isEmpty!32211 (_1!35235 lt!2133246)) ((_ is Nil!60163) (_1!35235 lt!2133246)))))

(assert (=> b!5176967 d!1672602))

(declare-fun bs!1205677 () Bool)

(declare-fun d!1672604 () Bool)

(assert (= bs!1205677 (and d!1672604 b!5176997)))

(declare-fun lambda!258702 () Int)

(assert (=> bs!1205677 (not (= lambda!258702 lambda!258612))))

(declare-fun bs!1205678 () Bool)

(assert (= bs!1205678 (and d!1672604 d!1672052)))

(assert (=> bs!1205678 (not (= lambda!258702 lambda!258666))))

(declare-fun bs!1205679 () Bool)

(assert (= bs!1205679 (and d!1672604 d!1671804)))

(assert (=> bs!1205679 (= lambda!258702 lambda!258624)))

(declare-fun bs!1205680 () Bool)

(assert (= bs!1205680 (and d!1672604 d!1672364)))

(assert (=> bs!1205680 (not (= lambda!258702 lambda!258684))))

(declare-fun bs!1205681 () Bool)

(assert (= bs!1205681 (and d!1672604 b!5177857)))

(assert (=> bs!1205681 (not (= lambda!258702 lambda!258687))))

(declare-fun bs!1205682 () Bool)

(assert (= bs!1205682 (and d!1672604 d!1671612)))

(assert (=> bs!1205682 (not (= lambda!258702 lambda!258610))))

(declare-fun bs!1205683 () Bool)

(assert (= bs!1205683 (and d!1672604 b!5177723)))

(assert (=> bs!1205683 (not (= lambda!258702 lambda!258678))))

(declare-fun bs!1205684 () Bool)

(assert (= bs!1205684 (and d!1672604 d!1672232)))

(assert (=> bs!1205684 (= lambda!258702 lambda!258675)))

(declare-fun bs!1205685 () Bool)

(assert (= bs!1205685 (and d!1672604 b!5177056)))

(assert (=> bs!1205685 (not (= lambda!258702 lambda!258618))))

(declare-fun bs!1205686 () Bool)

(assert (= bs!1205686 (and d!1672604 d!1672390)))

(assert (=> bs!1205686 (not (= lambda!258702 lambda!258685))))

(declare-fun bs!1205687 () Bool)

(assert (= bs!1205687 (and d!1672604 d!1672352)))

(assert (=> bs!1205687 (not (= lambda!258702 lambda!258681))))

(declare-fun bs!1205688 () Bool)

(assert (= bs!1205688 (and d!1672604 d!1672204)))

(assert (=> bs!1205688 (= lambda!258702 lambda!258673)))

(declare-fun bs!1205689 () Bool)

(assert (= bs!1205689 (and d!1672604 b!5177724)))

(assert (=> bs!1205689 (not (= lambda!258702 lambda!258679))))

(declare-fun bs!1205690 () Bool)

(assert (= bs!1205690 (and d!1672604 d!1672104)))

(assert (=> bs!1205690 (not (= lambda!258702 lambda!258668))))

(declare-fun bs!1205691 () Bool)

(assert (= bs!1205691 (and d!1672604 d!1671636)))

(assert (=> bs!1205691 (= lambda!258702 lambda!258613)))

(declare-fun bs!1205692 () Bool)

(assert (= bs!1205692 (and d!1672604 d!1672032)))

(assert (=> bs!1205692 (= lambda!258702 lambda!258656)))

(declare-fun bs!1205693 () Bool)

(assert (= bs!1205693 (and d!1672604 d!1672218)))

(assert (=> bs!1205693 (= lambda!258702 lambda!258674)))

(declare-fun bs!1205694 () Bool)

(assert (= bs!1205694 (and d!1672604 b!5176996)))

(assert (=> bs!1205694 (not (= lambda!258702 lambda!258611))))

(declare-fun bs!1205695 () Bool)

(assert (= bs!1205695 (and d!1672604 d!1671546)))

(assert (=> bs!1205695 (= lambda!258702 lambda!258592)))

(declare-fun bs!1205696 () Bool)

(assert (= bs!1205696 (and d!1672604 b!5177856)))

(assert (=> bs!1205696 (not (= lambda!258702 lambda!258686))))

(declare-fun bs!1205697 () Bool)

(assert (= bs!1205697 (and d!1672604 d!1672512)))

(assert (=> bs!1205697 (not (= lambda!258702 lambda!258695))))

(declare-fun bs!1205698 () Bool)

(assert (= bs!1205698 (and d!1672604 d!1672276)))

(assert (=> bs!1205698 (not (= lambda!258702 lambda!258677))))

(declare-fun bs!1205699 () Bool)

(assert (= bs!1205699 (and d!1672604 d!1672118)))

(assert (=> bs!1205699 (not (= lambda!258702 lambda!258671))))

(declare-fun bs!1205700 () Bool)

(assert (= bs!1205700 (and d!1672604 d!1672040)))

(assert (=> bs!1205700 (not (= lambda!258702 lambda!258663))))

(declare-fun bs!1205701 () Bool)

(assert (= bs!1205701 (and d!1672604 d!1672528)))

(assert (=> bs!1205701 (not (= lambda!258702 lambda!258697))))

(declare-fun bs!1205702 () Bool)

(assert (= bs!1205702 (and d!1672604 b!5177534)))

(assert (=> bs!1205702 (not (= lambda!258702 lambda!258669))))

(declare-fun bs!1205703 () Bool)

(assert (= bs!1205703 (and d!1672604 b!5177535)))

(assert (=> bs!1205703 (not (= lambda!258702 lambda!258670))))

(declare-fun bs!1205704 () Bool)

(assert (= bs!1205704 (and d!1672604 d!1672560)))

(assert (=> bs!1205704 (not (= lambda!258702 lambda!258699))))

(declare-fun bs!1205705 () Bool)

(assert (= bs!1205705 (and d!1672604 d!1672588)))

(assert (=> bs!1205705 (not (= lambda!258702 lambda!258700))))

(declare-fun bs!1205706 () Bool)

(assert (= bs!1205706 (and d!1672604 b!5177055)))

(assert (=> bs!1205706 (not (= lambda!258702 lambda!258617))))

(declare-fun bs!1205707 () Bool)

(assert (= bs!1205707 (and d!1672604 d!1671684)))

(assert (=> bs!1205707 (not (= lambda!258702 lambda!258616))))

(assert (=> d!1672604 (= (nullableZipper!1195 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877)))) (exists!1939 (derivationStepZipper!1003 baseZ!62 (head!11075 (_1!35235 lt!2132877))) lambda!258702))))

(declare-fun bs!1205708 () Bool)

(assert (= bs!1205708 d!1672604))

(assert (=> bs!1205708 m!6232308))

(declare-fun m!6235120 () Bool)

(assert (=> bs!1205708 m!6235120))

(assert (=> b!5177253 d!1672604))

(assert (=> d!1671702 d!1671712))

(assert (=> d!1671702 d!1671708))

(declare-fun d!1672606 () Bool)

(assert (=> d!1672606 (= (++!13173 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163)) lt!2132985) input!5817)))

(assert (=> d!1672606 true))

(declare-fun _$68!874 () Unit!151998)

(assert (=> d!1672606 (= (choose!38447 lt!2132884 lt!2132982 lt!2132985 input!5817) _$68!874)))

(declare-fun bs!1205709 () Bool)

(assert (= bs!1205709 d!1672606))

(assert (=> bs!1205709 m!6232186))

(assert (=> bs!1205709 m!6232186))

(assert (=> bs!1205709 m!6232188))

(assert (=> d!1671702 d!1672606))

(declare-fun b!5178031 () Bool)

(declare-fun res!2200242 () Bool)

(declare-fun e!3226338 () Bool)

(assert (=> b!5178031 (=> (not res!2200242) (not e!3226338))))

(declare-fun lt!2133896 () List!60287)

(assert (=> b!5178031 (= res!2200242 (= (size!39693 lt!2133896) (+ (size!39693 lt!2132884) (size!39693 (Cons!60163 lt!2132982 lt!2132985)))))))

(declare-fun e!3226337 () List!60287)

(declare-fun b!5178030 () Bool)

(assert (=> b!5178030 (= e!3226337 (Cons!60163 (h!66611 lt!2132884) (++!13173 (t!373440 lt!2132884) (Cons!60163 lt!2132982 lt!2132985))))))

(declare-fun b!5178029 () Bool)

(assert (=> b!5178029 (= e!3226337 (Cons!60163 lt!2132982 lt!2132985))))

(declare-fun b!5178032 () Bool)

(assert (=> b!5178032 (= e!3226338 (or (not (= (Cons!60163 lt!2132982 lt!2132985) Nil!60163)) (= lt!2133896 lt!2132884)))))

(declare-fun d!1672608 () Bool)

(assert (=> d!1672608 e!3226338))

(declare-fun res!2200241 () Bool)

(assert (=> d!1672608 (=> (not res!2200241) (not e!3226338))))

(assert (=> d!1672608 (= res!2200241 (= (content!10662 lt!2133896) ((_ map or) (content!10662 lt!2132884) (content!10662 (Cons!60163 lt!2132982 lt!2132985)))))))

(assert (=> d!1672608 (= lt!2133896 e!3226337)))

(declare-fun c!892011 () Bool)

(assert (=> d!1672608 (= c!892011 ((_ is Nil!60163) lt!2132884))))

(assert (=> d!1672608 (= (++!13173 lt!2132884 (Cons!60163 lt!2132982 lt!2132985)) lt!2133896)))

(assert (= (and d!1672608 c!892011) b!5178029))

(assert (= (and d!1672608 (not c!892011)) b!5178030))

(assert (= (and d!1672608 res!2200241) b!5178031))

(assert (= (and b!5178031 res!2200242) b!5178032))

(declare-fun m!6235122 () Bool)

(assert (=> b!5178031 m!6235122))

(assert (=> b!5178031 m!6232094))

(declare-fun m!6235124 () Bool)

(assert (=> b!5178031 m!6235124))

(declare-fun m!6235126 () Bool)

(assert (=> b!5178030 m!6235126))

(declare-fun m!6235128 () Bool)

(assert (=> d!1672608 m!6235128))

(assert (=> d!1672608 m!6232648))

(declare-fun m!6235130 () Bool)

(assert (=> d!1672608 m!6235130))

(assert (=> d!1671702 d!1672608))

(declare-fun d!1672610 () Bool)

(declare-fun lt!2133897 () Int)

(assert (=> d!1672610 (>= lt!2133897 0)))

(declare-fun e!3226339 () Int)

(assert (=> d!1672610 (= lt!2133897 e!3226339)))

(declare-fun c!892012 () Bool)

(assert (=> d!1672610 (= c!892012 ((_ is Nil!60163) (++!13173 testedP!294 lt!2132885)))))

(assert (=> d!1672610 (= (size!39693 (++!13173 testedP!294 lt!2132885)) lt!2133897)))

(declare-fun b!5178033 () Bool)

(assert (=> b!5178033 (= e!3226339 0)))

(declare-fun b!5178034 () Bool)

(assert (=> b!5178034 (= e!3226339 (+ 1 (size!39693 (t!373440 (++!13173 testedP!294 lt!2132885)))))))

(assert (= (and d!1672610 c!892012) b!5178033))

(assert (= (and d!1672610 (not c!892012)) b!5178034))

(declare-fun m!6235132 () Bool)

(assert (=> b!5178034 m!6235132))

(assert (=> b!5177068 d!1672610))

(assert (=> b!5177068 d!1671500))

(declare-fun d!1672612 () Bool)

(declare-fun lt!2133898 () Int)

(assert (=> d!1672612 (>= lt!2133898 0)))

(declare-fun e!3226340 () Int)

(assert (=> d!1672612 (= lt!2133898 e!3226340)))

(declare-fun c!892013 () Bool)

(assert (=> d!1672612 (= c!892013 ((_ is Nil!60163) lt!2133409))))

(assert (=> d!1672612 (= (size!39693 lt!2133409) lt!2133898)))

(declare-fun b!5178035 () Bool)

(assert (=> b!5178035 (= e!3226340 0)))

(declare-fun b!5178036 () Bool)

(assert (=> b!5178036 (= e!3226340 (+ 1 (size!39693 (t!373440 lt!2133409))))))

(assert (= (and d!1672612 c!892013) b!5178035))

(assert (= (and d!1672612 (not c!892013)) b!5178036))

(declare-fun m!6235134 () Bool)

(assert (=> b!5178036 m!6235134))

(assert (=> b!5177171 d!1672612))

(assert (=> b!5177171 d!1671760))

(assert (=> b!5177171 d!1671634))

(declare-fun d!1672614 () Bool)

(assert (=> d!1672614 (= (flatMap!460 baseZ!62 lambda!258628) (choose!38443 baseZ!62 lambda!258628))))

(declare-fun bs!1205710 () Bool)

(assert (= bs!1205710 d!1672614))

(declare-fun m!6235136 () Bool)

(assert (=> bs!1205710 m!6235136))

(assert (=> d!1671866 d!1672614))

(declare-fun d!1672616 () Bool)

(declare-fun lt!2133899 () Int)

(assert (=> d!1672616 (>= lt!2133899 0)))

(declare-fun e!3226341 () Int)

(assert (=> d!1672616 (= lt!2133899 e!3226341)))

(declare-fun c!892014 () Bool)

(assert (=> d!1672616 (= c!892014 ((_ is Nil!60163) lt!2133365))))

(assert (=> d!1672616 (= (size!39693 lt!2133365) lt!2133899)))

(declare-fun b!5178037 () Bool)

(assert (=> b!5178037 (= e!3226341 0)))

(declare-fun b!5178038 () Bool)

(assert (=> b!5178038 (= e!3226341 (+ 1 (size!39693 (t!373440 lt!2133365))))))

(assert (= (and d!1672616 c!892014) b!5178037))

(assert (= (and d!1672616 (not c!892014)) b!5178038))

(declare-fun m!6235138 () Bool)

(assert (=> b!5178038 m!6235138))

(assert (=> b!5177097 d!1672616))

(declare-fun d!1672618 () Bool)

(declare-fun lt!2133900 () Int)

(assert (=> d!1672618 (>= lt!2133900 0)))

(declare-fun e!3226342 () Int)

(assert (=> d!1672618 (= lt!2133900 e!3226342)))

(declare-fun c!892015 () Bool)

(assert (=> d!1672618 (= c!892015 ((_ is Nil!60163) (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))))))

(assert (=> d!1672618 (= (size!39693 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))) lt!2133900)))

(declare-fun b!5178039 () Bool)

(assert (=> b!5178039 (= e!3226342 0)))

(declare-fun b!5178040 () Bool)

(assert (=> b!5178040 (= e!3226342 (+ 1 (size!39693 (t!373440 (++!13173 lt!2132884 (Cons!60163 lt!2132982 Nil!60163))))))))

(assert (= (and d!1672618 c!892015) b!5178039))

(assert (= (and d!1672618 (not c!892015)) b!5178040))

(assert (=> b!5178040 m!6234768))

(assert (=> b!5177097 d!1672618))

(declare-fun d!1672620 () Bool)

(declare-fun lt!2133901 () Int)

(assert (=> d!1672620 (>= lt!2133901 0)))

(declare-fun e!3226343 () Int)

(assert (=> d!1672620 (= lt!2133901 e!3226343)))

(declare-fun c!892016 () Bool)

(assert (=> d!1672620 (= c!892016 ((_ is Nil!60163) lt!2132985))))

(assert (=> d!1672620 (= (size!39693 lt!2132985) lt!2133901)))

(declare-fun b!5178041 () Bool)

(assert (=> b!5178041 (= e!3226343 0)))

(declare-fun b!5178042 () Bool)

(assert (=> b!5178042 (= e!3226343 (+ 1 (size!39693 (t!373440 lt!2132985))))))

(assert (= (and d!1672620 c!892016) b!5178041))

(assert (= (and d!1672620 (not c!892016)) b!5178042))

(declare-fun m!6235140 () Bool)

(assert (=> b!5178042 m!6235140))

(assert (=> b!5177097 d!1672620))

(declare-fun d!1672622 () Bool)

(declare-fun e!3226344 () Bool)

(assert (=> d!1672622 e!3226344))

(declare-fun res!2200244 () Bool)

(assert (=> d!1672622 (=> res!2200244 e!3226344)))

(declare-fun lt!2133902 () Bool)

(assert (=> d!1672622 (= res!2200244 (not lt!2133902))))

(declare-fun e!3226345 () Bool)

(assert (=> d!1672622 (= lt!2133902 e!3226345)))

(declare-fun res!2200246 () Bool)

(assert (=> d!1672622 (=> res!2200246 e!3226345)))

(assert (=> d!1672622 (= res!2200246 ((_ is Nil!60163) (tail!10174 (tail!10174 input!5817))))))

(assert (=> d!1672622 (= (isPrefix!5790 (tail!10174 (tail!10174 input!5817)) (tail!10174 (tail!10174 input!5817))) lt!2133902)))

(declare-fun b!5178043 () Bool)

(declare-fun e!3226346 () Bool)

(assert (=> b!5178043 (= e!3226345 e!3226346)))

(declare-fun res!2200243 () Bool)

(assert (=> b!5178043 (=> (not res!2200243) (not e!3226346))))

(assert (=> b!5178043 (= res!2200243 (not ((_ is Nil!60163) (tail!10174 (tail!10174 input!5817)))))))

(declare-fun b!5178044 () Bool)

(declare-fun res!2200245 () Bool)

(assert (=> b!5178044 (=> (not res!2200245) (not e!3226346))))

(assert (=> b!5178044 (= res!2200245 (= (head!11075 (tail!10174 (tail!10174 input!5817))) (head!11075 (tail!10174 (tail!10174 input!5817)))))))

(declare-fun b!5178045 () Bool)

(assert (=> b!5178045 (= e!3226346 (isPrefix!5790 (tail!10174 (tail!10174 (tail!10174 input!5817))) (tail!10174 (tail!10174 (tail!10174 input!5817)))))))

(declare-fun b!5178046 () Bool)

(assert (=> b!5178046 (= e!3226344 (>= (size!39693 (tail!10174 (tail!10174 input!5817))) (size!39693 (tail!10174 (tail!10174 input!5817)))))))

(assert (= (and d!1672622 (not res!2200246)) b!5178043))

(assert (= (and b!5178043 res!2200243) b!5178044))

(assert (= (and b!5178044 res!2200245) b!5178045))

(assert (= (and d!1672622 (not res!2200244)) b!5178046))

(assert (=> b!5178044 m!6232680))

(assert (=> b!5178044 m!6234496))

(assert (=> b!5178044 m!6232680))

(assert (=> b!5178044 m!6234496))

(assert (=> b!5178045 m!6232680))

(assert (=> b!5178045 m!6234122))

(assert (=> b!5178045 m!6232680))

(assert (=> b!5178045 m!6234122))

(assert (=> b!5178045 m!6234122))

(assert (=> b!5178045 m!6234122))

(declare-fun m!6235142 () Bool)

(assert (=> b!5178045 m!6235142))

(assert (=> b!5178046 m!6232680))

(assert (=> b!5178046 m!6234120))

(assert (=> b!5178046 m!6232680))

(assert (=> b!5178046 m!6234120))

(assert (=> b!5177219 d!1672622))

(assert (=> b!5177219 d!1672160))

(declare-fun d!1672624 () Bool)

(declare-fun c!892017 () Bool)

(assert (=> d!1672624 (= c!892017 ((_ is Nil!60163) lt!2133369))))

(declare-fun e!3226347 () (InoxSet C!29584))

(assert (=> d!1672624 (= (content!10662 lt!2133369) e!3226347)))

(declare-fun b!5178047 () Bool)

(assert (=> b!5178047 (= e!3226347 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5178048 () Bool)

(assert (=> b!5178048 (= e!3226347 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133369) true) (content!10662 (t!373440 lt!2133369))))))

(assert (= (and d!1672624 c!892017) b!5178047))

(assert (= (and d!1672624 (not c!892017)) b!5178048))

(declare-fun m!6235144 () Bool)

(assert (=> b!5178048 m!6235144))

(declare-fun m!6235146 () Bool)

(assert (=> b!5178048 m!6235146))

(assert (=> d!1671722 d!1672624))

(assert (=> d!1671722 d!1672064))

(declare-fun d!1672626 () Bool)

(declare-fun c!892018 () Bool)

(assert (=> d!1672626 (= c!892018 ((_ is Nil!60163) (getSuffix!3438 input!5817 lt!2132884)))))

(declare-fun e!3226348 () (InoxSet C!29584))

(assert (=> d!1672626 (= (content!10662 (getSuffix!3438 input!5817 lt!2132884)) e!3226348)))

(declare-fun b!5178049 () Bool)

(assert (=> b!5178049 (= e!3226348 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5178050 () Bool)

(assert (=> b!5178050 (= e!3226348 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (getSuffix!3438 input!5817 lt!2132884)) true) (content!10662 (t!373440 (getSuffix!3438 input!5817 lt!2132884)))))))

(assert (= (and d!1672626 c!892018) b!5178049))

(assert (= (and d!1672626 (not c!892018)) b!5178050))

(declare-fun m!6235148 () Bool)

(assert (=> b!5178050 m!6235148))

(declare-fun m!6235150 () Bool)

(assert (=> b!5178050 m!6235150))

(assert (=> d!1671722 d!1672626))

(declare-fun d!1672628 () Bool)

(declare-fun lt!2133903 () Int)

(assert (=> d!1672628 (>= lt!2133903 0)))

(declare-fun e!3226349 () Int)

(assert (=> d!1672628 (= lt!2133903 e!3226349)))

(declare-fun c!892019 () Bool)

(assert (=> d!1672628 (= c!892019 ((_ is Nil!60163) lt!2133249))))

(assert (=> d!1672628 (= (size!39693 lt!2133249) lt!2133903)))

(declare-fun b!5178051 () Bool)

(assert (=> b!5178051 (= e!3226349 0)))

(declare-fun b!5178052 () Bool)

(assert (=> b!5178052 (= e!3226349 (+ 1 (size!39693 (t!373440 lt!2133249))))))

(assert (= (and d!1672628 c!892019) b!5178051))

(assert (= (and d!1672628 (not c!892019)) b!5178052))

(declare-fun m!6235152 () Bool)

(assert (=> b!5178052 m!6235152))

(assert (=> b!5176982 d!1672628))

(assert (=> b!5176982 d!1671874))

(declare-fun d!1672630 () Bool)

(declare-fun lt!2133904 () Int)

(assert (=> d!1672630 (>= lt!2133904 0)))

(declare-fun e!3226350 () Int)

(assert (=> d!1672630 (= lt!2133904 e!3226350)))

(declare-fun c!892020 () Bool)

(assert (=> d!1672630 (= c!892020 ((_ is Nil!60163) (_2!35235 lt!2133135)))))

(assert (=> d!1672630 (= (size!39693 (_2!35235 lt!2133135)) lt!2133904)))

(declare-fun b!5178053 () Bool)

(assert (=> b!5178053 (= e!3226350 0)))

(declare-fun b!5178054 () Bool)

(assert (=> b!5178054 (= e!3226350 (+ 1 (size!39693 (t!373440 (_2!35235 lt!2133135)))))))

(assert (= (and d!1672630 c!892020) b!5178053))

(assert (= (and d!1672630 (not c!892020)) b!5178054))

(declare-fun m!6235154 () Bool)

(assert (=> b!5178054 m!6235154))

(assert (=> b!5176982 d!1672630))

(declare-fun d!1672632 () Bool)

(assert (=> d!1672632 (= (flatMap!460 z!4581 lambda!258622) (choose!38443 z!4581 lambda!258622))))

(declare-fun bs!1205711 () Bool)

(assert (= bs!1205711 d!1672632))

(declare-fun m!6235156 () Bool)

(assert (=> bs!1205711 m!6235156))

(assert (=> d!1671786 d!1672632))

(assert (=> b!5176985 d!1671618))

(declare-fun d!1672634 () Bool)

(assert (=> d!1672634 (= (head!11075 (++!13173 lt!2132884 (tail!10174 lt!2132885))) (h!66611 (++!13173 lt!2132884 (tail!10174 lt!2132885))))))

(assert (=> b!5176985 d!1672634))

(declare-fun d!1672636 () Bool)

(declare-fun c!892021 () Bool)

(assert (=> d!1672636 (= c!892021 ((_ is Nil!60163) lt!2133222))))

(declare-fun e!3226351 () (InoxSet C!29584))

(assert (=> d!1672636 (= (content!10662 lt!2133222) e!3226351)))

(declare-fun b!5178055 () Bool)

(assert (=> b!5178055 (= e!3226351 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5178056 () Bool)

(assert (=> b!5178056 (= e!3226351 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 lt!2133222) true) (content!10662 (t!373440 lt!2133222))))))

(assert (= (and d!1672636 c!892021) b!5178055))

(assert (= (and d!1672636 (not c!892021)) b!5178056))

(declare-fun m!6235158 () Bool)

(assert (=> b!5178056 m!6235158))

(declare-fun m!6235160 () Bool)

(assert (=> b!5178056 m!6235160))

(assert (=> d!1671594 d!1672636))

(assert (=> d!1671594 d!1671642))

(declare-fun d!1672638 () Bool)

(declare-fun c!892022 () Bool)

(assert (=> d!1672638 (= c!892022 ((_ is Nil!60163) (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))))

(declare-fun e!3226352 () (InoxSet C!29584))

(assert (=> d!1672638 (= (content!10662 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)) e!3226352)))

(declare-fun b!5178057 () Bool)

(assert (=> b!5178057 (= e!3226352 ((as const (Array C!29584 Bool)) false))))

(declare-fun b!5178058 () Bool)

(assert (=> b!5178058 (= e!3226352 ((_ map or) (store ((as const (Array C!29584 Bool)) false) (h!66611 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)) true) (content!10662 (t!373440 (Cons!60163 (head!11075 (getSuffix!3438 input!5817 testedP!294)) Nil!60163)))))))

(assert (= (and d!1672638 c!892022) b!5178057))

(assert (= (and d!1672638 (not c!892022)) b!5178058))

(declare-fun m!6235162 () Bool)

(assert (=> b!5178058 m!6235162))

(declare-fun m!6235164 () Bool)

(assert (=> b!5178058 m!6235164))

(assert (=> d!1671594 d!1672638))

(declare-fun d!1672640 () Bool)

(declare-fun lt!2133905 () Int)

(assert (=> d!1672640 (>= lt!2133905 0)))

(declare-fun e!3226353 () Int)

(assert (=> d!1672640 (= lt!2133905 e!3226353)))

(declare-fun c!892023 () Bool)

(assert (=> d!1672640 (= c!892023 ((_ is Nil!60163) (t!373440 (t!373440 input!5817))))))

(assert (=> d!1672640 (= (size!39693 (t!373440 (t!373440 input!5817))) lt!2133905)))

(declare-fun b!5178059 () Bool)

(assert (=> b!5178059 (= e!3226353 0)))

(declare-fun b!5178060 () Bool)

(assert (=> b!5178060 (= e!3226353 (+ 1 (size!39693 (t!373440 (t!373440 (t!373440 input!5817))))))))

(assert (= (and d!1672640 c!892023) b!5178059))

(assert (= (and d!1672640 (not c!892023)) b!5178060))

(declare-fun m!6235166 () Bool)

(assert (=> b!5178060 m!6235166))

(assert (=> b!5177009 d!1672640))

(declare-fun b!5178063 () Bool)

(declare-fun e!3226354 () Bool)

(declare-fun tp!1452316 () Bool)

(assert (=> b!5178063 (= e!3226354 tp!1452316)))

(declare-fun b!5178061 () Bool)

(assert (=> b!5178061 (= e!3226354 tp_is_empty!38567)))

(declare-fun b!5178062 () Bool)

(declare-fun tp!1452314 () Bool)

(declare-fun tp!1452317 () Bool)

(assert (=> b!5178062 (= e!3226354 (and tp!1452314 tp!1452317))))

(assert (=> b!5177286 (= tp!1452270 e!3226354)))

(declare-fun b!5178064 () Bool)

(declare-fun tp!1452318 () Bool)

(declare-fun tp!1452315 () Bool)

(assert (=> b!5178064 (= e!3226354 (and tp!1452318 tp!1452315))))

(assert (= (and b!5177286 ((_ is ElementMatch!14657) (regOne!29827 (h!66612 (exprs!4541 setElem!32334))))) b!5178061))

(assert (= (and b!5177286 ((_ is Concat!23502) (regOne!29827 (h!66612 (exprs!4541 setElem!32334))))) b!5178062))

(assert (= (and b!5177286 ((_ is Star!14657) (regOne!29827 (h!66612 (exprs!4541 setElem!32334))))) b!5178063))

(assert (= (and b!5177286 ((_ is Union!14657) (regOne!29827 (h!66612 (exprs!4541 setElem!32334))))) b!5178064))

(declare-fun b!5178067 () Bool)

(declare-fun e!3226355 () Bool)

(declare-fun tp!1452321 () Bool)

(assert (=> b!5178067 (= e!3226355 tp!1452321)))

(declare-fun b!5178065 () Bool)

(assert (=> b!5178065 (= e!3226355 tp_is_empty!38567)))

(declare-fun b!5178066 () Bool)

(declare-fun tp!1452319 () Bool)

(declare-fun tp!1452322 () Bool)

(assert (=> b!5178066 (= e!3226355 (and tp!1452319 tp!1452322))))

(assert (=> b!5177286 (= tp!1452267 e!3226355)))

(declare-fun b!5178068 () Bool)

(declare-fun tp!1452323 () Bool)

(declare-fun tp!1452320 () Bool)

(assert (=> b!5178068 (= e!3226355 (and tp!1452323 tp!1452320))))

(assert (= (and b!5177286 ((_ is ElementMatch!14657) (regTwo!29827 (h!66612 (exprs!4541 setElem!32334))))) b!5178065))

(assert (= (and b!5177286 ((_ is Concat!23502) (regTwo!29827 (h!66612 (exprs!4541 setElem!32334))))) b!5178066))

(assert (= (and b!5177286 ((_ is Star!14657) (regTwo!29827 (h!66612 (exprs!4541 setElem!32334))))) b!5178067))

(assert (= (and b!5177286 ((_ is Union!14657) (regTwo!29827 (h!66612 (exprs!4541 setElem!32334))))) b!5178068))

(declare-fun b!5178071 () Bool)

(declare-fun e!3226356 () Bool)

(declare-fun tp!1452326 () Bool)

(assert (=> b!5178071 (= e!3226356 tp!1452326)))

(declare-fun b!5178069 () Bool)

(assert (=> b!5178069 (= e!3226356 tp_is_empty!38567)))

(declare-fun b!5178070 () Bool)

(declare-fun tp!1452324 () Bool)

(declare-fun tp!1452327 () Bool)

(assert (=> b!5178070 (= e!3226356 (and tp!1452324 tp!1452327))))

(assert (=> b!5177278 (= tp!1452257 e!3226356)))

(declare-fun b!5178072 () Bool)

(declare-fun tp!1452328 () Bool)

(declare-fun tp!1452325 () Bool)

(assert (=> b!5178072 (= e!3226356 (and tp!1452328 tp!1452325))))

(assert (= (and b!5177278 ((_ is ElementMatch!14657) (h!66612 (t!373441 (exprs!4541 setElem!32333))))) b!5178069))

(assert (= (and b!5177278 ((_ is Concat!23502) (h!66612 (t!373441 (exprs!4541 setElem!32333))))) b!5178070))

(assert (= (and b!5177278 ((_ is Star!14657) (h!66612 (t!373441 (exprs!4541 setElem!32333))))) b!5178071))

(assert (= (and b!5177278 ((_ is Union!14657) (h!66612 (t!373441 (exprs!4541 setElem!32333))))) b!5178072))

(declare-fun b!5178073 () Bool)

(declare-fun e!3226357 () Bool)

(declare-fun tp!1452329 () Bool)

(declare-fun tp!1452330 () Bool)

(assert (=> b!5178073 (= e!3226357 (and tp!1452329 tp!1452330))))

(assert (=> b!5177278 (= tp!1452258 e!3226357)))

(assert (= (and b!5177278 ((_ is Cons!60164) (t!373441 (t!373441 (exprs!4541 setElem!32333))))) b!5178073))

(declare-fun condSetEmpty!32350 () Bool)

(assert (=> setNonEmpty!32343 (= condSetEmpty!32350 (= setRest!32343 ((as const (Array Context!8082 Bool)) false)))))

(declare-fun setRes!32350 () Bool)

(assert (=> setNonEmpty!32343 (= tp!1452260 setRes!32350)))

(declare-fun setIsEmpty!32350 () Bool)

(assert (=> setIsEmpty!32350 setRes!32350))

(declare-fun tp!1452331 () Bool)

(declare-fun setElem!32350 () Context!8082)

(declare-fun setNonEmpty!32350 () Bool)

(declare-fun e!3226358 () Bool)

(assert (=> setNonEmpty!32350 (= setRes!32350 (and tp!1452331 (inv!79889 setElem!32350) e!3226358))))

(declare-fun setRest!32350 () (InoxSet Context!8082))

(assert (=> setNonEmpty!32350 (= setRest!32343 ((_ map or) (store ((as const (Array Context!8082 Bool)) false) setElem!32350 true) setRest!32350))))

(declare-fun b!5178074 () Bool)

(declare-fun tp!1452332 () Bool)

(assert (=> b!5178074 (= e!3226358 tp!1452332)))

(assert (= (and setNonEmpty!32343 condSetEmpty!32350) setIsEmpty!32350))

(assert (= (and setNonEmpty!32343 (not condSetEmpty!32350)) setNonEmpty!32350))

(assert (= setNonEmpty!32350 b!5178074))

(declare-fun m!6235168 () Bool)

(assert (=> setNonEmpty!32350 m!6235168))

(declare-fun b!5178075 () Bool)

(declare-fun e!3226359 () Bool)

(declare-fun tp!1452333 () Bool)

(assert (=> b!5178075 (= e!3226359 (and tp_is_empty!38567 tp!1452333))))

(assert (=> b!5177279 (= tp!1452259 e!3226359)))

(assert (= (and b!5177279 ((_ is Cons!60163) (t!373440 (t!373440 (t!373440 input!5817))))) b!5178075))

(declare-fun b!5178078 () Bool)

(declare-fun e!3226360 () Bool)

(declare-fun tp!1452336 () Bool)

(assert (=> b!5178078 (= e!3226360 tp!1452336)))

(declare-fun b!5178076 () Bool)

(assert (=> b!5178076 (= e!3226360 tp_is_empty!38567)))

(declare-fun b!5178077 () Bool)

(declare-fun tp!1452334 () Bool)

(declare-fun tp!1452337 () Bool)

(assert (=> b!5178077 (= e!3226360 (and tp!1452334 tp!1452337))))

(assert (=> b!5177263 (= tp!1452240 e!3226360)))

(declare-fun b!5178079 () Bool)

(declare-fun tp!1452338 () Bool)

(declare-fun tp!1452335 () Bool)

(assert (=> b!5178079 (= e!3226360 (and tp!1452338 tp!1452335))))

(assert (= (and b!5177263 ((_ is ElementMatch!14657) (h!66612 (exprs!4541 setElem!32337)))) b!5178076))

(assert (= (and b!5177263 ((_ is Concat!23502) (h!66612 (exprs!4541 setElem!32337)))) b!5178077))

(assert (= (and b!5177263 ((_ is Star!14657) (h!66612 (exprs!4541 setElem!32337)))) b!5178078))

(assert (= (and b!5177263 ((_ is Union!14657) (h!66612 (exprs!4541 setElem!32337)))) b!5178079))

(declare-fun b!5178080 () Bool)

(declare-fun e!3226361 () Bool)

(declare-fun tp!1452339 () Bool)

(declare-fun tp!1452340 () Bool)

(assert (=> b!5178080 (= e!3226361 (and tp!1452339 tp!1452340))))

(assert (=> b!5177263 (= tp!1452241 e!3226361)))

(assert (= (and b!5177263 ((_ is Cons!60164) (t!373441 (exprs!4541 setElem!32337)))) b!5178080))

(declare-fun b!5178083 () Bool)

(declare-fun e!3226362 () Bool)

(declare-fun tp!1452343 () Bool)

(assert (=> b!5178083 (= e!3226362 tp!1452343)))

(declare-fun b!5178081 () Bool)

(assert (=> b!5178081 (= e!3226362 tp_is_empty!38567)))

(declare-fun b!5178082 () Bool)

(declare-fun tp!1452341 () Bool)

(declare-fun tp!1452344 () Bool)

(assert (=> b!5178082 (= e!3226362 (and tp!1452341 tp!1452344))))

(assert (=> b!5177287 (= tp!1452271 e!3226362)))

(declare-fun b!5178084 () Bool)

(declare-fun tp!1452345 () Bool)

(declare-fun tp!1452342 () Bool)

(assert (=> b!5178084 (= e!3226362 (and tp!1452345 tp!1452342))))

(assert (= (and b!5177287 ((_ is ElementMatch!14657) (h!66612 (t!373441 (exprs!4541 setElem!32334))))) b!5178081))

(assert (= (and b!5177287 ((_ is Concat!23502) (h!66612 (t!373441 (exprs!4541 setElem!32334))))) b!5178082))

(assert (= (and b!5177287 ((_ is Star!14657) (h!66612 (t!373441 (exprs!4541 setElem!32334))))) b!5178083))

(assert (= (and b!5177287 ((_ is Union!14657) (h!66612 (t!373441 (exprs!4541 setElem!32334))))) b!5178084))

(declare-fun b!5178085 () Bool)

(declare-fun e!3226363 () Bool)

(declare-fun tp!1452346 () Bool)

(declare-fun tp!1452347 () Bool)

(assert (=> b!5178085 (= e!3226363 (and tp!1452346 tp!1452347))))

(assert (=> b!5177287 (= tp!1452272 e!3226363)))

(assert (= (and b!5177287 ((_ is Cons!60164) (t!373441 (t!373441 (exprs!4541 setElem!32334))))) b!5178085))

(declare-fun b!5178086 () Bool)

(declare-fun e!3226364 () Bool)

(declare-fun tp!1452348 () Bool)

(declare-fun tp!1452349 () Bool)

(assert (=> b!5178086 (= e!3226364 (and tp!1452348 tp!1452349))))

(assert (=> b!5177280 (= tp!1452261 e!3226364)))

(assert (= (and b!5177280 ((_ is Cons!60164) (exprs!4541 setElem!32343))) b!5178086))

(declare-fun b!5178089 () Bool)

(declare-fun e!3226365 () Bool)

(declare-fun tp!1452352 () Bool)

(assert (=> b!5178089 (= e!3226365 tp!1452352)))

(declare-fun b!5178087 () Bool)

(assert (=> b!5178087 (= e!3226365 tp_is_empty!38567)))

(declare-fun b!5178088 () Bool)

(declare-fun tp!1452350 () Bool)

(declare-fun tp!1452353 () Bool)

(assert (=> b!5178088 (= e!3226365 (and tp!1452350 tp!1452353))))

(assert (=> b!5177275 (= tp!1452252 e!3226365)))

(declare-fun b!5178090 () Bool)

(declare-fun tp!1452354 () Bool)

(declare-fun tp!1452351 () Bool)

(assert (=> b!5178090 (= e!3226365 (and tp!1452354 tp!1452351))))

(assert (= (and b!5177275 ((_ is ElementMatch!14657) (regOne!29826 (h!66612 (exprs!4541 setElem!32333))))) b!5178087))

(assert (= (and b!5177275 ((_ is Concat!23502) (regOne!29826 (h!66612 (exprs!4541 setElem!32333))))) b!5178088))

(assert (= (and b!5177275 ((_ is Star!14657) (regOne!29826 (h!66612 (exprs!4541 setElem!32333))))) b!5178089))

(assert (= (and b!5177275 ((_ is Union!14657) (regOne!29826 (h!66612 (exprs!4541 setElem!32333))))) b!5178090))

(declare-fun b!5178093 () Bool)

(declare-fun e!3226366 () Bool)

(declare-fun tp!1452357 () Bool)

(assert (=> b!5178093 (= e!3226366 tp!1452357)))

(declare-fun b!5178091 () Bool)

(assert (=> b!5178091 (= e!3226366 tp_is_empty!38567)))

(declare-fun b!5178092 () Bool)

(declare-fun tp!1452355 () Bool)

(declare-fun tp!1452358 () Bool)

(assert (=> b!5178092 (= e!3226366 (and tp!1452355 tp!1452358))))

(assert (=> b!5177275 (= tp!1452255 e!3226366)))

(declare-fun b!5178094 () Bool)

(declare-fun tp!1452359 () Bool)

(declare-fun tp!1452356 () Bool)

(assert (=> b!5178094 (= e!3226366 (and tp!1452359 tp!1452356))))

(assert (= (and b!5177275 ((_ is ElementMatch!14657) (regTwo!29826 (h!66612 (exprs!4541 setElem!32333))))) b!5178091))

(assert (= (and b!5177275 ((_ is Concat!23502) (regTwo!29826 (h!66612 (exprs!4541 setElem!32333))))) b!5178092))

(assert (= (and b!5177275 ((_ is Star!14657) (regTwo!29826 (h!66612 (exprs!4541 setElem!32333))))) b!5178093))

(assert (= (and b!5177275 ((_ is Union!14657) (regTwo!29826 (h!66612 (exprs!4541 setElem!32333))))) b!5178094))

(declare-fun b!5178097 () Bool)

(declare-fun e!3226367 () Bool)

(declare-fun tp!1452362 () Bool)

(assert (=> b!5178097 (= e!3226367 tp!1452362)))

(declare-fun b!5178095 () Bool)

(assert (=> b!5178095 (= e!3226367 tp_is_empty!38567)))

(declare-fun b!5178096 () Bool)

(declare-fun tp!1452360 () Bool)

(declare-fun tp!1452363 () Bool)

(assert (=> b!5178096 (= e!3226367 (and tp!1452360 tp!1452363))))

(assert (=> b!5177276 (= tp!1452254 e!3226367)))

(declare-fun b!5178098 () Bool)

(declare-fun tp!1452364 () Bool)

(declare-fun tp!1452361 () Bool)

(assert (=> b!5178098 (= e!3226367 (and tp!1452364 tp!1452361))))

(assert (= (and b!5177276 ((_ is ElementMatch!14657) (reg!14986 (h!66612 (exprs!4541 setElem!32333))))) b!5178095))

(assert (= (and b!5177276 ((_ is Concat!23502) (reg!14986 (h!66612 (exprs!4541 setElem!32333))))) b!5178096))

(assert (= (and b!5177276 ((_ is Star!14657) (reg!14986 (h!66612 (exprs!4541 setElem!32333))))) b!5178097))

(assert (= (and b!5177276 ((_ is Union!14657) (reg!14986 (h!66612 (exprs!4541 setElem!32333))))) b!5178098))

(declare-fun b!5178099 () Bool)

(declare-fun e!3226368 () Bool)

(declare-fun tp!1452365 () Bool)

(assert (=> b!5178099 (= e!3226368 (and tp_is_empty!38567 tp!1452365))))

(assert (=> b!5177288 (= tp!1452273 e!3226368)))

(assert (= (and b!5177288 ((_ is Cons!60163) (t!373440 (t!373440 (t!373440 testedP!294))))) b!5178099))

(declare-fun b!5178102 () Bool)

(declare-fun e!3226369 () Bool)

(declare-fun tp!1452368 () Bool)

(assert (=> b!5178102 (= e!3226369 tp!1452368)))

(declare-fun b!5178100 () Bool)

(assert (=> b!5178100 (= e!3226369 tp_is_empty!38567)))

(declare-fun b!5178101 () Bool)

(declare-fun tp!1452366 () Bool)

(declare-fun tp!1452369 () Bool)

(assert (=> b!5178101 (= e!3226369 (and tp!1452366 tp!1452369))))

(assert (=> b!5177284 (= tp!1452266 e!3226369)))

(declare-fun b!5178103 () Bool)

(declare-fun tp!1452370 () Bool)

(declare-fun tp!1452367 () Bool)

(assert (=> b!5178103 (= e!3226369 (and tp!1452370 tp!1452367))))

(assert (= (and b!5177284 ((_ is ElementMatch!14657) (regOne!29826 (h!66612 (exprs!4541 setElem!32334))))) b!5178100))

(assert (= (and b!5177284 ((_ is Concat!23502) (regOne!29826 (h!66612 (exprs!4541 setElem!32334))))) b!5178101))

(assert (= (and b!5177284 ((_ is Star!14657) (regOne!29826 (h!66612 (exprs!4541 setElem!32334))))) b!5178102))

(assert (= (and b!5177284 ((_ is Union!14657) (regOne!29826 (h!66612 (exprs!4541 setElem!32334))))) b!5178103))

(declare-fun b!5178106 () Bool)

(declare-fun e!3226370 () Bool)

(declare-fun tp!1452373 () Bool)

(assert (=> b!5178106 (= e!3226370 tp!1452373)))

(declare-fun b!5178104 () Bool)

(assert (=> b!5178104 (= e!3226370 tp_is_empty!38567)))

(declare-fun b!5178105 () Bool)

(declare-fun tp!1452371 () Bool)

(declare-fun tp!1452374 () Bool)

(assert (=> b!5178105 (= e!3226370 (and tp!1452371 tp!1452374))))

(assert (=> b!5177284 (= tp!1452269 e!3226370)))

(declare-fun b!5178107 () Bool)

(declare-fun tp!1452375 () Bool)

(declare-fun tp!1452372 () Bool)

(assert (=> b!5178107 (= e!3226370 (and tp!1452375 tp!1452372))))

(assert (= (and b!5177284 ((_ is ElementMatch!14657) (regTwo!29826 (h!66612 (exprs!4541 setElem!32334))))) b!5178104))

(assert (= (and b!5177284 ((_ is Concat!23502) (regTwo!29826 (h!66612 (exprs!4541 setElem!32334))))) b!5178105))

(assert (= (and b!5177284 ((_ is Star!14657) (regTwo!29826 (h!66612 (exprs!4541 setElem!32334))))) b!5178106))

(assert (= (and b!5177284 ((_ is Union!14657) (regTwo!29826 (h!66612 (exprs!4541 setElem!32334))))) b!5178107))

(declare-fun b!5178110 () Bool)

(declare-fun e!3226371 () Bool)

(declare-fun tp!1452378 () Bool)

(assert (=> b!5178110 (= e!3226371 tp!1452378)))

(declare-fun b!5178108 () Bool)

(assert (=> b!5178108 (= e!3226371 tp_is_empty!38567)))

(declare-fun b!5178109 () Bool)

(declare-fun tp!1452376 () Bool)

(declare-fun tp!1452379 () Bool)

(assert (=> b!5178109 (= e!3226371 (and tp!1452376 tp!1452379))))

(assert (=> b!5177277 (= tp!1452256 e!3226371)))

(declare-fun b!5178111 () Bool)

(declare-fun tp!1452380 () Bool)

(declare-fun tp!1452377 () Bool)

(assert (=> b!5178111 (= e!3226371 (and tp!1452380 tp!1452377))))

(assert (= (and b!5177277 ((_ is ElementMatch!14657) (regOne!29827 (h!66612 (exprs!4541 setElem!32333))))) b!5178108))

(assert (= (and b!5177277 ((_ is Concat!23502) (regOne!29827 (h!66612 (exprs!4541 setElem!32333))))) b!5178109))

(assert (= (and b!5177277 ((_ is Star!14657) (regOne!29827 (h!66612 (exprs!4541 setElem!32333))))) b!5178110))

(assert (= (and b!5177277 ((_ is Union!14657) (regOne!29827 (h!66612 (exprs!4541 setElem!32333))))) b!5178111))

(declare-fun b!5178114 () Bool)

(declare-fun e!3226372 () Bool)

(declare-fun tp!1452383 () Bool)

(assert (=> b!5178114 (= e!3226372 tp!1452383)))

(declare-fun b!5178112 () Bool)

(assert (=> b!5178112 (= e!3226372 tp_is_empty!38567)))

(declare-fun b!5178113 () Bool)

(declare-fun tp!1452381 () Bool)

(declare-fun tp!1452384 () Bool)

(assert (=> b!5178113 (= e!3226372 (and tp!1452381 tp!1452384))))

(assert (=> b!5177277 (= tp!1452253 e!3226372)))

(declare-fun b!5178115 () Bool)

(declare-fun tp!1452385 () Bool)

(declare-fun tp!1452382 () Bool)

(assert (=> b!5178115 (= e!3226372 (and tp!1452385 tp!1452382))))

(assert (= (and b!5177277 ((_ is ElementMatch!14657) (regTwo!29827 (h!66612 (exprs!4541 setElem!32333))))) b!5178112))

(assert (= (and b!5177277 ((_ is Concat!23502) (regTwo!29827 (h!66612 (exprs!4541 setElem!32333))))) b!5178113))

(assert (= (and b!5177277 ((_ is Star!14657) (regTwo!29827 (h!66612 (exprs!4541 setElem!32333))))) b!5178114))

(assert (= (and b!5177277 ((_ is Union!14657) (regTwo!29827 (h!66612 (exprs!4541 setElem!32333))))) b!5178115))

(declare-fun condSetEmpty!32351 () Bool)

(assert (=> setNonEmpty!32344 (= condSetEmpty!32351 (= setRest!32344 ((as const (Array Context!8082 Bool)) false)))))

(declare-fun setRes!32351 () Bool)

(assert (=> setNonEmpty!32344 (= tp!1452264 setRes!32351)))

(declare-fun setIsEmpty!32351 () Bool)

(assert (=> setIsEmpty!32351 setRes!32351))

(declare-fun setElem!32351 () Context!8082)

(declare-fun setNonEmpty!32351 () Bool)

(declare-fun e!3226373 () Bool)

(declare-fun tp!1452386 () Bool)

(assert (=> setNonEmpty!32351 (= setRes!32351 (and tp!1452386 (inv!79889 setElem!32351) e!3226373))))

(declare-fun setRest!32351 () (InoxSet Context!8082))

(assert (=> setNonEmpty!32351 (= setRest!32344 ((_ map or) (store ((as const (Array Context!8082 Bool)) false) setElem!32351 true) setRest!32351))))

(declare-fun b!5178116 () Bool)

(declare-fun tp!1452387 () Bool)

(assert (=> b!5178116 (= e!3226373 tp!1452387)))

(assert (= (and setNonEmpty!32344 condSetEmpty!32351) setIsEmpty!32351))

(assert (= (and setNonEmpty!32344 (not condSetEmpty!32351)) setNonEmpty!32351))

(assert (= setNonEmpty!32351 b!5178116))

(declare-fun m!6235170 () Bool)

(assert (=> setNonEmpty!32351 m!6235170))

(declare-fun b!5178119 () Bool)

(declare-fun e!3226374 () Bool)

(declare-fun tp!1452390 () Bool)

(assert (=> b!5178119 (= e!3226374 tp!1452390)))

(declare-fun b!5178117 () Bool)

(assert (=> b!5178117 (= e!3226374 tp_is_empty!38567)))

(declare-fun b!5178118 () Bool)

(declare-fun tp!1452388 () Bool)

(declare-fun tp!1452391 () Bool)

(assert (=> b!5178118 (= e!3226374 (and tp!1452388 tp!1452391))))

(assert (=> b!5177281 (= tp!1452262 e!3226374)))

(declare-fun b!5178120 () Bool)

(declare-fun tp!1452392 () Bool)

(declare-fun tp!1452389 () Bool)

(assert (=> b!5178120 (= e!3226374 (and tp!1452392 tp!1452389))))

(assert (= (and b!5177281 ((_ is ElementMatch!14657) (h!66612 (exprs!4541 setElem!32338)))) b!5178117))

(assert (= (and b!5177281 ((_ is Concat!23502) (h!66612 (exprs!4541 setElem!32338)))) b!5178118))

(assert (= (and b!5177281 ((_ is Star!14657) (h!66612 (exprs!4541 setElem!32338)))) b!5178119))

(assert (= (and b!5177281 ((_ is Union!14657) (h!66612 (exprs!4541 setElem!32338)))) b!5178120))

(declare-fun b!5178121 () Bool)

(declare-fun e!3226375 () Bool)

(declare-fun tp!1452393 () Bool)

(declare-fun tp!1452394 () Bool)

(assert (=> b!5178121 (= e!3226375 (and tp!1452393 tp!1452394))))

(assert (=> b!5177281 (= tp!1452263 e!3226375)))

(assert (= (and b!5177281 ((_ is Cons!60164) (t!373441 (exprs!4541 setElem!32338)))) b!5178121))

(declare-fun b!5178124 () Bool)

(declare-fun e!3226376 () Bool)

(declare-fun tp!1452397 () Bool)

(assert (=> b!5178124 (= e!3226376 tp!1452397)))

(declare-fun b!5178122 () Bool)

(assert (=> b!5178122 (= e!3226376 tp_is_empty!38567)))

(declare-fun b!5178123 () Bool)

(declare-fun tp!1452395 () Bool)

(declare-fun tp!1452398 () Bool)

(assert (=> b!5178123 (= e!3226376 (and tp!1452395 tp!1452398))))

(assert (=> b!5177285 (= tp!1452268 e!3226376)))

(declare-fun b!5178125 () Bool)

(declare-fun tp!1452399 () Bool)

(declare-fun tp!1452396 () Bool)

(assert (=> b!5178125 (= e!3226376 (and tp!1452399 tp!1452396))))

(assert (= (and b!5177285 ((_ is ElementMatch!14657) (reg!14986 (h!66612 (exprs!4541 setElem!32334))))) b!5178122))

(assert (= (and b!5177285 ((_ is Concat!23502) (reg!14986 (h!66612 (exprs!4541 setElem!32334))))) b!5178123))

(assert (= (and b!5177285 ((_ is Star!14657) (reg!14986 (h!66612 (exprs!4541 setElem!32334))))) b!5178124))

(assert (= (and b!5177285 ((_ is Union!14657) (reg!14986 (h!66612 (exprs!4541 setElem!32334))))) b!5178125))

(declare-fun b!5178126 () Bool)

(declare-fun e!3226377 () Bool)

(declare-fun tp!1452400 () Bool)

(declare-fun tp!1452401 () Bool)

(assert (=> b!5178126 (= e!3226377 (and tp!1452400 tp!1452401))))

(assert (=> b!5177282 (= tp!1452265 e!3226377)))

(assert (= (and b!5177282 ((_ is Cons!60164) (exprs!4541 setElem!32344))) b!5178126))

(declare-fun b_lambda!201001 () Bool)

(assert (= b_lambda!200997 (or d!1671504 b_lambda!201001)))

(declare-fun bs!1205712 () Bool)

(declare-fun d!1672642 () Bool)

(assert (= bs!1205712 (and d!1672642 d!1671504)))

(assert (=> bs!1205712 (= (dynLambda!23882 lambda!258580 (h!66612 (t!373441 (exprs!4541 setElem!32333)))) (validRegex!6407 (h!66612 (t!373441 (exprs!4541 setElem!32333)))))))

(declare-fun m!6235172 () Bool)

(assert (=> bs!1205712 m!6235172))

(assert (=> b!5177912 d!1672642))

(declare-fun b_lambda!201003 () Bool)

(assert (= b_lambda!200995 (or d!1671554 b_lambda!201003)))

(declare-fun bs!1205713 () Bool)

(declare-fun d!1672644 () Bool)

(assert (= bs!1205713 (and d!1672644 d!1671554)))

(assert (=> bs!1205713 (= (dynLambda!23882 lambda!258593 (h!66612 (t!373441 (exprs!4541 setElem!32334)))) (validRegex!6407 (h!66612 (t!373441 (exprs!4541 setElem!32334)))))))

(declare-fun m!6235174 () Bool)

(assert (=> bs!1205713 m!6235174))

(assert (=> b!5177607 d!1672644))

(declare-fun b_lambda!201005 () Bool)

(assert (= b_lambda!200993 (or d!1671768 b_lambda!201005)))

(declare-fun bs!1205714 () Bool)

(declare-fun d!1672646 () Bool)

(assert (= bs!1205714 (and d!1672646 d!1671768)))

(assert (=> bs!1205714 (= (dynLambda!23882 lambda!258621 (h!66612 (exprs!4541 setElem!32338))) (validRegex!6407 (h!66612 (exprs!4541 setElem!32338))))))

(declare-fun m!6235176 () Bool)

(assert (=> bs!1205714 m!6235176))

(assert (=> b!5177579 d!1672646))

(declare-fun b_lambda!201007 () Bool)

(assert (= b_lambda!200999 (or d!1671862 b_lambda!201007)))

(declare-fun bs!1205715 () Bool)

(declare-fun d!1672648 () Bool)

(assert (= bs!1205715 (and d!1672648 d!1671862)))

(assert (=> bs!1205715 (= (dynLambda!23882 lambda!258627 (h!66612 (exprs!4541 setElem!32337))) (validRegex!6407 (h!66612 (exprs!4541 setElem!32337))))))

(declare-fun m!6235178 () Bool)

(assert (=> bs!1205715 m!6235178))

(assert (=> b!5177932 d!1672648))

(check-sat (not d!1672566) (not b!5178080) (not b!5177865) (not bm!363812) (not b!5178000) (not d!1672444) (not b!5178045) (not d!1672274) (not b!5177754) (not b!5177610) (not b!5177742) (not b!5178056) (not d!1672502) (not b!5178092) (not b!5177667) (not b!5178009) (not d!1672548) (not b!5177746) (not b!5177623) (not b!5178073) (not b!5177994) (not d!1672158) (not b!5177776) (not d!1672044) (not b!5178054) (not b!5177784) (not b!5178123) (not d!1672118) (not bm!363852) (not d!1672496) (not d!1672402) (not b!5177735) (not d!1672206) (not bm!363818) (not b!5177885) (not b!5177528) (not b!5178119) (not b!5177730) (not b!5177727) (not d!1672504) (not b!5178013) (not b!5177739) (not b!5177521) (not b!5177561) (not b!5177692) (not b!5178107) (not b!5177992) (not d!1672232) (not bm!363820) (not b!5177987) (not d!1672424) (not b!5177608) (not b!5177585) (not b!5177593) (not b!5177982) (not d!1672240) (not b!5177644) (not b!5178116) (not b!5177867) (not b!5177527) (not b_lambda!201003) (not d!1672606) (not b!5177622) (not b!5177716) (not bm!363806) (not b!5178062) (not d!1672080) (not b!5177756) (not d!1672094) (not b!5178034) (not b!5177911) (not d!1672052) (not b!5177937) (not b!5177910) (not d!1672494) (not b!5178077) (not b!5177929) (not b!5177533) (not bm!363825) (not d!1672364) (not b!5177925) (not b!5177702) (not d!1672576) (not d!1672100) (not d!1672524) (not b!5177952) (not b!5178075) (not b!5177710) (not b!5177788) (not b!5178014) (not b!5177913) (not bm!363813) (not b!5178079) (not b!5177744) (not b!5177780) (not b!5178102) (not b!5177463) (not b_lambda!201005) (not b!5178063) (not d!1672096) (not b!5177790) (not d!1672272) (not b!5177708) (not b!5177951) (not b!5177969) (not b!5177905) (not d!1672512) (not b!5177477) (not b!5177627) (not d!1672528) (not b!5177747) (not d!1672500) (not b!5178074) (not b!5178022) (not b!5177515) (not d!1672204) (not b!5177841) (not b!5178110) (not d!1672178) (not d!1672088) (not bm!363804) (not b!5177782) (not b!5177614) (not b!5177626) (not b!5178071) (not b!5177958) (not b!5177595) (not b!5177927) (not d!1672596) (not d!1672032) (not b!5178106) (not b!5178121) (not b!5178124) (not b!5177968) (not bs!1205713) (not b!5177636) (not b!5177893) (not b!5177827) (not b!5178084) (not b!5178094) (not b!5177899) (not b!5177846) (not b!5177822) (not b!5178038) (not d!1672292) (not b_lambda!201007) (not b!5177465) (not d!1672404) (not d!1672324) (not bm!363829) (not b!5178018) (not b!5178005) (not b!5177549) (not b!5177732) (not b!5177696) (not bm!363830) (not b!5177478) (not b!5177731) (not b!5177553) (not b!5177941) (not b!5177777) (not b!5177718) (not b!5177918) (not b!5177986) (not d!1672352) (not b!5177487) (not d!1672530) (not d!1672544) (not d!1672104) (not b!5178050) (not b!5178083) (not b!5177876) (not b!5177933) (not d!1672386) (not b!5177909) (not d!1672110) (not b!5177857) (not d!1672598) (not b!5177889) (not b!5177682) (not b!5177656) (not d!1672534) (not d!1672458) (not b!5177672) (not b!5177674) (not b!5177823) (not b!5177700) (not b!5178004) (not b!5177618) (not b!5177505) (not b!5177680) (not b!5177546) (not b!5178064) (not b!5177723) (not b!5177970) (not d!1672564) (not d!1672136) (not b!5177555) (not bm!363832) (not b!5177972) (not b!5178036) (not d!1672098) (not b!5177532) (not d!1672518) (not b!5177461) (not b!5178040) (not b!5177545) (not d!1672316) (not d!1672024) (not b!5177562) (not b!5178105) (not b!5177854) (not b!5178031) (not b!5177576) (not d!1672594) (not b!5177568) (not b_lambda!201001) (not d!1672542) (not b!5178089) (not b_lambda!200983) (not b!5178012) (not bm!363848) (not b!5177566) (not b!5177758) (not b!5177599) (not b!5177916) (not b_lambda!200985) (not b!5177714) (not b!5177615) (not bm!363823) (not b!5177825) (not b!5177871) (not d!1672294) (not b!5178101) (not b!5177489) (not d!1672318) (not b!5177915) (not b!5178023) (not bm!363811) (not b!5178070) (not d!1672268) (not bm!363803) (not b!5177764) (not b!5177765) (not d!1672560) (not b!5177750) (not b!5177738) (not b!5177684) (not d!1672330) (not d!1672578) (not b!5177517) (not b!5177978) (not b!5178120) (not d!1672230) (not b!5177769) (not b!5178078) (not b!5177474) (not b!5178001) (not d!1672592) (not b!5177632) (not b!5177908) (not b!5177678) (not b!5177539) (not b!5178113) (not d!1672570) (not d!1672126) (not b!5177843) (not b!5177721) (not b!5178086) (not b!5177966) (not d!1672298) (not b!5177896) (not b!5178068) (not b!5177751) (not d!1672322) (not d!1672394) (not b!5177849) (not b!5177630) (not b!5177513) (not b!5177541) (not b!5177956) (not bs!1205715) (not b!5177518) (not b!5177726) (not d!1672608) tp_is_empty!38567 (not b!5178090) (not d!1672492) (not b!5178088) (not d!1672030) (not d!1672180) (not b!5177522) (not b!5177877) (not b!5177831) (not d!1672278) (not b!5177939) (not b!5177856) (not d!1672092) (not bm!363827) (not b!5177578) (not bs!1205714) (not b!5177996) (not b!5177839) (not bm!363821) (not b!5177580) (not b!5177923) (not b!5177946) (not d!1672342) (not d!1672184) (not d!1672148) (not b!5177892) (not b!5178072) (not b!5178052) (not b!5177901) (not b!5177503) (not b!5177640) (not b!5178109) (not d!1672390) (not b!5177535) (not bm!363815) (not bm!363816) (not bm!363810) (not b!5177499) (not d!1672550) (not b!5178058) (not d!1672546) (not b!5177872) (not b!5177816) (not b!5177574) (not d!1672284) (not b!5178082) (not b!5177772) (not b!5177975) (not bm!363845) (not d!1672454) (not bm!363850) (not b!5177604) (not b!5177524) (not b!5177973) (not b!5177537) (not bm!363808) (not b!5177611) (not d!1672248) (not d!1672270) (not b!5177959) (not b!5177945) (not d!1672256) (not b!5178046) (not d!1672572) (not b!5178027) (not bm!363833) (not d!1672218) (not b!5177559) (not b!5178085) (not b!5177724) (not b!5177495) (not b!5177531) (not b!5178099) (not b!5178048) (not b!5178118) (not bs!1205712) (not b!5177490) (not b!5177582) (not b!5178030) (not d!1672574) (not b!5177875) (not b!5177509) (not b!5178093) (not b!5177964) (not b!5177955) (not b!5177694) (not bm!363809) (not b!5177501) (not d!1672604) (not b!5177685) (not b!5177634) (not b!5177466) (not b!5177821) (not d!1672190) (not d!1672040) (not b!5177868) (not b!5177570) (not d!1672462) (not bm!363837) (not bm!363831) (not b!5177979) (not d!1672156) (not b!5178042) (not d!1672510) (not bm!363834) (not b!5177862) (not bm!363824) (not b!5177642) (not b!5177860) (not b!5177818) (not b!5177690) (not d!1672588) (not bm!363838) (not b!5177903) (not b!5177624) (not bm!363822) (not d!1672354) (not b!5177534) (not b!5177705) (not b!5177670) (not b!5177653) (not bm!363817) (not b!5177676) (not b!5178115) (not bm!363814) (not b!5177606) (not b!5178008) (not bm!363826) (not b!5178103) (not b!5177619) (not d!1672208) (not b!5177990) (not d!1672398) (not d!1672406) (not bm!363819) (not b!5177760) (not b!5177931) (not bm!363836) (not b!5178066) (not bm!363835) (not b!5177997) (not b!5178111) (not d!1672416) (not b!5177543) (not d!1672426) (not b!5178098) (not setNonEmpty!32349) (not bm!363849) (not d!1672614) (not d!1672328) (not b!5177983) (not d!1672176) (not d!1672306) (not b!5177845) (not b!5177761) (not b!5177850) (not b!5178016) (not d!1672134) (not b!5177935) (not b!5177704) (not b!5177688) (not b!5177921) (not b!5177497) (not b!5177719) (not b!5177833) (not d!1672396) (not b!5177942) (not bm!363807) (not b!5177507) (not d!1672276) (not b!5177712) (not b!5177837) (not d!1672320) (not b!5177853) (not d!1672408) (not d!1672388) (not b!5177659) (not d!1672086) (not d!1672490) (not b!5177551) (not b!5177584) (not d!1672310) (not d!1672172) (not d!1672116) (not b!5177859) (not b!5177993) (not d!1672188) (not bm!363828) (not b!5177768) (not b!5178044) (not b!5177778) (not b!5177658) (not b!5178026) (not b!5177752) (not b!5177785) (not b!5177835) (not b!5177602) (not b!5178096) (not d!1672042) (not b!5177638) (not b!5177491) (not b!5177888) (not b!5177598) (not b!5177484) (not bm!363847) (not b!5178097) (not setNonEmpty!32351) (not d!1672536) (not b!5178125) (not b!5177962) (not b!5177988) (not b!5177511) (not b!5178019) (not b!5177861) (not b!5177773) (not b!5177734) (not bm!363805) (not b!5177900) (not b!5177698) (not b!5177557) (not d!1672418) (not d!1672382) (not d!1672028) (not setNonEmpty!32350) (not d!1672516) (not b!5178114) (not d!1672480) (not b!5178126) (not b!5177949) (not b!5177907) (not b!5177572) (not d!1672286) (not d!1672442) (not b!5177829) (not d!1672162) (not b!5178060) (not d!1672632) (not b!5177645) (not b!5178067) (not d!1672446))
(check-sat)
