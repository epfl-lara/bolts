; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!211794 () Bool)

(assert start!211794)

(declare-fun b!2184282 () Bool)

(declare-fun e!1395996 () Bool)

(declare-fun tp!681403 () Bool)

(assert (=> b!2184282 (= e!1395996 tp!681403)))

(declare-fun b!2184283 () Bool)

(declare-fun e!1395993 () Bool)

(declare-datatypes ((C!12232 0))(
  ( (C!12233 (val!7102 Int)) )
))
(declare-datatypes ((List!25342 0))(
  ( (Nil!25258) (Cons!25258 (h!30659 C!12232) (t!197932 List!25342)) )
))
(declare-datatypes ((tuple2!25054 0))(
  ( (tuple2!25055 (_1!14897 List!25342) (_2!14897 List!25342)) )
))
(declare-fun lt!814873 () tuple2!25054)

(declare-fun isEmpty!14513 (List!25342) Bool)

(assert (=> b!2184283 (= e!1395993 (not (isEmpty!14513 (_1!14897 lt!814873))))))

(declare-fun b!2184284 () Bool)

(declare-fun e!1396001 () Bool)

(declare-fun e!1395985 () Bool)

(assert (=> b!2184284 (= e!1396001 e!1395985)))

(declare-fun res!938654 () Bool)

(assert (=> b!2184284 (=> (not res!938654) (not e!1395985))))

(declare-fun lt!814871 () List!25342)

(declare-fun lt!814881 () List!25342)

(assert (=> b!2184284 (= res!938654 (= lt!814871 lt!814881))))

(declare-fun lt!814877 () List!25342)

(declare-fun lt!814880 () List!25342)

(declare-fun ++!6404 (List!25342 List!25342) List!25342)

(assert (=> b!2184284 (= lt!814871 (++!6404 lt!814877 lt!814880))))

(declare-datatypes ((IArray!16363 0))(
  ( (IArray!16364 (innerList!8239 List!25342)) )
))
(declare-datatypes ((Conc!8179 0))(
  ( (Node!8179 (left!19391 Conc!8179) (right!19721 Conc!8179) (csize!16588 Int) (cheight!8390 Int)) (Leaf!11968 (xs!11121 IArray!16363) (csize!16589 Int)) (Empty!8179) )
))
(declare-datatypes ((BalanceConc!16120 0))(
  ( (BalanceConc!16121 (c!347146 Conc!8179)) )
))
(declare-datatypes ((tuple2!25056 0))(
  ( (tuple2!25057 (_1!14898 BalanceConc!16120) (_2!14898 BalanceConc!16120)) )
))
(declare-fun lt!814878 () tuple2!25056)

(declare-fun list!9696 (BalanceConc!16120) List!25342)

(assert (=> b!2184284 (= lt!814880 (list!9696 (_2!14898 lt!814878)))))

(assert (=> b!2184284 (= lt!814877 (list!9696 (_1!14898 lt!814878)))))

(declare-datatypes ((Regex!6043 0))(
  ( (ElementMatch!6043 (c!347147 C!12232)) (Concat!10345 (regOne!12598 Regex!6043) (regTwo!12598 Regex!6043)) (EmptyExpr!6043) (Star!6043 (reg!6372 Regex!6043)) (EmptyLang!6043) (Union!6043 (regOne!12599 Regex!6043) (regTwo!12599 Regex!6043)) )
))
(declare-fun r!12534 () Regex!6043)

(declare-fun findLongestMatch!597 (Regex!6043 List!25342) tuple2!25054)

(assert (=> b!2184284 (= lt!814873 (findLongestMatch!597 r!12534 lt!814881))))

(declare-fun lt!814886 () Int)

(declare-fun lt!814888 () Int)

(declare-fun input!5540 () BalanceConc!16120)

(declare-fun size!19734 (BalanceConc!16120) Int)

(assert (=> b!2184284 (= lt!814886 (- lt!814888 (size!19734 input!5540)))))

(declare-fun totalInput!977 () BalanceConc!16120)

(assert (=> b!2184284 (= lt!814888 (size!19734 totalInput!977))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25343 0))(
  ( (Nil!25259) (Cons!25259 (h!30660 Regex!6043) (t!197933 List!25343)) )
))
(declare-datatypes ((Context!3226 0))(
  ( (Context!3227 (exprs!2113 List!25343)) )
))
(declare-fun z!4055 () (InoxSet Context!3226))

(declare-fun findLongestMatchZipperSequenceV3!92 ((InoxSet Context!3226) BalanceConc!16120 BalanceConc!16120) tuple2!25056)

(assert (=> b!2184284 (= lt!814878 (findLongestMatchZipperSequenceV3!92 z!4055 input!5540 totalInput!977))))

(declare-fun b!2184286 () Bool)

(declare-fun e!1395991 () Int)

(assert (=> b!2184286 (= e!1395991 (- 1))))

(declare-fun b!2184287 () Bool)

(declare-fun e!1395989 () Bool)

(declare-fun tp!681401 () Bool)

(declare-fun inv!33570 (Conc!8179) Bool)

(assert (=> b!2184287 (= e!1395989 (and (inv!33570 (c!347146 input!5540)) tp!681401))))

(declare-fun b!2184288 () Bool)

(declare-fun res!938652 () Bool)

(declare-fun e!1395998 () Bool)

(assert (=> b!2184288 (=> res!938652 e!1395998)))

(declare-fun isPrefix!2159 (List!25342 List!25342) Bool)

(assert (=> b!2184288 (= res!938652 (not (isPrefix!2159 (_1!14897 lt!814873) lt!814881)))))

(declare-fun b!2184289 () Bool)

(declare-fun tp!681398 () Bool)

(declare-fun tp!681402 () Bool)

(assert (=> b!2184289 (= e!1395996 (and tp!681398 tp!681402))))

(declare-fun b!2184290 () Bool)

(declare-fun e!1395995 () Bool)

(declare-fun isEmpty!14514 (BalanceConc!16120) Bool)

(assert (=> b!2184290 (= e!1395995 (not (isEmpty!14514 (_1!14898 lt!814878))))))

(declare-fun b!2184291 () Bool)

(declare-fun e!1395986 () Bool)

(declare-fun e!1395999 () Bool)

(assert (=> b!2184291 (= e!1395986 e!1395999)))

(declare-fun res!938647 () Bool)

(assert (=> b!2184291 (=> res!938647 e!1395999)))

(assert (=> b!2184291 (= res!938647 e!1395993)))

(declare-fun res!938646 () Bool)

(assert (=> b!2184291 (=> (not res!938646) (not e!1395993))))

(declare-fun lt!814870 () Bool)

(assert (=> b!2184291 (= res!938646 (not lt!814870))))

(declare-fun matchR!2792 (Regex!6043 List!25342) Bool)

(assert (=> b!2184291 (= lt!814870 (matchR!2792 r!12534 (_1!14897 lt!814873)))))

(declare-fun e!1395987 () Bool)

(declare-fun tp!681400 () Bool)

(declare-fun setNonEmpty!18328 () Bool)

(declare-fun setRes!18328 () Bool)

(declare-fun setElem!18328 () Context!3226)

(declare-fun inv!33571 (Context!3226) Bool)

(assert (=> setNonEmpty!18328 (= setRes!18328 (and tp!681400 (inv!33571 setElem!18328) e!1395987))))

(declare-fun setRest!18328 () (InoxSet Context!3226))

(assert (=> setNonEmpty!18328 (= z!4055 ((_ map or) (store ((as const (Array Context!3226 Bool)) false) setElem!18328 true) setRest!18328))))

(declare-fun b!2184292 () Bool)

(assert (=> b!2184292 (= e!1395999 e!1395998)))

(declare-fun res!938644 () Bool)

(assert (=> b!2184292 (=> res!938644 e!1395998)))

(declare-fun lt!814866 () Int)

(declare-fun lt!814879 () Int)

(assert (=> b!2184292 (= res!938644 (or (> lt!814866 lt!814879) (<= lt!814879 lt!814866)))))

(assert (=> b!2184292 (= lt!814879 (size!19734 (_1!14898 lt!814878)))))

(declare-fun size!19735 (List!25342) Int)

(assert (=> b!2184292 (= lt!814866 (size!19735 (_1!14897 lt!814873)))))

(declare-fun lt!814869 () Bool)

(assert (=> b!2184292 (= (matchR!2792 r!12534 lt!814877) lt!814869)))

(declare-datatypes ((List!25344 0))(
  ( (Nil!25260) (Cons!25260 (h!30661 Context!3226) (t!197934 List!25344)) )
))
(declare-fun lt!814883 () List!25344)

(declare-datatypes ((Unit!38377 0))(
  ( (Unit!38378) )
))
(declare-fun lt!814876 () Unit!38377)

(declare-fun theoremZipperRegexEquiv!69 ((InoxSet Context!3226) List!25344 Regex!6043 List!25342) Unit!38377)

(assert (=> b!2184292 (= lt!814876 (theoremZipperRegexEquiv!69 z!4055 lt!814883 r!12534 lt!814877))))

(declare-fun matchZipper!159 ((InoxSet Context!3226) List!25342) Bool)

(assert (=> b!2184292 (= lt!814870 (matchZipper!159 z!4055 (_1!14897 lt!814873)))))

(declare-fun lt!814884 () Unit!38377)

(assert (=> b!2184292 (= lt!814884 (theoremZipperRegexEquiv!69 z!4055 lt!814883 r!12534 (_1!14897 lt!814873)))))

(declare-fun b!2184293 () Bool)

(declare-fun e!1395988 () Bool)

(assert (=> b!2184293 (= e!1395988 e!1396001)))

(declare-fun res!938643 () Bool)

(assert (=> b!2184293 (=> (not res!938643) (not e!1396001))))

(declare-fun lt!814885 () List!25342)

(declare-fun isSuffix!710 (List!25342 List!25342) Bool)

(assert (=> b!2184293 (= res!938643 (isSuffix!710 lt!814881 lt!814885))))

(assert (=> b!2184293 (= lt!814885 (list!9696 totalInput!977))))

(assert (=> b!2184293 (= lt!814881 (list!9696 input!5540))))

(declare-fun setIsEmpty!18328 () Bool)

(assert (=> setIsEmpty!18328 setRes!18328))

(declare-fun b!2184294 () Bool)

(declare-fun e!1395994 () Bool)

(assert (=> b!2184294 (= e!1395985 e!1395994)))

(declare-fun res!938649 () Bool)

(assert (=> b!2184294 (=> (not res!938649) (not e!1395994))))

(declare-fun lt!814872 () List!25342)

(assert (=> b!2184294 (= res!938649 (= lt!814872 lt!814881))))

(assert (=> b!2184294 (= lt!814872 (++!6404 (_1!14897 lt!814873) (_2!14897 lt!814873)))))

(declare-fun b!2184295 () Bool)

(assert (=> b!2184295 (= e!1395998 (isPrefix!2159 lt!814877 lt!814881))))

(declare-fun b!2184296 () Bool)

(declare-fun e!1395990 () Bool)

(declare-fun lt!814875 () tuple2!25054)

(assert (=> b!2184296 (= e!1395990 (matchR!2792 r!12534 (_1!14897 lt!814875)))))

(declare-fun b!2184285 () Bool)

(declare-fun tp!681396 () Bool)

(assert (=> b!2184285 (= e!1395987 tp!681396)))

(declare-fun res!938655 () Bool)

(declare-fun e!1395997 () Bool)

(assert (=> start!211794 (=> (not res!938655) (not e!1395997))))

(declare-fun validRegex!2319 (Regex!6043) Bool)

(assert (=> start!211794 (= res!938655 (validRegex!2319 r!12534))))

(assert (=> start!211794 e!1395997))

(assert (=> start!211794 e!1395996))

(declare-fun e!1396000 () Bool)

(declare-fun inv!33572 (BalanceConc!16120) Bool)

(assert (=> start!211794 (and (inv!33572 totalInput!977) e!1396000)))

(assert (=> start!211794 (and (inv!33572 input!5540) e!1395989)))

(declare-fun condSetEmpty!18328 () Bool)

(assert (=> start!211794 (= condSetEmpty!18328 (= z!4055 ((as const (Array Context!3226 Bool)) false)))))

(assert (=> start!211794 setRes!18328))

(declare-fun b!2184297 () Bool)

(declare-fun tp!681397 () Bool)

(declare-fun tp!681399 () Bool)

(assert (=> b!2184297 (= e!1395996 (and tp!681397 tp!681399))))

(declare-fun b!2184298 () Bool)

(assert (=> b!2184298 (= e!1395991 (- lt!814886 1))))

(declare-fun b!2184299 () Bool)

(declare-fun tp_is_empty!9693 () Bool)

(assert (=> b!2184299 (= e!1395996 tp_is_empty!9693)))

(declare-fun lt!814890 () Int)

(declare-fun b!2184300 () Bool)

(declare-fun e!1395992 () Bool)

(declare-fun take!251 (List!25342 Int) List!25342)

(declare-fun drop!1261 (List!25342 Int) List!25342)

(assert (=> b!2184300 (= e!1395992 (matchZipper!159 z!4055 (take!251 (drop!1261 lt!814885 lt!814886) lt!814890)))))

(declare-fun b!2184301 () Bool)

(assert (=> b!2184301 (= e!1395994 (not e!1395986))))

(declare-fun res!938645 () Bool)

(assert (=> b!2184301 (=> res!938645 e!1395986)))

(assert (=> b!2184301 (= res!938645 e!1395995)))

(declare-fun res!938650 () Bool)

(assert (=> b!2184301 (=> (not res!938650) (not e!1395995))))

(assert (=> b!2184301 (= res!938650 (not lt!814869))))

(assert (=> b!2184301 (= lt!814869 (matchZipper!159 z!4055 lt!814877))))

(assert (=> b!2184301 e!1395990))

(declare-fun res!938651 () Bool)

(assert (=> b!2184301 (=> res!938651 e!1395990)))

(assert (=> b!2184301 (= res!938651 (isEmpty!14513 (_1!14897 lt!814875)))))

(declare-fun findLongestMatchInner!668 (Regex!6043 List!25342 Int List!25342 List!25342 Int) tuple2!25054)

(assert (=> b!2184301 (= lt!814875 (findLongestMatchInner!668 r!12534 Nil!25258 (size!19735 Nil!25258) lt!814881 lt!814881 (size!19735 lt!814881)))))

(declare-fun lt!814867 () Unit!38377)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!641 (Regex!6043 List!25342) Unit!38377)

(assert (=> b!2184301 (= lt!814867 (longestMatchIsAcceptedByMatchOrIsEmpty!641 r!12534 lt!814881))))

(assert (=> b!2184301 e!1395992))

(declare-fun res!938653 () Bool)

(assert (=> b!2184301 (=> res!938653 e!1395992)))

(assert (=> b!2184301 (= res!938653 (<= lt!814890 0))))

(declare-fun lt!814887 () Int)

(declare-fun furthestNullablePosition!225 ((InoxSet Context!3226) Int BalanceConc!16120 Int Int) Int)

(assert (=> b!2184301 (= lt!814890 (+ 1 (- (furthestNullablePosition!225 z!4055 lt!814886 totalInput!977 lt!814888 lt!814887) lt!814886)))))

(declare-fun lt!814889 () Unit!38377)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!66 ((InoxSet Context!3226) Int BalanceConc!16120 Int) Unit!38377)

(assert (=> b!2184301 (= lt!814889 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!66 z!4055 lt!814886 totalInput!977 lt!814887))))

(assert (=> b!2184301 (= lt!814887 e!1395991)))

(declare-fun c!347145 () Bool)

(declare-fun nullableZipper!323 ((InoxSet Context!3226)) Bool)

(assert (=> b!2184301 (= c!347145 (nullableZipper!323 z!4055))))

(assert (=> b!2184301 (isPrefix!2159 (take!251 lt!814885 lt!814886) lt!814885)))

(declare-fun lt!814868 () Unit!38377)

(declare-fun lemmaTakeIsPrefix!74 (List!25342 Int) Unit!38377)

(assert (=> b!2184301 (= lt!814868 (lemmaTakeIsPrefix!74 lt!814885 lt!814886))))

(assert (=> b!2184301 (isPrefix!2159 (_1!14897 lt!814873) lt!814872)))

(declare-fun lt!814874 () Unit!38377)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1442 (List!25342 List!25342) Unit!38377)

(assert (=> b!2184301 (= lt!814874 (lemmaConcatTwoListThenFirstIsPrefix!1442 (_1!14897 lt!814873) (_2!14897 lt!814873)))))

(assert (=> b!2184301 (isPrefix!2159 lt!814877 lt!814871)))

(declare-fun lt!814882 () Unit!38377)

(assert (=> b!2184301 (= lt!814882 (lemmaConcatTwoListThenFirstIsPrefix!1442 lt!814877 lt!814880))))

(declare-fun b!2184302 () Bool)

(declare-fun tp!681404 () Bool)

(assert (=> b!2184302 (= e!1396000 (and (inv!33570 (c!347146 totalInput!977)) tp!681404))))

(declare-fun b!2184303 () Bool)

(assert (=> b!2184303 (= e!1395997 e!1395988)))

(declare-fun res!938648 () Bool)

(assert (=> b!2184303 (=> (not res!938648) (not e!1395988))))

(declare-fun unfocusZipper!150 (List!25344) Regex!6043)

(assert (=> b!2184303 (= res!938648 (= (unfocusZipper!150 lt!814883) r!12534))))

(declare-fun toList!1226 ((InoxSet Context!3226)) List!25344)

(assert (=> b!2184303 (= lt!814883 (toList!1226 z!4055))))

(assert (= (and start!211794 res!938655) b!2184303))

(assert (= (and b!2184303 res!938648) b!2184293))

(assert (= (and b!2184293 res!938643) b!2184284))

(assert (= (and b!2184284 res!938654) b!2184294))

(assert (= (and b!2184294 res!938649) b!2184301))

(assert (= (and b!2184301 c!347145) b!2184298))

(assert (= (and b!2184301 (not c!347145)) b!2184286))

(assert (= (and b!2184301 (not res!938653)) b!2184300))

(assert (= (and b!2184301 (not res!938651)) b!2184296))

(assert (= (and b!2184301 res!938650) b!2184290))

(assert (= (and b!2184301 (not res!938645)) b!2184291))

(assert (= (and b!2184291 res!938646) b!2184283))

(assert (= (and b!2184291 (not res!938647)) b!2184292))

(assert (= (and b!2184292 (not res!938644)) b!2184288))

(assert (= (and b!2184288 (not res!938652)) b!2184295))

(get-info :version)

(assert (= (and start!211794 ((_ is ElementMatch!6043) r!12534)) b!2184299))

(assert (= (and start!211794 ((_ is Concat!10345) r!12534)) b!2184297))

(assert (= (and start!211794 ((_ is Star!6043) r!12534)) b!2184282))

(assert (= (and start!211794 ((_ is Union!6043) r!12534)) b!2184289))

(assert (= start!211794 b!2184302))

(assert (= start!211794 b!2184287))

(assert (= (and start!211794 condSetEmpty!18328) setIsEmpty!18328))

(assert (= (and start!211794 (not condSetEmpty!18328)) setNonEmpty!18328))

(assert (= setNonEmpty!18328 b!2184285))

(declare-fun m!2626771 () Bool)

(assert (=> b!2184294 m!2626771))

(declare-fun m!2626773 () Bool)

(assert (=> start!211794 m!2626773))

(declare-fun m!2626775 () Bool)

(assert (=> start!211794 m!2626775))

(declare-fun m!2626777 () Bool)

(assert (=> start!211794 m!2626777))

(declare-fun m!2626779 () Bool)

(assert (=> b!2184300 m!2626779))

(assert (=> b!2184300 m!2626779))

(declare-fun m!2626781 () Bool)

(assert (=> b!2184300 m!2626781))

(assert (=> b!2184300 m!2626781))

(declare-fun m!2626783 () Bool)

(assert (=> b!2184300 m!2626783))

(declare-fun m!2626785 () Bool)

(assert (=> b!2184296 m!2626785))

(declare-fun m!2626787 () Bool)

(assert (=> b!2184284 m!2626787))

(declare-fun m!2626789 () Bool)

(assert (=> b!2184284 m!2626789))

(declare-fun m!2626791 () Bool)

(assert (=> b!2184284 m!2626791))

(declare-fun m!2626793 () Bool)

(assert (=> b!2184284 m!2626793))

(declare-fun m!2626795 () Bool)

(assert (=> b!2184284 m!2626795))

(declare-fun m!2626797 () Bool)

(assert (=> b!2184284 m!2626797))

(declare-fun m!2626799 () Bool)

(assert (=> b!2184284 m!2626799))

(declare-fun m!2626801 () Bool)

(assert (=> b!2184293 m!2626801))

(declare-fun m!2626803 () Bool)

(assert (=> b!2184293 m!2626803))

(declare-fun m!2626805 () Bool)

(assert (=> b!2184293 m!2626805))

(declare-fun m!2626807 () Bool)

(assert (=> b!2184287 m!2626807))

(declare-fun m!2626809 () Bool)

(assert (=> setNonEmpty!18328 m!2626809))

(declare-fun m!2626811 () Bool)

(assert (=> b!2184291 m!2626811))

(declare-fun m!2626813 () Bool)

(assert (=> b!2184303 m!2626813))

(declare-fun m!2626815 () Bool)

(assert (=> b!2184303 m!2626815))

(declare-fun m!2626817 () Bool)

(assert (=> b!2184302 m!2626817))

(declare-fun m!2626819 () Bool)

(assert (=> b!2184295 m!2626819))

(declare-fun m!2626821 () Bool)

(assert (=> b!2184290 m!2626821))

(declare-fun m!2626823 () Bool)

(assert (=> b!2184283 m!2626823))

(declare-fun m!2626825 () Bool)

(assert (=> b!2184292 m!2626825))

(declare-fun m!2626827 () Bool)

(assert (=> b!2184292 m!2626827))

(declare-fun m!2626829 () Bool)

(assert (=> b!2184292 m!2626829))

(declare-fun m!2626831 () Bool)

(assert (=> b!2184292 m!2626831))

(declare-fun m!2626833 () Bool)

(assert (=> b!2184292 m!2626833))

(declare-fun m!2626835 () Bool)

(assert (=> b!2184292 m!2626835))

(declare-fun m!2626837 () Bool)

(assert (=> b!2184301 m!2626837))

(declare-fun m!2626839 () Bool)

(assert (=> b!2184301 m!2626839))

(declare-fun m!2626841 () Bool)

(assert (=> b!2184301 m!2626841))

(declare-fun m!2626843 () Bool)

(assert (=> b!2184301 m!2626843))

(declare-fun m!2626845 () Bool)

(assert (=> b!2184301 m!2626845))

(declare-fun m!2626847 () Bool)

(assert (=> b!2184301 m!2626847))

(declare-fun m!2626849 () Bool)

(assert (=> b!2184301 m!2626849))

(assert (=> b!2184301 m!2626839))

(declare-fun m!2626851 () Bool)

(assert (=> b!2184301 m!2626851))

(assert (=> b!2184301 m!2626837))

(declare-fun m!2626853 () Bool)

(assert (=> b!2184301 m!2626853))

(declare-fun m!2626855 () Bool)

(assert (=> b!2184301 m!2626855))

(declare-fun m!2626857 () Bool)

(assert (=> b!2184301 m!2626857))

(declare-fun m!2626859 () Bool)

(assert (=> b!2184301 m!2626859))

(declare-fun m!2626861 () Bool)

(assert (=> b!2184301 m!2626861))

(declare-fun m!2626863 () Bool)

(assert (=> b!2184301 m!2626863))

(declare-fun m!2626865 () Bool)

(assert (=> b!2184301 m!2626865))

(assert (=> b!2184301 m!2626855))

(declare-fun m!2626867 () Bool)

(assert (=> b!2184301 m!2626867))

(declare-fun m!2626869 () Bool)

(assert (=> b!2184288 m!2626869))

(check-sat (not b!2184301) (not b!2184291) (not b!2184300) (not b!2184296) (not b!2184289) (not b!2184292) (not b!2184285) (not b!2184295) (not b!2184303) (not b!2184282) (not b!2184283) (not b!2184302) (not start!211794) (not b!2184294) (not b!2184287) tp_is_empty!9693 (not b!2184284) (not b!2184297) (not b!2184288) (not b!2184293) (not b!2184290) (not setNonEmpty!18328))
(check-sat)
