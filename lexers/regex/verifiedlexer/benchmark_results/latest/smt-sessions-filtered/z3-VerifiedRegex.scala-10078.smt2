; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527438 () Bool)

(assert start!527438)

(declare-fun b!4989815 () Bool)

(declare-fun e!3118536 () Bool)

(declare-datatypes ((C!27732 0))(
  ( (C!27733 (val!23232 Int)) )
))
(declare-datatypes ((Regex!13741 0))(
  ( (ElementMatch!13741 (c!851347 C!27732)) (Concat!22534 (regOne!27994 Regex!13741) (regTwo!27994 Regex!13741)) (EmptyExpr!13741) (Star!13741 (reg!14070 Regex!13741)) (EmptyLang!13741) (Union!13741 (regOne!27995 Regex!13741) (regTwo!27995 Regex!13741)) )
))
(declare-fun r!12727 () Regex!13741)

(declare-datatypes ((List!57827 0))(
  ( (Nil!57703) (Cons!57703 (h!64151 C!27732) (t!370153 List!57827)) )
))
(declare-datatypes ((tuple2!62792 0))(
  ( (tuple2!62793 (_1!34699 List!57827) (_2!34699 List!57827)) )
))
(declare-fun lt!2063125 () tuple2!62792)

(declare-fun matchR!6713 (Regex!13741 List!57827) Bool)

(assert (=> b!4989815 (= e!3118536 (matchR!6713 r!12727 (_1!34699 lt!2063125)))))

(declare-fun b!4989816 () Bool)

(declare-fun e!3118540 () Bool)

(declare-fun e!3118541 () Bool)

(assert (=> b!4989816 (= e!3118540 e!3118541)))

(declare-fun res!2130115 () Bool)

(assert (=> b!4989816 (=> (not res!2130115) (not e!3118541))))

(declare-fun lt!2063122 () List!57827)

(declare-fun lt!2063124 () List!57827)

(assert (=> b!4989816 (= res!2130115 (= lt!2063122 lt!2063124))))

(declare-fun lt!2063113 () List!57827)

(declare-fun lt!2063116 () List!57827)

(declare-fun ++!12585 (List!57827 List!57827) List!57827)

(assert (=> b!4989816 (= lt!2063122 (++!12585 lt!2063113 lt!2063116))))

(declare-datatypes ((IArray!30581 0))(
  ( (IArray!30582 (innerList!15348 List!57827)) )
))
(declare-datatypes ((Conc!15260 0))(
  ( (Node!15260 (left!42220 Conc!15260) (right!42550 Conc!15260) (csize!30750 Int) (cheight!15471 Int)) (Leaf!25339 (xs!18586 IArray!30581) (csize!30751 Int)) (Empty!15260) )
))
(declare-datatypes ((BalanceConc!29950 0))(
  ( (BalanceConc!29951 (c!851348 Conc!15260)) )
))
(declare-datatypes ((tuple2!62794 0))(
  ( (tuple2!62795 (_1!34700 BalanceConc!29950) (_2!34700 BalanceConc!29950)) )
))
(declare-fun lt!2063126 () tuple2!62794)

(declare-fun list!18544 (BalanceConc!29950) List!57827)

(assert (=> b!4989816 (= lt!2063116 (list!18544 (_2!34700 lt!2063126)))))

(assert (=> b!4989816 (= lt!2063113 (list!18544 (_1!34700 lt!2063126)))))

(declare-fun lt!2063117 () tuple2!62792)

(declare-fun findLongestMatch!1754 (Regex!13741 List!57827) tuple2!62792)

(assert (=> b!4989816 (= lt!2063117 (findLongestMatch!1754 r!12727 lt!2063124))))

(declare-fun lt!2063119 () Int)

(declare-fun lt!2063123 () Int)

(declare-fun input!5597 () BalanceConc!29950)

(declare-fun size!38334 (BalanceConc!29950) Int)

(assert (=> b!4989816 (= lt!2063119 (- lt!2063123 (size!38334 input!5597)))))

(declare-fun totalInput!1012 () BalanceConc!29950)

(assert (=> b!4989816 (= lt!2063123 (size!38334 totalInput!1012))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57828 0))(
  ( (Nil!57704) (Cons!57704 (h!64152 Regex!13741) (t!370154 List!57828)) )
))
(declare-datatypes ((Context!6332 0))(
  ( (Context!6333 (exprs!3666 List!57828)) )
))
(declare-fun z!4183 () (InoxSet Context!6332))

(declare-fun findLongestMatchZipperFastV2!43 ((InoxSet Context!6332) BalanceConc!29950 BalanceConc!29950) tuple2!62794)

(assert (=> b!4989816 (= lt!2063126 (findLongestMatchZipperFastV2!43 z!4183 input!5597 totalInput!1012))))

(declare-fun res!2130120 () Bool)

(declare-fun e!3118539 () Bool)

(assert (=> start!527438 (=> (not res!2130120) (not e!3118539))))

(declare-fun validRegex!6038 (Regex!13741) Bool)

(assert (=> start!527438 (= res!2130120 (validRegex!6038 r!12727))))

(assert (=> start!527438 e!3118539))

(declare-fun e!3118537 () Bool)

(assert (=> start!527438 e!3118537))

(declare-fun e!3118545 () Bool)

(declare-fun inv!75722 (BalanceConc!29950) Bool)

(assert (=> start!527438 (and (inv!75722 input!5597) e!3118545)))

(declare-fun condSetEmpty!28178 () Bool)

(assert (=> start!527438 (= condSetEmpty!28178 (= z!4183 ((as const (Array Context!6332 Bool)) false)))))

(declare-fun setRes!28178 () Bool)

(assert (=> start!527438 setRes!28178))

(declare-fun e!3118538 () Bool)

(assert (=> start!527438 (and (inv!75722 totalInput!1012) e!3118538)))

(declare-fun b!4989817 () Bool)

(declare-fun e!3118544 () Bool)

(assert (=> b!4989817 (= e!3118544 e!3118540)))

(declare-fun res!2130117 () Bool)

(assert (=> b!4989817 (=> (not res!2130117) (not e!3118540))))

(declare-fun lt!2063115 () List!57827)

(declare-fun isSuffix!1307 (List!57827 List!57827) Bool)

(assert (=> b!4989817 (= res!2130117 (isSuffix!1307 lt!2063124 lt!2063115))))

(assert (=> b!4989817 (= lt!2063115 (list!18544 totalInput!1012))))

(assert (=> b!4989817 (= lt!2063124 (list!18544 input!5597))))

(declare-fun b!4989818 () Bool)

(declare-fun e!3118546 () Bool)

(declare-fun e!3118534 () Bool)

(assert (=> b!4989818 (= e!3118546 e!3118534)))

(declare-fun res!2130124 () Bool)

(assert (=> b!4989818 (=> res!2130124 e!3118534)))

(declare-fun e!3118547 () Bool)

(assert (=> b!4989818 (= res!2130124 e!3118547)))

(declare-fun res!2130118 () Bool)

(assert (=> b!4989818 (=> (not res!2130118) (not e!3118547))))

(declare-fun lt!2063129 () Bool)

(assert (=> b!4989818 (= res!2130118 (not lt!2063129))))

(assert (=> b!4989818 (= lt!2063129 (matchR!6713 r!12727 (_1!34699 lt!2063117)))))

(declare-fun b!4989819 () Bool)

(declare-fun tp!1398693 () Bool)

(declare-fun tp!1398691 () Bool)

(assert (=> b!4989819 (= e!3118537 (and tp!1398693 tp!1398691))))

(declare-fun b!4989820 () Bool)

(declare-fun e!3118543 () Bool)

(assert (=> b!4989820 (= e!3118541 e!3118543)))

(declare-fun res!2130122 () Bool)

(assert (=> b!4989820 (=> (not res!2130122) (not e!3118543))))

(declare-fun lt!2063131 () List!57827)

(assert (=> b!4989820 (= res!2130122 (= lt!2063131 lt!2063124))))

(assert (=> b!4989820 (= lt!2063131 (++!12585 (_1!34699 lt!2063117) (_2!34699 lt!2063117)))))

(declare-fun b!4989821 () Bool)

(assert (=> b!4989821 (= e!3118534 true)))

(declare-fun matchZipper!517 ((InoxSet Context!6332) List!57827) Bool)

(assert (=> b!4989821 (= lt!2063129 (matchZipper!517 z!4183 (_1!34699 lt!2063117)))))

(declare-datatypes ((Unit!148847 0))(
  ( (Unit!148848) )
))
(declare-fun lt!2063121 () Unit!148847)

(declare-datatypes ((List!57829 0))(
  ( (Nil!57705) (Cons!57705 (h!64153 Context!6332) (t!370155 List!57829)) )
))
(declare-fun lt!2063127 () List!57829)

(declare-fun theoremZipperRegexEquiv!127 ((InoxSet Context!6332) List!57829 Regex!13741 List!57827) Unit!148847)

(assert (=> b!4989821 (= lt!2063121 (theoremZipperRegexEquiv!127 z!4183 lt!2063127 r!12727 (_1!34699 lt!2063117)))))

(declare-fun b!4989822 () Bool)

(declare-fun tp!1398688 () Bool)

(declare-fun inv!75723 (Conc!15260) Bool)

(assert (=> b!4989822 (= e!3118538 (and (inv!75723 (c!851348 totalInput!1012)) tp!1398688))))

(declare-fun b!4989823 () Bool)

(assert (=> b!4989823 (= e!3118539 e!3118544)))

(declare-fun res!2130116 () Bool)

(assert (=> b!4989823 (=> (not res!2130116) (not e!3118544))))

(declare-fun unfocusZipper!268 (List!57829) Regex!13741)

(assert (=> b!4989823 (= res!2130116 (= (unfocusZipper!268 lt!2063127) r!12727))))

(declare-fun toList!8026 ((InoxSet Context!6332)) List!57829)

(assert (=> b!4989823 (= lt!2063127 (toList!8026 z!4183))))

(declare-fun b!4989824 () Bool)

(declare-fun tp_is_empty!36479 () Bool)

(assert (=> b!4989824 (= e!3118537 tp_is_empty!36479)))

(declare-fun setNonEmpty!28178 () Bool)

(declare-fun tp!1398689 () Bool)

(declare-fun e!3118542 () Bool)

(declare-fun setElem!28178 () Context!6332)

(declare-fun inv!75724 (Context!6332) Bool)

(assert (=> setNonEmpty!28178 (= setRes!28178 (and tp!1398689 (inv!75724 setElem!28178) e!3118542))))

(declare-fun setRest!28178 () (InoxSet Context!6332))

(assert (=> setNonEmpty!28178 (= z!4183 ((_ map or) (store ((as const (Array Context!6332 Bool)) false) setElem!28178 true) setRest!28178))))

(declare-fun b!4989825 () Bool)

(declare-fun e!3118535 () Bool)

(declare-fun isEmpty!31216 (BalanceConc!29950) Bool)

(assert (=> b!4989825 (= e!3118535 (not (isEmpty!31216 (_1!34700 lt!2063126))))))

(declare-fun b!4989826 () Bool)

(assert (=> b!4989826 (= e!3118543 (not e!3118546))))

(declare-fun res!2130123 () Bool)

(assert (=> b!4989826 (=> res!2130123 e!3118546)))

(assert (=> b!4989826 (= res!2130123 e!3118535)))

(declare-fun res!2130121 () Bool)

(assert (=> b!4989826 (=> (not res!2130121) (not e!3118535))))

(assert (=> b!4989826 (= res!2130121 (not (matchZipper!517 z!4183 lt!2063113)))))

(assert (=> b!4989826 e!3118536))

(declare-fun res!2130119 () Bool)

(assert (=> b!4989826 (=> res!2130119 e!3118536)))

(declare-fun isEmpty!31217 (List!57827) Bool)

(assert (=> b!4989826 (= res!2130119 (isEmpty!31217 (_1!34699 lt!2063125)))))

(declare-fun findLongestMatchInner!1930 (Regex!13741 List!57827 Int List!57827 List!57827 Int) tuple2!62792)

(declare-fun size!38335 (List!57827) Int)

(assert (=> b!4989826 (= lt!2063125 (findLongestMatchInner!1930 r!12727 Nil!57703 (size!38335 Nil!57703) lt!2063124 lt!2063124 (size!38335 lt!2063124)))))

(declare-fun lt!2063120 () Unit!148847)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1891 (Regex!13741 List!57827) Unit!148847)

(assert (=> b!4989826 (= lt!2063120 (longestMatchIsAcceptedByMatchOrIsEmpty!1891 r!12727 lt!2063124))))

(declare-fun e!3118533 () Bool)

(assert (=> b!4989826 e!3118533))

(declare-fun res!2130125 () Bool)

(assert (=> b!4989826 (=> res!2130125 e!3118533)))

(declare-fun lt!2063114 () Int)

(assert (=> b!4989826 (= res!2130125 (= lt!2063114 0))))

(declare-fun findLongestMatchInnerZipperFastV2!81 ((InoxSet Context!6332) Int BalanceConc!29950 Int) Int)

(assert (=> b!4989826 (= lt!2063114 (findLongestMatchInnerZipperFastV2!81 z!4183 lt!2063119 totalInput!1012 lt!2063123))))

(declare-fun lt!2063128 () Unit!148847)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!8 ((InoxSet Context!6332) Int BalanceConc!29950) Unit!148847)

(assert (=> b!4989826 (= lt!2063128 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!8 z!4183 lt!2063119 totalInput!1012))))

(declare-fun isPrefix!5298 (List!57827 List!57827) Bool)

(declare-fun take!606 (List!57827 Int) List!57827)

(assert (=> b!4989826 (isPrefix!5298 (take!606 lt!2063115 lt!2063119) lt!2063115)))

(declare-fun lt!2063132 () Unit!148847)

(declare-fun lemmaTakeIsPrefix!100 (List!57827 Int) Unit!148847)

(assert (=> b!4989826 (= lt!2063132 (lemmaTakeIsPrefix!100 lt!2063115 lt!2063119))))

(assert (=> b!4989826 (isPrefix!5298 (_1!34699 lt!2063117) lt!2063131)))

(declare-fun lt!2063130 () Unit!148847)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3396 (List!57827 List!57827) Unit!148847)

(assert (=> b!4989826 (= lt!2063130 (lemmaConcatTwoListThenFirstIsPrefix!3396 (_1!34699 lt!2063117) (_2!34699 lt!2063117)))))

(assert (=> b!4989826 (isPrefix!5298 lt!2063113 lt!2063122)))

(declare-fun lt!2063118 () Unit!148847)

(assert (=> b!4989826 (= lt!2063118 (lemmaConcatTwoListThenFirstIsPrefix!3396 lt!2063113 lt!2063116))))

(declare-fun b!4989827 () Bool)

(declare-fun tp!1398690 () Bool)

(assert (=> b!4989827 (= e!3118545 (and (inv!75723 (c!851348 input!5597)) tp!1398690))))

(declare-fun b!4989828 () Bool)

(declare-fun tp!1398692 () Bool)

(declare-fun tp!1398694 () Bool)

(assert (=> b!4989828 (= e!3118537 (and tp!1398692 tp!1398694))))

(declare-fun b!4989829 () Bool)

(declare-fun drop!2404 (List!57827 Int) List!57827)

(assert (=> b!4989829 (= e!3118533 (matchZipper!517 z!4183 (take!606 (drop!2404 lt!2063115 lt!2063119) lt!2063114)))))

(declare-fun b!4989830 () Bool)

(declare-fun tp!1398696 () Bool)

(assert (=> b!4989830 (= e!3118537 tp!1398696)))

(declare-fun b!4989831 () Bool)

(assert (=> b!4989831 (= e!3118547 (not (isEmpty!31217 (_1!34699 lt!2063117))))))

(declare-fun setIsEmpty!28178 () Bool)

(assert (=> setIsEmpty!28178 setRes!28178))

(declare-fun b!4989832 () Bool)

(declare-fun tp!1398695 () Bool)

(assert (=> b!4989832 (= e!3118542 tp!1398695)))

(assert (= (and start!527438 res!2130120) b!4989823))

(assert (= (and b!4989823 res!2130116) b!4989817))

(assert (= (and b!4989817 res!2130117) b!4989816))

(assert (= (and b!4989816 res!2130115) b!4989820))

(assert (= (and b!4989820 res!2130122) b!4989826))

(assert (= (and b!4989826 (not res!2130125)) b!4989829))

(assert (= (and b!4989826 (not res!2130119)) b!4989815))

(assert (= (and b!4989826 res!2130121) b!4989825))

(assert (= (and b!4989826 (not res!2130123)) b!4989818))

(assert (= (and b!4989818 res!2130118) b!4989831))

(assert (= (and b!4989818 (not res!2130124)) b!4989821))

(get-info :version)

(assert (= (and start!527438 ((_ is ElementMatch!13741) r!12727)) b!4989824))

(assert (= (and start!527438 ((_ is Concat!22534) r!12727)) b!4989819))

(assert (= (and start!527438 ((_ is Star!13741) r!12727)) b!4989830))

(assert (= (and start!527438 ((_ is Union!13741) r!12727)) b!4989828))

(assert (= start!527438 b!4989827))

(assert (= (and start!527438 condSetEmpty!28178) setIsEmpty!28178))

(assert (= (and start!527438 (not condSetEmpty!28178)) setNonEmpty!28178))

(assert (= setNonEmpty!28178 b!4989832))

(assert (= start!527438 b!4989822))

(declare-fun m!6021956 () Bool)

(assert (=> b!4989829 m!6021956))

(assert (=> b!4989829 m!6021956))

(declare-fun m!6021958 () Bool)

(assert (=> b!4989829 m!6021958))

(assert (=> b!4989829 m!6021958))

(declare-fun m!6021960 () Bool)

(assert (=> b!4989829 m!6021960))

(declare-fun m!6021962 () Bool)

(assert (=> setNonEmpty!28178 m!6021962))

(declare-fun m!6021964 () Bool)

(assert (=> b!4989825 m!6021964))

(declare-fun m!6021966 () Bool)

(assert (=> b!4989831 m!6021966))

(declare-fun m!6021968 () Bool)

(assert (=> b!4989820 m!6021968))

(declare-fun m!6021970 () Bool)

(assert (=> b!4989816 m!6021970))

(declare-fun m!6021972 () Bool)

(assert (=> b!4989816 m!6021972))

(declare-fun m!6021974 () Bool)

(assert (=> b!4989816 m!6021974))

(declare-fun m!6021976 () Bool)

(assert (=> b!4989816 m!6021976))

(declare-fun m!6021978 () Bool)

(assert (=> b!4989816 m!6021978))

(declare-fun m!6021980 () Bool)

(assert (=> b!4989816 m!6021980))

(declare-fun m!6021982 () Bool)

(assert (=> b!4989816 m!6021982))

(declare-fun m!6021984 () Bool)

(assert (=> b!4989815 m!6021984))

(declare-fun m!6021986 () Bool)

(assert (=> start!527438 m!6021986))

(declare-fun m!6021988 () Bool)

(assert (=> start!527438 m!6021988))

(declare-fun m!6021990 () Bool)

(assert (=> start!527438 m!6021990))

(declare-fun m!6021992 () Bool)

(assert (=> b!4989823 m!6021992))

(declare-fun m!6021994 () Bool)

(assert (=> b!4989823 m!6021994))

(declare-fun m!6021996 () Bool)

(assert (=> b!4989826 m!6021996))

(declare-fun m!6021998 () Bool)

(assert (=> b!4989826 m!6021998))

(assert (=> b!4989826 m!6021998))

(declare-fun m!6022000 () Bool)

(assert (=> b!4989826 m!6022000))

(declare-fun m!6022002 () Bool)

(assert (=> b!4989826 m!6022002))

(declare-fun m!6022004 () Bool)

(assert (=> b!4989826 m!6022004))

(declare-fun m!6022006 () Bool)

(assert (=> b!4989826 m!6022006))

(declare-fun m!6022008 () Bool)

(assert (=> b!4989826 m!6022008))

(declare-fun m!6022010 () Bool)

(assert (=> b!4989826 m!6022010))

(assert (=> b!4989826 m!6022000))

(declare-fun m!6022012 () Bool)

(assert (=> b!4989826 m!6022012))

(declare-fun m!6022014 () Bool)

(assert (=> b!4989826 m!6022014))

(assert (=> b!4989826 m!6022012))

(declare-fun m!6022016 () Bool)

(assert (=> b!4989826 m!6022016))

(declare-fun m!6022018 () Bool)

(assert (=> b!4989826 m!6022018))

(declare-fun m!6022020 () Bool)

(assert (=> b!4989826 m!6022020))

(declare-fun m!6022022 () Bool)

(assert (=> b!4989826 m!6022022))

(declare-fun m!6022024 () Bool)

(assert (=> b!4989826 m!6022024))

(declare-fun m!6022026 () Bool)

(assert (=> b!4989818 m!6022026))

(declare-fun m!6022028 () Bool)

(assert (=> b!4989817 m!6022028))

(declare-fun m!6022030 () Bool)

(assert (=> b!4989817 m!6022030))

(declare-fun m!6022032 () Bool)

(assert (=> b!4989817 m!6022032))

(declare-fun m!6022034 () Bool)

(assert (=> b!4989822 m!6022034))

(declare-fun m!6022036 () Bool)

(assert (=> b!4989827 m!6022036))

(declare-fun m!6022038 () Bool)

(assert (=> b!4989821 m!6022038))

(declare-fun m!6022040 () Bool)

(assert (=> b!4989821 m!6022040))

(check-sat (not b!4989823) (not b!4989822) (not b!4989819) (not b!4989827) (not setNonEmpty!28178) (not b!4989829) (not b!4989828) tp_is_empty!36479 (not b!4989815) (not b!4989826) (not b!4989825) (not b!4989831) (not b!4989820) (not b!4989816) (not b!4989818) (not b!4989830) (not b!4989821) (not b!4989817) (not b!4989832) (not start!527438))
(check-sat)
