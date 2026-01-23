; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!211382 () Bool)

(assert start!211382)

(declare-fun b!2177936 () Bool)

(declare-fun e!1392612 () Bool)

(declare-fun e!1392615 () Bool)

(assert (=> b!2177936 (= e!1392612 e!1392615)))

(declare-fun res!936899 () Bool)

(assert (=> b!2177936 (=> (not res!936899) (not e!1392615))))

(declare-datatypes ((C!12216 0))(
  ( (C!12217 (val!7094 Int)) )
))
(declare-datatypes ((Regex!6035 0))(
  ( (ElementMatch!6035 (c!345630 C!12216)) (Concat!10337 (regOne!12582 Regex!6035) (regTwo!12582 Regex!6035)) (EmptyExpr!6035) (Star!6035 (reg!6364 Regex!6035)) (EmptyLang!6035) (Union!6035 (regOne!12583 Regex!6035) (regTwo!12583 Regex!6035)) )
))
(declare-datatypes ((List!25318 0))(
  ( (Nil!25234) (Cons!25234 (h!30635 Regex!6035) (t!197894 List!25318)) )
))
(declare-datatypes ((Context!3210 0))(
  ( (Context!3211 (exprs!2105 List!25318)) )
))
(declare-datatypes ((List!25319 0))(
  ( (Nil!25235) (Cons!25235 (h!30636 Context!3210) (t!197895 List!25319)) )
))
(declare-fun lt!812812 () List!25319)

(declare-fun r!12534 () Regex!6035)

(declare-fun unfocusZipper!142 (List!25319) Regex!6035)

(assert (=> b!2177936 (= res!936899 (= (unfocusZipper!142 lt!812812) r!12534))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4055 () (InoxSet Context!3210))

(declare-fun toList!1218 ((InoxSet Context!3210)) List!25319)

(assert (=> b!2177936 (= lt!812812 (toList!1218 z!4055))))

(declare-fun b!2177937 () Bool)

(declare-fun e!1392600 () Bool)

(declare-fun tp!679337 () Bool)

(assert (=> b!2177937 (= e!1392600 tp!679337)))

(declare-fun b!2177938 () Bool)

(declare-fun e!1392598 () Bool)

(declare-fun e!1392607 () Bool)

(assert (=> b!2177938 (= e!1392598 e!1392607)))

(declare-fun res!936912 () Bool)

(assert (=> b!2177938 (=> res!936912 e!1392607)))

(declare-datatypes ((List!25320 0))(
  ( (Nil!25236) (Cons!25236 (h!30637 C!12216) (t!197896 List!25320)) )
))
(declare-datatypes ((tuple2!25018 0))(
  ( (tuple2!25019 (_1!14879 List!25320) (_2!14879 List!25320)) )
))
(declare-fun lt!812820 () tuple2!25018)

(declare-fun lt!812810 () Int)

(declare-fun lt!812818 () Int)

(declare-fun lt!812833 () List!25320)

(declare-fun lt!812815 () Int)

(assert (=> b!2177938 (= res!936912 (or (not (= lt!812833 (_1!14879 lt!812820))) (< lt!812818 0) (> lt!812818 lt!812810) (< lt!812815 0) (> lt!812815 (- lt!812810 lt!812818))))))

(declare-fun lt!812808 () List!25320)

(assert (=> b!2177938 (= lt!812808 (_1!14879 lt!812820))))

(declare-datatypes ((Unit!38323 0))(
  ( (Unit!38324) )
))
(declare-fun lt!812823 () Unit!38323)

(declare-fun lt!812817 () List!25320)

(declare-fun lemmaIsPrefixSameLengthThenSameList!363 (List!25320 List!25320 List!25320) Unit!38323)

(assert (=> b!2177938 (= lt!812823 (lemmaIsPrefixSameLengthThenSameList!363 lt!812808 (_1!14879 lt!812820) lt!812817))))

(declare-fun isPrefix!2151 (List!25320 List!25320) Bool)

(assert (=> b!2177938 (isPrefix!2151 lt!812833 lt!812817)))

(declare-fun take!243 (List!25320 Int) List!25320)

(assert (=> b!2177938 (= lt!812833 (take!243 lt!812817 lt!812815))))

(declare-fun lt!812814 () Unit!38323)

(declare-fun lemmaTakeIsPrefix!66 (List!25320 Int) Unit!38323)

(assert (=> b!2177938 (= lt!812814 (lemmaTakeIsPrefix!66 lt!812817 lt!812815))))

(declare-fun b!2177939 () Bool)

(declare-fun tp!679342 () Bool)

(declare-fun tp!679340 () Bool)

(assert (=> b!2177939 (= e!1392600 (and tp!679342 tp!679340))))

(declare-fun b!2177940 () Bool)

(declare-fun tp_is_empty!9677 () Bool)

(assert (=> b!2177940 (= e!1392600 tp_is_empty!9677)))

(declare-fun b!2177941 () Bool)

(declare-fun res!936901 () Bool)

(assert (=> b!2177941 (=> res!936901 e!1392607)))

(declare-fun matchZipper!151 ((InoxSet Context!3210) List!25320) Bool)

(assert (=> b!2177941 (= res!936901 (not (matchZipper!151 z!4055 lt!812808)))))

(declare-fun b!2177942 () Bool)

(declare-fun lt!812829 () Int)

(declare-fun e!1392604 () Bool)

(declare-fun lt!812806 () List!25320)

(declare-fun drop!1253 (List!25320 Int) List!25320)

(assert (=> b!2177942 (= e!1392604 (matchZipper!151 z!4055 (take!243 (drop!1253 lt!812806 lt!812818) lt!812829)))))

(declare-fun b!2177943 () Bool)

(declare-fun e!1392608 () Bool)

(declare-datatypes ((IArray!16347 0))(
  ( (IArray!16348 (innerList!8231 List!25320)) )
))
(declare-datatypes ((Conc!8171 0))(
  ( (Node!8171 (left!19375 Conc!8171) (right!19705 Conc!8171) (csize!16572 Int) (cheight!8382 Int)) (Leaf!11956 (xs!11113 IArray!16347) (csize!16573 Int)) (Empty!8171) )
))
(declare-datatypes ((BalanceConc!16104 0))(
  ( (BalanceConc!16105 (c!345631 Conc!8171)) )
))
(declare-fun totalInput!977 () BalanceConc!16104)

(declare-fun tp!679334 () Bool)

(declare-fun inv!33528 (Conc!8171) Bool)

(assert (=> b!2177943 (= e!1392608 (and (inv!33528 (c!345631 totalInput!977)) tp!679334))))

(declare-fun b!2177944 () Bool)

(declare-fun e!1392611 () Bool)

(declare-datatypes ((tuple2!25020 0))(
  ( (tuple2!25021 (_1!14880 BalanceConc!16104) (_2!14880 BalanceConc!16104)) )
))
(declare-fun lt!812828 () tuple2!25020)

(declare-fun isEmpty!14491 (BalanceConc!16104) Bool)

(assert (=> b!2177944 (= e!1392611 (not (isEmpty!14491 (_1!14880 lt!812828))))))

(declare-fun b!2177945 () Bool)

(declare-fun e!1392605 () Bool)

(assert (=> b!2177945 (= e!1392615 e!1392605)))

(declare-fun res!936909 () Bool)

(assert (=> b!2177945 (=> (not res!936909) (not e!1392605))))

(declare-fun isSuffix!702 (List!25320 List!25320) Bool)

(assert (=> b!2177945 (= res!936909 (isSuffix!702 lt!812817 lt!812806))))

(declare-fun list!9684 (BalanceConc!16104) List!25320)

(assert (=> b!2177945 (= lt!812806 (list!9684 totalInput!977))))

(declare-fun input!5540 () BalanceConc!16104)

(assert (=> b!2177945 (= lt!812817 (list!9684 input!5540))))

(declare-fun b!2177946 () Bool)

(declare-fun e!1392613 () Bool)

(declare-fun lt!812826 () tuple2!25018)

(declare-fun matchR!2784 (Regex!6035 List!25320) Bool)

(assert (=> b!2177946 (= e!1392613 (matchR!2784 r!12534 (_1!14879 lt!812826)))))

(declare-fun b!2177947 () Bool)

(declare-fun e!1392609 () Bool)

(declare-fun tp!679335 () Bool)

(assert (=> b!2177947 (= e!1392609 (and (inv!33528 (c!345631 input!5540)) tp!679335))))

(declare-fun b!2177948 () Bool)

(declare-fun e!1392614 () Bool)

(assert (=> b!2177948 (= e!1392605 e!1392614)))

(declare-fun res!936910 () Bool)

(assert (=> b!2177948 (=> (not res!936910) (not e!1392614))))

(declare-fun lt!812825 () List!25320)

(assert (=> b!2177948 (= res!936910 (= lt!812825 lt!812817))))

(declare-fun lt!812824 () List!25320)

(declare-fun lt!812827 () List!25320)

(declare-fun ++!6394 (List!25320 List!25320) List!25320)

(assert (=> b!2177948 (= lt!812825 (++!6394 lt!812824 lt!812827))))

(assert (=> b!2177948 (= lt!812827 (list!9684 (_2!14880 lt!812828)))))

(assert (=> b!2177948 (= lt!812824 (list!9684 (_1!14880 lt!812828)))))

(declare-fun findLongestMatch!589 (Regex!6035 List!25320) tuple2!25018)

(assert (=> b!2177948 (= lt!812820 (findLongestMatch!589 r!12534 lt!812817))))

(declare-fun size!19716 (BalanceConc!16104) Int)

(assert (=> b!2177948 (= lt!812818 (- lt!812810 (size!19716 input!5540)))))

(assert (=> b!2177948 (= lt!812810 (size!19716 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!84 ((InoxSet Context!3210) BalanceConc!16104 BalanceConc!16104) tuple2!25020)

(assert (=> b!2177948 (= lt!812828 (findLongestMatchZipperSequenceV3!84 z!4055 input!5540 totalInput!977))))

(declare-fun res!936902 () Bool)

(assert (=> start!211382 (=> (not res!936902) (not e!1392612))))

(declare-fun validRegex!2311 (Regex!6035) Bool)

(assert (=> start!211382 (= res!936902 (validRegex!2311 r!12534))))

(assert (=> start!211382 e!1392612))

(assert (=> start!211382 e!1392600))

(declare-fun inv!33529 (BalanceConc!16104) Bool)

(assert (=> start!211382 (and (inv!33529 totalInput!977) e!1392608)))

(assert (=> start!211382 (and (inv!33529 input!5540) e!1392609)))

(declare-fun condSetEmpty!18294 () Bool)

(assert (=> start!211382 (= condSetEmpty!18294 (= z!4055 ((as const (Array Context!3210 Bool)) false)))))

(declare-fun setRes!18294 () Bool)

(assert (=> start!211382 setRes!18294))

(declare-fun b!2177949 () Bool)

(declare-fun e!1392601 () Bool)

(declare-fun e!1392606 () Bool)

(assert (=> b!2177949 (= e!1392601 (not e!1392606))))

(declare-fun res!936903 () Bool)

(assert (=> b!2177949 (=> res!936903 e!1392606)))

(assert (=> b!2177949 (= res!936903 e!1392611)))

(declare-fun res!936906 () Bool)

(assert (=> b!2177949 (=> (not res!936906) (not e!1392611))))

(declare-fun lt!812830 () Bool)

(assert (=> b!2177949 (= res!936906 (not lt!812830))))

(assert (=> b!2177949 (= lt!812830 (matchZipper!151 z!4055 lt!812824))))

(assert (=> b!2177949 e!1392613))

(declare-fun res!936911 () Bool)

(assert (=> b!2177949 (=> res!936911 e!1392613)))

(declare-fun isEmpty!14492 (List!25320) Bool)

(assert (=> b!2177949 (= res!936911 (isEmpty!14492 (_1!14879 lt!812826)))))

(declare-fun findLongestMatchInner!660 (Regex!6035 List!25320 Int List!25320 List!25320 Int) tuple2!25018)

(declare-fun size!19717 (List!25320) Int)

(assert (=> b!2177949 (= lt!812826 (findLongestMatchInner!660 r!12534 Nil!25236 (size!19717 Nil!25236) lt!812817 lt!812817 (size!19717 lt!812817)))))

(declare-fun lt!812821 () Unit!38323)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!633 (Regex!6035 List!25320) Unit!38323)

(assert (=> b!2177949 (= lt!812821 (longestMatchIsAcceptedByMatchOrIsEmpty!633 r!12534 lt!812817))))

(assert (=> b!2177949 e!1392604))

(declare-fun res!936913 () Bool)

(assert (=> b!2177949 (=> res!936913 e!1392604)))

(assert (=> b!2177949 (= res!936913 (<= lt!812829 0))))

(declare-fun lt!812805 () Int)

(declare-fun furthestNullablePosition!217 ((InoxSet Context!3210) Int BalanceConc!16104 Int Int) Int)

(assert (=> b!2177949 (= lt!812829 (+ 1 (- (furthestNullablePosition!217 z!4055 lt!812818 totalInput!977 lt!812810 lt!812805) lt!812818)))))

(declare-fun lt!812822 () Unit!38323)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!58 ((InoxSet Context!3210) Int BalanceConc!16104 Int) Unit!38323)

(assert (=> b!2177949 (= lt!812822 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!58 z!4055 lt!812818 totalInput!977 lt!812805))))

(declare-fun lt!812807 () Bool)

(assert (=> b!2177949 (= lt!812805 (ite lt!812807 (- lt!812818 1) (- 1)))))

(declare-fun nullableZipper!315 ((InoxSet Context!3210)) Bool)

(assert (=> b!2177949 (= lt!812807 (nullableZipper!315 z!4055))))

(assert (=> b!2177949 (isPrefix!2151 (take!243 lt!812806 lt!812818) lt!812806)))

(declare-fun lt!812813 () Unit!38323)

(assert (=> b!2177949 (= lt!812813 (lemmaTakeIsPrefix!66 lt!812806 lt!812818))))

(declare-fun lt!812831 () List!25320)

(assert (=> b!2177949 (isPrefix!2151 (_1!14879 lt!812820) lt!812831)))

(declare-fun lt!812811 () Unit!38323)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1434 (List!25320 List!25320) Unit!38323)

(assert (=> b!2177949 (= lt!812811 (lemmaConcatTwoListThenFirstIsPrefix!1434 (_1!14879 lt!812820) (_2!14879 lt!812820)))))

(assert (=> b!2177949 (isPrefix!2151 lt!812824 lt!812825)))

(declare-fun lt!812834 () Unit!38323)

(assert (=> b!2177949 (= lt!812834 (lemmaConcatTwoListThenFirstIsPrefix!1434 lt!812824 lt!812827))))

(declare-fun b!2177950 () Bool)

(assert (=> b!2177950 (= e!1392614 e!1392601)))

(declare-fun res!936905 () Bool)

(assert (=> b!2177950 (=> (not res!936905) (not e!1392601))))

(assert (=> b!2177950 (= res!936905 (= lt!812831 lt!812817))))

(assert (=> b!2177950 (= lt!812831 (++!6394 (_1!14879 lt!812820) (_2!14879 lt!812820)))))

(declare-fun b!2177951 () Bool)

(declare-fun e!1392603 () Bool)

(assert (=> b!2177951 (= e!1392603 e!1392598)))

(declare-fun res!936904 () Bool)

(assert (=> b!2177951 (=> res!936904 e!1392598)))

(declare-fun lt!812832 () List!25320)

(assert (=> b!2177951 (= res!936904 (not (= lt!812832 lt!812817)))))

(assert (=> b!2177951 (= lt!812808 (take!243 lt!812832 lt!812815))))

(assert (=> b!2177951 (= lt!812832 (drop!1253 lt!812806 lt!812818))))

(declare-fun b!2177952 () Bool)

(assert (=> b!2177952 (= e!1392607 (or (< lt!812805 (- 1)) (>= lt!812805 lt!812818) (not lt!812807) (= lt!812805 (- lt!812818 1))))))

(declare-fun b!2177953 () Bool)

(declare-fun tp!679339 () Bool)

(declare-fun tp!679338 () Bool)

(assert (=> b!2177953 (= e!1392600 (and tp!679339 tp!679338))))

(declare-fun setIsEmpty!18294 () Bool)

(assert (=> setIsEmpty!18294 setRes!18294))

(declare-fun b!2177954 () Bool)

(declare-fun e!1392599 () Bool)

(assert (=> b!2177954 (= e!1392599 (not (isEmpty!14492 (_1!14879 lt!812820))))))

(declare-fun b!2177955 () Bool)

(declare-fun e!1392610 () Bool)

(assert (=> b!2177955 (= e!1392610 e!1392603)))

(declare-fun res!936908 () Bool)

(assert (=> b!2177955 (=> res!936908 e!1392603)))

(assert (=> b!2177955 (= res!936908 (<= lt!812815 (size!19716 (_1!14880 lt!812828))))))

(assert (=> b!2177955 (= lt!812815 (size!19717 (_1!14879 lt!812820)))))

(assert (=> b!2177955 (= (matchR!2784 r!12534 lt!812824) lt!812830)))

(declare-fun lt!812809 () Unit!38323)

(declare-fun theoremZipperRegexEquiv!61 ((InoxSet Context!3210) List!25319 Regex!6035 List!25320) Unit!38323)

(assert (=> b!2177955 (= lt!812809 (theoremZipperRegexEquiv!61 z!4055 lt!812812 r!12534 lt!812824))))

(declare-fun lt!812816 () Bool)

(assert (=> b!2177955 (= lt!812816 (matchZipper!151 z!4055 (_1!14879 lt!812820)))))

(declare-fun lt!812819 () Unit!38323)

(assert (=> b!2177955 (= lt!812819 (theoremZipperRegexEquiv!61 z!4055 lt!812812 r!12534 (_1!14879 lt!812820)))))

(declare-fun b!2177956 () Bool)

(declare-fun e!1392602 () Bool)

(declare-fun tp!679341 () Bool)

(assert (=> b!2177956 (= e!1392602 tp!679341)))

(declare-fun b!2177957 () Bool)

(assert (=> b!2177957 (= e!1392606 e!1392610)))

(declare-fun res!936907 () Bool)

(assert (=> b!2177957 (=> res!936907 e!1392610)))

(assert (=> b!2177957 (= res!936907 e!1392599)))

(declare-fun res!936900 () Bool)

(assert (=> b!2177957 (=> (not res!936900) (not e!1392599))))

(assert (=> b!2177957 (= res!936900 (not lt!812816))))

(assert (=> b!2177957 (= lt!812816 (matchR!2784 r!12534 (_1!14879 lt!812820)))))

(declare-fun tp!679336 () Bool)

(declare-fun setNonEmpty!18294 () Bool)

(declare-fun setElem!18294 () Context!3210)

(declare-fun inv!33530 (Context!3210) Bool)

(assert (=> setNonEmpty!18294 (= setRes!18294 (and tp!679336 (inv!33530 setElem!18294) e!1392602))))

(declare-fun setRest!18294 () (InoxSet Context!3210))

(assert (=> setNonEmpty!18294 (= z!4055 ((_ map or) (store ((as const (Array Context!3210 Bool)) false) setElem!18294 true) setRest!18294))))

(assert (= (and start!211382 res!936902) b!2177936))

(assert (= (and b!2177936 res!936899) b!2177945))

(assert (= (and b!2177945 res!936909) b!2177948))

(assert (= (and b!2177948 res!936910) b!2177950))

(assert (= (and b!2177950 res!936905) b!2177949))

(assert (= (and b!2177949 (not res!936913)) b!2177942))

(assert (= (and b!2177949 (not res!936911)) b!2177946))

(assert (= (and b!2177949 res!936906) b!2177944))

(assert (= (and b!2177949 (not res!936903)) b!2177957))

(assert (= (and b!2177957 res!936900) b!2177954))

(assert (= (and b!2177957 (not res!936907)) b!2177955))

(assert (= (and b!2177955 (not res!936908)) b!2177951))

(assert (= (and b!2177951 (not res!936904)) b!2177938))

(assert (= (and b!2177938 (not res!936912)) b!2177941))

(assert (= (and b!2177941 (not res!936901)) b!2177952))

(get-info :version)

(assert (= (and start!211382 ((_ is ElementMatch!6035) r!12534)) b!2177940))

(assert (= (and start!211382 ((_ is Concat!10337) r!12534)) b!2177953))

(assert (= (and start!211382 ((_ is Star!6035) r!12534)) b!2177937))

(assert (= (and start!211382 ((_ is Union!6035) r!12534)) b!2177939))

(assert (= start!211382 b!2177943))

(assert (= start!211382 b!2177947))

(assert (= (and start!211382 condSetEmpty!18294) setIsEmpty!18294))

(assert (= (and start!211382 (not condSetEmpty!18294)) setNonEmpty!18294))

(assert (= setNonEmpty!18294 b!2177956))

(declare-fun m!2619939 () Bool)

(assert (=> b!2177957 m!2619939))

(declare-fun m!2619941 () Bool)

(assert (=> b!2177942 m!2619941))

(assert (=> b!2177942 m!2619941))

(declare-fun m!2619943 () Bool)

(assert (=> b!2177942 m!2619943))

(assert (=> b!2177942 m!2619943))

(declare-fun m!2619945 () Bool)

(assert (=> b!2177942 m!2619945))

(declare-fun m!2619947 () Bool)

(assert (=> b!2177947 m!2619947))

(declare-fun m!2619949 () Bool)

(assert (=> b!2177946 m!2619949))

(declare-fun m!2619951 () Bool)

(assert (=> b!2177945 m!2619951))

(declare-fun m!2619953 () Bool)

(assert (=> b!2177945 m!2619953))

(declare-fun m!2619955 () Bool)

(assert (=> b!2177945 m!2619955))

(declare-fun m!2619957 () Bool)

(assert (=> b!2177936 m!2619957))

(declare-fun m!2619959 () Bool)

(assert (=> b!2177936 m!2619959))

(declare-fun m!2619961 () Bool)

(assert (=> b!2177941 m!2619961))

(declare-fun m!2619963 () Bool)

(assert (=> b!2177951 m!2619963))

(assert (=> b!2177951 m!2619941))

(declare-fun m!2619965 () Bool)

(assert (=> b!2177944 m!2619965))

(declare-fun m!2619967 () Bool)

(assert (=> b!2177949 m!2619967))

(declare-fun m!2619969 () Bool)

(assert (=> b!2177949 m!2619969))

(declare-fun m!2619971 () Bool)

(assert (=> b!2177949 m!2619971))

(assert (=> b!2177949 m!2619969))

(declare-fun m!2619973 () Bool)

(assert (=> b!2177949 m!2619973))

(declare-fun m!2619975 () Bool)

(assert (=> b!2177949 m!2619975))

(declare-fun m!2619977 () Bool)

(assert (=> b!2177949 m!2619977))

(declare-fun m!2619979 () Bool)

(assert (=> b!2177949 m!2619979))

(declare-fun m!2619981 () Bool)

(assert (=> b!2177949 m!2619981))

(declare-fun m!2619983 () Bool)

(assert (=> b!2177949 m!2619983))

(declare-fun m!2619985 () Bool)

(assert (=> b!2177949 m!2619985))

(declare-fun m!2619987 () Bool)

(assert (=> b!2177949 m!2619987))

(declare-fun m!2619989 () Bool)

(assert (=> b!2177949 m!2619989))

(declare-fun m!2619991 () Bool)

(assert (=> b!2177949 m!2619991))

(declare-fun m!2619993 () Bool)

(assert (=> b!2177949 m!2619993))

(declare-fun m!2619995 () Bool)

(assert (=> b!2177949 m!2619995))

(assert (=> b!2177949 m!2619981))

(assert (=> b!2177949 m!2619967))

(declare-fun m!2619997 () Bool)

(assert (=> b!2177949 m!2619997))

(declare-fun m!2619999 () Bool)

(assert (=> setNonEmpty!18294 m!2619999))

(declare-fun m!2620001 () Bool)

(assert (=> start!211382 m!2620001))

(declare-fun m!2620003 () Bool)

(assert (=> start!211382 m!2620003))

(declare-fun m!2620005 () Bool)

(assert (=> start!211382 m!2620005))

(declare-fun m!2620007 () Bool)

(assert (=> b!2177943 m!2620007))

(declare-fun m!2620009 () Bool)

(assert (=> b!2177950 m!2620009))

(declare-fun m!2620011 () Bool)

(assert (=> b!2177948 m!2620011))

(declare-fun m!2620013 () Bool)

(assert (=> b!2177948 m!2620013))

(declare-fun m!2620015 () Bool)

(assert (=> b!2177948 m!2620015))

(declare-fun m!2620017 () Bool)

(assert (=> b!2177948 m!2620017))

(declare-fun m!2620019 () Bool)

(assert (=> b!2177948 m!2620019))

(declare-fun m!2620021 () Bool)

(assert (=> b!2177948 m!2620021))

(declare-fun m!2620023 () Bool)

(assert (=> b!2177948 m!2620023))

(declare-fun m!2620025 () Bool)

(assert (=> b!2177954 m!2620025))

(declare-fun m!2620027 () Bool)

(assert (=> b!2177955 m!2620027))

(declare-fun m!2620029 () Bool)

(assert (=> b!2177955 m!2620029))

(declare-fun m!2620031 () Bool)

(assert (=> b!2177955 m!2620031))

(declare-fun m!2620033 () Bool)

(assert (=> b!2177955 m!2620033))

(declare-fun m!2620035 () Bool)

(assert (=> b!2177955 m!2620035))

(declare-fun m!2620037 () Bool)

(assert (=> b!2177955 m!2620037))

(declare-fun m!2620039 () Bool)

(assert (=> b!2177938 m!2620039))

(declare-fun m!2620041 () Bool)

(assert (=> b!2177938 m!2620041))

(declare-fun m!2620043 () Bool)

(assert (=> b!2177938 m!2620043))

(declare-fun m!2620045 () Bool)

(assert (=> b!2177938 m!2620045))

(check-sat (not b!2177949) (not b!2177947) (not b!2177954) (not b!2177956) (not b!2177937) (not b!2177936) (not start!211382) (not b!2177950) (not b!2177944) (not b!2177951) (not b!2177943) (not b!2177942) (not b!2177941) (not b!2177953) (not b!2177957) (not b!2177938) tp_is_empty!9677 (not b!2177945) (not b!2177946) (not b!2177955) (not b!2177939) (not setNonEmpty!18294) (not b!2177948))
(check-sat)
