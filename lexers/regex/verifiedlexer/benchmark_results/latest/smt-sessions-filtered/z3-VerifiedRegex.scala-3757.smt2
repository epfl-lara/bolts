; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209626 () Bool)

(assert start!209626)

(declare-datatypes ((C!12108 0))(
  ( (C!12109 (val!7040 Int)) )
))
(declare-datatypes ((List!25156 0))(
  ( (Nil!25072) (Cons!25072 (h!30473 C!12108) (t!197704 List!25156)) )
))
(declare-fun lt!803995 () List!25156)

(declare-fun e!1382735 () Bool)

(declare-fun lt!804005 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!5981 0))(
  ( (ElementMatch!5981 (c!341946 C!12108)) (Concat!10283 (regOne!12474 Regex!5981) (regTwo!12474 Regex!5981)) (EmptyExpr!5981) (Star!5981 (reg!6310 Regex!5981)) (EmptyLang!5981) (Union!5981 (regOne!12475 Regex!5981) (regTwo!12475 Regex!5981)) )
))
(declare-datatypes ((List!25157 0))(
  ( (Nil!25073) (Cons!25073 (h!30474 Regex!5981) (t!197705 List!25157)) )
))
(declare-datatypes ((Context!3102 0))(
  ( (Context!3103 (exprs!2051 List!25157)) )
))
(declare-fun z!4055 () (InoxSet Context!3102))

(declare-fun lt!803998 () Int)

(declare-fun b!2160894 () Bool)

(declare-fun matchZipper!109 ((InoxSet Context!3102) List!25156) Bool)

(declare-fun take!195 (List!25156 Int) List!25156)

(declare-fun drop!1204 (List!25156 Int) List!25156)

(assert (=> b!2160894 (= e!1382735 (matchZipper!109 z!4055 (take!195 (drop!1204 lt!803995 lt!803998) lt!804005)))))

(declare-fun b!2160895 () Bool)

(declare-fun e!1382733 () Bool)

(declare-datatypes ((IArray!16239 0))(
  ( (IArray!16240 (innerList!8177 List!25156)) )
))
(declare-datatypes ((Conc!8117 0))(
  ( (Node!8117 (left!19286 Conc!8117) (right!19616 Conc!8117) (csize!16464 Int) (cheight!8328 Int)) (Leaf!11875 (xs!11059 IArray!16239) (csize!16465 Int)) (Empty!8117) )
))
(declare-datatypes ((BalanceConc!15996 0))(
  ( (BalanceConc!15997 (c!341947 Conc!8117)) )
))
(declare-fun input!5540 () BalanceConc!15996)

(declare-fun tp!674106 () Bool)

(declare-fun inv!33217 (Conc!8117) Bool)

(assert (=> b!2160895 (= e!1382733 (and (inv!33217 (c!341947 input!5540)) tp!674106))))

(declare-fun b!2160896 () Bool)

(declare-fun e!1382739 () Bool)

(declare-fun tp!674105 () Bool)

(assert (=> b!2160896 (= e!1382739 tp!674105)))

(declare-fun b!2160897 () Bool)

(declare-fun e!1382723 () Bool)

(declare-datatypes ((tuple2!24790 0))(
  ( (tuple2!24791 (_1!14765 List!25156) (_2!14765 List!25156)) )
))
(declare-fun lt!804006 () tuple2!24790)

(declare-fun isEmpty!14377 (List!25156) Bool)

(assert (=> b!2160897 (= e!1382723 (not (isEmpty!14377 (_1!14765 lt!804006))))))

(declare-fun b!2160898 () Bool)

(declare-fun e!1382732 () Bool)

(declare-fun e!1382727 () Bool)

(assert (=> b!2160898 (= e!1382732 e!1382727)))

(declare-fun res!931195 () Bool)

(assert (=> b!2160898 (=> (not res!931195) (not e!1382727))))

(declare-datatypes ((List!25158 0))(
  ( (Nil!25074) (Cons!25074 (h!30475 Context!3102) (t!197706 List!25158)) )
))
(declare-fun lt!803984 () List!25158)

(declare-fun r!12534 () Regex!5981)

(declare-fun unfocusZipper!88 (List!25158) Regex!5981)

(assert (=> b!2160898 (= res!931195 (= (unfocusZipper!88 lt!803984) r!12534))))

(declare-fun toList!1164 ((InoxSet Context!3102)) List!25158)

(assert (=> b!2160898 (= lt!803984 (toList!1164 z!4055))))

(declare-fun b!2160899 () Bool)

(declare-fun e!1382722 () Int)

(assert (=> b!2160899 (= e!1382722 (- 1))))

(declare-fun b!2160900 () Bool)

(declare-fun e!1382734 () Bool)

(declare-fun totalInput!977 () BalanceConc!15996)

(declare-fun tp!674102 () Bool)

(assert (=> b!2160900 (= e!1382734 (and (inv!33217 (c!341947 totalInput!977)) tp!674102))))

(declare-fun b!2160901 () Bool)

(declare-fun e!1382721 () Bool)

(declare-datatypes ((tuple2!24792 0))(
  ( (tuple2!24793 (_1!14766 BalanceConc!15996) (_2!14766 BalanceConc!15996)) )
))
(declare-fun lt!803991 () tuple2!24792)

(declare-fun isEmpty!14378 (BalanceConc!15996) Bool)

(assert (=> b!2160901 (= e!1382721 (not (isEmpty!14378 (_1!14766 lt!803991))))))

(declare-fun b!2160902 () Bool)

(declare-fun e!1382720 () Bool)

(assert (=> b!2160902 (= e!1382727 e!1382720)))

(declare-fun res!931184 () Bool)

(assert (=> b!2160902 (=> (not res!931184) (not e!1382720))))

(declare-fun lt!804001 () List!25156)

(declare-fun isSuffix!648 (List!25156 List!25156) Bool)

(assert (=> b!2160902 (= res!931184 (isSuffix!648 lt!804001 lt!803995))))

(declare-fun list!9600 (BalanceConc!15996) List!25156)

(assert (=> b!2160902 (= lt!803995 (list!9600 totalInput!977))))

(assert (=> b!2160902 (= lt!804001 (list!9600 input!5540))))

(declare-fun b!2160903 () Bool)

(declare-fun e!1382724 () Bool)

(declare-fun e!1382731 () Bool)

(assert (=> b!2160903 (= e!1382724 (not e!1382731))))

(declare-fun res!931181 () Bool)

(assert (=> b!2160903 (=> res!931181 e!1382731)))

(assert (=> b!2160903 (= res!931181 e!1382721)))

(declare-fun res!931191 () Bool)

(assert (=> b!2160903 (=> (not res!931191) (not e!1382721))))

(declare-fun lt!803992 () Bool)

(assert (=> b!2160903 (= res!931191 (not lt!803992))))

(declare-fun lt!803988 () List!25156)

(assert (=> b!2160903 (= lt!803992 (matchZipper!109 z!4055 lt!803988))))

(declare-fun e!1382726 () Bool)

(assert (=> b!2160903 e!1382726))

(declare-fun res!931188 () Bool)

(assert (=> b!2160903 (=> res!931188 e!1382726)))

(declare-fun lt!804000 () tuple2!24790)

(assert (=> b!2160903 (= res!931188 (isEmpty!14377 (_1!14765 lt!804000)))))

(declare-fun findLongestMatchInner!610 (Regex!5981 List!25156 Int List!25156 List!25156 Int) tuple2!24790)

(declare-fun size!19589 (List!25156) Int)

(assert (=> b!2160903 (= lt!804000 (findLongestMatchInner!610 r!12534 Nil!25072 (size!19589 Nil!25072) lt!804001 lt!804001 (size!19589 lt!804001)))))

(declare-datatypes ((Unit!38113 0))(
  ( (Unit!38114) )
))
(declare-fun lt!803987 () Unit!38113)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!591 (Regex!5981 List!25156) Unit!38113)

(assert (=> b!2160903 (= lt!803987 (longestMatchIsAcceptedByMatchOrIsEmpty!591 r!12534 lt!804001))))

(assert (=> b!2160903 e!1382735))

(declare-fun res!931190 () Bool)

(assert (=> b!2160903 (=> res!931190 e!1382735)))

(assert (=> b!2160903 (= res!931190 (<= lt!804005 0))))

(declare-fun lt!803986 () Int)

(assert (=> b!2160903 (= lt!804005 (+ 1 (- lt!803986 lt!803998)))))

(declare-fun lt!803985 () Int)

(declare-fun lt!803999 () Int)

(declare-fun furthestNullablePosition!168 ((InoxSet Context!3102) Int BalanceConc!15996 Int Int) Int)

(assert (=> b!2160903 (= lt!803986 (furthestNullablePosition!168 z!4055 lt!803998 totalInput!977 lt!803999 lt!803985))))

(declare-fun lt!804004 () Unit!38113)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!16 ((InoxSet Context!3102) Int BalanceConc!15996 Int) Unit!38113)

(assert (=> b!2160903 (= lt!804004 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!16 z!4055 lt!803998 totalInput!977 lt!803985))))

(assert (=> b!2160903 (= lt!803985 e!1382722)))

(declare-fun c!341945 () Bool)

(declare-fun nullableZipper!262 ((InoxSet Context!3102)) Bool)

(assert (=> b!2160903 (= c!341945 (nullableZipper!262 z!4055))))

(declare-fun isPrefix!2101 (List!25156 List!25156) Bool)

(assert (=> b!2160903 (isPrefix!2101 (take!195 lt!803995 lt!803998) lt!803995)))

(declare-fun lt!804008 () Unit!38113)

(declare-fun lemmaTakeIsPrefix!18 (List!25156 Int) Unit!38113)

(assert (=> b!2160903 (= lt!804008 (lemmaTakeIsPrefix!18 lt!803995 lt!803998))))

(declare-fun lt!803989 () List!25156)

(assert (=> b!2160903 (isPrefix!2101 (_1!14765 lt!804006) lt!803989)))

(declare-fun lt!803990 () Unit!38113)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1384 (List!25156 List!25156) Unit!38113)

(assert (=> b!2160903 (= lt!803990 (lemmaConcatTwoListThenFirstIsPrefix!1384 (_1!14765 lt!804006) (_2!14765 lt!804006)))))

(declare-fun lt!804009 () List!25156)

(assert (=> b!2160903 (isPrefix!2101 lt!803988 lt!804009)))

(declare-fun lt!804003 () Unit!38113)

(declare-fun lt!804002 () List!25156)

(assert (=> b!2160903 (= lt!804003 (lemmaConcatTwoListThenFirstIsPrefix!1384 lt!803988 lt!804002))))

(declare-fun b!2160904 () Bool)

(declare-fun e!1382738 () Bool)

(declare-fun e!1382728 () Bool)

(assert (=> b!2160904 (= e!1382738 e!1382728)))

(declare-fun res!931187 () Bool)

(assert (=> b!2160904 (=> res!931187 e!1382728)))

(declare-fun lt!803997 () List!25156)

(assert (=> b!2160904 (= res!931187 (not (= lt!803997 (_1!14765 lt!804006))))))

(declare-fun lt!804013 () List!25156)

(assert (=> b!2160904 (= lt!804013 (_1!14765 lt!804006))))

(declare-fun lt!804007 () Unit!38113)

(declare-fun lemmaIsPrefixSameLengthThenSameList!333 (List!25156 List!25156 List!25156) Unit!38113)

(assert (=> b!2160904 (= lt!804007 (lemmaIsPrefixSameLengthThenSameList!333 lt!804013 (_1!14765 lt!804006) lt!804001))))

(assert (=> b!2160904 (isPrefix!2101 lt!803997 lt!804001)))

(declare-fun lt!804014 () Int)

(assert (=> b!2160904 (= lt!803997 (take!195 lt!804001 lt!804014))))

(declare-fun lt!803996 () Unit!38113)

(assert (=> b!2160904 (= lt!803996 (lemmaTakeIsPrefix!18 lt!804001 lt!804014))))

(declare-fun b!2160905 () Bool)

(declare-fun e!1382737 () Bool)

(assert (=> b!2160905 (= e!1382720 e!1382737)))

(declare-fun res!931194 () Bool)

(assert (=> b!2160905 (=> (not res!931194) (not e!1382737))))

(assert (=> b!2160905 (= res!931194 (= lt!804009 lt!804001))))

(declare-fun ++!6338 (List!25156 List!25156) List!25156)

(assert (=> b!2160905 (= lt!804009 (++!6338 lt!803988 lt!804002))))

(assert (=> b!2160905 (= lt!804002 (list!9600 (_2!14766 lt!803991)))))

(assert (=> b!2160905 (= lt!803988 (list!9600 (_1!14766 lt!803991)))))

(declare-fun findLongestMatch!535 (Regex!5981 List!25156) tuple2!24790)

(assert (=> b!2160905 (= lt!804006 (findLongestMatch!535 r!12534 lt!804001))))

(declare-fun size!19590 (BalanceConc!15996) Int)

(assert (=> b!2160905 (= lt!803998 (- lt!803999 (size!19590 input!5540)))))

(assert (=> b!2160905 (= lt!803999 (size!19590 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!30 ((InoxSet Context!3102) BalanceConc!15996 BalanceConc!15996) tuple2!24792)

(assert (=> b!2160905 (= lt!803991 (findLongestMatchZipperSequenceV3!30 z!4055 input!5540 totalInput!977))))

(declare-fun b!2160906 () Bool)

(declare-fun e!1382736 () Bool)

(declare-fun tp!674108 () Bool)

(declare-fun tp!674104 () Bool)

(assert (=> b!2160906 (= e!1382736 (and tp!674108 tp!674104))))

(declare-fun res!931185 () Bool)

(assert (=> start!209626 (=> (not res!931185) (not e!1382732))))

(declare-fun validRegex!2257 (Regex!5981) Bool)

(assert (=> start!209626 (= res!931185 (validRegex!2257 r!12534))))

(assert (=> start!209626 e!1382732))

(assert (=> start!209626 e!1382736))

(declare-fun inv!33218 (BalanceConc!15996) Bool)

(assert (=> start!209626 (and (inv!33218 totalInput!977) e!1382734)))

(assert (=> start!209626 (and (inv!33218 input!5540) e!1382733)))

(declare-fun condSetEmpty!18052 () Bool)

(assert (=> start!209626 (= condSetEmpty!18052 (= z!4055 ((as const (Array Context!3102 Bool)) false)))))

(declare-fun setRes!18052 () Bool)

(assert (=> start!209626 setRes!18052))

(declare-fun setIsEmpty!18052 () Bool)

(assert (=> setIsEmpty!18052 setRes!18052))

(declare-fun b!2160907 () Bool)

(declare-fun e!1382730 () Bool)

(assert (=> b!2160907 (= e!1382730 (>= lt!803986 (+ (- lt!803998 1) lt!804014)))))

(declare-fun b!2160908 () Bool)

(declare-fun e!1382729 () Bool)

(assert (=> b!2160908 (= e!1382731 e!1382729)))

(declare-fun res!931193 () Bool)

(assert (=> b!2160908 (=> res!931193 e!1382729)))

(assert (=> b!2160908 (= res!931193 e!1382723)))

(declare-fun res!931189 () Bool)

(assert (=> b!2160908 (=> (not res!931189) (not e!1382723))))

(declare-fun lt!803993 () Bool)

(assert (=> b!2160908 (= res!931189 (not lt!803993))))

(declare-fun matchR!2742 (Regex!5981 List!25156) Bool)

(assert (=> b!2160908 (= lt!803993 (matchR!2742 r!12534 (_1!14765 lt!804006)))))

(declare-fun b!2160909 () Bool)

(assert (=> b!2160909 (= e!1382726 (matchR!2742 r!12534 (_1!14765 lt!804000)))))

(declare-fun b!2160910 () Bool)

(assert (=> b!2160910 (= e!1382728 true)))

(assert (=> b!2160910 e!1382730))

(declare-fun res!931192 () Bool)

(assert (=> b!2160910 (=> res!931192 e!1382730)))

(assert (=> b!2160910 (= res!931192 (isEmpty!14378 totalInput!977))))

(declare-fun lt!804012 () Unit!38113)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!2 ((InoxSet Context!3102) Int BalanceConc!15996 Int Int) Unit!38113)

(assert (=> b!2160910 (= lt!804012 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!2 z!4055 lt!803998 totalInput!977 lt!804014 lt!803985))))

(declare-fun b!2160911 () Bool)

(declare-fun tp_is_empty!9569 () Bool)

(assert (=> b!2160911 (= e!1382736 tp_is_empty!9569)))

(declare-fun tp!674107 () Bool)

(declare-fun setNonEmpty!18052 () Bool)

(declare-fun setElem!18052 () Context!3102)

(declare-fun inv!33219 (Context!3102) Bool)

(assert (=> setNonEmpty!18052 (= setRes!18052 (and tp!674107 (inv!33219 setElem!18052) e!1382739))))

(declare-fun setRest!18052 () (InoxSet Context!3102))

(assert (=> setNonEmpty!18052 (= z!4055 ((_ map or) (store ((as const (Array Context!3102 Bool)) false) setElem!18052 true) setRest!18052))))

(declare-fun b!2160912 () Bool)

(declare-fun tp!674101 () Bool)

(assert (=> b!2160912 (= e!1382736 tp!674101)))

(declare-fun b!2160913 () Bool)

(assert (=> b!2160913 (= e!1382722 (- lt!803998 1))))

(declare-fun b!2160914 () Bool)

(assert (=> b!2160914 (= e!1382737 e!1382724)))

(declare-fun res!931183 () Bool)

(assert (=> b!2160914 (=> (not res!931183) (not e!1382724))))

(assert (=> b!2160914 (= res!931183 (= lt!803989 lt!804001))))

(assert (=> b!2160914 (= lt!803989 (++!6338 (_1!14765 lt!804006) (_2!14765 lt!804006)))))

(declare-fun b!2160915 () Bool)

(declare-fun e!1382725 () Bool)

(assert (=> b!2160915 (= e!1382729 e!1382725)))

(declare-fun res!931186 () Bool)

(assert (=> b!2160915 (=> res!931186 e!1382725)))

(assert (=> b!2160915 (= res!931186 (<= lt!804014 (size!19590 (_1!14766 lt!803991))))))

(assert (=> b!2160915 (= lt!804014 (size!19589 (_1!14765 lt!804006)))))

(assert (=> b!2160915 (= (matchR!2742 r!12534 lt!803988) lt!803992)))

(declare-fun lt!804010 () Unit!38113)

(declare-fun theoremZipperRegexEquiv!25 ((InoxSet Context!3102) List!25158 Regex!5981 List!25156) Unit!38113)

(assert (=> b!2160915 (= lt!804010 (theoremZipperRegexEquiv!25 z!4055 lt!803984 r!12534 lt!803988))))

(assert (=> b!2160915 (= lt!803993 (matchZipper!109 z!4055 (_1!14765 lt!804006)))))

(declare-fun lt!804011 () Unit!38113)

(assert (=> b!2160915 (= lt!804011 (theoremZipperRegexEquiv!25 z!4055 lt!803984 r!12534 (_1!14765 lt!804006)))))

(declare-fun b!2160916 () Bool)

(declare-fun tp!674100 () Bool)

(declare-fun tp!674103 () Bool)

(assert (=> b!2160916 (= e!1382736 (and tp!674100 tp!674103))))

(declare-fun b!2160917 () Bool)

(assert (=> b!2160917 (= e!1382725 e!1382738)))

(declare-fun res!931182 () Bool)

(assert (=> b!2160917 (=> res!931182 e!1382738)))

(declare-fun lt!803994 () List!25156)

(assert (=> b!2160917 (= res!931182 (not (= lt!803994 lt!804001)))))

(assert (=> b!2160917 (= lt!804013 (take!195 lt!803994 lt!804014))))

(assert (=> b!2160917 (= lt!803994 (drop!1204 lt!803995 lt!803998))))

(assert (= (and start!209626 res!931185) b!2160898))

(assert (= (and b!2160898 res!931195) b!2160902))

(assert (= (and b!2160902 res!931184) b!2160905))

(assert (= (and b!2160905 res!931194) b!2160914))

(assert (= (and b!2160914 res!931183) b!2160903))

(assert (= (and b!2160903 c!341945) b!2160913))

(assert (= (and b!2160903 (not c!341945)) b!2160899))

(assert (= (and b!2160903 (not res!931190)) b!2160894))

(assert (= (and b!2160903 (not res!931188)) b!2160909))

(assert (= (and b!2160903 res!931191) b!2160901))

(assert (= (and b!2160903 (not res!931181)) b!2160908))

(assert (= (and b!2160908 res!931189) b!2160897))

(assert (= (and b!2160908 (not res!931193)) b!2160915))

(assert (= (and b!2160915 (not res!931186)) b!2160917))

(assert (= (and b!2160917 (not res!931182)) b!2160904))

(assert (= (and b!2160904 (not res!931187)) b!2160910))

(assert (= (and b!2160910 (not res!931192)) b!2160907))

(get-info :version)

(assert (= (and start!209626 ((_ is ElementMatch!5981) r!12534)) b!2160911))

(assert (= (and start!209626 ((_ is Concat!10283) r!12534)) b!2160906))

(assert (= (and start!209626 ((_ is Star!5981) r!12534)) b!2160912))

(assert (= (and start!209626 ((_ is Union!5981) r!12534)) b!2160916))

(assert (= start!209626 b!2160900))

(assert (= start!209626 b!2160895))

(assert (= (and start!209626 condSetEmpty!18052) setIsEmpty!18052))

(assert (= (and start!209626 (not condSetEmpty!18052)) setNonEmpty!18052))

(assert (= setNonEmpty!18052 b!2160896))

(declare-fun m!2601117 () Bool)

(assert (=> b!2160894 m!2601117))

(assert (=> b!2160894 m!2601117))

(declare-fun m!2601119 () Bool)

(assert (=> b!2160894 m!2601119))

(assert (=> b!2160894 m!2601119))

(declare-fun m!2601121 () Bool)

(assert (=> b!2160894 m!2601121))

(declare-fun m!2601123 () Bool)

(assert (=> b!2160910 m!2601123))

(declare-fun m!2601125 () Bool)

(assert (=> b!2160910 m!2601125))

(declare-fun m!2601127 () Bool)

(assert (=> b!2160908 m!2601127))

(declare-fun m!2601129 () Bool)

(assert (=> b!2160915 m!2601129))

(declare-fun m!2601131 () Bool)

(assert (=> b!2160915 m!2601131))

(declare-fun m!2601133 () Bool)

(assert (=> b!2160915 m!2601133))

(declare-fun m!2601135 () Bool)

(assert (=> b!2160915 m!2601135))

(declare-fun m!2601137 () Bool)

(assert (=> b!2160915 m!2601137))

(declare-fun m!2601139 () Bool)

(assert (=> b!2160915 m!2601139))

(declare-fun m!2601141 () Bool)

(assert (=> b!2160903 m!2601141))

(declare-fun m!2601143 () Bool)

(assert (=> b!2160903 m!2601143))

(declare-fun m!2601145 () Bool)

(assert (=> b!2160903 m!2601145))

(declare-fun m!2601147 () Bool)

(assert (=> b!2160903 m!2601147))

(declare-fun m!2601149 () Bool)

(assert (=> b!2160903 m!2601149))

(declare-fun m!2601151 () Bool)

(assert (=> b!2160903 m!2601151))

(declare-fun m!2601153 () Bool)

(assert (=> b!2160903 m!2601153))

(assert (=> b!2160903 m!2601143))

(declare-fun m!2601155 () Bool)

(assert (=> b!2160903 m!2601155))

(declare-fun m!2601157 () Bool)

(assert (=> b!2160903 m!2601157))

(declare-fun m!2601159 () Bool)

(assert (=> b!2160903 m!2601159))

(declare-fun m!2601161 () Bool)

(assert (=> b!2160903 m!2601161))

(assert (=> b!2160903 m!2601147))

(declare-fun m!2601163 () Bool)

(assert (=> b!2160903 m!2601163))

(declare-fun m!2601165 () Bool)

(assert (=> b!2160903 m!2601165))

(declare-fun m!2601167 () Bool)

(assert (=> b!2160903 m!2601167))

(declare-fun m!2601169 () Bool)

(assert (=> b!2160903 m!2601169))

(assert (=> b!2160903 m!2601145))

(declare-fun m!2601171 () Bool)

(assert (=> b!2160903 m!2601171))

(declare-fun m!2601173 () Bool)

(assert (=> b!2160902 m!2601173))

(declare-fun m!2601175 () Bool)

(assert (=> b!2160902 m!2601175))

(declare-fun m!2601177 () Bool)

(assert (=> b!2160902 m!2601177))

(declare-fun m!2601179 () Bool)

(assert (=> b!2160895 m!2601179))

(declare-fun m!2601181 () Bool)

(assert (=> b!2160900 m!2601181))

(declare-fun m!2601183 () Bool)

(assert (=> b!2160909 m!2601183))

(declare-fun m!2601185 () Bool)

(assert (=> b!2160898 m!2601185))

(declare-fun m!2601187 () Bool)

(assert (=> b!2160898 m!2601187))

(declare-fun m!2601189 () Bool)

(assert (=> b!2160904 m!2601189))

(declare-fun m!2601191 () Bool)

(assert (=> b!2160904 m!2601191))

(declare-fun m!2601193 () Bool)

(assert (=> b!2160904 m!2601193))

(declare-fun m!2601195 () Bool)

(assert (=> b!2160904 m!2601195))

(declare-fun m!2601197 () Bool)

(assert (=> b!2160905 m!2601197))

(declare-fun m!2601199 () Bool)

(assert (=> b!2160905 m!2601199))

(declare-fun m!2601201 () Bool)

(assert (=> b!2160905 m!2601201))

(declare-fun m!2601203 () Bool)

(assert (=> b!2160905 m!2601203))

(declare-fun m!2601205 () Bool)

(assert (=> b!2160905 m!2601205))

(declare-fun m!2601207 () Bool)

(assert (=> b!2160905 m!2601207))

(declare-fun m!2601209 () Bool)

(assert (=> b!2160905 m!2601209))

(declare-fun m!2601211 () Bool)

(assert (=> b!2160897 m!2601211))

(declare-fun m!2601213 () Bool)

(assert (=> b!2160917 m!2601213))

(assert (=> b!2160917 m!2601117))

(declare-fun m!2601215 () Bool)

(assert (=> setNonEmpty!18052 m!2601215))

(declare-fun m!2601217 () Bool)

(assert (=> b!2160914 m!2601217))

(declare-fun m!2601219 () Bool)

(assert (=> start!209626 m!2601219))

(declare-fun m!2601221 () Bool)

(assert (=> start!209626 m!2601221))

(declare-fun m!2601223 () Bool)

(assert (=> start!209626 m!2601223))

(declare-fun m!2601225 () Bool)

(assert (=> b!2160901 m!2601225))

(check-sat (not b!2160904) (not b!2160912) (not b!2160905) (not b!2160906) (not b!2160902) (not b!2160917) (not b!2160901) (not b!2160898) (not b!2160914) (not b!2160897) (not b!2160915) (not b!2160895) (not b!2160908) (not start!209626) (not b!2160909) (not b!2160910) (not b!2160916) tp_is_empty!9569 (not b!2160894) (not setNonEmpty!18052) (not b!2160903) (not b!2160896) (not b!2160900))
(check-sat)
