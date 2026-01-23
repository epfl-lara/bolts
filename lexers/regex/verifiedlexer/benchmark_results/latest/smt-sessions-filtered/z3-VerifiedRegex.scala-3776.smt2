; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210626 () Bool)

(assert start!210626)

(declare-fun b!2171619 () Bool)

(declare-fun e!1388800 () Int)

(declare-fun lt!809106 () Int)

(assert (=> b!2171619 (= e!1388800 (- lt!809106 1))))

(declare-fun b!2171620 () Bool)

(declare-fun e!1388803 () Bool)

(declare-datatypes ((C!12184 0))(
  ( (C!12185 (val!7078 Int)) )
))
(declare-datatypes ((List!25270 0))(
  ( (Nil!25186) (Cons!25186 (h!30587 C!12184) (t!197838 List!25270)) )
))
(declare-datatypes ((IArray!16315 0))(
  ( (IArray!16316 (innerList!8215 List!25270)) )
))
(declare-datatypes ((Conc!8155 0))(
  ( (Node!8155 (left!19347 Conc!8155) (right!19677 Conc!8155) (csize!16540 Int) (cheight!8366 Int)) (Leaf!11932 (xs!11097 IArray!16315) (csize!16541 Int)) (Empty!8155) )
))
(declare-datatypes ((BalanceConc!16072 0))(
  ( (BalanceConc!16073 (c!344140 Conc!8155)) )
))
(declare-fun input!5540 () BalanceConc!16072)

(declare-fun tp!677999 () Bool)

(declare-fun inv!33426 (Conc!8155) Bool)

(assert (=> b!2171620 (= e!1388803 (and (inv!33426 (c!344140 input!5540)) tp!677999))))

(declare-fun b!2171621 () Bool)

(declare-fun e!1388796 () Bool)

(declare-datatypes ((tuple2!24950 0))(
  ( (tuple2!24951 (_1!14845 BalanceConc!16072) (_2!14845 BalanceConc!16072)) )
))
(declare-fun lt!809105 () tuple2!24950)

(declare-fun isEmpty!14445 (BalanceConc!16072) Bool)

(assert (=> b!2171621 (= e!1388796 (not (isEmpty!14445 (_1!14845 lt!809105))))))

(declare-fun b!2171622 () Bool)

(declare-fun e!1388795 () Bool)

(declare-fun tp_is_empty!9645 () Bool)

(assert (=> b!2171622 (= e!1388795 tp_is_empty!9645)))

(declare-fun b!2171623 () Bool)

(declare-fun e!1388799 () Bool)

(declare-fun e!1388801 () Bool)

(assert (=> b!2171623 (= e!1388799 e!1388801)))

(declare-fun res!934559 () Bool)

(assert (=> b!2171623 (=> (not res!934559) (not e!1388801))))

(declare-datatypes ((Regex!6019 0))(
  ( (ElementMatch!6019 (c!344141 C!12184)) (Concat!10321 (regOne!12550 Regex!6019) (regTwo!12550 Regex!6019)) (EmptyExpr!6019) (Star!6019 (reg!6348 Regex!6019)) (EmptyLang!6019) (Union!6019 (regOne!12551 Regex!6019) (regTwo!12551 Regex!6019)) )
))
(declare-datatypes ((List!25271 0))(
  ( (Nil!25187) (Cons!25187 (h!30588 Regex!6019) (t!197839 List!25271)) )
))
(declare-datatypes ((Context!3178 0))(
  ( (Context!3179 (exprs!2089 List!25271)) )
))
(declare-datatypes ((List!25272 0))(
  ( (Nil!25188) (Cons!25188 (h!30589 Context!3178) (t!197840 List!25272)) )
))
(declare-fun lt!809115 () List!25272)

(declare-fun r!12534 () Regex!6019)

(declare-fun unfocusZipper!126 (List!25272) Regex!6019)

(assert (=> b!2171623 (= res!934559 (= (unfocusZipper!126 lt!809115) r!12534))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4055 () (InoxSet Context!3178))

(declare-fun toList!1202 ((InoxSet Context!3178)) List!25272)

(assert (=> b!2171623 (= lt!809115 (toList!1202 z!4055))))

(declare-fun b!2171624 () Bool)

(declare-fun tp!677997 () Bool)

(declare-fun tp!677996 () Bool)

(assert (=> b!2171624 (= e!1388795 (and tp!677997 tp!677996))))

(declare-fun res!934566 () Bool)

(assert (=> start!210626 (=> (not res!934566) (not e!1388799))))

(declare-fun validRegex!2295 (Regex!6019) Bool)

(assert (=> start!210626 (= res!934566 (validRegex!2295 r!12534))))

(assert (=> start!210626 e!1388799))

(assert (=> start!210626 e!1388795))

(declare-fun totalInput!977 () BalanceConc!16072)

(declare-fun e!1388805 () Bool)

(declare-fun inv!33427 (BalanceConc!16072) Bool)

(assert (=> start!210626 (and (inv!33427 totalInput!977) e!1388805)))

(assert (=> start!210626 (and (inv!33427 input!5540) e!1388803)))

(declare-fun condSetEmpty!18214 () Bool)

(assert (=> start!210626 (= condSetEmpty!18214 (= z!4055 ((as const (Array Context!3178 Bool)) false)))))

(declare-fun setRes!18214 () Bool)

(assert (=> start!210626 setRes!18214))

(declare-fun b!2171625 () Bool)

(declare-fun e!1388804 () Bool)

(declare-fun e!1388797 () Bool)

(assert (=> b!2171625 (= e!1388804 e!1388797)))

(declare-fun res!934565 () Bool)

(assert (=> b!2171625 (=> (not res!934565) (not e!1388797))))

(declare-fun lt!809108 () List!25270)

(declare-fun lt!809109 () List!25270)

(assert (=> b!2171625 (= res!934565 (= lt!809108 lt!809109))))

(declare-fun lt!809118 () List!25270)

(declare-fun lt!809093 () List!25270)

(declare-fun ++!6378 (List!25270 List!25270) List!25270)

(assert (=> b!2171625 (= lt!809108 (++!6378 lt!809118 lt!809093))))

(declare-fun list!9656 (BalanceConc!16072) List!25270)

(assert (=> b!2171625 (= lt!809093 (list!9656 (_2!14845 lt!809105)))))

(assert (=> b!2171625 (= lt!809118 (list!9656 (_1!14845 lt!809105)))))

(declare-datatypes ((tuple2!24952 0))(
  ( (tuple2!24953 (_1!14846 List!25270) (_2!14846 List!25270)) )
))
(declare-fun lt!809102 () tuple2!24952)

(declare-fun findLongestMatch!573 (Regex!6019 List!25270) tuple2!24952)

(assert (=> b!2171625 (= lt!809102 (findLongestMatch!573 r!12534 lt!809109))))

(declare-fun lt!809101 () Int)

(declare-fun size!19674 (BalanceConc!16072) Int)

(assert (=> b!2171625 (= lt!809106 (- lt!809101 (size!19674 input!5540)))))

(assert (=> b!2171625 (= lt!809101 (size!19674 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!68 ((InoxSet Context!3178) BalanceConc!16072 BalanceConc!16072) tuple2!24950)

(assert (=> b!2171625 (= lt!809105 (findLongestMatchZipperSequenceV3!68 z!4055 input!5540 totalInput!977))))

(declare-fun b!2171626 () Bool)

(declare-fun e!1388808 () Bool)

(declare-fun isEmpty!14446 (List!25270) Bool)

(assert (=> b!2171626 (= e!1388808 (not (isEmpty!14446 (_1!14846 lt!809102))))))

(declare-fun tp!678000 () Bool)

(declare-fun e!1388807 () Bool)

(declare-fun setElem!18214 () Context!3178)

(declare-fun setNonEmpty!18214 () Bool)

(declare-fun inv!33428 (Context!3178) Bool)

(assert (=> setNonEmpty!18214 (= setRes!18214 (and tp!678000 (inv!33428 setElem!18214) e!1388807))))

(declare-fun setRest!18214 () (InoxSet Context!3178))

(assert (=> setNonEmpty!18214 (= z!4055 ((_ map or) (store ((as const (Array Context!3178 Bool)) false) setElem!18214 true) setRest!18214))))

(declare-fun b!2171627 () Bool)

(declare-fun e!1388806 () Bool)

(declare-fun lt!809094 () Int)

(declare-fun lt!809107 () List!25270)

(assert (=> b!2171627 (= e!1388806 (or (not (= lt!809107 lt!809109)) (>= lt!809094 0)))))

(declare-fun lt!809114 () List!25270)

(declare-fun take!227 (List!25270 Int) List!25270)

(assert (=> b!2171627 (= lt!809114 (take!227 lt!809107 lt!809094))))

(declare-fun lt!809113 () List!25270)

(declare-fun drop!1237 (List!25270 Int) List!25270)

(assert (=> b!2171627 (= lt!809107 (drop!1237 lt!809113 lt!809106))))

(declare-fun lt!809099 () Int)

(declare-fun e!1388802 () Bool)

(declare-fun b!2171628 () Bool)

(declare-fun matchZipper!135 ((InoxSet Context!3178) List!25270) Bool)

(assert (=> b!2171628 (= e!1388802 (matchZipper!135 z!4055 (take!227 (drop!1237 lt!809113 lt!809106) lt!809099)))))

(declare-fun b!2171629 () Bool)

(declare-fun e!1388794 () Bool)

(assert (=> b!2171629 (= e!1388794 e!1388806)))

(declare-fun res!934561 () Bool)

(assert (=> b!2171629 (=> res!934561 e!1388806)))

(assert (=> b!2171629 (= res!934561 (<= lt!809094 (size!19674 (_1!14845 lt!809105))))))

(declare-fun size!19675 (List!25270) Int)

(assert (=> b!2171629 (= lt!809094 (size!19675 (_1!14846 lt!809102)))))

(declare-fun lt!809096 () Bool)

(declare-fun matchR!2768 (Regex!6019 List!25270) Bool)

(assert (=> b!2171629 (= (matchR!2768 r!12534 lt!809118) lt!809096)))

(declare-datatypes ((Unit!38245 0))(
  ( (Unit!38246) )
))
(declare-fun lt!809103 () Unit!38245)

(declare-fun theoremZipperRegexEquiv!45 ((InoxSet Context!3178) List!25272 Regex!6019 List!25270) Unit!38245)

(assert (=> b!2171629 (= lt!809103 (theoremZipperRegexEquiv!45 z!4055 lt!809115 r!12534 lt!809118))))

(declare-fun lt!809111 () Bool)

(assert (=> b!2171629 (= lt!809111 (matchZipper!135 z!4055 (_1!14846 lt!809102)))))

(declare-fun lt!809098 () Unit!38245)

(assert (=> b!2171629 (= lt!809098 (theoremZipperRegexEquiv!45 z!4055 lt!809115 r!12534 (_1!14846 lt!809102)))))

(declare-fun b!2171630 () Bool)

(assert (=> b!2171630 (= e!1388801 e!1388804)))

(declare-fun res!934560 () Bool)

(assert (=> b!2171630 (=> (not res!934560) (not e!1388804))))

(declare-fun isSuffix!686 (List!25270 List!25270) Bool)

(assert (=> b!2171630 (= res!934560 (isSuffix!686 lt!809109 lt!809113))))

(assert (=> b!2171630 (= lt!809113 (list!9656 totalInput!977))))

(assert (=> b!2171630 (= lt!809109 (list!9656 input!5540))))

(declare-fun b!2171631 () Bool)

(declare-fun tp!677998 () Bool)

(declare-fun tp!678003 () Bool)

(assert (=> b!2171631 (= e!1388795 (and tp!677998 tp!678003))))

(declare-fun b!2171632 () Bool)

(declare-fun e!1388798 () Bool)

(declare-fun e!1388793 () Bool)

(assert (=> b!2171632 (= e!1388798 (not e!1388793))))

(declare-fun res!934563 () Bool)

(assert (=> b!2171632 (=> res!934563 e!1388793)))

(assert (=> b!2171632 (= res!934563 e!1388796)))

(declare-fun res!934558 () Bool)

(assert (=> b!2171632 (=> (not res!934558) (not e!1388796))))

(assert (=> b!2171632 (= res!934558 (not lt!809096))))

(assert (=> b!2171632 (= lt!809096 (matchZipper!135 z!4055 lt!809118))))

(declare-fun e!1388809 () Bool)

(assert (=> b!2171632 e!1388809))

(declare-fun res!934556 () Bool)

(assert (=> b!2171632 (=> res!934556 e!1388809)))

(declare-fun lt!809095 () tuple2!24952)

(assert (=> b!2171632 (= res!934556 (isEmpty!14446 (_1!14846 lt!809095)))))

(declare-fun findLongestMatchInner!644 (Regex!6019 List!25270 Int List!25270 List!25270 Int) tuple2!24952)

(assert (=> b!2171632 (= lt!809095 (findLongestMatchInner!644 r!12534 Nil!25186 (size!19675 Nil!25186) lt!809109 lt!809109 (size!19675 lt!809109)))))

(declare-fun lt!809100 () Unit!38245)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!617 (Regex!6019 List!25270) Unit!38245)

(assert (=> b!2171632 (= lt!809100 (longestMatchIsAcceptedByMatchOrIsEmpty!617 r!12534 lt!809109))))

(assert (=> b!2171632 e!1388802))

(declare-fun res!934557 () Bool)

(assert (=> b!2171632 (=> res!934557 e!1388802)))

(assert (=> b!2171632 (= res!934557 (<= lt!809099 0))))

(declare-fun lt!809117 () Int)

(declare-fun furthestNullablePosition!201 ((InoxSet Context!3178) Int BalanceConc!16072 Int Int) Int)

(assert (=> b!2171632 (= lt!809099 (+ 1 (- (furthestNullablePosition!201 z!4055 lt!809106 totalInput!977 lt!809101 lt!809117) lt!809106)))))

(declare-fun lt!809097 () Unit!38245)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!42 ((InoxSet Context!3178) Int BalanceConc!16072 Int) Unit!38245)

(assert (=> b!2171632 (= lt!809097 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!42 z!4055 lt!809106 totalInput!977 lt!809117))))

(assert (=> b!2171632 (= lt!809117 e!1388800)))

(declare-fun c!344139 () Bool)

(declare-fun nullableZipper!299 ((InoxSet Context!3178)) Bool)

(assert (=> b!2171632 (= c!344139 (nullableZipper!299 z!4055))))

(declare-fun isPrefix!2135 (List!25270 List!25270) Bool)

(assert (=> b!2171632 (isPrefix!2135 (take!227 lt!809113 lt!809106) lt!809113)))

(declare-fun lt!809112 () Unit!38245)

(declare-fun lemmaTakeIsPrefix!50 (List!25270 Int) Unit!38245)

(assert (=> b!2171632 (= lt!809112 (lemmaTakeIsPrefix!50 lt!809113 lt!809106))))

(declare-fun lt!809116 () List!25270)

(assert (=> b!2171632 (isPrefix!2135 (_1!14846 lt!809102) lt!809116)))

(declare-fun lt!809110 () Unit!38245)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1418 (List!25270 List!25270) Unit!38245)

(assert (=> b!2171632 (= lt!809110 (lemmaConcatTwoListThenFirstIsPrefix!1418 (_1!14846 lt!809102) (_2!14846 lt!809102)))))

(assert (=> b!2171632 (isPrefix!2135 lt!809118 lt!809108)))

(declare-fun lt!809104 () Unit!38245)

(assert (=> b!2171632 (= lt!809104 (lemmaConcatTwoListThenFirstIsPrefix!1418 lt!809118 lt!809093))))

(declare-fun b!2171633 () Bool)

(declare-fun tp!678002 () Bool)

(assert (=> b!2171633 (= e!1388805 (and (inv!33426 (c!344140 totalInput!977)) tp!678002))))

(declare-fun b!2171634 () Bool)

(declare-fun tp!678001 () Bool)

(assert (=> b!2171634 (= e!1388795 tp!678001)))

(declare-fun setIsEmpty!18214 () Bool)

(assert (=> setIsEmpty!18214 setRes!18214))

(declare-fun b!2171635 () Bool)

(declare-fun tp!678004 () Bool)

(assert (=> b!2171635 (= e!1388807 tp!678004)))

(declare-fun b!2171636 () Bool)

(assert (=> b!2171636 (= e!1388809 (matchR!2768 r!12534 (_1!14846 lt!809095)))))

(declare-fun b!2171637 () Bool)

(assert (=> b!2171637 (= e!1388800 (- 1))))

(declare-fun b!2171638 () Bool)

(assert (=> b!2171638 (= e!1388797 e!1388798)))

(declare-fun res!934567 () Bool)

(assert (=> b!2171638 (=> (not res!934567) (not e!1388798))))

(assert (=> b!2171638 (= res!934567 (= lt!809116 lt!809109))))

(assert (=> b!2171638 (= lt!809116 (++!6378 (_1!14846 lt!809102) (_2!14846 lt!809102)))))

(declare-fun b!2171639 () Bool)

(assert (=> b!2171639 (= e!1388793 e!1388794)))

(declare-fun res!934562 () Bool)

(assert (=> b!2171639 (=> res!934562 e!1388794)))

(assert (=> b!2171639 (= res!934562 e!1388808)))

(declare-fun res!934564 () Bool)

(assert (=> b!2171639 (=> (not res!934564) (not e!1388808))))

(assert (=> b!2171639 (= res!934564 (not lt!809111))))

(assert (=> b!2171639 (= lt!809111 (matchR!2768 r!12534 (_1!14846 lt!809102)))))

(assert (= (and start!210626 res!934566) b!2171623))

(assert (= (and b!2171623 res!934559) b!2171630))

(assert (= (and b!2171630 res!934560) b!2171625))

(assert (= (and b!2171625 res!934565) b!2171638))

(assert (= (and b!2171638 res!934567) b!2171632))

(assert (= (and b!2171632 c!344139) b!2171619))

(assert (= (and b!2171632 (not c!344139)) b!2171637))

(assert (= (and b!2171632 (not res!934557)) b!2171628))

(assert (= (and b!2171632 (not res!934556)) b!2171636))

(assert (= (and b!2171632 res!934558) b!2171621))

(assert (= (and b!2171632 (not res!934563)) b!2171639))

(assert (= (and b!2171639 res!934564) b!2171626))

(assert (= (and b!2171639 (not res!934562)) b!2171629))

(assert (= (and b!2171629 (not res!934561)) b!2171627))

(get-info :version)

(assert (= (and start!210626 ((_ is ElementMatch!6019) r!12534)) b!2171622))

(assert (= (and start!210626 ((_ is Concat!10321) r!12534)) b!2171624))

(assert (= (and start!210626 ((_ is Star!6019) r!12534)) b!2171634))

(assert (= (and start!210626 ((_ is Union!6019) r!12534)) b!2171631))

(assert (= start!210626 b!2171633))

(assert (= start!210626 b!2171620))

(assert (= (and start!210626 condSetEmpty!18214) setIsEmpty!18214))

(assert (= (and start!210626 (not condSetEmpty!18214)) setNonEmpty!18214))

(assert (= setNonEmpty!18214 b!2171635))

(declare-fun m!2612853 () Bool)

(assert (=> b!2171626 m!2612853))

(declare-fun m!2612855 () Bool)

(assert (=> b!2171627 m!2612855))

(declare-fun m!2612857 () Bool)

(assert (=> b!2171627 m!2612857))

(declare-fun m!2612859 () Bool)

(assert (=> b!2171620 m!2612859))

(declare-fun m!2612861 () Bool)

(assert (=> start!210626 m!2612861))

(declare-fun m!2612863 () Bool)

(assert (=> start!210626 m!2612863))

(declare-fun m!2612865 () Bool)

(assert (=> start!210626 m!2612865))

(declare-fun m!2612867 () Bool)

(assert (=> b!2171630 m!2612867))

(declare-fun m!2612869 () Bool)

(assert (=> b!2171630 m!2612869))

(declare-fun m!2612871 () Bool)

(assert (=> b!2171630 m!2612871))

(declare-fun m!2612873 () Bool)

(assert (=> b!2171638 m!2612873))

(assert (=> b!2171628 m!2612857))

(assert (=> b!2171628 m!2612857))

(declare-fun m!2612875 () Bool)

(assert (=> b!2171628 m!2612875))

(assert (=> b!2171628 m!2612875))

(declare-fun m!2612877 () Bool)

(assert (=> b!2171628 m!2612877))

(declare-fun m!2612879 () Bool)

(assert (=> b!2171639 m!2612879))

(declare-fun m!2612881 () Bool)

(assert (=> b!2171629 m!2612881))

(declare-fun m!2612883 () Bool)

(assert (=> b!2171629 m!2612883))

(declare-fun m!2612885 () Bool)

(assert (=> b!2171629 m!2612885))

(declare-fun m!2612887 () Bool)

(assert (=> b!2171629 m!2612887))

(declare-fun m!2612889 () Bool)

(assert (=> b!2171629 m!2612889))

(declare-fun m!2612891 () Bool)

(assert (=> b!2171629 m!2612891))

(declare-fun m!2612893 () Bool)

(assert (=> b!2171621 m!2612893))

(declare-fun m!2612895 () Bool)

(assert (=> b!2171632 m!2612895))

(declare-fun m!2612897 () Bool)

(assert (=> b!2171632 m!2612897))

(declare-fun m!2612899 () Bool)

(assert (=> b!2171632 m!2612899))

(declare-fun m!2612901 () Bool)

(assert (=> b!2171632 m!2612901))

(declare-fun m!2612903 () Bool)

(assert (=> b!2171632 m!2612903))

(declare-fun m!2612905 () Bool)

(assert (=> b!2171632 m!2612905))

(declare-fun m!2612907 () Bool)

(assert (=> b!2171632 m!2612907))

(declare-fun m!2612909 () Bool)

(assert (=> b!2171632 m!2612909))

(declare-fun m!2612911 () Bool)

(assert (=> b!2171632 m!2612911))

(declare-fun m!2612913 () Bool)

(assert (=> b!2171632 m!2612913))

(declare-fun m!2612915 () Bool)

(assert (=> b!2171632 m!2612915))

(assert (=> b!2171632 m!2612913))

(declare-fun m!2612917 () Bool)

(assert (=> b!2171632 m!2612917))

(declare-fun m!2612919 () Bool)

(assert (=> b!2171632 m!2612919))

(declare-fun m!2612921 () Bool)

(assert (=> b!2171632 m!2612921))

(declare-fun m!2612923 () Bool)

(assert (=> b!2171632 m!2612923))

(assert (=> b!2171632 m!2612905))

(declare-fun m!2612925 () Bool)

(assert (=> b!2171632 m!2612925))

(assert (=> b!2171632 m!2612923))

(declare-fun m!2612927 () Bool)

(assert (=> b!2171625 m!2612927))

(declare-fun m!2612929 () Bool)

(assert (=> b!2171625 m!2612929))

(declare-fun m!2612931 () Bool)

(assert (=> b!2171625 m!2612931))

(declare-fun m!2612933 () Bool)

(assert (=> b!2171625 m!2612933))

(declare-fun m!2612935 () Bool)

(assert (=> b!2171625 m!2612935))

(declare-fun m!2612937 () Bool)

(assert (=> b!2171625 m!2612937))

(declare-fun m!2612939 () Bool)

(assert (=> b!2171625 m!2612939))

(declare-fun m!2612941 () Bool)

(assert (=> b!2171633 m!2612941))

(declare-fun m!2612943 () Bool)

(assert (=> b!2171636 m!2612943))

(declare-fun m!2612945 () Bool)

(assert (=> setNonEmpty!18214 m!2612945))

(declare-fun m!2612947 () Bool)

(assert (=> b!2171623 m!2612947))

(declare-fun m!2612949 () Bool)

(assert (=> b!2171623 m!2612949))

(check-sat (not b!2171639) (not b!2171629) (not b!2171635) (not b!2171625) (not b!2171636) (not b!2171628) (not b!2171627) (not b!2171626) (not b!2171634) (not b!2171620) (not b!2171630) (not b!2171631) (not b!2171621) (not b!2171632) (not b!2171638) (not start!210626) (not setNonEmpty!18214) (not b!2171624) (not b!2171633) tp_is_empty!9645 (not b!2171623))
(check-sat)
(get-model)

(declare-fun d!650229 () Bool)

(declare-fun lt!809135 () Int)

(assert (=> d!650229 (= lt!809135 (size!19675 (list!9656 totalInput!977)))))

(declare-fun size!19676 (Conc!8155) Int)

(assert (=> d!650229 (= lt!809135 (size!19676 (c!344140 totalInput!977)))))

(assert (=> d!650229 (= (size!19674 totalInput!977) lt!809135)))

(declare-fun bs!446943 () Bool)

(assert (= bs!446943 d!650229))

(assert (=> bs!446943 m!2612869))

(assert (=> bs!446943 m!2612869))

(declare-fun m!2612979 () Bool)

(assert (=> bs!446943 m!2612979))

(declare-fun m!2612981 () Bool)

(assert (=> bs!446943 m!2612981))

(assert (=> b!2171625 d!650229))

(declare-fun d!650231 () Bool)

(declare-fun lt!809159 () tuple2!24952)

(assert (=> d!650231 (= (++!6378 (_1!14846 lt!809159) (_2!14846 lt!809159)) lt!809109)))

(declare-fun sizeTr!113 (List!25270 Int) Int)

(assert (=> d!650231 (= lt!809159 (findLongestMatchInner!644 r!12534 Nil!25186 0 lt!809109 lt!809109 (sizeTr!113 lt!809109 0)))))

(declare-fun lt!809164 () Unit!38245)

(declare-fun lt!809157 () Unit!38245)

(assert (=> d!650231 (= lt!809164 lt!809157)))

(declare-fun lt!809162 () List!25270)

(declare-fun lt!809160 () Int)

(assert (=> d!650231 (= (sizeTr!113 lt!809162 lt!809160) (+ (size!19675 lt!809162) lt!809160))))

(declare-fun lemmaSizeTrEqualsSize!112 (List!25270 Int) Unit!38245)

(assert (=> d!650231 (= lt!809157 (lemmaSizeTrEqualsSize!112 lt!809162 lt!809160))))

(assert (=> d!650231 (= lt!809160 0)))

(assert (=> d!650231 (= lt!809162 Nil!25186)))

(declare-fun lt!809158 () Unit!38245)

(declare-fun lt!809161 () Unit!38245)

(assert (=> d!650231 (= lt!809158 lt!809161)))

(declare-fun lt!809163 () Int)

(assert (=> d!650231 (= (sizeTr!113 lt!809109 lt!809163) (+ (size!19675 lt!809109) lt!809163))))

(assert (=> d!650231 (= lt!809161 (lemmaSizeTrEqualsSize!112 lt!809109 lt!809163))))

(assert (=> d!650231 (= lt!809163 0)))

(assert (=> d!650231 (validRegex!2295 r!12534)))

(assert (=> d!650231 (= (findLongestMatch!573 r!12534 lt!809109) lt!809159)))

(declare-fun bs!446944 () Bool)

(assert (= bs!446944 d!650231))

(assert (=> bs!446944 m!2612905))

(declare-fun m!2613013 () Bool)

(assert (=> bs!446944 m!2613013))

(declare-fun m!2613015 () Bool)

(assert (=> bs!446944 m!2613015))

(declare-fun m!2613017 () Bool)

(assert (=> bs!446944 m!2613017))

(declare-fun m!2613019 () Bool)

(assert (=> bs!446944 m!2613019))

(assert (=> bs!446944 m!2613013))

(declare-fun m!2613021 () Bool)

(assert (=> bs!446944 m!2613021))

(assert (=> bs!446944 m!2612861))

(declare-fun m!2613023 () Bool)

(assert (=> bs!446944 m!2613023))

(declare-fun m!2613025 () Bool)

(assert (=> bs!446944 m!2613025))

(declare-fun m!2613027 () Bool)

(assert (=> bs!446944 m!2613027))

(assert (=> b!2171625 d!650231))

(declare-fun d!650241 () Bool)

(declare-fun list!9658 (Conc!8155) List!25270)

(assert (=> d!650241 (= (list!9656 (_1!14845 lt!809105)) (list!9658 (c!344140 (_1!14845 lt!809105))))))

(declare-fun bs!446945 () Bool)

(assert (= bs!446945 d!650241))

(declare-fun m!2613029 () Bool)

(assert (=> bs!446945 m!2613029))

(assert (=> b!2171625 d!650241))

(declare-fun d!650243 () Bool)

(assert (=> d!650243 (= (list!9656 (_2!14845 lt!809105)) (list!9658 (c!344140 (_2!14845 lt!809105))))))

(declare-fun bs!446946 () Bool)

(assert (= bs!446946 d!650243))

(declare-fun m!2613031 () Bool)

(assert (=> bs!446946 m!2613031))

(assert (=> b!2171625 d!650243))

(declare-fun d!650245 () Bool)

(declare-fun lt!809165 () Int)

(assert (=> d!650245 (= lt!809165 (size!19675 (list!9656 input!5540)))))

(assert (=> d!650245 (= lt!809165 (size!19676 (c!344140 input!5540)))))

(assert (=> d!650245 (= (size!19674 input!5540) lt!809165)))

(declare-fun bs!446947 () Bool)

(assert (= bs!446947 d!650245))

(assert (=> bs!446947 m!2612871))

(assert (=> bs!446947 m!2612871))

(declare-fun m!2613033 () Bool)

(assert (=> bs!446947 m!2613033))

(declare-fun m!2613035 () Bool)

(assert (=> bs!446947 m!2613035))

(assert (=> b!2171625 d!650245))

(declare-fun b!2171752 () Bool)

(declare-fun e!1388878 () tuple2!24950)

(declare-fun call!130270 () tuple2!24950)

(assert (=> b!2171752 (= e!1388878 call!130270)))

(declare-fun b!2171753 () Bool)

(declare-fun e!1388879 () Int)

(declare-fun lt!809231 () Int)

(assert (=> b!2171753 (= e!1388879 (- lt!809231 1))))

(declare-fun b!2171754 () Bool)

(assert (=> b!2171754 (= e!1388879 (- 1))))

(declare-fun d!650247 () Bool)

(declare-fun lt!809232 () tuple2!24950)

(assert (=> d!650247 (= (++!6378 (list!9656 (_1!14845 lt!809232)) (list!9656 (_2!14845 lt!809232))) (list!9656 input!5540))))

(assert (=> d!650247 (= lt!809232 e!1388878)))

(declare-fun c!344183 () Bool)

(declare-fun lt!809233 () Int)

(assert (=> d!650247 (= c!344183 (< lt!809233 0))))

(declare-fun lt!809230 () Int)

(assert (=> d!650247 (= lt!809233 (+ (- (furthestNullablePosition!201 z!4055 lt!809231 totalInput!977 lt!809230 e!1388879) lt!809231) 1))))

(declare-fun c!344182 () Bool)

(assert (=> d!650247 (= c!344182 (nullableZipper!299 z!4055))))

(assert (=> d!650247 (= lt!809231 (- lt!809230 (size!19674 input!5540)))))

(assert (=> d!650247 (= lt!809230 (size!19674 totalInput!977))))

(assert (=> d!650247 (isSuffix!686 (list!9656 input!5540) (list!9656 totalInput!977))))

(assert (=> d!650247 (= (findLongestMatchZipperSequenceV3!68 z!4055 input!5540 totalInput!977) lt!809232)))

(declare-fun b!2171755 () Bool)

(assert (=> b!2171755 (= e!1388878 call!130270)))

(declare-fun bm!130265 () Bool)

(declare-fun splitAt!36 (BalanceConc!16072 Int) tuple2!24950)

(assert (=> bm!130265 (= call!130270 (splitAt!36 input!5540 (ite c!344183 0 lt!809233)))))

(assert (= (and d!650247 c!344182) b!2171753))

(assert (= (and d!650247 (not c!344182)) b!2171754))

(assert (= (and d!650247 c!344183) b!2171755))

(assert (= (and d!650247 (not c!344183)) b!2171752))

(assert (= (or b!2171755 b!2171752) bm!130265))

(declare-fun m!2613037 () Bool)

(assert (=> d!650247 m!2613037))

(assert (=> d!650247 m!2612929))

(declare-fun m!2613039 () Bool)

(assert (=> d!650247 m!2613039))

(assert (=> d!650247 m!2612931))

(assert (=> d!650247 m!2612903))

(declare-fun m!2613041 () Bool)

(assert (=> d!650247 m!2613041))

(assert (=> d!650247 m!2612869))

(assert (=> d!650247 m!2612871))

(assert (=> d!650247 m!2612869))

(declare-fun m!2613043 () Bool)

(assert (=> d!650247 m!2613043))

(assert (=> d!650247 m!2613039))

(assert (=> d!650247 m!2613037))

(declare-fun m!2613045 () Bool)

(assert (=> d!650247 m!2613045))

(assert (=> d!650247 m!2612871))

(declare-fun m!2613047 () Bool)

(assert (=> bm!130265 m!2613047))

(assert (=> b!2171625 d!650247))

(declare-fun b!2171787 () Bool)

(declare-fun res!934608 () Bool)

(declare-fun e!1388897 () Bool)

(assert (=> b!2171787 (=> (not res!934608) (not e!1388897))))

(declare-fun lt!809265 () List!25270)

(assert (=> b!2171787 (= res!934608 (= (size!19675 lt!809265) (+ (size!19675 lt!809118) (size!19675 lt!809093))))))

(declare-fun b!2171785 () Bool)

(declare-fun e!1388896 () List!25270)

(assert (=> b!2171785 (= e!1388896 lt!809093)))

(declare-fun b!2171786 () Bool)

(assert (=> b!2171786 (= e!1388896 (Cons!25186 (h!30587 lt!809118) (++!6378 (t!197838 lt!809118) lt!809093)))))

(declare-fun d!650249 () Bool)

(assert (=> d!650249 e!1388897))

(declare-fun res!934607 () Bool)

(assert (=> d!650249 (=> (not res!934607) (not e!1388897))))

(declare-fun content!3419 (List!25270) (InoxSet C!12184))

(assert (=> d!650249 (= res!934607 (= (content!3419 lt!809265) ((_ map or) (content!3419 lt!809118) (content!3419 lt!809093))))))

(assert (=> d!650249 (= lt!809265 e!1388896)))

(declare-fun c!344195 () Bool)

(assert (=> d!650249 (= c!344195 ((_ is Nil!25186) lt!809118))))

(assert (=> d!650249 (= (++!6378 lt!809118 lt!809093) lt!809265)))

(declare-fun b!2171788 () Bool)

(assert (=> b!2171788 (= e!1388897 (or (not (= lt!809093 Nil!25186)) (= lt!809265 lt!809118)))))

(assert (= (and d!650249 c!344195) b!2171785))

(assert (= (and d!650249 (not c!344195)) b!2171786))

(assert (= (and d!650249 res!934607) b!2171787))

(assert (= (and b!2171787 res!934608) b!2171788))

(declare-fun m!2613109 () Bool)

(assert (=> b!2171787 m!2613109))

(declare-fun m!2613111 () Bool)

(assert (=> b!2171787 m!2613111))

(declare-fun m!2613113 () Bool)

(assert (=> b!2171787 m!2613113))

(declare-fun m!2613115 () Bool)

(assert (=> b!2171786 m!2613115))

(declare-fun m!2613117 () Bool)

(assert (=> d!650249 m!2613117))

(declare-fun m!2613119 () Bool)

(assert (=> d!650249 m!2613119))

(declare-fun m!2613121 () Bool)

(assert (=> d!650249 m!2613121))

(assert (=> b!2171625 d!650249))

(declare-fun d!650255 () Bool)

(declare-fun c!344198 () Bool)

(assert (=> d!650255 (= c!344198 ((_ is Node!8155) (c!344140 totalInput!977)))))

(declare-fun e!1388902 () Bool)

(assert (=> d!650255 (= (inv!33426 (c!344140 totalInput!977)) e!1388902)))

(declare-fun b!2171795 () Bool)

(declare-fun inv!33431 (Conc!8155) Bool)

(assert (=> b!2171795 (= e!1388902 (inv!33431 (c!344140 totalInput!977)))))

(declare-fun b!2171796 () Bool)

(declare-fun e!1388903 () Bool)

(assert (=> b!2171796 (= e!1388902 e!1388903)))

(declare-fun res!934611 () Bool)

(assert (=> b!2171796 (= res!934611 (not ((_ is Leaf!11932) (c!344140 totalInput!977))))))

(assert (=> b!2171796 (=> res!934611 e!1388903)))

(declare-fun b!2171797 () Bool)

(declare-fun inv!33432 (Conc!8155) Bool)

(assert (=> b!2171797 (= e!1388903 (inv!33432 (c!344140 totalInput!977)))))

(assert (= (and d!650255 c!344198) b!2171795))

(assert (= (and d!650255 (not c!344198)) b!2171796))

(assert (= (and b!2171796 (not res!934611)) b!2171797))

(declare-fun m!2613123 () Bool)

(assert (=> b!2171795 m!2613123))

(declare-fun m!2613125 () Bool)

(assert (=> b!2171797 m!2613125))

(assert (=> b!2171633 d!650255))

(declare-fun d!650257 () Bool)

(declare-fun lt!809274 () Regex!6019)

(assert (=> d!650257 (validRegex!2295 lt!809274)))

(declare-fun generalisedUnion!512 (List!25271) Regex!6019)

(declare-fun unfocusZipperList!36 (List!25272) List!25271)

(assert (=> d!650257 (= lt!809274 (generalisedUnion!512 (unfocusZipperList!36 lt!809115)))))

(assert (=> d!650257 (= (unfocusZipper!126 lt!809115) lt!809274)))

(declare-fun bs!446948 () Bool)

(assert (= bs!446948 d!650257))

(declare-fun m!2613137 () Bool)

(assert (=> bs!446948 m!2613137))

(declare-fun m!2613139 () Bool)

(assert (=> bs!446948 m!2613139))

(assert (=> bs!446948 m!2613139))

(declare-fun m!2613141 () Bool)

(assert (=> bs!446948 m!2613141))

(assert (=> b!2171623 d!650257))

(declare-fun d!650261 () Bool)

(declare-fun e!1388912 () Bool)

(assert (=> d!650261 e!1388912))

(declare-fun res!934620 () Bool)

(assert (=> d!650261 (=> (not res!934620) (not e!1388912))))

(declare-fun lt!809277 () List!25272)

(declare-fun noDuplicate!289 (List!25272) Bool)

(assert (=> d!650261 (= res!934620 (noDuplicate!289 lt!809277))))

(declare-fun choose!12795 ((InoxSet Context!3178)) List!25272)

(assert (=> d!650261 (= lt!809277 (choose!12795 z!4055))))

(assert (=> d!650261 (= (toList!1202 z!4055) lt!809277)))

(declare-fun b!2171806 () Bool)

(declare-fun content!3420 (List!25272) (InoxSet Context!3178))

(assert (=> b!2171806 (= e!1388912 (= (content!3420 lt!809277) z!4055))))

(assert (= (and d!650261 res!934620) b!2171806))

(declare-fun m!2613143 () Bool)

(assert (=> d!650261 m!2613143))

(declare-fun m!2613145 () Bool)

(assert (=> d!650261 m!2613145))

(declare-fun m!2613147 () Bool)

(assert (=> b!2171806 m!2613147))

(assert (=> b!2171623 d!650261))

(declare-fun b!2171835 () Bool)

(declare-fun e!1388930 () Bool)

(declare-fun e!1388927 () Bool)

(assert (=> b!2171835 (= e!1388930 e!1388927)))

(declare-fun c!344207 () Bool)

(assert (=> b!2171835 (= c!344207 ((_ is EmptyLang!6019) r!12534))))

(declare-fun b!2171836 () Bool)

(declare-fun e!1388929 () Bool)

(declare-fun e!1388933 () Bool)

(assert (=> b!2171836 (= e!1388929 e!1388933)))

(declare-fun res!934638 () Bool)

(assert (=> b!2171836 (=> res!934638 e!1388933)))

(declare-fun call!130281 () Bool)

(assert (=> b!2171836 (= res!934638 call!130281)))

(declare-fun b!2171837 () Bool)

(declare-fun head!4650 (List!25270) C!12184)

(assert (=> b!2171837 (= e!1388933 (not (= (head!4650 (_1!14846 lt!809095)) (c!344141 r!12534))))))

(declare-fun b!2171838 () Bool)

(declare-fun lt!809280 () Bool)

(assert (=> b!2171838 (= e!1388930 (= lt!809280 call!130281))))

(declare-fun b!2171839 () Bool)

(declare-fun e!1388928 () Bool)

(assert (=> b!2171839 (= e!1388928 e!1388929)))

(declare-fun res!934637 () Bool)

(assert (=> b!2171839 (=> (not res!934637) (not e!1388929))))

(assert (=> b!2171839 (= res!934637 (not lt!809280))))

(declare-fun bm!130276 () Bool)

(assert (=> bm!130276 (= call!130281 (isEmpty!14446 (_1!14846 lt!809095)))))

(declare-fun b!2171840 () Bool)

(declare-fun res!934640 () Bool)

(assert (=> b!2171840 (=> res!934640 e!1388933)))

(declare-fun tail!3122 (List!25270) List!25270)

(assert (=> b!2171840 (= res!934640 (not (isEmpty!14446 (tail!3122 (_1!14846 lt!809095)))))))

(declare-fun b!2171841 () Bool)

(declare-fun res!934643 () Bool)

(declare-fun e!1388932 () Bool)

(assert (=> b!2171841 (=> (not res!934643) (not e!1388932))))

(assert (=> b!2171841 (= res!934643 (isEmpty!14446 (tail!3122 (_1!14846 lt!809095))))))

(declare-fun b!2171842 () Bool)

(assert (=> b!2171842 (= e!1388932 (= (head!4650 (_1!14846 lt!809095)) (c!344141 r!12534)))))

(declare-fun b!2171843 () Bool)

(declare-fun res!934639 () Bool)

(assert (=> b!2171843 (=> (not res!934639) (not e!1388932))))

(assert (=> b!2171843 (= res!934639 (not call!130281))))

(declare-fun b!2171844 () Bool)

(assert (=> b!2171844 (= e!1388927 (not lt!809280))))

(declare-fun b!2171845 () Bool)

(declare-fun e!1388931 () Bool)

(declare-fun nullable!1697 (Regex!6019) Bool)

(assert (=> b!2171845 (= e!1388931 (nullable!1697 r!12534))))

(declare-fun b!2171846 () Bool)

(declare-fun res!934642 () Bool)

(assert (=> b!2171846 (=> res!934642 e!1388928)))

(assert (=> b!2171846 (= res!934642 e!1388932)))

(declare-fun res!934641 () Bool)

(assert (=> b!2171846 (=> (not res!934641) (not e!1388932))))

(assert (=> b!2171846 (= res!934641 lt!809280)))

(declare-fun d!650263 () Bool)

(assert (=> d!650263 e!1388930))

(declare-fun c!344208 () Bool)

(assert (=> d!650263 (= c!344208 ((_ is EmptyExpr!6019) r!12534))))

(assert (=> d!650263 (= lt!809280 e!1388931)))

(declare-fun c!344209 () Bool)

(assert (=> d!650263 (= c!344209 (isEmpty!14446 (_1!14846 lt!809095)))))

(assert (=> d!650263 (validRegex!2295 r!12534)))

(assert (=> d!650263 (= (matchR!2768 r!12534 (_1!14846 lt!809095)) lt!809280)))

(declare-fun b!2171847 () Bool)

(declare-fun res!934644 () Bool)

(assert (=> b!2171847 (=> res!934644 e!1388928)))

(assert (=> b!2171847 (= res!934644 (not ((_ is ElementMatch!6019) r!12534)))))

(assert (=> b!2171847 (= e!1388927 e!1388928)))

(declare-fun b!2171848 () Bool)

(declare-fun derivativeStep!1440 (Regex!6019 C!12184) Regex!6019)

(assert (=> b!2171848 (= e!1388931 (matchR!2768 (derivativeStep!1440 r!12534 (head!4650 (_1!14846 lt!809095))) (tail!3122 (_1!14846 lt!809095))))))

(assert (= (and d!650263 c!344209) b!2171845))

(assert (= (and d!650263 (not c!344209)) b!2171848))

(assert (= (and d!650263 c!344208) b!2171838))

(assert (= (and d!650263 (not c!344208)) b!2171835))

(assert (= (and b!2171835 c!344207) b!2171844))

(assert (= (and b!2171835 (not c!344207)) b!2171847))

(assert (= (and b!2171847 (not res!934644)) b!2171846))

(assert (= (and b!2171846 res!934641) b!2171843))

(assert (= (and b!2171843 res!934639) b!2171841))

(assert (= (and b!2171841 res!934643) b!2171842))

(assert (= (and b!2171846 (not res!934642)) b!2171839))

(assert (= (and b!2171839 res!934637) b!2171836))

(assert (= (and b!2171836 (not res!934638)) b!2171840))

(assert (= (and b!2171840 (not res!934640)) b!2171837))

(assert (= (or b!2171838 b!2171836 b!2171843) bm!130276))

(assert (=> d!650263 m!2612921))

(assert (=> d!650263 m!2612861))

(declare-fun m!2613149 () Bool)

(assert (=> b!2171837 m!2613149))

(assert (=> b!2171848 m!2613149))

(assert (=> b!2171848 m!2613149))

(declare-fun m!2613151 () Bool)

(assert (=> b!2171848 m!2613151))

(declare-fun m!2613153 () Bool)

(assert (=> b!2171848 m!2613153))

(assert (=> b!2171848 m!2613151))

(assert (=> b!2171848 m!2613153))

(declare-fun m!2613155 () Bool)

(assert (=> b!2171848 m!2613155))

(assert (=> bm!130276 m!2612921))

(declare-fun m!2613157 () Bool)

(assert (=> b!2171845 m!2613157))

(assert (=> b!2171841 m!2613153))

(assert (=> b!2171841 m!2613153))

(declare-fun m!2613159 () Bool)

(assert (=> b!2171841 m!2613159))

(assert (=> b!2171840 m!2613153))

(assert (=> b!2171840 m!2613153))

(assert (=> b!2171840 m!2613159))

(assert (=> b!2171842 m!2613149))

(assert (=> b!2171636 d!650263))

(declare-fun d!650265 () Bool)

(declare-fun lambda!81808 () Int)

(declare-fun forall!5169 (List!25271 Int) Bool)

(assert (=> d!650265 (= (inv!33428 setElem!18214) (forall!5169 (exprs!2089 setElem!18214) lambda!81808))))

(declare-fun bs!446955 () Bool)

(assert (= bs!446955 d!650265))

(declare-fun m!2613233 () Bool)

(assert (=> bs!446955 m!2613233))

(assert (=> setNonEmpty!18214 d!650265))

(declare-fun d!650293 () Bool)

(assert (=> d!650293 (= (isEmpty!14446 (_1!14846 lt!809102)) ((_ is Nil!25186) (_1!14846 lt!809102)))))

(assert (=> b!2171626 d!650293))

(declare-fun b!2171939 () Bool)

(declare-fun e!1388986 () Bool)

(declare-fun e!1388983 () Bool)

(assert (=> b!2171939 (= e!1388986 e!1388983)))

(declare-fun c!344235 () Bool)

(assert (=> b!2171939 (= c!344235 ((_ is EmptyLang!6019) r!12534))))

(declare-fun b!2171940 () Bool)

(declare-fun e!1388985 () Bool)

(declare-fun e!1388989 () Bool)

(assert (=> b!2171940 (= e!1388985 e!1388989)))

(declare-fun res!934686 () Bool)

(assert (=> b!2171940 (=> res!934686 e!1388989)))

(declare-fun call!130285 () Bool)

(assert (=> b!2171940 (= res!934686 call!130285)))

(declare-fun b!2171941 () Bool)

(assert (=> b!2171941 (= e!1388989 (not (= (head!4650 (_1!14846 lt!809102)) (c!344141 r!12534))))))

(declare-fun b!2171942 () Bool)

(declare-fun lt!809305 () Bool)

(assert (=> b!2171942 (= e!1388986 (= lt!809305 call!130285))))

(declare-fun b!2171943 () Bool)

(declare-fun e!1388984 () Bool)

(assert (=> b!2171943 (= e!1388984 e!1388985)))

(declare-fun res!934685 () Bool)

(assert (=> b!2171943 (=> (not res!934685) (not e!1388985))))

(assert (=> b!2171943 (= res!934685 (not lt!809305))))

(declare-fun bm!130280 () Bool)

(assert (=> bm!130280 (= call!130285 (isEmpty!14446 (_1!14846 lt!809102)))))

(declare-fun b!2171944 () Bool)

(declare-fun res!934688 () Bool)

(assert (=> b!2171944 (=> res!934688 e!1388989)))

(assert (=> b!2171944 (= res!934688 (not (isEmpty!14446 (tail!3122 (_1!14846 lt!809102)))))))

(declare-fun b!2171945 () Bool)

(declare-fun res!934691 () Bool)

(declare-fun e!1388988 () Bool)

(assert (=> b!2171945 (=> (not res!934691) (not e!1388988))))

(assert (=> b!2171945 (= res!934691 (isEmpty!14446 (tail!3122 (_1!14846 lt!809102))))))

(declare-fun b!2171946 () Bool)

(assert (=> b!2171946 (= e!1388988 (= (head!4650 (_1!14846 lt!809102)) (c!344141 r!12534)))))

(declare-fun b!2171947 () Bool)

(declare-fun res!934687 () Bool)

(assert (=> b!2171947 (=> (not res!934687) (not e!1388988))))

(assert (=> b!2171947 (= res!934687 (not call!130285))))

(declare-fun b!2171948 () Bool)

(assert (=> b!2171948 (= e!1388983 (not lt!809305))))

(declare-fun b!2171949 () Bool)

(declare-fun e!1388987 () Bool)

(assert (=> b!2171949 (= e!1388987 (nullable!1697 r!12534))))

(declare-fun b!2171950 () Bool)

(declare-fun res!934690 () Bool)

(assert (=> b!2171950 (=> res!934690 e!1388984)))

(assert (=> b!2171950 (= res!934690 e!1388988)))

(declare-fun res!934689 () Bool)

(assert (=> b!2171950 (=> (not res!934689) (not e!1388988))))

(assert (=> b!2171950 (= res!934689 lt!809305)))

(declare-fun d!650295 () Bool)

(assert (=> d!650295 e!1388986))

(declare-fun c!344236 () Bool)

(assert (=> d!650295 (= c!344236 ((_ is EmptyExpr!6019) r!12534))))

(assert (=> d!650295 (= lt!809305 e!1388987)))

(declare-fun c!344237 () Bool)

(assert (=> d!650295 (= c!344237 (isEmpty!14446 (_1!14846 lt!809102)))))

(assert (=> d!650295 (validRegex!2295 r!12534)))

(assert (=> d!650295 (= (matchR!2768 r!12534 (_1!14846 lt!809102)) lt!809305)))

(declare-fun b!2171951 () Bool)

(declare-fun res!934692 () Bool)

(assert (=> b!2171951 (=> res!934692 e!1388984)))

(assert (=> b!2171951 (= res!934692 (not ((_ is ElementMatch!6019) r!12534)))))

(assert (=> b!2171951 (= e!1388983 e!1388984)))

(declare-fun b!2171952 () Bool)

(assert (=> b!2171952 (= e!1388987 (matchR!2768 (derivativeStep!1440 r!12534 (head!4650 (_1!14846 lt!809102))) (tail!3122 (_1!14846 lt!809102))))))

(assert (= (and d!650295 c!344237) b!2171949))

(assert (= (and d!650295 (not c!344237)) b!2171952))

(assert (= (and d!650295 c!344236) b!2171942))

(assert (= (and d!650295 (not c!344236)) b!2171939))

(assert (= (and b!2171939 c!344235) b!2171948))

(assert (= (and b!2171939 (not c!344235)) b!2171951))

(assert (= (and b!2171951 (not res!934692)) b!2171950))

(assert (= (and b!2171950 res!934689) b!2171947))

(assert (= (and b!2171947 res!934687) b!2171945))

(assert (= (and b!2171945 res!934691) b!2171946))

(assert (= (and b!2171950 (not res!934690)) b!2171943))

(assert (= (and b!2171943 res!934685) b!2171940))

(assert (= (and b!2171940 (not res!934686)) b!2171944))

(assert (= (and b!2171944 (not res!934688)) b!2171941))

(assert (= (or b!2171942 b!2171940 b!2171947) bm!130280))

(assert (=> d!650295 m!2612853))

(assert (=> d!650295 m!2612861))

(declare-fun m!2613235 () Bool)

(assert (=> b!2171941 m!2613235))

(assert (=> b!2171952 m!2613235))

(assert (=> b!2171952 m!2613235))

(declare-fun m!2613237 () Bool)

(assert (=> b!2171952 m!2613237))

(declare-fun m!2613239 () Bool)

(assert (=> b!2171952 m!2613239))

(assert (=> b!2171952 m!2613237))

(assert (=> b!2171952 m!2613239))

(declare-fun m!2613241 () Bool)

(assert (=> b!2171952 m!2613241))

(assert (=> bm!130280 m!2612853))

(assert (=> b!2171949 m!2613157))

(assert (=> b!2171945 m!2613239))

(assert (=> b!2171945 m!2613239))

(declare-fun m!2613243 () Bool)

(assert (=> b!2171945 m!2613243))

(assert (=> b!2171944 m!2613239))

(assert (=> b!2171944 m!2613239))

(assert (=> b!2171944 m!2613243))

(assert (=> b!2171946 m!2613235))

(assert (=> b!2171639 d!650295))

(declare-fun d!650297 () Bool)

(assert (=> d!650297 (= (matchR!2768 r!12534 (_1!14846 lt!809102)) (matchZipper!135 z!4055 (_1!14846 lt!809102)))))

(declare-fun lt!809332 () Unit!38245)

(declare-fun choose!12797 ((InoxSet Context!3178) List!25272 Regex!6019 List!25270) Unit!38245)

(assert (=> d!650297 (= lt!809332 (choose!12797 z!4055 lt!809115 r!12534 (_1!14846 lt!809102)))))

(assert (=> d!650297 (validRegex!2295 r!12534)))

(assert (=> d!650297 (= (theoremZipperRegexEquiv!45 z!4055 lt!809115 r!12534 (_1!14846 lt!809102)) lt!809332)))

(declare-fun bs!446957 () Bool)

(assert (= bs!446957 d!650297))

(assert (=> bs!446957 m!2612879))

(assert (=> bs!446957 m!2612881))

(declare-fun m!2613261 () Bool)

(assert (=> bs!446957 m!2613261))

(assert (=> bs!446957 m!2612861))

(assert (=> b!2171629 d!650297))

(declare-fun b!2171953 () Bool)

(declare-fun e!1388993 () Bool)

(declare-fun e!1388990 () Bool)

(assert (=> b!2171953 (= e!1388993 e!1388990)))

(declare-fun c!344238 () Bool)

(assert (=> b!2171953 (= c!344238 ((_ is EmptyLang!6019) r!12534))))

(declare-fun b!2171954 () Bool)

(declare-fun e!1388992 () Bool)

(declare-fun e!1388996 () Bool)

(assert (=> b!2171954 (= e!1388992 e!1388996)))

(declare-fun res!934694 () Bool)

(assert (=> b!2171954 (=> res!934694 e!1388996)))

(declare-fun call!130286 () Bool)

(assert (=> b!2171954 (= res!934694 call!130286)))

(declare-fun b!2171955 () Bool)

(assert (=> b!2171955 (= e!1388996 (not (= (head!4650 lt!809118) (c!344141 r!12534))))))

(declare-fun b!2171956 () Bool)

(declare-fun lt!809333 () Bool)

(assert (=> b!2171956 (= e!1388993 (= lt!809333 call!130286))))

(declare-fun b!2171957 () Bool)

(declare-fun e!1388991 () Bool)

(assert (=> b!2171957 (= e!1388991 e!1388992)))

(declare-fun res!934693 () Bool)

(assert (=> b!2171957 (=> (not res!934693) (not e!1388992))))

(assert (=> b!2171957 (= res!934693 (not lt!809333))))

(declare-fun bm!130281 () Bool)

(assert (=> bm!130281 (= call!130286 (isEmpty!14446 lt!809118))))

(declare-fun b!2171958 () Bool)

(declare-fun res!934696 () Bool)

(assert (=> b!2171958 (=> res!934696 e!1388996)))

(assert (=> b!2171958 (= res!934696 (not (isEmpty!14446 (tail!3122 lt!809118))))))

(declare-fun b!2171959 () Bool)

(declare-fun res!934699 () Bool)

(declare-fun e!1388995 () Bool)

(assert (=> b!2171959 (=> (not res!934699) (not e!1388995))))

(assert (=> b!2171959 (= res!934699 (isEmpty!14446 (tail!3122 lt!809118)))))

(declare-fun b!2171960 () Bool)

(assert (=> b!2171960 (= e!1388995 (= (head!4650 lt!809118) (c!344141 r!12534)))))

(declare-fun b!2171961 () Bool)

(declare-fun res!934695 () Bool)

(assert (=> b!2171961 (=> (not res!934695) (not e!1388995))))

(assert (=> b!2171961 (= res!934695 (not call!130286))))

(declare-fun b!2171962 () Bool)

(assert (=> b!2171962 (= e!1388990 (not lt!809333))))

(declare-fun b!2171963 () Bool)

(declare-fun e!1388994 () Bool)

(assert (=> b!2171963 (= e!1388994 (nullable!1697 r!12534))))

(declare-fun b!2171964 () Bool)

(declare-fun res!934698 () Bool)

(assert (=> b!2171964 (=> res!934698 e!1388991)))

(assert (=> b!2171964 (= res!934698 e!1388995)))

(declare-fun res!934697 () Bool)

(assert (=> b!2171964 (=> (not res!934697) (not e!1388995))))

(assert (=> b!2171964 (= res!934697 lt!809333)))

(declare-fun d!650301 () Bool)

(assert (=> d!650301 e!1388993))

(declare-fun c!344239 () Bool)

(assert (=> d!650301 (= c!344239 ((_ is EmptyExpr!6019) r!12534))))

(assert (=> d!650301 (= lt!809333 e!1388994)))

(declare-fun c!344240 () Bool)

(assert (=> d!650301 (= c!344240 (isEmpty!14446 lt!809118))))

(assert (=> d!650301 (validRegex!2295 r!12534)))

(assert (=> d!650301 (= (matchR!2768 r!12534 lt!809118) lt!809333)))

(declare-fun b!2171965 () Bool)

(declare-fun res!934700 () Bool)

(assert (=> b!2171965 (=> res!934700 e!1388991)))

(assert (=> b!2171965 (= res!934700 (not ((_ is ElementMatch!6019) r!12534)))))

(assert (=> b!2171965 (= e!1388990 e!1388991)))

(declare-fun b!2171966 () Bool)

(assert (=> b!2171966 (= e!1388994 (matchR!2768 (derivativeStep!1440 r!12534 (head!4650 lt!809118)) (tail!3122 lt!809118)))))

(assert (= (and d!650301 c!344240) b!2171963))

(assert (= (and d!650301 (not c!344240)) b!2171966))

(assert (= (and d!650301 c!344239) b!2171956))

(assert (= (and d!650301 (not c!344239)) b!2171953))

(assert (= (and b!2171953 c!344238) b!2171962))

(assert (= (and b!2171953 (not c!344238)) b!2171965))

(assert (= (and b!2171965 (not res!934700)) b!2171964))

(assert (= (and b!2171964 res!934697) b!2171961))

(assert (= (and b!2171961 res!934695) b!2171959))

(assert (= (and b!2171959 res!934699) b!2171960))

(assert (= (and b!2171964 (not res!934698)) b!2171957))

(assert (= (and b!2171957 res!934693) b!2171954))

(assert (= (and b!2171954 (not res!934694)) b!2171958))

(assert (= (and b!2171958 (not res!934696)) b!2171955))

(assert (= (or b!2171956 b!2171954 b!2171961) bm!130281))

(declare-fun m!2613263 () Bool)

(assert (=> d!650301 m!2613263))

(assert (=> d!650301 m!2612861))

(declare-fun m!2613265 () Bool)

(assert (=> b!2171955 m!2613265))

(assert (=> b!2171966 m!2613265))

(assert (=> b!2171966 m!2613265))

(declare-fun m!2613267 () Bool)

(assert (=> b!2171966 m!2613267))

(declare-fun m!2613269 () Bool)

(assert (=> b!2171966 m!2613269))

(assert (=> b!2171966 m!2613267))

(assert (=> b!2171966 m!2613269))

(declare-fun m!2613271 () Bool)

(assert (=> b!2171966 m!2613271))

(assert (=> bm!130281 m!2613263))

(assert (=> b!2171963 m!2613157))

(assert (=> b!2171959 m!2613269))

(assert (=> b!2171959 m!2613269))

(declare-fun m!2613273 () Bool)

(assert (=> b!2171959 m!2613273))

(assert (=> b!2171958 m!2613269))

(assert (=> b!2171958 m!2613269))

(assert (=> b!2171958 m!2613273))

(assert (=> b!2171960 m!2613265))

(assert (=> b!2171629 d!650301))

(declare-fun d!650303 () Bool)

(declare-fun lt!809336 () Int)

(assert (=> d!650303 (= lt!809336 (size!19675 (list!9656 (_1!14845 lt!809105))))))

(assert (=> d!650303 (= lt!809336 (size!19676 (c!344140 (_1!14845 lt!809105))))))

(assert (=> d!650303 (= (size!19674 (_1!14845 lt!809105)) lt!809336)))

(declare-fun bs!446958 () Bool)

(assert (= bs!446958 d!650303))

(assert (=> bs!446958 m!2612937))

(assert (=> bs!446958 m!2612937))

(declare-fun m!2613275 () Bool)

(assert (=> bs!446958 m!2613275))

(declare-fun m!2613277 () Bool)

(assert (=> bs!446958 m!2613277))

(assert (=> b!2171629 d!650303))

(declare-fun d!650305 () Bool)

(declare-fun c!344244 () Bool)

(assert (=> d!650305 (= c!344244 (isEmpty!14446 (_1!14846 lt!809102)))))

(declare-fun e!1389001 () Bool)

(assert (=> d!650305 (= (matchZipper!135 z!4055 (_1!14846 lt!809102)) e!1389001)))

(declare-fun b!2171975 () Bool)

(assert (=> b!2171975 (= e!1389001 (nullableZipper!299 z!4055))))

(declare-fun b!2171976 () Bool)

(declare-fun derivationStepZipper!126 ((InoxSet Context!3178) C!12184) (InoxSet Context!3178))

(assert (=> b!2171976 (= e!1389001 (matchZipper!135 (derivationStepZipper!126 z!4055 (head!4650 (_1!14846 lt!809102))) (tail!3122 (_1!14846 lt!809102))))))

(assert (= (and d!650305 c!344244) b!2171975))

(assert (= (and d!650305 (not c!344244)) b!2171976))

(assert (=> d!650305 m!2612853))

(assert (=> b!2171975 m!2612903))

(assert (=> b!2171976 m!2613235))

(assert (=> b!2171976 m!2613235))

(declare-fun m!2613297 () Bool)

(assert (=> b!2171976 m!2613297))

(assert (=> b!2171976 m!2613239))

(assert (=> b!2171976 m!2613297))

(assert (=> b!2171976 m!2613239))

(declare-fun m!2613299 () Bool)

(assert (=> b!2171976 m!2613299))

(assert (=> b!2171629 d!650305))

(declare-fun d!650313 () Bool)

(assert (=> d!650313 (= (matchR!2768 r!12534 lt!809118) (matchZipper!135 z!4055 lt!809118))))

(declare-fun lt!809339 () Unit!38245)

(assert (=> d!650313 (= lt!809339 (choose!12797 z!4055 lt!809115 r!12534 lt!809118))))

(assert (=> d!650313 (validRegex!2295 r!12534)))

(assert (=> d!650313 (= (theoremZipperRegexEquiv!45 z!4055 lt!809115 r!12534 lt!809118) lt!809339)))

(declare-fun bs!446961 () Bool)

(assert (= bs!446961 d!650313))

(assert (=> bs!446961 m!2612889))

(assert (=> bs!446961 m!2612911))

(declare-fun m!2613301 () Bool)

(assert (=> bs!446961 m!2613301))

(assert (=> bs!446961 m!2612861))

(assert (=> b!2171629 d!650313))

(declare-fun d!650315 () Bool)

(declare-fun lt!809342 () Int)

(assert (=> d!650315 (>= lt!809342 0)))

(declare-fun e!1389004 () Int)

(assert (=> d!650315 (= lt!809342 e!1389004)))

(declare-fun c!344247 () Bool)

(assert (=> d!650315 (= c!344247 ((_ is Nil!25186) (_1!14846 lt!809102)))))

(assert (=> d!650315 (= (size!19675 (_1!14846 lt!809102)) lt!809342)))

(declare-fun b!2171981 () Bool)

(assert (=> b!2171981 (= e!1389004 0)))

(declare-fun b!2171982 () Bool)

(assert (=> b!2171982 (= e!1389004 (+ 1 (size!19675 (t!197838 (_1!14846 lt!809102)))))))

(assert (= (and d!650315 c!344247) b!2171981))

(assert (= (and d!650315 (not c!344247)) b!2171982))

(declare-fun m!2613303 () Bool)

(assert (=> b!2171982 m!2613303))

(assert (=> b!2171629 d!650315))

(declare-fun b!2172001 () Bool)

(declare-fun e!1389020 () Bool)

(declare-fun e!1389023 () Bool)

(assert (=> b!2172001 (= e!1389020 e!1389023)))

(declare-fun c!344253 () Bool)

(assert (=> b!2172001 (= c!344253 ((_ is Star!6019) r!12534))))

(declare-fun b!2172002 () Bool)

(declare-fun e!1389024 () Bool)

(declare-fun e!1389021 () Bool)

(assert (=> b!2172002 (= e!1389024 e!1389021)))

(declare-fun res!934715 () Bool)

(assert (=> b!2172002 (=> (not res!934715) (not e!1389021))))

(declare-fun call!130294 () Bool)

(assert (=> b!2172002 (= res!934715 call!130294)))

(declare-fun b!2172003 () Bool)

(declare-fun e!1389025 () Bool)

(assert (=> b!2172003 (= e!1389025 call!130294)))

(declare-fun b!2172004 () Bool)

(declare-fun res!934717 () Bool)

(assert (=> b!2172004 (=> (not res!934717) (not e!1389025))))

(declare-fun call!130293 () Bool)

(assert (=> b!2172004 (= res!934717 call!130293)))

(declare-fun e!1389019 () Bool)

(assert (=> b!2172004 (= e!1389019 e!1389025)))

(declare-fun b!2172006 () Bool)

(declare-fun e!1389022 () Bool)

(declare-fun call!130295 () Bool)

(assert (=> b!2172006 (= e!1389022 call!130295)))

(declare-fun b!2172007 () Bool)

(declare-fun res!934716 () Bool)

(assert (=> b!2172007 (=> res!934716 e!1389024)))

(assert (=> b!2172007 (= res!934716 (not ((_ is Concat!10321) r!12534)))))

(assert (=> b!2172007 (= e!1389019 e!1389024)))

(declare-fun b!2172008 () Bool)

(assert (=> b!2172008 (= e!1389023 e!1389019)))

(declare-fun c!344252 () Bool)

(assert (=> b!2172008 (= c!344252 ((_ is Union!6019) r!12534))))

(declare-fun bm!130288 () Bool)

(assert (=> bm!130288 (= call!130293 call!130295)))

(declare-fun bm!130289 () Bool)

(assert (=> bm!130289 (= call!130294 (validRegex!2295 (ite c!344252 (regTwo!12551 r!12534) (regOne!12550 r!12534))))))

(declare-fun b!2172009 () Bool)

(assert (=> b!2172009 (= e!1389023 e!1389022)))

(declare-fun res!934713 () Bool)

(assert (=> b!2172009 (= res!934713 (not (nullable!1697 (reg!6348 r!12534))))))

(assert (=> b!2172009 (=> (not res!934713) (not e!1389022))))

(declare-fun bm!130290 () Bool)

(assert (=> bm!130290 (= call!130295 (validRegex!2295 (ite c!344253 (reg!6348 r!12534) (ite c!344252 (regOne!12551 r!12534) (regTwo!12550 r!12534)))))))

(declare-fun b!2172005 () Bool)

(assert (=> b!2172005 (= e!1389021 call!130293)))

(declare-fun d!650317 () Bool)

(declare-fun res!934714 () Bool)

(assert (=> d!650317 (=> res!934714 e!1389020)))

(assert (=> d!650317 (= res!934714 ((_ is ElementMatch!6019) r!12534))))

(assert (=> d!650317 (= (validRegex!2295 r!12534) e!1389020)))

(assert (= (and d!650317 (not res!934714)) b!2172001))

(assert (= (and b!2172001 c!344253) b!2172009))

(assert (= (and b!2172001 (not c!344253)) b!2172008))

(assert (= (and b!2172009 res!934713) b!2172006))

(assert (= (and b!2172008 c!344252) b!2172004))

(assert (= (and b!2172008 (not c!344252)) b!2172007))

(assert (= (and b!2172004 res!934717) b!2172003))

(assert (= (and b!2172007 (not res!934716)) b!2172002))

(assert (= (and b!2172002 res!934715) b!2172005))

(assert (= (or b!2172003 b!2172002) bm!130289))

(assert (= (or b!2172004 b!2172005) bm!130288))

(assert (= (or b!2172006 bm!130288) bm!130290))

(declare-fun m!2613305 () Bool)

(assert (=> bm!130289 m!2613305))

(declare-fun m!2613307 () Bool)

(assert (=> b!2172009 m!2613307))

(declare-fun m!2613309 () Bool)

(assert (=> bm!130290 m!2613309))

(assert (=> start!210626 d!650317))

(declare-fun d!650319 () Bool)

(declare-fun isBalanced!2530 (Conc!8155) Bool)

(assert (=> d!650319 (= (inv!33427 totalInput!977) (isBalanced!2530 (c!344140 totalInput!977)))))

(declare-fun bs!446962 () Bool)

(assert (= bs!446962 d!650319))

(declare-fun m!2613311 () Bool)

(assert (=> bs!446962 m!2613311))

(assert (=> start!210626 d!650319))

(declare-fun d!650321 () Bool)

(assert (=> d!650321 (= (inv!33427 input!5540) (isBalanced!2530 (c!344140 input!5540)))))

(declare-fun bs!446963 () Bool)

(assert (= bs!446963 d!650321))

(declare-fun m!2613313 () Bool)

(assert (=> bs!446963 m!2613313))

(assert (=> start!210626 d!650321))

(declare-fun b!2172012 () Bool)

(declare-fun res!934719 () Bool)

(declare-fun e!1389027 () Bool)

(assert (=> b!2172012 (=> (not res!934719) (not e!1389027))))

(declare-fun lt!809343 () List!25270)

(assert (=> b!2172012 (= res!934719 (= (size!19675 lt!809343) (+ (size!19675 (_1!14846 lt!809102)) (size!19675 (_2!14846 lt!809102)))))))

(declare-fun b!2172010 () Bool)

(declare-fun e!1389026 () List!25270)

(assert (=> b!2172010 (= e!1389026 (_2!14846 lt!809102))))

(declare-fun b!2172011 () Bool)

(assert (=> b!2172011 (= e!1389026 (Cons!25186 (h!30587 (_1!14846 lt!809102)) (++!6378 (t!197838 (_1!14846 lt!809102)) (_2!14846 lt!809102))))))

(declare-fun d!650323 () Bool)

(assert (=> d!650323 e!1389027))

(declare-fun res!934718 () Bool)

(assert (=> d!650323 (=> (not res!934718) (not e!1389027))))

(assert (=> d!650323 (= res!934718 (= (content!3419 lt!809343) ((_ map or) (content!3419 (_1!14846 lt!809102)) (content!3419 (_2!14846 lt!809102)))))))

(assert (=> d!650323 (= lt!809343 e!1389026)))

(declare-fun c!344254 () Bool)

(assert (=> d!650323 (= c!344254 ((_ is Nil!25186) (_1!14846 lt!809102)))))

(assert (=> d!650323 (= (++!6378 (_1!14846 lt!809102) (_2!14846 lt!809102)) lt!809343)))

(declare-fun b!2172013 () Bool)

(assert (=> b!2172013 (= e!1389027 (or (not (= (_2!14846 lt!809102) Nil!25186)) (= lt!809343 (_1!14846 lt!809102))))))

(assert (= (and d!650323 c!344254) b!2172010))

(assert (= (and d!650323 (not c!344254)) b!2172011))

(assert (= (and d!650323 res!934718) b!2172012))

(assert (= (and b!2172012 res!934719) b!2172013))

(declare-fun m!2613315 () Bool)

(assert (=> b!2172012 m!2613315))

(assert (=> b!2172012 m!2612891))

(declare-fun m!2613317 () Bool)

(assert (=> b!2172012 m!2613317))

(declare-fun m!2613319 () Bool)

(assert (=> b!2172011 m!2613319))

(declare-fun m!2613321 () Bool)

(assert (=> d!650323 m!2613321))

(declare-fun m!2613323 () Bool)

(assert (=> d!650323 m!2613323))

(declare-fun m!2613325 () Bool)

(assert (=> d!650323 m!2613325))

(assert (=> b!2171638 d!650323))

(declare-fun d!650325 () Bool)

(declare-fun c!344255 () Bool)

(assert (=> d!650325 (= c!344255 (isEmpty!14446 (take!227 (drop!1237 lt!809113 lt!809106) lt!809099)))))

(declare-fun e!1389028 () Bool)

(assert (=> d!650325 (= (matchZipper!135 z!4055 (take!227 (drop!1237 lt!809113 lt!809106) lt!809099)) e!1389028)))

(declare-fun b!2172014 () Bool)

(assert (=> b!2172014 (= e!1389028 (nullableZipper!299 z!4055))))

(declare-fun b!2172015 () Bool)

(assert (=> b!2172015 (= e!1389028 (matchZipper!135 (derivationStepZipper!126 z!4055 (head!4650 (take!227 (drop!1237 lt!809113 lt!809106) lt!809099))) (tail!3122 (take!227 (drop!1237 lt!809113 lt!809106) lt!809099))))))

(assert (= (and d!650325 c!344255) b!2172014))

(assert (= (and d!650325 (not c!344255)) b!2172015))

(assert (=> d!650325 m!2612875))

(declare-fun m!2613327 () Bool)

(assert (=> d!650325 m!2613327))

(assert (=> b!2172014 m!2612903))

(assert (=> b!2172015 m!2612875))

(declare-fun m!2613329 () Bool)

(assert (=> b!2172015 m!2613329))

(assert (=> b!2172015 m!2613329))

(declare-fun m!2613331 () Bool)

(assert (=> b!2172015 m!2613331))

(assert (=> b!2172015 m!2612875))

(declare-fun m!2613333 () Bool)

(assert (=> b!2172015 m!2613333))

(assert (=> b!2172015 m!2613331))

(assert (=> b!2172015 m!2613333))

(declare-fun m!2613335 () Bool)

(assert (=> b!2172015 m!2613335))

(assert (=> b!2171628 d!650325))

(declare-fun b!2172051 () Bool)

(declare-fun e!1389051 () Bool)

(declare-fun lt!809360 () List!25270)

(declare-fun e!1389048 () Int)

(assert (=> b!2172051 (= e!1389051 (= (size!19675 lt!809360) e!1389048))))

(declare-fun c!344272 () Bool)

(assert (=> b!2172051 (= c!344272 (<= lt!809099 0))))

(declare-fun b!2172052 () Bool)

(assert (=> b!2172052 (= e!1389048 0)))

(declare-fun b!2172053 () Bool)

(declare-fun e!1389049 () List!25270)

(assert (=> b!2172053 (= e!1389049 (Cons!25186 (h!30587 (drop!1237 lt!809113 lt!809106)) (take!227 (t!197838 (drop!1237 lt!809113 lt!809106)) (- lt!809099 1))))))

(declare-fun b!2172054 () Bool)

(declare-fun e!1389050 () Int)

(assert (=> b!2172054 (= e!1389050 (size!19675 (drop!1237 lt!809113 lt!809106)))))

(declare-fun b!2172055 () Bool)

(assert (=> b!2172055 (= e!1389050 lt!809099)))

(declare-fun b!2172056 () Bool)

(assert (=> b!2172056 (= e!1389048 e!1389050)))

(declare-fun c!344273 () Bool)

(assert (=> b!2172056 (= c!344273 (>= lt!809099 (size!19675 (drop!1237 lt!809113 lt!809106))))))

(declare-fun b!2172057 () Bool)

(assert (=> b!2172057 (= e!1389049 Nil!25186)))

(declare-fun d!650327 () Bool)

(assert (=> d!650327 e!1389051))

(declare-fun res!934723 () Bool)

(assert (=> d!650327 (=> (not res!934723) (not e!1389051))))

(assert (=> d!650327 (= res!934723 (= ((_ map implies) (content!3419 lt!809360) (content!3419 (drop!1237 lt!809113 lt!809106))) ((as const (InoxSet C!12184)) true)))))

(assert (=> d!650327 (= lt!809360 e!1389049)))

(declare-fun c!344274 () Bool)

(assert (=> d!650327 (= c!344274 (or ((_ is Nil!25186) (drop!1237 lt!809113 lt!809106)) (<= lt!809099 0)))))

(assert (=> d!650327 (= (take!227 (drop!1237 lt!809113 lt!809106) lt!809099) lt!809360)))

(assert (= (and d!650327 c!344274) b!2172057))

(assert (= (and d!650327 (not c!344274)) b!2172053))

(assert (= (and d!650327 res!934723) b!2172051))

(assert (= (and b!2172051 c!344272) b!2172052))

(assert (= (and b!2172051 (not c!344272)) b!2172056))

(assert (= (and b!2172056 c!344273) b!2172054))

(assert (= (and b!2172056 (not c!344273)) b!2172055))

(assert (=> b!2172054 m!2612857))

(declare-fun m!2613375 () Bool)

(assert (=> b!2172054 m!2613375))

(declare-fun m!2613377 () Bool)

(assert (=> b!2172053 m!2613377))

(declare-fun m!2613379 () Bool)

(assert (=> d!650327 m!2613379))

(assert (=> d!650327 m!2612857))

(declare-fun m!2613381 () Bool)

(assert (=> d!650327 m!2613381))

(declare-fun m!2613383 () Bool)

(assert (=> b!2172051 m!2613383))

(assert (=> b!2172056 m!2612857))

(assert (=> b!2172056 m!2613375))

(assert (=> b!2171628 d!650327))

(declare-fun bm!130300 () Bool)

(declare-fun call!130305 () Int)

(assert (=> bm!130300 (= call!130305 (size!19675 lt!809113))))

(declare-fun b!2172097 () Bool)

(declare-fun e!1389081 () Int)

(assert (=> b!2172097 (= e!1389081 (- call!130305 lt!809106))))

(declare-fun b!2172098 () Bool)

(declare-fun e!1389083 () List!25270)

(assert (=> b!2172098 (= e!1389083 (drop!1237 (t!197838 lt!809113) (- lt!809106 1)))))

(declare-fun b!2172099 () Bool)

(declare-fun e!1389080 () List!25270)

(assert (=> b!2172099 (= e!1389080 Nil!25186)))

(declare-fun d!650339 () Bool)

(declare-fun e!1389079 () Bool)

(assert (=> d!650339 e!1389079))

(declare-fun res!934739 () Bool)

(assert (=> d!650339 (=> (not res!934739) (not e!1389079))))

(declare-fun lt!809369 () List!25270)

(assert (=> d!650339 (= res!934739 (= ((_ map implies) (content!3419 lt!809369) (content!3419 lt!809113)) ((as const (InoxSet C!12184)) true)))))

(assert (=> d!650339 (= lt!809369 e!1389080)))

(declare-fun c!344290 () Bool)

(assert (=> d!650339 (= c!344290 ((_ is Nil!25186) lt!809113))))

(assert (=> d!650339 (= (drop!1237 lt!809113 lt!809106) lt!809369)))

(declare-fun b!2172100 () Bool)

(declare-fun e!1389082 () Int)

(assert (=> b!2172100 (= e!1389082 e!1389081)))

(declare-fun c!344289 () Bool)

(assert (=> b!2172100 (= c!344289 (>= lt!809106 call!130305))))

(declare-fun b!2172101 () Bool)

(assert (=> b!2172101 (= e!1389079 (= (size!19675 lt!809369) e!1389082))))

(declare-fun c!344288 () Bool)

(assert (=> b!2172101 (= c!344288 (<= lt!809106 0))))

(declare-fun b!2172102 () Bool)

(assert (=> b!2172102 (= e!1389083 lt!809113)))

(declare-fun b!2172103 () Bool)

(assert (=> b!2172103 (= e!1389081 0)))

(declare-fun b!2172104 () Bool)

(assert (=> b!2172104 (= e!1389080 e!1389083)))

(declare-fun c!344287 () Bool)

(assert (=> b!2172104 (= c!344287 (<= lt!809106 0))))

(declare-fun b!2172105 () Bool)

(assert (=> b!2172105 (= e!1389082 call!130305)))

(assert (= (and d!650339 c!344290) b!2172099))

(assert (= (and d!650339 (not c!344290)) b!2172104))

(assert (= (and b!2172104 c!344287) b!2172102))

(assert (= (and b!2172104 (not c!344287)) b!2172098))

(assert (= (and d!650339 res!934739) b!2172101))

(assert (= (and b!2172101 c!344288) b!2172105))

(assert (= (and b!2172101 (not c!344288)) b!2172100))

(assert (= (and b!2172100 c!344289) b!2172103))

(assert (= (and b!2172100 (not c!344289)) b!2172097))

(assert (= (or b!2172105 b!2172100 b!2172097) bm!130300))

(declare-fun m!2613397 () Bool)

(assert (=> bm!130300 m!2613397))

(declare-fun m!2613399 () Bool)

(assert (=> b!2172098 m!2613399))

(declare-fun m!2613401 () Bool)

(assert (=> d!650339 m!2613401))

(declare-fun m!2613403 () Bool)

(assert (=> d!650339 m!2613403))

(declare-fun m!2613405 () Bool)

(assert (=> b!2172101 m!2613405))

(assert (=> b!2171628 d!650339))

(declare-fun b!2172106 () Bool)

(declare-fun e!1389087 () Bool)

(declare-fun lt!809370 () List!25270)

(declare-fun e!1389084 () Int)

(assert (=> b!2172106 (= e!1389087 (= (size!19675 lt!809370) e!1389084))))

(declare-fun c!344291 () Bool)

(assert (=> b!2172106 (= c!344291 (<= lt!809094 0))))

(declare-fun b!2172107 () Bool)

(assert (=> b!2172107 (= e!1389084 0)))

(declare-fun b!2172108 () Bool)

(declare-fun e!1389085 () List!25270)

(assert (=> b!2172108 (= e!1389085 (Cons!25186 (h!30587 lt!809107) (take!227 (t!197838 lt!809107) (- lt!809094 1))))))

(declare-fun b!2172109 () Bool)

(declare-fun e!1389086 () Int)

(assert (=> b!2172109 (= e!1389086 (size!19675 lt!809107))))

(declare-fun b!2172110 () Bool)

(assert (=> b!2172110 (= e!1389086 lt!809094)))

(declare-fun b!2172111 () Bool)

(assert (=> b!2172111 (= e!1389084 e!1389086)))

(declare-fun c!344292 () Bool)

(assert (=> b!2172111 (= c!344292 (>= lt!809094 (size!19675 lt!809107)))))

(declare-fun b!2172112 () Bool)

(assert (=> b!2172112 (= e!1389085 Nil!25186)))

(declare-fun d!650345 () Bool)

(assert (=> d!650345 e!1389087))

(declare-fun res!934740 () Bool)

(assert (=> d!650345 (=> (not res!934740) (not e!1389087))))

(assert (=> d!650345 (= res!934740 (= ((_ map implies) (content!3419 lt!809370) (content!3419 lt!809107)) ((as const (InoxSet C!12184)) true)))))

(assert (=> d!650345 (= lt!809370 e!1389085)))

(declare-fun c!344293 () Bool)

(assert (=> d!650345 (= c!344293 (or ((_ is Nil!25186) lt!809107) (<= lt!809094 0)))))

(assert (=> d!650345 (= (take!227 lt!809107 lt!809094) lt!809370)))

(assert (= (and d!650345 c!344293) b!2172112))

(assert (= (and d!650345 (not c!344293)) b!2172108))

(assert (= (and d!650345 res!934740) b!2172106))

(assert (= (and b!2172106 c!344291) b!2172107))

(assert (= (and b!2172106 (not c!344291)) b!2172111))

(assert (= (and b!2172111 c!344292) b!2172109))

(assert (= (and b!2172111 (not c!344292)) b!2172110))

(declare-fun m!2613407 () Bool)

(assert (=> b!2172109 m!2613407))

(declare-fun m!2613409 () Bool)

(assert (=> b!2172108 m!2613409))

(declare-fun m!2613411 () Bool)

(assert (=> d!650345 m!2613411))

(declare-fun m!2613413 () Bool)

(assert (=> d!650345 m!2613413))

(declare-fun m!2613415 () Bool)

(assert (=> b!2172106 m!2613415))

(assert (=> b!2172111 m!2613407))

(assert (=> b!2171627 d!650345))

(assert (=> b!2171627 d!650339))

(declare-fun d!650347 () Bool)

(declare-fun lt!809371 () Int)

(assert (=> d!650347 (>= lt!809371 0)))

(declare-fun e!1389088 () Int)

(assert (=> d!650347 (= lt!809371 e!1389088)))

(declare-fun c!344294 () Bool)

(assert (=> d!650347 (= c!344294 ((_ is Nil!25186) Nil!25186))))

(assert (=> d!650347 (= (size!19675 Nil!25186) lt!809371)))

(declare-fun b!2172113 () Bool)

(assert (=> b!2172113 (= e!1389088 0)))

(declare-fun b!2172114 () Bool)

(assert (=> b!2172114 (= e!1389088 (+ 1 (size!19675 (t!197838 Nil!25186))))))

(assert (= (and d!650347 c!344294) b!2172113))

(assert (= (and d!650347 (not c!344294)) b!2172114))

(declare-fun m!2613417 () Bool)

(assert (=> b!2172114 m!2613417))

(assert (=> b!2171632 d!650347))

(declare-fun d!650349 () Bool)

(declare-fun e!1389098 () Bool)

(assert (=> d!650349 e!1389098))

(declare-fun res!934748 () Bool)

(assert (=> d!650349 (=> res!934748 e!1389098)))

(assert (=> d!650349 (= res!934748 (isEmpty!14446 (_1!14846 (findLongestMatchInner!644 r!12534 Nil!25186 (size!19675 Nil!25186) lt!809109 lt!809109 (size!19675 lt!809109)))))))

(declare-fun lt!809377 () Unit!38245)

(declare-fun choose!12799 (Regex!6019 List!25270) Unit!38245)

(assert (=> d!650349 (= lt!809377 (choose!12799 r!12534 lt!809109))))

(assert (=> d!650349 (validRegex!2295 r!12534)))

(assert (=> d!650349 (= (longestMatchIsAcceptedByMatchOrIsEmpty!617 r!12534 lt!809109) lt!809377)))

(declare-fun b!2172126 () Bool)

(assert (=> b!2172126 (= e!1389098 (matchR!2768 r!12534 (_1!14846 (findLongestMatchInner!644 r!12534 Nil!25186 (size!19675 Nil!25186) lt!809109 lt!809109 (size!19675 lt!809109)))))))

(assert (= (and d!650349 (not res!934748)) b!2172126))

(declare-fun m!2613431 () Bool)

(assert (=> d!650349 m!2613431))

(assert (=> d!650349 m!2612923))

(assert (=> d!650349 m!2612905))

(assert (=> d!650349 m!2612925))

(assert (=> d!650349 m!2612861))

(assert (=> d!650349 m!2612905))

(assert (=> d!650349 m!2612923))

(declare-fun m!2613433 () Bool)

(assert (=> d!650349 m!2613433))

(assert (=> b!2172126 m!2612923))

(assert (=> b!2172126 m!2612905))

(assert (=> b!2172126 m!2612923))

(assert (=> b!2172126 m!2612905))

(assert (=> b!2172126 m!2612925))

(declare-fun m!2613439 () Bool)

(assert (=> b!2172126 m!2613439))

(assert (=> b!2171632 d!650349))

(declare-fun b!2172178 () Bool)

(declare-fun e!1389125 () Bool)

(assert (=> b!2172178 (= e!1389125 (isPrefix!2135 (tail!3122 lt!809118) (tail!3122 lt!809108)))))

(declare-fun b!2172179 () Bool)

(declare-fun e!1389126 () Bool)

(assert (=> b!2172179 (= e!1389126 (>= (size!19675 lt!809108) (size!19675 lt!809118)))))

(declare-fun b!2172177 () Bool)

(declare-fun res!934774 () Bool)

(assert (=> b!2172177 (=> (not res!934774) (not e!1389125))))

(assert (=> b!2172177 (= res!934774 (= (head!4650 lt!809118) (head!4650 lt!809108)))))

(declare-fun d!650361 () Bool)

(assert (=> d!650361 e!1389126))

(declare-fun res!934777 () Bool)

(assert (=> d!650361 (=> res!934777 e!1389126)))

(declare-fun lt!809385 () Bool)

(assert (=> d!650361 (= res!934777 (not lt!809385))))

(declare-fun e!1389127 () Bool)

(assert (=> d!650361 (= lt!809385 e!1389127)))

(declare-fun res!934775 () Bool)

(assert (=> d!650361 (=> res!934775 e!1389127)))

(assert (=> d!650361 (= res!934775 ((_ is Nil!25186) lt!809118))))

(assert (=> d!650361 (= (isPrefix!2135 lt!809118 lt!809108) lt!809385)))

(declare-fun b!2172176 () Bool)

(assert (=> b!2172176 (= e!1389127 e!1389125)))

(declare-fun res!934776 () Bool)

(assert (=> b!2172176 (=> (not res!934776) (not e!1389125))))

(assert (=> b!2172176 (= res!934776 (not ((_ is Nil!25186) lt!809108)))))

(assert (= (and d!650361 (not res!934775)) b!2172176))

(assert (= (and b!2172176 res!934776) b!2172177))

(assert (= (and b!2172177 res!934774) b!2172178))

(assert (= (and d!650361 (not res!934777)) b!2172179))

(assert (=> b!2172178 m!2613269))

(declare-fun m!2613469 () Bool)

(assert (=> b!2172178 m!2613469))

(assert (=> b!2172178 m!2613269))

(assert (=> b!2172178 m!2613469))

(declare-fun m!2613471 () Bool)

(assert (=> b!2172178 m!2613471))

(declare-fun m!2613473 () Bool)

(assert (=> b!2172179 m!2613473))

(assert (=> b!2172179 m!2613111))

(assert (=> b!2172177 m!2613265))

(declare-fun m!2613475 () Bool)

(assert (=> b!2172177 m!2613475))

(assert (=> b!2171632 d!650361))

(declare-fun d!650375 () Bool)

(assert (=> d!650375 (= (isEmpty!14446 (_1!14846 lt!809095)) ((_ is Nil!25186) (_1!14846 lt!809095)))))

(assert (=> b!2171632 d!650375))

(declare-fun d!650377 () Bool)

(declare-fun e!1389152 () Bool)

(assert (=> d!650377 e!1389152))

(declare-fun res!934782 () Bool)

(assert (=> d!650377 (=> res!934782 e!1389152)))

(declare-fun lt!809391 () Int)

(assert (=> d!650377 (= res!934782 (<= lt!809391 0))))

(assert (=> d!650377 (= lt!809391 (+ (- (furthestNullablePosition!201 z!4055 lt!809106 totalInput!977 (size!19674 totalInput!977) lt!809117) lt!809106) 1))))

(declare-fun lt!809390 () Unit!38245)

(declare-fun choose!12800 ((InoxSet Context!3178) Int BalanceConc!16072 Int) Unit!38245)

(assert (=> d!650377 (= lt!809390 (choose!12800 z!4055 lt!809106 totalInput!977 lt!809117))))

(declare-fun e!1389151 () Bool)

(assert (=> d!650377 e!1389151))

(declare-fun res!934783 () Bool)

(assert (=> d!650377 (=> (not res!934783) (not e!1389151))))

(assert (=> d!650377 (= res!934783 (>= lt!809106 0))))

(assert (=> d!650377 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!42 z!4055 lt!809106 totalInput!977 lt!809117) lt!809390)))

(declare-fun b!2172232 () Bool)

(assert (=> b!2172232 (= e!1389151 (<= lt!809106 (size!19674 totalInput!977)))))

(declare-fun b!2172233 () Bool)

(assert (=> b!2172233 (= e!1389152 (matchZipper!135 z!4055 (take!227 (drop!1237 (list!9656 totalInput!977) lt!809106) lt!809391)))))

(assert (= (and d!650377 res!934783) b!2172232))

(assert (= (and d!650377 (not res!934782)) b!2172233))

(assert (=> d!650377 m!2612929))

(assert (=> d!650377 m!2612929))

(declare-fun m!2613491 () Bool)

(assert (=> d!650377 m!2613491))

(declare-fun m!2613493 () Bool)

(assert (=> d!650377 m!2613493))

(assert (=> b!2172232 m!2612929))

(assert (=> b!2172233 m!2612869))

(assert (=> b!2172233 m!2612869))

(declare-fun m!2613495 () Bool)

(assert (=> b!2172233 m!2613495))

(assert (=> b!2172233 m!2613495))

(declare-fun m!2613497 () Bool)

(assert (=> b!2172233 m!2613497))

(assert (=> b!2172233 m!2613497))

(declare-fun m!2613499 () Bool)

(assert (=> b!2172233 m!2613499))

(assert (=> b!2171632 d!650377))

(declare-fun b!2172236 () Bool)

(declare-fun e!1389153 () Bool)

(assert (=> b!2172236 (= e!1389153 (isPrefix!2135 (tail!3122 (_1!14846 lt!809102)) (tail!3122 lt!809116)))))

(declare-fun b!2172237 () Bool)

(declare-fun e!1389154 () Bool)

(assert (=> b!2172237 (= e!1389154 (>= (size!19675 lt!809116) (size!19675 (_1!14846 lt!809102))))))

(declare-fun b!2172235 () Bool)

(declare-fun res!934784 () Bool)

(assert (=> b!2172235 (=> (not res!934784) (not e!1389153))))

(assert (=> b!2172235 (= res!934784 (= (head!4650 (_1!14846 lt!809102)) (head!4650 lt!809116)))))

(declare-fun d!650379 () Bool)

(assert (=> d!650379 e!1389154))

(declare-fun res!934787 () Bool)

(assert (=> d!650379 (=> res!934787 e!1389154)))

(declare-fun lt!809392 () Bool)

(assert (=> d!650379 (= res!934787 (not lt!809392))))

(declare-fun e!1389155 () Bool)

(assert (=> d!650379 (= lt!809392 e!1389155)))

(declare-fun res!934785 () Bool)

(assert (=> d!650379 (=> res!934785 e!1389155)))

(assert (=> d!650379 (= res!934785 ((_ is Nil!25186) (_1!14846 lt!809102)))))

(assert (=> d!650379 (= (isPrefix!2135 (_1!14846 lt!809102) lt!809116) lt!809392)))

(declare-fun b!2172234 () Bool)

(assert (=> b!2172234 (= e!1389155 e!1389153)))

(declare-fun res!934786 () Bool)

(assert (=> b!2172234 (=> (not res!934786) (not e!1389153))))

(assert (=> b!2172234 (= res!934786 (not ((_ is Nil!25186) lt!809116)))))

(assert (= (and d!650379 (not res!934785)) b!2172234))

(assert (= (and b!2172234 res!934786) b!2172235))

(assert (= (and b!2172235 res!934784) b!2172236))

(assert (= (and d!650379 (not res!934787)) b!2172237))

(assert (=> b!2172236 m!2613239))

(declare-fun m!2613501 () Bool)

(assert (=> b!2172236 m!2613501))

(assert (=> b!2172236 m!2613239))

(assert (=> b!2172236 m!2613501))

(declare-fun m!2613503 () Bool)

(assert (=> b!2172236 m!2613503))

(declare-fun m!2613505 () Bool)

(assert (=> b!2172237 m!2613505))

(assert (=> b!2172237 m!2612891))

(assert (=> b!2172235 m!2613235))

(declare-fun m!2613507 () Bool)

(assert (=> b!2172235 m!2613507))

(assert (=> b!2171632 d!650379))

(declare-fun d!650381 () Bool)

(assert (=> d!650381 (isPrefix!2135 lt!809118 (++!6378 lt!809118 lt!809093))))

(declare-fun lt!809395 () Unit!38245)

(declare-fun choose!12801 (List!25270 List!25270) Unit!38245)

(assert (=> d!650381 (= lt!809395 (choose!12801 lt!809118 lt!809093))))

(assert (=> d!650381 (= (lemmaConcatTwoListThenFirstIsPrefix!1418 lt!809118 lt!809093) lt!809395)))

(declare-fun bs!446972 () Bool)

(assert (= bs!446972 d!650381))

(assert (=> bs!446972 m!2612933))

(assert (=> bs!446972 m!2612933))

(declare-fun m!2613509 () Bool)

(assert (=> bs!446972 m!2613509))

(declare-fun m!2613511 () Bool)

(assert (=> bs!446972 m!2613511))

(assert (=> b!2171632 d!650381))

(declare-fun d!650383 () Bool)

(declare-fun lt!809396 () Int)

(assert (=> d!650383 (>= lt!809396 0)))

(declare-fun e!1389156 () Int)

(assert (=> d!650383 (= lt!809396 e!1389156)))

(declare-fun c!344306 () Bool)

(assert (=> d!650383 (= c!344306 ((_ is Nil!25186) lt!809109))))

(assert (=> d!650383 (= (size!19675 lt!809109) lt!809396)))

(declare-fun b!2172238 () Bool)

(assert (=> b!2172238 (= e!1389156 0)))

(declare-fun b!2172239 () Bool)

(assert (=> b!2172239 (= e!1389156 (+ 1 (size!19675 (t!197838 lt!809109))))))

(assert (= (and d!650383 c!344306) b!2172238))

(assert (= (and d!650383 (not c!344306)) b!2172239))

(declare-fun m!2613513 () Bool)

(assert (=> b!2172239 m!2613513))

(assert (=> b!2171632 d!650383))

(declare-fun d!650385 () Bool)

(assert (=> d!650385 (isPrefix!2135 (_1!14846 lt!809102) (++!6378 (_1!14846 lt!809102) (_2!14846 lt!809102)))))

(declare-fun lt!809397 () Unit!38245)

(assert (=> d!650385 (= lt!809397 (choose!12801 (_1!14846 lt!809102) (_2!14846 lt!809102)))))

(assert (=> d!650385 (= (lemmaConcatTwoListThenFirstIsPrefix!1418 (_1!14846 lt!809102) (_2!14846 lt!809102)) lt!809397)))

(declare-fun bs!446973 () Bool)

(assert (= bs!446973 d!650385))

(assert (=> bs!446973 m!2612873))

(assert (=> bs!446973 m!2612873))

(declare-fun m!2613515 () Bool)

(assert (=> bs!446973 m!2613515))

(declare-fun m!2613517 () Bool)

(assert (=> bs!446973 m!2613517))

(assert (=> b!2171632 d!650385))

(declare-fun b!2172242 () Bool)

(declare-fun e!1389157 () Bool)

(assert (=> b!2172242 (= e!1389157 (isPrefix!2135 (tail!3122 (take!227 lt!809113 lt!809106)) (tail!3122 lt!809113)))))

(declare-fun b!2172243 () Bool)

(declare-fun e!1389158 () Bool)

(assert (=> b!2172243 (= e!1389158 (>= (size!19675 lt!809113) (size!19675 (take!227 lt!809113 lt!809106))))))

(declare-fun b!2172241 () Bool)

(declare-fun res!934788 () Bool)

(assert (=> b!2172241 (=> (not res!934788) (not e!1389157))))

(assert (=> b!2172241 (= res!934788 (= (head!4650 (take!227 lt!809113 lt!809106)) (head!4650 lt!809113)))))

(declare-fun d!650387 () Bool)

(assert (=> d!650387 e!1389158))

(declare-fun res!934791 () Bool)

(assert (=> d!650387 (=> res!934791 e!1389158)))

(declare-fun lt!809398 () Bool)

(assert (=> d!650387 (= res!934791 (not lt!809398))))

(declare-fun e!1389159 () Bool)

(assert (=> d!650387 (= lt!809398 e!1389159)))

(declare-fun res!934789 () Bool)

(assert (=> d!650387 (=> res!934789 e!1389159)))

(assert (=> d!650387 (= res!934789 ((_ is Nil!25186) (take!227 lt!809113 lt!809106)))))

(assert (=> d!650387 (= (isPrefix!2135 (take!227 lt!809113 lt!809106) lt!809113) lt!809398)))

(declare-fun b!2172240 () Bool)

(assert (=> b!2172240 (= e!1389159 e!1389157)))

(declare-fun res!934790 () Bool)

(assert (=> b!2172240 (=> (not res!934790) (not e!1389157))))

(assert (=> b!2172240 (= res!934790 (not ((_ is Nil!25186) lt!809113)))))

(assert (= (and d!650387 (not res!934789)) b!2172240))

(assert (= (and b!2172240 res!934790) b!2172241))

(assert (= (and b!2172241 res!934788) b!2172242))

(assert (= (and d!650387 (not res!934791)) b!2172243))

(assert (=> b!2172242 m!2612913))

(declare-fun m!2613519 () Bool)

(assert (=> b!2172242 m!2613519))

(declare-fun m!2613521 () Bool)

(assert (=> b!2172242 m!2613521))

(assert (=> b!2172242 m!2613519))

(assert (=> b!2172242 m!2613521))

(declare-fun m!2613523 () Bool)

(assert (=> b!2172242 m!2613523))

(assert (=> b!2172243 m!2613397))

(assert (=> b!2172243 m!2612913))

(declare-fun m!2613525 () Bool)

(assert (=> b!2172243 m!2613525))

(assert (=> b!2172241 m!2612913))

(declare-fun m!2613527 () Bool)

(assert (=> b!2172241 m!2613527))

(declare-fun m!2613529 () Bool)

(assert (=> b!2172241 m!2613529))

(assert (=> b!2171632 d!650387))

(declare-fun d!650389 () Bool)

(assert (=> d!650389 (isPrefix!2135 (take!227 lt!809113 lt!809106) lt!809113)))

(declare-fun lt!809401 () Unit!38245)

(declare-fun choose!12802 (List!25270 Int) Unit!38245)

(assert (=> d!650389 (= lt!809401 (choose!12802 lt!809113 lt!809106))))

(assert (=> d!650389 (>= lt!809106 0)))

(assert (=> d!650389 (= (lemmaTakeIsPrefix!50 lt!809113 lt!809106) lt!809401)))

(declare-fun bs!446974 () Bool)

(assert (= bs!446974 d!650389))

(assert (=> bs!446974 m!2612913))

(assert (=> bs!446974 m!2612913))

(assert (=> bs!446974 m!2612917))

(declare-fun m!2613531 () Bool)

(assert (=> bs!446974 m!2613531))

(assert (=> b!2171632 d!650389))

(declare-fun b!2172254 () Bool)

(declare-fun e!1389167 () Bool)

(declare-fun lostCauseZipper!159 ((InoxSet Context!3178)) Bool)

(assert (=> b!2172254 (= e!1389167 (lostCauseZipper!159 z!4055))))

(declare-fun d!650391 () Bool)

(declare-fun lt!809406 () Int)

(assert (=> d!650391 (and (>= lt!809406 (- 1)) (< lt!809406 lt!809101) (>= lt!809406 lt!809117) (or (= lt!809406 lt!809117) (>= lt!809406 lt!809106)))))

(declare-fun e!1389166 () Int)

(assert (=> d!650391 (= lt!809406 e!1389166)))

(declare-fun c!344312 () Bool)

(assert (=> d!650391 (= c!344312 e!1389167)))

(declare-fun res!934794 () Bool)

(assert (=> d!650391 (=> res!934794 e!1389167)))

(assert (=> d!650391 (= res!934794 (= lt!809106 lt!809101))))

(assert (=> d!650391 (and (>= lt!809106 0) (<= lt!809106 lt!809101))))

(assert (=> d!650391 (= (furthestNullablePosition!201 z!4055 lt!809106 totalInput!977 lt!809101 lt!809117) lt!809406)))

(declare-fun e!1389168 () Int)

(declare-fun lt!809407 () (InoxSet Context!3178))

(declare-fun b!2172255 () Bool)

(assert (=> b!2172255 (= e!1389166 (furthestNullablePosition!201 lt!809407 (+ lt!809106 1) totalInput!977 lt!809101 e!1389168))))

(declare-fun apply!6068 (BalanceConc!16072 Int) C!12184)

(assert (=> b!2172255 (= lt!809407 (derivationStepZipper!126 z!4055 (apply!6068 totalInput!977 lt!809106)))))

(declare-fun c!344311 () Bool)

(assert (=> b!2172255 (= c!344311 (nullableZipper!299 lt!809407))))

(declare-fun b!2172256 () Bool)

(assert (=> b!2172256 (= e!1389168 lt!809106)))

(declare-fun b!2172257 () Bool)

(assert (=> b!2172257 (= e!1389166 lt!809117)))

(declare-fun b!2172258 () Bool)

(assert (=> b!2172258 (= e!1389168 lt!809117)))

(assert (= (and d!650391 (not res!934794)) b!2172254))

(assert (= (and d!650391 c!344312) b!2172257))

(assert (= (and d!650391 (not c!344312)) b!2172255))

(assert (= (and b!2172255 c!344311) b!2172256))

(assert (= (and b!2172255 (not c!344311)) b!2172258))

(declare-fun m!2613533 () Bool)

(assert (=> b!2172254 m!2613533))

(declare-fun m!2613535 () Bool)

(assert (=> b!2172255 m!2613535))

(declare-fun m!2613537 () Bool)

(assert (=> b!2172255 m!2613537))

(assert (=> b!2172255 m!2613537))

(declare-fun m!2613539 () Bool)

(assert (=> b!2172255 m!2613539))

(declare-fun m!2613541 () Bool)

(assert (=> b!2172255 m!2613541))

(assert (=> b!2171632 d!650391))

(declare-fun b!2172259 () Bool)

(declare-fun e!1389172 () Bool)

(declare-fun lt!809408 () List!25270)

(declare-fun e!1389169 () Int)

(assert (=> b!2172259 (= e!1389172 (= (size!19675 lt!809408) e!1389169))))

(declare-fun c!344313 () Bool)

(assert (=> b!2172259 (= c!344313 (<= lt!809106 0))))

(declare-fun b!2172260 () Bool)

(assert (=> b!2172260 (= e!1389169 0)))

(declare-fun b!2172261 () Bool)

(declare-fun e!1389170 () List!25270)

(assert (=> b!2172261 (= e!1389170 (Cons!25186 (h!30587 lt!809113) (take!227 (t!197838 lt!809113) (- lt!809106 1))))))

(declare-fun b!2172262 () Bool)

(declare-fun e!1389171 () Int)

(assert (=> b!2172262 (= e!1389171 (size!19675 lt!809113))))

(declare-fun b!2172263 () Bool)

(assert (=> b!2172263 (= e!1389171 lt!809106)))

(declare-fun b!2172264 () Bool)

(assert (=> b!2172264 (= e!1389169 e!1389171)))

(declare-fun c!344314 () Bool)

(assert (=> b!2172264 (= c!344314 (>= lt!809106 (size!19675 lt!809113)))))

(declare-fun b!2172265 () Bool)

(assert (=> b!2172265 (= e!1389170 Nil!25186)))

(declare-fun d!650393 () Bool)

(assert (=> d!650393 e!1389172))

(declare-fun res!934795 () Bool)

(assert (=> d!650393 (=> (not res!934795) (not e!1389172))))

(assert (=> d!650393 (= res!934795 (= ((_ map implies) (content!3419 lt!809408) (content!3419 lt!809113)) ((as const (InoxSet C!12184)) true)))))

(assert (=> d!650393 (= lt!809408 e!1389170)))

(declare-fun c!344315 () Bool)

(assert (=> d!650393 (= c!344315 (or ((_ is Nil!25186) lt!809113) (<= lt!809106 0)))))

(assert (=> d!650393 (= (take!227 lt!809113 lt!809106) lt!809408)))

(assert (= (and d!650393 c!344315) b!2172265))

(assert (= (and d!650393 (not c!344315)) b!2172261))

(assert (= (and d!650393 res!934795) b!2172259))

(assert (= (and b!2172259 c!344313) b!2172260))

(assert (= (and b!2172259 (not c!344313)) b!2172264))

(assert (= (and b!2172264 c!344314) b!2172262))

(assert (= (and b!2172264 (not c!344314)) b!2172263))

(assert (=> b!2172262 m!2613397))

(declare-fun m!2613543 () Bool)

(assert (=> b!2172261 m!2613543))

(declare-fun m!2613545 () Bool)

(assert (=> d!650393 m!2613545))

(assert (=> d!650393 m!2613403))

(declare-fun m!2613547 () Bool)

(assert (=> b!2172259 m!2613547))

(assert (=> b!2172264 m!2613397))

(assert (=> b!2171632 d!650393))

(declare-fun b!2172294 () Bool)

(declare-fun c!344328 () Bool)

(declare-fun call!130329 () Bool)

(assert (=> b!2172294 (= c!344328 call!130329)))

(declare-fun lt!809472 () Unit!38245)

(declare-fun lt!809476 () Unit!38245)

(assert (=> b!2172294 (= lt!809472 lt!809476)))

(declare-fun lt!809469 () C!12184)

(declare-fun lt!809473 () List!25270)

(assert (=> b!2172294 (= (++!6378 (++!6378 Nil!25186 (Cons!25186 lt!809469 Nil!25186)) lt!809473) lt!809109)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!507 (List!25270 C!12184 List!25270 List!25270) Unit!38245)

(assert (=> b!2172294 (= lt!809476 (lemmaMoveElementToOtherListKeepsConcatEq!507 Nil!25186 lt!809469 lt!809473 lt!809109))))

(assert (=> b!2172294 (= lt!809473 (tail!3122 lt!809109))))

(assert (=> b!2172294 (= lt!809469 (head!4650 lt!809109))))

(declare-fun lt!809477 () Unit!38245)

(declare-fun lt!809466 () Unit!38245)

(assert (=> b!2172294 (= lt!809477 lt!809466)))

(declare-fun getSuffix!1034 (List!25270 List!25270) List!25270)

(assert (=> b!2172294 (isPrefix!2135 (++!6378 Nil!25186 (Cons!25186 (head!4650 (getSuffix!1034 lt!809109 Nil!25186)) Nil!25186)) lt!809109)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!379 (List!25270 List!25270) Unit!38245)

(assert (=> b!2172294 (= lt!809466 (lemmaAddHeadSuffixToPrefixStillPrefix!379 Nil!25186 lt!809109))))

(declare-fun lt!809483 () Unit!38245)

(declare-fun lt!809480 () Unit!38245)

(assert (=> b!2172294 (= lt!809483 lt!809480)))

(assert (=> b!2172294 (= lt!809480 (lemmaAddHeadSuffixToPrefixStillPrefix!379 Nil!25186 lt!809109))))

(declare-fun lt!809490 () List!25270)

(assert (=> b!2172294 (= lt!809490 (++!6378 Nil!25186 (Cons!25186 (head!4650 lt!809109) Nil!25186)))))

(declare-fun lt!809485 () Unit!38245)

(declare-fun e!1389194 () Unit!38245)

(assert (=> b!2172294 (= lt!809485 e!1389194)))

(declare-fun c!344333 () Bool)

(assert (=> b!2172294 (= c!344333 (= (size!19675 Nil!25186) (size!19675 lt!809109)))))

(declare-fun lt!809467 () Unit!38245)

(declare-fun lt!809488 () Unit!38245)

(assert (=> b!2172294 (= lt!809467 lt!809488)))

(assert (=> b!2172294 (<= (size!19675 Nil!25186) (size!19675 lt!809109))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!182 (List!25270 List!25270) Unit!38245)

(assert (=> b!2172294 (= lt!809488 (lemmaIsPrefixThenSmallerEqSize!182 Nil!25186 lt!809109))))

(declare-fun e!1389196 () tuple2!24952)

(declare-fun e!1389189 () tuple2!24952)

(assert (=> b!2172294 (= e!1389196 e!1389189)))

(declare-fun bm!130324 () Bool)

(declare-fun call!130331 () Unit!38245)

(declare-fun lemmaIsPrefixSameLengthThenSameList!351 (List!25270 List!25270 List!25270) Unit!38245)

(assert (=> bm!130324 (= call!130331 (lemmaIsPrefixSameLengthThenSameList!351 lt!809109 Nil!25186 lt!809109))))

(declare-fun bm!130325 () Bool)

(declare-fun call!130335 () Unit!38245)

(declare-fun lemmaIsPrefixRefl!1409 (List!25270 List!25270) Unit!38245)

(assert (=> bm!130325 (= call!130335 (lemmaIsPrefixRefl!1409 lt!809109 lt!809109))))

(declare-fun bm!130326 () Bool)

(declare-fun call!130332 () Bool)

(assert (=> bm!130326 (= call!130332 (isPrefix!2135 lt!809109 lt!809109))))

(declare-fun b!2172295 () Bool)

(declare-fun e!1389190 () tuple2!24952)

(assert (=> b!2172295 (= e!1389189 e!1389190)))

(declare-fun lt!809487 () tuple2!24952)

(declare-fun call!130334 () tuple2!24952)

(assert (=> b!2172295 (= lt!809487 call!130334)))

(declare-fun c!344330 () Bool)

(assert (=> b!2172295 (= c!344330 (isEmpty!14446 (_1!14846 lt!809487)))))

(declare-fun b!2172296 () Bool)

(assert (=> b!2172296 (= e!1389189 call!130334)))

(declare-fun b!2172298 () Bool)

(declare-fun e!1389193 () tuple2!24952)

(assert (=> b!2172298 (= e!1389193 e!1389196)))

(declare-fun c!344331 () Bool)

(assert (=> b!2172298 (= c!344331 (= (size!19675 Nil!25186) (size!19675 lt!809109)))))

(declare-fun b!2172299 () Bool)

(declare-fun e!1389191 () tuple2!24952)

(assert (=> b!2172299 (= e!1389191 (tuple2!24953 Nil!25186 lt!809109))))

(declare-fun b!2172300 () Bool)

(declare-fun e!1389192 () Bool)

(declare-fun e!1389195 () Bool)

(assert (=> b!2172300 (= e!1389192 e!1389195)))

(declare-fun res!934801 () Bool)

(assert (=> b!2172300 (=> res!934801 e!1389195)))

(declare-fun lt!809486 () tuple2!24952)

(assert (=> b!2172300 (= res!934801 (isEmpty!14446 (_1!14846 lt!809486)))))

(declare-fun b!2172301 () Bool)

(assert (=> b!2172301 (= e!1389193 (tuple2!24953 Nil!25186 lt!809109))))

(declare-fun call!130330 () Regex!6019)

(declare-fun call!130333 () List!25270)

(declare-fun bm!130327 () Bool)

(assert (=> bm!130327 (= call!130334 (findLongestMatchInner!644 call!130330 lt!809490 (+ (size!19675 Nil!25186) 1) call!130333 lt!809109 (size!19675 lt!809109)))))

(declare-fun b!2172302 () Bool)

(assert (=> b!2172302 (= e!1389191 (tuple2!24953 Nil!25186 Nil!25186))))

(declare-fun b!2172303 () Bool)

(declare-fun Unit!38250 () Unit!38245)

(assert (=> b!2172303 (= e!1389194 Unit!38250)))

(declare-fun lt!809479 () Unit!38245)

(assert (=> b!2172303 (= lt!809479 call!130335)))

(assert (=> b!2172303 call!130332))

(declare-fun lt!809475 () Unit!38245)

(assert (=> b!2172303 (= lt!809475 lt!809479)))

(declare-fun lt!809470 () Unit!38245)

(assert (=> b!2172303 (= lt!809470 call!130331)))

(assert (=> b!2172303 (= lt!809109 Nil!25186)))

(declare-fun lt!809474 () Unit!38245)

(assert (=> b!2172303 (= lt!809474 lt!809470)))

(assert (=> b!2172303 false))

(declare-fun bm!130328 () Bool)

(assert (=> bm!130328 (= call!130329 (nullable!1697 r!12534))))

(declare-fun bm!130329 () Bool)

(assert (=> bm!130329 (= call!130333 (tail!3122 lt!809109))))

(declare-fun b!2172297 () Bool)

(assert (=> b!2172297 (= e!1389190 (tuple2!24953 Nil!25186 lt!809109))))

(declare-fun d!650395 () Bool)

(assert (=> d!650395 e!1389192))

(declare-fun res!934800 () Bool)

(assert (=> d!650395 (=> (not res!934800) (not e!1389192))))

(assert (=> d!650395 (= res!934800 (= (++!6378 (_1!14846 lt!809486) (_2!14846 lt!809486)) lt!809109))))

(assert (=> d!650395 (= lt!809486 e!1389193)))

(declare-fun c!344329 () Bool)

(declare-fun lostCause!669 (Regex!6019) Bool)

(assert (=> d!650395 (= c!344329 (lostCause!669 r!12534))))

(declare-fun lt!809468 () Unit!38245)

(declare-fun Unit!38251 () Unit!38245)

(assert (=> d!650395 (= lt!809468 Unit!38251)))

(assert (=> d!650395 (= (getSuffix!1034 lt!809109 Nil!25186) lt!809109)))

(declare-fun lt!809465 () Unit!38245)

(declare-fun lt!809492 () Unit!38245)

(assert (=> d!650395 (= lt!809465 lt!809492)))

(declare-fun lt!809491 () List!25270)

(assert (=> d!650395 (= lt!809109 lt!809491)))

(declare-fun lemmaSamePrefixThenSameSuffix!956 (List!25270 List!25270 List!25270 List!25270 List!25270) Unit!38245)

(assert (=> d!650395 (= lt!809492 (lemmaSamePrefixThenSameSuffix!956 Nil!25186 lt!809109 Nil!25186 lt!809491 lt!809109))))

(assert (=> d!650395 (= lt!809491 (getSuffix!1034 lt!809109 Nil!25186))))

(declare-fun lt!809478 () Unit!38245)

(declare-fun lt!809482 () Unit!38245)

(assert (=> d!650395 (= lt!809478 lt!809482)))

(assert (=> d!650395 (isPrefix!2135 Nil!25186 (++!6378 Nil!25186 lt!809109))))

(assert (=> d!650395 (= lt!809482 (lemmaConcatTwoListThenFirstIsPrefix!1418 Nil!25186 lt!809109))))

(assert (=> d!650395 (validRegex!2295 r!12534)))

(assert (=> d!650395 (= (findLongestMatchInner!644 r!12534 Nil!25186 (size!19675 Nil!25186) lt!809109 lt!809109 (size!19675 lt!809109)) lt!809486)))

(declare-fun bm!130330 () Bool)

(declare-fun call!130336 () C!12184)

(assert (=> bm!130330 (= call!130336 (head!4650 lt!809109))))

(declare-fun b!2172304 () Bool)

(declare-fun Unit!38252 () Unit!38245)

(assert (=> b!2172304 (= e!1389194 Unit!38252)))

(declare-fun b!2172305 () Bool)

(declare-fun c!344332 () Bool)

(assert (=> b!2172305 (= c!344332 call!130329)))

(declare-fun lt!809484 () Unit!38245)

(declare-fun lt!809489 () Unit!38245)

(assert (=> b!2172305 (= lt!809484 lt!809489)))

(assert (=> b!2172305 (= lt!809109 Nil!25186)))

(assert (=> b!2172305 (= lt!809489 call!130331)))

(declare-fun lt!809471 () Unit!38245)

(declare-fun lt!809481 () Unit!38245)

(assert (=> b!2172305 (= lt!809471 lt!809481)))

(assert (=> b!2172305 call!130332))

(assert (=> b!2172305 (= lt!809481 call!130335)))

(assert (=> b!2172305 (= e!1389196 e!1389191)))

(declare-fun b!2172306 () Bool)

(assert (=> b!2172306 (= e!1389190 lt!809487)))

(declare-fun b!2172307 () Bool)

(assert (=> b!2172307 (= e!1389195 (>= (size!19675 (_1!14846 lt!809486)) (size!19675 Nil!25186)))))

(declare-fun bm!130331 () Bool)

(assert (=> bm!130331 (= call!130330 (derivativeStep!1440 r!12534 call!130336))))

(assert (= (and d!650395 c!344329) b!2172301))

(assert (= (and d!650395 (not c!344329)) b!2172298))

(assert (= (and b!2172298 c!344331) b!2172305))

(assert (= (and b!2172298 (not c!344331)) b!2172294))

(assert (= (and b!2172305 c!344332) b!2172302))

(assert (= (and b!2172305 (not c!344332)) b!2172299))

(assert (= (and b!2172294 c!344333) b!2172303))

(assert (= (and b!2172294 (not c!344333)) b!2172304))

(assert (= (and b!2172294 c!344328) b!2172295))

(assert (= (and b!2172294 (not c!344328)) b!2172296))

(assert (= (and b!2172295 c!344330) b!2172297))

(assert (= (and b!2172295 (not c!344330)) b!2172306))

(assert (= (or b!2172295 b!2172296) bm!130330))

(assert (= (or b!2172295 b!2172296) bm!130329))

(assert (= (or b!2172295 b!2172296) bm!130331))

(assert (= (or b!2172295 b!2172296) bm!130327))

(assert (= (or b!2172305 b!2172303) bm!130326))

(assert (= (or b!2172305 b!2172303) bm!130325))

(assert (= (or b!2172305 b!2172303) bm!130324))

(assert (= (or b!2172305 b!2172294) bm!130328))

(assert (= (and d!650395 res!934800) b!2172300))

(assert (= (and b!2172300 (not res!934801)) b!2172307))

(declare-fun m!2613549 () Bool)

(assert (=> bm!130325 m!2613549))

(declare-fun m!2613551 () Bool)

(assert (=> bm!130324 m!2613551))

(assert (=> bm!130327 m!2612905))

(declare-fun m!2613553 () Bool)

(assert (=> bm!130327 m!2613553))

(declare-fun m!2613555 () Bool)

(assert (=> b!2172307 m!2613555))

(assert (=> b!2172307 m!2612923))

(declare-fun m!2613557 () Bool)

(assert (=> bm!130331 m!2613557))

(assert (=> bm!130328 m!2613157))

(declare-fun m!2613559 () Bool)

(assert (=> b!2172295 m!2613559))

(declare-fun m!2613561 () Bool)

(assert (=> bm!130330 m!2613561))

(declare-fun m!2613563 () Bool)

(assert (=> bm!130329 m!2613563))

(declare-fun m!2613565 () Bool)

(assert (=> b!2172294 m!2613565))

(assert (=> b!2172294 m!2613561))

(declare-fun m!2613567 () Bool)

(assert (=> b!2172294 m!2613567))

(assert (=> b!2172294 m!2612905))

(assert (=> b!2172294 m!2613567))

(declare-fun m!2613569 () Bool)

(assert (=> b!2172294 m!2613569))

(declare-fun m!2613571 () Bool)

(assert (=> b!2172294 m!2613571))

(assert (=> b!2172294 m!2612923))

(declare-fun m!2613573 () Bool)

(assert (=> b!2172294 m!2613573))

(declare-fun m!2613575 () Bool)

(assert (=> b!2172294 m!2613575))

(declare-fun m!2613577 () Bool)

(assert (=> b!2172294 m!2613577))

(assert (=> b!2172294 m!2613577))

(declare-fun m!2613579 () Bool)

(assert (=> b!2172294 m!2613579))

(assert (=> b!2172294 m!2613563))

(assert (=> b!2172294 m!2613575))

(declare-fun m!2613581 () Bool)

(assert (=> b!2172294 m!2613581))

(declare-fun m!2613583 () Bool)

(assert (=> b!2172294 m!2613583))

(declare-fun m!2613585 () Bool)

(assert (=> b!2172300 m!2613585))

(declare-fun m!2613587 () Bool)

(assert (=> d!650395 m!2613587))

(declare-fun m!2613589 () Bool)

(assert (=> d!650395 m!2613589))

(assert (=> d!650395 m!2612861))

(assert (=> d!650395 m!2613577))

(declare-fun m!2613591 () Bool)

(assert (=> d!650395 m!2613591))

(declare-fun m!2613593 () Bool)

(assert (=> d!650395 m!2613593))

(declare-fun m!2613595 () Bool)

(assert (=> d!650395 m!2613595))

(declare-fun m!2613597 () Bool)

(assert (=> d!650395 m!2613597))

(assert (=> d!650395 m!2613595))

(declare-fun m!2613599 () Bool)

(assert (=> bm!130326 m!2613599))

(assert (=> b!2171632 d!650395))

(declare-fun d!650397 () Bool)

(declare-fun lambda!81811 () Int)

(declare-fun exists!760 ((InoxSet Context!3178) Int) Bool)

(assert (=> d!650397 (= (nullableZipper!299 z!4055) (exists!760 z!4055 lambda!81811))))

(declare-fun bs!446975 () Bool)

(assert (= bs!446975 d!650397))

(declare-fun m!2613601 () Bool)

(assert (=> bs!446975 m!2613601))

(assert (=> b!2171632 d!650397))

(declare-fun d!650399 () Bool)

(declare-fun c!344336 () Bool)

(assert (=> d!650399 (= c!344336 (isEmpty!14446 lt!809118))))

(declare-fun e!1389197 () Bool)

(assert (=> d!650399 (= (matchZipper!135 z!4055 lt!809118) e!1389197)))

(declare-fun b!2172308 () Bool)

(assert (=> b!2172308 (= e!1389197 (nullableZipper!299 z!4055))))

(declare-fun b!2172309 () Bool)

(assert (=> b!2172309 (= e!1389197 (matchZipper!135 (derivationStepZipper!126 z!4055 (head!4650 lt!809118)) (tail!3122 lt!809118)))))

(assert (= (and d!650399 c!344336) b!2172308))

(assert (= (and d!650399 (not c!344336)) b!2172309))

(assert (=> d!650399 m!2613263))

(assert (=> b!2172308 m!2612903))

(assert (=> b!2172309 m!2613265))

(assert (=> b!2172309 m!2613265))

(declare-fun m!2613603 () Bool)

(assert (=> b!2172309 m!2613603))

(assert (=> b!2172309 m!2613269))

(assert (=> b!2172309 m!2613603))

(assert (=> b!2172309 m!2613269))

(declare-fun m!2613605 () Bool)

(assert (=> b!2172309 m!2613605))

(assert (=> b!2171632 d!650399))

(declare-fun d!650401 () Bool)

(declare-fun lt!809495 () Bool)

(assert (=> d!650401 (= lt!809495 (isEmpty!14446 (list!9656 (_1!14845 lt!809105))))))

(declare-fun isEmpty!14448 (Conc!8155) Bool)

(assert (=> d!650401 (= lt!809495 (isEmpty!14448 (c!344140 (_1!14845 lt!809105))))))

(assert (=> d!650401 (= (isEmpty!14445 (_1!14845 lt!809105)) lt!809495)))

(declare-fun bs!446976 () Bool)

(assert (= bs!446976 d!650401))

(assert (=> bs!446976 m!2612937))

(assert (=> bs!446976 m!2612937))

(declare-fun m!2613607 () Bool)

(assert (=> bs!446976 m!2613607))

(declare-fun m!2613609 () Bool)

(assert (=> bs!446976 m!2613609))

(assert (=> b!2171621 d!650401))

(declare-fun d!650403 () Bool)

(declare-fun e!1389200 () Bool)

(assert (=> d!650403 e!1389200))

(declare-fun res!934804 () Bool)

(assert (=> d!650403 (=> res!934804 e!1389200)))

(declare-fun lt!809498 () Bool)

(assert (=> d!650403 (= res!934804 (not lt!809498))))

(assert (=> d!650403 (= lt!809498 (= lt!809109 (drop!1237 lt!809113 (- (size!19675 lt!809113) (size!19675 lt!809109)))))))

(assert (=> d!650403 (= (isSuffix!686 lt!809109 lt!809113) lt!809498)))

(declare-fun b!2172312 () Bool)

(assert (=> b!2172312 (= e!1389200 (>= (size!19675 lt!809113) (size!19675 lt!809109)))))

(assert (= (and d!650403 (not res!934804)) b!2172312))

(assert (=> d!650403 m!2613397))

(assert (=> d!650403 m!2612905))

(declare-fun m!2613611 () Bool)

(assert (=> d!650403 m!2613611))

(assert (=> b!2172312 m!2613397))

(assert (=> b!2172312 m!2612905))

(assert (=> b!2171630 d!650403))

(declare-fun d!650405 () Bool)

(assert (=> d!650405 (= (list!9656 totalInput!977) (list!9658 (c!344140 totalInput!977)))))

(declare-fun bs!446977 () Bool)

(assert (= bs!446977 d!650405))

(declare-fun m!2613613 () Bool)

(assert (=> bs!446977 m!2613613))

(assert (=> b!2171630 d!650405))

(declare-fun d!650407 () Bool)

(assert (=> d!650407 (= (list!9656 input!5540) (list!9658 (c!344140 input!5540)))))

(declare-fun bs!446978 () Bool)

(assert (= bs!446978 d!650407))

(declare-fun m!2613615 () Bool)

(assert (=> bs!446978 m!2613615))

(assert (=> b!2171630 d!650407))

(declare-fun d!650409 () Bool)

(declare-fun c!344337 () Bool)

(assert (=> d!650409 (= c!344337 ((_ is Node!8155) (c!344140 input!5540)))))

(declare-fun e!1389201 () Bool)

(assert (=> d!650409 (= (inv!33426 (c!344140 input!5540)) e!1389201)))

(declare-fun b!2172313 () Bool)

(assert (=> b!2172313 (= e!1389201 (inv!33431 (c!344140 input!5540)))))

(declare-fun b!2172314 () Bool)

(declare-fun e!1389202 () Bool)

(assert (=> b!2172314 (= e!1389201 e!1389202)))

(declare-fun res!934805 () Bool)

(assert (=> b!2172314 (= res!934805 (not ((_ is Leaf!11932) (c!344140 input!5540))))))

(assert (=> b!2172314 (=> res!934805 e!1389202)))

(declare-fun b!2172315 () Bool)

(assert (=> b!2172315 (= e!1389202 (inv!33432 (c!344140 input!5540)))))

(assert (= (and d!650409 c!344337) b!2172313))

(assert (= (and d!650409 (not c!344337)) b!2172314))

(assert (= (and b!2172314 (not res!934805)) b!2172315))

(declare-fun m!2613617 () Bool)

(assert (=> b!2172313 m!2613617))

(declare-fun m!2613619 () Bool)

(assert (=> b!2172315 m!2613619))

(assert (=> b!2171620 d!650409))

(declare-fun b!2172326 () Bool)

(declare-fun e!1389205 () Bool)

(assert (=> b!2172326 (= e!1389205 tp_is_empty!9645)))

(assert (=> b!2171634 (= tp!678001 e!1389205)))

(declare-fun b!2172328 () Bool)

(declare-fun tp!678076 () Bool)

(assert (=> b!2172328 (= e!1389205 tp!678076)))

(declare-fun b!2172327 () Bool)

(declare-fun tp!678075 () Bool)

(declare-fun tp!678078 () Bool)

(assert (=> b!2172327 (= e!1389205 (and tp!678075 tp!678078))))

(declare-fun b!2172329 () Bool)

(declare-fun tp!678077 () Bool)

(declare-fun tp!678074 () Bool)

(assert (=> b!2172329 (= e!1389205 (and tp!678077 tp!678074))))

(assert (= (and b!2171634 ((_ is ElementMatch!6019) (reg!6348 r!12534))) b!2172326))

(assert (= (and b!2171634 ((_ is Concat!10321) (reg!6348 r!12534))) b!2172327))

(assert (= (and b!2171634 ((_ is Star!6019) (reg!6348 r!12534))) b!2172328))

(assert (= (and b!2171634 ((_ is Union!6019) (reg!6348 r!12534))) b!2172329))

(declare-fun b!2172330 () Bool)

(declare-fun e!1389206 () Bool)

(assert (=> b!2172330 (= e!1389206 tp_is_empty!9645)))

(assert (=> b!2171624 (= tp!677997 e!1389206)))

(declare-fun b!2172332 () Bool)

(declare-fun tp!678081 () Bool)

(assert (=> b!2172332 (= e!1389206 tp!678081)))

(declare-fun b!2172331 () Bool)

(declare-fun tp!678080 () Bool)

(declare-fun tp!678083 () Bool)

(assert (=> b!2172331 (= e!1389206 (and tp!678080 tp!678083))))

(declare-fun b!2172333 () Bool)

(declare-fun tp!678082 () Bool)

(declare-fun tp!678079 () Bool)

(assert (=> b!2172333 (= e!1389206 (and tp!678082 tp!678079))))

(assert (= (and b!2171624 ((_ is ElementMatch!6019) (regOne!12550 r!12534))) b!2172330))

(assert (= (and b!2171624 ((_ is Concat!10321) (regOne!12550 r!12534))) b!2172331))

(assert (= (and b!2171624 ((_ is Star!6019) (regOne!12550 r!12534))) b!2172332))

(assert (= (and b!2171624 ((_ is Union!6019) (regOne!12550 r!12534))) b!2172333))

(declare-fun b!2172334 () Bool)

(declare-fun e!1389207 () Bool)

(assert (=> b!2172334 (= e!1389207 tp_is_empty!9645)))

(assert (=> b!2171624 (= tp!677996 e!1389207)))

(declare-fun b!2172336 () Bool)

(declare-fun tp!678086 () Bool)

(assert (=> b!2172336 (= e!1389207 tp!678086)))

(declare-fun b!2172335 () Bool)

(declare-fun tp!678085 () Bool)

(declare-fun tp!678088 () Bool)

(assert (=> b!2172335 (= e!1389207 (and tp!678085 tp!678088))))

(declare-fun b!2172337 () Bool)

(declare-fun tp!678087 () Bool)

(declare-fun tp!678084 () Bool)

(assert (=> b!2172337 (= e!1389207 (and tp!678087 tp!678084))))

(assert (= (and b!2171624 ((_ is ElementMatch!6019) (regTwo!12550 r!12534))) b!2172334))

(assert (= (and b!2171624 ((_ is Concat!10321) (regTwo!12550 r!12534))) b!2172335))

(assert (= (and b!2171624 ((_ is Star!6019) (regTwo!12550 r!12534))) b!2172336))

(assert (= (and b!2171624 ((_ is Union!6019) (regTwo!12550 r!12534))) b!2172337))

(declare-fun e!1389213 () Bool)

(declare-fun tp!678095 () Bool)

(declare-fun tp!678096 () Bool)

(declare-fun b!2172346 () Bool)

(assert (=> b!2172346 (= e!1389213 (and (inv!33426 (left!19347 (c!344140 totalInput!977))) tp!678096 (inv!33426 (right!19677 (c!344140 totalInput!977))) tp!678095))))

(declare-fun b!2172348 () Bool)

(declare-fun e!1389212 () Bool)

(declare-fun tp!678097 () Bool)

(assert (=> b!2172348 (= e!1389212 tp!678097)))

(declare-fun b!2172347 () Bool)

(declare-fun inv!33434 (IArray!16315) Bool)

(assert (=> b!2172347 (= e!1389213 (and (inv!33434 (xs!11097 (c!344140 totalInput!977))) e!1389212))))

(assert (=> b!2171633 (= tp!678002 (and (inv!33426 (c!344140 totalInput!977)) e!1389213))))

(assert (= (and b!2171633 ((_ is Node!8155) (c!344140 totalInput!977))) b!2172346))

(assert (= b!2172347 b!2172348))

(assert (= (and b!2171633 ((_ is Leaf!11932) (c!344140 totalInput!977))) b!2172347))

(declare-fun m!2613621 () Bool)

(assert (=> b!2172346 m!2613621))

(declare-fun m!2613623 () Bool)

(assert (=> b!2172346 m!2613623))

(declare-fun m!2613625 () Bool)

(assert (=> b!2172347 m!2613625))

(assert (=> b!2171633 m!2612941))

(declare-fun condSetEmpty!18220 () Bool)

(assert (=> setNonEmpty!18214 (= condSetEmpty!18220 (= setRest!18214 ((as const (Array Context!3178 Bool)) false)))))

(declare-fun setRes!18220 () Bool)

(assert (=> setNonEmpty!18214 (= tp!678000 setRes!18220)))

(declare-fun setIsEmpty!18220 () Bool)

(assert (=> setIsEmpty!18220 setRes!18220))

(declare-fun setElem!18220 () Context!3178)

(declare-fun setNonEmpty!18220 () Bool)

(declare-fun tp!678103 () Bool)

(declare-fun e!1389216 () Bool)

(assert (=> setNonEmpty!18220 (= setRes!18220 (and tp!678103 (inv!33428 setElem!18220) e!1389216))))

(declare-fun setRest!18220 () (InoxSet Context!3178))

(assert (=> setNonEmpty!18220 (= setRest!18214 ((_ map or) (store ((as const (Array Context!3178 Bool)) false) setElem!18220 true) setRest!18220))))

(declare-fun b!2172353 () Bool)

(declare-fun tp!678102 () Bool)

(assert (=> b!2172353 (= e!1389216 tp!678102)))

(assert (= (and setNonEmpty!18214 condSetEmpty!18220) setIsEmpty!18220))

(assert (= (and setNonEmpty!18214 (not condSetEmpty!18220)) setNonEmpty!18220))

(assert (= setNonEmpty!18220 b!2172353))

(declare-fun m!2613627 () Bool)

(assert (=> setNonEmpty!18220 m!2613627))

(declare-fun b!2172354 () Bool)

(declare-fun e!1389217 () Bool)

(assert (=> b!2172354 (= e!1389217 tp_is_empty!9645)))

(assert (=> b!2171631 (= tp!677998 e!1389217)))

(declare-fun b!2172356 () Bool)

(declare-fun tp!678106 () Bool)

(assert (=> b!2172356 (= e!1389217 tp!678106)))

(declare-fun b!2172355 () Bool)

(declare-fun tp!678105 () Bool)

(declare-fun tp!678108 () Bool)

(assert (=> b!2172355 (= e!1389217 (and tp!678105 tp!678108))))

(declare-fun b!2172357 () Bool)

(declare-fun tp!678107 () Bool)

(declare-fun tp!678104 () Bool)

(assert (=> b!2172357 (= e!1389217 (and tp!678107 tp!678104))))

(assert (= (and b!2171631 ((_ is ElementMatch!6019) (regOne!12551 r!12534))) b!2172354))

(assert (= (and b!2171631 ((_ is Concat!10321) (regOne!12551 r!12534))) b!2172355))

(assert (= (and b!2171631 ((_ is Star!6019) (regOne!12551 r!12534))) b!2172356))

(assert (= (and b!2171631 ((_ is Union!6019) (regOne!12551 r!12534))) b!2172357))

(declare-fun b!2172358 () Bool)

(declare-fun e!1389218 () Bool)

(assert (=> b!2172358 (= e!1389218 tp_is_empty!9645)))

(assert (=> b!2171631 (= tp!678003 e!1389218)))

(declare-fun b!2172360 () Bool)

(declare-fun tp!678111 () Bool)

(assert (=> b!2172360 (= e!1389218 tp!678111)))

(declare-fun b!2172359 () Bool)

(declare-fun tp!678110 () Bool)

(declare-fun tp!678113 () Bool)

(assert (=> b!2172359 (= e!1389218 (and tp!678110 tp!678113))))

(declare-fun b!2172361 () Bool)

(declare-fun tp!678112 () Bool)

(declare-fun tp!678109 () Bool)

(assert (=> b!2172361 (= e!1389218 (and tp!678112 tp!678109))))

(assert (= (and b!2171631 ((_ is ElementMatch!6019) (regTwo!12551 r!12534))) b!2172358))

(assert (= (and b!2171631 ((_ is Concat!10321) (regTwo!12551 r!12534))) b!2172359))

(assert (= (and b!2171631 ((_ is Star!6019) (regTwo!12551 r!12534))) b!2172360))

(assert (= (and b!2171631 ((_ is Union!6019) (regTwo!12551 r!12534))) b!2172361))

(declare-fun b!2172366 () Bool)

(declare-fun e!1389221 () Bool)

(declare-fun tp!678118 () Bool)

(declare-fun tp!678119 () Bool)

(assert (=> b!2172366 (= e!1389221 (and tp!678118 tp!678119))))

(assert (=> b!2171635 (= tp!678004 e!1389221)))

(assert (= (and b!2171635 ((_ is Cons!25187) (exprs!2089 setElem!18214))) b!2172366))

(declare-fun b!2172367 () Bool)

(declare-fun tp!678120 () Bool)

(declare-fun tp!678121 () Bool)

(declare-fun e!1389223 () Bool)

(assert (=> b!2172367 (= e!1389223 (and (inv!33426 (left!19347 (c!344140 input!5540))) tp!678121 (inv!33426 (right!19677 (c!344140 input!5540))) tp!678120))))

(declare-fun b!2172369 () Bool)

(declare-fun e!1389222 () Bool)

(declare-fun tp!678122 () Bool)

(assert (=> b!2172369 (= e!1389222 tp!678122)))

(declare-fun b!2172368 () Bool)

(assert (=> b!2172368 (= e!1389223 (and (inv!33434 (xs!11097 (c!344140 input!5540))) e!1389222))))

(assert (=> b!2171620 (= tp!677999 (and (inv!33426 (c!344140 input!5540)) e!1389223))))

(assert (= (and b!2171620 ((_ is Node!8155) (c!344140 input!5540))) b!2172367))

(assert (= b!2172368 b!2172369))

(assert (= (and b!2171620 ((_ is Leaf!11932) (c!344140 input!5540))) b!2172368))

(declare-fun m!2613629 () Bool)

(assert (=> b!2172367 m!2613629))

(declare-fun m!2613631 () Bool)

(assert (=> b!2172367 m!2613631))

(declare-fun m!2613633 () Bool)

(assert (=> b!2172368 m!2613633))

(assert (=> b!2171620 m!2612859))

(check-sat (not b!2172327) (not b!2172235) (not d!650323) (not b!2172108) (not b!2172361) (not d!650389) (not b!2171959) (not d!650395) (not d!650313) (not b!2172313) (not d!650295) (not b!2171976) (not bm!130329) (not d!650241) (not b!2172053) (not b!2171620) (not d!650261) (not b!2172356) (not d!650397) (not b!2172111) (not b!2172315) (not bm!130300) (not d!650229) (not bm!130290) (not d!650265) (not b!2172360) (not b!2172309) (not b!2172332) (not bm!130281) (not b!2171842) (not b!2172307) (not b!2172346) (not b!2172366) (not b!2172294) (not d!650303) (not b!2172051) (not b!2172328) (not b!2172367) (not b!2172014) (not b!2171966) (not d!650407) (not b!2172264) (not b!2172369) (not b!2172237) (not d!650381) (not b!2172098) (not b!2172348) (not b!2171946) (not b!2172261) (not b!2171949) (not b!2171945) (not d!650321) (not bm!130328) (not b!2171787) (not b!2171941) (not b!2172368) (not d!650393) (not bm!130331) (not b!2171797) (not bm!130326) (not b!2172329) (not b!2172312) (not b!2172012) (not b!2172353) (not b!2172255) (not b!2171963) (not b!2172232) (not b!2172179) (not b!2172308) (not b!2171982) (not b!2172347) (not b!2171955) (not b!2172357) (not b!2171958) (not d!650403) (not bm!130276) (not d!650339) (not b!2172101) (not bm!130280) (not setNonEmpty!18220) (not b!2171845) (not b!2172243) (not b!2171848) (not bm!130265) (not d!650385) (not b!2172242) (not b!2172106) (not b!2171841) (not b!2172337) (not d!650399) (not bm!130324) (not d!650249) (not bm!130327) (not b!2171633) (not d!650243) (not d!650401) (not b!2172114) (not b!2172262) (not b!2172241) (not d!650325) (not b!2172056) (not d!650231) (not b!2171944) (not b!2172015) (not b!2171840) (not b!2172239) (not b!2172126) (not d!650305) (not b!2172177) (not d!650405) (not b!2172109) (not b!2171975) tp_is_empty!9645 (not d!650319) (not d!650257) (not b!2171786) (not b!2172009) (not bm!130289) (not b!2171806) (not b!2172331) (not b!2171952) (not d!650297) (not b!2172011) (not b!2172359) (not b!2172295) (not b!2172259) (not b!2172335) (not d!650349) (not b!2171837) (not b!2171960) (not d!650345) (not d!650377) (not d!650327) (not b!2172054) (not d!650245) (not b!2171795) (not bm!130325) (not b!2172254) (not b!2172333) (not d!650301) (not d!650247) (not d!650263) (not b!2172300) (not b!2172178) (not b!2172233) (not bm!130330) (not b!2172236) (not b!2172355) (not b!2172336))
(check-sat)
