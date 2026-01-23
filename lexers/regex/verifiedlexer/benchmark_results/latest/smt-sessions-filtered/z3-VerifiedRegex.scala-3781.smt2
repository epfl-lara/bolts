; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210986 () Bool)

(assert start!210986)

(declare-fun b!2174550 () Bool)

(declare-fun e!1390643 () Bool)

(declare-fun e!1390637 () Bool)

(assert (=> b!2174550 (= e!1390643 e!1390637)))

(declare-fun res!935714 () Bool)

(assert (=> b!2174550 (=> res!935714 e!1390637)))

(declare-fun lt!811108 () Int)

(declare-datatypes ((C!12204 0))(
  ( (C!12205 (val!7088 Int)) )
))
(declare-datatypes ((List!25300 0))(
  ( (Nil!25216) (Cons!25216 (h!30617 C!12204) (t!197868 List!25300)) )
))
(declare-datatypes ((IArray!16335 0))(
  ( (IArray!16336 (innerList!8225 List!25300)) )
))
(declare-datatypes ((Conc!8165 0))(
  ( (Node!8165 (left!19362 Conc!8165) (right!19692 Conc!8165) (csize!16560 Int) (cheight!8376 Int)) (Leaf!11947 (xs!11107 IArray!16335) (csize!16561 Int)) (Empty!8165) )
))
(declare-datatypes ((BalanceConc!16092 0))(
  ( (BalanceConc!16093 (c!344792 Conc!8165)) )
))
(declare-datatypes ((tuple2!24990 0))(
  ( (tuple2!24991 (_1!14865 BalanceConc!16092) (_2!14865 BalanceConc!16092)) )
))
(declare-fun lt!811106 () tuple2!24990)

(declare-fun size!19700 (BalanceConc!16092) Int)

(assert (=> b!2174550 (= res!935714 (<= lt!811108 (size!19700 (_1!14865 lt!811106))))))

(declare-datatypes ((tuple2!24992 0))(
  ( (tuple2!24993 (_1!14866 List!25300) (_2!14866 List!25300)) )
))
(declare-fun lt!811097 () tuple2!24992)

(declare-fun size!19701 (List!25300) Int)

(assert (=> b!2174550 (= lt!811108 (size!19701 (_1!14866 lt!811097)))))

(declare-datatypes ((Regex!6029 0))(
  ( (ElementMatch!6029 (c!344793 C!12204)) (Concat!10331 (regOne!12570 Regex!6029) (regTwo!12570 Regex!6029)) (EmptyExpr!6029) (Star!6029 (reg!6358 Regex!6029)) (EmptyLang!6029) (Union!6029 (regOne!12571 Regex!6029) (regTwo!12571 Regex!6029)) )
))
(declare-fun r!12534 () Regex!6029)

(declare-fun lt!811113 () List!25300)

(declare-fun lt!811107 () Bool)

(declare-fun matchR!2778 (Regex!6029 List!25300) Bool)

(assert (=> b!2174550 (= (matchR!2778 r!12534 lt!811113) lt!811107)))

(declare-datatypes ((List!25301 0))(
  ( (Nil!25217) (Cons!25217 (h!30618 Regex!6029) (t!197869 List!25301)) )
))
(declare-datatypes ((Context!3198 0))(
  ( (Context!3199 (exprs!2099 List!25301)) )
))
(declare-datatypes ((List!25302 0))(
  ( (Nil!25218) (Cons!25218 (h!30619 Context!3198) (t!197870 List!25302)) )
))
(declare-fun lt!811098 () List!25302)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4055 () (InoxSet Context!3198))

(declare-datatypes ((Unit!38283 0))(
  ( (Unit!38284) )
))
(declare-fun lt!811088 () Unit!38283)

(declare-fun theoremZipperRegexEquiv!55 ((InoxSet Context!3198) List!25302 Regex!6029 List!25300) Unit!38283)

(assert (=> b!2174550 (= lt!811088 (theoremZipperRegexEquiv!55 z!4055 lt!811098 r!12534 lt!811113))))

(declare-fun lt!811116 () Bool)

(declare-fun matchZipper!145 ((InoxSet Context!3198) List!25300) Bool)

(assert (=> b!2174550 (= lt!811116 (matchZipper!145 z!4055 (_1!14866 lt!811097)))))

(declare-fun lt!811096 () Unit!38283)

(assert (=> b!2174550 (= lt!811096 (theoremZipperRegexEquiv!55 z!4055 lt!811098 r!12534 (_1!14866 lt!811097)))))

(declare-fun b!2174551 () Bool)

(declare-fun e!1390642 () Bool)

(declare-fun lt!811102 () tuple2!24992)

(assert (=> b!2174551 (= e!1390642 (matchR!2778 r!12534 (_1!14866 lt!811102)))))

(declare-fun b!2174552 () Bool)

(declare-fun e!1390644 () Bool)

(declare-fun e!1390632 () Bool)

(assert (=> b!2174552 (= e!1390644 e!1390632)))

(declare-fun res!935725 () Bool)

(assert (=> b!2174552 (=> (not res!935725) (not e!1390632))))

(declare-fun lt!811091 () List!25300)

(declare-fun lt!811105 () List!25300)

(assert (=> b!2174552 (= res!935725 (= lt!811091 lt!811105))))

(declare-fun lt!811089 () List!25300)

(declare-fun ++!6388 (List!25300 List!25300) List!25300)

(assert (=> b!2174552 (= lt!811091 (++!6388 lt!811113 lt!811089))))

(declare-fun list!9672 (BalanceConc!16092) List!25300)

(assert (=> b!2174552 (= lt!811089 (list!9672 (_2!14865 lt!811106)))))

(assert (=> b!2174552 (= lt!811113 (list!9672 (_1!14865 lt!811106)))))

(declare-fun findLongestMatch!583 (Regex!6029 List!25300) tuple2!24992)

(assert (=> b!2174552 (= lt!811097 (findLongestMatch!583 r!12534 lt!811105))))

(declare-fun lt!811104 () Int)

(declare-fun lt!811103 () Int)

(declare-fun input!5540 () BalanceConc!16092)

(assert (=> b!2174552 (= lt!811104 (- lt!811103 (size!19700 input!5540)))))

(declare-fun totalInput!977 () BalanceConc!16092)

(assert (=> b!2174552 (= lt!811103 (size!19700 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!78 ((InoxSet Context!3198) BalanceConc!16092 BalanceConc!16092) tuple2!24990)

(assert (=> b!2174552 (= lt!811106 (findLongestMatchZipperSequenceV3!78 z!4055 input!5540 totalInput!977))))

(declare-fun b!2174553 () Bool)

(declare-fun e!1390639 () Bool)

(declare-fun e!1390640 () Bool)

(assert (=> b!2174553 (= e!1390639 (not e!1390640))))

(declare-fun res!935717 () Bool)

(assert (=> b!2174553 (=> res!935717 e!1390640)))

(declare-fun e!1390641 () Bool)

(assert (=> b!2174553 (= res!935717 e!1390641)))

(declare-fun res!935713 () Bool)

(assert (=> b!2174553 (=> (not res!935713) (not e!1390641))))

(assert (=> b!2174553 (= res!935713 (not lt!811107))))

(assert (=> b!2174553 (= lt!811107 (matchZipper!145 z!4055 lt!811113))))

(assert (=> b!2174553 e!1390642))

(declare-fun res!935716 () Bool)

(assert (=> b!2174553 (=> res!935716 e!1390642)))

(declare-fun isEmpty!14471 (List!25300) Bool)

(assert (=> b!2174553 (= res!935716 (isEmpty!14471 (_1!14866 lt!811102)))))

(declare-fun findLongestMatchInner!654 (Regex!6029 List!25300 Int List!25300 List!25300 Int) tuple2!24992)

(assert (=> b!2174553 (= lt!811102 (findLongestMatchInner!654 r!12534 Nil!25216 (size!19701 Nil!25216) lt!811105 lt!811105 (size!19701 lt!811105)))))

(declare-fun lt!811093 () Unit!38283)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!627 (Regex!6029 List!25300) Unit!38283)

(assert (=> b!2174553 (= lt!811093 (longestMatchIsAcceptedByMatchOrIsEmpty!627 r!12534 lt!811105))))

(declare-fun e!1390631 () Bool)

(assert (=> b!2174553 e!1390631))

(declare-fun res!935719 () Bool)

(assert (=> b!2174553 (=> res!935719 e!1390631)))

(declare-fun lt!811095 () Int)

(assert (=> b!2174553 (= res!935719 (<= lt!811095 0))))

(declare-fun lt!811101 () Int)

(declare-fun furthestNullablePosition!211 ((InoxSet Context!3198) Int BalanceConc!16092 Int Int) Int)

(assert (=> b!2174553 (= lt!811095 (+ 1 (- (furthestNullablePosition!211 z!4055 lt!811104 totalInput!977 lt!811103 lt!811101) lt!811104)))))

(declare-fun lt!811094 () Unit!38283)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!52 ((InoxSet Context!3198) Int BalanceConc!16092 Int) Unit!38283)

(assert (=> b!2174553 (= lt!811094 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!52 z!4055 lt!811104 totalInput!977 lt!811101))))

(declare-fun e!1390635 () Int)

(assert (=> b!2174553 (= lt!811101 e!1390635)))

(declare-fun c!344791 () Bool)

(declare-fun nullableZipper!309 ((InoxSet Context!3198)) Bool)

(assert (=> b!2174553 (= c!344791 (nullableZipper!309 z!4055))))

(declare-fun lt!811092 () List!25300)

(declare-fun isPrefix!2145 (List!25300 List!25300) Bool)

(declare-fun take!237 (List!25300 Int) List!25300)

(assert (=> b!2174553 (isPrefix!2145 (take!237 lt!811092 lt!811104) lt!811092)))

(declare-fun lt!811099 () Unit!38283)

(declare-fun lemmaTakeIsPrefix!60 (List!25300 Int) Unit!38283)

(assert (=> b!2174553 (= lt!811099 (lemmaTakeIsPrefix!60 lt!811092 lt!811104))))

(declare-fun lt!811112 () List!25300)

(assert (=> b!2174553 (isPrefix!2145 (_1!14866 lt!811097) lt!811112)))

(declare-fun lt!811100 () Unit!38283)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1428 (List!25300 List!25300) Unit!38283)

(assert (=> b!2174553 (= lt!811100 (lemmaConcatTwoListThenFirstIsPrefix!1428 (_1!14866 lt!811097) (_2!14866 lt!811097)))))

(assert (=> b!2174553 (isPrefix!2145 lt!811113 lt!811091)))

(declare-fun lt!811115 () Unit!38283)

(assert (=> b!2174553 (= lt!811115 (lemmaConcatTwoListThenFirstIsPrefix!1428 lt!811113 lt!811089))))

(declare-fun setRes!18262 () Bool)

(declare-fun setNonEmpty!18262 () Bool)

(declare-fun e!1390634 () Bool)

(declare-fun tp!678620 () Bool)

(declare-fun setElem!18262 () Context!3198)

(declare-fun inv!33489 (Context!3198) Bool)

(assert (=> setNonEmpty!18262 (= setRes!18262 (and tp!678620 (inv!33489 setElem!18262) e!1390634))))

(declare-fun setRest!18262 () (InoxSet Context!3198))

(assert (=> setNonEmpty!18262 (= z!4055 ((_ map or) (store ((as const (Array Context!3198 Bool)) false) setElem!18262 true) setRest!18262))))

(declare-fun b!2174554 () Bool)

(declare-fun e!1390638 () Bool)

(declare-fun e!1390645 () Bool)

(assert (=> b!2174554 (= e!1390638 e!1390645)))

(declare-fun res!935715 () Bool)

(assert (=> b!2174554 (=> (not res!935715) (not e!1390645))))

(declare-fun unfocusZipper!136 (List!25302) Regex!6029)

(assert (=> b!2174554 (= res!935715 (= (unfocusZipper!136 lt!811098) r!12534))))

(declare-fun toList!1212 ((InoxSet Context!3198)) List!25302)

(assert (=> b!2174554 (= lt!811098 (toList!1212 z!4055))))

(declare-fun b!2174555 () Bool)

(assert (=> b!2174555 (= e!1390645 e!1390644)))

(declare-fun res!935722 () Bool)

(assert (=> b!2174555 (=> (not res!935722) (not e!1390644))))

(declare-fun isSuffix!696 (List!25300 List!25300) Bool)

(assert (=> b!2174555 (= res!935722 (isSuffix!696 lt!811105 lt!811092))))

(assert (=> b!2174555 (= lt!811092 (list!9672 totalInput!977))))

(assert (=> b!2174555 (= lt!811105 (list!9672 input!5540))))

(declare-fun b!2174556 () Bool)

(declare-fun isEmpty!14472 (BalanceConc!16092) Bool)

(assert (=> b!2174556 (= e!1390641 (not (isEmpty!14472 (_1!14865 lt!811106))))))

(declare-fun b!2174557 () Bool)

(declare-fun e!1390628 () Bool)

(assert (=> b!2174557 (= e!1390628 (not (isEmpty!14471 (_1!14866 lt!811097))))))

(declare-fun b!2174558 () Bool)

(declare-fun e!1390633 () Bool)

(declare-fun tp!678623 () Bool)

(declare-fun inv!33490 (Conc!8165) Bool)

(assert (=> b!2174558 (= e!1390633 (and (inv!33490 (c!344792 totalInput!977)) tp!678623))))

(declare-fun b!2174560 () Bool)

(declare-fun drop!1247 (List!25300 Int) List!25300)

(assert (=> b!2174560 (= e!1390631 (matchZipper!145 z!4055 (take!237 (drop!1247 lt!811092 lt!811104) lt!811095)))))

(declare-fun b!2174561 () Bool)

(declare-fun e!1390629 () Bool)

(assert (=> b!2174561 (= e!1390637 e!1390629)))

(declare-fun res!935720 () Bool)

(assert (=> b!2174561 (=> res!935720 e!1390629)))

(declare-fun lt!811090 () List!25300)

(assert (=> b!2174561 (= res!935720 (not (= lt!811090 lt!811105)))))

(declare-fun lt!811111 () List!25300)

(assert (=> b!2174561 (= lt!811111 (take!237 lt!811090 lt!811108))))

(assert (=> b!2174561 (= lt!811090 (drop!1247 lt!811092 lt!811104))))

(declare-fun b!2174562 () Bool)

(declare-fun e!1390636 () Bool)

(declare-fun tp!678622 () Bool)

(declare-fun tp!678626 () Bool)

(assert (=> b!2174562 (= e!1390636 (and tp!678622 tp!678626))))

(declare-fun b!2174563 () Bool)

(assert (=> b!2174563 (= e!1390632 e!1390639)))

(declare-fun res!935718 () Bool)

(assert (=> b!2174563 (=> (not res!935718) (not e!1390639))))

(assert (=> b!2174563 (= res!935718 (= lt!811112 lt!811105))))

(assert (=> b!2174563 (= lt!811112 (++!6388 (_1!14866 lt!811097) (_2!14866 lt!811097)))))

(declare-fun b!2174564 () Bool)

(assert (=> b!2174564 (= e!1390635 (- 1))))

(declare-fun b!2174565 () Bool)

(declare-fun tp_is_empty!9665 () Bool)

(assert (=> b!2174565 (= e!1390636 tp_is_empty!9665)))

(declare-fun b!2174566 () Bool)

(assert (=> b!2174566 (= e!1390640 e!1390643)))

(declare-fun res!935721 () Bool)

(assert (=> b!2174566 (=> res!935721 e!1390643)))

(assert (=> b!2174566 (= res!935721 e!1390628)))

(declare-fun res!935723 () Bool)

(assert (=> b!2174566 (=> (not res!935723) (not e!1390628))))

(assert (=> b!2174566 (= res!935723 (not lt!811116))))

(assert (=> b!2174566 (= lt!811116 (matchR!2778 r!12534 (_1!14866 lt!811097)))))

(declare-fun b!2174567 () Bool)

(declare-fun tp!678624 () Bool)

(declare-fun tp!678628 () Bool)

(assert (=> b!2174567 (= e!1390636 (and tp!678624 tp!678628))))

(declare-fun b!2174568 () Bool)

(declare-fun tp!678627 () Bool)

(assert (=> b!2174568 (= e!1390634 tp!678627)))

(declare-fun b!2174569 () Bool)

(assert (=> b!2174569 (= e!1390635 (- lt!811104 1))))

(declare-fun setIsEmpty!18262 () Bool)

(assert (=> setIsEmpty!18262 setRes!18262))

(declare-fun b!2174559 () Bool)

(declare-fun tp!678621 () Bool)

(assert (=> b!2174559 (= e!1390636 tp!678621)))

(declare-fun res!935724 () Bool)

(assert (=> start!210986 (=> (not res!935724) (not e!1390638))))

(declare-fun validRegex!2305 (Regex!6029) Bool)

(assert (=> start!210986 (= res!935724 (validRegex!2305 r!12534))))

(assert (=> start!210986 e!1390638))

(assert (=> start!210986 e!1390636))

(declare-fun inv!33491 (BalanceConc!16092) Bool)

(assert (=> start!210986 (and (inv!33491 totalInput!977) e!1390633)))

(declare-fun e!1390630 () Bool)

(assert (=> start!210986 (and (inv!33491 input!5540) e!1390630)))

(declare-fun condSetEmpty!18262 () Bool)

(assert (=> start!210986 (= condSetEmpty!18262 (= z!4055 ((as const (Array Context!3198 Bool)) false)))))

(assert (=> start!210986 setRes!18262))

(declare-fun lt!811114 () List!25300)

(declare-fun b!2174570 () Bool)

(assert (=> b!2174570 (= e!1390629 (or (not (= lt!811114 (_1!14866 lt!811097))) (< lt!811104 0) (> lt!811104 lt!811103) (and (>= lt!811108 0) (<= lt!811108 (- lt!811103 lt!811104)))))))

(assert (=> b!2174570 (= lt!811111 (_1!14866 lt!811097))))

(declare-fun lt!811110 () Unit!38283)

(declare-fun lemmaIsPrefixSameLengthThenSameList!357 (List!25300 List!25300 List!25300) Unit!38283)

(assert (=> b!2174570 (= lt!811110 (lemmaIsPrefixSameLengthThenSameList!357 lt!811111 (_1!14866 lt!811097) lt!811105))))

(assert (=> b!2174570 (isPrefix!2145 lt!811114 lt!811105)))

(assert (=> b!2174570 (= lt!811114 (take!237 lt!811105 lt!811108))))

(declare-fun lt!811109 () Unit!38283)

(assert (=> b!2174570 (= lt!811109 (lemmaTakeIsPrefix!60 lt!811105 lt!811108))))

(declare-fun b!2174571 () Bool)

(declare-fun tp!678625 () Bool)

(assert (=> b!2174571 (= e!1390630 (and (inv!33490 (c!344792 input!5540)) tp!678625))))

(assert (= (and start!210986 res!935724) b!2174554))

(assert (= (and b!2174554 res!935715) b!2174555))

(assert (= (and b!2174555 res!935722) b!2174552))

(assert (= (and b!2174552 res!935725) b!2174563))

(assert (= (and b!2174563 res!935718) b!2174553))

(assert (= (and b!2174553 c!344791) b!2174569))

(assert (= (and b!2174553 (not c!344791)) b!2174564))

(assert (= (and b!2174553 (not res!935719)) b!2174560))

(assert (= (and b!2174553 (not res!935716)) b!2174551))

(assert (= (and b!2174553 res!935713) b!2174556))

(assert (= (and b!2174553 (not res!935717)) b!2174566))

(assert (= (and b!2174566 res!935723) b!2174557))

(assert (= (and b!2174566 (not res!935721)) b!2174550))

(assert (= (and b!2174550 (not res!935714)) b!2174561))

(assert (= (and b!2174561 (not res!935720)) b!2174570))

(get-info :version)

(assert (= (and start!210986 ((_ is ElementMatch!6029) r!12534)) b!2174565))

(assert (= (and start!210986 ((_ is Concat!10331) r!12534)) b!2174562))

(assert (= (and start!210986 ((_ is Star!6029) r!12534)) b!2174559))

(assert (= (and start!210986 ((_ is Union!6029) r!12534)) b!2174567))

(assert (= start!210986 b!2174558))

(assert (= start!210986 b!2174571))

(assert (= (and start!210986 condSetEmpty!18262) setIsEmpty!18262))

(assert (= (and start!210986 (not condSetEmpty!18262)) setNonEmpty!18262))

(assert (= setNonEmpty!18262 b!2174568))

(declare-fun m!2616073 () Bool)

(assert (=> b!2174566 m!2616073))

(declare-fun m!2616075 () Bool)

(assert (=> b!2174554 m!2616075))

(declare-fun m!2616077 () Bool)

(assert (=> b!2174554 m!2616077))

(declare-fun m!2616079 () Bool)

(assert (=> b!2174555 m!2616079))

(declare-fun m!2616081 () Bool)

(assert (=> b!2174555 m!2616081))

(declare-fun m!2616083 () Bool)

(assert (=> b!2174555 m!2616083))

(declare-fun m!2616085 () Bool)

(assert (=> b!2174557 m!2616085))

(declare-fun m!2616087 () Bool)

(assert (=> start!210986 m!2616087))

(declare-fun m!2616089 () Bool)

(assert (=> start!210986 m!2616089))

(declare-fun m!2616091 () Bool)

(assert (=> start!210986 m!2616091))

(declare-fun m!2616093 () Bool)

(assert (=> b!2174550 m!2616093))

(declare-fun m!2616095 () Bool)

(assert (=> b!2174550 m!2616095))

(declare-fun m!2616097 () Bool)

(assert (=> b!2174550 m!2616097))

(declare-fun m!2616099 () Bool)

(assert (=> b!2174550 m!2616099))

(declare-fun m!2616101 () Bool)

(assert (=> b!2174550 m!2616101))

(declare-fun m!2616103 () Bool)

(assert (=> b!2174550 m!2616103))

(declare-fun m!2616105 () Bool)

(assert (=> b!2174558 m!2616105))

(declare-fun m!2616107 () Bool)

(assert (=> b!2174561 m!2616107))

(declare-fun m!2616109 () Bool)

(assert (=> b!2174561 m!2616109))

(declare-fun m!2616111 () Bool)

(assert (=> b!2174570 m!2616111))

(declare-fun m!2616113 () Bool)

(assert (=> b!2174570 m!2616113))

(declare-fun m!2616115 () Bool)

(assert (=> b!2174570 m!2616115))

(declare-fun m!2616117 () Bool)

(assert (=> b!2174570 m!2616117))

(assert (=> b!2174560 m!2616109))

(assert (=> b!2174560 m!2616109))

(declare-fun m!2616119 () Bool)

(assert (=> b!2174560 m!2616119))

(assert (=> b!2174560 m!2616119))

(declare-fun m!2616121 () Bool)

(assert (=> b!2174560 m!2616121))

(declare-fun m!2616123 () Bool)

(assert (=> b!2174556 m!2616123))

(declare-fun m!2616125 () Bool)

(assert (=> b!2174551 m!2616125))

(declare-fun m!2616127 () Bool)

(assert (=> b!2174571 m!2616127))

(declare-fun m!2616129 () Bool)

(assert (=> b!2174563 m!2616129))

(declare-fun m!2616131 () Bool)

(assert (=> b!2174552 m!2616131))

(declare-fun m!2616133 () Bool)

(assert (=> b!2174552 m!2616133))

(declare-fun m!2616135 () Bool)

(assert (=> b!2174552 m!2616135))

(declare-fun m!2616137 () Bool)

(assert (=> b!2174552 m!2616137))

(declare-fun m!2616139 () Bool)

(assert (=> b!2174552 m!2616139))

(declare-fun m!2616141 () Bool)

(assert (=> b!2174552 m!2616141))

(declare-fun m!2616143 () Bool)

(assert (=> b!2174552 m!2616143))

(declare-fun m!2616145 () Bool)

(assert (=> setNonEmpty!18262 m!2616145))

(declare-fun m!2616147 () Bool)

(assert (=> b!2174553 m!2616147))

(declare-fun m!2616149 () Bool)

(assert (=> b!2174553 m!2616149))

(declare-fun m!2616151 () Bool)

(assert (=> b!2174553 m!2616151))

(declare-fun m!2616153 () Bool)

(assert (=> b!2174553 m!2616153))

(declare-fun m!2616155 () Bool)

(assert (=> b!2174553 m!2616155))

(declare-fun m!2616157 () Bool)

(assert (=> b!2174553 m!2616157))

(declare-fun m!2616159 () Bool)

(assert (=> b!2174553 m!2616159))

(declare-fun m!2616161 () Bool)

(assert (=> b!2174553 m!2616161))

(declare-fun m!2616163 () Bool)

(assert (=> b!2174553 m!2616163))

(assert (=> b!2174553 m!2616147))

(assert (=> b!2174553 m!2616149))

(declare-fun m!2616165 () Bool)

(assert (=> b!2174553 m!2616165))

(declare-fun m!2616167 () Bool)

(assert (=> b!2174553 m!2616167))

(declare-fun m!2616169 () Bool)

(assert (=> b!2174553 m!2616169))

(assert (=> b!2174553 m!2616157))

(declare-fun m!2616171 () Bool)

(assert (=> b!2174553 m!2616171))

(declare-fun m!2616173 () Bool)

(assert (=> b!2174553 m!2616173))

(declare-fun m!2616175 () Bool)

(assert (=> b!2174553 m!2616175))

(declare-fun m!2616177 () Bool)

(assert (=> b!2174553 m!2616177))

(check-sat tp_is_empty!9665 (not b!2174562) (not b!2174571) (not b!2174550) (not b!2174563) (not start!210986) (not b!2174556) (not b!2174551) (not b!2174570) (not b!2174554) (not b!2174557) (not setNonEmpty!18262) (not b!2174558) (not b!2174553) (not b!2174568) (not b!2174567) (not b!2174552) (not b!2174566) (not b!2174561) (not b!2174559) (not b!2174555) (not b!2174560))
(check-sat)
(get-model)

(declare-fun b!2174662 () Bool)

(declare-fun res!935750 () Bool)

(declare-fun e!1390698 () Bool)

(assert (=> b!2174662 (=> (not res!935750) (not e!1390698))))

(declare-fun lt!811136 () List!25300)

(assert (=> b!2174662 (= res!935750 (= (size!19701 lt!811136) (+ (size!19701 lt!811113) (size!19701 lt!811089))))))

(declare-fun b!2174663 () Bool)

(assert (=> b!2174663 (= e!1390698 (or (not (= lt!811089 Nil!25216)) (= lt!811136 lt!811113)))))

(declare-fun b!2174660 () Bool)

(declare-fun e!1390697 () List!25300)

(assert (=> b!2174660 (= e!1390697 lt!811089)))

(declare-fun d!650862 () Bool)

(assert (=> d!650862 e!1390698))

(declare-fun res!935751 () Bool)

(assert (=> d!650862 (=> (not res!935751) (not e!1390698))))

(declare-fun content!3432 (List!25300) (InoxSet C!12204))

(assert (=> d!650862 (= res!935751 (= (content!3432 lt!811136) ((_ map or) (content!3432 lt!811113) (content!3432 lt!811089))))))

(assert (=> d!650862 (= lt!811136 e!1390697)))

(declare-fun c!344826 () Bool)

(assert (=> d!650862 (= c!344826 ((_ is Nil!25216) lt!811113))))

(assert (=> d!650862 (= (++!6388 lt!811113 lt!811089) lt!811136)))

(declare-fun b!2174661 () Bool)

(assert (=> b!2174661 (= e!1390697 (Cons!25216 (h!30617 lt!811113) (++!6388 (t!197868 lt!811113) lt!811089)))))

(assert (= (and d!650862 c!344826) b!2174660))

(assert (= (and d!650862 (not c!344826)) b!2174661))

(assert (= (and d!650862 res!935751) b!2174662))

(assert (= (and b!2174662 res!935750) b!2174663))

(declare-fun m!2616247 () Bool)

(assert (=> b!2174662 m!2616247))

(declare-fun m!2616249 () Bool)

(assert (=> b!2174662 m!2616249))

(declare-fun m!2616251 () Bool)

(assert (=> b!2174662 m!2616251))

(declare-fun m!2616253 () Bool)

(assert (=> d!650862 m!2616253))

(declare-fun m!2616255 () Bool)

(assert (=> d!650862 m!2616255))

(declare-fun m!2616257 () Bool)

(assert (=> d!650862 m!2616257))

(declare-fun m!2616259 () Bool)

(assert (=> b!2174661 m!2616259))

(assert (=> b!2174552 d!650862))

(declare-fun d!650868 () Bool)

(declare-fun lt!811139 () Int)

(assert (=> d!650868 (= lt!811139 (size!19701 (list!9672 totalInput!977)))))

(declare-fun size!19703 (Conc!8165) Int)

(assert (=> d!650868 (= lt!811139 (size!19703 (c!344792 totalInput!977)))))

(assert (=> d!650868 (= (size!19700 totalInput!977) lt!811139)))

(declare-fun bs!447073 () Bool)

(assert (= bs!447073 d!650868))

(assert (=> bs!447073 m!2616081))

(assert (=> bs!447073 m!2616081))

(declare-fun m!2616261 () Bool)

(assert (=> bs!447073 m!2616261))

(declare-fun m!2616263 () Bool)

(assert (=> bs!447073 m!2616263))

(assert (=> b!2174552 d!650868))

(declare-fun d!650870 () Bool)

(declare-fun lt!811163 () tuple2!24992)

(assert (=> d!650870 (= (++!6388 (_1!14866 lt!811163) (_2!14866 lt!811163)) lt!811105)))

(declare-fun sizeTr!119 (List!25300 Int) Int)

(assert (=> d!650870 (= lt!811163 (findLongestMatchInner!654 r!12534 Nil!25216 0 lt!811105 lt!811105 (sizeTr!119 lt!811105 0)))))

(declare-fun lt!811162 () Unit!38283)

(declare-fun lt!811159 () Unit!38283)

(assert (=> d!650870 (= lt!811162 lt!811159)))

(declare-fun lt!811160 () List!25300)

(declare-fun lt!811158 () Int)

(assert (=> d!650870 (= (sizeTr!119 lt!811160 lt!811158) (+ (size!19701 lt!811160) lt!811158))))

(declare-fun lemmaSizeTrEqualsSize!118 (List!25300 Int) Unit!38283)

(assert (=> d!650870 (= lt!811159 (lemmaSizeTrEqualsSize!118 lt!811160 lt!811158))))

(assert (=> d!650870 (= lt!811158 0)))

(assert (=> d!650870 (= lt!811160 Nil!25216)))

(declare-fun lt!811156 () Unit!38283)

(declare-fun lt!811157 () Unit!38283)

(assert (=> d!650870 (= lt!811156 lt!811157)))

(declare-fun lt!811161 () Int)

(assert (=> d!650870 (= (sizeTr!119 lt!811105 lt!811161) (+ (size!19701 lt!811105) lt!811161))))

(assert (=> d!650870 (= lt!811157 (lemmaSizeTrEqualsSize!118 lt!811105 lt!811161))))

(assert (=> d!650870 (= lt!811161 0)))

(assert (=> d!650870 (validRegex!2305 r!12534)))

(assert (=> d!650870 (= (findLongestMatch!583 r!12534 lt!811105) lt!811163)))

(declare-fun bs!447074 () Bool)

(assert (= bs!447074 d!650870))

(declare-fun m!2616265 () Bool)

(assert (=> bs!447074 m!2616265))

(assert (=> bs!447074 m!2616087))

(declare-fun m!2616267 () Bool)

(assert (=> bs!447074 m!2616267))

(declare-fun m!2616269 () Bool)

(assert (=> bs!447074 m!2616269))

(declare-fun m!2616271 () Bool)

(assert (=> bs!447074 m!2616271))

(declare-fun m!2616273 () Bool)

(assert (=> bs!447074 m!2616273))

(assert (=> bs!447074 m!2616149))

(declare-fun m!2616275 () Bool)

(assert (=> bs!447074 m!2616275))

(declare-fun m!2616277 () Bool)

(assert (=> bs!447074 m!2616277))

(assert (=> bs!447074 m!2616267))

(declare-fun m!2616279 () Bool)

(assert (=> bs!447074 m!2616279))

(assert (=> b!2174552 d!650870))

(declare-fun d!650872 () Bool)

(declare-fun lt!811164 () Int)

(assert (=> d!650872 (= lt!811164 (size!19701 (list!9672 input!5540)))))

(assert (=> d!650872 (= lt!811164 (size!19703 (c!344792 input!5540)))))

(assert (=> d!650872 (= (size!19700 input!5540) lt!811164)))

(declare-fun bs!447075 () Bool)

(assert (= bs!447075 d!650872))

(assert (=> bs!447075 m!2616083))

(assert (=> bs!447075 m!2616083))

(declare-fun m!2616281 () Bool)

(assert (=> bs!447075 m!2616281))

(declare-fun m!2616283 () Bool)

(assert (=> bs!447075 m!2616283))

(assert (=> b!2174552 d!650872))

(declare-fun b!2174673 () Bool)

(declare-fun e!1390703 () tuple2!24990)

(declare-fun call!130518 () tuple2!24990)

(assert (=> b!2174673 (= e!1390703 call!130518)))

(declare-fun b!2174674 () Bool)

(declare-fun e!1390704 () Int)

(declare-fun lt!811175 () Int)

(assert (=> b!2174674 (= e!1390704 (- lt!811175 1))))

(declare-fun bm!130513 () Bool)

(declare-fun c!344832 () Bool)

(declare-fun lt!811174 () Int)

(declare-fun splitAt!42 (BalanceConc!16092 Int) tuple2!24990)

(assert (=> bm!130513 (= call!130518 (splitAt!42 input!5540 (ite c!344832 0 lt!811174)))))

(declare-fun b!2174675 () Bool)

(assert (=> b!2174675 (= e!1390703 call!130518)))

(declare-fun b!2174672 () Bool)

(assert (=> b!2174672 (= e!1390704 (- 1))))

(declare-fun d!650874 () Bool)

(declare-fun lt!811173 () tuple2!24990)

(assert (=> d!650874 (= (++!6388 (list!9672 (_1!14865 lt!811173)) (list!9672 (_2!14865 lt!811173))) (list!9672 input!5540))))

(assert (=> d!650874 (= lt!811173 e!1390703)))

(assert (=> d!650874 (= c!344832 (< lt!811174 0))))

(declare-fun lt!811176 () Int)

(assert (=> d!650874 (= lt!811174 (+ (- (furthestNullablePosition!211 z!4055 lt!811175 totalInput!977 lt!811176 e!1390704) lt!811175) 1))))

(declare-fun c!344831 () Bool)

(assert (=> d!650874 (= c!344831 (nullableZipper!309 z!4055))))

(assert (=> d!650874 (= lt!811175 (- lt!811176 (size!19700 input!5540)))))

(assert (=> d!650874 (= lt!811176 (size!19700 totalInput!977))))

(assert (=> d!650874 (isSuffix!696 (list!9672 input!5540) (list!9672 totalInput!977))))

(assert (=> d!650874 (= (findLongestMatchZipperSequenceV3!78 z!4055 input!5540 totalInput!977) lt!811173)))

(assert (= (and d!650874 c!344831) b!2174674))

(assert (= (and d!650874 (not c!344831)) b!2174672))

(assert (= (and d!650874 c!344832) b!2174673))

(assert (= (and d!650874 (not c!344832)) b!2174675))

(assert (= (or b!2174673 b!2174675) bm!130513))

(declare-fun m!2616285 () Bool)

(assert (=> bm!130513 m!2616285))

(assert (=> d!650874 m!2616083))

(assert (=> d!650874 m!2616081))

(declare-fun m!2616287 () Bool)

(assert (=> d!650874 m!2616287))

(declare-fun m!2616289 () Bool)

(assert (=> d!650874 m!2616289))

(declare-fun m!2616291 () Bool)

(assert (=> d!650874 m!2616291))

(assert (=> d!650874 m!2616135))

(assert (=> d!650874 m!2616177))

(assert (=> d!650874 m!2616291))

(declare-fun m!2616293 () Bool)

(assert (=> d!650874 m!2616293))

(declare-fun m!2616295 () Bool)

(assert (=> d!650874 m!2616295))

(assert (=> d!650874 m!2616137))

(assert (=> d!650874 m!2616293))

(assert (=> d!650874 m!2616083))

(assert (=> d!650874 m!2616081))

(assert (=> b!2174552 d!650874))

(declare-fun d!650876 () Bool)

(declare-fun list!9673 (Conc!8165) List!25300)

(assert (=> d!650876 (= (list!9672 (_1!14865 lt!811106)) (list!9673 (c!344792 (_1!14865 lt!811106))))))

(declare-fun bs!447076 () Bool)

(assert (= bs!447076 d!650876))

(declare-fun m!2616297 () Bool)

(assert (=> bs!447076 m!2616297))

(assert (=> b!2174552 d!650876))

(declare-fun d!650878 () Bool)

(assert (=> d!650878 (= (list!9672 (_2!14865 lt!811106)) (list!9673 (c!344792 (_2!14865 lt!811106))))))

(declare-fun bs!447077 () Bool)

(assert (= bs!447077 d!650878))

(declare-fun m!2616299 () Bool)

(assert (=> bs!447077 m!2616299))

(assert (=> b!2174552 d!650878))

(declare-fun d!650880 () Bool)

(declare-fun c!344835 () Bool)

(assert (=> d!650880 (= c!344835 ((_ is Node!8165) (c!344792 input!5540)))))

(declare-fun e!1390709 () Bool)

(assert (=> d!650880 (= (inv!33490 (c!344792 input!5540)) e!1390709)))

(declare-fun b!2174682 () Bool)

(declare-fun inv!33494 (Conc!8165) Bool)

(assert (=> b!2174682 (= e!1390709 (inv!33494 (c!344792 input!5540)))))

(declare-fun b!2174683 () Bool)

(declare-fun e!1390710 () Bool)

(assert (=> b!2174683 (= e!1390709 e!1390710)))

(declare-fun res!935754 () Bool)

(assert (=> b!2174683 (= res!935754 (not ((_ is Leaf!11947) (c!344792 input!5540))))))

(assert (=> b!2174683 (=> res!935754 e!1390710)))

(declare-fun b!2174684 () Bool)

(declare-fun inv!33495 (Conc!8165) Bool)

(assert (=> b!2174684 (= e!1390710 (inv!33495 (c!344792 input!5540)))))

(assert (= (and d!650880 c!344835) b!2174682))

(assert (= (and d!650880 (not c!344835)) b!2174683))

(assert (= (and b!2174683 (not res!935754)) b!2174684))

(declare-fun m!2616301 () Bool)

(assert (=> b!2174682 m!2616301))

(declare-fun m!2616303 () Bool)

(assert (=> b!2174684 m!2616303))

(assert (=> b!2174571 d!650880))

(declare-fun b!2174703 () Bool)

(declare-fun e!1390730 () Bool)

(declare-fun e!1390731 () Bool)

(assert (=> b!2174703 (= e!1390730 e!1390731)))

(declare-fun res!935766 () Bool)

(declare-fun nullable!1703 (Regex!6029) Bool)

(assert (=> b!2174703 (= res!935766 (not (nullable!1703 (reg!6358 r!12534))))))

(assert (=> b!2174703 (=> (not res!935766) (not e!1390731))))

(declare-fun b!2174704 () Bool)

(declare-fun e!1390726 () Bool)

(assert (=> b!2174704 (= e!1390730 e!1390726)))

(declare-fun c!344841 () Bool)

(assert (=> b!2174704 (= c!344841 ((_ is Union!6029) r!12534))))

(declare-fun bm!130520 () Bool)

(declare-fun call!130526 () Bool)

(assert (=> bm!130520 (= call!130526 (validRegex!2305 (ite c!344841 (regOne!12571 r!12534) (regTwo!12570 r!12534))))))

(declare-fun d!650882 () Bool)

(declare-fun res!935768 () Bool)

(declare-fun e!1390727 () Bool)

(assert (=> d!650882 (=> res!935768 e!1390727)))

(assert (=> d!650882 (= res!935768 ((_ is ElementMatch!6029) r!12534))))

(assert (=> d!650882 (= (validRegex!2305 r!12534) e!1390727)))

(declare-fun b!2174705 () Bool)

(declare-fun res!935767 () Bool)

(declare-fun e!1390725 () Bool)

(assert (=> b!2174705 (=> res!935767 e!1390725)))

(assert (=> b!2174705 (= res!935767 (not ((_ is Concat!10331) r!12534)))))

(assert (=> b!2174705 (= e!1390726 e!1390725)))

(declare-fun bm!130521 () Bool)

(declare-fun call!130525 () Bool)

(declare-fun call!130527 () Bool)

(assert (=> bm!130521 (= call!130525 call!130527)))

(declare-fun b!2174706 () Bool)

(declare-fun e!1390728 () Bool)

(assert (=> b!2174706 (= e!1390725 e!1390728)))

(declare-fun res!935769 () Bool)

(assert (=> b!2174706 (=> (not res!935769) (not e!1390728))))

(assert (=> b!2174706 (= res!935769 call!130525)))

(declare-fun bm!130522 () Bool)

(declare-fun c!344840 () Bool)

(assert (=> bm!130522 (= call!130527 (validRegex!2305 (ite c!344840 (reg!6358 r!12534) (ite c!344841 (regTwo!12571 r!12534) (regOne!12570 r!12534)))))))

(declare-fun b!2174707 () Bool)

(declare-fun e!1390729 () Bool)

(assert (=> b!2174707 (= e!1390729 call!130525)))

(declare-fun b!2174708 () Bool)

(assert (=> b!2174708 (= e!1390731 call!130527)))

(declare-fun b!2174709 () Bool)

(assert (=> b!2174709 (= e!1390728 call!130526)))

(declare-fun b!2174710 () Bool)

(assert (=> b!2174710 (= e!1390727 e!1390730)))

(assert (=> b!2174710 (= c!344840 ((_ is Star!6029) r!12534))))

(declare-fun b!2174711 () Bool)

(declare-fun res!935765 () Bool)

(assert (=> b!2174711 (=> (not res!935765) (not e!1390729))))

(assert (=> b!2174711 (= res!935765 call!130526)))

(assert (=> b!2174711 (= e!1390726 e!1390729)))

(assert (= (and d!650882 (not res!935768)) b!2174710))

(assert (= (and b!2174710 c!344840) b!2174703))

(assert (= (and b!2174710 (not c!344840)) b!2174704))

(assert (= (and b!2174703 res!935766) b!2174708))

(assert (= (and b!2174704 c!344841) b!2174711))

(assert (= (and b!2174704 (not c!344841)) b!2174705))

(assert (= (and b!2174711 res!935765) b!2174707))

(assert (= (and b!2174705 (not res!935767)) b!2174706))

(assert (= (and b!2174706 res!935769) b!2174709))

(assert (= (or b!2174707 b!2174706) bm!130521))

(assert (= (or b!2174711 b!2174709) bm!130520))

(assert (= (or b!2174708 bm!130521) bm!130522))

(declare-fun m!2616305 () Bool)

(assert (=> b!2174703 m!2616305))

(declare-fun m!2616307 () Bool)

(assert (=> bm!130520 m!2616307))

(declare-fun m!2616309 () Bool)

(assert (=> bm!130522 m!2616309))

(assert (=> start!210986 d!650882))

(declare-fun d!650884 () Bool)

(declare-fun isBalanced!2536 (Conc!8165) Bool)

(assert (=> d!650884 (= (inv!33491 totalInput!977) (isBalanced!2536 (c!344792 totalInput!977)))))

(declare-fun bs!447078 () Bool)

(assert (= bs!447078 d!650884))

(declare-fun m!2616311 () Bool)

(assert (=> bs!447078 m!2616311))

(assert (=> start!210986 d!650884))

(declare-fun d!650886 () Bool)

(assert (=> d!650886 (= (inv!33491 input!5540) (isBalanced!2536 (c!344792 input!5540)))))

(declare-fun bs!447079 () Bool)

(assert (= bs!447079 d!650886))

(declare-fun m!2616313 () Bool)

(assert (=> bs!447079 m!2616313))

(assert (=> start!210986 d!650886))

(declare-fun d!650888 () Bool)

(declare-fun e!1390742 () Bool)

(assert (=> d!650888 e!1390742))

(declare-fun res!935772 () Bool)

(assert (=> d!650888 (=> (not res!935772) (not e!1390742))))

(declare-fun lt!811179 () List!25300)

(assert (=> d!650888 (= res!935772 (= ((_ map implies) (content!3432 lt!811179) (content!3432 lt!811090)) ((as const (InoxSet C!12204)) true)))))

(declare-fun e!1390741 () List!25300)

(assert (=> d!650888 (= lt!811179 e!1390741)))

(declare-fun c!344848 () Bool)

(assert (=> d!650888 (= c!344848 (or ((_ is Nil!25216) lt!811090) (<= lt!811108 0)))))

(assert (=> d!650888 (= (take!237 lt!811090 lt!811108) lt!811179)))

(declare-fun b!2174726 () Bool)

(declare-fun e!1390740 () Int)

(declare-fun e!1390743 () Int)

(assert (=> b!2174726 (= e!1390740 e!1390743)))

(declare-fun c!344849 () Bool)

(assert (=> b!2174726 (= c!344849 (>= lt!811108 (size!19701 lt!811090)))))

(declare-fun b!2174727 () Bool)

(assert (=> b!2174727 (= e!1390743 (size!19701 lt!811090))))

(declare-fun b!2174728 () Bool)

(assert (=> b!2174728 (= e!1390743 lt!811108)))

(declare-fun b!2174729 () Bool)

(assert (=> b!2174729 (= e!1390742 (= (size!19701 lt!811179) e!1390740))))

(declare-fun c!344850 () Bool)

(assert (=> b!2174729 (= c!344850 (<= lt!811108 0))))

(declare-fun b!2174730 () Bool)

(assert (=> b!2174730 (= e!1390741 (Cons!25216 (h!30617 lt!811090) (take!237 (t!197868 lt!811090) (- lt!811108 1))))))

(declare-fun b!2174731 () Bool)

(assert (=> b!2174731 (= e!1390740 0)))

(declare-fun b!2174732 () Bool)

(assert (=> b!2174732 (= e!1390741 Nil!25216)))

(assert (= (and d!650888 c!344848) b!2174732))

(assert (= (and d!650888 (not c!344848)) b!2174730))

(assert (= (and d!650888 res!935772) b!2174729))

(assert (= (and b!2174729 c!344850) b!2174731))

(assert (= (and b!2174729 (not c!344850)) b!2174726))

(assert (= (and b!2174726 c!344849) b!2174727))

(assert (= (and b!2174726 (not c!344849)) b!2174728))

(declare-fun m!2616315 () Bool)

(assert (=> b!2174726 m!2616315))

(declare-fun m!2616317 () Bool)

(assert (=> b!2174729 m!2616317))

(declare-fun m!2616319 () Bool)

(assert (=> b!2174730 m!2616319))

(assert (=> b!2174727 m!2616315))

(declare-fun m!2616321 () Bool)

(assert (=> d!650888 m!2616321))

(declare-fun m!2616323 () Bool)

(assert (=> d!650888 m!2616323))

(assert (=> b!2174561 d!650888))

(declare-fun bm!130525 () Bool)

(declare-fun call!130530 () Int)

(assert (=> bm!130525 (= call!130530 (size!19701 lt!811092))))

(declare-fun b!2174751 () Bool)

(declare-fun e!1390754 () List!25300)

(assert (=> b!2174751 (= e!1390754 lt!811092)))

(declare-fun b!2174752 () Bool)

(declare-fun e!1390758 () Int)

(assert (=> b!2174752 (= e!1390758 (- call!130530 lt!811104))))

(declare-fun b!2174753 () Bool)

(declare-fun e!1390755 () List!25300)

(assert (=> b!2174753 (= e!1390755 Nil!25216)))

(declare-fun d!650890 () Bool)

(declare-fun e!1390757 () Bool)

(assert (=> d!650890 e!1390757))

(declare-fun res!935775 () Bool)

(assert (=> d!650890 (=> (not res!935775) (not e!1390757))))

(declare-fun lt!811182 () List!25300)

(assert (=> d!650890 (= res!935775 (= ((_ map implies) (content!3432 lt!811182) (content!3432 lt!811092)) ((as const (InoxSet C!12204)) true)))))

(assert (=> d!650890 (= lt!811182 e!1390755)))

(declare-fun c!344859 () Bool)

(assert (=> d!650890 (= c!344859 ((_ is Nil!25216) lt!811092))))

(assert (=> d!650890 (= (drop!1247 lt!811092 lt!811104) lt!811182)))

(declare-fun b!2174754 () Bool)

(declare-fun e!1390756 () Int)

(assert (=> b!2174754 (= e!1390756 call!130530)))

(declare-fun b!2174755 () Bool)

(assert (=> b!2174755 (= e!1390756 e!1390758)))

(declare-fun c!344860 () Bool)

(assert (=> b!2174755 (= c!344860 (>= lt!811104 call!130530))))

(declare-fun b!2174756 () Bool)

(assert (=> b!2174756 (= e!1390757 (= (size!19701 lt!811182) e!1390756))))

(declare-fun c!344862 () Bool)

(assert (=> b!2174756 (= c!344862 (<= lt!811104 0))))

(declare-fun b!2174757 () Bool)

(assert (=> b!2174757 (= e!1390755 e!1390754)))

(declare-fun c!344861 () Bool)

(assert (=> b!2174757 (= c!344861 (<= lt!811104 0))))

(declare-fun b!2174758 () Bool)

(assert (=> b!2174758 (= e!1390754 (drop!1247 (t!197868 lt!811092) (- lt!811104 1)))))

(declare-fun b!2174759 () Bool)

(assert (=> b!2174759 (= e!1390758 0)))

(assert (= (and d!650890 c!344859) b!2174753))

(assert (= (and d!650890 (not c!344859)) b!2174757))

(assert (= (and b!2174757 c!344861) b!2174751))

(assert (= (and b!2174757 (not c!344861)) b!2174758))

(assert (= (and d!650890 res!935775) b!2174756))

(assert (= (and b!2174756 c!344862) b!2174754))

(assert (= (and b!2174756 (not c!344862)) b!2174755))

(assert (= (and b!2174755 c!344860) b!2174759))

(assert (= (and b!2174755 (not c!344860)) b!2174752))

(assert (= (or b!2174754 b!2174755 b!2174752) bm!130525))

(declare-fun m!2616325 () Bool)

(assert (=> bm!130525 m!2616325))

(declare-fun m!2616327 () Bool)

(assert (=> d!650890 m!2616327))

(declare-fun m!2616329 () Bool)

(assert (=> d!650890 m!2616329))

(declare-fun m!2616331 () Bool)

(assert (=> b!2174756 m!2616331))

(declare-fun m!2616333 () Bool)

(assert (=> b!2174758 m!2616333))

(assert (=> b!2174561 d!650890))

(declare-fun d!650892 () Bool)

(declare-fun e!1390776 () Bool)

(assert (=> d!650892 e!1390776))

(declare-fun c!344871 () Bool)

(assert (=> d!650892 (= c!344871 ((_ is EmptyExpr!6029) r!12534))))

(declare-fun lt!811185 () Bool)

(declare-fun e!1390777 () Bool)

(assert (=> d!650892 (= lt!811185 e!1390777)))

(declare-fun c!344870 () Bool)

(assert (=> d!650892 (= c!344870 (isEmpty!14471 (_1!14866 lt!811102)))))

(assert (=> d!650892 (validRegex!2305 r!12534)))

(assert (=> d!650892 (= (matchR!2778 r!12534 (_1!14866 lt!811102)) lt!811185)))

(declare-fun b!2174788 () Bool)

(declare-fun res!935792 () Bool)

(declare-fun e!1390774 () Bool)

(assert (=> b!2174788 (=> res!935792 e!1390774)))

(declare-fun e!1390778 () Bool)

(assert (=> b!2174788 (= res!935792 e!1390778)))

(declare-fun res!935797 () Bool)

(assert (=> b!2174788 (=> (not res!935797) (not e!1390778))))

(assert (=> b!2174788 (= res!935797 lt!811185)))

(declare-fun b!2174789 () Bool)

(declare-fun res!935794 () Bool)

(assert (=> b!2174789 (=> (not res!935794) (not e!1390778))))

(declare-fun call!130533 () Bool)

(assert (=> b!2174789 (= res!935794 (not call!130533))))

(declare-fun b!2174790 () Bool)

(declare-fun res!935798 () Bool)

(declare-fun e!1390773 () Bool)

(assert (=> b!2174790 (=> res!935798 e!1390773)))

(declare-fun tail!3128 (List!25300) List!25300)

(assert (=> b!2174790 (= res!935798 (not (isEmpty!14471 (tail!3128 (_1!14866 lt!811102)))))))

(declare-fun b!2174791 () Bool)

(declare-fun head!4656 (List!25300) C!12204)

(assert (=> b!2174791 (= e!1390778 (= (head!4656 (_1!14866 lt!811102)) (c!344793 r!12534)))))

(declare-fun bm!130528 () Bool)

(assert (=> bm!130528 (= call!130533 (isEmpty!14471 (_1!14866 lt!811102)))))

(declare-fun b!2174792 () Bool)

(declare-fun e!1390775 () Bool)

(assert (=> b!2174792 (= e!1390775 (not lt!811185))))

(declare-fun b!2174793 () Bool)

(assert (=> b!2174793 (= e!1390776 (= lt!811185 call!130533))))

(declare-fun b!2174794 () Bool)

(declare-fun res!935793 () Bool)

(assert (=> b!2174794 (=> (not res!935793) (not e!1390778))))

(assert (=> b!2174794 (= res!935793 (isEmpty!14471 (tail!3128 (_1!14866 lt!811102))))))

(declare-fun b!2174795 () Bool)

(assert (=> b!2174795 (= e!1390776 e!1390775)))

(declare-fun c!344869 () Bool)

(assert (=> b!2174795 (= c!344869 ((_ is EmptyLang!6029) r!12534))))

(declare-fun b!2174796 () Bool)

(declare-fun res!935799 () Bool)

(assert (=> b!2174796 (=> res!935799 e!1390774)))

(assert (=> b!2174796 (= res!935799 (not ((_ is ElementMatch!6029) r!12534)))))

(assert (=> b!2174796 (= e!1390775 e!1390774)))

(declare-fun b!2174797 () Bool)

(assert (=> b!2174797 (= e!1390773 (not (= (head!4656 (_1!14866 lt!811102)) (c!344793 r!12534))))))

(declare-fun b!2174798 () Bool)

(assert (=> b!2174798 (= e!1390777 (nullable!1703 r!12534))))

(declare-fun b!2174799 () Bool)

(declare-fun derivativeStep!1446 (Regex!6029 C!12204) Regex!6029)

(assert (=> b!2174799 (= e!1390777 (matchR!2778 (derivativeStep!1446 r!12534 (head!4656 (_1!14866 lt!811102))) (tail!3128 (_1!14866 lt!811102))))))

(declare-fun b!2174800 () Bool)

(declare-fun e!1390779 () Bool)

(assert (=> b!2174800 (= e!1390779 e!1390773)))

(declare-fun res!935795 () Bool)

(assert (=> b!2174800 (=> res!935795 e!1390773)))

(assert (=> b!2174800 (= res!935795 call!130533)))

(declare-fun b!2174801 () Bool)

(assert (=> b!2174801 (= e!1390774 e!1390779)))

(declare-fun res!935796 () Bool)

(assert (=> b!2174801 (=> (not res!935796) (not e!1390779))))

(assert (=> b!2174801 (= res!935796 (not lt!811185))))

(assert (= (and d!650892 c!344870) b!2174798))

(assert (= (and d!650892 (not c!344870)) b!2174799))

(assert (= (and d!650892 c!344871) b!2174793))

(assert (= (and d!650892 (not c!344871)) b!2174795))

(assert (= (and b!2174795 c!344869) b!2174792))

(assert (= (and b!2174795 (not c!344869)) b!2174796))

(assert (= (and b!2174796 (not res!935799)) b!2174788))

(assert (= (and b!2174788 res!935797) b!2174789))

(assert (= (and b!2174789 res!935794) b!2174794))

(assert (= (and b!2174794 res!935793) b!2174791))

(assert (= (and b!2174788 (not res!935792)) b!2174801))

(assert (= (and b!2174801 res!935796) b!2174800))

(assert (= (and b!2174800 (not res!935795)) b!2174790))

(assert (= (and b!2174790 (not res!935798)) b!2174797))

(assert (= (or b!2174793 b!2174789 b!2174800) bm!130528))

(assert (=> bm!130528 m!2616169))

(declare-fun m!2616335 () Bool)

(assert (=> b!2174798 m!2616335))

(declare-fun m!2616337 () Bool)

(assert (=> b!2174797 m!2616337))

(assert (=> b!2174791 m!2616337))

(declare-fun m!2616339 () Bool)

(assert (=> b!2174790 m!2616339))

(assert (=> b!2174790 m!2616339))

(declare-fun m!2616341 () Bool)

(assert (=> b!2174790 m!2616341))

(assert (=> b!2174799 m!2616337))

(assert (=> b!2174799 m!2616337))

(declare-fun m!2616343 () Bool)

(assert (=> b!2174799 m!2616343))

(assert (=> b!2174799 m!2616339))

(assert (=> b!2174799 m!2616343))

(assert (=> b!2174799 m!2616339))

(declare-fun m!2616345 () Bool)

(assert (=> b!2174799 m!2616345))

(assert (=> d!650892 m!2616169))

(assert (=> d!650892 m!2616087))

(assert (=> b!2174794 m!2616339))

(assert (=> b!2174794 m!2616339))

(assert (=> b!2174794 m!2616341))

(assert (=> b!2174551 d!650892))

(declare-fun d!650894 () Bool)

(assert (=> d!650894 (= lt!811111 (_1!14866 lt!811097))))

(declare-fun lt!811188 () Unit!38283)

(declare-fun choose!12836 (List!25300 List!25300 List!25300) Unit!38283)

(assert (=> d!650894 (= lt!811188 (choose!12836 lt!811111 (_1!14866 lt!811097) lt!811105))))

(assert (=> d!650894 (isPrefix!2145 lt!811111 lt!811105)))

(assert (=> d!650894 (= (lemmaIsPrefixSameLengthThenSameList!357 lt!811111 (_1!14866 lt!811097) lt!811105) lt!811188)))

(declare-fun bs!447080 () Bool)

(assert (= bs!447080 d!650894))

(declare-fun m!2616347 () Bool)

(assert (=> bs!447080 m!2616347))

(declare-fun m!2616349 () Bool)

(assert (=> bs!447080 m!2616349))

(assert (=> b!2174570 d!650894))

(declare-fun b!2174813 () Bool)

(declare-fun e!1390788 () Bool)

(assert (=> b!2174813 (= e!1390788 (>= (size!19701 lt!811105) (size!19701 lt!811114)))))

(declare-fun b!2174810 () Bool)

(declare-fun e!1390786 () Bool)

(declare-fun e!1390787 () Bool)

(assert (=> b!2174810 (= e!1390786 e!1390787)))

(declare-fun res!935811 () Bool)

(assert (=> b!2174810 (=> (not res!935811) (not e!1390787))))

(assert (=> b!2174810 (= res!935811 (not ((_ is Nil!25216) lt!811105)))))

(declare-fun b!2174811 () Bool)

(declare-fun res!935808 () Bool)

(assert (=> b!2174811 (=> (not res!935808) (not e!1390787))))

(assert (=> b!2174811 (= res!935808 (= (head!4656 lt!811114) (head!4656 lt!811105)))))

(declare-fun d!650896 () Bool)

(assert (=> d!650896 e!1390788))

(declare-fun res!935809 () Bool)

(assert (=> d!650896 (=> res!935809 e!1390788)))

(declare-fun lt!811191 () Bool)

(assert (=> d!650896 (= res!935809 (not lt!811191))))

(assert (=> d!650896 (= lt!811191 e!1390786)))

(declare-fun res!935810 () Bool)

(assert (=> d!650896 (=> res!935810 e!1390786)))

(assert (=> d!650896 (= res!935810 ((_ is Nil!25216) lt!811114))))

(assert (=> d!650896 (= (isPrefix!2145 lt!811114 lt!811105) lt!811191)))

(declare-fun b!2174812 () Bool)

(assert (=> b!2174812 (= e!1390787 (isPrefix!2145 (tail!3128 lt!811114) (tail!3128 lt!811105)))))

(assert (= (and d!650896 (not res!935810)) b!2174810))

(assert (= (and b!2174810 res!935811) b!2174811))

(assert (= (and b!2174811 res!935808) b!2174812))

(assert (= (and d!650896 (not res!935809)) b!2174813))

(assert (=> b!2174813 m!2616149))

(declare-fun m!2616353 () Bool)

(assert (=> b!2174813 m!2616353))

(declare-fun m!2616355 () Bool)

(assert (=> b!2174811 m!2616355))

(declare-fun m!2616357 () Bool)

(assert (=> b!2174811 m!2616357))

(declare-fun m!2616359 () Bool)

(assert (=> b!2174812 m!2616359))

(declare-fun m!2616361 () Bool)

(assert (=> b!2174812 m!2616361))

(assert (=> b!2174812 m!2616359))

(assert (=> b!2174812 m!2616361))

(declare-fun m!2616363 () Bool)

(assert (=> b!2174812 m!2616363))

(assert (=> b!2174570 d!650896))

(declare-fun d!650900 () Bool)

(declare-fun e!1390805 () Bool)

(assert (=> d!650900 e!1390805))

(declare-fun res!935822 () Bool)

(assert (=> d!650900 (=> (not res!935822) (not e!1390805))))

(declare-fun lt!811192 () List!25300)

(assert (=> d!650900 (= res!935822 (= ((_ map implies) (content!3432 lt!811192) (content!3432 lt!811105)) ((as const (InoxSet C!12204)) true)))))

(declare-fun e!1390804 () List!25300)

(assert (=> d!650900 (= lt!811192 e!1390804)))

(declare-fun c!344876 () Bool)

(assert (=> d!650900 (= c!344876 (or ((_ is Nil!25216) lt!811105) (<= lt!811108 0)))))

(assert (=> d!650900 (= (take!237 lt!811105 lt!811108) lt!811192)))

(declare-fun b!2174832 () Bool)

(declare-fun e!1390803 () Int)

(declare-fun e!1390806 () Int)

(assert (=> b!2174832 (= e!1390803 e!1390806)))

(declare-fun c!344877 () Bool)

(assert (=> b!2174832 (= c!344877 (>= lt!811108 (size!19701 lt!811105)))))

(declare-fun b!2174833 () Bool)

(assert (=> b!2174833 (= e!1390806 (size!19701 lt!811105))))

(declare-fun b!2174834 () Bool)

(assert (=> b!2174834 (= e!1390806 lt!811108)))

(declare-fun b!2174835 () Bool)

(assert (=> b!2174835 (= e!1390805 (= (size!19701 lt!811192) e!1390803))))

(declare-fun c!344878 () Bool)

(assert (=> b!2174835 (= c!344878 (<= lt!811108 0))))

(declare-fun b!2174836 () Bool)

(assert (=> b!2174836 (= e!1390804 (Cons!25216 (h!30617 lt!811105) (take!237 (t!197868 lt!811105) (- lt!811108 1))))))

(declare-fun b!2174837 () Bool)

(assert (=> b!2174837 (= e!1390803 0)))

(declare-fun b!2174838 () Bool)

(assert (=> b!2174838 (= e!1390804 Nil!25216)))

(assert (= (and d!650900 c!344876) b!2174838))

(assert (= (and d!650900 (not c!344876)) b!2174836))

(assert (= (and d!650900 res!935822) b!2174835))

(assert (= (and b!2174835 c!344878) b!2174837))

(assert (= (and b!2174835 (not c!344878)) b!2174832))

(assert (= (and b!2174832 c!344877) b!2174833))

(assert (= (and b!2174832 (not c!344877)) b!2174834))

(assert (=> b!2174832 m!2616149))

(declare-fun m!2616365 () Bool)

(assert (=> b!2174835 m!2616365))

(declare-fun m!2616367 () Bool)

(assert (=> b!2174836 m!2616367))

(assert (=> b!2174833 m!2616149))

(declare-fun m!2616369 () Bool)

(assert (=> d!650900 m!2616369))

(declare-fun m!2616371 () Bool)

(assert (=> d!650900 m!2616371))

(assert (=> b!2174570 d!650900))

(declare-fun d!650902 () Bool)

(assert (=> d!650902 (isPrefix!2145 (take!237 lt!811105 lt!811108) lt!811105)))

(declare-fun lt!811195 () Unit!38283)

(declare-fun choose!12837 (List!25300 Int) Unit!38283)

(assert (=> d!650902 (= lt!811195 (choose!12837 lt!811105 lt!811108))))

(assert (=> d!650902 (>= lt!811108 0)))

(assert (=> d!650902 (= (lemmaTakeIsPrefix!60 lt!811105 lt!811108) lt!811195)))

(declare-fun bs!447082 () Bool)

(assert (= bs!447082 d!650902))

(assert (=> bs!447082 m!2616115))

(assert (=> bs!447082 m!2616115))

(declare-fun m!2616379 () Bool)

(assert (=> bs!447082 m!2616379))

(declare-fun m!2616381 () Bool)

(assert (=> bs!447082 m!2616381))

(assert (=> b!2174570 d!650902))

(declare-fun c!344886 () Bool)

(declare-fun d!650906 () Bool)

(assert (=> d!650906 (= c!344886 (isEmpty!14471 (take!237 (drop!1247 lt!811092 lt!811104) lt!811095)))))

(declare-fun e!1390822 () Bool)

(assert (=> d!650906 (= (matchZipper!145 z!4055 (take!237 (drop!1247 lt!811092 lt!811104) lt!811095)) e!1390822)))

(declare-fun b!2174861 () Bool)

(assert (=> b!2174861 (= e!1390822 (nullableZipper!309 z!4055))))

(declare-fun b!2174862 () Bool)

(declare-fun derivationStepZipper!132 ((InoxSet Context!3198) C!12204) (InoxSet Context!3198))

(assert (=> b!2174862 (= e!1390822 (matchZipper!145 (derivationStepZipper!132 z!4055 (head!4656 (take!237 (drop!1247 lt!811092 lt!811104) lt!811095))) (tail!3128 (take!237 (drop!1247 lt!811092 lt!811104) lt!811095))))))

(assert (= (and d!650906 c!344886) b!2174861))

(assert (= (and d!650906 (not c!344886)) b!2174862))

(assert (=> d!650906 m!2616119))

(declare-fun m!2616391 () Bool)

(assert (=> d!650906 m!2616391))

(assert (=> b!2174861 m!2616177))

(assert (=> b!2174862 m!2616119))

(declare-fun m!2616393 () Bool)

(assert (=> b!2174862 m!2616393))

(assert (=> b!2174862 m!2616393))

(declare-fun m!2616395 () Bool)

(assert (=> b!2174862 m!2616395))

(assert (=> b!2174862 m!2616119))

(declare-fun m!2616397 () Bool)

(assert (=> b!2174862 m!2616397))

(assert (=> b!2174862 m!2616395))

(assert (=> b!2174862 m!2616397))

(declare-fun m!2616399 () Bool)

(assert (=> b!2174862 m!2616399))

(assert (=> b!2174560 d!650906))

(declare-fun d!650914 () Bool)

(declare-fun e!1390825 () Bool)

(assert (=> d!650914 e!1390825))

(declare-fun res!935831 () Bool)

(assert (=> d!650914 (=> (not res!935831) (not e!1390825))))

(declare-fun lt!811196 () List!25300)

(assert (=> d!650914 (= res!935831 (= ((_ map implies) (content!3432 lt!811196) (content!3432 (drop!1247 lt!811092 lt!811104))) ((as const (InoxSet C!12204)) true)))))

(declare-fun e!1390824 () List!25300)

(assert (=> d!650914 (= lt!811196 e!1390824)))

(declare-fun c!344887 () Bool)

(assert (=> d!650914 (= c!344887 (or ((_ is Nil!25216) (drop!1247 lt!811092 lt!811104)) (<= lt!811095 0)))))

(assert (=> d!650914 (= (take!237 (drop!1247 lt!811092 lt!811104) lt!811095) lt!811196)))

(declare-fun b!2174863 () Bool)

(declare-fun e!1390823 () Int)

(declare-fun e!1390826 () Int)

(assert (=> b!2174863 (= e!1390823 e!1390826)))

(declare-fun c!344888 () Bool)

(assert (=> b!2174863 (= c!344888 (>= lt!811095 (size!19701 (drop!1247 lt!811092 lt!811104))))))

(declare-fun b!2174864 () Bool)

(assert (=> b!2174864 (= e!1390826 (size!19701 (drop!1247 lt!811092 lt!811104)))))

(declare-fun b!2174865 () Bool)

(assert (=> b!2174865 (= e!1390826 lt!811095)))

(declare-fun b!2174866 () Bool)

(assert (=> b!2174866 (= e!1390825 (= (size!19701 lt!811196) e!1390823))))

(declare-fun c!344889 () Bool)

(assert (=> b!2174866 (= c!344889 (<= lt!811095 0))))

(declare-fun b!2174867 () Bool)

(assert (=> b!2174867 (= e!1390824 (Cons!25216 (h!30617 (drop!1247 lt!811092 lt!811104)) (take!237 (t!197868 (drop!1247 lt!811092 lt!811104)) (- lt!811095 1))))))

(declare-fun b!2174868 () Bool)

(assert (=> b!2174868 (= e!1390823 0)))

(declare-fun b!2174869 () Bool)

(assert (=> b!2174869 (= e!1390824 Nil!25216)))

(assert (= (and d!650914 c!344887) b!2174869))

(assert (= (and d!650914 (not c!344887)) b!2174867))

(assert (= (and d!650914 res!935831) b!2174866))

(assert (= (and b!2174866 c!344889) b!2174868))

(assert (= (and b!2174866 (not c!344889)) b!2174863))

(assert (= (and b!2174863 c!344888) b!2174864))

(assert (= (and b!2174863 (not c!344888)) b!2174865))

(assert (=> b!2174863 m!2616109))

(declare-fun m!2616401 () Bool)

(assert (=> b!2174863 m!2616401))

(declare-fun m!2616403 () Bool)

(assert (=> b!2174866 m!2616403))

(declare-fun m!2616405 () Bool)

(assert (=> b!2174867 m!2616405))

(assert (=> b!2174864 m!2616109))

(assert (=> b!2174864 m!2616401))

(declare-fun m!2616407 () Bool)

(assert (=> d!650914 m!2616407))

(assert (=> d!650914 m!2616109))

(declare-fun m!2616409 () Bool)

(assert (=> d!650914 m!2616409))

(assert (=> b!2174560 d!650914))

(assert (=> b!2174560 d!650890))

(declare-fun d!650916 () Bool)

(declare-fun lt!811201 () Regex!6029)

(assert (=> d!650916 (validRegex!2305 lt!811201)))

(declare-fun generalisedUnion!519 (List!25301) Regex!6029)

(declare-fun unfocusZipperList!43 (List!25302) List!25301)

(assert (=> d!650916 (= lt!811201 (generalisedUnion!519 (unfocusZipperList!43 lt!811098)))))

(assert (=> d!650916 (= (unfocusZipper!136 lt!811098) lt!811201)))

(declare-fun bs!447085 () Bool)

(assert (= bs!447085 d!650916))

(declare-fun m!2616411 () Bool)

(assert (=> bs!447085 m!2616411))

(declare-fun m!2616413 () Bool)

(assert (=> bs!447085 m!2616413))

(assert (=> bs!447085 m!2616413))

(declare-fun m!2616415 () Bool)

(assert (=> bs!447085 m!2616415))

(assert (=> b!2174554 d!650916))

(declare-fun d!650918 () Bool)

(declare-fun e!1390843 () Bool)

(assert (=> d!650918 e!1390843))

(declare-fun res!935850 () Bool)

(assert (=> d!650918 (=> (not res!935850) (not e!1390843))))

(declare-fun lt!811204 () List!25302)

(declare-fun noDuplicate!296 (List!25302) Bool)

(assert (=> d!650918 (= res!935850 (noDuplicate!296 lt!811204))))

(declare-fun choose!12838 ((InoxSet Context!3198)) List!25302)

(assert (=> d!650918 (= lt!811204 (choose!12838 z!4055))))

(assert (=> d!650918 (= (toList!1212 z!4055) lt!811204)))

(declare-fun b!2174900 () Bool)

(declare-fun content!3433 (List!25302) (InoxSet Context!3198))

(assert (=> b!2174900 (= e!1390843 (= (content!3433 lt!811204) z!4055))))

(assert (= (and d!650918 res!935850) b!2174900))

(declare-fun m!2616417 () Bool)

(assert (=> d!650918 m!2616417))

(declare-fun m!2616419 () Bool)

(assert (=> d!650918 m!2616419))

(declare-fun m!2616421 () Bool)

(assert (=> b!2174900 m!2616421))

(assert (=> b!2174554 d!650918))

(declare-fun d!650920 () Bool)

(declare-fun lambda!81844 () Int)

(declare-fun forall!5175 (List!25301 Int) Bool)

(assert (=> d!650920 (= (inv!33489 setElem!18262) (forall!5175 (exprs!2099 setElem!18262) lambda!81844))))

(declare-fun bs!447102 () Bool)

(assert (= bs!447102 d!650920))

(declare-fun m!2616705 () Bool)

(assert (=> bs!447102 m!2616705))

(assert (=> setNonEmpty!18262 d!650920))

(declare-fun b!2175135 () Bool)

(declare-fun res!935921 () Bool)

(declare-fun e!1390971 () Bool)

(assert (=> b!2175135 (=> (not res!935921) (not e!1390971))))

(declare-fun lt!811382 () List!25300)

(assert (=> b!2175135 (= res!935921 (= (size!19701 lt!811382) (+ (size!19701 (_1!14866 lt!811097)) (size!19701 (_2!14866 lt!811097)))))))

(declare-fun b!2175136 () Bool)

(assert (=> b!2175136 (= e!1390971 (or (not (= (_2!14866 lt!811097) Nil!25216)) (= lt!811382 (_1!14866 lt!811097))))))

(declare-fun b!2175133 () Bool)

(declare-fun e!1390970 () List!25300)

(assert (=> b!2175133 (= e!1390970 (_2!14866 lt!811097))))

(declare-fun d!651000 () Bool)

(assert (=> d!651000 e!1390971))

(declare-fun res!935922 () Bool)

(assert (=> d!651000 (=> (not res!935922) (not e!1390971))))

(assert (=> d!651000 (= res!935922 (= (content!3432 lt!811382) ((_ map or) (content!3432 (_1!14866 lt!811097)) (content!3432 (_2!14866 lt!811097)))))))

(assert (=> d!651000 (= lt!811382 e!1390970)))

(declare-fun c!344952 () Bool)

(assert (=> d!651000 (= c!344952 ((_ is Nil!25216) (_1!14866 lt!811097)))))

(assert (=> d!651000 (= (++!6388 (_1!14866 lt!811097) (_2!14866 lt!811097)) lt!811382)))

(declare-fun b!2175134 () Bool)

(assert (=> b!2175134 (= e!1390970 (Cons!25216 (h!30617 (_1!14866 lt!811097)) (++!6388 (t!197868 (_1!14866 lt!811097)) (_2!14866 lt!811097))))))

(assert (= (and d!651000 c!344952) b!2175133))

(assert (= (and d!651000 (not c!344952)) b!2175134))

(assert (= (and d!651000 res!935922) b!2175135))

(assert (= (and b!2175135 res!935921) b!2175136))

(declare-fun m!2616707 () Bool)

(assert (=> b!2175135 m!2616707))

(assert (=> b!2175135 m!2616103))

(declare-fun m!2616709 () Bool)

(assert (=> b!2175135 m!2616709))

(declare-fun m!2616711 () Bool)

(assert (=> d!651000 m!2616711))

(declare-fun m!2616713 () Bool)

(assert (=> d!651000 m!2616713))

(declare-fun m!2616715 () Bool)

(assert (=> d!651000 m!2616715))

(declare-fun m!2616717 () Bool)

(assert (=> b!2175134 m!2616717))

(assert (=> b!2174563 d!651000))

(declare-fun d!651002 () Bool)

(declare-fun lt!811385 () Int)

(assert (=> d!651002 (>= lt!811385 0)))

(declare-fun e!1390974 () Int)

(assert (=> d!651002 (= lt!811385 e!1390974)))

(declare-fun c!344955 () Bool)

(assert (=> d!651002 (= c!344955 ((_ is Nil!25216) Nil!25216))))

(assert (=> d!651002 (= (size!19701 Nil!25216) lt!811385)))

(declare-fun b!2175141 () Bool)

(assert (=> b!2175141 (= e!1390974 0)))

(declare-fun b!2175142 () Bool)

(assert (=> b!2175142 (= e!1390974 (+ 1 (size!19701 (t!197868 Nil!25216))))))

(assert (= (and d!651002 c!344955) b!2175141))

(assert (= (and d!651002 (not c!344955)) b!2175142))

(declare-fun m!2616719 () Bool)

(assert (=> b!2175142 m!2616719))

(assert (=> b!2174553 d!651002))

(declare-fun b!2175146 () Bool)

(declare-fun e!1390977 () Bool)

(assert (=> b!2175146 (= e!1390977 (>= (size!19701 lt!811112) (size!19701 (_1!14866 lt!811097))))))

(declare-fun b!2175143 () Bool)

(declare-fun e!1390975 () Bool)

(declare-fun e!1390976 () Bool)

(assert (=> b!2175143 (= e!1390975 e!1390976)))

(declare-fun res!935926 () Bool)

(assert (=> b!2175143 (=> (not res!935926) (not e!1390976))))

(assert (=> b!2175143 (= res!935926 (not ((_ is Nil!25216) lt!811112)))))

(declare-fun b!2175144 () Bool)

(declare-fun res!935923 () Bool)

(assert (=> b!2175144 (=> (not res!935923) (not e!1390976))))

(assert (=> b!2175144 (= res!935923 (= (head!4656 (_1!14866 lt!811097)) (head!4656 lt!811112)))))

(declare-fun d!651004 () Bool)

(assert (=> d!651004 e!1390977))

(declare-fun res!935924 () Bool)

(assert (=> d!651004 (=> res!935924 e!1390977)))

(declare-fun lt!811386 () Bool)

(assert (=> d!651004 (= res!935924 (not lt!811386))))

(assert (=> d!651004 (= lt!811386 e!1390975)))

(declare-fun res!935925 () Bool)

(assert (=> d!651004 (=> res!935925 e!1390975)))

(assert (=> d!651004 (= res!935925 ((_ is Nil!25216) (_1!14866 lt!811097)))))

(assert (=> d!651004 (= (isPrefix!2145 (_1!14866 lt!811097) lt!811112) lt!811386)))

(declare-fun b!2175145 () Bool)

(assert (=> b!2175145 (= e!1390976 (isPrefix!2145 (tail!3128 (_1!14866 lt!811097)) (tail!3128 lt!811112)))))

(assert (= (and d!651004 (not res!935925)) b!2175143))

(assert (= (and b!2175143 res!935926) b!2175144))

(assert (= (and b!2175144 res!935923) b!2175145))

(assert (= (and d!651004 (not res!935924)) b!2175146))

(declare-fun m!2616721 () Bool)

(assert (=> b!2175146 m!2616721))

(assert (=> b!2175146 m!2616103))

(declare-fun m!2616723 () Bool)

(assert (=> b!2175144 m!2616723))

(declare-fun m!2616725 () Bool)

(assert (=> b!2175144 m!2616725))

(declare-fun m!2616727 () Bool)

(assert (=> b!2175145 m!2616727))

(declare-fun m!2616729 () Bool)

(assert (=> b!2175145 m!2616729))

(assert (=> b!2175145 m!2616727))

(assert (=> b!2175145 m!2616729))

(declare-fun m!2616731 () Bool)

(assert (=> b!2175145 m!2616731))

(assert (=> b!2174553 d!651004))

(declare-fun d!651006 () Bool)

(declare-fun e!1390983 () Bool)

(assert (=> d!651006 e!1390983))

(declare-fun res!935932 () Bool)

(assert (=> d!651006 (=> res!935932 e!1390983)))

(declare-fun lt!811391 () Int)

(assert (=> d!651006 (= res!935932 (<= lt!811391 0))))

(assert (=> d!651006 (= lt!811391 (+ (- (furthestNullablePosition!211 z!4055 lt!811104 totalInput!977 (size!19700 totalInput!977) lt!811101) lt!811104) 1))))

(declare-fun lt!811392 () Unit!38283)

(declare-fun choose!12839 ((InoxSet Context!3198) Int BalanceConc!16092 Int) Unit!38283)

(assert (=> d!651006 (= lt!811392 (choose!12839 z!4055 lt!811104 totalInput!977 lt!811101))))

(declare-fun e!1390982 () Bool)

(assert (=> d!651006 e!1390982))

(declare-fun res!935931 () Bool)

(assert (=> d!651006 (=> (not res!935931) (not e!1390982))))

(assert (=> d!651006 (= res!935931 (>= lt!811104 0))))

(assert (=> d!651006 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!52 z!4055 lt!811104 totalInput!977 lt!811101) lt!811392)))

(declare-fun b!2175151 () Bool)

(assert (=> b!2175151 (= e!1390982 (<= lt!811104 (size!19700 totalInput!977)))))

(declare-fun b!2175152 () Bool)

(assert (=> b!2175152 (= e!1390983 (matchZipper!145 z!4055 (take!237 (drop!1247 (list!9672 totalInput!977) lt!811104) lt!811391)))))

(assert (= (and d!651006 res!935931) b!2175151))

(assert (= (and d!651006 (not res!935932)) b!2175152))

(assert (=> d!651006 m!2616135))

(assert (=> d!651006 m!2616135))

(declare-fun m!2616733 () Bool)

(assert (=> d!651006 m!2616733))

(declare-fun m!2616735 () Bool)

(assert (=> d!651006 m!2616735))

(assert (=> b!2175151 m!2616135))

(assert (=> b!2175152 m!2616081))

(assert (=> b!2175152 m!2616081))

(declare-fun m!2616737 () Bool)

(assert (=> b!2175152 m!2616737))

(assert (=> b!2175152 m!2616737))

(declare-fun m!2616739 () Bool)

(assert (=> b!2175152 m!2616739))

(assert (=> b!2175152 m!2616739))

(declare-fun m!2616741 () Bool)

(assert (=> b!2175152 m!2616741))

(assert (=> b!2174553 d!651006))

(declare-fun d!651008 () Bool)

(assert (=> d!651008 (= (isEmpty!14471 (_1!14866 lt!811102)) ((_ is Nil!25216) (_1!14866 lt!811102)))))

(assert (=> b!2174553 d!651008))

(declare-fun d!651010 () Bool)

(assert (=> d!651010 (isPrefix!2145 (take!237 lt!811092 lt!811104) lt!811092)))

(declare-fun lt!811393 () Unit!38283)

(assert (=> d!651010 (= lt!811393 (choose!12837 lt!811092 lt!811104))))

(assert (=> d!651010 (>= lt!811104 0)))

(assert (=> d!651010 (= (lemmaTakeIsPrefix!60 lt!811092 lt!811104) lt!811393)))

(declare-fun bs!447103 () Bool)

(assert (= bs!447103 d!651010))

(assert (=> bs!447103 m!2616157))

(assert (=> bs!447103 m!2616157))

(assert (=> bs!447103 m!2616159))

(declare-fun m!2616743 () Bool)

(assert (=> bs!447103 m!2616743))

(assert (=> b!2174553 d!651010))

(declare-fun d!651012 () Bool)

(declare-fun e!1390986 () Bool)

(assert (=> d!651012 e!1390986))

(declare-fun res!935933 () Bool)

(assert (=> d!651012 (=> (not res!935933) (not e!1390986))))

(declare-fun lt!811394 () List!25300)

(assert (=> d!651012 (= res!935933 (= ((_ map implies) (content!3432 lt!811394) (content!3432 lt!811092)) ((as const (InoxSet C!12204)) true)))))

(declare-fun e!1390985 () List!25300)

(assert (=> d!651012 (= lt!811394 e!1390985)))

(declare-fun c!344956 () Bool)

(assert (=> d!651012 (= c!344956 (or ((_ is Nil!25216) lt!811092) (<= lt!811104 0)))))

(assert (=> d!651012 (= (take!237 lt!811092 lt!811104) lt!811394)))

(declare-fun b!2175153 () Bool)

(declare-fun e!1390984 () Int)

(declare-fun e!1390987 () Int)

(assert (=> b!2175153 (= e!1390984 e!1390987)))

(declare-fun c!344957 () Bool)

(assert (=> b!2175153 (= c!344957 (>= lt!811104 (size!19701 lt!811092)))))

(declare-fun b!2175154 () Bool)

(assert (=> b!2175154 (= e!1390987 (size!19701 lt!811092))))

(declare-fun b!2175155 () Bool)

(assert (=> b!2175155 (= e!1390987 lt!811104)))

(declare-fun b!2175156 () Bool)

(assert (=> b!2175156 (= e!1390986 (= (size!19701 lt!811394) e!1390984))))

(declare-fun c!344958 () Bool)

(assert (=> b!2175156 (= c!344958 (<= lt!811104 0))))

(declare-fun b!2175157 () Bool)

(assert (=> b!2175157 (= e!1390985 (Cons!25216 (h!30617 lt!811092) (take!237 (t!197868 lt!811092) (- lt!811104 1))))))

(declare-fun b!2175158 () Bool)

(assert (=> b!2175158 (= e!1390984 0)))

(declare-fun b!2175159 () Bool)

(assert (=> b!2175159 (= e!1390985 Nil!25216)))

(assert (= (and d!651012 c!344956) b!2175159))

(assert (= (and d!651012 (not c!344956)) b!2175157))

(assert (= (and d!651012 res!935933) b!2175156))

(assert (= (and b!2175156 c!344958) b!2175158))

(assert (= (and b!2175156 (not c!344958)) b!2175153))

(assert (= (and b!2175153 c!344957) b!2175154))

(assert (= (and b!2175153 (not c!344957)) b!2175155))

(assert (=> b!2175153 m!2616325))

(declare-fun m!2616745 () Bool)

(assert (=> b!2175156 m!2616745))

(declare-fun m!2616747 () Bool)

(assert (=> b!2175157 m!2616747))

(assert (=> b!2175154 m!2616325))

(declare-fun m!2616749 () Bool)

(assert (=> d!651012 m!2616749))

(assert (=> d!651012 m!2616329))

(assert (=> b!2174553 d!651012))

(declare-fun d!651014 () Bool)

(declare-fun e!1390990 () Bool)

(assert (=> d!651014 e!1390990))

(declare-fun res!935936 () Bool)

(assert (=> d!651014 (=> res!935936 e!1390990)))

(assert (=> d!651014 (= res!935936 (isEmpty!14471 (_1!14866 (findLongestMatchInner!654 r!12534 Nil!25216 (size!19701 Nil!25216) lt!811105 lt!811105 (size!19701 lt!811105)))))))

(declare-fun lt!811397 () Unit!38283)

(declare-fun choose!12840 (Regex!6029 List!25300) Unit!38283)

(assert (=> d!651014 (= lt!811397 (choose!12840 r!12534 lt!811105))))

(assert (=> d!651014 (validRegex!2305 r!12534)))

(assert (=> d!651014 (= (longestMatchIsAcceptedByMatchOrIsEmpty!627 r!12534 lt!811105) lt!811397)))

(declare-fun b!2175162 () Bool)

(assert (=> b!2175162 (= e!1390990 (matchR!2778 r!12534 (_1!14866 (findLongestMatchInner!654 r!12534 Nil!25216 (size!19701 Nil!25216) lt!811105 lt!811105 (size!19701 lt!811105)))))))

(assert (= (and d!651014 (not res!935936)) b!2175162))

(declare-fun m!2616751 () Bool)

(assert (=> d!651014 m!2616751))

(declare-fun m!2616753 () Bool)

(assert (=> d!651014 m!2616753))

(assert (=> d!651014 m!2616147))

(assert (=> d!651014 m!2616087))

(assert (=> d!651014 m!2616147))

(assert (=> d!651014 m!2616149))

(assert (=> d!651014 m!2616151))

(assert (=> d!651014 m!2616149))

(assert (=> b!2175162 m!2616147))

(assert (=> b!2175162 m!2616149))

(assert (=> b!2175162 m!2616147))

(assert (=> b!2175162 m!2616149))

(assert (=> b!2175162 m!2616151))

(declare-fun m!2616755 () Bool)

(assert (=> b!2175162 m!2616755))

(assert (=> b!2174553 d!651014))

(declare-fun d!651016 () Bool)

(declare-fun lambda!81847 () Int)

(declare-fun exists!766 ((InoxSet Context!3198) Int) Bool)

(assert (=> d!651016 (= (nullableZipper!309 z!4055) (exists!766 z!4055 lambda!81847))))

(declare-fun bs!447104 () Bool)

(assert (= bs!447104 d!651016))

(declare-fun m!2616757 () Bool)

(assert (=> bs!447104 m!2616757))

(assert (=> b!2174553 d!651016))

(declare-fun b!2175173 () Bool)

(declare-fun e!1390999 () Int)

(assert (=> b!2175173 (= e!1390999 lt!811104)))

(declare-fun b!2175174 () Bool)

(declare-fun e!1390997 () Int)

(assert (=> b!2175174 (= e!1390997 lt!811101)))

(declare-fun b!2175175 () Bool)

(declare-fun e!1390998 () Bool)

(declare-fun lostCauseZipper!165 ((InoxSet Context!3198)) Bool)

(assert (=> b!2175175 (= e!1390998 (lostCauseZipper!165 z!4055))))

(declare-fun d!651018 () Bool)

(declare-fun lt!811402 () Int)

(assert (=> d!651018 (and (>= lt!811402 (- 1)) (< lt!811402 lt!811103) (>= lt!811402 lt!811101) (or (= lt!811402 lt!811101) (>= lt!811402 lt!811104)))))

(assert (=> d!651018 (= lt!811402 e!1390997)))

(declare-fun c!344965 () Bool)

(assert (=> d!651018 (= c!344965 e!1390998)))

(declare-fun res!935939 () Bool)

(assert (=> d!651018 (=> res!935939 e!1390998)))

(assert (=> d!651018 (= res!935939 (= lt!811104 lt!811103))))

(assert (=> d!651018 (and (>= lt!811104 0) (<= lt!811104 lt!811103))))

(assert (=> d!651018 (= (furthestNullablePosition!211 z!4055 lt!811104 totalInput!977 lt!811103 lt!811101) lt!811402)))

(declare-fun b!2175176 () Bool)

(assert (=> b!2175176 (= e!1390999 lt!811101)))

(declare-fun lt!811403 () (InoxSet Context!3198))

(declare-fun b!2175177 () Bool)

(assert (=> b!2175177 (= e!1390997 (furthestNullablePosition!211 lt!811403 (+ lt!811104 1) totalInput!977 lt!811103 e!1390999))))

(declare-fun apply!6074 (BalanceConc!16092 Int) C!12204)

(assert (=> b!2175177 (= lt!811403 (derivationStepZipper!132 z!4055 (apply!6074 totalInput!977 lt!811104)))))

(declare-fun c!344966 () Bool)

(assert (=> b!2175177 (= c!344966 (nullableZipper!309 lt!811403))))

(assert (= (and d!651018 (not res!935939)) b!2175175))

(assert (= (and d!651018 c!344965) b!2175174))

(assert (= (and d!651018 (not c!344965)) b!2175177))

(assert (= (and b!2175177 c!344966) b!2175173))

(assert (= (and b!2175177 (not c!344966)) b!2175176))

(declare-fun m!2616759 () Bool)

(assert (=> b!2175175 m!2616759))

(declare-fun m!2616761 () Bool)

(assert (=> b!2175177 m!2616761))

(declare-fun m!2616763 () Bool)

(assert (=> b!2175177 m!2616763))

(assert (=> b!2175177 m!2616763))

(declare-fun m!2616765 () Bool)

(assert (=> b!2175177 m!2616765))

(declare-fun m!2616767 () Bool)

(assert (=> b!2175177 m!2616767))

(assert (=> b!2174553 d!651018))

(declare-fun b!2175181 () Bool)

(declare-fun e!1391002 () Bool)

(assert (=> b!2175181 (= e!1391002 (>= (size!19701 lt!811092) (size!19701 (take!237 lt!811092 lt!811104))))))

(declare-fun b!2175178 () Bool)

(declare-fun e!1391000 () Bool)

(declare-fun e!1391001 () Bool)

(assert (=> b!2175178 (= e!1391000 e!1391001)))

(declare-fun res!935943 () Bool)

(assert (=> b!2175178 (=> (not res!935943) (not e!1391001))))

(assert (=> b!2175178 (= res!935943 (not ((_ is Nil!25216) lt!811092)))))

(declare-fun b!2175179 () Bool)

(declare-fun res!935940 () Bool)

(assert (=> b!2175179 (=> (not res!935940) (not e!1391001))))

(assert (=> b!2175179 (= res!935940 (= (head!4656 (take!237 lt!811092 lt!811104)) (head!4656 lt!811092)))))

(declare-fun d!651020 () Bool)

(assert (=> d!651020 e!1391002))

(declare-fun res!935941 () Bool)

(assert (=> d!651020 (=> res!935941 e!1391002)))

(declare-fun lt!811404 () Bool)

(assert (=> d!651020 (= res!935941 (not lt!811404))))

(assert (=> d!651020 (= lt!811404 e!1391000)))

(declare-fun res!935942 () Bool)

(assert (=> d!651020 (=> res!935942 e!1391000)))

(assert (=> d!651020 (= res!935942 ((_ is Nil!25216) (take!237 lt!811092 lt!811104)))))

(assert (=> d!651020 (= (isPrefix!2145 (take!237 lt!811092 lt!811104) lt!811092) lt!811404)))

(declare-fun b!2175180 () Bool)

(assert (=> b!2175180 (= e!1391001 (isPrefix!2145 (tail!3128 (take!237 lt!811092 lt!811104)) (tail!3128 lt!811092)))))

(assert (= (and d!651020 (not res!935942)) b!2175178))

(assert (= (and b!2175178 res!935943) b!2175179))

(assert (= (and b!2175179 res!935940) b!2175180))

(assert (= (and d!651020 (not res!935941)) b!2175181))

(assert (=> b!2175181 m!2616325))

(assert (=> b!2175181 m!2616157))

(declare-fun m!2616769 () Bool)

(assert (=> b!2175181 m!2616769))

(assert (=> b!2175179 m!2616157))

(declare-fun m!2616771 () Bool)

(assert (=> b!2175179 m!2616771))

(declare-fun m!2616773 () Bool)

(assert (=> b!2175179 m!2616773))

(assert (=> b!2175180 m!2616157))

(declare-fun m!2616775 () Bool)

(assert (=> b!2175180 m!2616775))

(declare-fun m!2616777 () Bool)

(assert (=> b!2175180 m!2616777))

(assert (=> b!2175180 m!2616775))

(assert (=> b!2175180 m!2616777))

(declare-fun m!2616779 () Bool)

(assert (=> b!2175180 m!2616779))

(assert (=> b!2174553 d!651020))

(declare-fun d!651022 () Bool)

(declare-fun lt!811405 () Int)

(assert (=> d!651022 (>= lt!811405 0)))

(declare-fun e!1391003 () Int)

(assert (=> d!651022 (= lt!811405 e!1391003)))

(declare-fun c!344967 () Bool)

(assert (=> d!651022 (= c!344967 ((_ is Nil!25216) lt!811105))))

(assert (=> d!651022 (= (size!19701 lt!811105) lt!811405)))

(declare-fun b!2175182 () Bool)

(assert (=> b!2175182 (= e!1391003 0)))

(declare-fun b!2175183 () Bool)

(assert (=> b!2175183 (= e!1391003 (+ 1 (size!19701 (t!197868 lt!811105))))))

(assert (= (and d!651022 c!344967) b!2175182))

(assert (= (and d!651022 (not c!344967)) b!2175183))

(declare-fun m!2616781 () Bool)

(assert (=> b!2175183 m!2616781))

(assert (=> b!2174553 d!651022))

(declare-fun d!651024 () Bool)

(declare-fun c!344968 () Bool)

(assert (=> d!651024 (= c!344968 (isEmpty!14471 lt!811113))))

(declare-fun e!1391004 () Bool)

(assert (=> d!651024 (= (matchZipper!145 z!4055 lt!811113) e!1391004)))

(declare-fun b!2175184 () Bool)

(assert (=> b!2175184 (= e!1391004 (nullableZipper!309 z!4055))))

(declare-fun b!2175185 () Bool)

(assert (=> b!2175185 (= e!1391004 (matchZipper!145 (derivationStepZipper!132 z!4055 (head!4656 lt!811113)) (tail!3128 lt!811113)))))

(assert (= (and d!651024 c!344968) b!2175184))

(assert (= (and d!651024 (not c!344968)) b!2175185))

(declare-fun m!2616783 () Bool)

(assert (=> d!651024 m!2616783))

(assert (=> b!2175184 m!2616177))

(declare-fun m!2616785 () Bool)

(assert (=> b!2175185 m!2616785))

(assert (=> b!2175185 m!2616785))

(declare-fun m!2616787 () Bool)

(assert (=> b!2175185 m!2616787))

(declare-fun m!2616789 () Bool)

(assert (=> b!2175185 m!2616789))

(assert (=> b!2175185 m!2616787))

(assert (=> b!2175185 m!2616789))

(declare-fun m!2616791 () Bool)

(assert (=> b!2175185 m!2616791))

(assert (=> b!2174553 d!651024))

(declare-fun b!2175189 () Bool)

(declare-fun e!1391007 () Bool)

(assert (=> b!2175189 (= e!1391007 (>= (size!19701 lt!811091) (size!19701 lt!811113)))))

(declare-fun b!2175186 () Bool)

(declare-fun e!1391005 () Bool)

(declare-fun e!1391006 () Bool)

(assert (=> b!2175186 (= e!1391005 e!1391006)))

(declare-fun res!935947 () Bool)

(assert (=> b!2175186 (=> (not res!935947) (not e!1391006))))

(assert (=> b!2175186 (= res!935947 (not ((_ is Nil!25216) lt!811091)))))

(declare-fun b!2175187 () Bool)

(declare-fun res!935944 () Bool)

(assert (=> b!2175187 (=> (not res!935944) (not e!1391006))))

(assert (=> b!2175187 (= res!935944 (= (head!4656 lt!811113) (head!4656 lt!811091)))))

(declare-fun d!651026 () Bool)

(assert (=> d!651026 e!1391007))

(declare-fun res!935945 () Bool)

(assert (=> d!651026 (=> res!935945 e!1391007)))

(declare-fun lt!811406 () Bool)

(assert (=> d!651026 (= res!935945 (not lt!811406))))

(assert (=> d!651026 (= lt!811406 e!1391005)))

(declare-fun res!935946 () Bool)

(assert (=> d!651026 (=> res!935946 e!1391005)))

(assert (=> d!651026 (= res!935946 ((_ is Nil!25216) lt!811113))))

(assert (=> d!651026 (= (isPrefix!2145 lt!811113 lt!811091) lt!811406)))

(declare-fun b!2175188 () Bool)

(assert (=> b!2175188 (= e!1391006 (isPrefix!2145 (tail!3128 lt!811113) (tail!3128 lt!811091)))))

(assert (= (and d!651026 (not res!935946)) b!2175186))

(assert (= (and b!2175186 res!935947) b!2175187))

(assert (= (and b!2175187 res!935944) b!2175188))

(assert (= (and d!651026 (not res!935945)) b!2175189))

(declare-fun m!2616793 () Bool)

(assert (=> b!2175189 m!2616793))

(assert (=> b!2175189 m!2616249))

(assert (=> b!2175187 m!2616785))

(declare-fun m!2616795 () Bool)

(assert (=> b!2175187 m!2616795))

(assert (=> b!2175188 m!2616789))

(declare-fun m!2616797 () Bool)

(assert (=> b!2175188 m!2616797))

(assert (=> b!2175188 m!2616789))

(assert (=> b!2175188 m!2616797))

(declare-fun m!2616799 () Bool)

(assert (=> b!2175188 m!2616799))

(assert (=> b!2174553 d!651026))

(declare-fun d!651028 () Bool)

(assert (=> d!651028 (isPrefix!2145 lt!811113 (++!6388 lt!811113 lt!811089))))

(declare-fun lt!811409 () Unit!38283)

(declare-fun choose!12841 (List!25300 List!25300) Unit!38283)

(assert (=> d!651028 (= lt!811409 (choose!12841 lt!811113 lt!811089))))

(assert (=> d!651028 (= (lemmaConcatTwoListThenFirstIsPrefix!1428 lt!811113 lt!811089) lt!811409)))

(declare-fun bs!447105 () Bool)

(assert (= bs!447105 d!651028))

(assert (=> bs!447105 m!2616143))

(assert (=> bs!447105 m!2616143))

(declare-fun m!2616801 () Bool)

(assert (=> bs!447105 m!2616801))

(declare-fun m!2616803 () Bool)

(assert (=> bs!447105 m!2616803))

(assert (=> b!2174553 d!651028))

(declare-fun d!651030 () Bool)

(assert (=> d!651030 (isPrefix!2145 (_1!14866 lt!811097) (++!6388 (_1!14866 lt!811097) (_2!14866 lt!811097)))))

(declare-fun lt!811410 () Unit!38283)

(assert (=> d!651030 (= lt!811410 (choose!12841 (_1!14866 lt!811097) (_2!14866 lt!811097)))))

(assert (=> d!651030 (= (lemmaConcatTwoListThenFirstIsPrefix!1428 (_1!14866 lt!811097) (_2!14866 lt!811097)) lt!811410)))

(declare-fun bs!447106 () Bool)

(assert (= bs!447106 d!651030))

(assert (=> bs!447106 m!2616129))

(assert (=> bs!447106 m!2616129))

(declare-fun m!2616805 () Bool)

(assert (=> bs!447106 m!2616805))

(declare-fun m!2616807 () Bool)

(assert (=> bs!447106 m!2616807))

(assert (=> b!2174553 d!651030))

(declare-fun bm!130586 () Bool)

(declare-fun call!130591 () Unit!38283)

(assert (=> bm!130586 (= call!130591 (lemmaIsPrefixSameLengthThenSameList!357 lt!811105 Nil!25216 lt!811105))))

(declare-fun bm!130587 () Bool)

(declare-fun call!130598 () Unit!38283)

(declare-fun lemmaIsPrefixRefl!1415 (List!25300 List!25300) Unit!38283)

(assert (=> bm!130587 (= call!130598 (lemmaIsPrefixRefl!1415 lt!811105 lt!811105))))

(declare-fun call!130596 () Regex!6029)

(declare-fun bm!130588 () Bool)

(declare-fun lt!811485 () List!25300)

(declare-fun call!130593 () tuple2!24992)

(declare-fun call!130592 () List!25300)

(assert (=> bm!130588 (= call!130593 (findLongestMatchInner!654 call!130596 lt!811485 (+ (size!19701 Nil!25216) 1) call!130592 lt!811105 (size!19701 lt!811105)))))

(declare-fun b!2175218 () Bool)

(declare-fun e!1391029 () tuple2!24992)

(declare-fun e!1391027 () tuple2!24992)

(assert (=> b!2175218 (= e!1391029 e!1391027)))

(declare-fun c!344982 () Bool)

(assert (=> b!2175218 (= c!344982 (= (size!19701 Nil!25216) (size!19701 lt!811105)))))

(declare-fun b!2175219 () Bool)

(declare-fun e!1391028 () tuple2!24992)

(declare-fun lt!811491 () tuple2!24992)

(assert (=> b!2175219 (= e!1391028 lt!811491)))

(declare-fun b!2175220 () Bool)

(declare-fun e!1391031 () tuple2!24992)

(assert (=> b!2175220 (= e!1391031 call!130593)))

(declare-fun bm!130589 () Bool)

(declare-fun call!130594 () C!12204)

(assert (=> bm!130589 (= call!130596 (derivativeStep!1446 r!12534 call!130594))))

(declare-fun b!2175221 () Bool)

(declare-fun e!1391030 () Bool)

(declare-fun e!1391025 () Bool)

(assert (=> b!2175221 (= e!1391030 e!1391025)))

(declare-fun res!935953 () Bool)

(assert (=> b!2175221 (=> res!935953 e!1391025)))

(declare-fun lt!811467 () tuple2!24992)

(assert (=> b!2175221 (= res!935953 (isEmpty!14471 (_1!14866 lt!811467)))))

(declare-fun b!2175222 () Bool)

(assert (=> b!2175222 (= e!1391025 (>= (size!19701 (_1!14866 lt!811467)) (size!19701 Nil!25216)))))

(declare-fun b!2175223 () Bool)

(assert (=> b!2175223 (= e!1391029 (tuple2!24993 Nil!25216 lt!811105))))

(declare-fun d!651032 () Bool)

(assert (=> d!651032 e!1391030))

(declare-fun res!935952 () Bool)

(assert (=> d!651032 (=> (not res!935952) (not e!1391030))))

(assert (=> d!651032 (= res!935952 (= (++!6388 (_1!14866 lt!811467) (_2!14866 lt!811467)) lt!811105))))

(assert (=> d!651032 (= lt!811467 e!1391029)))

(declare-fun c!344981 () Bool)

(declare-fun lostCause!675 (Regex!6029) Bool)

(assert (=> d!651032 (= c!344981 (lostCause!675 r!12534))))

(declare-fun lt!811478 () Unit!38283)

(declare-fun Unit!38288 () Unit!38283)

(assert (=> d!651032 (= lt!811478 Unit!38288)))

(declare-fun getSuffix!1040 (List!25300 List!25300) List!25300)

(assert (=> d!651032 (= (getSuffix!1040 lt!811105 Nil!25216) lt!811105)))

(declare-fun lt!811474 () Unit!38283)

(declare-fun lt!811483 () Unit!38283)

(assert (=> d!651032 (= lt!811474 lt!811483)))

(declare-fun lt!811494 () List!25300)

(assert (=> d!651032 (= lt!811105 lt!811494)))

(declare-fun lemmaSamePrefixThenSameSuffix!962 (List!25300 List!25300 List!25300 List!25300 List!25300) Unit!38283)

(assert (=> d!651032 (= lt!811483 (lemmaSamePrefixThenSameSuffix!962 Nil!25216 lt!811105 Nil!25216 lt!811494 lt!811105))))

(assert (=> d!651032 (= lt!811494 (getSuffix!1040 lt!811105 Nil!25216))))

(declare-fun lt!811492 () Unit!38283)

(declare-fun lt!811472 () Unit!38283)

(assert (=> d!651032 (= lt!811492 lt!811472)))

(assert (=> d!651032 (isPrefix!2145 Nil!25216 (++!6388 Nil!25216 lt!811105))))

(assert (=> d!651032 (= lt!811472 (lemmaConcatTwoListThenFirstIsPrefix!1428 Nil!25216 lt!811105))))

(assert (=> d!651032 (validRegex!2305 r!12534)))

(assert (=> d!651032 (= (findLongestMatchInner!654 r!12534 Nil!25216 (size!19701 Nil!25216) lt!811105 lt!811105 (size!19701 lt!811105)) lt!811467)))

(declare-fun bm!130590 () Bool)

(declare-fun call!130595 () Bool)

(assert (=> bm!130590 (= call!130595 (nullable!1703 r!12534))))

(declare-fun bm!130591 () Bool)

(assert (=> bm!130591 (= call!130592 (tail!3128 lt!811105))))

(declare-fun b!2175224 () Bool)

(assert (=> b!2175224 (= e!1391031 e!1391028)))

(assert (=> b!2175224 (= lt!811491 call!130593)))

(declare-fun c!344984 () Bool)

(assert (=> b!2175224 (= c!344984 (isEmpty!14471 (_1!14866 lt!811491)))))

(declare-fun b!2175225 () Bool)

(declare-fun c!344986 () Bool)

(assert (=> b!2175225 (= c!344986 call!130595)))

(declare-fun lt!811471 () Unit!38283)

(declare-fun lt!811484 () Unit!38283)

(assert (=> b!2175225 (= lt!811471 lt!811484)))

(assert (=> b!2175225 (= lt!811105 Nil!25216)))

(assert (=> b!2175225 (= lt!811484 call!130591)))

(declare-fun lt!811468 () Unit!38283)

(declare-fun lt!811480 () Unit!38283)

(assert (=> b!2175225 (= lt!811468 lt!811480)))

(declare-fun call!130597 () Bool)

(assert (=> b!2175225 call!130597))

(assert (=> b!2175225 (= lt!811480 call!130598)))

(declare-fun e!1391026 () tuple2!24992)

(assert (=> b!2175225 (= e!1391027 e!1391026)))

(declare-fun b!2175226 () Bool)

(assert (=> b!2175226 (= e!1391028 (tuple2!24993 Nil!25216 lt!811105))))

(declare-fun b!2175227 () Bool)

(assert (=> b!2175227 (= e!1391026 (tuple2!24993 Nil!25216 lt!811105))))

(declare-fun b!2175228 () Bool)

(declare-fun e!1391024 () Unit!38283)

(declare-fun Unit!38289 () Unit!38283)

(assert (=> b!2175228 (= e!1391024 Unit!38289)))

(declare-fun lt!811488 () Unit!38283)

(assert (=> b!2175228 (= lt!811488 call!130598)))

(assert (=> b!2175228 call!130597))

(declare-fun lt!811490 () Unit!38283)

(assert (=> b!2175228 (= lt!811490 lt!811488)))

(declare-fun lt!811475 () Unit!38283)

(assert (=> b!2175228 (= lt!811475 call!130591)))

(assert (=> b!2175228 (= lt!811105 Nil!25216)))

(declare-fun lt!811481 () Unit!38283)

(assert (=> b!2175228 (= lt!811481 lt!811475)))

(assert (=> b!2175228 false))

(declare-fun b!2175229 () Bool)

(declare-fun Unit!38290 () Unit!38283)

(assert (=> b!2175229 (= e!1391024 Unit!38290)))

(declare-fun bm!130592 () Bool)

(assert (=> bm!130592 (= call!130594 (head!4656 lt!811105))))

(declare-fun b!2175230 () Bool)

(declare-fun c!344983 () Bool)

(assert (=> b!2175230 (= c!344983 call!130595)))

(declare-fun lt!811493 () Unit!38283)

(declare-fun lt!811473 () Unit!38283)

(assert (=> b!2175230 (= lt!811493 lt!811473)))

(declare-fun lt!811486 () C!12204)

(declare-fun lt!811487 () List!25300)

(assert (=> b!2175230 (= (++!6388 (++!6388 Nil!25216 (Cons!25216 lt!811486 Nil!25216)) lt!811487) lt!811105)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!513 (List!25300 C!12204 List!25300 List!25300) Unit!38283)

(assert (=> b!2175230 (= lt!811473 (lemmaMoveElementToOtherListKeepsConcatEq!513 Nil!25216 lt!811486 lt!811487 lt!811105))))

(assert (=> b!2175230 (= lt!811487 (tail!3128 lt!811105))))

(assert (=> b!2175230 (= lt!811486 (head!4656 lt!811105))))

(declare-fun lt!811479 () Unit!38283)

(declare-fun lt!811489 () Unit!38283)

(assert (=> b!2175230 (= lt!811479 lt!811489)))

(assert (=> b!2175230 (isPrefix!2145 (++!6388 Nil!25216 (Cons!25216 (head!4656 (getSuffix!1040 lt!811105 Nil!25216)) Nil!25216)) lt!811105)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!385 (List!25300 List!25300) Unit!38283)

(assert (=> b!2175230 (= lt!811489 (lemmaAddHeadSuffixToPrefixStillPrefix!385 Nil!25216 lt!811105))))

(declare-fun lt!811476 () Unit!38283)

(declare-fun lt!811482 () Unit!38283)

(assert (=> b!2175230 (= lt!811476 lt!811482)))

(assert (=> b!2175230 (= lt!811482 (lemmaAddHeadSuffixToPrefixStillPrefix!385 Nil!25216 lt!811105))))

(assert (=> b!2175230 (= lt!811485 (++!6388 Nil!25216 (Cons!25216 (head!4656 lt!811105) Nil!25216)))))

(declare-fun lt!811477 () Unit!38283)

(assert (=> b!2175230 (= lt!811477 e!1391024)))

(declare-fun c!344985 () Bool)

(assert (=> b!2175230 (= c!344985 (= (size!19701 Nil!25216) (size!19701 lt!811105)))))

(declare-fun lt!811469 () Unit!38283)

(declare-fun lt!811470 () Unit!38283)

(assert (=> b!2175230 (= lt!811469 lt!811470)))

(assert (=> b!2175230 (<= (size!19701 Nil!25216) (size!19701 lt!811105))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!188 (List!25300 List!25300) Unit!38283)

(assert (=> b!2175230 (= lt!811470 (lemmaIsPrefixThenSmallerEqSize!188 Nil!25216 lt!811105))))

(assert (=> b!2175230 (= e!1391027 e!1391031)))

(declare-fun b!2175231 () Bool)

(assert (=> b!2175231 (= e!1391026 (tuple2!24993 Nil!25216 Nil!25216))))

(declare-fun bm!130593 () Bool)

(assert (=> bm!130593 (= call!130597 (isPrefix!2145 lt!811105 lt!811105))))

(assert (= (and d!651032 c!344981) b!2175223))

(assert (= (and d!651032 (not c!344981)) b!2175218))

(assert (= (and b!2175218 c!344982) b!2175225))

(assert (= (and b!2175218 (not c!344982)) b!2175230))

(assert (= (and b!2175225 c!344986) b!2175231))

(assert (= (and b!2175225 (not c!344986)) b!2175227))

(assert (= (and b!2175230 c!344985) b!2175228))

(assert (= (and b!2175230 (not c!344985)) b!2175229))

(assert (= (and b!2175230 c!344983) b!2175224))

(assert (= (and b!2175230 (not c!344983)) b!2175220))

(assert (= (and b!2175224 c!344984) b!2175226))

(assert (= (and b!2175224 (not c!344984)) b!2175219))

(assert (= (or b!2175224 b!2175220) bm!130592))

(assert (= (or b!2175224 b!2175220) bm!130591))

(assert (= (or b!2175224 b!2175220) bm!130589))

(assert (= (or b!2175224 b!2175220) bm!130588))

(assert (= (or b!2175225 b!2175228) bm!130593))

(assert (= (or b!2175225 b!2175228) bm!130587))

(assert (= (or b!2175225 b!2175228) bm!130586))

(assert (= (or b!2175225 b!2175230) bm!130590))

(assert (= (and d!651032 res!935952) b!2175221))

(assert (= (and b!2175221 (not res!935953)) b!2175222))

(declare-fun m!2616809 () Bool)

(assert (=> b!2175224 m!2616809))

(assert (=> bm!130590 m!2616335))

(declare-fun m!2616811 () Bool)

(assert (=> b!2175222 m!2616811))

(assert (=> b!2175222 m!2616147))

(declare-fun m!2616813 () Bool)

(assert (=> b!2175230 m!2616813))

(assert (=> b!2175230 m!2616813))

(declare-fun m!2616815 () Bool)

(assert (=> b!2175230 m!2616815))

(assert (=> b!2175230 m!2616357))

(declare-fun m!2616817 () Bool)

(assert (=> b!2175230 m!2616817))

(assert (=> b!2175230 m!2616147))

(declare-fun m!2616819 () Bool)

(assert (=> b!2175230 m!2616819))

(declare-fun m!2616821 () Bool)

(assert (=> b!2175230 m!2616821))

(declare-fun m!2616823 () Bool)

(assert (=> b!2175230 m!2616823))

(declare-fun m!2616825 () Bool)

(assert (=> b!2175230 m!2616825))

(declare-fun m!2616827 () Bool)

(assert (=> b!2175230 m!2616827))

(declare-fun m!2616829 () Bool)

(assert (=> b!2175230 m!2616829))

(assert (=> b!2175230 m!2616821))

(assert (=> b!2175230 m!2616361))

(declare-fun m!2616831 () Bool)

(assert (=> b!2175230 m!2616831))

(assert (=> b!2175230 m!2616149))

(assert (=> b!2175230 m!2616827))

(assert (=> bm!130592 m!2616357))

(assert (=> bm!130588 m!2616149))

(declare-fun m!2616833 () Bool)

(assert (=> bm!130588 m!2616833))

(declare-fun m!2616835 () Bool)

(assert (=> bm!130586 m!2616835))

(declare-fun m!2616837 () Bool)

(assert (=> bm!130589 m!2616837))

(declare-fun m!2616839 () Bool)

(assert (=> bm!130587 m!2616839))

(declare-fun m!2616841 () Bool)

(assert (=> b!2175221 m!2616841))

(assert (=> d!651032 m!2616087))

(declare-fun m!2616843 () Bool)

(assert (=> d!651032 m!2616843))

(declare-fun m!2616845 () Bool)

(assert (=> d!651032 m!2616845))

(declare-fun m!2616847 () Bool)

(assert (=> d!651032 m!2616847))

(assert (=> d!651032 m!2616813))

(declare-fun m!2616849 () Bool)

(assert (=> d!651032 m!2616849))

(assert (=> d!651032 m!2616847))

(declare-fun m!2616851 () Bool)

(assert (=> d!651032 m!2616851))

(declare-fun m!2616853 () Bool)

(assert (=> d!651032 m!2616853))

(assert (=> bm!130591 m!2616361))

(declare-fun m!2616855 () Bool)

(assert (=> bm!130593 m!2616855))

(assert (=> b!2174553 d!651032))

(declare-fun d!651034 () Bool)

(assert (=> d!651034 (= (isEmpty!14471 (_1!14866 lt!811097)) ((_ is Nil!25216) (_1!14866 lt!811097)))))

(assert (=> b!2174557 d!651034))

(declare-fun d!651036 () Bool)

(declare-fun lt!811497 () Bool)

(assert (=> d!651036 (= lt!811497 (isEmpty!14471 (list!9672 (_1!14865 lt!811106))))))

(declare-fun isEmpty!14474 (Conc!8165) Bool)

(assert (=> d!651036 (= lt!811497 (isEmpty!14474 (c!344792 (_1!14865 lt!811106))))))

(assert (=> d!651036 (= (isEmpty!14472 (_1!14865 lt!811106)) lt!811497)))

(declare-fun bs!447107 () Bool)

(assert (= bs!447107 d!651036))

(assert (=> bs!447107 m!2616141))

(assert (=> bs!447107 m!2616141))

(declare-fun m!2616857 () Bool)

(assert (=> bs!447107 m!2616857))

(declare-fun m!2616859 () Bool)

(assert (=> bs!447107 m!2616859))

(assert (=> b!2174556 d!651036))

(declare-fun d!651038 () Bool)

(declare-fun e!1391035 () Bool)

(assert (=> d!651038 e!1391035))

(declare-fun c!344989 () Bool)

(assert (=> d!651038 (= c!344989 ((_ is EmptyExpr!6029) r!12534))))

(declare-fun lt!811498 () Bool)

(declare-fun e!1391036 () Bool)

(assert (=> d!651038 (= lt!811498 e!1391036)))

(declare-fun c!344988 () Bool)

(assert (=> d!651038 (= c!344988 (isEmpty!14471 (_1!14866 lt!811097)))))

(assert (=> d!651038 (validRegex!2305 r!12534)))

(assert (=> d!651038 (= (matchR!2778 r!12534 (_1!14866 lt!811097)) lt!811498)))

(declare-fun b!2175232 () Bool)

(declare-fun res!935954 () Bool)

(declare-fun e!1391033 () Bool)

(assert (=> b!2175232 (=> res!935954 e!1391033)))

(declare-fun e!1391037 () Bool)

(assert (=> b!2175232 (= res!935954 e!1391037)))

(declare-fun res!935959 () Bool)

(assert (=> b!2175232 (=> (not res!935959) (not e!1391037))))

(assert (=> b!2175232 (= res!935959 lt!811498)))

(declare-fun b!2175233 () Bool)

(declare-fun res!935956 () Bool)

(assert (=> b!2175233 (=> (not res!935956) (not e!1391037))))

(declare-fun call!130599 () Bool)

(assert (=> b!2175233 (= res!935956 (not call!130599))))

(declare-fun b!2175234 () Bool)

(declare-fun res!935960 () Bool)

(declare-fun e!1391032 () Bool)

(assert (=> b!2175234 (=> res!935960 e!1391032)))

(assert (=> b!2175234 (= res!935960 (not (isEmpty!14471 (tail!3128 (_1!14866 lt!811097)))))))

(declare-fun b!2175235 () Bool)

(assert (=> b!2175235 (= e!1391037 (= (head!4656 (_1!14866 lt!811097)) (c!344793 r!12534)))))

(declare-fun bm!130594 () Bool)

(assert (=> bm!130594 (= call!130599 (isEmpty!14471 (_1!14866 lt!811097)))))

(declare-fun b!2175236 () Bool)

(declare-fun e!1391034 () Bool)

(assert (=> b!2175236 (= e!1391034 (not lt!811498))))

(declare-fun b!2175237 () Bool)

(assert (=> b!2175237 (= e!1391035 (= lt!811498 call!130599))))

(declare-fun b!2175238 () Bool)

(declare-fun res!935955 () Bool)

(assert (=> b!2175238 (=> (not res!935955) (not e!1391037))))

(assert (=> b!2175238 (= res!935955 (isEmpty!14471 (tail!3128 (_1!14866 lt!811097))))))

(declare-fun b!2175239 () Bool)

(assert (=> b!2175239 (= e!1391035 e!1391034)))

(declare-fun c!344987 () Bool)

(assert (=> b!2175239 (= c!344987 ((_ is EmptyLang!6029) r!12534))))

(declare-fun b!2175240 () Bool)

(declare-fun res!935961 () Bool)

(assert (=> b!2175240 (=> res!935961 e!1391033)))

(assert (=> b!2175240 (= res!935961 (not ((_ is ElementMatch!6029) r!12534)))))

(assert (=> b!2175240 (= e!1391034 e!1391033)))

(declare-fun b!2175241 () Bool)

(assert (=> b!2175241 (= e!1391032 (not (= (head!4656 (_1!14866 lt!811097)) (c!344793 r!12534))))))

(declare-fun b!2175242 () Bool)

(assert (=> b!2175242 (= e!1391036 (nullable!1703 r!12534))))

(declare-fun b!2175243 () Bool)

(assert (=> b!2175243 (= e!1391036 (matchR!2778 (derivativeStep!1446 r!12534 (head!4656 (_1!14866 lt!811097))) (tail!3128 (_1!14866 lt!811097))))))

(declare-fun b!2175244 () Bool)

(declare-fun e!1391038 () Bool)

(assert (=> b!2175244 (= e!1391038 e!1391032)))

(declare-fun res!935957 () Bool)

(assert (=> b!2175244 (=> res!935957 e!1391032)))

(assert (=> b!2175244 (= res!935957 call!130599)))

(declare-fun b!2175245 () Bool)

(assert (=> b!2175245 (= e!1391033 e!1391038)))

(declare-fun res!935958 () Bool)

(assert (=> b!2175245 (=> (not res!935958) (not e!1391038))))

(assert (=> b!2175245 (= res!935958 (not lt!811498))))

(assert (= (and d!651038 c!344988) b!2175242))

(assert (= (and d!651038 (not c!344988)) b!2175243))

(assert (= (and d!651038 c!344989) b!2175237))

(assert (= (and d!651038 (not c!344989)) b!2175239))

(assert (= (and b!2175239 c!344987) b!2175236))

(assert (= (and b!2175239 (not c!344987)) b!2175240))

(assert (= (and b!2175240 (not res!935961)) b!2175232))

(assert (= (and b!2175232 res!935959) b!2175233))

(assert (= (and b!2175233 res!935956) b!2175238))

(assert (= (and b!2175238 res!935955) b!2175235))

(assert (= (and b!2175232 (not res!935954)) b!2175245))

(assert (= (and b!2175245 res!935958) b!2175244))

(assert (= (and b!2175244 (not res!935957)) b!2175234))

(assert (= (and b!2175234 (not res!935960)) b!2175241))

(assert (= (or b!2175237 b!2175233 b!2175244) bm!130594))

(assert (=> bm!130594 m!2616085))

(assert (=> b!2175242 m!2616335))

(assert (=> b!2175241 m!2616723))

(assert (=> b!2175235 m!2616723))

(assert (=> b!2175234 m!2616727))

(assert (=> b!2175234 m!2616727))

(declare-fun m!2616861 () Bool)

(assert (=> b!2175234 m!2616861))

(assert (=> b!2175243 m!2616723))

(assert (=> b!2175243 m!2616723))

(declare-fun m!2616863 () Bool)

(assert (=> b!2175243 m!2616863))

(assert (=> b!2175243 m!2616727))

(assert (=> b!2175243 m!2616863))

(assert (=> b!2175243 m!2616727))

(declare-fun m!2616865 () Bool)

(assert (=> b!2175243 m!2616865))

(assert (=> d!651038 m!2616085))

(assert (=> d!651038 m!2616087))

(assert (=> b!2175238 m!2616727))

(assert (=> b!2175238 m!2616727))

(assert (=> b!2175238 m!2616861))

(assert (=> b!2174566 d!651038))

(declare-fun d!651040 () Bool)

(declare-fun e!1391041 () Bool)

(assert (=> d!651040 e!1391041))

(declare-fun res!935964 () Bool)

(assert (=> d!651040 (=> res!935964 e!1391041)))

(declare-fun lt!811501 () Bool)

(assert (=> d!651040 (= res!935964 (not lt!811501))))

(assert (=> d!651040 (= lt!811501 (= lt!811105 (drop!1247 lt!811092 (- (size!19701 lt!811092) (size!19701 lt!811105)))))))

(assert (=> d!651040 (= (isSuffix!696 lt!811105 lt!811092) lt!811501)))

(declare-fun b!2175248 () Bool)

(assert (=> b!2175248 (= e!1391041 (>= (size!19701 lt!811092) (size!19701 lt!811105)))))

(assert (= (and d!651040 (not res!935964)) b!2175248))

(assert (=> d!651040 m!2616325))

(assert (=> d!651040 m!2616149))

(declare-fun m!2616867 () Bool)

(assert (=> d!651040 m!2616867))

(assert (=> b!2175248 m!2616325))

(assert (=> b!2175248 m!2616149))

(assert (=> b!2174555 d!651040))

(declare-fun d!651042 () Bool)

(assert (=> d!651042 (= (list!9672 totalInput!977) (list!9673 (c!344792 totalInput!977)))))

(declare-fun bs!447108 () Bool)

(assert (= bs!447108 d!651042))

(declare-fun m!2616869 () Bool)

(assert (=> bs!447108 m!2616869))

(assert (=> b!2174555 d!651042))

(declare-fun d!651044 () Bool)

(assert (=> d!651044 (= (list!9672 input!5540) (list!9673 (c!344792 input!5540)))))

(declare-fun bs!447109 () Bool)

(assert (= bs!447109 d!651044))

(declare-fun m!2616871 () Bool)

(assert (=> bs!447109 m!2616871))

(assert (=> b!2174555 d!651044))

(declare-fun d!651046 () Bool)

(declare-fun lt!811502 () Int)

(assert (=> d!651046 (= lt!811502 (size!19701 (list!9672 (_1!14865 lt!811106))))))

(assert (=> d!651046 (= lt!811502 (size!19703 (c!344792 (_1!14865 lt!811106))))))

(assert (=> d!651046 (= (size!19700 (_1!14865 lt!811106)) lt!811502)))

(declare-fun bs!447110 () Bool)

(assert (= bs!447110 d!651046))

(assert (=> bs!447110 m!2616141))

(assert (=> bs!447110 m!2616141))

(declare-fun m!2616873 () Bool)

(assert (=> bs!447110 m!2616873))

(declare-fun m!2616875 () Bool)

(assert (=> bs!447110 m!2616875))

(assert (=> b!2174550 d!651046))

(declare-fun d!651048 () Bool)

(assert (=> d!651048 (= (matchR!2778 r!12534 (_1!14866 lt!811097)) (matchZipper!145 z!4055 (_1!14866 lt!811097)))))

(declare-fun lt!811505 () Unit!38283)

(declare-fun choose!12842 ((InoxSet Context!3198) List!25302 Regex!6029 List!25300) Unit!38283)

(assert (=> d!651048 (= lt!811505 (choose!12842 z!4055 lt!811098 r!12534 (_1!14866 lt!811097)))))

(assert (=> d!651048 (validRegex!2305 r!12534)))

(assert (=> d!651048 (= (theoremZipperRegexEquiv!55 z!4055 lt!811098 r!12534 (_1!14866 lt!811097)) lt!811505)))

(declare-fun bs!447111 () Bool)

(assert (= bs!447111 d!651048))

(assert (=> bs!447111 m!2616073))

(assert (=> bs!447111 m!2616099))

(declare-fun m!2616877 () Bool)

(assert (=> bs!447111 m!2616877))

(assert (=> bs!447111 m!2616087))

(assert (=> b!2174550 d!651048))

(declare-fun d!651050 () Bool)

(declare-fun c!344990 () Bool)

(assert (=> d!651050 (= c!344990 (isEmpty!14471 (_1!14866 lt!811097)))))

(declare-fun e!1391042 () Bool)

(assert (=> d!651050 (= (matchZipper!145 z!4055 (_1!14866 lt!811097)) e!1391042)))

(declare-fun b!2175249 () Bool)

(assert (=> b!2175249 (= e!1391042 (nullableZipper!309 z!4055))))

(declare-fun b!2175250 () Bool)

(assert (=> b!2175250 (= e!1391042 (matchZipper!145 (derivationStepZipper!132 z!4055 (head!4656 (_1!14866 lt!811097))) (tail!3128 (_1!14866 lt!811097))))))

(assert (= (and d!651050 c!344990) b!2175249))

(assert (= (and d!651050 (not c!344990)) b!2175250))

(assert (=> d!651050 m!2616085))

(assert (=> b!2175249 m!2616177))

(assert (=> b!2175250 m!2616723))

(assert (=> b!2175250 m!2616723))

(declare-fun m!2616879 () Bool)

(assert (=> b!2175250 m!2616879))

(assert (=> b!2175250 m!2616727))

(assert (=> b!2175250 m!2616879))

(assert (=> b!2175250 m!2616727))

(declare-fun m!2616881 () Bool)

(assert (=> b!2175250 m!2616881))

(assert (=> b!2174550 d!651050))

(declare-fun d!651052 () Bool)

(declare-fun lt!811506 () Int)

(assert (=> d!651052 (>= lt!811506 0)))

(declare-fun e!1391043 () Int)

(assert (=> d!651052 (= lt!811506 e!1391043)))

(declare-fun c!344991 () Bool)

(assert (=> d!651052 (= c!344991 ((_ is Nil!25216) (_1!14866 lt!811097)))))

(assert (=> d!651052 (= (size!19701 (_1!14866 lt!811097)) lt!811506)))

(declare-fun b!2175251 () Bool)

(assert (=> b!2175251 (= e!1391043 0)))

(declare-fun b!2175252 () Bool)

(assert (=> b!2175252 (= e!1391043 (+ 1 (size!19701 (t!197868 (_1!14866 lt!811097)))))))

(assert (= (and d!651052 c!344991) b!2175251))

(assert (= (and d!651052 (not c!344991)) b!2175252))

(declare-fun m!2616883 () Bool)

(assert (=> b!2175252 m!2616883))

(assert (=> b!2174550 d!651052))

(declare-fun d!651054 () Bool)

(declare-fun e!1391047 () Bool)

(assert (=> d!651054 e!1391047))

(declare-fun c!344994 () Bool)

(assert (=> d!651054 (= c!344994 ((_ is EmptyExpr!6029) r!12534))))

(declare-fun lt!811507 () Bool)

(declare-fun e!1391048 () Bool)

(assert (=> d!651054 (= lt!811507 e!1391048)))

(declare-fun c!344993 () Bool)

(assert (=> d!651054 (= c!344993 (isEmpty!14471 lt!811113))))

(assert (=> d!651054 (validRegex!2305 r!12534)))

(assert (=> d!651054 (= (matchR!2778 r!12534 lt!811113) lt!811507)))

(declare-fun b!2175253 () Bool)

(declare-fun res!935965 () Bool)

(declare-fun e!1391045 () Bool)

(assert (=> b!2175253 (=> res!935965 e!1391045)))

(declare-fun e!1391049 () Bool)

(assert (=> b!2175253 (= res!935965 e!1391049)))

(declare-fun res!935970 () Bool)

(assert (=> b!2175253 (=> (not res!935970) (not e!1391049))))

(assert (=> b!2175253 (= res!935970 lt!811507)))

(declare-fun b!2175254 () Bool)

(declare-fun res!935967 () Bool)

(assert (=> b!2175254 (=> (not res!935967) (not e!1391049))))

(declare-fun call!130600 () Bool)

(assert (=> b!2175254 (= res!935967 (not call!130600))))

(declare-fun b!2175255 () Bool)

(declare-fun res!935971 () Bool)

(declare-fun e!1391044 () Bool)

(assert (=> b!2175255 (=> res!935971 e!1391044)))

(assert (=> b!2175255 (= res!935971 (not (isEmpty!14471 (tail!3128 lt!811113))))))

(declare-fun b!2175256 () Bool)

(assert (=> b!2175256 (= e!1391049 (= (head!4656 lt!811113) (c!344793 r!12534)))))

(declare-fun bm!130595 () Bool)

(assert (=> bm!130595 (= call!130600 (isEmpty!14471 lt!811113))))

(declare-fun b!2175257 () Bool)

(declare-fun e!1391046 () Bool)

(assert (=> b!2175257 (= e!1391046 (not lt!811507))))

(declare-fun b!2175258 () Bool)

(assert (=> b!2175258 (= e!1391047 (= lt!811507 call!130600))))

(declare-fun b!2175259 () Bool)

(declare-fun res!935966 () Bool)

(assert (=> b!2175259 (=> (not res!935966) (not e!1391049))))

(assert (=> b!2175259 (= res!935966 (isEmpty!14471 (tail!3128 lt!811113)))))

(declare-fun b!2175260 () Bool)

(assert (=> b!2175260 (= e!1391047 e!1391046)))

(declare-fun c!344992 () Bool)

(assert (=> b!2175260 (= c!344992 ((_ is EmptyLang!6029) r!12534))))

(declare-fun b!2175261 () Bool)

(declare-fun res!935972 () Bool)

(assert (=> b!2175261 (=> res!935972 e!1391045)))

(assert (=> b!2175261 (= res!935972 (not ((_ is ElementMatch!6029) r!12534)))))

(assert (=> b!2175261 (= e!1391046 e!1391045)))

(declare-fun b!2175262 () Bool)

(assert (=> b!2175262 (= e!1391044 (not (= (head!4656 lt!811113) (c!344793 r!12534))))))

(declare-fun b!2175263 () Bool)

(assert (=> b!2175263 (= e!1391048 (nullable!1703 r!12534))))

(declare-fun b!2175264 () Bool)

(assert (=> b!2175264 (= e!1391048 (matchR!2778 (derivativeStep!1446 r!12534 (head!4656 lt!811113)) (tail!3128 lt!811113)))))

(declare-fun b!2175265 () Bool)

(declare-fun e!1391050 () Bool)

(assert (=> b!2175265 (= e!1391050 e!1391044)))

(declare-fun res!935968 () Bool)

(assert (=> b!2175265 (=> res!935968 e!1391044)))

(assert (=> b!2175265 (= res!935968 call!130600)))

(declare-fun b!2175266 () Bool)

(assert (=> b!2175266 (= e!1391045 e!1391050)))

(declare-fun res!935969 () Bool)

(assert (=> b!2175266 (=> (not res!935969) (not e!1391050))))

(assert (=> b!2175266 (= res!935969 (not lt!811507))))

(assert (= (and d!651054 c!344993) b!2175263))

(assert (= (and d!651054 (not c!344993)) b!2175264))

(assert (= (and d!651054 c!344994) b!2175258))

(assert (= (and d!651054 (not c!344994)) b!2175260))

(assert (= (and b!2175260 c!344992) b!2175257))

(assert (= (and b!2175260 (not c!344992)) b!2175261))

(assert (= (and b!2175261 (not res!935972)) b!2175253))

(assert (= (and b!2175253 res!935970) b!2175254))

(assert (= (and b!2175254 res!935967) b!2175259))

(assert (= (and b!2175259 res!935966) b!2175256))

(assert (= (and b!2175253 (not res!935965)) b!2175266))

(assert (= (and b!2175266 res!935969) b!2175265))

(assert (= (and b!2175265 (not res!935968)) b!2175255))

(assert (= (and b!2175255 (not res!935971)) b!2175262))

(assert (= (or b!2175258 b!2175254 b!2175265) bm!130595))

(assert (=> bm!130595 m!2616783))

(assert (=> b!2175263 m!2616335))

(assert (=> b!2175262 m!2616785))

(assert (=> b!2175256 m!2616785))

(assert (=> b!2175255 m!2616789))

(assert (=> b!2175255 m!2616789))

(declare-fun m!2616885 () Bool)

(assert (=> b!2175255 m!2616885))

(assert (=> b!2175264 m!2616785))

(assert (=> b!2175264 m!2616785))

(declare-fun m!2616887 () Bool)

(assert (=> b!2175264 m!2616887))

(assert (=> b!2175264 m!2616789))

(assert (=> b!2175264 m!2616887))

(assert (=> b!2175264 m!2616789))

(declare-fun m!2616889 () Bool)

(assert (=> b!2175264 m!2616889))

(assert (=> d!651054 m!2616783))

(assert (=> d!651054 m!2616087))

(assert (=> b!2175259 m!2616789))

(assert (=> b!2175259 m!2616789))

(assert (=> b!2175259 m!2616885))

(assert (=> b!2174550 d!651054))

(declare-fun d!651056 () Bool)

(assert (=> d!651056 (= (matchR!2778 r!12534 lt!811113) (matchZipper!145 z!4055 lt!811113))))

(declare-fun lt!811508 () Unit!38283)

(assert (=> d!651056 (= lt!811508 (choose!12842 z!4055 lt!811098 r!12534 lt!811113))))

(assert (=> d!651056 (validRegex!2305 r!12534)))

(assert (=> d!651056 (= (theoremZipperRegexEquiv!55 z!4055 lt!811098 r!12534 lt!811113) lt!811508)))

(declare-fun bs!447112 () Bool)

(assert (= bs!447112 d!651056))

(assert (=> bs!447112 m!2616093))

(assert (=> bs!447112 m!2616171))

(declare-fun m!2616891 () Bool)

(assert (=> bs!447112 m!2616891))

(assert (=> bs!447112 m!2616087))

(assert (=> b!2174550 d!651056))

(declare-fun d!651058 () Bool)

(declare-fun c!344995 () Bool)

(assert (=> d!651058 (= c!344995 ((_ is Node!8165) (c!344792 totalInput!977)))))

(declare-fun e!1391051 () Bool)

(assert (=> d!651058 (= (inv!33490 (c!344792 totalInput!977)) e!1391051)))

(declare-fun b!2175267 () Bool)

(assert (=> b!2175267 (= e!1391051 (inv!33494 (c!344792 totalInput!977)))))

(declare-fun b!2175268 () Bool)

(declare-fun e!1391052 () Bool)

(assert (=> b!2175268 (= e!1391051 e!1391052)))

(declare-fun res!935973 () Bool)

(assert (=> b!2175268 (= res!935973 (not ((_ is Leaf!11947) (c!344792 totalInput!977))))))

(assert (=> b!2175268 (=> res!935973 e!1391052)))

(declare-fun b!2175269 () Bool)

(assert (=> b!2175269 (= e!1391052 (inv!33495 (c!344792 totalInput!977)))))

(assert (= (and d!651058 c!344995) b!2175267))

(assert (= (and d!651058 (not c!344995)) b!2175268))

(assert (= (and b!2175268 (not res!935973)) b!2175269))

(declare-fun m!2616893 () Bool)

(assert (=> b!2175267 m!2616893))

(declare-fun m!2616895 () Bool)

(assert (=> b!2175269 m!2616895))

(assert (=> b!2174558 d!651058))

(declare-fun b!2175282 () Bool)

(declare-fun e!1391055 () Bool)

(declare-fun tp!678698 () Bool)

(assert (=> b!2175282 (= e!1391055 tp!678698)))

(declare-fun b!2175283 () Bool)

(declare-fun tp!678699 () Bool)

(declare-fun tp!678701 () Bool)

(assert (=> b!2175283 (= e!1391055 (and tp!678699 tp!678701))))

(assert (=> b!2174562 (= tp!678622 e!1391055)))

(declare-fun b!2175281 () Bool)

(declare-fun tp!678702 () Bool)

(declare-fun tp!678700 () Bool)

(assert (=> b!2175281 (= e!1391055 (and tp!678702 tp!678700))))

(declare-fun b!2175280 () Bool)

(assert (=> b!2175280 (= e!1391055 tp_is_empty!9665)))

(assert (= (and b!2174562 ((_ is ElementMatch!6029) (regOne!12570 r!12534))) b!2175280))

(assert (= (and b!2174562 ((_ is Concat!10331) (regOne!12570 r!12534))) b!2175281))

(assert (= (and b!2174562 ((_ is Star!6029) (regOne!12570 r!12534))) b!2175282))

(assert (= (and b!2174562 ((_ is Union!6029) (regOne!12570 r!12534))) b!2175283))

(declare-fun b!2175286 () Bool)

(declare-fun e!1391056 () Bool)

(declare-fun tp!678703 () Bool)

(assert (=> b!2175286 (= e!1391056 tp!678703)))

(declare-fun b!2175287 () Bool)

(declare-fun tp!678704 () Bool)

(declare-fun tp!678706 () Bool)

(assert (=> b!2175287 (= e!1391056 (and tp!678704 tp!678706))))

(assert (=> b!2174562 (= tp!678626 e!1391056)))

(declare-fun b!2175285 () Bool)

(declare-fun tp!678707 () Bool)

(declare-fun tp!678705 () Bool)

(assert (=> b!2175285 (= e!1391056 (and tp!678707 tp!678705))))

(declare-fun b!2175284 () Bool)

(assert (=> b!2175284 (= e!1391056 tp_is_empty!9665)))

(assert (= (and b!2174562 ((_ is ElementMatch!6029) (regTwo!12570 r!12534))) b!2175284))

(assert (= (and b!2174562 ((_ is Concat!10331) (regTwo!12570 r!12534))) b!2175285))

(assert (= (and b!2174562 ((_ is Star!6029) (regTwo!12570 r!12534))) b!2175286))

(assert (= (and b!2174562 ((_ is Union!6029) (regTwo!12570 r!12534))) b!2175287))

(declare-fun b!2175290 () Bool)

(declare-fun e!1391057 () Bool)

(declare-fun tp!678708 () Bool)

(assert (=> b!2175290 (= e!1391057 tp!678708)))

(declare-fun b!2175291 () Bool)

(declare-fun tp!678709 () Bool)

(declare-fun tp!678711 () Bool)

(assert (=> b!2175291 (= e!1391057 (and tp!678709 tp!678711))))

(assert (=> b!2174567 (= tp!678624 e!1391057)))

(declare-fun b!2175289 () Bool)

(declare-fun tp!678712 () Bool)

(declare-fun tp!678710 () Bool)

(assert (=> b!2175289 (= e!1391057 (and tp!678712 tp!678710))))

(declare-fun b!2175288 () Bool)

(assert (=> b!2175288 (= e!1391057 tp_is_empty!9665)))

(assert (= (and b!2174567 ((_ is ElementMatch!6029) (regOne!12571 r!12534))) b!2175288))

(assert (= (and b!2174567 ((_ is Concat!10331) (regOne!12571 r!12534))) b!2175289))

(assert (= (and b!2174567 ((_ is Star!6029) (regOne!12571 r!12534))) b!2175290))

(assert (= (and b!2174567 ((_ is Union!6029) (regOne!12571 r!12534))) b!2175291))

(declare-fun b!2175294 () Bool)

(declare-fun e!1391058 () Bool)

(declare-fun tp!678713 () Bool)

(assert (=> b!2175294 (= e!1391058 tp!678713)))

(declare-fun b!2175295 () Bool)

(declare-fun tp!678714 () Bool)

(declare-fun tp!678716 () Bool)

(assert (=> b!2175295 (= e!1391058 (and tp!678714 tp!678716))))

(assert (=> b!2174567 (= tp!678628 e!1391058)))

(declare-fun b!2175293 () Bool)

(declare-fun tp!678717 () Bool)

(declare-fun tp!678715 () Bool)

(assert (=> b!2175293 (= e!1391058 (and tp!678717 tp!678715))))

(declare-fun b!2175292 () Bool)

(assert (=> b!2175292 (= e!1391058 tp_is_empty!9665)))

(assert (= (and b!2174567 ((_ is ElementMatch!6029) (regTwo!12571 r!12534))) b!2175292))

(assert (= (and b!2174567 ((_ is Concat!10331) (regTwo!12571 r!12534))) b!2175293))

(assert (= (and b!2174567 ((_ is Star!6029) (regTwo!12571 r!12534))) b!2175294))

(assert (= (and b!2174567 ((_ is Union!6029) (regTwo!12571 r!12534))) b!2175295))

(declare-fun e!1391064 () Bool)

(declare-fun tp!678725 () Bool)

(declare-fun tp!678724 () Bool)

(declare-fun b!2175304 () Bool)

(assert (=> b!2175304 (= e!1391064 (and (inv!33490 (left!19362 (c!344792 input!5540))) tp!678725 (inv!33490 (right!19692 (c!344792 input!5540))) tp!678724))))

(declare-fun b!2175306 () Bool)

(declare-fun e!1391063 () Bool)

(declare-fun tp!678726 () Bool)

(assert (=> b!2175306 (= e!1391063 tp!678726)))

(declare-fun b!2175305 () Bool)

(declare-fun inv!33497 (IArray!16335) Bool)

(assert (=> b!2175305 (= e!1391064 (and (inv!33497 (xs!11107 (c!344792 input!5540))) e!1391063))))

(assert (=> b!2174571 (= tp!678625 (and (inv!33490 (c!344792 input!5540)) e!1391064))))

(assert (= (and b!2174571 ((_ is Node!8165) (c!344792 input!5540))) b!2175304))

(assert (= b!2175305 b!2175306))

(assert (= (and b!2174571 ((_ is Leaf!11947) (c!344792 input!5540))) b!2175305))

(declare-fun m!2616897 () Bool)

(assert (=> b!2175304 m!2616897))

(declare-fun m!2616899 () Bool)

(assert (=> b!2175304 m!2616899))

(declare-fun m!2616901 () Bool)

(assert (=> b!2175305 m!2616901))

(assert (=> b!2174571 m!2616127))

(declare-fun b!2175309 () Bool)

(declare-fun e!1391065 () Bool)

(declare-fun tp!678727 () Bool)

(assert (=> b!2175309 (= e!1391065 tp!678727)))

(declare-fun b!2175310 () Bool)

(declare-fun tp!678728 () Bool)

(declare-fun tp!678730 () Bool)

(assert (=> b!2175310 (= e!1391065 (and tp!678728 tp!678730))))

(assert (=> b!2174559 (= tp!678621 e!1391065)))

(declare-fun b!2175308 () Bool)

(declare-fun tp!678731 () Bool)

(declare-fun tp!678729 () Bool)

(assert (=> b!2175308 (= e!1391065 (and tp!678731 tp!678729))))

(declare-fun b!2175307 () Bool)

(assert (=> b!2175307 (= e!1391065 tp_is_empty!9665)))

(assert (= (and b!2174559 ((_ is ElementMatch!6029) (reg!6358 r!12534))) b!2175307))

(assert (= (and b!2174559 ((_ is Concat!10331) (reg!6358 r!12534))) b!2175308))

(assert (= (and b!2174559 ((_ is Star!6029) (reg!6358 r!12534))) b!2175309))

(assert (= (and b!2174559 ((_ is Union!6029) (reg!6358 r!12534))) b!2175310))

(declare-fun condSetEmpty!18268 () Bool)

(assert (=> setNonEmpty!18262 (= condSetEmpty!18268 (= setRest!18262 ((as const (Array Context!3198 Bool)) false)))))

(declare-fun setRes!18268 () Bool)

(assert (=> setNonEmpty!18262 (= tp!678620 setRes!18268)))

(declare-fun setIsEmpty!18268 () Bool)

(assert (=> setIsEmpty!18268 setRes!18268))

(declare-fun tp!678736 () Bool)

(declare-fun setElem!18268 () Context!3198)

(declare-fun e!1391068 () Bool)

(declare-fun setNonEmpty!18268 () Bool)

(assert (=> setNonEmpty!18268 (= setRes!18268 (and tp!678736 (inv!33489 setElem!18268) e!1391068))))

(declare-fun setRest!18268 () (InoxSet Context!3198))

(assert (=> setNonEmpty!18268 (= setRest!18262 ((_ map or) (store ((as const (Array Context!3198 Bool)) false) setElem!18268 true) setRest!18268))))

(declare-fun b!2175315 () Bool)

(declare-fun tp!678737 () Bool)

(assert (=> b!2175315 (= e!1391068 tp!678737)))

(assert (= (and setNonEmpty!18262 condSetEmpty!18268) setIsEmpty!18268))

(assert (= (and setNonEmpty!18262 (not condSetEmpty!18268)) setNonEmpty!18268))

(assert (= setNonEmpty!18268 b!2175315))

(declare-fun m!2616903 () Bool)

(assert (=> setNonEmpty!18268 m!2616903))

(declare-fun tp!678739 () Bool)

(declare-fun e!1391070 () Bool)

(declare-fun b!2175316 () Bool)

(declare-fun tp!678738 () Bool)

(assert (=> b!2175316 (= e!1391070 (and (inv!33490 (left!19362 (c!344792 totalInput!977))) tp!678739 (inv!33490 (right!19692 (c!344792 totalInput!977))) tp!678738))))

(declare-fun b!2175318 () Bool)

(declare-fun e!1391069 () Bool)

(declare-fun tp!678740 () Bool)

(assert (=> b!2175318 (= e!1391069 tp!678740)))

(declare-fun b!2175317 () Bool)

(assert (=> b!2175317 (= e!1391070 (and (inv!33497 (xs!11107 (c!344792 totalInput!977))) e!1391069))))

(assert (=> b!2174558 (= tp!678623 (and (inv!33490 (c!344792 totalInput!977)) e!1391070))))

(assert (= (and b!2174558 ((_ is Node!8165) (c!344792 totalInput!977))) b!2175316))

(assert (= b!2175317 b!2175318))

(assert (= (and b!2174558 ((_ is Leaf!11947) (c!344792 totalInput!977))) b!2175317))

(declare-fun m!2616905 () Bool)

(assert (=> b!2175316 m!2616905))

(declare-fun m!2616907 () Bool)

(assert (=> b!2175316 m!2616907))

(declare-fun m!2616909 () Bool)

(assert (=> b!2175317 m!2616909))

(assert (=> b!2174558 m!2616105))

(declare-fun b!2175323 () Bool)

(declare-fun e!1391073 () Bool)

(declare-fun tp!678745 () Bool)

(declare-fun tp!678746 () Bool)

(assert (=> b!2175323 (= e!1391073 (and tp!678745 tp!678746))))

(assert (=> b!2174568 (= tp!678627 e!1391073)))

(assert (= (and b!2174568 ((_ is Cons!25217) (exprs!2099 setElem!18262))) b!2175323))

(check-sat (not bm!130525) tp_is_empty!9665 (not b!2175291) (not b!2175294) (not d!651038) (not d!650918) (not d!650862) (not d!650920) (not b!2175242) (not bm!130592) (not bm!130586) (not b!2174756) (not b!2175142) (not b!2174862) (not b!2175263) (not d!651042) (not b!2175281) (not b!2175156) (not b!2175295) (not b!2174835) (not b!2175230) (not b!2175241) (not b!2175306) (not b!2175154) (not b!2174571) (not b!2174727) (not d!651048) (not d!651000) (not b!2174832) (not b!2175151) (not b!2175144) (not d!650916) (not d!651030) (not b!2174866) (not b!2174864) (not d!650884) (not b!2175285) (not b!2175145) (not b!2174791) (not b!2175157) (not b!2174726) (not bm!130513) (not setNonEmpty!18268) (not d!650892) (not b!2175187) (not d!651006) (not b!2175238) (not b!2175162) (not d!650870) (not b!2174790) (not b!2174812) (not d!651024) (not b!2175256) (not d!650914) (not d!651032) (not b!2174863) (not b!2175304) (not b!2175283) (not b!2175308) (not b!2175290) (not b!2175248) (not b!2175221) (not b!2175243) (not b!2175267) (not b!2175249) (not d!650874) (not b!2174833) (not b!2174729) (not bm!130595) (not b!2174836) (not bm!130591) (not b!2174684) (not b!2175264) (not b!2175259) (not d!651040) (not d!650878) (not b!2175179) (not d!650900) (not b!2174661) (not d!651010) (not b!2175188) (not b!2175287) (not d!650872) (not d!651036) (not d!650894) (not b!2175269) (not b!2175152) (not d!650902) (not b!2175189) (not b!2174794) (not d!651046) (not d!650890) (not d!650886) (not d!651050) (not d!651016) (not b!2175305) (not bm!130593) (not bm!130590) (not b!2174703) (not d!650876) (not d!651044) (not b!2175252) (not b!2174900) (not b!2175153) (not bm!130589) (not b!2175286) (not b!2175293) (not b!2175262) (not b!2175135) (not d!651028) (not b!2174558) (not b!2174758) (not b!2175185) (not b!2175146) (not b!2175282) (not b!2175184) (not b!2175310) (not b!2175255) (not d!651054) (not bm!130588) (not b!2175180) (not b!2174730) (not b!2175323) (not b!2175183) (not b!2175235) (not b!2174867) (not d!650868) (not b!2174682) (not b!2174662) (not b!2175317) (not b!2174797) (not b!2175175) (not d!651012) (not b!2175134) (not b!2175222) (not b!2175250) (not bm!130587) (not b!2175234) (not b!2174811) (not d!650888) (not b!2174813) (not bm!130522) (not b!2174798) (not bm!130528) (not d!651056) (not b!2175289) (not b!2175318) (not b!2175316) (not b!2175309) (not b!2174799) (not b!2175181) (not bm!130594) (not d!651014) (not d!650906) (not b!2175177) (not bm!130520) (not b!2175315) (not b!2174861) (not b!2175224))
(check-sat)
