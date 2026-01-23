; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210370 () Bool)

(assert start!210370)

(declare-fun b!2169344 () Bool)

(declare-fun e!1387457 () Bool)

(assert (=> b!2169344 (= e!1387457 true)))

(declare-datatypes ((C!12156 0))(
  ( (C!12157 (val!7064 Int)) )
))
(declare-datatypes ((List!25228 0))(
  ( (Nil!25144) (Cons!25144 (h!30545 C!12156) (t!197790 List!25228)) )
))
(declare-fun lt!807838 () List!25228)

(declare-datatypes ((tuple2!24890 0))(
  ( (tuple2!24891 (_1!14815 List!25228) (_2!14815 List!25228)) )
))
(declare-fun lt!807843 () tuple2!24890)

(assert (=> b!2169344 (= lt!807838 (_1!14815 lt!807843))))

(declare-datatypes ((Unit!38211 0))(
  ( (Unit!38212) )
))
(declare-fun lt!807835 () Unit!38211)

(declare-fun lt!807833 () List!25228)

(declare-fun lemmaIsPrefixSameLengthThenSameList!347 (List!25228 List!25228 List!25228) Unit!38211)

(assert (=> b!2169344 (= lt!807835 (lemmaIsPrefixSameLengthThenSameList!347 lt!807838 (_1!14815 lt!807843) lt!807833))))

(declare-fun lt!807821 () Int)

(declare-fun isPrefix!2121 (List!25228 List!25228) Bool)

(declare-fun take!215 (List!25228 Int) List!25228)

(assert (=> b!2169344 (isPrefix!2121 (take!215 lt!807833 lt!807821) lt!807833)))

(declare-fun lt!807842 () Unit!38211)

(declare-fun lemmaTakeIsPrefix!38 (List!25228 Int) Unit!38211)

(assert (=> b!2169344 (= lt!807842 (lemmaTakeIsPrefix!38 lt!807833 lt!807821))))

(declare-fun b!2169345 () Bool)

(declare-fun e!1387454 () Bool)

(declare-fun tp_is_empty!9617 () Bool)

(assert (=> b!2169345 (= e!1387454 tp_is_empty!9617)))

(declare-fun b!2169346 () Bool)

(declare-fun e!1387448 () Bool)

(declare-fun e!1387456 () Bool)

(assert (=> b!2169346 (= e!1387448 e!1387456)))

(declare-fun res!933763 () Bool)

(assert (=> b!2169346 (=> (not res!933763) (not e!1387456))))

(declare-fun lt!807845 () List!25228)

(assert (=> b!2169346 (= res!933763 (= lt!807845 lt!807833))))

(declare-fun lt!807822 () List!25228)

(declare-fun lt!807836 () List!25228)

(declare-fun ++!6364 (List!25228 List!25228) List!25228)

(assert (=> b!2169346 (= lt!807845 (++!6364 lt!807822 lt!807836))))

(declare-datatypes ((IArray!16287 0))(
  ( (IArray!16288 (innerList!8201 List!25228)) )
))
(declare-datatypes ((Conc!8141 0))(
  ( (Node!8141 (left!19326 Conc!8141) (right!19656 Conc!8141) (csize!16512 Int) (cheight!8352 Int)) (Leaf!11911 (xs!11083 IArray!16287) (csize!16513 Int)) (Empty!8141) )
))
(declare-datatypes ((BalanceConc!16044 0))(
  ( (BalanceConc!16045 (c!343756 Conc!8141)) )
))
(declare-datatypes ((tuple2!24892 0))(
  ( (tuple2!24893 (_1!14816 BalanceConc!16044) (_2!14816 BalanceConc!16044)) )
))
(declare-fun lt!807840 () tuple2!24892)

(declare-fun list!9636 (BalanceConc!16044) List!25228)

(assert (=> b!2169346 (= lt!807836 (list!9636 (_2!14816 lt!807840)))))

(assert (=> b!2169346 (= lt!807822 (list!9636 (_1!14816 lt!807840)))))

(declare-datatypes ((Regex!6005 0))(
  ( (ElementMatch!6005 (c!343757 C!12156)) (Concat!10307 (regOne!12522 Regex!6005) (regTwo!12522 Regex!6005)) (EmptyExpr!6005) (Star!6005 (reg!6334 Regex!6005)) (EmptyLang!6005) (Union!6005 (regOne!12523 Regex!6005) (regTwo!12523 Regex!6005)) )
))
(declare-fun r!12534 () Regex!6005)

(declare-fun findLongestMatch!559 (Regex!6005 List!25228) tuple2!24890)

(assert (=> b!2169346 (= lt!807843 (findLongestMatch!559 r!12534 lt!807833))))

(declare-fun lt!807825 () Int)

(declare-fun lt!807841 () Int)

(declare-fun input!5540 () BalanceConc!16044)

(declare-fun size!19647 (BalanceConc!16044) Int)

(assert (=> b!2169346 (= lt!807825 (- lt!807841 (size!19647 input!5540)))))

(declare-fun totalInput!977 () BalanceConc!16044)

(assert (=> b!2169346 (= lt!807841 (size!19647 totalInput!977))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25229 0))(
  ( (Nil!25145) (Cons!25145 (h!30546 Regex!6005) (t!197791 List!25229)) )
))
(declare-datatypes ((Context!3150 0))(
  ( (Context!3151 (exprs!2075 List!25229)) )
))
(declare-fun z!4055 () (InoxSet Context!3150))

(declare-fun findLongestMatchZipperSequenceV3!54 ((InoxSet Context!3150) BalanceConc!16044 BalanceConc!16044) tuple2!24892)

(assert (=> b!2169346 (= lt!807840 (findLongestMatchZipperSequenceV3!54 z!4055 input!5540 totalInput!977))))

(declare-fun b!2169347 () Bool)

(declare-fun tp!677069 () Bool)

(declare-fun tp!677074 () Bool)

(assert (=> b!2169347 (= e!1387454 (and tp!677069 tp!677074))))

(declare-fun b!2169348 () Bool)

(declare-fun e!1387447 () Bool)

(assert (=> b!2169348 (= e!1387456 e!1387447)))

(declare-fun res!933760 () Bool)

(assert (=> b!2169348 (=> (not res!933760) (not e!1387447))))

(declare-fun lt!807823 () List!25228)

(assert (=> b!2169348 (= res!933760 (= lt!807823 lt!807833))))

(assert (=> b!2169348 (= lt!807823 (++!6364 (_1!14815 lt!807843) (_2!14815 lt!807843)))))

(declare-fun e!1387441 () Bool)

(declare-fun tp!677071 () Bool)

(declare-fun setElem!18158 () Context!3150)

(declare-fun setNonEmpty!18158 () Bool)

(declare-fun setRes!18158 () Bool)

(declare-fun inv!33354 (Context!3150) Bool)

(assert (=> setNonEmpty!18158 (= setRes!18158 (and tp!677071 (inv!33354 setElem!18158) e!1387441))))

(declare-fun setRest!18158 () (InoxSet Context!3150))

(assert (=> setNonEmpty!18158 (= z!4055 ((_ map or) (store ((as const (Array Context!3150 Bool)) false) setElem!18158 true) setRest!18158))))

(declare-fun b!2169349 () Bool)

(declare-fun e!1387453 () Bool)

(declare-fun tp!677073 () Bool)

(declare-fun inv!33355 (Conc!8141) Bool)

(assert (=> b!2169349 (= e!1387453 (and (inv!33355 (c!343756 input!5540)) tp!677073))))

(declare-fun b!2169350 () Bool)

(declare-fun e!1387451 () Bool)

(declare-fun e!1387455 () Bool)

(assert (=> b!2169350 (= e!1387451 e!1387455)))

(declare-fun res!933753 () Bool)

(assert (=> b!2169350 (=> (not res!933753) (not e!1387455))))

(declare-datatypes ((List!25230 0))(
  ( (Nil!25146) (Cons!25146 (h!30547 Context!3150) (t!197792 List!25230)) )
))
(declare-fun lt!807832 () List!25230)

(declare-fun unfocusZipper!112 (List!25230) Regex!6005)

(assert (=> b!2169350 (= res!933753 (= (unfocusZipper!112 lt!807832) r!12534))))

(declare-fun toList!1188 ((InoxSet Context!3150)) List!25230)

(assert (=> b!2169350 (= lt!807832 (toList!1188 z!4055))))

(declare-fun b!2169351 () Bool)

(declare-fun e!1387450 () Bool)

(declare-fun lt!807827 () tuple2!24890)

(declare-fun matchR!2762 (Regex!6005 List!25228) Bool)

(assert (=> b!2169351 (= e!1387450 (matchR!2762 r!12534 (_1!14815 lt!807827)))))

(declare-fun b!2169352 () Bool)

(declare-fun tp!677066 () Bool)

(assert (=> b!2169352 (= e!1387454 tp!677066)))

(declare-fun b!2169353 () Bool)

(declare-fun tp!677067 () Bool)

(declare-fun tp!677072 () Bool)

(assert (=> b!2169353 (= e!1387454 (and tp!677067 tp!677072))))

(declare-fun b!2169354 () Bool)

(declare-fun e!1387444 () Bool)

(assert (=> b!2169354 (= e!1387447 (not e!1387444))))

(declare-fun res!933756 () Bool)

(assert (=> b!2169354 (=> res!933756 e!1387444)))

(declare-fun e!1387443 () Bool)

(assert (=> b!2169354 (= res!933756 e!1387443)))

(declare-fun res!933752 () Bool)

(assert (=> b!2169354 (=> (not res!933752) (not e!1387443))))

(declare-fun lt!807819 () Bool)

(assert (=> b!2169354 (= res!933752 (not lt!807819))))

(declare-fun matchZipper!129 ((InoxSet Context!3150) List!25228) Bool)

(assert (=> b!2169354 (= lt!807819 (matchZipper!129 z!4055 lt!807822))))

(assert (=> b!2169354 e!1387450))

(declare-fun res!933751 () Bool)

(assert (=> b!2169354 (=> res!933751 e!1387450)))

(declare-fun isEmpty!14427 (List!25228) Bool)

(assert (=> b!2169354 (= res!933751 (isEmpty!14427 (_1!14815 lt!807827)))))

(declare-fun findLongestMatchInner!634 (Regex!6005 List!25228 Int List!25228 List!25228 Int) tuple2!24890)

(declare-fun size!19648 (List!25228) Int)

(assert (=> b!2169354 (= lt!807827 (findLongestMatchInner!634 r!12534 Nil!25144 (size!19648 Nil!25144) lt!807833 lt!807833 (size!19648 lt!807833)))))

(declare-fun lt!807844 () Unit!38211)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!611 (Regex!6005 List!25228) Unit!38211)

(assert (=> b!2169354 (= lt!807844 (longestMatchIsAcceptedByMatchOrIsEmpty!611 r!12534 lt!807833))))

(declare-fun e!1387446 () Bool)

(assert (=> b!2169354 e!1387446))

(declare-fun res!933761 () Bool)

(assert (=> b!2169354 (=> res!933761 e!1387446)))

(declare-fun lt!807837 () Int)

(assert (=> b!2169354 (= res!933761 (<= lt!807837 0))))

(declare-fun lt!807839 () Int)

(declare-fun furthestNullablePosition!192 ((InoxSet Context!3150) Int BalanceConc!16044 Int Int) Int)

(assert (=> b!2169354 (= lt!807837 (+ 1 (- (furthestNullablePosition!192 z!4055 lt!807825 totalInput!977 lt!807841 lt!807839) lt!807825)))))

(declare-fun lt!807828 () Unit!38211)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!36 ((InoxSet Context!3150) Int BalanceConc!16044 Int) Unit!38211)

(assert (=> b!2169354 (= lt!807828 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!36 z!4055 lt!807825 totalInput!977 lt!807839))))

(declare-fun e!1387452 () Int)

(assert (=> b!2169354 (= lt!807839 e!1387452)))

(declare-fun c!343755 () Bool)

(declare-fun nullableZipper!286 ((InoxSet Context!3150)) Bool)

(assert (=> b!2169354 (= c!343755 (nullableZipper!286 z!4055))))

(declare-fun lt!807834 () List!25228)

(assert (=> b!2169354 (isPrefix!2121 (take!215 lt!807834 lt!807825) lt!807834)))

(declare-fun lt!807846 () Unit!38211)

(assert (=> b!2169354 (= lt!807846 (lemmaTakeIsPrefix!38 lt!807834 lt!807825))))

(assert (=> b!2169354 (isPrefix!2121 (_1!14815 lt!807843) lt!807823)))

(declare-fun lt!807826 () Unit!38211)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1404 (List!25228 List!25228) Unit!38211)

(assert (=> b!2169354 (= lt!807826 (lemmaConcatTwoListThenFirstIsPrefix!1404 (_1!14815 lt!807843) (_2!14815 lt!807843)))))

(assert (=> b!2169354 (isPrefix!2121 lt!807822 lt!807845)))

(declare-fun lt!807831 () Unit!38211)

(assert (=> b!2169354 (= lt!807831 (lemmaConcatTwoListThenFirstIsPrefix!1404 lt!807822 lt!807836))))

(declare-fun b!2169355 () Bool)

(assert (=> b!2169355 (= e!1387455 e!1387448)))

(declare-fun res!933759 () Bool)

(assert (=> b!2169355 (=> (not res!933759) (not e!1387448))))

(declare-fun isSuffix!672 (List!25228 List!25228) Bool)

(assert (=> b!2169355 (= res!933759 (isSuffix!672 lt!807833 lt!807834))))

(assert (=> b!2169355 (= lt!807834 (list!9636 totalInput!977))))

(assert (=> b!2169355 (= lt!807833 (list!9636 input!5540))))

(declare-fun b!2169356 () Bool)

(declare-fun e!1387442 () Bool)

(assert (=> b!2169356 (= e!1387442 e!1387457)))

(declare-fun res!933755 () Bool)

(assert (=> b!2169356 (=> res!933755 e!1387457)))

(declare-fun lt!807830 () List!25228)

(assert (=> b!2169356 (= res!933755 (not (= lt!807830 lt!807833)))))

(assert (=> b!2169356 (= lt!807838 (take!215 lt!807830 lt!807821))))

(declare-fun drop!1228 (List!25228 Int) List!25228)

(assert (=> b!2169356 (= lt!807830 (drop!1228 lt!807834 lt!807825))))

(declare-fun b!2169357 () Bool)

(declare-fun e!1387440 () Bool)

(assert (=> b!2169357 (= e!1387440 (not (isEmpty!14427 (_1!14815 lt!807843))))))

(declare-fun b!2169358 () Bool)

(declare-fun isEmpty!14428 (BalanceConc!16044) Bool)

(assert (=> b!2169358 (= e!1387443 (not (isEmpty!14428 (_1!14816 lt!807840))))))

(declare-fun b!2169359 () Bool)

(assert (=> b!2169359 (= e!1387452 (- 1))))

(declare-fun b!2169360 () Bool)

(assert (=> b!2169360 (= e!1387446 (matchZipper!129 z!4055 (take!215 (drop!1228 lt!807834 lt!807825) lt!807837)))))

(declare-fun setIsEmpty!18158 () Bool)

(assert (=> setIsEmpty!18158 setRes!18158))

(declare-fun res!933754 () Bool)

(assert (=> start!210370 (=> (not res!933754) (not e!1387451))))

(declare-fun validRegex!2281 (Regex!6005) Bool)

(assert (=> start!210370 (= res!933754 (validRegex!2281 r!12534))))

(assert (=> start!210370 e!1387451))

(assert (=> start!210370 e!1387454))

(declare-fun e!1387445 () Bool)

(declare-fun inv!33356 (BalanceConc!16044) Bool)

(assert (=> start!210370 (and (inv!33356 totalInput!977) e!1387445)))

(assert (=> start!210370 (and (inv!33356 input!5540) e!1387453)))

(declare-fun condSetEmpty!18158 () Bool)

(assert (=> start!210370 (= condSetEmpty!18158 (= z!4055 ((as const (Array Context!3150 Bool)) false)))))

(assert (=> start!210370 setRes!18158))

(declare-fun b!2169361 () Bool)

(declare-fun e!1387449 () Bool)

(assert (=> b!2169361 (= e!1387444 e!1387449)))

(declare-fun res!933762 () Bool)

(assert (=> b!2169361 (=> res!933762 e!1387449)))

(assert (=> b!2169361 (= res!933762 e!1387440)))

(declare-fun res!933758 () Bool)

(assert (=> b!2169361 (=> (not res!933758) (not e!1387440))))

(declare-fun lt!807829 () Bool)

(assert (=> b!2169361 (= res!933758 (not lt!807829))))

(assert (=> b!2169361 (= lt!807829 (matchR!2762 r!12534 (_1!14815 lt!807843)))))

(declare-fun b!2169362 () Bool)

(assert (=> b!2169362 (= e!1387452 (- lt!807825 1))))

(declare-fun b!2169363 () Bool)

(assert (=> b!2169363 (= e!1387449 e!1387442)))

(declare-fun res!933757 () Bool)

(assert (=> b!2169363 (=> res!933757 e!1387442)))

(assert (=> b!2169363 (= res!933757 (<= lt!807821 (size!19647 (_1!14816 lt!807840))))))

(assert (=> b!2169363 (= lt!807821 (size!19648 (_1!14815 lt!807843)))))

(assert (=> b!2169363 (= (matchR!2762 r!12534 lt!807822) lt!807819)))

(declare-fun lt!807820 () Unit!38211)

(declare-fun theoremZipperRegexEquiv!41 ((InoxSet Context!3150) List!25230 Regex!6005 List!25228) Unit!38211)

(assert (=> b!2169363 (= lt!807820 (theoremZipperRegexEquiv!41 z!4055 lt!807832 r!12534 lt!807822))))

(assert (=> b!2169363 (= lt!807829 (matchZipper!129 z!4055 (_1!14815 lt!807843)))))

(declare-fun lt!807824 () Unit!38211)

(assert (=> b!2169363 (= lt!807824 (theoremZipperRegexEquiv!41 z!4055 lt!807832 r!12534 (_1!14815 lt!807843)))))

(declare-fun b!2169364 () Bool)

(declare-fun tp!677070 () Bool)

(assert (=> b!2169364 (= e!1387445 (and (inv!33355 (c!343756 totalInput!977)) tp!677070))))

(declare-fun b!2169365 () Bool)

(declare-fun tp!677068 () Bool)

(assert (=> b!2169365 (= e!1387441 tp!677068)))

(assert (= (and start!210370 res!933754) b!2169350))

(assert (= (and b!2169350 res!933753) b!2169355))

(assert (= (and b!2169355 res!933759) b!2169346))

(assert (= (and b!2169346 res!933763) b!2169348))

(assert (= (and b!2169348 res!933760) b!2169354))

(assert (= (and b!2169354 c!343755) b!2169362))

(assert (= (and b!2169354 (not c!343755)) b!2169359))

(assert (= (and b!2169354 (not res!933761)) b!2169360))

(assert (= (and b!2169354 (not res!933751)) b!2169351))

(assert (= (and b!2169354 res!933752) b!2169358))

(assert (= (and b!2169354 (not res!933756)) b!2169361))

(assert (= (and b!2169361 res!933758) b!2169357))

(assert (= (and b!2169361 (not res!933762)) b!2169363))

(assert (= (and b!2169363 (not res!933757)) b!2169356))

(assert (= (and b!2169356 (not res!933755)) b!2169344))

(get-info :version)

(assert (= (and start!210370 ((_ is ElementMatch!6005) r!12534)) b!2169345))

(assert (= (and start!210370 ((_ is Concat!10307) r!12534)) b!2169347))

(assert (= (and start!210370 ((_ is Star!6005) r!12534)) b!2169352))

(assert (= (and start!210370 ((_ is Union!6005) r!12534)) b!2169353))

(assert (= start!210370 b!2169364))

(assert (= start!210370 b!2169349))

(assert (= (and start!210370 condSetEmpty!18158) setIsEmpty!18158))

(assert (= (and start!210370 (not condSetEmpty!18158)) setNonEmpty!18158))

(assert (= setNonEmpty!18158 b!2169365))

(declare-fun m!2610297 () Bool)

(assert (=> b!2169348 m!2610297))

(declare-fun m!2610299 () Bool)

(assert (=> b!2169357 m!2610299))

(declare-fun m!2610301 () Bool)

(assert (=> b!2169356 m!2610301))

(declare-fun m!2610303 () Bool)

(assert (=> b!2169356 m!2610303))

(declare-fun m!2610305 () Bool)

(assert (=> setNonEmpty!18158 m!2610305))

(declare-fun m!2610307 () Bool)

(assert (=> b!2169363 m!2610307))

(declare-fun m!2610309 () Bool)

(assert (=> b!2169363 m!2610309))

(declare-fun m!2610311 () Bool)

(assert (=> b!2169363 m!2610311))

(declare-fun m!2610313 () Bool)

(assert (=> b!2169363 m!2610313))

(declare-fun m!2610315 () Bool)

(assert (=> b!2169363 m!2610315))

(declare-fun m!2610317 () Bool)

(assert (=> b!2169363 m!2610317))

(declare-fun m!2610319 () Bool)

(assert (=> b!2169364 m!2610319))

(declare-fun m!2610321 () Bool)

(assert (=> start!210370 m!2610321))

(declare-fun m!2610323 () Bool)

(assert (=> start!210370 m!2610323))

(declare-fun m!2610325 () Bool)

(assert (=> start!210370 m!2610325))

(declare-fun m!2610327 () Bool)

(assert (=> b!2169361 m!2610327))

(declare-fun m!2610329 () Bool)

(assert (=> b!2169346 m!2610329))

(declare-fun m!2610331 () Bool)

(assert (=> b!2169346 m!2610331))

(declare-fun m!2610333 () Bool)

(assert (=> b!2169346 m!2610333))

(declare-fun m!2610335 () Bool)

(assert (=> b!2169346 m!2610335))

(declare-fun m!2610337 () Bool)

(assert (=> b!2169346 m!2610337))

(declare-fun m!2610339 () Bool)

(assert (=> b!2169346 m!2610339))

(declare-fun m!2610341 () Bool)

(assert (=> b!2169346 m!2610341))

(declare-fun m!2610343 () Bool)

(assert (=> b!2169358 m!2610343))

(declare-fun m!2610345 () Bool)

(assert (=> b!2169351 m!2610345))

(declare-fun m!2610347 () Bool)

(assert (=> b!2169349 m!2610347))

(declare-fun m!2610349 () Bool)

(assert (=> b!2169354 m!2610349))

(declare-fun m!2610351 () Bool)

(assert (=> b!2169354 m!2610351))

(declare-fun m!2610353 () Bool)

(assert (=> b!2169354 m!2610353))

(declare-fun m!2610355 () Bool)

(assert (=> b!2169354 m!2610355))

(declare-fun m!2610357 () Bool)

(assert (=> b!2169354 m!2610357))

(declare-fun m!2610359 () Bool)

(assert (=> b!2169354 m!2610359))

(declare-fun m!2610361 () Bool)

(assert (=> b!2169354 m!2610361))

(assert (=> b!2169354 m!2610357))

(declare-fun m!2610363 () Bool)

(assert (=> b!2169354 m!2610363))

(declare-fun m!2610365 () Bool)

(assert (=> b!2169354 m!2610365))

(declare-fun m!2610367 () Bool)

(assert (=> b!2169354 m!2610367))

(declare-fun m!2610369 () Bool)

(assert (=> b!2169354 m!2610369))

(declare-fun m!2610371 () Bool)

(assert (=> b!2169354 m!2610371))

(declare-fun m!2610373 () Bool)

(assert (=> b!2169354 m!2610373))

(assert (=> b!2169354 m!2610373))

(assert (=> b!2169354 m!2610367))

(declare-fun m!2610375 () Bool)

(assert (=> b!2169354 m!2610375))

(declare-fun m!2610377 () Bool)

(assert (=> b!2169354 m!2610377))

(declare-fun m!2610379 () Bool)

(assert (=> b!2169354 m!2610379))

(declare-fun m!2610381 () Bool)

(assert (=> b!2169355 m!2610381))

(declare-fun m!2610383 () Bool)

(assert (=> b!2169355 m!2610383))

(declare-fun m!2610385 () Bool)

(assert (=> b!2169355 m!2610385))

(declare-fun m!2610387 () Bool)

(assert (=> b!2169350 m!2610387))

(declare-fun m!2610389 () Bool)

(assert (=> b!2169350 m!2610389))

(assert (=> b!2169360 m!2610303))

(assert (=> b!2169360 m!2610303))

(declare-fun m!2610391 () Bool)

(assert (=> b!2169360 m!2610391))

(assert (=> b!2169360 m!2610391))

(declare-fun m!2610393 () Bool)

(assert (=> b!2169360 m!2610393))

(declare-fun m!2610395 () Bool)

(assert (=> b!2169344 m!2610395))

(declare-fun m!2610397 () Bool)

(assert (=> b!2169344 m!2610397))

(assert (=> b!2169344 m!2610397))

(declare-fun m!2610399 () Bool)

(assert (=> b!2169344 m!2610399))

(declare-fun m!2610401 () Bool)

(assert (=> b!2169344 m!2610401))

(check-sat (not b!2169354) (not b!2169356) (not b!2169349) (not b!2169357) (not b!2169361) (not b!2169347) tp_is_empty!9617 (not b!2169358) (not b!2169350) (not b!2169344) (not b!2169360) (not setNonEmpty!18158) (not b!2169363) (not start!210370) (not b!2169351) (not b!2169346) (not b!2169353) (not b!2169352) (not b!2169355) (not b!2169365) (not b!2169348) (not b!2169364))
(check-sat)
