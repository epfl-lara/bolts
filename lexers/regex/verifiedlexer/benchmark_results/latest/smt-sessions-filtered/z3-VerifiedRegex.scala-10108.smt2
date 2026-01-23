; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!529558 () Bool)

(assert start!529558)

(declare-fun b!5012774 () Bool)

(declare-fun e!3131645 () Bool)

(declare-fun e!3131647 () Bool)

(assert (=> b!5012774 (= e!3131645 (not e!3131647))))

(declare-fun res!2137645 () Bool)

(assert (=> b!5012774 (=> res!2137645 e!3131647)))

(declare-fun e!3131649 () Bool)

(assert (=> b!5012774 (= res!2137645 e!3131649)))

(declare-fun res!2137652 () Bool)

(assert (=> b!5012774 (=> (not res!2137652) (not e!3131649))))

(declare-fun lt!2073661 () Bool)

(assert (=> b!5012774 (= res!2137652 (not lt!2073661))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27852 0))(
  ( (C!27853 (val!23292 Int)) )
))
(declare-datatypes ((Regex!13801 0))(
  ( (ElementMatch!13801 (c!856283 C!27852)) (Concat!22594 (regOne!28114 Regex!13801) (regTwo!28114 Regex!13801)) (EmptyExpr!13801) (Star!13801 (reg!14130 Regex!13801)) (EmptyLang!13801) (Union!13801 (regOne!28115 Regex!13801) (regTwo!28115 Regex!13801)) )
))
(declare-datatypes ((List!58007 0))(
  ( (Nil!57883) (Cons!57883 (h!64331 Regex!13801) (t!370375 List!58007)) )
))
(declare-datatypes ((Context!6452 0))(
  ( (Context!6453 (exprs!3726 List!58007)) )
))
(declare-fun z!4183 () (InoxSet Context!6452))

(declare-datatypes ((List!58008 0))(
  ( (Nil!57884) (Cons!57884 (h!64332 C!27852) (t!370376 List!58008)) )
))
(declare-fun lt!2073668 () List!58008)

(declare-fun matchZipper!569 ((InoxSet Context!6452) List!58008) Bool)

(assert (=> b!5012774 (= lt!2073661 (matchZipper!569 z!4183 lt!2073668))))

(declare-fun e!3131653 () Bool)

(assert (=> b!5012774 e!3131653))

(declare-fun res!2137653 () Bool)

(assert (=> b!5012774 (=> res!2137653 e!3131653)))

(declare-datatypes ((tuple2!63048 0))(
  ( (tuple2!63049 (_1!34827 List!58008) (_2!34827 List!58008)) )
))
(declare-fun lt!2073663 () tuple2!63048)

(declare-fun isEmpty!31355 (List!58008) Bool)

(assert (=> b!5012774 (= res!2137653 (isEmpty!31355 (_1!34827 lt!2073663)))))

(declare-fun r!12727 () Regex!13801)

(declare-fun lt!2073678 () List!58008)

(declare-fun findLongestMatchInner!1990 (Regex!13801 List!58008 Int List!58008 List!58008 Int) tuple2!63048)

(declare-fun size!38480 (List!58008) Int)

(assert (=> b!5012774 (= lt!2073663 (findLongestMatchInner!1990 r!12727 Nil!57884 (size!38480 Nil!57884) lt!2073678 lt!2073678 (size!38480 lt!2073678)))))

(declare-datatypes ((Unit!149099 0))(
  ( (Unit!149100) )
))
(declare-fun lt!2073674 () Unit!149099)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1943 (Regex!13801 List!58008) Unit!149099)

(assert (=> b!5012774 (= lt!2073674 (longestMatchIsAcceptedByMatchOrIsEmpty!1943 r!12727 lt!2073678))))

(declare-fun e!3131650 () Bool)

(assert (=> b!5012774 e!3131650))

(declare-fun res!2137647 () Bool)

(assert (=> b!5012774 (=> res!2137647 e!3131650)))

(declare-fun lt!2073659 () Int)

(assert (=> b!5012774 (= res!2137647 (= lt!2073659 0))))

(declare-fun lt!2073680 () Int)

(declare-fun lt!2073670 () Int)

(declare-datatypes ((IArray!30701 0))(
  ( (IArray!30702 (innerList!15408 List!58008)) )
))
(declare-datatypes ((Conc!15320 0))(
  ( (Node!15320 (left!42322 Conc!15320) (right!42652 Conc!15320) (csize!30870 Int) (cheight!15531 Int)) (Leaf!25429 (xs!18646 IArray!30701) (csize!30871 Int)) (Empty!15320) )
))
(declare-datatypes ((BalanceConc!30070 0))(
  ( (BalanceConc!30071 (c!856284 Conc!15320)) )
))
(declare-fun totalInput!1012 () BalanceConc!30070)

(declare-fun findLongestMatchInnerZipperFastV2!141 ((InoxSet Context!6452) Int BalanceConc!30070 Int) Int)

(assert (=> b!5012774 (= lt!2073659 (findLongestMatchInnerZipperFastV2!141 z!4183 lt!2073680 totalInput!1012 lt!2073670))))

(declare-fun lt!2073667 () Unit!149099)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!60 ((InoxSet Context!6452) Int BalanceConc!30070) Unit!149099)

(assert (=> b!5012774 (= lt!2073667 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!60 z!4183 lt!2073680 totalInput!1012))))

(declare-fun lt!2073677 () List!58008)

(declare-fun isPrefix!5354 (List!58008 List!58008) Bool)

(declare-fun take!660 (List!58008 Int) List!58008)

(assert (=> b!5012774 (isPrefix!5354 (take!660 lt!2073677 lt!2073680) lt!2073677)))

(declare-fun lt!2073666 () Unit!149099)

(declare-fun lemmaTakeIsPrefix!154 (List!58008 Int) Unit!149099)

(assert (=> b!5012774 (= lt!2073666 (lemmaTakeIsPrefix!154 lt!2073677 lt!2073680))))

(declare-fun lt!2073673 () tuple2!63048)

(declare-fun lt!2073665 () List!58008)

(assert (=> b!5012774 (isPrefix!5354 (_1!34827 lt!2073673) lt!2073665)))

(declare-fun lt!2073679 () Unit!149099)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3452 (List!58008 List!58008) Unit!149099)

(assert (=> b!5012774 (= lt!2073679 (lemmaConcatTwoListThenFirstIsPrefix!3452 (_1!34827 lt!2073673) (_2!34827 lt!2073673)))))

(declare-fun lt!2073676 () List!58008)

(assert (=> b!5012774 (isPrefix!5354 lt!2073668 lt!2073676)))

(declare-fun lt!2073682 () Unit!149099)

(declare-fun lt!2073669 () List!58008)

(assert (=> b!5012774 (= lt!2073682 (lemmaConcatTwoListThenFirstIsPrefix!3452 lt!2073668 lt!2073669))))

(declare-fun b!5012775 () Bool)

(declare-fun e!3131646 () Bool)

(assert (=> b!5012775 (= e!3131646 (not (isEmpty!31355 (_1!34827 lt!2073673))))))

(declare-fun b!5012776 () Bool)

(declare-fun e!3131648 () Bool)

(declare-fun e!3131652 () Bool)

(assert (=> b!5012776 (= e!3131648 e!3131652)))

(declare-fun res!2137650 () Bool)

(assert (=> b!5012776 (=> res!2137650 e!3131652)))

(declare-fun lt!2073662 () Int)

(declare-fun lt!2073660 () Int)

(assert (=> b!5012776 (= res!2137650 (or (> lt!2073662 lt!2073660) (<= lt!2073660 lt!2073662)))))

(declare-datatypes ((tuple2!63050 0))(
  ( (tuple2!63051 (_1!34828 BalanceConc!30070) (_2!34828 BalanceConc!30070)) )
))
(declare-fun lt!2073675 () tuple2!63050)

(declare-fun size!38481 (BalanceConc!30070) Int)

(assert (=> b!5012776 (= lt!2073660 (size!38481 (_1!34828 lt!2073675)))))

(assert (=> b!5012776 (= lt!2073662 (size!38480 (_1!34827 lt!2073673)))))

(declare-fun matchR!6765 (Regex!13801 List!58008) Bool)

(assert (=> b!5012776 (= (matchR!6765 r!12727 lt!2073668) lt!2073661)))

(declare-fun lt!2073664 () Unit!149099)

(declare-datatypes ((List!58009 0))(
  ( (Nil!57885) (Cons!57885 (h!64333 Context!6452) (t!370377 List!58009)) )
))
(declare-fun lt!2073681 () List!58009)

(declare-fun theoremZipperRegexEquiv!173 ((InoxSet Context!6452) List!58009 Regex!13801 List!58008) Unit!149099)

(assert (=> b!5012776 (= lt!2073664 (theoremZipperRegexEquiv!173 z!4183 lt!2073681 r!12727 lt!2073668))))

(declare-fun lt!2073672 () Bool)

(assert (=> b!5012776 (= lt!2073672 (matchZipper!569 z!4183 (_1!34827 lt!2073673)))))

(declare-fun lt!2073671 () Unit!149099)

(assert (=> b!5012776 (= lt!2073671 (theoremZipperRegexEquiv!173 z!4183 lt!2073681 r!12727 (_1!34827 lt!2073673)))))

(declare-fun setIsEmpty!28448 () Bool)

(declare-fun setRes!28448 () Bool)

(assert (=> setIsEmpty!28448 setRes!28448))

(declare-fun b!5012777 () Bool)

(declare-fun e!3131644 () Bool)

(assert (=> b!5012777 (= e!3131644 e!3131645)))

(declare-fun res!2137649 () Bool)

(assert (=> b!5012777 (=> (not res!2137649) (not e!3131645))))

(assert (=> b!5012777 (= res!2137649 (= lt!2073665 lt!2073678))))

(declare-fun ++!12649 (List!58008 List!58008) List!58008)

(assert (=> b!5012777 (= lt!2073665 (++!12649 (_1!34827 lt!2073673) (_2!34827 lt!2073673)))))

(declare-fun setElem!28448 () Context!6452)

(declare-fun setNonEmpty!28448 () Bool)

(declare-fun e!3131651 () Bool)

(declare-fun tp!1405936 () Bool)

(declare-fun inv!76068 (Context!6452) Bool)

(assert (=> setNonEmpty!28448 (= setRes!28448 (and tp!1405936 (inv!76068 setElem!28448) e!3131651))))

(declare-fun setRest!28448 () (InoxSet Context!6452))

(assert (=> setNonEmpty!28448 (= z!4183 ((_ map or) (store ((as const (Array Context!6452 Bool)) false) setElem!28448 true) setRest!28448))))

(declare-fun b!5012778 () Bool)

(declare-fun e!3131655 () Bool)

(declare-fun tp!1405932 () Bool)

(declare-fun inv!76069 (Conc!15320) Bool)

(assert (=> b!5012778 (= e!3131655 (and (inv!76069 (c!856284 totalInput!1012)) tp!1405932))))

(declare-fun b!5012779 () Bool)

(declare-fun tp!1405931 () Bool)

(assert (=> b!5012779 (= e!3131651 tp!1405931)))

(declare-fun b!5012780 () Bool)

(declare-fun e!3131642 () Bool)

(declare-fun tp!1405937 () Bool)

(declare-fun tp!1405934 () Bool)

(assert (=> b!5012780 (= e!3131642 (and tp!1405937 tp!1405934))))

(declare-fun b!5012781 () Bool)

(declare-fun drop!2464 (List!58008 Int) List!58008)

(assert (=> b!5012781 (= e!3131650 (matchZipper!569 z!4183 (take!660 (drop!2464 lt!2073677 lt!2073680) lt!2073659)))))

(declare-fun b!5012782 () Bool)

(declare-fun e!3131654 () Bool)

(declare-fun input!5597 () BalanceConc!30070)

(declare-fun tp!1405935 () Bool)

(assert (=> b!5012782 (= e!3131654 (and (inv!76069 (c!856284 input!5597)) tp!1405935))))

(declare-fun b!5012783 () Bool)

(declare-fun e!3131643 () Bool)

(declare-fun e!3131656 () Bool)

(assert (=> b!5012783 (= e!3131643 e!3131656)))

(declare-fun res!2137648 () Bool)

(assert (=> b!5012783 (=> (not res!2137648) (not e!3131656))))

(declare-fun unfocusZipper!328 (List!58009) Regex!13801)

(assert (=> b!5012783 (= res!2137648 (= (unfocusZipper!328 lt!2073681) r!12727))))

(declare-fun toList!8086 ((InoxSet Context!6452)) List!58009)

(assert (=> b!5012783 (= lt!2073681 (toList!8086 z!4183))))

(declare-fun b!5012784 () Bool)

(declare-fun tp!1405938 () Bool)

(assert (=> b!5012784 (= e!3131642 tp!1405938)))

(declare-fun res!2137646 () Bool)

(assert (=> start!529558 (=> (not res!2137646) (not e!3131643))))

(declare-fun validRegex!6098 (Regex!13801) Bool)

(assert (=> start!529558 (= res!2137646 (validRegex!6098 r!12727))))

(assert (=> start!529558 e!3131643))

(assert (=> start!529558 e!3131642))

(declare-fun inv!76070 (BalanceConc!30070) Bool)

(assert (=> start!529558 (and (inv!76070 input!5597) e!3131654)))

(declare-fun condSetEmpty!28448 () Bool)

(assert (=> start!529558 (= condSetEmpty!28448 (= z!4183 ((as const (Array Context!6452 Bool)) false)))))

(assert (=> start!529558 setRes!28448))

(assert (=> start!529558 (and (inv!76070 totalInput!1012) e!3131655)))

(declare-fun b!5012785 () Bool)

(declare-fun tp_is_empty!36599 () Bool)

(assert (=> b!5012785 (= e!3131642 tp_is_empty!36599)))

(declare-fun b!5012786 () Bool)

(assert (=> b!5012786 (= e!3131653 (matchR!6765 r!12727 (_1!34827 lt!2073663)))))

(declare-fun b!5012787 () Bool)

(declare-fun isEmpty!31356 (BalanceConc!30070) Bool)

(assert (=> b!5012787 (= e!3131649 (not (isEmpty!31356 (_1!34828 lt!2073675))))))

(declare-fun b!5012788 () Bool)

(declare-fun e!3131657 () Bool)

(assert (=> b!5012788 (= e!3131657 e!3131644)))

(declare-fun res!2137644 () Bool)

(assert (=> b!5012788 (=> (not res!2137644) (not e!3131644))))

(assert (=> b!5012788 (= res!2137644 (= lt!2073676 lt!2073678))))

(assert (=> b!5012788 (= lt!2073676 (++!12649 lt!2073668 lt!2073669))))

(declare-fun list!18638 (BalanceConc!30070) List!58008)

(assert (=> b!5012788 (= lt!2073669 (list!18638 (_2!34828 lt!2073675)))))

(assert (=> b!5012788 (= lt!2073668 (list!18638 (_1!34828 lt!2073675)))))

(declare-fun findLongestMatch!1814 (Regex!13801 List!58008) tuple2!63048)

(assert (=> b!5012788 (= lt!2073673 (findLongestMatch!1814 r!12727 lt!2073678))))

(assert (=> b!5012788 (= lt!2073680 (- lt!2073670 (size!38481 input!5597)))))

(assert (=> b!5012788 (= lt!2073670 (size!38481 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!103 ((InoxSet Context!6452) BalanceConc!30070 BalanceConc!30070) tuple2!63050)

(assert (=> b!5012788 (= lt!2073675 (findLongestMatchZipperFastV2!103 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5012789 () Bool)

(assert (=> b!5012789 (= e!3131647 e!3131648)))

(declare-fun res!2137642 () Bool)

(assert (=> b!5012789 (=> res!2137642 e!3131648)))

(assert (=> b!5012789 (= res!2137642 e!3131646)))

(declare-fun res!2137643 () Bool)

(assert (=> b!5012789 (=> (not res!2137643) (not e!3131646))))

(assert (=> b!5012789 (= res!2137643 (not lt!2073672))))

(assert (=> b!5012789 (= lt!2073672 (matchR!6765 r!12727 (_1!34827 lt!2073673)))))

(declare-fun b!5012790 () Bool)

(assert (=> b!5012790 (= e!3131652 (isPrefix!5354 (_1!34827 lt!2073673) lt!2073678))))

(declare-fun b!5012791 () Bool)

(declare-fun tp!1405933 () Bool)

(declare-fun tp!1405930 () Bool)

(assert (=> b!5012791 (= e!3131642 (and tp!1405933 tp!1405930))))

(declare-fun b!5012792 () Bool)

(assert (=> b!5012792 (= e!3131656 e!3131657)))

(declare-fun res!2137651 () Bool)

(assert (=> b!5012792 (=> (not res!2137651) (not e!3131657))))

(declare-fun isSuffix!1367 (List!58008 List!58008) Bool)

(assert (=> b!5012792 (= res!2137651 (isSuffix!1367 lt!2073678 lt!2073677))))

(assert (=> b!5012792 (= lt!2073677 (list!18638 totalInput!1012))))

(assert (=> b!5012792 (= lt!2073678 (list!18638 input!5597))))

(assert (= (and start!529558 res!2137646) b!5012783))

(assert (= (and b!5012783 res!2137648) b!5012792))

(assert (= (and b!5012792 res!2137651) b!5012788))

(assert (= (and b!5012788 res!2137644) b!5012777))

(assert (= (and b!5012777 res!2137649) b!5012774))

(assert (= (and b!5012774 (not res!2137647)) b!5012781))

(assert (= (and b!5012774 (not res!2137653)) b!5012786))

(assert (= (and b!5012774 res!2137652) b!5012787))

(assert (= (and b!5012774 (not res!2137645)) b!5012789))

(assert (= (and b!5012789 res!2137643) b!5012775))

(assert (= (and b!5012789 (not res!2137642)) b!5012776))

(assert (= (and b!5012776 (not res!2137650)) b!5012790))

(get-info :version)

(assert (= (and start!529558 ((_ is ElementMatch!13801) r!12727)) b!5012785))

(assert (= (and start!529558 ((_ is Concat!22594) r!12727)) b!5012791))

(assert (= (and start!529558 ((_ is Star!13801) r!12727)) b!5012784))

(assert (= (and start!529558 ((_ is Union!13801) r!12727)) b!5012780))

(assert (= start!529558 b!5012782))

(assert (= (and start!529558 condSetEmpty!28448) setIsEmpty!28448))

(assert (= (and start!529558 (not condSetEmpty!28448)) setNonEmpty!28448))

(assert (= setNonEmpty!28448 b!5012779))

(assert (= start!529558 b!5012778))

(declare-fun m!6047350 () Bool)

(assert (=> setNonEmpty!28448 m!6047350))

(declare-fun m!6047352 () Bool)

(assert (=> b!5012790 m!6047352))

(declare-fun m!6047354 () Bool)

(assert (=> b!5012782 m!6047354))

(declare-fun m!6047356 () Bool)

(assert (=> b!5012786 m!6047356))

(declare-fun m!6047358 () Bool)

(assert (=> b!5012787 m!6047358))

(declare-fun m!6047360 () Bool)

(assert (=> b!5012778 m!6047360))

(declare-fun m!6047362 () Bool)

(assert (=> b!5012783 m!6047362))

(declare-fun m!6047364 () Bool)

(assert (=> b!5012783 m!6047364))

(declare-fun m!6047366 () Bool)

(assert (=> b!5012774 m!6047366))

(declare-fun m!6047368 () Bool)

(assert (=> b!5012774 m!6047368))

(declare-fun m!6047370 () Bool)

(assert (=> b!5012774 m!6047370))

(declare-fun m!6047372 () Bool)

(assert (=> b!5012774 m!6047372))

(declare-fun m!6047374 () Bool)

(assert (=> b!5012774 m!6047374))

(declare-fun m!6047376 () Bool)

(assert (=> b!5012774 m!6047376))

(declare-fun m!6047378 () Bool)

(assert (=> b!5012774 m!6047378))

(declare-fun m!6047380 () Bool)

(assert (=> b!5012774 m!6047380))

(declare-fun m!6047382 () Bool)

(assert (=> b!5012774 m!6047382))

(declare-fun m!6047384 () Bool)

(assert (=> b!5012774 m!6047384))

(declare-fun m!6047386 () Bool)

(assert (=> b!5012774 m!6047386))

(declare-fun m!6047388 () Bool)

(assert (=> b!5012774 m!6047388))

(assert (=> b!5012774 m!6047376))

(declare-fun m!6047390 () Bool)

(assert (=> b!5012774 m!6047390))

(assert (=> b!5012774 m!6047386))

(assert (=> b!5012774 m!6047380))

(declare-fun m!6047392 () Bool)

(assert (=> b!5012774 m!6047392))

(declare-fun m!6047394 () Bool)

(assert (=> b!5012774 m!6047394))

(declare-fun m!6047396 () Bool)

(assert (=> b!5012788 m!6047396))

(declare-fun m!6047398 () Bool)

(assert (=> b!5012788 m!6047398))

(declare-fun m!6047400 () Bool)

(assert (=> b!5012788 m!6047400))

(declare-fun m!6047402 () Bool)

(assert (=> b!5012788 m!6047402))

(declare-fun m!6047404 () Bool)

(assert (=> b!5012788 m!6047404))

(declare-fun m!6047406 () Bool)

(assert (=> b!5012788 m!6047406))

(declare-fun m!6047408 () Bool)

(assert (=> b!5012788 m!6047408))

(declare-fun m!6047410 () Bool)

(assert (=> b!5012775 m!6047410))

(declare-fun m!6047412 () Bool)

(assert (=> b!5012777 m!6047412))

(declare-fun m!6047414 () Bool)

(assert (=> start!529558 m!6047414))

(declare-fun m!6047416 () Bool)

(assert (=> start!529558 m!6047416))

(declare-fun m!6047418 () Bool)

(assert (=> start!529558 m!6047418))

(declare-fun m!6047420 () Bool)

(assert (=> b!5012789 m!6047420))

(declare-fun m!6047422 () Bool)

(assert (=> b!5012792 m!6047422))

(declare-fun m!6047424 () Bool)

(assert (=> b!5012792 m!6047424))

(declare-fun m!6047426 () Bool)

(assert (=> b!5012792 m!6047426))

(declare-fun m!6047428 () Bool)

(assert (=> b!5012776 m!6047428))

(declare-fun m!6047430 () Bool)

(assert (=> b!5012776 m!6047430))

(declare-fun m!6047432 () Bool)

(assert (=> b!5012776 m!6047432))

(declare-fun m!6047434 () Bool)

(assert (=> b!5012776 m!6047434))

(declare-fun m!6047436 () Bool)

(assert (=> b!5012776 m!6047436))

(declare-fun m!6047438 () Bool)

(assert (=> b!5012776 m!6047438))

(declare-fun m!6047440 () Bool)

(assert (=> b!5012781 m!6047440))

(assert (=> b!5012781 m!6047440))

(declare-fun m!6047442 () Bool)

(assert (=> b!5012781 m!6047442))

(assert (=> b!5012781 m!6047442))

(declare-fun m!6047444 () Bool)

(assert (=> b!5012781 m!6047444))

(check-sat (not b!5012778) (not start!529558) (not b!5012775) (not b!5012790) (not b!5012776) (not b!5012777) (not b!5012779) (not b!5012791) tp_is_empty!36599 (not b!5012781) (not b!5012788) (not b!5012782) (not setNonEmpty!28448) (not b!5012780) (not b!5012784) (not b!5012786) (not b!5012792) (not b!5012783) (not b!5012774) (not b!5012789) (not b!5012787))
(check-sat)
