; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212434 () Bool)

(assert start!212434)

(declare-fun lt!818034 () Int)

(declare-datatypes ((C!12264 0))(
  ( (C!12265 (val!7118 Int)) )
))
(declare-datatypes ((List!25390 0))(
  ( (Nil!25306) (Cons!25306 (h!30707 C!12264) (t!197988 List!25390)) )
))
(declare-fun lt!818020 () List!25390)

(declare-fun lt!818024 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6059 0))(
  ( (ElementMatch!6059 (c!348370 C!12264)) (Concat!10361 (regOne!12630 Regex!6059) (regTwo!12630 Regex!6059)) (EmptyExpr!6059) (Star!6059 (reg!6388 Regex!6059)) (EmptyLang!6059) (Union!6059 (regOne!12631 Regex!6059) (regTwo!12631 Regex!6059)) )
))
(declare-datatypes ((List!25391 0))(
  ( (Nil!25307) (Cons!25307 (h!30708 Regex!6059) (t!197989 List!25391)) )
))
(declare-datatypes ((Context!3258 0))(
  ( (Context!3259 (exprs!2129 List!25391)) )
))
(declare-fun z!4055 () (InoxSet Context!3258))

(declare-fun e!1399223 () Bool)

(declare-fun b!2189656 () Bool)

(declare-fun matchZipper!175 ((InoxSet Context!3258) List!25390) Bool)

(declare-fun take!267 (List!25390 Int) List!25390)

(declare-fun drop!1277 (List!25390 Int) List!25390)

(assert (=> b!2189656 (= e!1399223 (matchZipper!175 z!4055 (take!267 (drop!1277 lt!818020 lt!818024) lt!818034)))))

(declare-fun b!2189657 () Bool)

(declare-fun e!1399210 () Bool)

(declare-fun e!1399218 () Bool)

(assert (=> b!2189657 (= e!1399210 e!1399218)))

(declare-fun res!940685 () Bool)

(assert (=> b!2189657 (=> res!940685 e!1399218)))

(declare-fun e!1399216 () Bool)

(assert (=> b!2189657 (= res!940685 e!1399216)))

(declare-fun res!940684 () Bool)

(assert (=> b!2189657 (=> (not res!940684) (not e!1399216))))

(declare-fun lt!818040 () Bool)

(assert (=> b!2189657 (= res!940684 (not lt!818040))))

(declare-fun r!12534 () Regex!6059)

(declare-datatypes ((tuple2!25122 0))(
  ( (tuple2!25123 (_1!14931 List!25390) (_2!14931 List!25390)) )
))
(declare-fun lt!818017 () tuple2!25122)

(declare-fun matchR!2808 (Regex!6059 List!25390) Bool)

(assert (=> b!2189657 (= lt!818040 (matchR!2808 r!12534 (_1!14931 lt!818017)))))

(declare-fun b!2189658 () Bool)

(declare-fun isEmpty!14557 (List!25390) Bool)

(assert (=> b!2189658 (= e!1399216 (not (isEmpty!14557 (_1!14931 lt!818017))))))

(declare-fun b!2189659 () Bool)

(declare-fun e!1399214 () Bool)

(declare-fun tp!682619 () Bool)

(assert (=> b!2189659 (= e!1399214 tp!682619)))

(declare-fun b!2189660 () Bool)

(declare-fun e!1399219 () Bool)

(declare-fun e!1399212 () Bool)

(assert (=> b!2189660 (= e!1399219 e!1399212)))

(declare-fun res!940686 () Bool)

(assert (=> b!2189660 (=> (not res!940686) (not e!1399212))))

(declare-fun lt!818026 () List!25390)

(declare-fun lt!818035 () List!25390)

(assert (=> b!2189660 (= res!940686 (= lt!818026 lt!818035))))

(declare-fun ++!6420 (List!25390 List!25390) List!25390)

(assert (=> b!2189660 (= lt!818026 (++!6420 (_1!14931 lt!818017) (_2!14931 lt!818017)))))

(declare-fun b!2189662 () Bool)

(declare-fun tp!682617 () Bool)

(declare-fun tp!682623 () Bool)

(assert (=> b!2189662 (= e!1399214 (and tp!682617 tp!682623))))

(declare-fun b!2189663 () Bool)

(declare-fun e!1399215 () Bool)

(declare-fun e!1399221 () Bool)

(assert (=> b!2189663 (= e!1399215 e!1399221)))

(declare-fun res!940688 () Bool)

(assert (=> b!2189663 (=> (not res!940688) (not e!1399221))))

(declare-fun isSuffix!726 (List!25390 List!25390) Bool)

(assert (=> b!2189663 (= res!940688 (isSuffix!726 lt!818035 lt!818020))))

(declare-datatypes ((IArray!16395 0))(
  ( (IArray!16396 (innerList!8255 List!25390)) )
))
(declare-datatypes ((Conc!8195 0))(
  ( (Node!8195 (left!19419 Conc!8195) (right!19749 Conc!8195) (csize!16620 Int) (cheight!8406 Int)) (Leaf!11992 (xs!11137 IArray!16395) (csize!16621 Int)) (Empty!8195) )
))
(declare-datatypes ((BalanceConc!16152 0))(
  ( (BalanceConc!16153 (c!348371 Conc!8195)) )
))
(declare-fun totalInput!977 () BalanceConc!16152)

(declare-fun list!9722 (BalanceConc!16152) List!25390)

(assert (=> b!2189663 (= lt!818020 (list!9722 totalInput!977))))

(declare-fun input!5540 () BalanceConc!16152)

(assert (=> b!2189663 (= lt!818035 (list!9722 input!5540))))

(declare-fun b!2189664 () Bool)

(declare-fun e!1399217 () Bool)

(assert (=> b!2189664 (= e!1399218 e!1399217)))

(declare-fun res!940678 () Bool)

(assert (=> b!2189664 (=> res!940678 e!1399217)))

(declare-fun lt!818030 () Int)

(declare-fun lt!818023 () Int)

(assert (=> b!2189664 (= res!940678 (or (> lt!818030 lt!818023) (> lt!818023 lt!818030)))))

(declare-datatypes ((tuple2!25124 0))(
  ( (tuple2!25125 (_1!14932 BalanceConc!16152) (_2!14932 BalanceConc!16152)) )
))
(declare-fun lt!818029 () tuple2!25124)

(declare-fun size!19774 (BalanceConc!16152) Int)

(assert (=> b!2189664 (= lt!818023 (size!19774 (_1!14932 lt!818029)))))

(declare-fun size!19775 (List!25390) Int)

(assert (=> b!2189664 (= lt!818030 (size!19775 (_1!14931 lt!818017)))))

(declare-fun lt!818031 () List!25390)

(declare-fun lt!818025 () Bool)

(assert (=> b!2189664 (= (matchR!2808 r!12534 lt!818031) lt!818025)))

(declare-datatypes ((Unit!38449 0))(
  ( (Unit!38450) )
))
(declare-fun lt!818036 () Unit!38449)

(declare-datatypes ((List!25392 0))(
  ( (Nil!25308) (Cons!25308 (h!30709 Context!3258) (t!197990 List!25392)) )
))
(declare-fun lt!818019 () List!25392)

(declare-fun theoremZipperRegexEquiv!85 ((InoxSet Context!3258) List!25392 Regex!6059 List!25390) Unit!38449)

(assert (=> b!2189664 (= lt!818036 (theoremZipperRegexEquiv!85 z!4055 lt!818019 r!12534 lt!818031))))

(assert (=> b!2189664 (= lt!818040 (matchZipper!175 z!4055 (_1!14931 lt!818017)))))

(declare-fun lt!818033 () Unit!38449)

(assert (=> b!2189664 (= lt!818033 (theoremZipperRegexEquiv!85 z!4055 lt!818019 r!12534 (_1!14931 lt!818017)))))

(declare-fun b!2189665 () Bool)

(declare-fun e!1399211 () Bool)

(declare-fun isEmpty!14558 (BalanceConc!16152) Bool)

(assert (=> b!2189665 (= e!1399211 (not (isEmpty!14558 (_1!14932 lt!818029))))))

(declare-fun b!2189666 () Bool)

(declare-fun e!1399225 () Bool)

(declare-fun tp!682616 () Bool)

(declare-fun inv!33666 (Conc!8195) Bool)

(assert (=> b!2189666 (= e!1399225 (and (inv!33666 (c!348371 totalInput!977)) tp!682616))))

(declare-fun b!2189667 () Bool)

(declare-fun e!1399222 () Bool)

(assert (=> b!2189667 (= e!1399217 e!1399222)))

(declare-fun res!940677 () Bool)

(assert (=> b!2189667 (=> res!940677 e!1399222)))

(declare-fun isPrefix!2175 (List!25390 List!25390) Bool)

(assert (=> b!2189667 (= res!940677 (not (isPrefix!2175 lt!818031 lt!818035)))))

(assert (=> b!2189667 (= lt!818031 (_1!14931 lt!818017))))

(declare-fun lt!818042 () Unit!38449)

(declare-fun lemmaIsPrefixSameLengthThenSameList!377 (List!25390 List!25390 List!25390) Unit!38449)

(assert (=> b!2189667 (= lt!818042 (lemmaIsPrefixSameLengthThenSameList!377 lt!818031 (_1!14931 lt!818017) lt!818035))))

(declare-fun setIsEmpty!18402 () Bool)

(declare-fun setRes!18402 () Bool)

(assert (=> setIsEmpty!18402 setRes!18402))

(declare-fun b!2189668 () Bool)

(declare-fun e!1399213 () Bool)

(declare-fun tp!682620 () Bool)

(assert (=> b!2189668 (= e!1399213 (and (inv!33666 (c!348371 input!5540)) tp!682620))))

(declare-fun b!2189669 () Bool)

(declare-fun e!1399224 () Int)

(assert (=> b!2189669 (= e!1399224 (- lt!818024 1))))

(declare-fun b!2189670 () Bool)

(declare-fun e!1399209 () Bool)

(declare-fun lt!818022 () tuple2!25122)

(assert (=> b!2189670 (= e!1399209 (matchR!2808 r!12534 (_1!14931 lt!818022)))))

(declare-fun res!940679 () Bool)

(declare-fun e!1399220 () Bool)

(assert (=> start!212434 (=> (not res!940679) (not e!1399220))))

(declare-fun validRegex!2335 (Regex!6059) Bool)

(assert (=> start!212434 (= res!940679 (validRegex!2335 r!12534))))

(assert (=> start!212434 e!1399220))

(assert (=> start!212434 e!1399214))

(declare-fun inv!33667 (BalanceConc!16152) Bool)

(assert (=> start!212434 (and (inv!33667 totalInput!977) e!1399225)))

(assert (=> start!212434 (and (inv!33667 input!5540) e!1399213)))

(declare-fun condSetEmpty!18402 () Bool)

(assert (=> start!212434 (= condSetEmpty!18402 (= z!4055 ((as const (Array Context!3258 Bool)) false)))))

(assert (=> start!212434 setRes!18402))

(declare-fun b!2189661 () Bool)

(declare-fun e!1399208 () Bool)

(declare-fun tp!682618 () Bool)

(assert (=> b!2189661 (= e!1399208 tp!682618)))

(declare-fun b!2189671 () Bool)

(declare-fun tp!682622 () Bool)

(declare-fun tp!682624 () Bool)

(assert (=> b!2189671 (= e!1399214 (and tp!682622 tp!682624))))

(declare-fun b!2189672 () Bool)

(assert (=> b!2189672 (= e!1399212 (not e!1399210))))

(declare-fun res!940687 () Bool)

(assert (=> b!2189672 (=> res!940687 e!1399210)))

(assert (=> b!2189672 (= res!940687 e!1399211)))

(declare-fun res!940689 () Bool)

(assert (=> b!2189672 (=> (not res!940689) (not e!1399211))))

(assert (=> b!2189672 (= res!940689 (not lt!818025))))

(assert (=> b!2189672 (= lt!818025 (matchZipper!175 z!4055 lt!818031))))

(assert (=> b!2189672 e!1399209))

(declare-fun res!940683 () Bool)

(assert (=> b!2189672 (=> res!940683 e!1399209)))

(assert (=> b!2189672 (= res!940683 (isEmpty!14557 (_1!14931 lt!818022)))))

(declare-fun findLongestMatchInner!684 (Regex!6059 List!25390 Int List!25390 List!25390 Int) tuple2!25122)

(assert (=> b!2189672 (= lt!818022 (findLongestMatchInner!684 r!12534 Nil!25306 (size!19775 Nil!25306) lt!818035 lt!818035 (size!19775 lt!818035)))))

(declare-fun lt!818041 () Unit!38449)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!657 (Regex!6059 List!25390) Unit!38449)

(assert (=> b!2189672 (= lt!818041 (longestMatchIsAcceptedByMatchOrIsEmpty!657 r!12534 lt!818035))))

(assert (=> b!2189672 e!1399223))

(declare-fun res!940680 () Bool)

(assert (=> b!2189672 (=> res!940680 e!1399223)))

(assert (=> b!2189672 (= res!940680 (<= lt!818034 0))))

(declare-fun lt!818037 () Int)

(declare-fun lt!818039 () Int)

(declare-fun furthestNullablePosition!241 ((InoxSet Context!3258) Int BalanceConc!16152 Int Int) Int)

(assert (=> b!2189672 (= lt!818034 (+ 1 (- (furthestNullablePosition!241 z!4055 lt!818024 totalInput!977 lt!818039 lt!818037) lt!818024)))))

(declare-fun lt!818021 () Unit!38449)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!82 ((InoxSet Context!3258) Int BalanceConc!16152 Int) Unit!38449)

(assert (=> b!2189672 (= lt!818021 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!82 z!4055 lt!818024 totalInput!977 lt!818037))))

(assert (=> b!2189672 (= lt!818037 e!1399224)))

(declare-fun c!348369 () Bool)

(declare-fun nullableZipper!339 ((InoxSet Context!3258)) Bool)

(assert (=> b!2189672 (= c!348369 (nullableZipper!339 z!4055))))

(assert (=> b!2189672 (isPrefix!2175 (take!267 lt!818020 lt!818024) lt!818020)))

(declare-fun lt!818028 () Unit!38449)

(declare-fun lemmaTakeIsPrefix!90 (List!25390 Int) Unit!38449)

(assert (=> b!2189672 (= lt!818028 (lemmaTakeIsPrefix!90 lt!818020 lt!818024))))

(assert (=> b!2189672 (isPrefix!2175 (_1!14931 lt!818017) lt!818026)))

(declare-fun lt!818027 () Unit!38449)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1458 (List!25390 List!25390) Unit!38449)

(assert (=> b!2189672 (= lt!818027 (lemmaConcatTwoListThenFirstIsPrefix!1458 (_1!14931 lt!818017) (_2!14931 lt!818017)))))

(declare-fun lt!818038 () List!25390)

(assert (=> b!2189672 (isPrefix!2175 lt!818031 lt!818038)))

(declare-fun lt!818032 () Unit!38449)

(declare-fun lt!818018 () List!25390)

(assert (=> b!2189672 (= lt!818032 (lemmaConcatTwoListThenFirstIsPrefix!1458 lt!818031 lt!818018))))

(declare-fun b!2189673 () Bool)

(assert (=> b!2189673 (= e!1399220 e!1399215)))

(declare-fun res!940682 () Bool)

(assert (=> b!2189673 (=> (not res!940682) (not e!1399215))))

(declare-fun unfocusZipper!166 (List!25392) Regex!6059)

(assert (=> b!2189673 (= res!940682 (= (unfocusZipper!166 lt!818019) r!12534))))

(declare-fun toList!1242 ((InoxSet Context!3258)) List!25392)

(assert (=> b!2189673 (= lt!818019 (toList!1242 z!4055))))

(declare-fun b!2189674 () Bool)

(assert (=> b!2189674 (= e!1399224 (- 1))))

(declare-fun b!2189675 () Bool)

(assert (=> b!2189675 (= e!1399222 (isPrefix!2175 (_1!14931 lt!818017) lt!818035))))

(declare-fun b!2189676 () Bool)

(assert (=> b!2189676 (= e!1399221 e!1399219)))

(declare-fun res!940681 () Bool)

(assert (=> b!2189676 (=> (not res!940681) (not e!1399219))))

(assert (=> b!2189676 (= res!940681 (= lt!818038 lt!818035))))

(assert (=> b!2189676 (= lt!818038 (++!6420 lt!818031 lt!818018))))

(assert (=> b!2189676 (= lt!818018 (list!9722 (_2!14932 lt!818029)))))

(assert (=> b!2189676 (= lt!818031 (list!9722 (_1!14932 lt!818029)))))

(declare-fun findLongestMatch!613 (Regex!6059 List!25390) tuple2!25122)

(assert (=> b!2189676 (= lt!818017 (findLongestMatch!613 r!12534 lt!818035))))

(assert (=> b!2189676 (= lt!818024 (- lt!818039 (size!19774 input!5540)))))

(assert (=> b!2189676 (= lt!818039 (size!19774 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!108 ((InoxSet Context!3258) BalanceConc!16152 BalanceConc!16152) tuple2!25124)

(assert (=> b!2189676 (= lt!818029 (findLongestMatchZipperSequenceV3!108 z!4055 input!5540 totalInput!977))))

(declare-fun b!2189677 () Bool)

(declare-fun tp_is_empty!9725 () Bool)

(assert (=> b!2189677 (= e!1399214 tp_is_empty!9725)))

(declare-fun tp!682621 () Bool)

(declare-fun setElem!18402 () Context!3258)

(declare-fun setNonEmpty!18402 () Bool)

(declare-fun inv!33668 (Context!3258) Bool)

(assert (=> setNonEmpty!18402 (= setRes!18402 (and tp!682621 (inv!33668 setElem!18402) e!1399208))))

(declare-fun setRest!18402 () (InoxSet Context!3258))

(assert (=> setNonEmpty!18402 (= z!4055 ((_ map or) (store ((as const (Array Context!3258 Bool)) false) setElem!18402 true) setRest!18402))))

(assert (= (and start!212434 res!940679) b!2189673))

(assert (= (and b!2189673 res!940682) b!2189663))

(assert (= (and b!2189663 res!940688) b!2189676))

(assert (= (and b!2189676 res!940681) b!2189660))

(assert (= (and b!2189660 res!940686) b!2189672))

(assert (= (and b!2189672 c!348369) b!2189669))

(assert (= (and b!2189672 (not c!348369)) b!2189674))

(assert (= (and b!2189672 (not res!940680)) b!2189656))

(assert (= (and b!2189672 (not res!940683)) b!2189670))

(assert (= (and b!2189672 res!940689) b!2189665))

(assert (= (and b!2189672 (not res!940687)) b!2189657))

(assert (= (and b!2189657 res!940684) b!2189658))

(assert (= (and b!2189657 (not res!940685)) b!2189664))

(assert (= (and b!2189664 (not res!940678)) b!2189667))

(assert (= (and b!2189667 (not res!940677)) b!2189675))

(get-info :version)

(assert (= (and start!212434 ((_ is ElementMatch!6059) r!12534)) b!2189677))

(assert (= (and start!212434 ((_ is Concat!10361) r!12534)) b!2189671))

(assert (= (and start!212434 ((_ is Star!6059) r!12534)) b!2189659))

(assert (= (and start!212434 ((_ is Union!6059) r!12534)) b!2189662))

(assert (= start!212434 b!2189666))

(assert (= start!212434 b!2189668))

(assert (= (and start!212434 condSetEmpty!18402) setIsEmpty!18402))

(assert (= (and start!212434 (not condSetEmpty!18402)) setNonEmpty!18402))

(assert (= setNonEmpty!18402 b!2189661))

(declare-fun m!2632649 () Bool)

(assert (=> b!2189676 m!2632649))

(declare-fun m!2632651 () Bool)

(assert (=> b!2189676 m!2632651))

(declare-fun m!2632653 () Bool)

(assert (=> b!2189676 m!2632653))

(declare-fun m!2632655 () Bool)

(assert (=> b!2189676 m!2632655))

(declare-fun m!2632657 () Bool)

(assert (=> b!2189676 m!2632657))

(declare-fun m!2632659 () Bool)

(assert (=> b!2189676 m!2632659))

(declare-fun m!2632661 () Bool)

(assert (=> b!2189676 m!2632661))

(declare-fun m!2632663 () Bool)

(assert (=> b!2189660 m!2632663))

(declare-fun m!2632665 () Bool)

(assert (=> b!2189657 m!2632665))

(declare-fun m!2632667 () Bool)

(assert (=> b!2189658 m!2632667))

(declare-fun m!2632669 () Bool)

(assert (=> b!2189673 m!2632669))

(declare-fun m!2632671 () Bool)

(assert (=> b!2189673 m!2632671))

(declare-fun m!2632673 () Bool)

(assert (=> b!2189656 m!2632673))

(assert (=> b!2189656 m!2632673))

(declare-fun m!2632675 () Bool)

(assert (=> b!2189656 m!2632675))

(assert (=> b!2189656 m!2632675))

(declare-fun m!2632677 () Bool)

(assert (=> b!2189656 m!2632677))

(declare-fun m!2632679 () Bool)

(assert (=> b!2189672 m!2632679))

(assert (=> b!2189672 m!2632679))

(declare-fun m!2632681 () Bool)

(assert (=> b!2189672 m!2632681))

(declare-fun m!2632683 () Bool)

(assert (=> b!2189672 m!2632683))

(declare-fun m!2632685 () Bool)

(assert (=> b!2189672 m!2632685))

(declare-fun m!2632687 () Bool)

(assert (=> b!2189672 m!2632687))

(declare-fun m!2632689 () Bool)

(assert (=> b!2189672 m!2632689))

(declare-fun m!2632691 () Bool)

(assert (=> b!2189672 m!2632691))

(declare-fun m!2632693 () Bool)

(assert (=> b!2189672 m!2632693))

(declare-fun m!2632695 () Bool)

(assert (=> b!2189672 m!2632695))

(assert (=> b!2189672 m!2632691))

(declare-fun m!2632697 () Bool)

(assert (=> b!2189672 m!2632697))

(declare-fun m!2632699 () Bool)

(assert (=> b!2189672 m!2632699))

(declare-fun m!2632701 () Bool)

(assert (=> b!2189672 m!2632701))

(declare-fun m!2632703 () Bool)

(assert (=> b!2189672 m!2632703))

(declare-fun m!2632705 () Bool)

(assert (=> b!2189672 m!2632705))

(declare-fun m!2632707 () Bool)

(assert (=> b!2189672 m!2632707))

(declare-fun m!2632709 () Bool)

(assert (=> b!2189672 m!2632709))

(assert (=> b!2189672 m!2632695))

(declare-fun m!2632711 () Bool)

(assert (=> b!2189663 m!2632711))

(declare-fun m!2632713 () Bool)

(assert (=> b!2189663 m!2632713))

(declare-fun m!2632715 () Bool)

(assert (=> b!2189663 m!2632715))

(declare-fun m!2632717 () Bool)

(assert (=> setNonEmpty!18402 m!2632717))

(declare-fun m!2632719 () Bool)

(assert (=> b!2189666 m!2632719))

(declare-fun m!2632721 () Bool)

(assert (=> start!212434 m!2632721))

(declare-fun m!2632723 () Bool)

(assert (=> start!212434 m!2632723))

(declare-fun m!2632725 () Bool)

(assert (=> start!212434 m!2632725))

(declare-fun m!2632727 () Bool)

(assert (=> b!2189667 m!2632727))

(declare-fun m!2632729 () Bool)

(assert (=> b!2189667 m!2632729))

(declare-fun m!2632731 () Bool)

(assert (=> b!2189670 m!2632731))

(declare-fun m!2632733 () Bool)

(assert (=> b!2189665 m!2632733))

(declare-fun m!2632735 () Bool)

(assert (=> b!2189664 m!2632735))

(declare-fun m!2632737 () Bool)

(assert (=> b!2189664 m!2632737))

(declare-fun m!2632739 () Bool)

(assert (=> b!2189664 m!2632739))

(declare-fun m!2632741 () Bool)

(assert (=> b!2189664 m!2632741))

(declare-fun m!2632743 () Bool)

(assert (=> b!2189664 m!2632743))

(declare-fun m!2632745 () Bool)

(assert (=> b!2189664 m!2632745))

(declare-fun m!2632747 () Bool)

(assert (=> b!2189668 m!2632747))

(declare-fun m!2632749 () Bool)

(assert (=> b!2189675 m!2632749))

(check-sat (not b!2189673) (not b!2189666) (not b!2189662) (not start!212434) (not b!2189657) (not b!2189670) (not setNonEmpty!18402) (not b!2189656) (not b!2189659) (not b!2189661) (not b!2189667) (not b!2189658) (not b!2189675) (not b!2189660) (not b!2189668) tp_is_empty!9725 (not b!2189671) (not b!2189676) (not b!2189665) (not b!2189663) (not b!2189664) (not b!2189672))
(check-sat)
