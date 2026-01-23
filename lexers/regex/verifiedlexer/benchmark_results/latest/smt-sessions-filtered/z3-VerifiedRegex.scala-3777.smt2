; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210742 () Bool)

(assert start!210742)

(declare-fun b!2172480 () Bool)

(declare-fun e!1389327 () Bool)

(declare-fun e!1389329 () Bool)

(assert (=> b!2172480 (= e!1389327 e!1389329)))

(declare-fun res!934882 () Bool)

(assert (=> b!2172480 (=> (not res!934882) (not e!1389329))))

(declare-datatypes ((C!12188 0))(
  ( (C!12189 (val!7080 Int)) )
))
(declare-datatypes ((List!25276 0))(
  ( (Nil!25192) (Cons!25192 (h!30593 C!12188) (t!197844 List!25276)) )
))
(declare-fun lt!809651 () List!25276)

(declare-fun lt!809640 () List!25276)

(declare-fun isSuffix!688 (List!25276 List!25276) Bool)

(assert (=> b!2172480 (= res!934882 (isSuffix!688 lt!809651 lt!809640))))

(declare-datatypes ((IArray!16319 0))(
  ( (IArray!16320 (innerList!8217 List!25276)) )
))
(declare-datatypes ((Conc!8157 0))(
  ( (Node!8157 (left!19350 Conc!8157) (right!19680 Conc!8157) (csize!16544 Int) (cheight!8368 Int)) (Leaf!11935 (xs!11099 IArray!16319) (csize!16545 Int)) (Empty!8157) )
))
(declare-datatypes ((BalanceConc!16076 0))(
  ( (BalanceConc!16077 (c!344346 Conc!8157)) )
))
(declare-fun totalInput!977 () BalanceConc!16076)

(declare-fun list!9660 (BalanceConc!16076) List!25276)

(assert (=> b!2172480 (= lt!809640 (list!9660 totalInput!977))))

(declare-fun input!5540 () BalanceConc!16076)

(assert (=> b!2172480 (= lt!809651 (list!9660 input!5540))))

(declare-fun b!2172481 () Bool)

(declare-fun e!1389322 () Int)

(assert (=> b!2172481 (= e!1389322 (- 1))))

(declare-fun b!2172482 () Bool)

(declare-fun e!1389321 () Bool)

(declare-fun tp!678168 () Bool)

(declare-fun tp!678172 () Bool)

(assert (=> b!2172482 (= e!1389321 (and tp!678168 tp!678172))))

(declare-fun b!2172484 () Bool)

(declare-fun e!1389318 () Bool)

(declare-fun e!1389331 () Bool)

(assert (=> b!2172484 (= e!1389318 e!1389331)))

(declare-fun res!934872 () Bool)

(assert (=> b!2172484 (=> res!934872 e!1389331)))

(declare-fun lt!809657 () Int)

(declare-datatypes ((tuple2!24958 0))(
  ( (tuple2!24959 (_1!14849 BalanceConc!16076) (_2!14849 BalanceConc!16076)) )
))
(declare-fun lt!809647 () tuple2!24958)

(declare-fun size!19680 (BalanceConc!16076) Int)

(assert (=> b!2172484 (= res!934872 (<= lt!809657 (size!19680 (_1!14849 lt!809647))))))

(declare-datatypes ((tuple2!24960 0))(
  ( (tuple2!24961 (_1!14850 List!25276) (_2!14850 List!25276)) )
))
(declare-fun lt!809655 () tuple2!24960)

(declare-fun size!19681 (List!25276) Int)

(assert (=> b!2172484 (= lt!809657 (size!19681 (_1!14850 lt!809655)))))

(declare-datatypes ((Regex!6021 0))(
  ( (ElementMatch!6021 (c!344347 C!12188)) (Concat!10323 (regOne!12554 Regex!6021) (regTwo!12554 Regex!6021)) (EmptyExpr!6021) (Star!6021 (reg!6350 Regex!6021)) (EmptyLang!6021) (Union!6021 (regOne!12555 Regex!6021) (regTwo!12555 Regex!6021)) )
))
(declare-fun r!12534 () Regex!6021)

(declare-fun lt!809638 () List!25276)

(declare-fun lt!809659 () Bool)

(declare-fun matchR!2770 (Regex!6021 List!25276) Bool)

(assert (=> b!2172484 (= (matchR!2770 r!12534 lt!809638) lt!809659)))

(declare-datatypes ((Unit!38255 0))(
  ( (Unit!38256) )
))
(declare-fun lt!809660 () Unit!38255)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25277 0))(
  ( (Nil!25193) (Cons!25193 (h!30594 Regex!6021) (t!197845 List!25277)) )
))
(declare-datatypes ((Context!3182 0))(
  ( (Context!3183 (exprs!2091 List!25277)) )
))
(declare-fun z!4055 () (InoxSet Context!3182))

(declare-datatypes ((List!25278 0))(
  ( (Nil!25194) (Cons!25194 (h!30595 Context!3182) (t!197846 List!25278)) )
))
(declare-fun lt!809639 () List!25278)

(declare-fun theoremZipperRegexEquiv!47 ((InoxSet Context!3182) List!25278 Regex!6021 List!25276) Unit!38255)

(assert (=> b!2172484 (= lt!809660 (theoremZipperRegexEquiv!47 z!4055 lt!809639 r!12534 lt!809638))))

(declare-fun lt!809648 () Bool)

(declare-fun matchZipper!137 ((InoxSet Context!3182) List!25276) Bool)

(assert (=> b!2172484 (= lt!809648 (matchZipper!137 z!4055 (_1!14850 lt!809655)))))

(declare-fun lt!809645 () Unit!38255)

(assert (=> b!2172484 (= lt!809645 (theoremZipperRegexEquiv!47 z!4055 lt!809639 r!12534 (_1!14850 lt!809655)))))

(declare-fun b!2172485 () Bool)

(declare-fun e!1389328 () Bool)

(declare-fun e!1389330 () Bool)

(assert (=> b!2172485 (= e!1389328 (not e!1389330))))

(declare-fun res!934879 () Bool)

(assert (=> b!2172485 (=> res!934879 e!1389330)))

(declare-fun e!1389317 () Bool)

(assert (=> b!2172485 (= res!934879 e!1389317)))

(declare-fun res!934880 () Bool)

(assert (=> b!2172485 (=> (not res!934880) (not e!1389317))))

(assert (=> b!2172485 (= res!934880 (not lt!809659))))

(assert (=> b!2172485 (= lt!809659 (matchZipper!137 z!4055 lt!809638))))

(declare-fun e!1389316 () Bool)

(assert (=> b!2172485 e!1389316))

(declare-fun res!934874 () Bool)

(assert (=> b!2172485 (=> res!934874 e!1389316)))

(declare-fun lt!809650 () tuple2!24960)

(declare-fun isEmpty!14451 (List!25276) Bool)

(assert (=> b!2172485 (= res!934874 (isEmpty!14451 (_1!14850 lt!809650)))))

(declare-fun findLongestMatchInner!646 (Regex!6021 List!25276 Int List!25276 List!25276 Int) tuple2!24960)

(assert (=> b!2172485 (= lt!809650 (findLongestMatchInner!646 r!12534 Nil!25192 (size!19681 Nil!25192) lt!809651 lt!809651 (size!19681 lt!809651)))))

(declare-fun lt!809636 () Unit!38255)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!619 (Regex!6021 List!25276) Unit!38255)

(assert (=> b!2172485 (= lt!809636 (longestMatchIsAcceptedByMatchOrIsEmpty!619 r!12534 lt!809651))))

(declare-fun e!1389320 () Bool)

(assert (=> b!2172485 e!1389320))

(declare-fun res!934883 () Bool)

(assert (=> b!2172485 (=> res!934883 e!1389320)))

(declare-fun lt!809642 () Int)

(assert (=> b!2172485 (= res!934883 (<= lt!809642 0))))

(declare-fun lt!809637 () Int)

(declare-fun lt!809656 () Int)

(declare-fun lt!809641 () Int)

(declare-fun furthestNullablePosition!203 ((InoxSet Context!3182) Int BalanceConc!16076 Int Int) Int)

(assert (=> b!2172485 (= lt!809642 (+ 1 (- (furthestNullablePosition!203 z!4055 lt!809656 totalInput!977 lt!809641 lt!809637) lt!809656)))))

(declare-fun lt!809652 () Unit!38255)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!44 ((InoxSet Context!3182) Int BalanceConc!16076 Int) Unit!38255)

(assert (=> b!2172485 (= lt!809652 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!44 z!4055 lt!809656 totalInput!977 lt!809637))))

(assert (=> b!2172485 (= lt!809637 e!1389322)))

(declare-fun c!344345 () Bool)

(declare-fun nullableZipper!301 ((InoxSet Context!3182)) Bool)

(assert (=> b!2172485 (= c!344345 (nullableZipper!301 z!4055))))

(declare-fun isPrefix!2137 (List!25276 List!25276) Bool)

(declare-fun take!229 (List!25276 Int) List!25276)

(assert (=> b!2172485 (isPrefix!2137 (take!229 lt!809640 lt!809656) lt!809640)))

(declare-fun lt!809643 () Unit!38255)

(declare-fun lemmaTakeIsPrefix!52 (List!25276 Int) Unit!38255)

(assert (=> b!2172485 (= lt!809643 (lemmaTakeIsPrefix!52 lt!809640 lt!809656))))

(declare-fun lt!809635 () List!25276)

(assert (=> b!2172485 (isPrefix!2137 (_1!14850 lt!809655) lt!809635)))

(declare-fun lt!809646 () Unit!38255)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1420 (List!25276 List!25276) Unit!38255)

(assert (=> b!2172485 (= lt!809646 (lemmaConcatTwoListThenFirstIsPrefix!1420 (_1!14850 lt!809655) (_2!14850 lt!809655)))))

(declare-fun lt!809644 () List!25276)

(assert (=> b!2172485 (isPrefix!2137 lt!809638 lt!809644)))

(declare-fun lt!809658 () Unit!38255)

(declare-fun lt!809653 () List!25276)

(assert (=> b!2172485 (= lt!809658 (lemmaConcatTwoListThenFirstIsPrefix!1420 lt!809638 lt!809653))))

(declare-fun setIsEmpty!18226 () Bool)

(declare-fun setRes!18226 () Bool)

(assert (=> setIsEmpty!18226 setRes!18226))

(declare-fun b!2172486 () Bool)

(assert (=> b!2172486 (= e!1389322 (- lt!809656 1))))

(declare-fun b!2172487 () Bool)

(declare-fun e!1389325 () Bool)

(declare-fun tp!678174 () Bool)

(assert (=> b!2172487 (= e!1389325 tp!678174)))

(declare-fun b!2172488 () Bool)

(declare-fun e!1389319 () Bool)

(assert (=> b!2172488 (= e!1389331 e!1389319)))

(declare-fun res!934878 () Bool)

(assert (=> b!2172488 (=> res!934878 e!1389319)))

(declare-fun lt!809654 () List!25276)

(assert (=> b!2172488 (= res!934878 (not (= lt!809654 lt!809651)))))

(declare-fun lt!809649 () List!25276)

(assert (=> b!2172488 (= lt!809649 (take!229 lt!809654 lt!809657))))

(declare-fun drop!1239 (List!25276 Int) List!25276)

(assert (=> b!2172488 (= lt!809654 (drop!1239 lt!809640 lt!809656))))

(declare-fun b!2172489 () Bool)

(declare-fun e!1389326 () Bool)

(assert (=> b!2172489 (= e!1389326 e!1389327)))

(declare-fun res!934871 () Bool)

(assert (=> b!2172489 (=> (not res!934871) (not e!1389327))))

(declare-fun unfocusZipper!128 (List!25278) Regex!6021)

(assert (=> b!2172489 (= res!934871 (= (unfocusZipper!128 lt!809639) r!12534))))

(declare-fun toList!1204 ((InoxSet Context!3182)) List!25278)

(assert (=> b!2172489 (= lt!809639 (toList!1204 z!4055))))

(declare-fun setNonEmpty!18226 () Bool)

(declare-fun tp!678169 () Bool)

(declare-fun setElem!18226 () Context!3182)

(declare-fun inv!33441 (Context!3182) Bool)

(assert (=> setNonEmpty!18226 (= setRes!18226 (and tp!678169 (inv!33441 setElem!18226) e!1389325))))

(declare-fun setRest!18226 () (InoxSet Context!3182))

(assert (=> setNonEmpty!18226 (= z!4055 ((_ map or) (store ((as const (Array Context!3182 Bool)) false) setElem!18226 true) setRest!18226))))

(declare-fun b!2172483 () Bool)

(assert (=> b!2172483 (= e!1389320 (matchZipper!137 z!4055 (take!229 (drop!1239 lt!809640 lt!809656) lt!809642)))))

(declare-fun res!934877 () Bool)

(assert (=> start!210742 (=> (not res!934877) (not e!1389326))))

(declare-fun validRegex!2297 (Regex!6021) Bool)

(assert (=> start!210742 (= res!934877 (validRegex!2297 r!12534))))

(assert (=> start!210742 e!1389326))

(assert (=> start!210742 e!1389321))

(declare-fun e!1389323 () Bool)

(declare-fun inv!33442 (BalanceConc!16076) Bool)

(assert (=> start!210742 (and (inv!33442 totalInput!977) e!1389323)))

(declare-fun e!1389314 () Bool)

(assert (=> start!210742 (and (inv!33442 input!5540) e!1389314)))

(declare-fun condSetEmpty!18226 () Bool)

(assert (=> start!210742 (= condSetEmpty!18226 (= z!4055 ((as const (Array Context!3182 Bool)) false)))))

(assert (=> start!210742 setRes!18226))

(declare-fun b!2172490 () Bool)

(declare-fun tp!678175 () Bool)

(assert (=> b!2172490 (= e!1389321 tp!678175)))

(declare-fun b!2172491 () Bool)

(assert (=> b!2172491 (= e!1389330 e!1389318)))

(declare-fun res!934876 () Bool)

(assert (=> b!2172491 (=> res!934876 e!1389318)))

(declare-fun e!1389315 () Bool)

(assert (=> b!2172491 (= res!934876 e!1389315)))

(declare-fun res!934875 () Bool)

(assert (=> b!2172491 (=> (not res!934875) (not e!1389315))))

(assert (=> b!2172491 (= res!934875 (not lt!809648))))

(assert (=> b!2172491 (= lt!809648 (matchR!2770 r!12534 (_1!14850 lt!809655)))))

(declare-fun b!2172492 () Bool)

(declare-fun e!1389324 () Bool)

(assert (=> b!2172492 (= e!1389329 e!1389324)))

(declare-fun res!934881 () Bool)

(assert (=> b!2172492 (=> (not res!934881) (not e!1389324))))

(assert (=> b!2172492 (= res!934881 (= lt!809644 lt!809651))))

(declare-fun ++!6380 (List!25276 List!25276) List!25276)

(assert (=> b!2172492 (= lt!809644 (++!6380 lt!809638 lt!809653))))

(assert (=> b!2172492 (= lt!809653 (list!9660 (_2!14849 lt!809647)))))

(assert (=> b!2172492 (= lt!809638 (list!9660 (_1!14849 lt!809647)))))

(declare-fun findLongestMatch!575 (Regex!6021 List!25276) tuple2!24960)

(assert (=> b!2172492 (= lt!809655 (findLongestMatch!575 r!12534 lt!809651))))

(assert (=> b!2172492 (= lt!809656 (- lt!809641 (size!19680 input!5540)))))

(assert (=> b!2172492 (= lt!809641 (size!19680 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!70 ((InoxSet Context!3182) BalanceConc!16076 BalanceConc!16076) tuple2!24958)

(assert (=> b!2172492 (= lt!809647 (findLongestMatchZipperSequenceV3!70 z!4055 input!5540 totalInput!977))))

(declare-fun b!2172493 () Bool)

(declare-fun tp!678173 () Bool)

(declare-fun inv!33443 (Conc!8157) Bool)

(assert (=> b!2172493 (= e!1389323 (and (inv!33443 (c!344346 totalInput!977)) tp!678173))))

(declare-fun b!2172494 () Bool)

(declare-fun tp!678170 () Bool)

(assert (=> b!2172494 (= e!1389314 (and (inv!33443 (c!344346 input!5540)) tp!678170))))

(declare-fun b!2172495 () Bool)

(assert (=> b!2172495 (= e!1389315 (not (isEmpty!14451 (_1!14850 lt!809655))))))

(declare-fun b!2172496 () Bool)

(assert (=> b!2172496 (= e!1389319 (isPrefix!2137 lt!809649 lt!809651))))

(assert (=> b!2172496 (isPrefix!2137 (take!229 lt!809651 lt!809657) lt!809651)))

(declare-fun lt!809634 () Unit!38255)

(assert (=> b!2172496 (= lt!809634 (lemmaTakeIsPrefix!52 lt!809651 lt!809657))))

(declare-fun b!2172497 () Bool)

(declare-fun tp_is_empty!9649 () Bool)

(assert (=> b!2172497 (= e!1389321 tp_is_empty!9649)))

(declare-fun b!2172498 () Bool)

(declare-fun tp!678176 () Bool)

(declare-fun tp!678171 () Bool)

(assert (=> b!2172498 (= e!1389321 (and tp!678176 tp!678171))))

(declare-fun b!2172499 () Bool)

(assert (=> b!2172499 (= e!1389316 (matchR!2770 r!12534 (_1!14850 lt!809650)))))

(declare-fun b!2172500 () Bool)

(assert (=> b!2172500 (= e!1389324 e!1389328)))

(declare-fun res!934873 () Bool)

(assert (=> b!2172500 (=> (not res!934873) (not e!1389328))))

(assert (=> b!2172500 (= res!934873 (= lt!809635 lt!809651))))

(assert (=> b!2172500 (= lt!809635 (++!6380 (_1!14850 lt!809655) (_2!14850 lt!809655)))))

(declare-fun b!2172501 () Bool)

(declare-fun isEmpty!14452 (BalanceConc!16076) Bool)

(assert (=> b!2172501 (= e!1389317 (not (isEmpty!14452 (_1!14849 lt!809647))))))

(assert (= (and start!210742 res!934877) b!2172489))

(assert (= (and b!2172489 res!934871) b!2172480))

(assert (= (and b!2172480 res!934882) b!2172492))

(assert (= (and b!2172492 res!934881) b!2172500))

(assert (= (and b!2172500 res!934873) b!2172485))

(assert (= (and b!2172485 c!344345) b!2172486))

(assert (= (and b!2172485 (not c!344345)) b!2172481))

(assert (= (and b!2172485 (not res!934883)) b!2172483))

(assert (= (and b!2172485 (not res!934874)) b!2172499))

(assert (= (and b!2172485 res!934880) b!2172501))

(assert (= (and b!2172485 (not res!934879)) b!2172491))

(assert (= (and b!2172491 res!934875) b!2172495))

(assert (= (and b!2172491 (not res!934876)) b!2172484))

(assert (= (and b!2172484 (not res!934872)) b!2172488))

(assert (= (and b!2172488 (not res!934878)) b!2172496))

(get-info :version)

(assert (= (and start!210742 ((_ is ElementMatch!6021) r!12534)) b!2172497))

(assert (= (and start!210742 ((_ is Concat!10323) r!12534)) b!2172498))

(assert (= (and start!210742 ((_ is Star!6021) r!12534)) b!2172490))

(assert (= (and start!210742 ((_ is Union!6021) r!12534)) b!2172482))

(assert (= start!210742 b!2172493))

(assert (= start!210742 b!2172494))

(assert (= (and start!210742 condSetEmpty!18226) setIsEmpty!18226))

(assert (= (and start!210742 (not condSetEmpty!18226)) setNonEmpty!18226))

(assert (= setNonEmpty!18226 b!2172487))

(declare-fun m!2613741 () Bool)

(assert (=> b!2172492 m!2613741))

(declare-fun m!2613743 () Bool)

(assert (=> b!2172492 m!2613743))

(declare-fun m!2613745 () Bool)

(assert (=> b!2172492 m!2613745))

(declare-fun m!2613747 () Bool)

(assert (=> b!2172492 m!2613747))

(declare-fun m!2613749 () Bool)

(assert (=> b!2172492 m!2613749))

(declare-fun m!2613751 () Bool)

(assert (=> b!2172492 m!2613751))

(declare-fun m!2613753 () Bool)

(assert (=> b!2172492 m!2613753))

(declare-fun m!2613755 () Bool)

(assert (=> b!2172500 m!2613755))

(declare-fun m!2613757 () Bool)

(assert (=> b!2172495 m!2613757))

(declare-fun m!2613759 () Bool)

(assert (=> b!2172493 m!2613759))

(declare-fun m!2613761 () Bool)

(assert (=> b!2172484 m!2613761))

(declare-fun m!2613763 () Bool)

(assert (=> b!2172484 m!2613763))

(declare-fun m!2613765 () Bool)

(assert (=> b!2172484 m!2613765))

(declare-fun m!2613767 () Bool)

(assert (=> b!2172484 m!2613767))

(declare-fun m!2613769 () Bool)

(assert (=> b!2172484 m!2613769))

(declare-fun m!2613771 () Bool)

(assert (=> b!2172484 m!2613771))

(declare-fun m!2613773 () Bool)

(assert (=> b!2172499 m!2613773))

(declare-fun m!2613775 () Bool)

(assert (=> start!210742 m!2613775))

(declare-fun m!2613777 () Bool)

(assert (=> start!210742 m!2613777))

(declare-fun m!2613779 () Bool)

(assert (=> start!210742 m!2613779))

(declare-fun m!2613781 () Bool)

(assert (=> b!2172501 m!2613781))

(declare-fun m!2613783 () Bool)

(assert (=> b!2172489 m!2613783))

(declare-fun m!2613785 () Bool)

(assert (=> b!2172489 m!2613785))

(declare-fun m!2613787 () Bool)

(assert (=> b!2172488 m!2613787))

(declare-fun m!2613789 () Bool)

(assert (=> b!2172488 m!2613789))

(declare-fun m!2613791 () Bool)

(assert (=> b!2172480 m!2613791))

(declare-fun m!2613793 () Bool)

(assert (=> b!2172480 m!2613793))

(declare-fun m!2613795 () Bool)

(assert (=> b!2172480 m!2613795))

(declare-fun m!2613797 () Bool)

(assert (=> b!2172494 m!2613797))

(declare-fun m!2613799 () Bool)

(assert (=> b!2172485 m!2613799))

(declare-fun m!2613801 () Bool)

(assert (=> b!2172485 m!2613801))

(declare-fun m!2613803 () Bool)

(assert (=> b!2172485 m!2613803))

(declare-fun m!2613805 () Bool)

(assert (=> b!2172485 m!2613805))

(assert (=> b!2172485 m!2613805))

(declare-fun m!2613807 () Bool)

(assert (=> b!2172485 m!2613807))

(declare-fun m!2613809 () Bool)

(assert (=> b!2172485 m!2613809))

(declare-fun m!2613811 () Bool)

(assert (=> b!2172485 m!2613811))

(declare-fun m!2613813 () Bool)

(assert (=> b!2172485 m!2613813))

(declare-fun m!2613815 () Bool)

(assert (=> b!2172485 m!2613815))

(declare-fun m!2613817 () Bool)

(assert (=> b!2172485 m!2613817))

(declare-fun m!2613819 () Bool)

(assert (=> b!2172485 m!2613819))

(declare-fun m!2613821 () Bool)

(assert (=> b!2172485 m!2613821))

(declare-fun m!2613823 () Bool)

(assert (=> b!2172485 m!2613823))

(declare-fun m!2613825 () Bool)

(assert (=> b!2172485 m!2613825))

(assert (=> b!2172485 m!2613813))

(assert (=> b!2172485 m!2613821))

(declare-fun m!2613827 () Bool)

(assert (=> b!2172485 m!2613827))

(declare-fun m!2613829 () Bool)

(assert (=> b!2172485 m!2613829))

(declare-fun m!2613831 () Bool)

(assert (=> b!2172496 m!2613831))

(declare-fun m!2613833 () Bool)

(assert (=> b!2172496 m!2613833))

(assert (=> b!2172496 m!2613833))

(declare-fun m!2613835 () Bool)

(assert (=> b!2172496 m!2613835))

(declare-fun m!2613837 () Bool)

(assert (=> b!2172496 m!2613837))

(declare-fun m!2613839 () Bool)

(assert (=> b!2172491 m!2613839))

(assert (=> b!2172483 m!2613789))

(assert (=> b!2172483 m!2613789))

(declare-fun m!2613841 () Bool)

(assert (=> b!2172483 m!2613841))

(assert (=> b!2172483 m!2613841))

(declare-fun m!2613843 () Bool)

(assert (=> b!2172483 m!2613843))

(declare-fun m!2613845 () Bool)

(assert (=> setNonEmpty!18226 m!2613845))

(check-sat (not b!2172484) (not b!2172489) (not b!2172480) (not b!2172483) (not b!2172495) (not b!2172500) (not b!2172487) (not b!2172490) (not b!2172494) (not b!2172492) (not b!2172488) (not b!2172491) (not b!2172493) (not b!2172485) (not b!2172498) (not setNonEmpty!18226) (not b!2172496) (not b!2172499) (not b!2172482) tp_is_empty!9649 (not start!210742) (not b!2172501))
(check-sat)
