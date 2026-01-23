; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!211790 () Bool)

(assert start!211790)

(declare-fun e!1395893 () Bool)

(declare-fun b!2184151 () Bool)

(declare-fun lt!814728 () Int)

(declare-fun lt!814735 () Int)

(declare-datatypes ((C!12228 0))(
  ( (C!12229 (val!7100 Int)) )
))
(declare-datatypes ((List!25336 0))(
  ( (Nil!25252) (Cons!25252 (h!30653 C!12228) (t!197926 List!25336)) )
))
(declare-fun lt!814723 () List!25336)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6041 0))(
  ( (ElementMatch!6041 (c!347136 C!12228)) (Concat!10343 (regOne!12594 Regex!6041) (regTwo!12594 Regex!6041)) (EmptyExpr!6041) (Star!6041 (reg!6370 Regex!6041)) (EmptyLang!6041) (Union!6041 (regOne!12595 Regex!6041) (regTwo!12595 Regex!6041)) )
))
(declare-datatypes ((List!25337 0))(
  ( (Nil!25253) (Cons!25253 (h!30654 Regex!6041) (t!197927 List!25337)) )
))
(declare-datatypes ((Context!3222 0))(
  ( (Context!3223 (exprs!2111 List!25337)) )
))
(declare-fun z!4055 () (InoxSet Context!3222))

(declare-fun matchZipper!157 ((InoxSet Context!3222) List!25336) Bool)

(declare-fun take!249 (List!25336 Int) List!25336)

(declare-fun drop!1259 (List!25336 Int) List!25336)

(assert (=> b!2184151 (= e!1395893 (matchZipper!157 z!4055 (take!249 (drop!1259 lt!814723 lt!814735) lt!814728)))))

(declare-fun b!2184152 () Bool)

(declare-fun e!1395890 () Bool)

(declare-fun r!12534 () Regex!6041)

(declare-datatypes ((tuple2!25046 0))(
  ( (tuple2!25047 (_1!14893 List!25336) (_2!14893 List!25336)) )
))
(declare-fun lt!814721 () tuple2!25046)

(declare-fun matchR!2790 (Regex!6041 List!25336) Bool)

(assert (=> b!2184152 (= e!1395890 (matchR!2790 r!12534 (_1!14893 lt!814721)))))

(declare-fun b!2184153 () Bool)

(declare-fun e!1395891 () Bool)

(declare-fun tp!681347 () Bool)

(assert (=> b!2184153 (= e!1395891 tp!681347)))

(declare-fun b!2184154 () Bool)

(declare-fun e!1395899 () Bool)

(declare-fun e!1395889 () Bool)

(assert (=> b!2184154 (= e!1395899 e!1395889)))

(declare-fun res!938567 () Bool)

(assert (=> b!2184154 (=> (not res!938567) (not e!1395889))))

(declare-fun lt!814729 () List!25336)

(declare-fun lt!814719 () List!25336)

(assert (=> b!2184154 (= res!938567 (= lt!814729 lt!814719))))

(declare-fun lt!814731 () tuple2!25046)

(declare-fun ++!6402 (List!25336 List!25336) List!25336)

(assert (=> b!2184154 (= lt!814729 (++!6402 (_1!14893 lt!814731) (_2!14893 lt!814731)))))

(declare-fun b!2184155 () Bool)

(declare-fun e!1395888 () Bool)

(declare-fun isPrefix!2157 (List!25336 List!25336) Bool)

(assert (=> b!2184155 (= e!1395888 (isPrefix!2157 (_1!14893 lt!814731) lt!814719))))

(declare-fun res!938574 () Bool)

(declare-fun e!1395884 () Bool)

(assert (=> start!211790 (=> (not res!938574) (not e!1395884))))

(declare-fun validRegex!2317 (Regex!6041) Bool)

(assert (=> start!211790 (= res!938574 (validRegex!2317 r!12534))))

(assert (=> start!211790 e!1395884))

(assert (=> start!211790 e!1395891))

(declare-datatypes ((IArray!16359 0))(
  ( (IArray!16360 (innerList!8237 List!25336)) )
))
(declare-datatypes ((Conc!8177 0))(
  ( (Node!8177 (left!19388 Conc!8177) (right!19718 Conc!8177) (csize!16584 Int) (cheight!8388 Int)) (Leaf!11965 (xs!11119 IArray!16359) (csize!16585 Int)) (Empty!8177) )
))
(declare-datatypes ((BalanceConc!16116 0))(
  ( (BalanceConc!16117 (c!347137 Conc!8177)) )
))
(declare-fun totalInput!977 () BalanceConc!16116)

(declare-fun e!1395896 () Bool)

(declare-fun inv!33561 (BalanceConc!16116) Bool)

(assert (=> start!211790 (and (inv!33561 totalInput!977) e!1395896)))

(declare-fun input!5540 () BalanceConc!16116)

(declare-fun e!1395895 () Bool)

(assert (=> start!211790 (and (inv!33561 input!5540) e!1395895)))

(declare-fun condSetEmpty!18322 () Bool)

(assert (=> start!211790 (= condSetEmpty!18322 (= z!4055 ((as const (Array Context!3222 Bool)) false)))))

(declare-fun setRes!18322 () Bool)

(assert (=> start!211790 setRes!18322))

(declare-fun b!2184156 () Bool)

(declare-fun e!1395898 () Bool)

(assert (=> b!2184156 (= e!1395898 e!1395888)))

(declare-fun res!938577 () Bool)

(assert (=> b!2184156 (=> res!938577 e!1395888)))

(declare-fun lt!814718 () Int)

(declare-fun lt!814725 () Int)

(assert (=> b!2184156 (= res!938577 (or (> lt!814718 lt!814725) (<= lt!814725 lt!814718)))))

(declare-datatypes ((tuple2!25048 0))(
  ( (tuple2!25049 (_1!14894 BalanceConc!16116) (_2!14894 BalanceConc!16116)) )
))
(declare-fun lt!814726 () tuple2!25048)

(declare-fun size!19730 (BalanceConc!16116) Int)

(assert (=> b!2184156 (= lt!814725 (size!19730 (_1!14894 lt!814726)))))

(declare-fun size!19731 (List!25336) Int)

(assert (=> b!2184156 (= lt!814718 (size!19731 (_1!14893 lt!814731)))))

(declare-fun lt!814733 () List!25336)

(declare-fun lt!814740 () Bool)

(assert (=> b!2184156 (= (matchR!2790 r!12534 lt!814733) lt!814740)))

(declare-datatypes ((Unit!38373 0))(
  ( (Unit!38374) )
))
(declare-fun lt!814720 () Unit!38373)

(declare-datatypes ((List!25338 0))(
  ( (Nil!25254) (Cons!25254 (h!30655 Context!3222) (t!197928 List!25338)) )
))
(declare-fun lt!814739 () List!25338)

(declare-fun theoremZipperRegexEquiv!67 ((InoxSet Context!3222) List!25338 Regex!6041 List!25336) Unit!38373)

(assert (=> b!2184156 (= lt!814720 (theoremZipperRegexEquiv!67 z!4055 lt!814739 r!12534 lt!814733))))

(declare-fun lt!814727 () Bool)

(assert (=> b!2184156 (= lt!814727 (matchZipper!157 z!4055 (_1!14893 lt!814731)))))

(declare-fun lt!814737 () Unit!38373)

(assert (=> b!2184156 (= lt!814737 (theoremZipperRegexEquiv!67 z!4055 lt!814739 r!12534 (_1!14893 lt!814731)))))

(declare-fun b!2184157 () Bool)

(declare-fun e!1395894 () Bool)

(assert (=> b!2184157 (= e!1395894 e!1395898)))

(declare-fun res!938571 () Bool)

(assert (=> b!2184157 (=> res!938571 e!1395898)))

(declare-fun e!1395886 () Bool)

(assert (=> b!2184157 (= res!938571 e!1395886)))

(declare-fun res!938570 () Bool)

(assert (=> b!2184157 (=> (not res!938570) (not e!1395886))))

(assert (=> b!2184157 (= res!938570 (not lt!814727))))

(assert (=> b!2184157 (= lt!814727 (matchR!2790 r!12534 (_1!14893 lt!814731)))))

(declare-fun b!2184158 () Bool)

(declare-fun e!1395885 () Bool)

(assert (=> b!2184158 (= e!1395885 e!1395899)))

(declare-fun res!938576 () Bool)

(assert (=> b!2184158 (=> (not res!938576) (not e!1395899))))

(declare-fun lt!814732 () List!25336)

(assert (=> b!2184158 (= res!938576 (= lt!814732 lt!814719))))

(declare-fun lt!814730 () List!25336)

(assert (=> b!2184158 (= lt!814732 (++!6402 lt!814733 lt!814730))))

(declare-fun list!9694 (BalanceConc!16116) List!25336)

(assert (=> b!2184158 (= lt!814730 (list!9694 (_2!14894 lt!814726)))))

(assert (=> b!2184158 (= lt!814733 (list!9694 (_1!14894 lt!814726)))))

(declare-fun findLongestMatch!595 (Regex!6041 List!25336) tuple2!25046)

(assert (=> b!2184158 (= lt!814731 (findLongestMatch!595 r!12534 lt!814719))))

(declare-fun lt!814716 () Int)

(assert (=> b!2184158 (= lt!814735 (- lt!814716 (size!19730 input!5540)))))

(assert (=> b!2184158 (= lt!814716 (size!19730 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!90 ((InoxSet Context!3222) BalanceConc!16116 BalanceConc!16116) tuple2!25048)

(assert (=> b!2184158 (= lt!814726 (findLongestMatchZipperSequenceV3!90 z!4055 input!5540 totalInput!977))))

(declare-fun setIsEmpty!18322 () Bool)

(assert (=> setIsEmpty!18322 setRes!18322))

(declare-fun e!1395883 () Bool)

(declare-fun setNonEmpty!18322 () Bool)

(declare-fun tp!681348 () Bool)

(declare-fun setElem!18322 () Context!3222)

(declare-fun inv!33562 (Context!3222) Bool)

(assert (=> setNonEmpty!18322 (= setRes!18322 (and tp!681348 (inv!33562 setElem!18322) e!1395883))))

(declare-fun setRest!18322 () (InoxSet Context!3222))

(assert (=> setNonEmpty!18322 (= z!4055 ((_ map or) (store ((as const (Array Context!3222 Bool)) false) setElem!18322 true) setRest!18322))))

(declare-fun b!2184159 () Bool)

(assert (=> b!2184159 (= e!1395889 (not e!1395894))))

(declare-fun res!938569 () Bool)

(assert (=> b!2184159 (=> res!938569 e!1395894)))

(declare-fun e!1395887 () Bool)

(assert (=> b!2184159 (= res!938569 e!1395887)))

(declare-fun res!938573 () Bool)

(assert (=> b!2184159 (=> (not res!938573) (not e!1395887))))

(assert (=> b!2184159 (= res!938573 (not lt!814740))))

(assert (=> b!2184159 (= lt!814740 (matchZipper!157 z!4055 lt!814733))))

(assert (=> b!2184159 e!1395890))

(declare-fun res!938568 () Bool)

(assert (=> b!2184159 (=> res!938568 e!1395890)))

(declare-fun isEmpty!14509 (List!25336) Bool)

(assert (=> b!2184159 (= res!938568 (isEmpty!14509 (_1!14893 lt!814721)))))

(declare-fun findLongestMatchInner!666 (Regex!6041 List!25336 Int List!25336 List!25336 Int) tuple2!25046)

(assert (=> b!2184159 (= lt!814721 (findLongestMatchInner!666 r!12534 Nil!25252 (size!19731 Nil!25252) lt!814719 lt!814719 (size!19731 lt!814719)))))

(declare-fun lt!814734 () Unit!38373)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!639 (Regex!6041 List!25336) Unit!38373)

(assert (=> b!2184159 (= lt!814734 (longestMatchIsAcceptedByMatchOrIsEmpty!639 r!12534 lt!814719))))

(assert (=> b!2184159 e!1395893))

(declare-fun res!938575 () Bool)

(assert (=> b!2184159 (=> res!938575 e!1395893)))

(assert (=> b!2184159 (= res!938575 (<= lt!814728 0))))

(declare-fun lt!814738 () Int)

(declare-fun furthestNullablePosition!223 ((InoxSet Context!3222) Int BalanceConc!16116 Int Int) Int)

(assert (=> b!2184159 (= lt!814728 (+ 1 (- (furthestNullablePosition!223 z!4055 lt!814735 totalInput!977 lt!814716 lt!814738) lt!814735)))))

(declare-fun lt!814724 () Unit!38373)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!64 ((InoxSet Context!3222) Int BalanceConc!16116 Int) Unit!38373)

(assert (=> b!2184159 (= lt!814724 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!64 z!4055 lt!814735 totalInput!977 lt!814738))))

(declare-fun e!1395892 () Int)

(assert (=> b!2184159 (= lt!814738 e!1395892)))

(declare-fun c!347135 () Bool)

(declare-fun nullableZipper!321 ((InoxSet Context!3222)) Bool)

(assert (=> b!2184159 (= c!347135 (nullableZipper!321 z!4055))))

(assert (=> b!2184159 (isPrefix!2157 (take!249 lt!814723 lt!814735) lt!814723)))

(declare-fun lt!814736 () Unit!38373)

(declare-fun lemmaTakeIsPrefix!72 (List!25336 Int) Unit!38373)

(assert (=> b!2184159 (= lt!814736 (lemmaTakeIsPrefix!72 lt!814723 lt!814735))))

(assert (=> b!2184159 (isPrefix!2157 (_1!14893 lt!814731) lt!814729)))

(declare-fun lt!814722 () Unit!38373)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1440 (List!25336 List!25336) Unit!38373)

(assert (=> b!2184159 (= lt!814722 (lemmaConcatTwoListThenFirstIsPrefix!1440 (_1!14893 lt!814731) (_2!14893 lt!814731)))))

(assert (=> b!2184159 (isPrefix!2157 lt!814733 lt!814732)))

(declare-fun lt!814717 () Unit!38373)

(assert (=> b!2184159 (= lt!814717 (lemmaConcatTwoListThenFirstIsPrefix!1440 lt!814733 lt!814730))))

(declare-fun b!2184160 () Bool)

(declare-fun tp!681344 () Bool)

(assert (=> b!2184160 (= e!1395883 tp!681344)))

(declare-fun b!2184161 () Bool)

(assert (=> b!2184161 (= e!1395892 (- lt!814735 1))))

(declare-fun b!2184162 () Bool)

(declare-fun e!1395897 () Bool)

(assert (=> b!2184162 (= e!1395897 e!1395885)))

(declare-fun res!938572 () Bool)

(assert (=> b!2184162 (=> (not res!938572) (not e!1395885))))

(declare-fun isSuffix!708 (List!25336 List!25336) Bool)

(assert (=> b!2184162 (= res!938572 (isSuffix!708 lt!814719 lt!814723))))

(assert (=> b!2184162 (= lt!814723 (list!9694 totalInput!977))))

(assert (=> b!2184162 (= lt!814719 (list!9694 input!5540))))

(declare-fun b!2184163 () Bool)

(declare-fun tp_is_empty!9689 () Bool)

(assert (=> b!2184163 (= e!1395891 tp_is_empty!9689)))

(declare-fun b!2184164 () Bool)

(assert (=> b!2184164 (= e!1395886 (not (isEmpty!14509 (_1!14893 lt!814731))))))

(declare-fun b!2184165 () Bool)

(declare-fun tp!681345 () Bool)

(declare-fun inv!33563 (Conc!8177) Bool)

(assert (=> b!2184165 (= e!1395896 (and (inv!33563 (c!347137 totalInput!977)) tp!681345))))

(declare-fun b!2184166 () Bool)

(assert (=> b!2184166 (= e!1395892 (- 1))))

(declare-fun b!2184167 () Bool)

(assert (=> b!2184167 (= e!1395884 e!1395897)))

(declare-fun res!938566 () Bool)

(assert (=> b!2184167 (=> (not res!938566) (not e!1395897))))

(declare-fun unfocusZipper!148 (List!25338) Regex!6041)

(assert (=> b!2184167 (= res!938566 (= (unfocusZipper!148 lt!814739) r!12534))))

(declare-fun toList!1224 ((InoxSet Context!3222)) List!25338)

(assert (=> b!2184167 (= lt!814739 (toList!1224 z!4055))))

(declare-fun b!2184168 () Bool)

(declare-fun tp!681346 () Bool)

(declare-fun tp!681349 () Bool)

(assert (=> b!2184168 (= e!1395891 (and tp!681346 tp!681349))))

(declare-fun b!2184169 () Bool)

(declare-fun tp!681350 () Bool)

(assert (=> b!2184169 (= e!1395895 (and (inv!33563 (c!347137 input!5540)) tp!681350))))

(declare-fun b!2184170 () Bool)

(declare-fun tp!681343 () Bool)

(declare-fun tp!681342 () Bool)

(assert (=> b!2184170 (= e!1395891 (and tp!681343 tp!681342))))

(declare-fun b!2184171 () Bool)

(declare-fun isEmpty!14510 (BalanceConc!16116) Bool)

(assert (=> b!2184171 (= e!1395887 (not (isEmpty!14510 (_1!14894 lt!814726))))))

(assert (= (and start!211790 res!938574) b!2184167))

(assert (= (and b!2184167 res!938566) b!2184162))

(assert (= (and b!2184162 res!938572) b!2184158))

(assert (= (and b!2184158 res!938576) b!2184154))

(assert (= (and b!2184154 res!938567) b!2184159))

(assert (= (and b!2184159 c!347135) b!2184161))

(assert (= (and b!2184159 (not c!347135)) b!2184166))

(assert (= (and b!2184159 (not res!938575)) b!2184151))

(assert (= (and b!2184159 (not res!938568)) b!2184152))

(assert (= (and b!2184159 res!938573) b!2184171))

(assert (= (and b!2184159 (not res!938569)) b!2184157))

(assert (= (and b!2184157 res!938570) b!2184164))

(assert (= (and b!2184157 (not res!938571)) b!2184156))

(assert (= (and b!2184156 (not res!938577)) b!2184155))

(get-info :version)

(assert (= (and start!211790 ((_ is ElementMatch!6041) r!12534)) b!2184163))

(assert (= (and start!211790 ((_ is Concat!10343) r!12534)) b!2184168))

(assert (= (and start!211790 ((_ is Star!6041) r!12534)) b!2184153))

(assert (= (and start!211790 ((_ is Union!6041) r!12534)) b!2184170))

(assert (= start!211790 b!2184165))

(assert (= start!211790 b!2184169))

(assert (= (and start!211790 condSetEmpty!18322) setIsEmpty!18322))

(assert (= (and start!211790 (not condSetEmpty!18322)) setNonEmpty!18322))

(assert (= setNonEmpty!18322 b!2184160))

(declare-fun m!2626573 () Bool)

(assert (=> b!2184158 m!2626573))

(declare-fun m!2626575 () Bool)

(assert (=> b!2184158 m!2626575))

(declare-fun m!2626577 () Bool)

(assert (=> b!2184158 m!2626577))

(declare-fun m!2626579 () Bool)

(assert (=> b!2184158 m!2626579))

(declare-fun m!2626581 () Bool)

(assert (=> b!2184158 m!2626581))

(declare-fun m!2626583 () Bool)

(assert (=> b!2184158 m!2626583))

(declare-fun m!2626585 () Bool)

(assert (=> b!2184158 m!2626585))

(declare-fun m!2626587 () Bool)

(assert (=> b!2184162 m!2626587))

(declare-fun m!2626589 () Bool)

(assert (=> b!2184162 m!2626589))

(declare-fun m!2626591 () Bool)

(assert (=> b!2184162 m!2626591))

(declare-fun m!2626593 () Bool)

(assert (=> b!2184157 m!2626593))

(declare-fun m!2626595 () Bool)

(assert (=> b!2184164 m!2626595))

(declare-fun m!2626597 () Bool)

(assert (=> b!2184167 m!2626597))

(declare-fun m!2626599 () Bool)

(assert (=> b!2184167 m!2626599))

(declare-fun m!2626601 () Bool)

(assert (=> b!2184154 m!2626601))

(declare-fun m!2626603 () Bool)

(assert (=> b!2184155 m!2626603))

(declare-fun m!2626605 () Bool)

(assert (=> b!2184151 m!2626605))

(assert (=> b!2184151 m!2626605))

(declare-fun m!2626607 () Bool)

(assert (=> b!2184151 m!2626607))

(assert (=> b!2184151 m!2626607))

(declare-fun m!2626609 () Bool)

(assert (=> b!2184151 m!2626609))

(declare-fun m!2626611 () Bool)

(assert (=> b!2184171 m!2626611))

(declare-fun m!2626613 () Bool)

(assert (=> b!2184156 m!2626613))

(declare-fun m!2626615 () Bool)

(assert (=> b!2184156 m!2626615))

(declare-fun m!2626617 () Bool)

(assert (=> b!2184156 m!2626617))

(declare-fun m!2626619 () Bool)

(assert (=> b!2184156 m!2626619))

(declare-fun m!2626621 () Bool)

(assert (=> b!2184156 m!2626621))

(declare-fun m!2626623 () Bool)

(assert (=> b!2184156 m!2626623))

(declare-fun m!2626625 () Bool)

(assert (=> b!2184169 m!2626625))

(declare-fun m!2626627 () Bool)

(assert (=> setNonEmpty!18322 m!2626627))

(declare-fun m!2626629 () Bool)

(assert (=> b!2184152 m!2626629))

(declare-fun m!2626631 () Bool)

(assert (=> b!2184165 m!2626631))

(declare-fun m!2626633 () Bool)

(assert (=> start!211790 m!2626633))

(declare-fun m!2626635 () Bool)

(assert (=> start!211790 m!2626635))

(declare-fun m!2626637 () Bool)

(assert (=> start!211790 m!2626637))

(declare-fun m!2626639 () Bool)

(assert (=> b!2184159 m!2626639))

(declare-fun m!2626641 () Bool)

(assert (=> b!2184159 m!2626641))

(declare-fun m!2626643 () Bool)

(assert (=> b!2184159 m!2626643))

(declare-fun m!2626645 () Bool)

(assert (=> b!2184159 m!2626645))

(declare-fun m!2626647 () Bool)

(assert (=> b!2184159 m!2626647))

(declare-fun m!2626649 () Bool)

(assert (=> b!2184159 m!2626649))

(declare-fun m!2626651 () Bool)

(assert (=> b!2184159 m!2626651))

(declare-fun m!2626653 () Bool)

(assert (=> b!2184159 m!2626653))

(declare-fun m!2626655 () Bool)

(assert (=> b!2184159 m!2626655))

(declare-fun m!2626657 () Bool)

(assert (=> b!2184159 m!2626657))

(declare-fun m!2626659 () Bool)

(assert (=> b!2184159 m!2626659))

(declare-fun m!2626661 () Bool)

(assert (=> b!2184159 m!2626661))

(declare-fun m!2626663 () Bool)

(assert (=> b!2184159 m!2626663))

(assert (=> b!2184159 m!2626653))

(assert (=> b!2184159 m!2626641))

(declare-fun m!2626665 () Bool)

(assert (=> b!2184159 m!2626665))

(declare-fun m!2626667 () Bool)

(assert (=> b!2184159 m!2626667))

(assert (=> b!2184159 m!2626655))

(declare-fun m!2626669 () Bool)

(assert (=> b!2184159 m!2626669))

(check-sat (not b!2184157) (not b!2184165) (not b!2184152) (not b!2184171) (not b!2184160) (not b!2184154) (not start!211790) (not b!2184156) (not b!2184168) (not b!2184164) (not b!2184159) (not b!2184162) (not b!2184155) (not b!2184167) (not b!2184170) (not b!2184153) tp_is_empty!9689 (not b!2184151) (not setNonEmpty!18322) (not b!2184158) (not b!2184169))
(check-sat)
