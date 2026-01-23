; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210622 () Bool)

(assert start!210622)

(declare-fun b!2171494 () Bool)

(declare-fun e!1388694 () Bool)

(declare-fun tp!677949 () Bool)

(declare-fun tp!677945 () Bool)

(assert (=> b!2171494 (= e!1388694 (and tp!677949 tp!677945))))

(declare-fun b!2171495 () Bool)

(declare-fun e!1388706 () Bool)

(declare-fun tp!677950 () Bool)

(assert (=> b!2171495 (= e!1388706 tp!677950)))

(declare-fun b!2171496 () Bool)

(declare-fun e!1388693 () Bool)

(declare-datatypes ((C!12180 0))(
  ( (C!12181 (val!7076 Int)) )
))
(declare-datatypes ((List!25264 0))(
  ( (Nil!25180) (Cons!25180 (h!30581 C!12180) (t!197832 List!25264)) )
))
(declare-datatypes ((IArray!16311 0))(
  ( (IArray!16312 (innerList!8213 List!25264)) )
))
(declare-datatypes ((Conc!8153 0))(
  ( (Node!8153 (left!19344 Conc!8153) (right!19674 Conc!8153) (csize!16536 Int) (cheight!8364 Int)) (Leaf!11929 (xs!11095 IArray!16311) (csize!16537 Int)) (Empty!8153) )
))
(declare-datatypes ((BalanceConc!16068 0))(
  ( (BalanceConc!16069 (c!344130 Conc!8153)) )
))
(declare-fun totalInput!977 () BalanceConc!16068)

(declare-fun tp!677947 () Bool)

(declare-fun inv!33417 (Conc!8153) Bool)

(assert (=> b!2171496 (= e!1388693 (and (inv!33417 (c!344130 totalInput!977)) tp!677947))))

(declare-fun b!2171497 () Bool)

(declare-fun e!1388699 () Bool)

(declare-fun e!1388705 () Bool)

(assert (=> b!2171497 (= e!1388699 e!1388705)))

(declare-fun res!934493 () Bool)

(assert (=> b!2171497 (=> (not res!934493) (not e!1388705))))

(declare-fun lt!808955 () List!25264)

(declare-fun lt!808944 () List!25264)

(declare-fun isSuffix!684 (List!25264 List!25264) Bool)

(assert (=> b!2171497 (= res!934493 (isSuffix!684 lt!808955 lt!808944))))

(declare-fun list!9654 (BalanceConc!16068) List!25264)

(assert (=> b!2171497 (= lt!808944 (list!9654 totalInput!977))))

(declare-fun input!5540 () BalanceConc!16068)

(assert (=> b!2171497 (= lt!808955 (list!9654 input!5540))))

(declare-fun lt!808945 () Int)

(declare-fun e!1388701 () Bool)

(declare-fun b!2171498 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6017 0))(
  ( (ElementMatch!6017 (c!344131 C!12180)) (Concat!10319 (regOne!12546 Regex!6017) (regTwo!12546 Regex!6017)) (EmptyExpr!6017) (Star!6017 (reg!6346 Regex!6017)) (EmptyLang!6017) (Union!6017 (regOne!12547 Regex!6017) (regTwo!12547 Regex!6017)) )
))
(declare-datatypes ((List!25265 0))(
  ( (Nil!25181) (Cons!25181 (h!30582 Regex!6017) (t!197833 List!25265)) )
))
(declare-datatypes ((Context!3174 0))(
  ( (Context!3175 (exprs!2087 List!25265)) )
))
(declare-fun z!4055 () (InoxSet Context!3174))

(declare-fun lt!808947 () Int)

(declare-fun matchZipper!133 ((InoxSet Context!3174) List!25264) Bool)

(declare-fun take!225 (List!25264 Int) List!25264)

(declare-fun drop!1235 (List!25264 Int) List!25264)

(assert (=> b!2171498 (= e!1388701 (matchZipper!133 z!4055 (take!225 (drop!1235 lt!808944 lt!808945) lt!808947)))))

(declare-fun b!2171499 () Bool)

(declare-fun e!1388697 () Int)

(assert (=> b!2171499 (= e!1388697 (- lt!808945 1))))

(declare-fun b!2171500 () Bool)

(declare-fun tp!677943 () Bool)

(declare-fun tp!677942 () Bool)

(assert (=> b!2171500 (= e!1388694 (and tp!677943 tp!677942))))

(declare-fun b!2171501 () Bool)

(declare-fun e!1388692 () Bool)

(assert (=> b!2171501 (= e!1388692 e!1388699)))

(declare-fun res!934492 () Bool)

(assert (=> b!2171501 (=> (not res!934492) (not e!1388699))))

(declare-fun lt!808950 () Regex!6017)

(declare-fun r!12534 () Regex!6017)

(assert (=> b!2171501 (= res!934492 (= lt!808950 r!12534))))

(declare-datatypes ((List!25266 0))(
  ( (Nil!25182) (Cons!25182 (h!30583 Context!3174) (t!197834 List!25266)) )
))
(declare-fun lt!808959 () List!25266)

(declare-fun unfocusZipper!124 (List!25266) Regex!6017)

(assert (=> b!2171501 (= lt!808950 (unfocusZipper!124 lt!808959))))

(declare-fun toList!1200 ((InoxSet Context!3174)) List!25266)

(assert (=> b!2171501 (= lt!808959 (toList!1200 z!4055))))

(declare-fun b!2171502 () Bool)

(declare-fun e!1388702 () Bool)

(declare-fun e!1388695 () Bool)

(assert (=> b!2171502 (= e!1388702 e!1388695)))

(declare-fun res!934495 () Bool)

(assert (=> b!2171502 (=> res!934495 e!1388695)))

(declare-fun e!1388698 () Bool)

(assert (=> b!2171502 (= res!934495 e!1388698)))

(declare-fun res!934486 () Bool)

(assert (=> b!2171502 (=> (not res!934486) (not e!1388698))))

(declare-fun lt!808941 () Bool)

(assert (=> b!2171502 (= res!934486 (not lt!808941))))

(declare-datatypes ((tuple2!24942 0))(
  ( (tuple2!24943 (_1!14841 List!25264) (_2!14841 List!25264)) )
))
(declare-fun lt!808946 () tuple2!24942)

(declare-fun matchR!2766 (Regex!6017 List!25264) Bool)

(assert (=> b!2171502 (= lt!808941 (matchR!2766 r!12534 (_1!14841 lt!808946)))))

(declare-fun b!2171503 () Bool)

(declare-fun e!1388704 () Bool)

(assert (=> b!2171503 (= e!1388705 e!1388704)))

(declare-fun res!934487 () Bool)

(assert (=> b!2171503 (=> (not res!934487) (not e!1388704))))

(declare-fun lt!808956 () List!25264)

(assert (=> b!2171503 (= res!934487 (= lt!808956 lt!808955))))

(declare-fun lt!808962 () List!25264)

(declare-fun lt!808943 () List!25264)

(declare-fun ++!6376 (List!25264 List!25264) List!25264)

(assert (=> b!2171503 (= lt!808956 (++!6376 lt!808962 lt!808943))))

(declare-datatypes ((tuple2!24944 0))(
  ( (tuple2!24945 (_1!14842 BalanceConc!16068) (_2!14842 BalanceConc!16068)) )
))
(declare-fun lt!808960 () tuple2!24944)

(assert (=> b!2171503 (= lt!808943 (list!9654 (_2!14842 lt!808960)))))

(assert (=> b!2171503 (= lt!808962 (list!9654 (_1!14842 lt!808960)))))

(declare-fun findLongestMatch!571 (Regex!6017 List!25264) tuple2!24942)

(assert (=> b!2171503 (= lt!808946 (findLongestMatch!571 r!12534 lt!808955))))

(declare-fun lt!808951 () Int)

(declare-fun size!19670 (BalanceConc!16068) Int)

(assert (=> b!2171503 (= lt!808945 (- lt!808951 (size!19670 input!5540)))))

(assert (=> b!2171503 (= lt!808951 (size!19670 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!66 ((InoxSet Context!3174) BalanceConc!16068 BalanceConc!16068) tuple2!24944)

(assert (=> b!2171503 (= lt!808960 (findLongestMatchZipperSequenceV3!66 z!4055 input!5540 totalInput!977))))

(declare-fun res!934489 () Bool)

(assert (=> start!210622 (=> (not res!934489) (not e!1388692))))

(declare-fun validRegex!2293 (Regex!6017) Bool)

(assert (=> start!210622 (= res!934489 (validRegex!2293 r!12534))))

(assert (=> start!210622 e!1388692))

(assert (=> start!210622 e!1388694))

(declare-fun inv!33418 (BalanceConc!16068) Bool)

(assert (=> start!210622 (and (inv!33418 totalInput!977) e!1388693)))

(declare-fun e!1388700 () Bool)

(assert (=> start!210622 (and (inv!33418 input!5540) e!1388700)))

(declare-fun condSetEmpty!18208 () Bool)

(assert (=> start!210622 (= condSetEmpty!18208 (= z!4055 ((as const (Array Context!3174 Bool)) false)))))

(declare-fun setRes!18208 () Bool)

(assert (=> start!210622 setRes!18208))

(declare-fun b!2171504 () Bool)

(assert (=> b!2171504 (= e!1388695 (= r!12534 lt!808950))))

(assert (=> b!2171504 (= lt!808941 (matchZipper!133 z!4055 (_1!14841 lt!808946)))))

(declare-datatypes ((Unit!38241 0))(
  ( (Unit!38242) )
))
(declare-fun lt!808953 () Unit!38241)

(declare-fun theoremZipperRegexEquiv!43 ((InoxSet Context!3174) List!25266 Regex!6017 List!25264) Unit!38241)

(assert (=> b!2171504 (= lt!808953 (theoremZipperRegexEquiv!43 z!4055 lt!808959 r!12534 (_1!14841 lt!808946)))))

(declare-fun b!2171505 () Bool)

(declare-fun e!1388707 () Bool)

(assert (=> b!2171505 (= e!1388707 (not e!1388702))))

(declare-fun res!934491 () Bool)

(assert (=> b!2171505 (=> res!934491 e!1388702)))

(declare-fun e!1388696 () Bool)

(assert (=> b!2171505 (= res!934491 e!1388696)))

(declare-fun res!934494 () Bool)

(assert (=> b!2171505 (=> (not res!934494) (not e!1388696))))

(assert (=> b!2171505 (= res!934494 (not (matchZipper!133 z!4055 lt!808962)))))

(declare-fun e!1388703 () Bool)

(assert (=> b!2171505 e!1388703))

(declare-fun res!934485 () Bool)

(assert (=> b!2171505 (=> res!934485 e!1388703)))

(declare-fun lt!808957 () tuple2!24942)

(declare-fun isEmpty!14441 (List!25264) Bool)

(assert (=> b!2171505 (= res!934485 (isEmpty!14441 (_1!14841 lt!808957)))))

(declare-fun findLongestMatchInner!642 (Regex!6017 List!25264 Int List!25264 List!25264 Int) tuple2!24942)

(declare-fun size!19671 (List!25264) Int)

(assert (=> b!2171505 (= lt!808957 (findLongestMatchInner!642 r!12534 Nil!25180 (size!19671 Nil!25180) lt!808955 lt!808955 (size!19671 lt!808955)))))

(declare-fun lt!808942 () Unit!38241)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!615 (Regex!6017 List!25264) Unit!38241)

(assert (=> b!2171505 (= lt!808942 (longestMatchIsAcceptedByMatchOrIsEmpty!615 r!12534 lt!808955))))

(assert (=> b!2171505 e!1388701))

(declare-fun res!934488 () Bool)

(assert (=> b!2171505 (=> res!934488 e!1388701)))

(assert (=> b!2171505 (= res!934488 (<= lt!808947 0))))

(declare-fun lt!808954 () Int)

(declare-fun furthestNullablePosition!199 ((InoxSet Context!3174) Int BalanceConc!16068 Int Int) Int)

(assert (=> b!2171505 (= lt!808947 (+ 1 (- (furthestNullablePosition!199 z!4055 lt!808945 totalInput!977 lt!808951 lt!808954) lt!808945)))))

(declare-fun lt!808952 () Unit!38241)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!40 ((InoxSet Context!3174) Int BalanceConc!16068 Int) Unit!38241)

(assert (=> b!2171505 (= lt!808952 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!40 z!4055 lt!808945 totalInput!977 lt!808954))))

(assert (=> b!2171505 (= lt!808954 e!1388697)))

(declare-fun c!344129 () Bool)

(declare-fun nullableZipper!297 ((InoxSet Context!3174)) Bool)

(assert (=> b!2171505 (= c!344129 (nullableZipper!297 z!4055))))

(declare-fun isPrefix!2133 (List!25264 List!25264) Bool)

(assert (=> b!2171505 (isPrefix!2133 (take!225 lt!808944 lt!808945) lt!808944)))

(declare-fun lt!808961 () Unit!38241)

(declare-fun lemmaTakeIsPrefix!48 (List!25264 Int) Unit!38241)

(assert (=> b!2171505 (= lt!808961 (lemmaTakeIsPrefix!48 lt!808944 lt!808945))))

(declare-fun lt!808948 () List!25264)

(assert (=> b!2171505 (isPrefix!2133 (_1!14841 lt!808946) lt!808948)))

(declare-fun lt!808958 () Unit!38241)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1416 (List!25264 List!25264) Unit!38241)

(assert (=> b!2171505 (= lt!808958 (lemmaConcatTwoListThenFirstIsPrefix!1416 (_1!14841 lt!808946) (_2!14841 lt!808946)))))

(assert (=> b!2171505 (isPrefix!2133 lt!808962 lt!808956)))

(declare-fun lt!808949 () Unit!38241)

(assert (=> b!2171505 (= lt!808949 (lemmaConcatTwoListThenFirstIsPrefix!1416 lt!808962 lt!808943))))

(declare-fun tp!677948 () Bool)

(declare-fun setNonEmpty!18208 () Bool)

(declare-fun setElem!18208 () Context!3174)

(declare-fun inv!33419 (Context!3174) Bool)

(assert (=> setNonEmpty!18208 (= setRes!18208 (and tp!677948 (inv!33419 setElem!18208) e!1388706))))

(declare-fun setRest!18208 () (InoxSet Context!3174))

(assert (=> setNonEmpty!18208 (= z!4055 ((_ map or) (store ((as const (Array Context!3174 Bool)) false) setElem!18208 true) setRest!18208))))

(declare-fun b!2171506 () Bool)

(declare-fun tp_is_empty!9641 () Bool)

(assert (=> b!2171506 (= e!1388694 tp_is_empty!9641)))

(declare-fun b!2171507 () Bool)

(assert (=> b!2171507 (= e!1388697 (- 1))))

(declare-fun setIsEmpty!18208 () Bool)

(assert (=> setIsEmpty!18208 setRes!18208))

(declare-fun b!2171508 () Bool)

(assert (=> b!2171508 (= e!1388704 e!1388707)))

(declare-fun res!934490 () Bool)

(assert (=> b!2171508 (=> (not res!934490) (not e!1388707))))

(assert (=> b!2171508 (= res!934490 (= lt!808948 lt!808955))))

(assert (=> b!2171508 (= lt!808948 (++!6376 (_1!14841 lt!808946) (_2!14841 lt!808946)))))

(declare-fun b!2171509 () Bool)

(assert (=> b!2171509 (= e!1388703 (matchR!2766 r!12534 (_1!14841 lt!808957)))))

(declare-fun b!2171510 () Bool)

(declare-fun tp!677944 () Bool)

(assert (=> b!2171510 (= e!1388700 (and (inv!33417 (c!344130 input!5540)) tp!677944))))

(declare-fun b!2171511 () Bool)

(declare-fun isEmpty!14442 (BalanceConc!16068) Bool)

(assert (=> b!2171511 (= e!1388696 (not (isEmpty!14442 (_1!14842 lt!808960))))))

(declare-fun b!2171512 () Bool)

(declare-fun tp!677946 () Bool)

(assert (=> b!2171512 (= e!1388694 tp!677946)))

(declare-fun b!2171513 () Bool)

(assert (=> b!2171513 (= e!1388698 (not (isEmpty!14441 (_1!14841 lt!808946))))))

(assert (= (and start!210622 res!934489) b!2171501))

(assert (= (and b!2171501 res!934492) b!2171497))

(assert (= (and b!2171497 res!934493) b!2171503))

(assert (= (and b!2171503 res!934487) b!2171508))

(assert (= (and b!2171508 res!934490) b!2171505))

(assert (= (and b!2171505 c!344129) b!2171499))

(assert (= (and b!2171505 (not c!344129)) b!2171507))

(assert (= (and b!2171505 (not res!934488)) b!2171498))

(assert (= (and b!2171505 (not res!934485)) b!2171509))

(assert (= (and b!2171505 res!934494) b!2171511))

(assert (= (and b!2171505 (not res!934491)) b!2171502))

(assert (= (and b!2171502 res!934486) b!2171513))

(assert (= (and b!2171502 (not res!934495)) b!2171504))

(get-info :version)

(assert (= (and start!210622 ((_ is ElementMatch!6017) r!12534)) b!2171506))

(assert (= (and start!210622 ((_ is Concat!10319) r!12534)) b!2171494))

(assert (= (and start!210622 ((_ is Star!6017) r!12534)) b!2171512))

(assert (= (and start!210622 ((_ is Union!6017) r!12534)) b!2171500))

(assert (= start!210622 b!2171496))

(assert (= start!210622 b!2171510))

(assert (= (and start!210622 condSetEmpty!18208) setIsEmpty!18208))

(assert (= (and start!210622 (not condSetEmpty!18208)) setNonEmpty!18208))

(assert (= setNonEmpty!18208 b!2171495))

(declare-fun m!2612667 () Bool)

(assert (=> b!2171502 m!2612667))

(declare-fun m!2612669 () Bool)

(assert (=> setNonEmpty!18208 m!2612669))

(declare-fun m!2612671 () Bool)

(assert (=> b!2171497 m!2612671))

(declare-fun m!2612673 () Bool)

(assert (=> b!2171497 m!2612673))

(declare-fun m!2612675 () Bool)

(assert (=> b!2171497 m!2612675))

(declare-fun m!2612677 () Bool)

(assert (=> b!2171504 m!2612677))

(declare-fun m!2612679 () Bool)

(assert (=> b!2171504 m!2612679))

(declare-fun m!2612681 () Bool)

(assert (=> b!2171496 m!2612681))

(declare-fun m!2612683 () Bool)

(assert (=> b!2171498 m!2612683))

(assert (=> b!2171498 m!2612683))

(declare-fun m!2612685 () Bool)

(assert (=> b!2171498 m!2612685))

(assert (=> b!2171498 m!2612685))

(declare-fun m!2612687 () Bool)

(assert (=> b!2171498 m!2612687))

(declare-fun m!2612689 () Bool)

(assert (=> b!2171505 m!2612689))

(declare-fun m!2612691 () Bool)

(assert (=> b!2171505 m!2612691))

(assert (=> b!2171505 m!2612689))

(declare-fun m!2612693 () Bool)

(assert (=> b!2171505 m!2612693))

(declare-fun m!2612695 () Bool)

(assert (=> b!2171505 m!2612695))

(declare-fun m!2612697 () Bool)

(assert (=> b!2171505 m!2612697))

(declare-fun m!2612699 () Bool)

(assert (=> b!2171505 m!2612699))

(declare-fun m!2612701 () Bool)

(assert (=> b!2171505 m!2612701))

(declare-fun m!2612703 () Bool)

(assert (=> b!2171505 m!2612703))

(declare-fun m!2612705 () Bool)

(assert (=> b!2171505 m!2612705))

(declare-fun m!2612707 () Bool)

(assert (=> b!2171505 m!2612707))

(declare-fun m!2612709 () Bool)

(assert (=> b!2171505 m!2612709))

(declare-fun m!2612711 () Bool)

(assert (=> b!2171505 m!2612711))

(declare-fun m!2612713 () Bool)

(assert (=> b!2171505 m!2612713))

(assert (=> b!2171505 m!2612697))

(declare-fun m!2612715 () Bool)

(assert (=> b!2171505 m!2612715))

(assert (=> b!2171505 m!2612713))

(declare-fun m!2612717 () Bool)

(assert (=> b!2171505 m!2612717))

(declare-fun m!2612719 () Bool)

(assert (=> b!2171505 m!2612719))

(declare-fun m!2612721 () Bool)

(assert (=> b!2171509 m!2612721))

(declare-fun m!2612723 () Bool)

(assert (=> b!2171503 m!2612723))

(declare-fun m!2612725 () Bool)

(assert (=> b!2171503 m!2612725))

(declare-fun m!2612727 () Bool)

(assert (=> b!2171503 m!2612727))

(declare-fun m!2612729 () Bool)

(assert (=> b!2171503 m!2612729))

(declare-fun m!2612731 () Bool)

(assert (=> b!2171503 m!2612731))

(declare-fun m!2612733 () Bool)

(assert (=> b!2171503 m!2612733))

(declare-fun m!2612735 () Bool)

(assert (=> b!2171503 m!2612735))

(declare-fun m!2612737 () Bool)

(assert (=> b!2171510 m!2612737))

(declare-fun m!2612739 () Bool)

(assert (=> b!2171513 m!2612739))

(declare-fun m!2612741 () Bool)

(assert (=> b!2171511 m!2612741))

(declare-fun m!2612743 () Bool)

(assert (=> b!2171508 m!2612743))

(declare-fun m!2612745 () Bool)

(assert (=> start!210622 m!2612745))

(declare-fun m!2612747 () Bool)

(assert (=> start!210622 m!2612747))

(declare-fun m!2612749 () Bool)

(assert (=> start!210622 m!2612749))

(declare-fun m!2612751 () Bool)

(assert (=> b!2171501 m!2612751))

(declare-fun m!2612753 () Bool)

(assert (=> b!2171501 m!2612753))

(check-sat (not b!2171504) (not b!2171494) (not b!2171510) (not b!2171508) (not b!2171498) (not b!2171511) (not b!2171501) (not b!2171497) (not b!2171495) (not b!2171500) (not b!2171512) (not setNonEmpty!18208) (not b!2171509) (not b!2171502) (not b!2171505) tp_is_empty!9641 (not b!2171513) (not b!2171503) (not b!2171496) (not start!210622))
(check-sat)
