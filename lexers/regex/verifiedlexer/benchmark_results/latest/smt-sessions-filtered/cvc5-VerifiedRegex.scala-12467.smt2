; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694726 () Bool)

(assert start!694726)

(declare-fun b!7131494 () Bool)

(declare-datatypes ((Unit!163013 0))(
  ( (Unit!163014) )
))
(declare-fun e!4285728 () Unit!163013)

(declare-fun Unit!163015 () Unit!163013)

(assert (=> b!7131494 (= e!4285728 Unit!163015)))

(declare-fun b!7131495 () Bool)

(declare-fun e!4285735 () Bool)

(declare-fun tp!1965318 () Bool)

(assert (=> b!7131495 (= e!4285735 tp!1965318)))

(declare-fun tp!1965312 () Bool)

(declare-fun setRes!52053 () Bool)

(declare-fun setNonEmpty!52052 () Bool)

(declare-datatypes ((C!36402 0))(
  ( (C!36403 (val!28127 Int)) )
))
(declare-datatypes ((Regex!18066 0))(
  ( (ElementMatch!18066 (c!1330214 C!36402)) (Concat!26911 (regOne!36644 Regex!18066) (regTwo!36644 Regex!18066)) (EmptyExpr!18066) (Star!18066 (reg!18395 Regex!18066)) (EmptyLang!18066) (Union!18066 (regOne!36645 Regex!18066) (regTwo!36645 Regex!18066)) )
))
(declare-datatypes ((List!69186 0))(
  ( (Nil!69062) (Cons!69062 (h!75510 Regex!18066) (t!383163 List!69186)) )
))
(declare-datatypes ((Context!14120 0))(
  ( (Context!14121 (exprs!7560 List!69186)) )
))
(declare-fun setElem!52052 () Context!14120)

(declare-fun inv!88194 (Context!14120) Bool)

(assert (=> setNonEmpty!52052 (= setRes!52053 (and tp!1965312 (inv!88194 setElem!52052) e!4285735))))

(declare-fun z2!471 () (Set Context!14120))

(declare-fun setRest!52052 () (Set Context!14120))

(assert (=> setNonEmpty!52052 (= z2!471 (set.union (set.insert setElem!52052 (as set.empty (Set Context!14120))) setRest!52052))))

(declare-fun b!7131496 () Bool)

(declare-fun res!2909823 () Bool)

(declare-fun e!4285727 () Bool)

(assert (=> b!7131496 (=> (not res!2909823) (not e!4285727))))

(declare-datatypes ((List!69187 0))(
  ( (Nil!69063) (Cons!69063 (h!75511 C!36402) (t!383164 List!69187)) )
))
(declare-fun s2Rec!140 () List!69187)

(assert (=> b!7131496 (= res!2909823 (not (is-Nil!69063 s2Rec!140)))))

(declare-fun b!7131497 () Bool)

(declare-fun e!4285729 () Bool)

(declare-fun tp_is_empty!45733 () Bool)

(declare-fun tp!1965310 () Bool)

(assert (=> b!7131497 (= e!4285729 (and tp_is_empty!45733 tp!1965310))))

(declare-fun res!2909824 () Bool)

(declare-fun e!4285738 () Bool)

(assert (=> start!694726 (=> (not res!2909824) (not e!4285738))))

(declare-fun z1!552 () (Set Context!14120))

(declare-fun s1!1688 () List!69187)

(declare-fun matchZipper!3322 ((Set Context!14120) List!69187) Bool)

(assert (=> start!694726 (= res!2909824 (matchZipper!3322 z1!552 s1!1688))))

(assert (=> start!694726 e!4285738))

(declare-fun e!4285731 () Bool)

(assert (=> start!694726 e!4285731))

(declare-fun condSetEmpty!52052 () Bool)

(assert (=> start!694726 (= condSetEmpty!52052 (= z1!552 (as set.empty (Set Context!14120))))))

(declare-fun setRes!52052 () Bool)

(assert (=> start!694726 setRes!52052))

(declare-fun e!4285730 () Bool)

(assert (=> start!694726 e!4285730))

(declare-fun condSetEmpty!52053 () Bool)

(assert (=> start!694726 (= condSetEmpty!52053 (= z2!471 (as set.empty (Set Context!14120))))))

(assert (=> start!694726 setRes!52053))

(declare-fun e!4285734 () Bool)

(assert (=> start!694726 e!4285734))

(assert (=> start!694726 e!4285729))

(declare-fun e!4285737 () Bool)

(assert (=> start!694726 e!4285737))

(declare-fun b!7131498 () Bool)

(declare-fun tp!1965314 () Bool)

(assert (=> b!7131498 (= e!4285730 (and tp_is_empty!45733 tp!1965314))))

(declare-fun setIsEmpty!52052 () Bool)

(assert (=> setIsEmpty!52052 setRes!52052))

(declare-fun b!7131499 () Bool)

(declare-fun tp!1965316 () Bool)

(assert (=> b!7131499 (= e!4285731 (and tp_is_empty!45733 tp!1965316))))

(declare-fun setIsEmpty!52053 () Bool)

(assert (=> setIsEmpty!52053 setRes!52053))

(declare-fun b!7131500 () Bool)

(declare-fun e!4285736 () Bool)

(assert (=> b!7131500 (= e!4285736 (not (matchZipper!3322 z2!471 s2Rec!140)))))

(declare-fun b!7131501 () Bool)

(declare-fun Unit!163016 () Unit!163013)

(assert (=> b!7131501 (= e!4285728 Unit!163016)))

(declare-fun s1Rec!140 () List!69187)

(declare-fun lt!2564757 () Unit!163013)

(declare-fun s2!1620 () List!69187)

(declare-fun s!7390 () List!69187)

(declare-fun lemmaSamePrefixThenSameSuffix!2746 (List!69187 List!69187 List!69187 List!69187 List!69187) Unit!163013)

(assert (=> b!7131501 (= lt!2564757 (lemmaSamePrefixThenSameSuffix!2746 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7131501 false))

(declare-fun b!7131502 () Bool)

(declare-fun res!2909829 () Bool)

(declare-fun e!4285733 () Bool)

(assert (=> b!7131502 (=> (not res!2909829) (not e!4285733))))

(declare-fun isPrefix!5935 (List!69187 List!69187) Bool)

(assert (=> b!7131502 (= res!2909829 (isPrefix!5935 s1Rec!140 s1!1688))))

(declare-fun b!7131503 () Bool)

(declare-fun res!2909826 () Bool)

(assert (=> b!7131503 (=> (not res!2909826) (not e!4285738))))

(assert (=> b!7131503 (= res!2909826 (matchZipper!3322 z2!471 s2!1620))))

(declare-fun b!7131504 () Bool)

(declare-datatypes ((tuple2!68370 0))(
  ( (tuple2!68371 (_1!37488 List!69187) (_2!37488 List!69187)) )
))
(declare-datatypes ((Option!17017 0))(
  ( (None!17016) (Some!17016 (v!53510 tuple2!68370)) )
))
(declare-fun isDefined!13714 (Option!17017) Bool)

(declare-fun findConcatSeparationZippers!533 ((Set Context!14120) (Set Context!14120) List!69187 List!69187 List!69187) Option!17017)

(assert (=> b!7131504 (= e!4285727 (not (isDefined!13714 (findConcatSeparationZippers!533 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390))))))

(declare-fun lt!2564752 () List!69187)

(assert (=> b!7131504 (isDefined!13714 (findConcatSeparationZippers!533 z1!552 z2!471 lt!2564752 (t!383164 s2Rec!140) s!7390))))

(declare-fun lt!2564750 () Unit!163013)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!111 ((Set Context!14120) (Set Context!14120) List!69187 List!69187 List!69187 List!69187 List!69187) Unit!163013)

(assert (=> b!7131504 (= lt!2564750 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!111 z1!552 z2!471 s1!1688 s2!1620 s!7390 lt!2564752 (t!383164 s2Rec!140)))))

(assert (=> b!7131504 (isPrefix!5935 lt!2564752 s1!1688)))

(declare-fun lt!2564755 () Unit!163013)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!788 (List!69187 List!69187 List!69187) Unit!163013)

(assert (=> b!7131504 (= lt!2564755 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!788 s1!1688 lt!2564752 s!7390))))

(declare-fun lt!2564760 () Unit!163013)

(declare-fun e!4285732 () Unit!163013)

(assert (=> b!7131504 (= lt!2564760 e!4285732)))

(declare-fun c!1330212 () Bool)

(declare-fun size!41491 (List!69187) Int)

(assert (=> b!7131504 (= c!1330212 (= (size!41491 s1Rec!140) (size!41491 s1!1688)))))

(declare-fun lt!2564758 () List!69187)

(assert (=> b!7131504 (isPrefix!5935 lt!2564752 lt!2564758)))

(declare-fun lt!2564748 () Unit!163013)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3648 (List!69187 List!69187) Unit!163013)

(assert (=> b!7131504 (= lt!2564748 (lemmaConcatTwoListThenFirstIsPrefix!3648 lt!2564752 (t!383164 s2Rec!140)))))

(assert (=> b!7131504 (= lt!2564758 s!7390)))

(declare-fun ++!16204 (List!69187 List!69187) List!69187)

(assert (=> b!7131504 (= lt!2564758 (++!16204 lt!2564752 (t!383164 s2Rec!140)))))

(assert (=> b!7131504 (= lt!2564752 (++!16204 s1Rec!140 (Cons!69063 (h!75511 s2Rec!140) Nil!69063)))))

(declare-fun lt!2564747 () Unit!163013)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3026 (List!69187 C!36402 List!69187 List!69187) Unit!163013)

(assert (=> b!7131504 (= lt!2564747 (lemmaMoveElementToOtherListKeepsConcatEq!3026 s1Rec!140 (h!75511 s2Rec!140) (t!383164 s2Rec!140) s!7390))))

(declare-fun lt!2564756 () Unit!163013)

(assert (=> b!7131504 (= lt!2564756 e!4285728)))

(declare-fun c!1330213 () Bool)

(assert (=> b!7131504 (= c!1330213 (= s1Rec!140 s1!1688))))

(declare-fun lt!2564749 () List!69187)

(assert (=> b!7131504 (isPrefix!5935 s1Rec!140 lt!2564749)))

(declare-fun lt!2564754 () Unit!163013)

(assert (=> b!7131504 (= lt!2564754 (lemmaConcatTwoListThenFirstIsPrefix!3648 s1Rec!140 s2Rec!140))))

(declare-fun lt!2564759 () List!69187)

(assert (=> b!7131504 (isPrefix!5935 s1!1688 lt!2564759)))

(declare-fun lt!2564753 () Unit!163013)

(assert (=> b!7131504 (= lt!2564753 (lemmaConcatTwoListThenFirstIsPrefix!3648 s1!1688 s2!1620))))

(declare-fun b!7131505 () Bool)

(declare-fun Unit!163017 () Unit!163013)

(assert (=> b!7131505 (= e!4285732 Unit!163017)))

(declare-fun lt!2564751 () Unit!163013)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1456 (List!69187 List!69187 List!69187) Unit!163013)

(assert (=> b!7131505 (= lt!2564751 (lemmaIsPrefixSameLengthThenSameList!1456 s1!1688 s1Rec!140 s!7390))))

(assert (=> b!7131505 false))

(declare-fun b!7131506 () Bool)

(assert (=> b!7131506 (= e!4285738 e!4285733)))

(declare-fun res!2909828 () Bool)

(assert (=> b!7131506 (=> (not res!2909828) (not e!4285733))))

(assert (=> b!7131506 (= res!2909828 (= lt!2564759 s!7390))))

(assert (=> b!7131506 (= lt!2564759 (++!16204 s1!1688 s2!1620))))

(declare-fun b!7131507 () Bool)

(declare-fun Unit!163018 () Unit!163013)

(assert (=> b!7131507 (= e!4285732 Unit!163018)))

(declare-fun b!7131508 () Bool)

(declare-fun tp!1965315 () Bool)

(assert (=> b!7131508 (= e!4285734 (and tp_is_empty!45733 tp!1965315))))

(declare-fun b!7131509 () Bool)

(declare-fun tp!1965311 () Bool)

(assert (=> b!7131509 (= e!4285737 (and tp_is_empty!45733 tp!1965311))))

(declare-fun setNonEmpty!52053 () Bool)

(declare-fun e!4285726 () Bool)

(declare-fun setElem!52053 () Context!14120)

(declare-fun tp!1965313 () Bool)

(assert (=> setNonEmpty!52053 (= setRes!52052 (and tp!1965313 (inv!88194 setElem!52053) e!4285726))))

(declare-fun setRest!52053 () (Set Context!14120))

(assert (=> setNonEmpty!52053 (= z1!552 (set.union (set.insert setElem!52053 (as set.empty (Set Context!14120))) setRest!52053))))

(declare-fun b!7131510 () Bool)

(declare-fun tp!1965317 () Bool)

(assert (=> b!7131510 (= e!4285726 tp!1965317)))

(declare-fun b!7131511 () Bool)

(assert (=> b!7131511 (= e!4285733 e!4285727)))

(declare-fun res!2909827 () Bool)

(assert (=> b!7131511 (=> (not res!2909827) (not e!4285727))))

(assert (=> b!7131511 (= res!2909827 (= lt!2564749 s!7390))))

(assert (=> b!7131511 (= lt!2564749 (++!16204 s1Rec!140 s2Rec!140))))

(declare-fun b!7131512 () Bool)

(declare-fun res!2909825 () Bool)

(assert (=> b!7131512 (=> (not res!2909825) (not e!4285727))))

(assert (=> b!7131512 (= res!2909825 e!4285736)))

(declare-fun res!2909822 () Bool)

(assert (=> b!7131512 (=> res!2909822 e!4285736)))

(assert (=> b!7131512 (= res!2909822 (not (matchZipper!3322 z1!552 s1Rec!140)))))

(assert (= (and start!694726 res!2909824) b!7131503))

(assert (= (and b!7131503 res!2909826) b!7131506))

(assert (= (and b!7131506 res!2909828) b!7131502))

(assert (= (and b!7131502 res!2909829) b!7131511))

(assert (= (and b!7131511 res!2909827) b!7131512))

(assert (= (and b!7131512 (not res!2909822)) b!7131500))

(assert (= (and b!7131512 res!2909825) b!7131496))

(assert (= (and b!7131496 res!2909823) b!7131504))

(assert (= (and b!7131504 c!1330213) b!7131501))

(assert (= (and b!7131504 (not c!1330213)) b!7131494))

(assert (= (and b!7131504 c!1330212) b!7131505))

(assert (= (and b!7131504 (not c!1330212)) b!7131507))

(assert (= (and start!694726 (is-Cons!69063 s1Rec!140)) b!7131499))

(assert (= (and start!694726 condSetEmpty!52052) setIsEmpty!52052))

(assert (= (and start!694726 (not condSetEmpty!52052)) setNonEmpty!52053))

(assert (= setNonEmpty!52053 b!7131510))

(assert (= (and start!694726 (is-Cons!69063 s2Rec!140)) b!7131498))

(assert (= (and start!694726 condSetEmpty!52053) setIsEmpty!52053))

(assert (= (and start!694726 (not condSetEmpty!52053)) setNonEmpty!52052))

(assert (= setNonEmpty!52052 b!7131495))

(assert (= (and start!694726 (is-Cons!69063 s2!1620)) b!7131508))

(assert (= (and start!694726 (is-Cons!69063 s1!1688)) b!7131497))

(assert (= (and start!694726 (is-Cons!69063 s!7390)) b!7131509))

(declare-fun m!7848776 () Bool)

(assert (=> b!7131504 m!7848776))

(declare-fun m!7848778 () Bool)

(assert (=> b!7131504 m!7848778))

(declare-fun m!7848780 () Bool)

(assert (=> b!7131504 m!7848780))

(declare-fun m!7848782 () Bool)

(assert (=> b!7131504 m!7848782))

(declare-fun m!7848784 () Bool)

(assert (=> b!7131504 m!7848784))

(declare-fun m!7848786 () Bool)

(assert (=> b!7131504 m!7848786))

(declare-fun m!7848788 () Bool)

(assert (=> b!7131504 m!7848788))

(declare-fun m!7848790 () Bool)

(assert (=> b!7131504 m!7848790))

(declare-fun m!7848792 () Bool)

(assert (=> b!7131504 m!7848792))

(declare-fun m!7848794 () Bool)

(assert (=> b!7131504 m!7848794))

(declare-fun m!7848796 () Bool)

(assert (=> b!7131504 m!7848796))

(declare-fun m!7848798 () Bool)

(assert (=> b!7131504 m!7848798))

(declare-fun m!7848800 () Bool)

(assert (=> b!7131504 m!7848800))

(declare-fun m!7848802 () Bool)

(assert (=> b!7131504 m!7848802))

(declare-fun m!7848804 () Bool)

(assert (=> b!7131504 m!7848804))

(assert (=> b!7131504 m!7848788))

(declare-fun m!7848806 () Bool)

(assert (=> b!7131504 m!7848806))

(assert (=> b!7131504 m!7848780))

(declare-fun m!7848808 () Bool)

(assert (=> b!7131504 m!7848808))

(declare-fun m!7848810 () Bool)

(assert (=> b!7131504 m!7848810))

(declare-fun m!7848812 () Bool)

(assert (=> b!7131512 m!7848812))

(declare-fun m!7848814 () Bool)

(assert (=> b!7131503 m!7848814))

(declare-fun m!7848816 () Bool)

(assert (=> start!694726 m!7848816))

(declare-fun m!7848818 () Bool)

(assert (=> b!7131511 m!7848818))

(declare-fun m!7848820 () Bool)

(assert (=> b!7131500 m!7848820))

(declare-fun m!7848822 () Bool)

(assert (=> setNonEmpty!52053 m!7848822))

(declare-fun m!7848824 () Bool)

(assert (=> b!7131505 m!7848824))

(declare-fun m!7848826 () Bool)

(assert (=> setNonEmpty!52052 m!7848826))

(declare-fun m!7848828 () Bool)

(assert (=> b!7131502 m!7848828))

(declare-fun m!7848830 () Bool)

(assert (=> b!7131501 m!7848830))

(declare-fun m!7848832 () Bool)

(assert (=> b!7131506 m!7848832))

(push 1)

(assert (not b!7131509))

(assert (not b!7131501))

(assert (not b!7131495))

(assert (not b!7131506))

(assert (not setNonEmpty!52052))

(assert (not b!7131498))

(assert (not b!7131497))

(assert (not start!694726))

(assert (not b!7131503))

(assert (not b!7131505))

(assert (not b!7131512))

(assert (not b!7131504))

(assert (not setNonEmpty!52053))

(assert (not b!7131510))

(assert (not b!7131508))

(assert (not b!7131502))

(assert (not b!7131500))

(assert (not b!7131499))

(assert (not b!7131511))

(assert tp_is_empty!45733)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2225640 () Bool)

(assert (=> d!2225640 (= s1!1688 s1Rec!140)))

(declare-fun lt!2564805 () Unit!163013)

(declare-fun choose!55116 (List!69187 List!69187 List!69187) Unit!163013)

(assert (=> d!2225640 (= lt!2564805 (choose!55116 s1!1688 s1Rec!140 s!7390))))

(assert (=> d!2225640 (isPrefix!5935 s1!1688 s!7390)))

(assert (=> d!2225640 (= (lemmaIsPrefixSameLengthThenSameList!1456 s1!1688 s1Rec!140 s!7390) lt!2564805)))

(declare-fun bs!1886954 () Bool)

(assert (= bs!1886954 d!2225640))

(declare-fun m!7848892 () Bool)

(assert (=> bs!1886954 m!7848892))

(declare-fun m!7848894 () Bool)

(assert (=> bs!1886954 m!7848894))

(assert (=> b!7131505 d!2225640))

(declare-fun d!2225644 () Bool)

(declare-fun c!1330224 () Bool)

(declare-fun isEmpty!40032 (List!69187) Bool)

(assert (=> d!2225644 (= c!1330224 (isEmpty!40032 s2!1620))))

(declare-fun e!4285780 () Bool)

(assert (=> d!2225644 (= (matchZipper!3322 z2!471 s2!1620) e!4285780)))

(declare-fun b!7131574 () Bool)

(declare-fun nullableZipper!2766 ((Set Context!14120)) Bool)

(assert (=> b!7131574 (= e!4285780 (nullableZipper!2766 z2!471))))

(declare-fun b!7131575 () Bool)

(declare-fun derivationStepZipper!3178 ((Set Context!14120) C!36402) (Set Context!14120))

(declare-fun head!14475 (List!69187) C!36402)

(declare-fun tail!13947 (List!69187) List!69187)

(assert (=> b!7131575 (= e!4285780 (matchZipper!3322 (derivationStepZipper!3178 z2!471 (head!14475 s2!1620)) (tail!13947 s2!1620)))))

(assert (= (and d!2225644 c!1330224) b!7131574))

(assert (= (and d!2225644 (not c!1330224)) b!7131575))

(declare-fun m!7848896 () Bool)

(assert (=> d!2225644 m!7848896))

(declare-fun m!7848898 () Bool)

(assert (=> b!7131574 m!7848898))

(declare-fun m!7848900 () Bool)

(assert (=> b!7131575 m!7848900))

(assert (=> b!7131575 m!7848900))

(declare-fun m!7848902 () Bool)

(assert (=> b!7131575 m!7848902))

(declare-fun m!7848904 () Bool)

(assert (=> b!7131575 m!7848904))

(assert (=> b!7131575 m!7848902))

(assert (=> b!7131575 m!7848904))

(declare-fun m!7848906 () Bool)

(assert (=> b!7131575 m!7848906))

(assert (=> b!7131503 d!2225644))

(declare-fun d!2225646 () Bool)

(declare-fun c!1330225 () Bool)

(assert (=> d!2225646 (= c!1330225 (isEmpty!40032 s1!1688))))

(declare-fun e!4285781 () Bool)

(assert (=> d!2225646 (= (matchZipper!3322 z1!552 s1!1688) e!4285781)))

(declare-fun b!7131576 () Bool)

(assert (=> b!7131576 (= e!4285781 (nullableZipper!2766 z1!552))))

(declare-fun b!7131577 () Bool)

(assert (=> b!7131577 (= e!4285781 (matchZipper!3322 (derivationStepZipper!3178 z1!552 (head!14475 s1!1688)) (tail!13947 s1!1688)))))

(assert (= (and d!2225646 c!1330225) b!7131576))

(assert (= (and d!2225646 (not c!1330225)) b!7131577))

(declare-fun m!7848908 () Bool)

(assert (=> d!2225646 m!7848908))

(declare-fun m!7848910 () Bool)

(assert (=> b!7131576 m!7848910))

(declare-fun m!7848912 () Bool)

(assert (=> b!7131577 m!7848912))

(assert (=> b!7131577 m!7848912))

(declare-fun m!7848914 () Bool)

(assert (=> b!7131577 m!7848914))

(declare-fun m!7848916 () Bool)

(assert (=> b!7131577 m!7848916))

(assert (=> b!7131577 m!7848914))

(assert (=> b!7131577 m!7848916))

(declare-fun m!7848918 () Bool)

(assert (=> b!7131577 m!7848918))

(assert (=> start!694726 d!2225646))

(declare-fun d!2225648 () Bool)

(declare-fun lambda!433226 () Int)

(declare-fun forall!16926 (List!69186 Int) Bool)

(assert (=> d!2225648 (= (inv!88194 setElem!52052) (forall!16926 (exprs!7560 setElem!52052) lambda!433226))))

(declare-fun bs!1886955 () Bool)

(assert (= bs!1886955 d!2225648))

(declare-fun m!7848920 () Bool)

(assert (=> bs!1886955 m!7848920))

(assert (=> setNonEmpty!52052 d!2225648))

(declare-fun d!2225650 () Bool)

(assert (=> d!2225650 (= (++!16204 (++!16204 s1Rec!140 (Cons!69063 (h!75511 s2Rec!140) Nil!69063)) (t!383164 s2Rec!140)) s!7390)))

(declare-fun lt!2564808 () Unit!163013)

(declare-fun choose!55117 (List!69187 C!36402 List!69187 List!69187) Unit!163013)

(assert (=> d!2225650 (= lt!2564808 (choose!55117 s1Rec!140 (h!75511 s2Rec!140) (t!383164 s2Rec!140) s!7390))))

(assert (=> d!2225650 (= (++!16204 s1Rec!140 (Cons!69063 (h!75511 s2Rec!140) (t!383164 s2Rec!140))) s!7390)))

(assert (=> d!2225650 (= (lemmaMoveElementToOtherListKeepsConcatEq!3026 s1Rec!140 (h!75511 s2Rec!140) (t!383164 s2Rec!140) s!7390) lt!2564808)))

(declare-fun bs!1886956 () Bool)

(assert (= bs!1886956 d!2225650))

(assert (=> bs!1886956 m!7848796))

(assert (=> bs!1886956 m!7848796))

(declare-fun m!7848922 () Bool)

(assert (=> bs!1886956 m!7848922))

(declare-fun m!7848924 () Bool)

(assert (=> bs!1886956 m!7848924))

(declare-fun m!7848926 () Bool)

(assert (=> bs!1886956 m!7848926))

(assert (=> b!7131504 d!2225650))

(declare-fun d!2225652 () Bool)

(declare-fun e!4285788 () Bool)

(assert (=> d!2225652 e!4285788))

(declare-fun res!2909864 () Bool)

(assert (=> d!2225652 (=> res!2909864 e!4285788)))

(declare-fun lt!2564811 () Bool)

(assert (=> d!2225652 (= res!2909864 (not lt!2564811))))

(declare-fun e!4285790 () Bool)

(assert (=> d!2225652 (= lt!2564811 e!4285790)))

(declare-fun res!2909862 () Bool)

(assert (=> d!2225652 (=> res!2909862 e!4285790)))

(assert (=> d!2225652 (= res!2909862 (is-Nil!69063 lt!2564752))))

(assert (=> d!2225652 (= (isPrefix!5935 lt!2564752 s1!1688) lt!2564811)))

(declare-fun b!7131586 () Bool)

(declare-fun e!4285789 () Bool)

(assert (=> b!7131586 (= e!4285790 e!4285789)))

(declare-fun res!2909863 () Bool)

(assert (=> b!7131586 (=> (not res!2909863) (not e!4285789))))

(assert (=> b!7131586 (= res!2909863 (not (is-Nil!69063 s1!1688)))))

(declare-fun b!7131589 () Bool)

(assert (=> b!7131589 (= e!4285788 (>= (size!41491 s1!1688) (size!41491 lt!2564752)))))

(declare-fun b!7131588 () Bool)

(assert (=> b!7131588 (= e!4285789 (isPrefix!5935 (tail!13947 lt!2564752) (tail!13947 s1!1688)))))

(declare-fun b!7131587 () Bool)

(declare-fun res!2909865 () Bool)

(assert (=> b!7131587 (=> (not res!2909865) (not e!4285789))))

(assert (=> b!7131587 (= res!2909865 (= (head!14475 lt!2564752) (head!14475 s1!1688)))))

(assert (= (and d!2225652 (not res!2909862)) b!7131586))

(assert (= (and b!7131586 res!2909863) b!7131587))

(assert (= (and b!7131587 res!2909865) b!7131588))

(assert (= (and d!2225652 (not res!2909864)) b!7131589))

(assert (=> b!7131589 m!7848810))

(declare-fun m!7848928 () Bool)

(assert (=> b!7131589 m!7848928))

(declare-fun m!7848930 () Bool)

(assert (=> b!7131588 m!7848930))

(assert (=> b!7131588 m!7848916))

(assert (=> b!7131588 m!7848930))

(assert (=> b!7131588 m!7848916))

(declare-fun m!7848932 () Bool)

(assert (=> b!7131588 m!7848932))

(declare-fun m!7848934 () Bool)

(assert (=> b!7131587 m!7848934))

(assert (=> b!7131587 m!7848912))

(assert (=> b!7131504 d!2225652))

(declare-fun d!2225654 () Bool)

(assert (=> d!2225654 (isPrefix!5935 lt!2564752 s1!1688)))

(declare-fun lt!2564814 () Unit!163013)

(declare-fun choose!55118 (List!69187 List!69187 List!69187) Unit!163013)

(assert (=> d!2225654 (= lt!2564814 (choose!55118 s1!1688 lt!2564752 s!7390))))

(assert (=> d!2225654 (isPrefix!5935 s1!1688 s!7390)))

(assert (=> d!2225654 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!788 s1!1688 lt!2564752 s!7390) lt!2564814)))

(declare-fun bs!1886957 () Bool)

(assert (= bs!1886957 d!2225654))

(assert (=> bs!1886957 m!7848806))

(declare-fun m!7848936 () Bool)

(assert (=> bs!1886957 m!7848936))

(assert (=> bs!1886957 m!7848894))

(assert (=> b!7131504 d!2225654))

(declare-fun d!2225656 () Bool)

(assert (=> d!2225656 (isPrefix!5935 s1!1688 (++!16204 s1!1688 s2!1620))))

(declare-fun lt!2564817 () Unit!163013)

(declare-fun choose!55119 (List!69187 List!69187) Unit!163013)

(assert (=> d!2225656 (= lt!2564817 (choose!55119 s1!1688 s2!1620))))

(assert (=> d!2225656 (= (lemmaConcatTwoListThenFirstIsPrefix!3648 s1!1688 s2!1620) lt!2564817)))

(declare-fun bs!1886958 () Bool)

(assert (= bs!1886958 d!2225656))

(assert (=> bs!1886958 m!7848832))

(assert (=> bs!1886958 m!7848832))

(declare-fun m!7848938 () Bool)

(assert (=> bs!1886958 m!7848938))

(declare-fun m!7848940 () Bool)

(assert (=> bs!1886958 m!7848940))

(assert (=> b!7131504 d!2225656))

(declare-fun d!2225658 () Bool)

(declare-fun isEmpty!40033 (Option!17017) Bool)

(assert (=> d!2225658 (= (isDefined!13714 (findConcatSeparationZippers!533 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390)) (not (isEmpty!40033 (findConcatSeparationZippers!533 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390))))))

(declare-fun bs!1886959 () Bool)

(assert (= bs!1886959 d!2225658))

(assert (=> bs!1886959 m!7848788))

(declare-fun m!7848942 () Bool)

(assert (=> bs!1886959 m!7848942))

(assert (=> b!7131504 d!2225658))

(declare-fun d!2225660 () Bool)

(declare-fun lt!2564820 () Int)

(assert (=> d!2225660 (>= lt!2564820 0)))

(declare-fun e!4285793 () Int)

(assert (=> d!2225660 (= lt!2564820 e!4285793)))

(declare-fun c!1330228 () Bool)

(assert (=> d!2225660 (= c!1330228 (is-Nil!69063 s1Rec!140))))

(assert (=> d!2225660 (= (size!41491 s1Rec!140) lt!2564820)))

(declare-fun b!7131594 () Bool)

(assert (=> b!7131594 (= e!4285793 0)))

(declare-fun b!7131595 () Bool)

(assert (=> b!7131595 (= e!4285793 (+ 1 (size!41491 (t!383164 s1Rec!140))))))

(assert (= (and d!2225660 c!1330228) b!7131594))

(assert (= (and d!2225660 (not c!1330228)) b!7131595))

(declare-fun m!7848944 () Bool)

(assert (=> b!7131595 m!7848944))

(assert (=> b!7131504 d!2225660))

(declare-fun d!2225662 () Bool)

(assert (=> d!2225662 (isPrefix!5935 s1Rec!140 (++!16204 s1Rec!140 s2Rec!140))))

(declare-fun lt!2564821 () Unit!163013)

(assert (=> d!2225662 (= lt!2564821 (choose!55119 s1Rec!140 s2Rec!140))))

(assert (=> d!2225662 (= (lemmaConcatTwoListThenFirstIsPrefix!3648 s1Rec!140 s2Rec!140) lt!2564821)))

(declare-fun bs!1886960 () Bool)

(assert (= bs!1886960 d!2225662))

(assert (=> bs!1886960 m!7848818))

(assert (=> bs!1886960 m!7848818))

(declare-fun m!7848946 () Bool)

(assert (=> bs!1886960 m!7848946))

(declare-fun m!7848948 () Bool)

(assert (=> bs!1886960 m!7848948))

(assert (=> b!7131504 d!2225662))

(declare-fun b!7131614 () Bool)

(declare-fun e!4285808 () Bool)

(assert (=> b!7131614 (= e!4285808 (matchZipper!3322 z2!471 s2Rec!140))))

(declare-fun b!7131615 () Bool)

(declare-fun e!4285805 () Bool)

(declare-fun lt!2564829 () Option!17017)

(assert (=> b!7131615 (= e!4285805 (not (isDefined!13714 lt!2564829)))))

(declare-fun b!7131616 () Bool)

(declare-fun lt!2564828 () Unit!163013)

(declare-fun lt!2564830 () Unit!163013)

(assert (=> b!7131616 (= lt!2564828 lt!2564830)))

(assert (=> b!7131616 (= (++!16204 (++!16204 s1Rec!140 (Cons!69063 (h!75511 s2Rec!140) Nil!69063)) (t!383164 s2Rec!140)) s!7390)))

(assert (=> b!7131616 (= lt!2564830 (lemmaMoveElementToOtherListKeepsConcatEq!3026 s1Rec!140 (h!75511 s2Rec!140) (t!383164 s2Rec!140) s!7390))))

(declare-fun e!4285804 () Option!17017)

(assert (=> b!7131616 (= e!4285804 (findConcatSeparationZippers!533 z1!552 z2!471 (++!16204 s1Rec!140 (Cons!69063 (h!75511 s2Rec!140) Nil!69063)) (t!383164 s2Rec!140) s!7390))))

(declare-fun b!7131617 () Bool)

(declare-fun e!4285806 () Option!17017)

(assert (=> b!7131617 (= e!4285806 (Some!17016 (tuple2!68371 s1Rec!140 s2Rec!140)))))

(declare-fun b!7131618 () Bool)

(declare-fun res!2909878 () Bool)

(declare-fun e!4285807 () Bool)

(assert (=> b!7131618 (=> (not res!2909878) (not e!4285807))))

(declare-fun get!24246 (Option!17017) tuple2!68370)

(assert (=> b!7131618 (= res!2909878 (matchZipper!3322 z2!471 (_2!37488 (get!24246 lt!2564829))))))

(declare-fun b!7131619 () Bool)

(assert (=> b!7131619 (= e!4285807 (= (++!16204 (_1!37488 (get!24246 lt!2564829)) (_2!37488 (get!24246 lt!2564829))) s!7390))))

(declare-fun b!7131620 () Bool)

(assert (=> b!7131620 (= e!4285804 None!17016)))

(declare-fun b!7131621 () Bool)

(assert (=> b!7131621 (= e!4285806 e!4285804)))

(declare-fun c!1330233 () Bool)

(assert (=> b!7131621 (= c!1330233 (is-Nil!69063 s2Rec!140))))

(declare-fun d!2225664 () Bool)

(assert (=> d!2225664 e!4285805))

(declare-fun res!2909880 () Bool)

(assert (=> d!2225664 (=> res!2909880 e!4285805)))

(assert (=> d!2225664 (= res!2909880 e!4285807)))

(declare-fun res!2909877 () Bool)

(assert (=> d!2225664 (=> (not res!2909877) (not e!4285807))))

(assert (=> d!2225664 (= res!2909877 (isDefined!13714 lt!2564829))))

(assert (=> d!2225664 (= lt!2564829 e!4285806)))

(declare-fun c!1330234 () Bool)

(assert (=> d!2225664 (= c!1330234 e!4285808)))

(declare-fun res!2909879 () Bool)

(assert (=> d!2225664 (=> (not res!2909879) (not e!4285808))))

(assert (=> d!2225664 (= res!2909879 (matchZipper!3322 z1!552 s1Rec!140))))

(assert (=> d!2225664 (= (++!16204 s1Rec!140 s2Rec!140) s!7390)))

(assert (=> d!2225664 (= (findConcatSeparationZippers!533 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390) lt!2564829)))

(declare-fun b!7131622 () Bool)

(declare-fun res!2909876 () Bool)

(assert (=> b!7131622 (=> (not res!2909876) (not e!4285807))))

(assert (=> b!7131622 (= res!2909876 (matchZipper!3322 z1!552 (_1!37488 (get!24246 lt!2564829))))))

(assert (= (and d!2225664 res!2909879) b!7131614))

(assert (= (and d!2225664 c!1330234) b!7131617))

(assert (= (and d!2225664 (not c!1330234)) b!7131621))

(assert (= (and b!7131621 c!1330233) b!7131620))

(assert (= (and b!7131621 (not c!1330233)) b!7131616))

(assert (= (and d!2225664 res!2909877) b!7131622))

(assert (= (and b!7131622 res!2909876) b!7131618))

(assert (= (and b!7131618 res!2909878) b!7131619))

(assert (= (and d!2225664 (not res!2909880)) b!7131615))

(declare-fun m!7848950 () Bool)

(assert (=> b!7131619 m!7848950))

(declare-fun m!7848952 () Bool)

(assert (=> b!7131619 m!7848952))

(declare-fun m!7848954 () Bool)

(assert (=> d!2225664 m!7848954))

(assert (=> d!2225664 m!7848812))

(assert (=> d!2225664 m!7848818))

(assert (=> b!7131614 m!7848820))

(assert (=> b!7131622 m!7848950))

(declare-fun m!7848956 () Bool)

(assert (=> b!7131622 m!7848956))

(assert (=> b!7131616 m!7848796))

(assert (=> b!7131616 m!7848796))

(assert (=> b!7131616 m!7848922))

(assert (=> b!7131616 m!7848800))

(assert (=> b!7131616 m!7848796))

(declare-fun m!7848958 () Bool)

(assert (=> b!7131616 m!7848958))

(assert (=> b!7131615 m!7848954))

(assert (=> b!7131618 m!7848950))

(declare-fun m!7848960 () Bool)

(assert (=> b!7131618 m!7848960))

(assert (=> b!7131504 d!2225664))

(declare-fun d!2225666 () Bool)

(declare-fun lt!2564831 () Int)

(assert (=> d!2225666 (>= lt!2564831 0)))

(declare-fun e!4285809 () Int)

(assert (=> d!2225666 (= lt!2564831 e!4285809)))

(declare-fun c!1330235 () Bool)

(assert (=> d!2225666 (= c!1330235 (is-Nil!69063 s1!1688))))

(assert (=> d!2225666 (= (size!41491 s1!1688) lt!2564831)))

(declare-fun b!7131623 () Bool)

(assert (=> b!7131623 (= e!4285809 0)))

(declare-fun b!7131624 () Bool)

(assert (=> b!7131624 (= e!4285809 (+ 1 (size!41491 (t!383164 s1!1688))))))

(assert (= (and d!2225666 c!1330235) b!7131623))

(assert (= (and d!2225666 (not c!1330235)) b!7131624))

(declare-fun m!7848962 () Bool)

(assert (=> b!7131624 m!7848962))

(assert (=> b!7131504 d!2225666))

(declare-fun b!7131625 () Bool)

(declare-fun e!4285814 () Bool)

(assert (=> b!7131625 (= e!4285814 (matchZipper!3322 z2!471 (t!383164 s2Rec!140)))))

(declare-fun b!7131626 () Bool)

(declare-fun e!4285811 () Bool)

(declare-fun lt!2564833 () Option!17017)

(assert (=> b!7131626 (= e!4285811 (not (isDefined!13714 lt!2564833)))))

(declare-fun b!7131627 () Bool)

(declare-fun lt!2564832 () Unit!163013)

(declare-fun lt!2564834 () Unit!163013)

(assert (=> b!7131627 (= lt!2564832 lt!2564834)))

(assert (=> b!7131627 (= (++!16204 (++!16204 lt!2564752 (Cons!69063 (h!75511 (t!383164 s2Rec!140)) Nil!69063)) (t!383164 (t!383164 s2Rec!140))) s!7390)))

(assert (=> b!7131627 (= lt!2564834 (lemmaMoveElementToOtherListKeepsConcatEq!3026 lt!2564752 (h!75511 (t!383164 s2Rec!140)) (t!383164 (t!383164 s2Rec!140)) s!7390))))

(declare-fun e!4285810 () Option!17017)

(assert (=> b!7131627 (= e!4285810 (findConcatSeparationZippers!533 z1!552 z2!471 (++!16204 lt!2564752 (Cons!69063 (h!75511 (t!383164 s2Rec!140)) Nil!69063)) (t!383164 (t!383164 s2Rec!140)) s!7390))))

(declare-fun b!7131628 () Bool)

(declare-fun e!4285812 () Option!17017)

(assert (=> b!7131628 (= e!4285812 (Some!17016 (tuple2!68371 lt!2564752 (t!383164 s2Rec!140))))))

(declare-fun b!7131629 () Bool)

(declare-fun res!2909883 () Bool)

(declare-fun e!4285813 () Bool)

(assert (=> b!7131629 (=> (not res!2909883) (not e!4285813))))

(assert (=> b!7131629 (= res!2909883 (matchZipper!3322 z2!471 (_2!37488 (get!24246 lt!2564833))))))

(declare-fun b!7131630 () Bool)

(assert (=> b!7131630 (= e!4285813 (= (++!16204 (_1!37488 (get!24246 lt!2564833)) (_2!37488 (get!24246 lt!2564833))) s!7390))))

(declare-fun b!7131631 () Bool)

(assert (=> b!7131631 (= e!4285810 None!17016)))

(declare-fun b!7131632 () Bool)

(assert (=> b!7131632 (= e!4285812 e!4285810)))

(declare-fun c!1330236 () Bool)

(assert (=> b!7131632 (= c!1330236 (is-Nil!69063 (t!383164 s2Rec!140)))))

(declare-fun d!2225668 () Bool)

(assert (=> d!2225668 e!4285811))

(declare-fun res!2909885 () Bool)

(assert (=> d!2225668 (=> res!2909885 e!4285811)))

(assert (=> d!2225668 (= res!2909885 e!4285813)))

(declare-fun res!2909882 () Bool)

(assert (=> d!2225668 (=> (not res!2909882) (not e!4285813))))

(assert (=> d!2225668 (= res!2909882 (isDefined!13714 lt!2564833))))

(assert (=> d!2225668 (= lt!2564833 e!4285812)))

(declare-fun c!1330237 () Bool)

(assert (=> d!2225668 (= c!1330237 e!4285814)))

(declare-fun res!2909884 () Bool)

(assert (=> d!2225668 (=> (not res!2909884) (not e!4285814))))

(assert (=> d!2225668 (= res!2909884 (matchZipper!3322 z1!552 lt!2564752))))

(assert (=> d!2225668 (= (++!16204 lt!2564752 (t!383164 s2Rec!140)) s!7390)))

(assert (=> d!2225668 (= (findConcatSeparationZippers!533 z1!552 z2!471 lt!2564752 (t!383164 s2Rec!140) s!7390) lt!2564833)))

(declare-fun b!7131633 () Bool)

(declare-fun res!2909881 () Bool)

(assert (=> b!7131633 (=> (not res!2909881) (not e!4285813))))

(assert (=> b!7131633 (= res!2909881 (matchZipper!3322 z1!552 (_1!37488 (get!24246 lt!2564833))))))

(assert (= (and d!2225668 res!2909884) b!7131625))

(assert (= (and d!2225668 c!1330237) b!7131628))

(assert (= (and d!2225668 (not c!1330237)) b!7131632))

(assert (= (and b!7131632 c!1330236) b!7131631))

(assert (= (and b!7131632 (not c!1330236)) b!7131627))

(assert (= (and d!2225668 res!2909882) b!7131633))

(assert (= (and b!7131633 res!2909881) b!7131629))

(assert (= (and b!7131629 res!2909883) b!7131630))

(assert (= (and d!2225668 (not res!2909885)) b!7131626))

(declare-fun m!7848964 () Bool)

(assert (=> b!7131630 m!7848964))

(declare-fun m!7848966 () Bool)

(assert (=> b!7131630 m!7848966))

(declare-fun m!7848968 () Bool)

(assert (=> d!2225668 m!7848968))

(declare-fun m!7848970 () Bool)

(assert (=> d!2225668 m!7848970))

(assert (=> d!2225668 m!7848782))

(declare-fun m!7848972 () Bool)

(assert (=> b!7131625 m!7848972))

(assert (=> b!7131633 m!7848964))

(declare-fun m!7848974 () Bool)

(assert (=> b!7131633 m!7848974))

(declare-fun m!7848976 () Bool)

(assert (=> b!7131627 m!7848976))

(assert (=> b!7131627 m!7848976))

(declare-fun m!7848978 () Bool)

(assert (=> b!7131627 m!7848978))

(declare-fun m!7848980 () Bool)

(assert (=> b!7131627 m!7848980))

(assert (=> b!7131627 m!7848976))

(declare-fun m!7848982 () Bool)

(assert (=> b!7131627 m!7848982))

(assert (=> b!7131626 m!7848968))

(assert (=> b!7131629 m!7848964))

(declare-fun m!7848984 () Bool)

(assert (=> b!7131629 m!7848984))

(assert (=> b!7131504 d!2225668))

(declare-fun d!2225670 () Bool)

(assert (=> d!2225670 (isDefined!13714 (findConcatSeparationZippers!533 z1!552 z2!471 lt!2564752 (t!383164 s2Rec!140) s!7390))))

(declare-fun lt!2564837 () Unit!163013)

(declare-fun choose!55120 ((Set Context!14120) (Set Context!14120) List!69187 List!69187 List!69187 List!69187 List!69187) Unit!163013)

(assert (=> d!2225670 (= lt!2564837 (choose!55120 z1!552 z2!471 s1!1688 s2!1620 s!7390 lt!2564752 (t!383164 s2Rec!140)))))

(assert (=> d!2225670 (matchZipper!3322 z1!552 s1!1688)))

(assert (=> d!2225670 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!111 z1!552 z2!471 s1!1688 s2!1620 s!7390 lt!2564752 (t!383164 s2Rec!140)) lt!2564837)))

(declare-fun bs!1886961 () Bool)

(assert (= bs!1886961 d!2225670))

(assert (=> bs!1886961 m!7848780))

(assert (=> bs!1886961 m!7848780))

(assert (=> bs!1886961 m!7848808))

(declare-fun m!7848986 () Bool)

(assert (=> bs!1886961 m!7848986))

(assert (=> bs!1886961 m!7848816))

(assert (=> b!7131504 d!2225670))

(declare-fun b!7131645 () Bool)

(declare-fun e!4285819 () Bool)

(declare-fun lt!2564840 () List!69187)

(assert (=> b!7131645 (= e!4285819 (or (not (= (t!383164 s2Rec!140) Nil!69063)) (= lt!2564840 lt!2564752)))))

(declare-fun b!7131642 () Bool)

(declare-fun e!4285820 () List!69187)

(assert (=> b!7131642 (= e!4285820 (t!383164 s2Rec!140))))

(declare-fun d!2225672 () Bool)

(assert (=> d!2225672 e!4285819))

(declare-fun res!2909891 () Bool)

(assert (=> d!2225672 (=> (not res!2909891) (not e!4285819))))

(declare-fun content!14126 (List!69187) (Set C!36402))

(assert (=> d!2225672 (= res!2909891 (= (content!14126 lt!2564840) (set.union (content!14126 lt!2564752) (content!14126 (t!383164 s2Rec!140)))))))

(assert (=> d!2225672 (= lt!2564840 e!4285820)))

(declare-fun c!1330240 () Bool)

(assert (=> d!2225672 (= c!1330240 (is-Nil!69063 lt!2564752))))

(assert (=> d!2225672 (= (++!16204 lt!2564752 (t!383164 s2Rec!140)) lt!2564840)))

(declare-fun b!7131644 () Bool)

(declare-fun res!2909890 () Bool)

(assert (=> b!7131644 (=> (not res!2909890) (not e!4285819))))

(assert (=> b!7131644 (= res!2909890 (= (size!41491 lt!2564840) (+ (size!41491 lt!2564752) (size!41491 (t!383164 s2Rec!140)))))))

(declare-fun b!7131643 () Bool)

(assert (=> b!7131643 (= e!4285820 (Cons!69063 (h!75511 lt!2564752) (++!16204 (t!383164 lt!2564752) (t!383164 s2Rec!140))))))

(assert (= (and d!2225672 c!1330240) b!7131642))

(assert (= (and d!2225672 (not c!1330240)) b!7131643))

(assert (= (and d!2225672 res!2909891) b!7131644))

(assert (= (and b!7131644 res!2909890) b!7131645))

(declare-fun m!7848988 () Bool)

(assert (=> d!2225672 m!7848988))

(declare-fun m!7848990 () Bool)

(assert (=> d!2225672 m!7848990))

(declare-fun m!7848992 () Bool)

(assert (=> d!2225672 m!7848992))

(declare-fun m!7848994 () Bool)

(assert (=> b!7131644 m!7848994))

(assert (=> b!7131644 m!7848928))

(declare-fun m!7848996 () Bool)

(assert (=> b!7131644 m!7848996))

(declare-fun m!7848998 () Bool)

(assert (=> b!7131643 m!7848998))

(assert (=> b!7131504 d!2225672))

(declare-fun d!2225674 () Bool)

(assert (=> d!2225674 (isPrefix!5935 lt!2564752 (++!16204 lt!2564752 (t!383164 s2Rec!140)))))

(declare-fun lt!2564841 () Unit!163013)

(assert (=> d!2225674 (= lt!2564841 (choose!55119 lt!2564752 (t!383164 s2Rec!140)))))

(assert (=> d!2225674 (= (lemmaConcatTwoListThenFirstIsPrefix!3648 lt!2564752 (t!383164 s2Rec!140)) lt!2564841)))

(declare-fun bs!1886962 () Bool)

(assert (= bs!1886962 d!2225674))

(assert (=> bs!1886962 m!7848782))

(assert (=> bs!1886962 m!7848782))

(declare-fun m!7849000 () Bool)

(assert (=> bs!1886962 m!7849000))

(declare-fun m!7849002 () Bool)

(assert (=> bs!1886962 m!7849002))

(assert (=> b!7131504 d!2225674))

(declare-fun e!4285821 () Bool)

(declare-fun lt!2564842 () List!69187)

(declare-fun b!7131649 () Bool)

(assert (=> b!7131649 (= e!4285821 (or (not (= (Cons!69063 (h!75511 s2Rec!140) Nil!69063) Nil!69063)) (= lt!2564842 s1Rec!140)))))

(declare-fun b!7131646 () Bool)

(declare-fun e!4285822 () List!69187)

(assert (=> b!7131646 (= e!4285822 (Cons!69063 (h!75511 s2Rec!140) Nil!69063))))

(declare-fun d!2225676 () Bool)

(assert (=> d!2225676 e!4285821))

(declare-fun res!2909893 () Bool)

(assert (=> d!2225676 (=> (not res!2909893) (not e!4285821))))

(assert (=> d!2225676 (= res!2909893 (= (content!14126 lt!2564842) (set.union (content!14126 s1Rec!140) (content!14126 (Cons!69063 (h!75511 s2Rec!140) Nil!69063)))))))

(assert (=> d!2225676 (= lt!2564842 e!4285822)))

(declare-fun c!1330241 () Bool)

(assert (=> d!2225676 (= c!1330241 (is-Nil!69063 s1Rec!140))))

(assert (=> d!2225676 (= (++!16204 s1Rec!140 (Cons!69063 (h!75511 s2Rec!140) Nil!69063)) lt!2564842)))

(declare-fun b!7131648 () Bool)

(declare-fun res!2909892 () Bool)

(assert (=> b!7131648 (=> (not res!2909892) (not e!4285821))))

(assert (=> b!7131648 (= res!2909892 (= (size!41491 lt!2564842) (+ (size!41491 s1Rec!140) (size!41491 (Cons!69063 (h!75511 s2Rec!140) Nil!69063)))))))

(declare-fun b!7131647 () Bool)

(assert (=> b!7131647 (= e!4285822 (Cons!69063 (h!75511 s1Rec!140) (++!16204 (t!383164 s1Rec!140) (Cons!69063 (h!75511 s2Rec!140) Nil!69063))))))

(assert (= (and d!2225676 c!1330241) b!7131646))

(assert (= (and d!2225676 (not c!1330241)) b!7131647))

(assert (= (and d!2225676 res!2909893) b!7131648))

(assert (= (and b!7131648 res!2909892) b!7131649))

(declare-fun m!7849004 () Bool)

(assert (=> d!2225676 m!7849004))

(declare-fun m!7849006 () Bool)

(assert (=> d!2225676 m!7849006))

(declare-fun m!7849008 () Bool)

(assert (=> d!2225676 m!7849008))

(declare-fun m!7849010 () Bool)

(assert (=> b!7131648 m!7849010))

(assert (=> b!7131648 m!7848794))

(declare-fun m!7849012 () Bool)

(assert (=> b!7131648 m!7849012))

(declare-fun m!7849014 () Bool)

(assert (=> b!7131647 m!7849014))

(assert (=> b!7131504 d!2225676))

(declare-fun d!2225678 () Bool)

(assert (=> d!2225678 (= (isDefined!13714 (findConcatSeparationZippers!533 z1!552 z2!471 lt!2564752 (t!383164 s2Rec!140) s!7390)) (not (isEmpty!40033 (findConcatSeparationZippers!533 z1!552 z2!471 lt!2564752 (t!383164 s2Rec!140) s!7390))))))

(declare-fun bs!1886963 () Bool)

(assert (= bs!1886963 d!2225678))

(assert (=> bs!1886963 m!7848780))

(declare-fun m!7849016 () Bool)

(assert (=> bs!1886963 m!7849016))

(assert (=> b!7131504 d!2225678))

(declare-fun d!2225680 () Bool)

(declare-fun e!4285823 () Bool)

(assert (=> d!2225680 e!4285823))

(declare-fun res!2909896 () Bool)

(assert (=> d!2225680 (=> res!2909896 e!4285823)))

(declare-fun lt!2564843 () Bool)

(assert (=> d!2225680 (= res!2909896 (not lt!2564843))))

(declare-fun e!4285825 () Bool)

(assert (=> d!2225680 (= lt!2564843 e!4285825)))

(declare-fun res!2909894 () Bool)

(assert (=> d!2225680 (=> res!2909894 e!4285825)))

(assert (=> d!2225680 (= res!2909894 (is-Nil!69063 s1Rec!140))))

(assert (=> d!2225680 (= (isPrefix!5935 s1Rec!140 lt!2564749) lt!2564843)))

(declare-fun b!7131650 () Bool)

(declare-fun e!4285824 () Bool)

(assert (=> b!7131650 (= e!4285825 e!4285824)))

(declare-fun res!2909895 () Bool)

(assert (=> b!7131650 (=> (not res!2909895) (not e!4285824))))

(assert (=> b!7131650 (= res!2909895 (not (is-Nil!69063 lt!2564749)))))

(declare-fun b!7131653 () Bool)

(assert (=> b!7131653 (= e!4285823 (>= (size!41491 lt!2564749) (size!41491 s1Rec!140)))))

(declare-fun b!7131652 () Bool)

(assert (=> b!7131652 (= e!4285824 (isPrefix!5935 (tail!13947 s1Rec!140) (tail!13947 lt!2564749)))))

(declare-fun b!7131651 () Bool)

(declare-fun res!2909897 () Bool)

(assert (=> b!7131651 (=> (not res!2909897) (not e!4285824))))

(assert (=> b!7131651 (= res!2909897 (= (head!14475 s1Rec!140) (head!14475 lt!2564749)))))

(assert (= (and d!2225680 (not res!2909894)) b!7131650))

(assert (= (and b!7131650 res!2909895) b!7131651))

(assert (= (and b!7131651 res!2909897) b!7131652))

(assert (= (and d!2225680 (not res!2909896)) b!7131653))

(declare-fun m!7849018 () Bool)

(assert (=> b!7131653 m!7849018))

(assert (=> b!7131653 m!7848794))

(declare-fun m!7849020 () Bool)

(assert (=> b!7131652 m!7849020))

(declare-fun m!7849022 () Bool)

(assert (=> b!7131652 m!7849022))

(assert (=> b!7131652 m!7849020))

(assert (=> b!7131652 m!7849022))

(declare-fun m!7849024 () Bool)

(assert (=> b!7131652 m!7849024))

(declare-fun m!7849026 () Bool)

(assert (=> b!7131651 m!7849026))

(declare-fun m!7849028 () Bool)

(assert (=> b!7131651 m!7849028))

(assert (=> b!7131504 d!2225680))

(declare-fun d!2225682 () Bool)

(declare-fun e!4285826 () Bool)

(assert (=> d!2225682 e!4285826))

(declare-fun res!2909900 () Bool)

(assert (=> d!2225682 (=> res!2909900 e!4285826)))

(declare-fun lt!2564844 () Bool)

(assert (=> d!2225682 (= res!2909900 (not lt!2564844))))

(declare-fun e!4285828 () Bool)

(assert (=> d!2225682 (= lt!2564844 e!4285828)))

(declare-fun res!2909898 () Bool)

(assert (=> d!2225682 (=> res!2909898 e!4285828)))

(assert (=> d!2225682 (= res!2909898 (is-Nil!69063 lt!2564752))))

(assert (=> d!2225682 (= (isPrefix!5935 lt!2564752 lt!2564758) lt!2564844)))

(declare-fun b!7131654 () Bool)

(declare-fun e!4285827 () Bool)

(assert (=> b!7131654 (= e!4285828 e!4285827)))

(declare-fun res!2909899 () Bool)

(assert (=> b!7131654 (=> (not res!2909899) (not e!4285827))))

(assert (=> b!7131654 (= res!2909899 (not (is-Nil!69063 lt!2564758)))))

(declare-fun b!7131657 () Bool)

(assert (=> b!7131657 (= e!4285826 (>= (size!41491 lt!2564758) (size!41491 lt!2564752)))))

(declare-fun b!7131656 () Bool)

(assert (=> b!7131656 (= e!4285827 (isPrefix!5935 (tail!13947 lt!2564752) (tail!13947 lt!2564758)))))

(declare-fun b!7131655 () Bool)

(declare-fun res!2909901 () Bool)

(assert (=> b!7131655 (=> (not res!2909901) (not e!4285827))))

(assert (=> b!7131655 (= res!2909901 (= (head!14475 lt!2564752) (head!14475 lt!2564758)))))

(assert (= (and d!2225682 (not res!2909898)) b!7131654))

(assert (= (and b!7131654 res!2909899) b!7131655))

(assert (= (and b!7131655 res!2909901) b!7131656))

(assert (= (and d!2225682 (not res!2909900)) b!7131657))

(declare-fun m!7849030 () Bool)

(assert (=> b!7131657 m!7849030))

(assert (=> b!7131657 m!7848928))

(assert (=> b!7131656 m!7848930))

(declare-fun m!7849032 () Bool)

(assert (=> b!7131656 m!7849032))

(assert (=> b!7131656 m!7848930))

(assert (=> b!7131656 m!7849032))

(declare-fun m!7849034 () Bool)

(assert (=> b!7131656 m!7849034))

(assert (=> b!7131655 m!7848934))

(declare-fun m!7849036 () Bool)

(assert (=> b!7131655 m!7849036))

(assert (=> b!7131504 d!2225682))

(declare-fun d!2225684 () Bool)

(declare-fun e!4285829 () Bool)

(assert (=> d!2225684 e!4285829))

(declare-fun res!2909904 () Bool)

(assert (=> d!2225684 (=> res!2909904 e!4285829)))

(declare-fun lt!2564845 () Bool)

(assert (=> d!2225684 (= res!2909904 (not lt!2564845))))

(declare-fun e!4285831 () Bool)

(assert (=> d!2225684 (= lt!2564845 e!4285831)))

(declare-fun res!2909902 () Bool)

(assert (=> d!2225684 (=> res!2909902 e!4285831)))

(assert (=> d!2225684 (= res!2909902 (is-Nil!69063 s1!1688))))

(assert (=> d!2225684 (= (isPrefix!5935 s1!1688 lt!2564759) lt!2564845)))

(declare-fun b!7131658 () Bool)

(declare-fun e!4285830 () Bool)

(assert (=> b!7131658 (= e!4285831 e!4285830)))

(declare-fun res!2909903 () Bool)

(assert (=> b!7131658 (=> (not res!2909903) (not e!4285830))))

(assert (=> b!7131658 (= res!2909903 (not (is-Nil!69063 lt!2564759)))))

(declare-fun b!7131661 () Bool)

(assert (=> b!7131661 (= e!4285829 (>= (size!41491 lt!2564759) (size!41491 s1!1688)))))

(declare-fun b!7131660 () Bool)

(assert (=> b!7131660 (= e!4285830 (isPrefix!5935 (tail!13947 s1!1688) (tail!13947 lt!2564759)))))

(declare-fun b!7131659 () Bool)

(declare-fun res!2909905 () Bool)

(assert (=> b!7131659 (=> (not res!2909905) (not e!4285830))))

(assert (=> b!7131659 (= res!2909905 (= (head!14475 s1!1688) (head!14475 lt!2564759)))))

(assert (= (and d!2225684 (not res!2909902)) b!7131658))

(assert (= (and b!7131658 res!2909903) b!7131659))

(assert (= (and b!7131659 res!2909905) b!7131660))

(assert (= (and d!2225684 (not res!2909904)) b!7131661))

(declare-fun m!7849038 () Bool)

(assert (=> b!7131661 m!7849038))

(assert (=> b!7131661 m!7848810))

(assert (=> b!7131660 m!7848916))

(declare-fun m!7849040 () Bool)

(assert (=> b!7131660 m!7849040))

(assert (=> b!7131660 m!7848916))

(assert (=> b!7131660 m!7849040))

(declare-fun m!7849042 () Bool)

(assert (=> b!7131660 m!7849042))

(assert (=> b!7131659 m!7848912))

(declare-fun m!7849044 () Bool)

(assert (=> b!7131659 m!7849044))

(assert (=> b!7131504 d!2225684))

(declare-fun b!7131665 () Bool)

(declare-fun lt!2564846 () List!69187)

(declare-fun e!4285832 () Bool)

(assert (=> b!7131665 (= e!4285832 (or (not (= s2!1620 Nil!69063)) (= lt!2564846 s1!1688)))))

(declare-fun b!7131662 () Bool)

(declare-fun e!4285833 () List!69187)

(assert (=> b!7131662 (= e!4285833 s2!1620)))

(declare-fun d!2225686 () Bool)

(assert (=> d!2225686 e!4285832))

(declare-fun res!2909907 () Bool)

(assert (=> d!2225686 (=> (not res!2909907) (not e!4285832))))

(assert (=> d!2225686 (= res!2909907 (= (content!14126 lt!2564846) (set.union (content!14126 s1!1688) (content!14126 s2!1620))))))

(assert (=> d!2225686 (= lt!2564846 e!4285833)))

(declare-fun c!1330242 () Bool)

(assert (=> d!2225686 (= c!1330242 (is-Nil!69063 s1!1688))))

(assert (=> d!2225686 (= (++!16204 s1!1688 s2!1620) lt!2564846)))

(declare-fun b!7131664 () Bool)

(declare-fun res!2909906 () Bool)

(assert (=> b!7131664 (=> (not res!2909906) (not e!4285832))))

(assert (=> b!7131664 (= res!2909906 (= (size!41491 lt!2564846) (+ (size!41491 s1!1688) (size!41491 s2!1620))))))

(declare-fun b!7131663 () Bool)

(assert (=> b!7131663 (= e!4285833 (Cons!69063 (h!75511 s1!1688) (++!16204 (t!383164 s1!1688) s2!1620)))))

(assert (= (and d!2225686 c!1330242) b!7131662))

(assert (= (and d!2225686 (not c!1330242)) b!7131663))

(assert (= (and d!2225686 res!2909907) b!7131664))

(assert (= (and b!7131664 res!2909906) b!7131665))

(declare-fun m!7849046 () Bool)

(assert (=> d!2225686 m!7849046))

(declare-fun m!7849048 () Bool)

(assert (=> d!2225686 m!7849048))

(declare-fun m!7849050 () Bool)

(assert (=> d!2225686 m!7849050))

(declare-fun m!7849052 () Bool)

(assert (=> b!7131664 m!7849052))

(assert (=> b!7131664 m!7848810))

(declare-fun m!7849054 () Bool)

(assert (=> b!7131664 m!7849054))

(declare-fun m!7849056 () Bool)

(assert (=> b!7131663 m!7849056))

(assert (=> b!7131506 d!2225686))

(declare-fun bs!1886964 () Bool)

(declare-fun d!2225688 () Bool)

(assert (= bs!1886964 (and d!2225688 d!2225648)))

(declare-fun lambda!433227 () Int)

(assert (=> bs!1886964 (= lambda!433227 lambda!433226)))

(assert (=> d!2225688 (= (inv!88194 setElem!52053) (forall!16926 (exprs!7560 setElem!52053) lambda!433227))))

(declare-fun bs!1886965 () Bool)

(assert (= bs!1886965 d!2225688))

(declare-fun m!7849058 () Bool)

(assert (=> bs!1886965 m!7849058))

(assert (=> setNonEmpty!52053 d!2225688))

(declare-fun d!2225690 () Bool)

(declare-fun c!1330243 () Bool)

(assert (=> d!2225690 (= c!1330243 (isEmpty!40032 s2Rec!140))))

(declare-fun e!4285834 () Bool)

(assert (=> d!2225690 (= (matchZipper!3322 z2!471 s2Rec!140) e!4285834)))

(declare-fun b!7131666 () Bool)

(assert (=> b!7131666 (= e!4285834 (nullableZipper!2766 z2!471))))

(declare-fun b!7131667 () Bool)

(assert (=> b!7131667 (= e!4285834 (matchZipper!3322 (derivationStepZipper!3178 z2!471 (head!14475 s2Rec!140)) (tail!13947 s2Rec!140)))))

(assert (= (and d!2225690 c!1330243) b!7131666))

(assert (= (and d!2225690 (not c!1330243)) b!7131667))

(declare-fun m!7849060 () Bool)

(assert (=> d!2225690 m!7849060))

(assert (=> b!7131666 m!7848898))

(declare-fun m!7849062 () Bool)

(assert (=> b!7131667 m!7849062))

(assert (=> b!7131667 m!7849062))

(declare-fun m!7849064 () Bool)

(assert (=> b!7131667 m!7849064))

(declare-fun m!7849066 () Bool)

(assert (=> b!7131667 m!7849066))

(assert (=> b!7131667 m!7849064))

(assert (=> b!7131667 m!7849066))

(declare-fun m!7849068 () Bool)

(assert (=> b!7131667 m!7849068))

(assert (=> b!7131500 d!2225690))

(declare-fun d!2225692 () Bool)

(declare-fun e!4285835 () Bool)

(assert (=> d!2225692 e!4285835))

(declare-fun res!2909910 () Bool)

(assert (=> d!2225692 (=> res!2909910 e!4285835)))

(declare-fun lt!2564847 () Bool)

(assert (=> d!2225692 (= res!2909910 (not lt!2564847))))

(declare-fun e!4285837 () Bool)

(assert (=> d!2225692 (= lt!2564847 e!4285837)))

(declare-fun res!2909908 () Bool)

(assert (=> d!2225692 (=> res!2909908 e!4285837)))

(assert (=> d!2225692 (= res!2909908 (is-Nil!69063 s1Rec!140))))

(assert (=> d!2225692 (= (isPrefix!5935 s1Rec!140 s1!1688) lt!2564847)))

(declare-fun b!7131668 () Bool)

(declare-fun e!4285836 () Bool)

(assert (=> b!7131668 (= e!4285837 e!4285836)))

(declare-fun res!2909909 () Bool)

(assert (=> b!7131668 (=> (not res!2909909) (not e!4285836))))

(assert (=> b!7131668 (= res!2909909 (not (is-Nil!69063 s1!1688)))))

(declare-fun b!7131671 () Bool)

(assert (=> b!7131671 (= e!4285835 (>= (size!41491 s1!1688) (size!41491 s1Rec!140)))))

(declare-fun b!7131670 () Bool)

(assert (=> b!7131670 (= e!4285836 (isPrefix!5935 (tail!13947 s1Rec!140) (tail!13947 s1!1688)))))

(declare-fun b!7131669 () Bool)

(declare-fun res!2909911 () Bool)

(assert (=> b!7131669 (=> (not res!2909911) (not e!4285836))))

(assert (=> b!7131669 (= res!2909911 (= (head!14475 s1Rec!140) (head!14475 s1!1688)))))

(assert (= (and d!2225692 (not res!2909908)) b!7131668))

(assert (= (and b!7131668 res!2909909) b!7131669))

(assert (= (and b!7131669 res!2909911) b!7131670))

(assert (= (and d!2225692 (not res!2909910)) b!7131671))

(assert (=> b!7131671 m!7848810))

(assert (=> b!7131671 m!7848794))

(assert (=> b!7131670 m!7849020))

(assert (=> b!7131670 m!7848916))

(assert (=> b!7131670 m!7849020))

(assert (=> b!7131670 m!7848916))

(declare-fun m!7849070 () Bool)

(assert (=> b!7131670 m!7849070))

(assert (=> b!7131669 m!7849026))

(assert (=> b!7131669 m!7848912))

(assert (=> b!7131502 d!2225692))

(declare-fun d!2225694 () Bool)

(declare-fun c!1330244 () Bool)

(assert (=> d!2225694 (= c!1330244 (isEmpty!40032 s1Rec!140))))

(declare-fun e!4285838 () Bool)

(assert (=> d!2225694 (= (matchZipper!3322 z1!552 s1Rec!140) e!4285838)))

(declare-fun b!7131672 () Bool)

(assert (=> b!7131672 (= e!4285838 (nullableZipper!2766 z1!552))))

(declare-fun b!7131673 () Bool)

(assert (=> b!7131673 (= e!4285838 (matchZipper!3322 (derivationStepZipper!3178 z1!552 (head!14475 s1Rec!140)) (tail!13947 s1Rec!140)))))

(assert (= (and d!2225694 c!1330244) b!7131672))

(assert (= (and d!2225694 (not c!1330244)) b!7131673))

(declare-fun m!7849072 () Bool)

(assert (=> d!2225694 m!7849072))

(assert (=> b!7131672 m!7848910))

(assert (=> b!7131673 m!7849026))

(assert (=> b!7131673 m!7849026))

(declare-fun m!7849074 () Bool)

(assert (=> b!7131673 m!7849074))

(assert (=> b!7131673 m!7849020))

(assert (=> b!7131673 m!7849074))

(assert (=> b!7131673 m!7849020))

(declare-fun m!7849076 () Bool)

(assert (=> b!7131673 m!7849076))

(assert (=> b!7131512 d!2225694))

(declare-fun d!2225696 () Bool)

(assert (=> d!2225696 (= s2!1620 s2Rec!140)))

(declare-fun lt!2564850 () Unit!163013)

(declare-fun choose!55121 (List!69187 List!69187 List!69187 List!69187 List!69187) Unit!163013)

(assert (=> d!2225696 (= lt!2564850 (choose!55121 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> d!2225696 (isPrefix!5935 s1!1688 s!7390)))

(assert (=> d!2225696 (= (lemmaSamePrefixThenSameSuffix!2746 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390) lt!2564850)))

(declare-fun bs!1886966 () Bool)

(assert (= bs!1886966 d!2225696))

(declare-fun m!7849078 () Bool)

(assert (=> bs!1886966 m!7849078))

(assert (=> bs!1886966 m!7848894))

(assert (=> b!7131501 d!2225696))

(declare-fun e!4285839 () Bool)

(declare-fun b!7131677 () Bool)

(declare-fun lt!2564851 () List!69187)

(assert (=> b!7131677 (= e!4285839 (or (not (= s2Rec!140 Nil!69063)) (= lt!2564851 s1Rec!140)))))

(declare-fun b!7131674 () Bool)

(declare-fun e!4285840 () List!69187)

(assert (=> b!7131674 (= e!4285840 s2Rec!140)))

(declare-fun d!2225698 () Bool)

(assert (=> d!2225698 e!4285839))

(declare-fun res!2909913 () Bool)

(assert (=> d!2225698 (=> (not res!2909913) (not e!4285839))))

(assert (=> d!2225698 (= res!2909913 (= (content!14126 lt!2564851) (set.union (content!14126 s1Rec!140) (content!14126 s2Rec!140))))))

(assert (=> d!2225698 (= lt!2564851 e!4285840)))

(declare-fun c!1330245 () Bool)

(assert (=> d!2225698 (= c!1330245 (is-Nil!69063 s1Rec!140))))

(assert (=> d!2225698 (= (++!16204 s1Rec!140 s2Rec!140) lt!2564851)))

(declare-fun b!7131676 () Bool)

(declare-fun res!2909912 () Bool)

(assert (=> b!7131676 (=> (not res!2909912) (not e!4285839))))

(assert (=> b!7131676 (= res!2909912 (= (size!41491 lt!2564851) (+ (size!41491 s1Rec!140) (size!41491 s2Rec!140))))))

(declare-fun b!7131675 () Bool)

(assert (=> b!7131675 (= e!4285840 (Cons!69063 (h!75511 s1Rec!140) (++!16204 (t!383164 s1Rec!140) s2Rec!140)))))

(assert (= (and d!2225698 c!1330245) b!7131674))

(assert (= (and d!2225698 (not c!1330245)) b!7131675))

(assert (= (and d!2225698 res!2909913) b!7131676))

(assert (= (and b!7131676 res!2909912) b!7131677))

(declare-fun m!7849080 () Bool)

(assert (=> d!2225698 m!7849080))

(assert (=> d!2225698 m!7849006))

(declare-fun m!7849082 () Bool)

(assert (=> d!2225698 m!7849082))

(declare-fun m!7849084 () Bool)

(assert (=> b!7131676 m!7849084))

(assert (=> b!7131676 m!7848794))

(declare-fun m!7849086 () Bool)

(assert (=> b!7131676 m!7849086))

(declare-fun m!7849088 () Bool)

(assert (=> b!7131675 m!7849088))

(assert (=> b!7131511 d!2225698))

(declare-fun condSetEmpty!52062 () Bool)

(assert (=> setNonEmpty!52053 (= condSetEmpty!52062 (= setRest!52053 (as set.empty (Set Context!14120))))))

(declare-fun setRes!52062 () Bool)

(assert (=> setNonEmpty!52053 (= tp!1965313 setRes!52062)))

(declare-fun setIsEmpty!52062 () Bool)

(assert (=> setIsEmpty!52062 setRes!52062))

(declare-fun setNonEmpty!52062 () Bool)

(declare-fun setElem!52062 () Context!14120)

(declare-fun e!4285843 () Bool)

(declare-fun tp!1965350 () Bool)

(assert (=> setNonEmpty!52062 (= setRes!52062 (and tp!1965350 (inv!88194 setElem!52062) e!4285843))))

(declare-fun setRest!52062 () (Set Context!14120))

(assert (=> setNonEmpty!52062 (= setRest!52053 (set.union (set.insert setElem!52062 (as set.empty (Set Context!14120))) setRest!52062))))

(declare-fun b!7131682 () Bool)

(declare-fun tp!1965351 () Bool)

(assert (=> b!7131682 (= e!4285843 tp!1965351)))

(assert (= (and setNonEmpty!52053 condSetEmpty!52062) setIsEmpty!52062))

(assert (= (and setNonEmpty!52053 (not condSetEmpty!52062)) setNonEmpty!52062))

(assert (= setNonEmpty!52062 b!7131682))

(declare-fun m!7849090 () Bool)

(assert (=> setNonEmpty!52062 m!7849090))

(declare-fun b!7131687 () Bool)

(declare-fun e!4285846 () Bool)

(declare-fun tp!1965354 () Bool)

(assert (=> b!7131687 (= e!4285846 (and tp_is_empty!45733 tp!1965354))))

(assert (=> b!7131499 (= tp!1965316 e!4285846)))

(assert (= (and b!7131499 (is-Cons!69063 (t!383164 s1Rec!140))) b!7131687))

(declare-fun b!7131688 () Bool)

(declare-fun e!4285847 () Bool)

(declare-fun tp!1965355 () Bool)

(assert (=> b!7131688 (= e!4285847 (and tp_is_empty!45733 tp!1965355))))

(assert (=> b!7131509 (= tp!1965311 e!4285847)))

(assert (= (and b!7131509 (is-Cons!69063 (t!383164 s!7390))) b!7131688))

(declare-fun condSetEmpty!52063 () Bool)

(assert (=> setNonEmpty!52052 (= condSetEmpty!52063 (= setRest!52052 (as set.empty (Set Context!14120))))))

(declare-fun setRes!52063 () Bool)

(assert (=> setNonEmpty!52052 (= tp!1965312 setRes!52063)))

(declare-fun setIsEmpty!52063 () Bool)

(assert (=> setIsEmpty!52063 setRes!52063))

(declare-fun setElem!52063 () Context!14120)

(declare-fun e!4285848 () Bool)

(declare-fun tp!1965356 () Bool)

(declare-fun setNonEmpty!52063 () Bool)

(assert (=> setNonEmpty!52063 (= setRes!52063 (and tp!1965356 (inv!88194 setElem!52063) e!4285848))))

(declare-fun setRest!52063 () (Set Context!14120))

(assert (=> setNonEmpty!52063 (= setRest!52052 (set.union (set.insert setElem!52063 (as set.empty (Set Context!14120))) setRest!52063))))

(declare-fun b!7131689 () Bool)

(declare-fun tp!1965357 () Bool)

(assert (=> b!7131689 (= e!4285848 tp!1965357)))

(assert (= (and setNonEmpty!52052 condSetEmpty!52063) setIsEmpty!52063))

(assert (= (and setNonEmpty!52052 (not condSetEmpty!52063)) setNonEmpty!52063))

(assert (= setNonEmpty!52063 b!7131689))

(declare-fun m!7849092 () Bool)

(assert (=> setNonEmpty!52063 m!7849092))

(declare-fun b!7131690 () Bool)

(declare-fun e!4285849 () Bool)

(declare-fun tp!1965358 () Bool)

(assert (=> b!7131690 (= e!4285849 (and tp_is_empty!45733 tp!1965358))))

(assert (=> b!7131508 (= tp!1965315 e!4285849)))

(assert (= (and b!7131508 (is-Cons!69063 (t!383164 s2!1620))) b!7131690))

(declare-fun b!7131695 () Bool)

(declare-fun e!4285852 () Bool)

(declare-fun tp!1965363 () Bool)

(declare-fun tp!1965364 () Bool)

(assert (=> b!7131695 (= e!4285852 (and tp!1965363 tp!1965364))))

(assert (=> b!7131495 (= tp!1965318 e!4285852)))

(assert (= (and b!7131495 (is-Cons!69062 (exprs!7560 setElem!52052))) b!7131695))

(declare-fun b!7131696 () Bool)

(declare-fun e!4285853 () Bool)

(declare-fun tp!1965365 () Bool)

(declare-fun tp!1965366 () Bool)

(assert (=> b!7131696 (= e!4285853 (and tp!1965365 tp!1965366))))

(assert (=> b!7131510 (= tp!1965317 e!4285853)))

(assert (= (and b!7131510 (is-Cons!69062 (exprs!7560 setElem!52053))) b!7131696))

(declare-fun b!7131697 () Bool)

(declare-fun e!4285854 () Bool)

(declare-fun tp!1965367 () Bool)

(assert (=> b!7131697 (= e!4285854 (and tp_is_empty!45733 tp!1965367))))

(assert (=> b!7131497 (= tp!1965310 e!4285854)))

(assert (= (and b!7131497 (is-Cons!69063 (t!383164 s1!1688))) b!7131697))

(declare-fun b!7131698 () Bool)

(declare-fun e!4285855 () Bool)

(declare-fun tp!1965368 () Bool)

(assert (=> b!7131698 (= e!4285855 (and tp_is_empty!45733 tp!1965368))))

(assert (=> b!7131498 (= tp!1965314 e!4285855)))

(assert (= (and b!7131498 (is-Cons!69063 (t!383164 s2Rec!140))) b!7131698))

(push 1)

(assert (not d!2225686))

(assert (not d!2225664))

(assert (not b!7131619))

(assert (not b!7131672))

(assert (not d!2225696))

(assert (not b!7131625))

(assert (not setNonEmpty!52063))

(assert (not b!7131614))

(assert (not b!7131661))

(assert (not b!7131616))

(assert (not b!7131629))

(assert (not b!7131644))

(assert (not d!2225690))

(assert (not b!7131587))

(assert (not b!7131655))

(assert (not b!7131675))

(assert (not d!2225654))

(assert (not b!7131687))

(assert (not b!7131643))

(assert (not b!7131577))

(assert (not d!2225698))

(assert (not b!7131664))

(assert (not b!7131633))

(assert (not b!7131698))

(assert (not d!2225676))

(assert (not d!2225658))

(assert (not d!2225674))

(assert (not d!2225646))

(assert (not b!7131627))

(assert (not d!2225648))

(assert (not d!2225694))

(assert (not b!7131660))

(assert (not b!7131682))

(assert (not b!7131595))

(assert (not b!7131575))

(assert (not b!7131670))

(assert (not d!2225656))

(assert (not b!7131688))

(assert (not b!7131656))

(assert (not b!7131576))

(assert (not b!7131666))

(assert (not b!7131676))

(assert (not d!2225688))

(assert (not b!7131589))

(assert (not b!7131647))

(assert (not d!2225672))

(assert (not setNonEmpty!52062))

(assert (not b!7131697))

(assert (not b!7131648))

(assert (not b!7131588))

(assert (not b!7131690))

(assert (not b!7131574))

(assert (not b!7131618))

(assert (not b!7131657))

(assert (not b!7131652))

(assert (not b!7131630))

(assert (not b!7131615))

(assert (not b!7131695))

(assert (not d!2225670))

(assert (not d!2225640))

(assert (not b!7131626))

(assert (not b!7131624))

(assert (not b!7131659))

(assert (not d!2225678))

(assert (not b!7131689))

(assert (not d!2225644))

(assert (not b!7131651))

(assert (not b!7131667))

(assert (not b!7131673))

(assert (not b!7131669))

(assert (not b!7131622))

(assert (not d!2225668))

(assert (not b!7131663))

(assert tp_is_empty!45733)

(assert (not b!7131671))

(assert (not d!2225650))

(assert (not b!7131696))

(assert (not d!2225662))

(assert (not b!7131653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

