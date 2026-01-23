; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!529566 () Bool)

(assert start!529566)

(declare-fun b!5013018 () Bool)

(declare-fun e!3131834 () Bool)

(declare-fun e!3131838 () Bool)

(assert (=> b!5013018 (= e!3131834 (not e!3131838))))

(declare-fun res!2137811 () Bool)

(assert (=> b!5013018 (=> res!2137811 e!3131838)))

(declare-fun e!3131841 () Bool)

(assert (=> b!5013018 (= res!2137811 e!3131841)))

(declare-fun res!2137802 () Bool)

(assert (=> b!5013018 (=> (not res!2137802) (not e!3131841))))

(declare-fun lt!2073967 () Bool)

(assert (=> b!5013018 (= res!2137802 (not lt!2073967))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27860 0))(
  ( (C!27861 (val!23296 Int)) )
))
(declare-datatypes ((Regex!13805 0))(
  ( (ElementMatch!13805 (c!856291 C!27860)) (Concat!22598 (regOne!28122 Regex!13805) (regTwo!28122 Regex!13805)) (EmptyExpr!13805) (Star!13805 (reg!14134 Regex!13805)) (EmptyLang!13805) (Union!13805 (regOne!28123 Regex!13805) (regTwo!28123 Regex!13805)) )
))
(declare-datatypes ((List!58019 0))(
  ( (Nil!57895) (Cons!57895 (h!64343 Regex!13805) (t!370387 List!58019)) )
))
(declare-datatypes ((Context!6460 0))(
  ( (Context!6461 (exprs!3730 List!58019)) )
))
(declare-fun z!4183 () (InoxSet Context!6460))

(declare-datatypes ((List!58020 0))(
  ( (Nil!57896) (Cons!57896 (h!64344 C!27860) (t!370388 List!58020)) )
))
(declare-fun lt!2073954 () List!58020)

(declare-fun matchZipper!573 ((InoxSet Context!6460) List!58020) Bool)

(assert (=> b!5013018 (= lt!2073967 (matchZipper!573 z!4183 lt!2073954))))

(declare-fun e!3131846 () Bool)

(assert (=> b!5013018 e!3131846))

(declare-fun res!2137813 () Bool)

(assert (=> b!5013018 (=> res!2137813 e!3131846)))

(declare-datatypes ((tuple2!63064 0))(
  ( (tuple2!63065 (_1!34835 List!58020) (_2!34835 List!58020)) )
))
(declare-fun lt!2073957 () tuple2!63064)

(declare-fun isEmpty!31363 (List!58020) Bool)

(assert (=> b!5013018 (= res!2137813 (isEmpty!31363 (_1!34835 lt!2073957)))))

(declare-fun r!12727 () Regex!13805)

(declare-fun lt!2073960 () List!58020)

(declare-fun findLongestMatchInner!1994 (Regex!13805 List!58020 Int List!58020 List!58020 Int) tuple2!63064)

(declare-fun size!38488 (List!58020) Int)

(assert (=> b!5013018 (= lt!2073957 (findLongestMatchInner!1994 r!12727 Nil!57896 (size!38488 Nil!57896) lt!2073960 lt!2073960 (size!38488 lt!2073960)))))

(declare-datatypes ((Unit!149107 0))(
  ( (Unit!149108) )
))
(declare-fun lt!2073947 () Unit!149107)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1947 (Regex!13805 List!58020) Unit!149107)

(assert (=> b!5013018 (= lt!2073947 (longestMatchIsAcceptedByMatchOrIsEmpty!1947 r!12727 lt!2073960))))

(declare-fun e!3131842 () Bool)

(assert (=> b!5013018 e!3131842))

(declare-fun res!2137807 () Bool)

(assert (=> b!5013018 (=> res!2137807 e!3131842)))

(declare-fun lt!2073950 () Int)

(assert (=> b!5013018 (= res!2137807 (= lt!2073950 0))))

(declare-datatypes ((IArray!30709 0))(
  ( (IArray!30710 (innerList!15412 List!58020)) )
))
(declare-datatypes ((Conc!15324 0))(
  ( (Node!15324 (left!42328 Conc!15324) (right!42658 Conc!15324) (csize!30878 Int) (cheight!15535 Int)) (Leaf!25435 (xs!18650 IArray!30709) (csize!30879 Int)) (Empty!15324) )
))
(declare-datatypes ((BalanceConc!30078 0))(
  ( (BalanceConc!30079 (c!856292 Conc!15324)) )
))
(declare-fun totalInput!1012 () BalanceConc!30078)

(declare-fun lt!2073962 () Int)

(declare-fun lt!2073966 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!145 ((InoxSet Context!6460) Int BalanceConc!30078 Int) Int)

(assert (=> b!5013018 (= lt!2073950 (findLongestMatchInnerZipperFastV2!145 z!4183 lt!2073966 totalInput!1012 lt!2073962))))

(declare-fun lt!2073959 () Unit!149107)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!64 ((InoxSet Context!6460) Int BalanceConc!30078) Unit!149107)

(assert (=> b!5013018 (= lt!2073959 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!64 z!4183 lt!2073966 totalInput!1012))))

(declare-fun lt!2073953 () List!58020)

(declare-fun isPrefix!5358 (List!58020 List!58020) Bool)

(declare-fun take!664 (List!58020 Int) List!58020)

(assert (=> b!5013018 (isPrefix!5358 (take!664 lt!2073953 lt!2073966) lt!2073953)))

(declare-fun lt!2073970 () Unit!149107)

(declare-fun lemmaTakeIsPrefix!158 (List!58020 Int) Unit!149107)

(assert (=> b!5013018 (= lt!2073970 (lemmaTakeIsPrefix!158 lt!2073953 lt!2073966))))

(declare-fun lt!2073961 () tuple2!63064)

(declare-fun lt!2073955 () List!58020)

(assert (=> b!5013018 (isPrefix!5358 (_1!34835 lt!2073961) lt!2073955)))

(declare-fun lt!2073958 () Unit!149107)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3456 (List!58020 List!58020) Unit!149107)

(assert (=> b!5013018 (= lt!2073958 (lemmaConcatTwoListThenFirstIsPrefix!3456 (_1!34835 lt!2073961) (_2!34835 lt!2073961)))))

(declare-fun lt!2073969 () List!58020)

(assert (=> b!5013018 (isPrefix!5358 lt!2073954 lt!2073969)))

(declare-fun lt!2073956 () Unit!149107)

(declare-fun lt!2073968 () List!58020)

(assert (=> b!5013018 (= lt!2073956 (lemmaConcatTwoListThenFirstIsPrefix!3456 lt!2073954 lt!2073968))))

(declare-fun b!5013019 () Bool)

(declare-fun e!3131845 () Bool)

(assert (=> b!5013019 (= e!3131845 e!3131834)))

(declare-fun res!2137814 () Bool)

(assert (=> b!5013019 (=> (not res!2137814) (not e!3131834))))

(assert (=> b!5013019 (= res!2137814 (= lt!2073955 lt!2073960))))

(declare-fun ++!12653 (List!58020 List!58020) List!58020)

(assert (=> b!5013019 (= lt!2073955 (++!12653 (_1!34835 lt!2073961) (_2!34835 lt!2073961)))))

(declare-fun b!5013020 () Bool)

(declare-fun e!3131843 () Bool)

(declare-fun e!3131837 () Bool)

(assert (=> b!5013020 (= e!3131843 e!3131837)))

(declare-fun res!2137804 () Bool)

(assert (=> b!5013020 (=> res!2137804 e!3131837)))

(declare-fun lt!2073952 () Int)

(declare-fun lt!2073964 () Int)

(assert (=> b!5013020 (= res!2137804 (or (> lt!2073952 lt!2073964) (<= lt!2073964 lt!2073952)))))

(declare-datatypes ((tuple2!63066 0))(
  ( (tuple2!63067 (_1!34836 BalanceConc!30078) (_2!34836 BalanceConc!30078)) )
))
(declare-fun lt!2073951 () tuple2!63066)

(declare-fun size!38489 (BalanceConc!30078) Int)

(assert (=> b!5013020 (= lt!2073964 (size!38489 (_1!34836 lt!2073951)))))

(assert (=> b!5013020 (= lt!2073952 (size!38488 (_1!34835 lt!2073961)))))

(declare-fun matchR!6769 (Regex!13805 List!58020) Bool)

(assert (=> b!5013020 (= (matchR!6769 r!12727 lt!2073954) lt!2073967)))

(declare-fun lt!2073965 () Unit!149107)

(declare-datatypes ((List!58021 0))(
  ( (Nil!57897) (Cons!57897 (h!64345 Context!6460) (t!370389 List!58021)) )
))
(declare-fun lt!2073949 () List!58021)

(declare-fun theoremZipperRegexEquiv!177 ((InoxSet Context!6460) List!58021 Regex!13805 List!58020) Unit!149107)

(assert (=> b!5013020 (= lt!2073965 (theoremZipperRegexEquiv!177 z!4183 lt!2073949 r!12727 lt!2073954))))

(declare-fun lt!2073963 () Bool)

(assert (=> b!5013020 (= lt!2073963 (matchZipper!573 z!4183 (_1!34835 lt!2073961)))))

(declare-fun lt!2073948 () Unit!149107)

(assert (=> b!5013020 (= lt!2073948 (theoremZipperRegexEquiv!177 z!4183 lt!2073949 r!12727 (_1!34835 lt!2073961)))))

(declare-fun b!5013021 () Bool)

(declare-fun e!3131848 () Bool)

(declare-fun tp!1406045 () Bool)

(declare-fun inv!76086 (Conc!15324) Bool)

(assert (=> b!5013021 (= e!3131848 (and (inv!76086 (c!856292 totalInput!1012)) tp!1406045))))

(declare-fun b!5013022 () Bool)

(declare-fun e!3131847 () Bool)

(declare-fun e!3131839 () Bool)

(assert (=> b!5013022 (= e!3131847 e!3131839)))

(declare-fun res!2137808 () Bool)

(assert (=> b!5013022 (=> (not res!2137808) (not e!3131839))))

(declare-fun unfocusZipper!332 (List!58021) Regex!13805)

(assert (=> b!5013022 (= res!2137808 (= (unfocusZipper!332 lt!2073949) r!12727))))

(declare-fun toList!8090 ((InoxSet Context!6460)) List!58021)

(assert (=> b!5013022 (= lt!2073949 (toList!8090 z!4183))))

(declare-fun setIsEmpty!28460 () Bool)

(declare-fun setRes!28460 () Bool)

(assert (=> setIsEmpty!28460 setRes!28460))

(declare-fun b!5013023 () Bool)

(declare-fun drop!2468 (List!58020 Int) List!58020)

(assert (=> b!5013023 (= e!3131842 (matchZipper!573 z!4183 (take!664 (drop!2468 lt!2073953 lt!2073966) lt!2073950)))))

(declare-fun b!5013024 () Bool)

(assert (=> b!5013024 (= e!3131837 (>= (size!38488 lt!2073954) lt!2073952))))

(declare-fun b!5013025 () Bool)

(declare-fun e!3131840 () Bool)

(declare-fun tp!1406039 () Bool)

(declare-fun tp!1406040 () Bool)

(assert (=> b!5013025 (= e!3131840 (and tp!1406039 tp!1406040))))

(declare-fun b!5013026 () Bool)

(declare-fun e!3131836 () Bool)

(declare-fun input!5597 () BalanceConc!30078)

(declare-fun tp!1406044 () Bool)

(assert (=> b!5013026 (= e!3131836 (and (inv!76086 (c!856292 input!5597)) tp!1406044))))

(declare-fun b!5013027 () Bool)

(declare-fun res!2137812 () Bool)

(assert (=> b!5013027 (=> res!2137812 e!3131837)))

(assert (=> b!5013027 (= res!2137812 (not (isPrefix!5358 lt!2073954 lt!2073960)))))

(declare-fun b!5013028 () Bool)

(assert (=> b!5013028 (= e!3131838 e!3131843)))

(declare-fun res!2137815 () Bool)

(assert (=> b!5013028 (=> res!2137815 e!3131843)))

(declare-fun e!3131844 () Bool)

(assert (=> b!5013028 (= res!2137815 e!3131844)))

(declare-fun res!2137809 () Bool)

(assert (=> b!5013028 (=> (not res!2137809) (not e!3131844))))

(assert (=> b!5013028 (= res!2137809 (not lt!2073963))))

(assert (=> b!5013028 (= lt!2073963 (matchR!6769 r!12727 (_1!34835 lt!2073961)))))

(declare-fun b!5013029 () Bool)

(declare-fun res!2137806 () Bool)

(assert (=> b!5013029 (=> res!2137806 e!3131837)))

(assert (=> b!5013029 (= res!2137806 (not (isPrefix!5358 (_1!34835 lt!2073961) lt!2073960)))))

(declare-fun b!5013030 () Bool)

(declare-fun tp!1406038 () Bool)

(declare-fun tp!1406042 () Bool)

(assert (=> b!5013030 (= e!3131840 (and tp!1406038 tp!1406042))))

(declare-fun b!5013031 () Bool)

(declare-fun e!3131849 () Bool)

(declare-fun tp!1406041 () Bool)

(assert (=> b!5013031 (= e!3131849 tp!1406041)))

(declare-fun res!2137803 () Bool)

(assert (=> start!529566 (=> (not res!2137803) (not e!3131847))))

(declare-fun validRegex!6102 (Regex!13805) Bool)

(assert (=> start!529566 (= res!2137803 (validRegex!6102 r!12727))))

(assert (=> start!529566 e!3131847))

(assert (=> start!529566 e!3131840))

(declare-fun inv!76087 (BalanceConc!30078) Bool)

(assert (=> start!529566 (and (inv!76087 input!5597) e!3131836)))

(declare-fun condSetEmpty!28460 () Bool)

(assert (=> start!529566 (= condSetEmpty!28460 (= z!4183 ((as const (Array Context!6460 Bool)) false)))))

(assert (=> start!529566 setRes!28460))

(assert (=> start!529566 (and (inv!76087 totalInput!1012) e!3131848)))

(declare-fun b!5013032 () Bool)

(declare-fun e!3131835 () Bool)

(assert (=> b!5013032 (= e!3131839 e!3131835)))

(declare-fun res!2137810 () Bool)

(assert (=> b!5013032 (=> (not res!2137810) (not e!3131835))))

(declare-fun isSuffix!1371 (List!58020 List!58020) Bool)

(assert (=> b!5013032 (= res!2137810 (isSuffix!1371 lt!2073960 lt!2073953))))

(declare-fun list!18642 (BalanceConc!30078) List!58020)

(assert (=> b!5013032 (= lt!2073953 (list!18642 totalInput!1012))))

(assert (=> b!5013032 (= lt!2073960 (list!18642 input!5597))))

(declare-fun b!5013033 () Bool)

(assert (=> b!5013033 (= e!3131835 e!3131845)))

(declare-fun res!2137805 () Bool)

(assert (=> b!5013033 (=> (not res!2137805) (not e!3131845))))

(assert (=> b!5013033 (= res!2137805 (= lt!2073969 lt!2073960))))

(assert (=> b!5013033 (= lt!2073969 (++!12653 lt!2073954 lt!2073968))))

(assert (=> b!5013033 (= lt!2073968 (list!18642 (_2!34836 lt!2073951)))))

(assert (=> b!5013033 (= lt!2073954 (list!18642 (_1!34836 lt!2073951)))))

(declare-fun findLongestMatch!1818 (Regex!13805 List!58020) tuple2!63064)

(assert (=> b!5013033 (= lt!2073961 (findLongestMatch!1818 r!12727 lt!2073960))))

(assert (=> b!5013033 (= lt!2073966 (- lt!2073962 (size!38489 input!5597)))))

(assert (=> b!5013033 (= lt!2073962 (size!38489 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!107 ((InoxSet Context!6460) BalanceConc!30078 BalanceConc!30078) tuple2!63066)

(assert (=> b!5013033 (= lt!2073951 (findLongestMatchZipperFastV2!107 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5013034 () Bool)

(assert (=> b!5013034 (= e!3131846 (matchR!6769 r!12727 (_1!34835 lt!2073957)))))

(declare-fun b!5013035 () Bool)

(assert (=> b!5013035 (= e!3131844 (not (isEmpty!31363 (_1!34835 lt!2073961))))))

(declare-fun tp!1406046 () Bool)

(declare-fun setElem!28460 () Context!6460)

(declare-fun setNonEmpty!28460 () Bool)

(declare-fun inv!76088 (Context!6460) Bool)

(assert (=> setNonEmpty!28460 (= setRes!28460 (and tp!1406046 (inv!76088 setElem!28460) e!3131849))))

(declare-fun setRest!28460 () (InoxSet Context!6460))

(assert (=> setNonEmpty!28460 (= z!4183 ((_ map or) (store ((as const (Array Context!6460 Bool)) false) setElem!28460 true) setRest!28460))))

(declare-fun b!5013036 () Bool)

(declare-fun tp!1406043 () Bool)

(assert (=> b!5013036 (= e!3131840 tp!1406043)))

(declare-fun b!5013037 () Bool)

(declare-fun isEmpty!31364 (BalanceConc!30078) Bool)

(assert (=> b!5013037 (= e!3131841 (not (isEmpty!31364 (_1!34836 lt!2073951))))))

(declare-fun b!5013038 () Bool)

(declare-fun tp_is_empty!36607 () Bool)

(assert (=> b!5013038 (= e!3131840 tp_is_empty!36607)))

(assert (= (and start!529566 res!2137803) b!5013022))

(assert (= (and b!5013022 res!2137808) b!5013032))

(assert (= (and b!5013032 res!2137810) b!5013033))

(assert (= (and b!5013033 res!2137805) b!5013019))

(assert (= (and b!5013019 res!2137814) b!5013018))

(assert (= (and b!5013018 (not res!2137807)) b!5013023))

(assert (= (and b!5013018 (not res!2137813)) b!5013034))

(assert (= (and b!5013018 res!2137802) b!5013037))

(assert (= (and b!5013018 (not res!2137811)) b!5013028))

(assert (= (and b!5013028 res!2137809) b!5013035))

(assert (= (and b!5013028 (not res!2137815)) b!5013020))

(assert (= (and b!5013020 (not res!2137804)) b!5013029))

(assert (= (and b!5013029 (not res!2137806)) b!5013027))

(assert (= (and b!5013027 (not res!2137812)) b!5013024))

(get-info :version)

(assert (= (and start!529566 ((_ is ElementMatch!13805) r!12727)) b!5013038))

(assert (= (and start!529566 ((_ is Concat!22598) r!12727)) b!5013025))

(assert (= (and start!529566 ((_ is Star!13805) r!12727)) b!5013036))

(assert (= (and start!529566 ((_ is Union!13805) r!12727)) b!5013030))

(assert (= start!529566 b!5013026))

(assert (= (and start!529566 condSetEmpty!28460) setIsEmpty!28460))

(assert (= (and start!529566 (not condSetEmpty!28460)) setNonEmpty!28460))

(assert (= setNonEmpty!28460 b!5013031))

(assert (= start!529566 b!5013021))

(declare-fun m!6047742 () Bool)

(assert (=> start!529566 m!6047742))

(declare-fun m!6047744 () Bool)

(assert (=> start!529566 m!6047744))

(declare-fun m!6047746 () Bool)

(assert (=> start!529566 m!6047746))

(declare-fun m!6047748 () Bool)

(assert (=> b!5013020 m!6047748))

(declare-fun m!6047750 () Bool)

(assert (=> b!5013020 m!6047750))

(declare-fun m!6047752 () Bool)

(assert (=> b!5013020 m!6047752))

(declare-fun m!6047754 () Bool)

(assert (=> b!5013020 m!6047754))

(declare-fun m!6047756 () Bool)

(assert (=> b!5013020 m!6047756))

(declare-fun m!6047758 () Bool)

(assert (=> b!5013020 m!6047758))

(declare-fun m!6047760 () Bool)

(assert (=> b!5013027 m!6047760))

(declare-fun m!6047762 () Bool)

(assert (=> b!5013026 m!6047762))

(declare-fun m!6047764 () Bool)

(assert (=> setNonEmpty!28460 m!6047764))

(declare-fun m!6047766 () Bool)

(assert (=> b!5013024 m!6047766))

(declare-fun m!6047768 () Bool)

(assert (=> b!5013034 m!6047768))

(declare-fun m!6047770 () Bool)

(assert (=> b!5013018 m!6047770))

(declare-fun m!6047772 () Bool)

(assert (=> b!5013018 m!6047772))

(declare-fun m!6047774 () Bool)

(assert (=> b!5013018 m!6047774))

(declare-fun m!6047776 () Bool)

(assert (=> b!5013018 m!6047776))

(declare-fun m!6047778 () Bool)

(assert (=> b!5013018 m!6047778))

(declare-fun m!6047780 () Bool)

(assert (=> b!5013018 m!6047780))

(assert (=> b!5013018 m!6047770))

(assert (=> b!5013018 m!6047772))

(declare-fun m!6047782 () Bool)

(assert (=> b!5013018 m!6047782))

(declare-fun m!6047784 () Bool)

(assert (=> b!5013018 m!6047784))

(declare-fun m!6047786 () Bool)

(assert (=> b!5013018 m!6047786))

(declare-fun m!6047788 () Bool)

(assert (=> b!5013018 m!6047788))

(declare-fun m!6047790 () Bool)

(assert (=> b!5013018 m!6047790))

(declare-fun m!6047792 () Bool)

(assert (=> b!5013018 m!6047792))

(declare-fun m!6047794 () Bool)

(assert (=> b!5013018 m!6047794))

(assert (=> b!5013018 m!6047776))

(declare-fun m!6047796 () Bool)

(assert (=> b!5013018 m!6047796))

(declare-fun m!6047798 () Bool)

(assert (=> b!5013018 m!6047798))

(declare-fun m!6047800 () Bool)

(assert (=> b!5013022 m!6047800))

(declare-fun m!6047802 () Bool)

(assert (=> b!5013022 m!6047802))

(declare-fun m!6047804 () Bool)

(assert (=> b!5013032 m!6047804))

(declare-fun m!6047806 () Bool)

(assert (=> b!5013032 m!6047806))

(declare-fun m!6047808 () Bool)

(assert (=> b!5013032 m!6047808))

(declare-fun m!6047810 () Bool)

(assert (=> b!5013035 m!6047810))

(declare-fun m!6047812 () Bool)

(assert (=> b!5013021 m!6047812))

(declare-fun m!6047814 () Bool)

(assert (=> b!5013023 m!6047814))

(assert (=> b!5013023 m!6047814))

(declare-fun m!6047816 () Bool)

(assert (=> b!5013023 m!6047816))

(assert (=> b!5013023 m!6047816))

(declare-fun m!6047818 () Bool)

(assert (=> b!5013023 m!6047818))

(declare-fun m!6047820 () Bool)

(assert (=> b!5013037 m!6047820))

(declare-fun m!6047822 () Bool)

(assert (=> b!5013033 m!6047822))

(declare-fun m!6047824 () Bool)

(assert (=> b!5013033 m!6047824))

(declare-fun m!6047826 () Bool)

(assert (=> b!5013033 m!6047826))

(declare-fun m!6047828 () Bool)

(assert (=> b!5013033 m!6047828))

(declare-fun m!6047830 () Bool)

(assert (=> b!5013033 m!6047830))

(declare-fun m!6047832 () Bool)

(assert (=> b!5013033 m!6047832))

(declare-fun m!6047834 () Bool)

(assert (=> b!5013033 m!6047834))

(declare-fun m!6047836 () Bool)

(assert (=> b!5013019 m!6047836))

(declare-fun m!6047838 () Bool)

(assert (=> b!5013029 m!6047838))

(declare-fun m!6047840 () Bool)

(assert (=> b!5013028 m!6047840))

(check-sat (not b!5013032) (not b!5013036) (not b!5013027) (not b!5013033) (not b!5013037) (not b!5013019) (not setNonEmpty!28460) (not b!5013029) (not b!5013022) (not start!529566) (not b!5013028) (not b!5013023) (not b!5013025) tp_is_empty!36607 (not b!5013018) (not b!5013026) (not b!5013024) (not b!5013021) (not b!5013020) (not b!5013035) (not b!5013031) (not b!5013034) (not b!5013030))
(check-sat)
(get-model)

(declare-fun d!1614199 () Bool)

(declare-fun list!18644 (Conc!15324) List!58020)

(assert (=> d!1614199 (= (list!18642 (_2!34836 lt!2073951)) (list!18644 (c!856292 (_2!34836 lt!2073951))))))

(declare-fun bs!1186797 () Bool)

(assert (= bs!1186797 d!1614199))

(declare-fun m!6047842 () Bool)

(assert (=> bs!1186797 m!6047842))

(assert (=> b!5013033 d!1614199))

(declare-fun e!3131862 () Bool)

(declare-fun lt!2073976 () List!58020)

(declare-fun b!5013062 () Bool)

(assert (=> b!5013062 (= e!3131862 (or (not (= lt!2073968 Nil!57896)) (= lt!2073976 lt!2073954)))))

(declare-fun b!5013060 () Bool)

(declare-fun e!3131861 () List!58020)

(assert (=> b!5013060 (= e!3131861 (Cons!57896 (h!64344 lt!2073954) (++!12653 (t!370388 lt!2073954) lt!2073968)))))

(declare-fun d!1614201 () Bool)

(assert (=> d!1614201 e!3131862))

(declare-fun res!2137823 () Bool)

(assert (=> d!1614201 (=> (not res!2137823) (not e!3131862))))

(declare-fun content!10259 (List!58020) (InoxSet C!27860))

(assert (=> d!1614201 (= res!2137823 (= (content!10259 lt!2073976) ((_ map or) (content!10259 lt!2073954) (content!10259 lt!2073968))))))

(assert (=> d!1614201 (= lt!2073976 e!3131861)))

(declare-fun c!856300 () Bool)

(assert (=> d!1614201 (= c!856300 ((_ is Nil!57896) lt!2073954))))

(assert (=> d!1614201 (= (++!12653 lt!2073954 lt!2073968) lt!2073976)))

(declare-fun b!5013061 () Bool)

(declare-fun res!2137822 () Bool)

(assert (=> b!5013061 (=> (not res!2137822) (not e!3131862))))

(assert (=> b!5013061 (= res!2137822 (= (size!38488 lt!2073976) (+ (size!38488 lt!2073954) (size!38488 lt!2073968))))))

(declare-fun b!5013059 () Bool)

(assert (=> b!5013059 (= e!3131861 lt!2073968)))

(assert (= (and d!1614201 c!856300) b!5013059))

(assert (= (and d!1614201 (not c!856300)) b!5013060))

(assert (= (and d!1614201 res!2137823) b!5013061))

(assert (= (and b!5013061 res!2137822) b!5013062))

(declare-fun m!6047848 () Bool)

(assert (=> b!5013060 m!6047848))

(declare-fun m!6047852 () Bool)

(assert (=> d!1614201 m!6047852))

(declare-fun m!6047854 () Bool)

(assert (=> d!1614201 m!6047854))

(declare-fun m!6047856 () Bool)

(assert (=> d!1614201 m!6047856))

(declare-fun m!6047858 () Bool)

(assert (=> b!5013061 m!6047858))

(assert (=> b!5013061 m!6047766))

(declare-fun m!6047860 () Bool)

(assert (=> b!5013061 m!6047860))

(assert (=> b!5013033 d!1614201))

(declare-fun d!1614209 () Bool)

(declare-fun lt!2073979 () Int)

(assert (=> d!1614209 (= lt!2073979 (size!38488 (list!18642 input!5597)))))

(declare-fun size!38491 (Conc!15324) Int)

(assert (=> d!1614209 (= lt!2073979 (size!38491 (c!856292 input!5597)))))

(assert (=> d!1614209 (= (size!38489 input!5597) lt!2073979)))

(declare-fun bs!1186798 () Bool)

(assert (= bs!1186798 d!1614209))

(assert (=> bs!1186798 m!6047808))

(assert (=> bs!1186798 m!6047808))

(declare-fun m!6047862 () Bool)

(assert (=> bs!1186798 m!6047862))

(declare-fun m!6047864 () Bool)

(assert (=> bs!1186798 m!6047864))

(assert (=> b!5013033 d!1614209))

(declare-fun d!1614211 () Bool)

(assert (=> d!1614211 (= (list!18642 (_1!34836 lt!2073951)) (list!18644 (c!856292 (_1!34836 lt!2073951))))))

(declare-fun bs!1186799 () Bool)

(assert (= bs!1186799 d!1614211))

(declare-fun m!6047866 () Bool)

(assert (=> bs!1186799 m!6047866))

(assert (=> b!5013033 d!1614211))

(declare-fun d!1614213 () Bool)

(declare-fun lt!2074032 () tuple2!63064)

(assert (=> d!1614213 (= (++!12653 (_1!34835 lt!2074032) (_2!34835 lt!2074032)) lt!2073960)))

(declare-fun sizeTr!404 (List!58020 Int) Int)

(assert (=> d!1614213 (= lt!2074032 (findLongestMatchInner!1994 r!12727 Nil!57896 0 lt!2073960 lt!2073960 (sizeTr!404 lt!2073960 0)))))

(declare-fun lt!2074034 () Unit!149107)

(declare-fun lt!2074033 () Unit!149107)

(assert (=> d!1614213 (= lt!2074034 lt!2074033)))

(declare-fun lt!2074030 () List!58020)

(declare-fun lt!2074031 () Int)

(assert (=> d!1614213 (= (sizeTr!404 lt!2074030 lt!2074031) (+ (size!38488 lt!2074030) lt!2074031))))

(declare-fun lemmaSizeTrEqualsSize!403 (List!58020 Int) Unit!149107)

(assert (=> d!1614213 (= lt!2074033 (lemmaSizeTrEqualsSize!403 lt!2074030 lt!2074031))))

(assert (=> d!1614213 (= lt!2074031 0)))

(assert (=> d!1614213 (= lt!2074030 Nil!57896)))

(declare-fun lt!2074029 () Unit!149107)

(declare-fun lt!2074028 () Unit!149107)

(assert (=> d!1614213 (= lt!2074029 lt!2074028)))

(declare-fun lt!2074027 () Int)

(assert (=> d!1614213 (= (sizeTr!404 lt!2073960 lt!2074027) (+ (size!38488 lt!2073960) lt!2074027))))

(assert (=> d!1614213 (= lt!2074028 (lemmaSizeTrEqualsSize!403 lt!2073960 lt!2074027))))

(assert (=> d!1614213 (= lt!2074027 0)))

(assert (=> d!1614213 (validRegex!6102 r!12727)))

(assert (=> d!1614213 (= (findLongestMatch!1818 r!12727 lt!2073960) lt!2074032)))

(declare-fun bs!1186804 () Bool)

(assert (= bs!1186804 d!1614213))

(declare-fun m!6047906 () Bool)

(assert (=> bs!1186804 m!6047906))

(declare-fun m!6047908 () Bool)

(assert (=> bs!1186804 m!6047908))

(assert (=> bs!1186804 m!6047772))

(assert (=> bs!1186804 m!6047742))

(declare-fun m!6047910 () Bool)

(assert (=> bs!1186804 m!6047910))

(declare-fun m!6047912 () Bool)

(assert (=> bs!1186804 m!6047912))

(declare-fun m!6047914 () Bool)

(assert (=> bs!1186804 m!6047914))

(assert (=> bs!1186804 m!6047914))

(declare-fun m!6047916 () Bool)

(assert (=> bs!1186804 m!6047916))

(declare-fun m!6047918 () Bool)

(assert (=> bs!1186804 m!6047918))

(declare-fun m!6047920 () Bool)

(assert (=> bs!1186804 m!6047920))

(assert (=> b!5013033 d!1614213))

(declare-fun d!1614225 () Bool)

(declare-fun lt!2074035 () Int)

(assert (=> d!1614225 (= lt!2074035 (size!38488 (list!18642 totalInput!1012)))))

(assert (=> d!1614225 (= lt!2074035 (size!38491 (c!856292 totalInput!1012)))))

(assert (=> d!1614225 (= (size!38489 totalInput!1012) lt!2074035)))

(declare-fun bs!1186805 () Bool)

(assert (= bs!1186805 d!1614225))

(assert (=> bs!1186805 m!6047806))

(assert (=> bs!1186805 m!6047806))

(declare-fun m!6047922 () Bool)

(assert (=> bs!1186805 m!6047922))

(declare-fun m!6047924 () Bool)

(assert (=> bs!1186805 m!6047924))

(assert (=> b!5013033 d!1614225))

(declare-fun d!1614227 () Bool)

(declare-fun lt!2074059 () tuple2!63066)

(assert (=> d!1614227 (= (++!12653 (list!18642 (_1!34836 lt!2074059)) (list!18642 (_2!34836 lt!2074059))) (list!18642 input!5597))))

(declare-fun lt!2074060 () Int)

(declare-fun splitAt!457 (BalanceConc!30078 Int) tuple2!63066)

(assert (=> d!1614227 (= lt!2074059 (splitAt!457 input!5597 (findLongestMatchInnerZipperFastV2!145 z!4183 (- lt!2074060 (size!38489 input!5597)) totalInput!1012 lt!2074060)))))

(assert (=> d!1614227 (= lt!2074060 (size!38489 totalInput!1012))))

(assert (=> d!1614227 (isSuffix!1371 (list!18642 input!5597) (list!18642 totalInput!1012))))

(assert (=> d!1614227 (= (findLongestMatchZipperFastV2!107 z!4183 input!5597 totalInput!1012) lt!2074059)))

(declare-fun bs!1186811 () Bool)

(assert (= bs!1186811 d!1614227))

(declare-fun m!6047992 () Bool)

(assert (=> bs!1186811 m!6047992))

(assert (=> bs!1186811 m!6047808))

(assert (=> bs!1186811 m!6047806))

(declare-fun m!6047994 () Bool)

(assert (=> bs!1186811 m!6047994))

(assert (=> bs!1186811 m!6047992))

(declare-fun m!6047996 () Bool)

(assert (=> bs!1186811 m!6047996))

(declare-fun m!6047998 () Bool)

(assert (=> bs!1186811 m!6047998))

(declare-fun m!6048000 () Bool)

(assert (=> bs!1186811 m!6048000))

(declare-fun m!6048002 () Bool)

(assert (=> bs!1186811 m!6048002))

(assert (=> bs!1186811 m!6047828))

(assert (=> bs!1186811 m!6047826))

(assert (=> bs!1186811 m!6047806))

(assert (=> bs!1186811 m!6047998))

(assert (=> bs!1186811 m!6047808))

(assert (=> bs!1186811 m!6048000))

(assert (=> b!5013033 d!1614227))

(declare-fun c!856332 () Bool)

(declare-fun d!1614249 () Bool)

(assert (=> d!1614249 (= c!856332 (isEmpty!31363 (take!664 (drop!2468 lt!2073953 lt!2073966) lt!2073950)))))

(declare-fun e!3131914 () Bool)

(assert (=> d!1614249 (= (matchZipper!573 z!4183 (take!664 (drop!2468 lt!2073953 lt!2073966) lt!2073950)) e!3131914)))

(declare-fun b!5013149 () Bool)

(declare-fun nullableZipper!888 ((InoxSet Context!6460)) Bool)

(assert (=> b!5013149 (= e!3131914 (nullableZipper!888 z!4183))))

(declare-fun b!5013150 () Bool)

(declare-fun derivationStepZipper!637 ((InoxSet Context!6460) C!27860) (InoxSet Context!6460))

(declare-fun head!10741 (List!58020) C!27860)

(declare-fun tail!9874 (List!58020) List!58020)

(assert (=> b!5013150 (= e!3131914 (matchZipper!573 (derivationStepZipper!637 z!4183 (head!10741 (take!664 (drop!2468 lt!2073953 lt!2073966) lt!2073950))) (tail!9874 (take!664 (drop!2468 lt!2073953 lt!2073966) lt!2073950))))))

(assert (= (and d!1614249 c!856332) b!5013149))

(assert (= (and d!1614249 (not c!856332)) b!5013150))

(assert (=> d!1614249 m!6047816))

(declare-fun m!6048014 () Bool)

(assert (=> d!1614249 m!6048014))

(declare-fun m!6048016 () Bool)

(assert (=> b!5013149 m!6048016))

(assert (=> b!5013150 m!6047816))

(declare-fun m!6048018 () Bool)

(assert (=> b!5013150 m!6048018))

(assert (=> b!5013150 m!6048018))

(declare-fun m!6048020 () Bool)

(assert (=> b!5013150 m!6048020))

(assert (=> b!5013150 m!6047816))

(declare-fun m!6048022 () Bool)

(assert (=> b!5013150 m!6048022))

(assert (=> b!5013150 m!6048020))

(assert (=> b!5013150 m!6048022))

(declare-fun m!6048024 () Bool)

(assert (=> b!5013150 m!6048024))

(assert (=> b!5013023 d!1614249))

(declare-fun b!5013165 () Bool)

(declare-fun e!3131926 () Int)

(assert (=> b!5013165 (= e!3131926 0)))

(declare-fun d!1614253 () Bool)

(declare-fun e!3131925 () Bool)

(assert (=> d!1614253 e!3131925))

(declare-fun res!2137850 () Bool)

(assert (=> d!1614253 (=> (not res!2137850) (not e!3131925))))

(declare-fun lt!2074066 () List!58020)

(assert (=> d!1614253 (= res!2137850 (= ((_ map implies) (content!10259 lt!2074066) (content!10259 (drop!2468 lt!2073953 lt!2073966))) ((as const (InoxSet C!27860)) true)))))

(declare-fun e!3131924 () List!58020)

(assert (=> d!1614253 (= lt!2074066 e!3131924)))

(declare-fun c!856341 () Bool)

(assert (=> d!1614253 (= c!856341 (or ((_ is Nil!57896) (drop!2468 lt!2073953 lt!2073966)) (<= lt!2073950 0)))))

(assert (=> d!1614253 (= (take!664 (drop!2468 lt!2073953 lt!2073966) lt!2073950) lt!2074066)))

(declare-fun b!5013166 () Bool)

(assert (=> b!5013166 (= e!3131925 (= (size!38488 lt!2074066) e!3131926))))

(declare-fun c!856340 () Bool)

(assert (=> b!5013166 (= c!856340 (<= lt!2073950 0))))

(declare-fun b!5013167 () Bool)

(declare-fun e!3131923 () Int)

(assert (=> b!5013167 (= e!3131926 e!3131923)))

(declare-fun c!856339 () Bool)

(assert (=> b!5013167 (= c!856339 (>= lt!2073950 (size!38488 (drop!2468 lt!2073953 lt!2073966))))))

(declare-fun b!5013168 () Bool)

(assert (=> b!5013168 (= e!3131923 lt!2073950)))

(declare-fun b!5013169 () Bool)

(assert (=> b!5013169 (= e!3131923 (size!38488 (drop!2468 lt!2073953 lt!2073966)))))

(declare-fun b!5013170 () Bool)

(assert (=> b!5013170 (= e!3131924 (Cons!57896 (h!64344 (drop!2468 lt!2073953 lt!2073966)) (take!664 (t!370388 (drop!2468 lt!2073953 lt!2073966)) (- lt!2073950 1))))))

(declare-fun b!5013171 () Bool)

(assert (=> b!5013171 (= e!3131924 Nil!57896)))

(assert (= (and d!1614253 c!856341) b!5013171))

(assert (= (and d!1614253 (not c!856341)) b!5013170))

(assert (= (and d!1614253 res!2137850) b!5013166))

(assert (= (and b!5013166 c!856340) b!5013165))

(assert (= (and b!5013166 (not c!856340)) b!5013167))

(assert (= (and b!5013167 c!856339) b!5013169))

(assert (= (and b!5013167 (not c!856339)) b!5013168))

(declare-fun m!6048026 () Bool)

(assert (=> b!5013170 m!6048026))

(declare-fun m!6048028 () Bool)

(assert (=> d!1614253 m!6048028))

(assert (=> d!1614253 m!6047814))

(declare-fun m!6048030 () Bool)

(assert (=> d!1614253 m!6048030))

(assert (=> b!5013167 m!6047814))

(declare-fun m!6048032 () Bool)

(assert (=> b!5013167 m!6048032))

(declare-fun m!6048034 () Bool)

(assert (=> b!5013166 m!6048034))

(assert (=> b!5013169 m!6047814))

(assert (=> b!5013169 m!6048032))

(assert (=> b!5013023 d!1614253))

(declare-fun d!1614255 () Bool)

(declare-fun e!3131937 () Bool)

(assert (=> d!1614255 e!3131937))

(declare-fun res!2137853 () Bool)

(assert (=> d!1614255 (=> (not res!2137853) (not e!3131937))))

(declare-fun lt!2074069 () List!58020)

(assert (=> d!1614255 (= res!2137853 (= ((_ map implies) (content!10259 lt!2074069) (content!10259 lt!2073953)) ((as const (InoxSet C!27860)) true)))))

(declare-fun e!3131941 () List!58020)

(assert (=> d!1614255 (= lt!2074069 e!3131941)))

(declare-fun c!856353 () Bool)

(assert (=> d!1614255 (= c!856353 ((_ is Nil!57896) lt!2073953))))

(assert (=> d!1614255 (= (drop!2468 lt!2073953 lt!2073966) lt!2074069)))

(declare-fun b!5013190 () Bool)

(declare-fun e!3131940 () List!58020)

(assert (=> b!5013190 (= e!3131940 (drop!2468 (t!370388 lt!2073953) (- lt!2073966 1)))))

(declare-fun b!5013191 () Bool)

(assert (=> b!5013191 (= e!3131940 lt!2073953)))

(declare-fun b!5013192 () Bool)

(declare-fun e!3131939 () Int)

(declare-fun call!350061 () Int)

(assert (=> b!5013192 (= e!3131939 (- call!350061 lt!2073966))))

(declare-fun b!5013193 () Bool)

(declare-fun e!3131938 () Int)

(assert (=> b!5013193 (= e!3131938 e!3131939)))

(declare-fun c!856350 () Bool)

(assert (=> b!5013193 (= c!856350 (>= lt!2073966 call!350061))))

(declare-fun bm!350056 () Bool)

(assert (=> bm!350056 (= call!350061 (size!38488 lt!2073953))))

(declare-fun b!5013194 () Bool)

(assert (=> b!5013194 (= e!3131938 call!350061)))

(declare-fun b!5013195 () Bool)

(assert (=> b!5013195 (= e!3131941 e!3131940)))

(declare-fun c!856351 () Bool)

(assert (=> b!5013195 (= c!856351 (<= lt!2073966 0))))

(declare-fun b!5013196 () Bool)

(assert (=> b!5013196 (= e!3131941 Nil!57896)))

(declare-fun b!5013197 () Bool)

(assert (=> b!5013197 (= e!3131939 0)))

(declare-fun b!5013198 () Bool)

(assert (=> b!5013198 (= e!3131937 (= (size!38488 lt!2074069) e!3131938))))

(declare-fun c!856352 () Bool)

(assert (=> b!5013198 (= c!856352 (<= lt!2073966 0))))

(assert (= (and d!1614255 c!856353) b!5013196))

(assert (= (and d!1614255 (not c!856353)) b!5013195))

(assert (= (and b!5013195 c!856351) b!5013191))

(assert (= (and b!5013195 (not c!856351)) b!5013190))

(assert (= (and d!1614255 res!2137853) b!5013198))

(assert (= (and b!5013198 c!856352) b!5013194))

(assert (= (and b!5013198 (not c!856352)) b!5013193))

(assert (= (and b!5013193 c!856350) b!5013197))

(assert (= (and b!5013193 (not c!856350)) b!5013192))

(assert (= (or b!5013194 b!5013193 b!5013192) bm!350056))

(declare-fun m!6048036 () Bool)

(assert (=> d!1614255 m!6048036))

(declare-fun m!6048038 () Bool)

(assert (=> d!1614255 m!6048038))

(declare-fun m!6048040 () Bool)

(assert (=> b!5013190 m!6048040))

(declare-fun m!6048042 () Bool)

(assert (=> bm!350056 m!6048042))

(declare-fun m!6048044 () Bool)

(assert (=> b!5013198 m!6048044))

(assert (=> b!5013023 d!1614255))

(declare-fun b!5013217 () Bool)

(declare-fun e!3131957 () Bool)

(declare-fun call!350070 () Bool)

(assert (=> b!5013217 (= e!3131957 call!350070)))

(declare-fun b!5013218 () Bool)

(declare-fun e!3131962 () Bool)

(declare-fun call!350069 () Bool)

(assert (=> b!5013218 (= e!3131962 call!350069)))

(declare-fun b!5013219 () Bool)

(declare-fun e!3131961 () Bool)

(declare-fun e!3131958 () Bool)

(assert (=> b!5013219 (= e!3131961 e!3131958)))

(declare-fun c!856358 () Bool)

(assert (=> b!5013219 (= c!856358 ((_ is Star!13805) r!12727))))

(declare-fun bm!350063 () Bool)

(declare-fun c!856359 () Bool)

(assert (=> bm!350063 (= call!350070 (validRegex!6102 (ite c!856359 (regTwo!28123 r!12727) (regOne!28122 r!12727))))))

(declare-fun b!5013220 () Bool)

(declare-fun e!3131959 () Bool)

(assert (=> b!5013220 (= e!3131958 e!3131959)))

(assert (=> b!5013220 (= c!856359 ((_ is Union!13805) r!12727))))

(declare-fun bm!350064 () Bool)

(declare-fun call!350068 () Bool)

(assert (=> bm!350064 (= call!350068 (validRegex!6102 (ite c!856358 (reg!14134 r!12727) (ite c!856359 (regOne!28123 r!12727) (regTwo!28122 r!12727)))))))

(declare-fun d!1614257 () Bool)

(declare-fun res!2137868 () Bool)

(assert (=> d!1614257 (=> res!2137868 e!3131961)))

(assert (=> d!1614257 (= res!2137868 ((_ is ElementMatch!13805) r!12727))))

(assert (=> d!1614257 (= (validRegex!6102 r!12727) e!3131961)))

(declare-fun b!5013221 () Bool)

(declare-fun e!3131960 () Bool)

(assert (=> b!5013221 (= e!3131960 e!3131962)))

(declare-fun res!2137867 () Bool)

(assert (=> b!5013221 (=> (not res!2137867) (not e!3131962))))

(assert (=> b!5013221 (= res!2137867 call!350070)))

(declare-fun bm!350065 () Bool)

(assert (=> bm!350065 (= call!350069 call!350068)))

(declare-fun b!5013222 () Bool)

(declare-fun res!2137864 () Bool)

(assert (=> b!5013222 (=> res!2137864 e!3131960)))

(assert (=> b!5013222 (= res!2137864 (not ((_ is Concat!22598) r!12727)))))

(assert (=> b!5013222 (= e!3131959 e!3131960)))

(declare-fun b!5013223 () Bool)

(declare-fun e!3131956 () Bool)

(assert (=> b!5013223 (= e!3131956 call!350068)))

(declare-fun b!5013224 () Bool)

(declare-fun res!2137866 () Bool)

(assert (=> b!5013224 (=> (not res!2137866) (not e!3131957))))

(assert (=> b!5013224 (= res!2137866 call!350069)))

(assert (=> b!5013224 (= e!3131959 e!3131957)))

(declare-fun b!5013225 () Bool)

(assert (=> b!5013225 (= e!3131958 e!3131956)))

(declare-fun res!2137865 () Bool)

(declare-fun nullable!4693 (Regex!13805) Bool)

(assert (=> b!5013225 (= res!2137865 (not (nullable!4693 (reg!14134 r!12727))))))

(assert (=> b!5013225 (=> (not res!2137865) (not e!3131956))))

(assert (= (and d!1614257 (not res!2137868)) b!5013219))

(assert (= (and b!5013219 c!856358) b!5013225))

(assert (= (and b!5013219 (not c!856358)) b!5013220))

(assert (= (and b!5013225 res!2137865) b!5013223))

(assert (= (and b!5013220 c!856359) b!5013224))

(assert (= (and b!5013220 (not c!856359)) b!5013222))

(assert (= (and b!5013224 res!2137866) b!5013217))

(assert (= (and b!5013222 (not res!2137864)) b!5013221))

(assert (= (and b!5013221 res!2137867) b!5013218))

(assert (= (or b!5013217 b!5013221) bm!350063))

(assert (= (or b!5013224 b!5013218) bm!350065))

(assert (= (or b!5013223 bm!350065) bm!350064))

(declare-fun m!6048046 () Bool)

(assert (=> bm!350063 m!6048046))

(declare-fun m!6048048 () Bool)

(assert (=> bm!350064 m!6048048))

(declare-fun m!6048050 () Bool)

(assert (=> b!5013225 m!6048050))

(assert (=> start!529566 d!1614257))

(declare-fun d!1614259 () Bool)

(declare-fun isBalanced!4275 (Conc!15324) Bool)

(assert (=> d!1614259 (= (inv!76087 input!5597) (isBalanced!4275 (c!856292 input!5597)))))

(declare-fun bs!1186812 () Bool)

(assert (= bs!1186812 d!1614259))

(declare-fun m!6048052 () Bool)

(assert (=> bs!1186812 m!6048052))

(assert (=> start!529566 d!1614259))

(declare-fun d!1614261 () Bool)

(assert (=> d!1614261 (= (inv!76087 totalInput!1012) (isBalanced!4275 (c!856292 totalInput!1012)))))

(declare-fun bs!1186813 () Bool)

(assert (= bs!1186813 d!1614261))

(declare-fun m!6048054 () Bool)

(assert (=> bs!1186813 m!6048054))

(assert (=> start!529566 d!1614261))

(declare-fun b!5013296 () Bool)

(declare-fun e!3132005 () Bool)

(assert (=> b!5013296 (= e!3132005 (not (= (head!10741 (_1!34835 lt!2073957)) (c!856291 r!12727))))))

(declare-fun b!5013297 () Bool)

(declare-fun e!3132001 () Bool)

(declare-fun derivativeStep!3983 (Regex!13805 C!27860) Regex!13805)

(assert (=> b!5013297 (= e!3132001 (matchR!6769 (derivativeStep!3983 r!12727 (head!10741 (_1!34835 lt!2073957))) (tail!9874 (_1!34835 lt!2073957))))))

(declare-fun b!5013298 () Bool)

(declare-fun res!2137894 () Bool)

(assert (=> b!5013298 (=> res!2137894 e!3132005)))

(assert (=> b!5013298 (= res!2137894 (not (isEmpty!31363 (tail!9874 (_1!34835 lt!2073957)))))))

(declare-fun b!5013299 () Bool)

(declare-fun res!2137898 () Bool)

(declare-fun e!3132006 () Bool)

(assert (=> b!5013299 (=> (not res!2137898) (not e!3132006))))

(assert (=> b!5013299 (= res!2137898 (isEmpty!31363 (tail!9874 (_1!34835 lt!2073957))))))

(declare-fun bm!350092 () Bool)

(declare-fun call!350097 () Bool)

(assert (=> bm!350092 (= call!350097 (isEmpty!31363 (_1!34835 lt!2073957)))))

(declare-fun b!5013300 () Bool)

(declare-fun e!3132003 () Bool)

(declare-fun lt!2074156 () Bool)

(assert (=> b!5013300 (= e!3132003 (= lt!2074156 call!350097))))

(declare-fun b!5013301 () Bool)

(declare-fun e!3132004 () Bool)

(assert (=> b!5013301 (= e!3132003 e!3132004)))

(declare-fun c!856385 () Bool)

(assert (=> b!5013301 (= c!856385 ((_ is EmptyLang!13805) r!12727))))

(declare-fun b!5013302 () Bool)

(declare-fun res!2137895 () Bool)

(declare-fun e!3132007 () Bool)

(assert (=> b!5013302 (=> res!2137895 e!3132007)))

(assert (=> b!5013302 (= res!2137895 e!3132006)))

(declare-fun res!2137891 () Bool)

(assert (=> b!5013302 (=> (not res!2137891) (not e!3132006))))

(assert (=> b!5013302 (= res!2137891 lt!2074156)))

(declare-fun b!5013303 () Bool)

(declare-fun res!2137897 () Bool)

(assert (=> b!5013303 (=> res!2137897 e!3132007)))

(assert (=> b!5013303 (= res!2137897 (not ((_ is ElementMatch!13805) r!12727)))))

(assert (=> b!5013303 (= e!3132004 e!3132007)))

(declare-fun b!5013304 () Bool)

(declare-fun e!3132002 () Bool)

(assert (=> b!5013304 (= e!3132007 e!3132002)))

(declare-fun res!2137896 () Bool)

(assert (=> b!5013304 (=> (not res!2137896) (not e!3132002))))

(assert (=> b!5013304 (= res!2137896 (not lt!2074156))))

(declare-fun b!5013305 () Bool)

(assert (=> b!5013305 (= e!3132004 (not lt!2074156))))

(declare-fun b!5013306 () Bool)

(declare-fun res!2137892 () Bool)

(assert (=> b!5013306 (=> (not res!2137892) (not e!3132006))))

(assert (=> b!5013306 (= res!2137892 (not call!350097))))

(declare-fun b!5013307 () Bool)

(assert (=> b!5013307 (= e!3132002 e!3132005)))

(declare-fun res!2137893 () Bool)

(assert (=> b!5013307 (=> res!2137893 e!3132005)))

(assert (=> b!5013307 (= res!2137893 call!350097)))

(declare-fun d!1614263 () Bool)

(assert (=> d!1614263 e!3132003))

(declare-fun c!856384 () Bool)

(assert (=> d!1614263 (= c!856384 ((_ is EmptyExpr!13805) r!12727))))

(assert (=> d!1614263 (= lt!2074156 e!3132001)))

(declare-fun c!856386 () Bool)

(assert (=> d!1614263 (= c!856386 (isEmpty!31363 (_1!34835 lt!2073957)))))

(assert (=> d!1614263 (validRegex!6102 r!12727)))

(assert (=> d!1614263 (= (matchR!6769 r!12727 (_1!34835 lt!2073957)) lt!2074156)))

(declare-fun b!5013308 () Bool)

(assert (=> b!5013308 (= e!3132001 (nullable!4693 r!12727))))

(declare-fun b!5013309 () Bool)

(assert (=> b!5013309 (= e!3132006 (= (head!10741 (_1!34835 lt!2073957)) (c!856291 r!12727)))))

(assert (= (and d!1614263 c!856386) b!5013308))

(assert (= (and d!1614263 (not c!856386)) b!5013297))

(assert (= (and d!1614263 c!856384) b!5013300))

(assert (= (and d!1614263 (not c!856384)) b!5013301))

(assert (= (and b!5013301 c!856385) b!5013305))

(assert (= (and b!5013301 (not c!856385)) b!5013303))

(assert (= (and b!5013303 (not res!2137897)) b!5013302))

(assert (= (and b!5013302 res!2137891) b!5013306))

(assert (= (and b!5013306 res!2137892) b!5013299))

(assert (= (and b!5013299 res!2137898) b!5013309))

(assert (= (and b!5013302 (not res!2137895)) b!5013304))

(assert (= (and b!5013304 res!2137896) b!5013307))

(assert (= (and b!5013307 (not res!2137893)) b!5013298))

(assert (= (and b!5013298 (not res!2137894)) b!5013296))

(assert (= (or b!5013300 b!5013306 b!5013307) bm!350092))

(declare-fun m!6048098 () Bool)

(assert (=> b!5013296 m!6048098))

(assert (=> bm!350092 m!6047796))

(declare-fun m!6048100 () Bool)

(assert (=> b!5013308 m!6048100))

(assert (=> b!5013309 m!6048098))

(assert (=> b!5013297 m!6048098))

(assert (=> b!5013297 m!6048098))

(declare-fun m!6048110 () Bool)

(assert (=> b!5013297 m!6048110))

(declare-fun m!6048114 () Bool)

(assert (=> b!5013297 m!6048114))

(assert (=> b!5013297 m!6048110))

(assert (=> b!5013297 m!6048114))

(declare-fun m!6048118 () Bool)

(assert (=> b!5013297 m!6048118))

(assert (=> b!5013299 m!6048114))

(assert (=> b!5013299 m!6048114))

(declare-fun m!6048120 () Bool)

(assert (=> b!5013299 m!6048120))

(assert (=> d!1614263 m!6047796))

(assert (=> d!1614263 m!6047742))

(assert (=> b!5013298 m!6048114))

(assert (=> b!5013298 m!6048114))

(assert (=> b!5013298 m!6048120))

(assert (=> b!5013034 d!1614263))

(declare-fun d!1614267 () Bool)

(declare-fun lt!2074161 () Int)

(assert (=> d!1614267 (>= lt!2074161 0)))

(declare-fun e!3132016 () Int)

(assert (=> d!1614267 (= lt!2074161 e!3132016)))

(declare-fun c!856389 () Bool)

(assert (=> d!1614267 (= c!856389 ((_ is Nil!57896) lt!2073954))))

(assert (=> d!1614267 (= (size!38488 lt!2073954) lt!2074161)))

(declare-fun b!5013322 () Bool)

(assert (=> b!5013322 (= e!3132016 0)))

(declare-fun b!5013323 () Bool)

(assert (=> b!5013323 (= e!3132016 (+ 1 (size!38488 (t!370388 lt!2073954))))))

(assert (= (and d!1614267 c!856389) b!5013322))

(assert (= (and d!1614267 (not c!856389)) b!5013323))

(declare-fun m!6048122 () Bool)

(assert (=> b!5013323 m!6048122))

(assert (=> b!5013024 d!1614267))

(declare-fun d!1614269 () Bool)

(assert (=> d!1614269 (= (isEmpty!31363 (_1!34835 lt!2073961)) ((_ is Nil!57896) (_1!34835 lt!2073961)))))

(assert (=> b!5013035 d!1614269))

(declare-fun d!1614273 () Bool)

(declare-fun lambda!248587 () Int)

(declare-fun forall!13373 (List!58019 Int) Bool)

(assert (=> d!1614273 (= (inv!76088 setElem!28460) (forall!13373 (exprs!3730 setElem!28460) lambda!248587))))

(declare-fun bs!1186817 () Bool)

(assert (= bs!1186817 d!1614273))

(declare-fun m!6048216 () Bool)

(assert (=> bs!1186817 m!6048216))

(assert (=> setNonEmpty!28460 d!1614273))

(declare-fun d!1614305 () Bool)

(declare-fun c!856416 () Bool)

(assert (=> d!1614305 (= c!856416 ((_ is Node!15324) (c!856292 input!5597)))))

(declare-fun e!3132079 () Bool)

(assert (=> d!1614305 (= (inv!76086 (c!856292 input!5597)) e!3132079)))

(declare-fun b!5013428 () Bool)

(declare-fun inv!76091 (Conc!15324) Bool)

(assert (=> b!5013428 (= e!3132079 (inv!76091 (c!856292 input!5597)))))

(declare-fun b!5013429 () Bool)

(declare-fun e!3132080 () Bool)

(assert (=> b!5013429 (= e!3132079 e!3132080)))

(declare-fun res!2137959 () Bool)

(assert (=> b!5013429 (= res!2137959 (not ((_ is Leaf!25435) (c!856292 input!5597))))))

(assert (=> b!5013429 (=> res!2137959 e!3132080)))

(declare-fun b!5013430 () Bool)

(declare-fun inv!76092 (Conc!15324) Bool)

(assert (=> b!5013430 (= e!3132080 (inv!76092 (c!856292 input!5597)))))

(assert (= (and d!1614305 c!856416) b!5013428))

(assert (= (and d!1614305 (not c!856416)) b!5013429))

(assert (= (and b!5013429 (not res!2137959)) b!5013430))

(declare-fun m!6048218 () Bool)

(assert (=> b!5013428 m!6048218))

(declare-fun m!6048220 () Bool)

(assert (=> b!5013430 m!6048220))

(assert (=> b!5013026 d!1614305))

(declare-fun d!1614307 () Bool)

(declare-fun e!3132087 () Bool)

(assert (=> d!1614307 e!3132087))

(declare-fun res!2137968 () Bool)

(assert (=> d!1614307 (=> res!2137968 e!3132087)))

(declare-fun lt!2074193 () Bool)

(assert (=> d!1614307 (= res!2137968 (not lt!2074193))))

(declare-fun e!3132088 () Bool)

(assert (=> d!1614307 (= lt!2074193 e!3132088)))

(declare-fun res!2137970 () Bool)

(assert (=> d!1614307 (=> res!2137970 e!3132088)))

(assert (=> d!1614307 (= res!2137970 ((_ is Nil!57896) lt!2073954))))

(assert (=> d!1614307 (= (isPrefix!5358 lt!2073954 lt!2073960) lt!2074193)))

(declare-fun b!5013442 () Bool)

(assert (=> b!5013442 (= e!3132087 (>= (size!38488 lt!2073960) (size!38488 lt!2073954)))))

(declare-fun b!5013440 () Bool)

(declare-fun res!2137971 () Bool)

(declare-fun e!3132089 () Bool)

(assert (=> b!5013440 (=> (not res!2137971) (not e!3132089))))

(assert (=> b!5013440 (= res!2137971 (= (head!10741 lt!2073954) (head!10741 lt!2073960)))))

(declare-fun b!5013441 () Bool)

(assert (=> b!5013441 (= e!3132089 (isPrefix!5358 (tail!9874 lt!2073954) (tail!9874 lt!2073960)))))

(declare-fun b!5013439 () Bool)

(assert (=> b!5013439 (= e!3132088 e!3132089)))

(declare-fun res!2137969 () Bool)

(assert (=> b!5013439 (=> (not res!2137969) (not e!3132089))))

(assert (=> b!5013439 (= res!2137969 (not ((_ is Nil!57896) lt!2073960)))))

(assert (= (and d!1614307 (not res!2137970)) b!5013439))

(assert (= (and b!5013439 res!2137969) b!5013440))

(assert (= (and b!5013440 res!2137971) b!5013441))

(assert (= (and d!1614307 (not res!2137968)) b!5013442))

(assert (=> b!5013442 m!6047772))

(assert (=> b!5013442 m!6047766))

(declare-fun m!6048222 () Bool)

(assert (=> b!5013440 m!6048222))

(declare-fun m!6048224 () Bool)

(assert (=> b!5013440 m!6048224))

(declare-fun m!6048226 () Bool)

(assert (=> b!5013441 m!6048226))

(declare-fun m!6048228 () Bool)

(assert (=> b!5013441 m!6048228))

(assert (=> b!5013441 m!6048226))

(assert (=> b!5013441 m!6048228))

(declare-fun m!6048230 () Bool)

(assert (=> b!5013441 m!6048230))

(assert (=> b!5013027 d!1614307))

(declare-fun d!1614309 () Bool)

(declare-fun lt!2074196 () Bool)

(assert (=> d!1614309 (= lt!2074196 (isEmpty!31363 (list!18642 (_1!34836 lt!2073951))))))

(declare-fun isEmpty!31366 (Conc!15324) Bool)

(assert (=> d!1614309 (= lt!2074196 (isEmpty!31366 (c!856292 (_1!34836 lt!2073951))))))

(assert (=> d!1614309 (= (isEmpty!31364 (_1!34836 lt!2073951)) lt!2074196)))

(declare-fun bs!1186818 () Bool)

(assert (= bs!1186818 d!1614309))

(assert (=> bs!1186818 m!6047834))

(assert (=> bs!1186818 m!6047834))

(declare-fun m!6048232 () Bool)

(assert (=> bs!1186818 m!6048232))

(declare-fun m!6048234 () Bool)

(assert (=> bs!1186818 m!6048234))

(assert (=> b!5013037 d!1614309))

(declare-fun d!1614311 () Bool)

(assert (=> d!1614311 (isPrefix!5358 (_1!34835 lt!2073961) (++!12653 (_1!34835 lt!2073961) (_2!34835 lt!2073961)))))

(declare-fun lt!2074199 () Unit!149107)

(declare-fun choose!37073 (List!58020 List!58020) Unit!149107)

(assert (=> d!1614311 (= lt!2074199 (choose!37073 (_1!34835 lt!2073961) (_2!34835 lt!2073961)))))

(assert (=> d!1614311 (= (lemmaConcatTwoListThenFirstIsPrefix!3456 (_1!34835 lt!2073961) (_2!34835 lt!2073961)) lt!2074199)))

(declare-fun bs!1186819 () Bool)

(assert (= bs!1186819 d!1614311))

(assert (=> bs!1186819 m!6047836))

(assert (=> bs!1186819 m!6047836))

(declare-fun m!6048236 () Bool)

(assert (=> bs!1186819 m!6048236))

(declare-fun m!6048238 () Bool)

(assert (=> bs!1186819 m!6048238))

(assert (=> b!5013018 d!1614311))

(declare-fun d!1614313 () Bool)

(declare-fun e!3132090 () Bool)

(assert (=> d!1614313 e!3132090))

(declare-fun res!2137972 () Bool)

(assert (=> d!1614313 (=> res!2137972 e!3132090)))

(declare-fun lt!2074200 () Bool)

(assert (=> d!1614313 (= res!2137972 (not lt!2074200))))

(declare-fun e!3132091 () Bool)

(assert (=> d!1614313 (= lt!2074200 e!3132091)))

(declare-fun res!2137974 () Bool)

(assert (=> d!1614313 (=> res!2137974 e!3132091)))

(assert (=> d!1614313 (= res!2137974 ((_ is Nil!57896) (_1!34835 lt!2073961)))))

(assert (=> d!1614313 (= (isPrefix!5358 (_1!34835 lt!2073961) lt!2073955) lt!2074200)))

(declare-fun b!5013446 () Bool)

(assert (=> b!5013446 (= e!3132090 (>= (size!38488 lt!2073955) (size!38488 (_1!34835 lt!2073961))))))

(declare-fun b!5013444 () Bool)

(declare-fun res!2137975 () Bool)

(declare-fun e!3132092 () Bool)

(assert (=> b!5013444 (=> (not res!2137975) (not e!3132092))))

(assert (=> b!5013444 (= res!2137975 (= (head!10741 (_1!34835 lt!2073961)) (head!10741 lt!2073955)))))

(declare-fun b!5013445 () Bool)

(assert (=> b!5013445 (= e!3132092 (isPrefix!5358 (tail!9874 (_1!34835 lt!2073961)) (tail!9874 lt!2073955)))))

(declare-fun b!5013443 () Bool)

(assert (=> b!5013443 (= e!3132091 e!3132092)))

(declare-fun res!2137973 () Bool)

(assert (=> b!5013443 (=> (not res!2137973) (not e!3132092))))

(assert (=> b!5013443 (= res!2137973 (not ((_ is Nil!57896) lt!2073955)))))

(assert (= (and d!1614313 (not res!2137974)) b!5013443))

(assert (= (and b!5013443 res!2137973) b!5013444))

(assert (= (and b!5013444 res!2137975) b!5013445))

(assert (= (and d!1614313 (not res!2137972)) b!5013446))

(declare-fun m!6048240 () Bool)

(assert (=> b!5013446 m!6048240))

(assert (=> b!5013446 m!6047748))

(declare-fun m!6048242 () Bool)

(assert (=> b!5013444 m!6048242))

(declare-fun m!6048244 () Bool)

(assert (=> b!5013444 m!6048244))

(declare-fun m!6048246 () Bool)

(assert (=> b!5013445 m!6048246))

(declare-fun m!6048248 () Bool)

(assert (=> b!5013445 m!6048248))

(assert (=> b!5013445 m!6048246))

(assert (=> b!5013445 m!6048248))

(declare-fun m!6048250 () Bool)

(assert (=> b!5013445 m!6048250))

(assert (=> b!5013018 d!1614313))

(declare-fun d!1614315 () Bool)

(assert (=> d!1614315 (isPrefix!5358 (take!664 lt!2073953 lt!2073966) lt!2073953)))

(declare-fun lt!2074203 () Unit!149107)

(declare-fun choose!37074 (List!58020 Int) Unit!149107)

(assert (=> d!1614315 (= lt!2074203 (choose!37074 lt!2073953 lt!2073966))))

(assert (=> d!1614315 (>= lt!2073966 0)))

(assert (=> d!1614315 (= (lemmaTakeIsPrefix!158 lt!2073953 lt!2073966) lt!2074203)))

(declare-fun bs!1186820 () Bool)

(assert (= bs!1186820 d!1614315))

(assert (=> bs!1186820 m!6047776))

(assert (=> bs!1186820 m!6047776))

(assert (=> bs!1186820 m!6047778))

(declare-fun m!6048252 () Bool)

(assert (=> bs!1186820 m!6048252))

(assert (=> b!5013018 d!1614315))

(declare-fun d!1614317 () Bool)

(declare-fun e!3132097 () Bool)

(assert (=> d!1614317 e!3132097))

(declare-fun res!2137980 () Bool)

(assert (=> d!1614317 (=> res!2137980 e!3132097)))

(assert (=> d!1614317 (= res!2137980 (= (findLongestMatchInnerZipperFastV2!145 z!4183 lt!2073966 totalInput!1012 (size!38489 totalInput!1012)) 0))))

(declare-fun lt!2074206 () Unit!149107)

(declare-fun choose!37075 ((InoxSet Context!6460) Int BalanceConc!30078) Unit!149107)

(assert (=> d!1614317 (= lt!2074206 (choose!37075 z!4183 lt!2073966 totalInput!1012))))

(declare-fun e!3132098 () Bool)

(assert (=> d!1614317 e!3132098))

(declare-fun res!2137981 () Bool)

(assert (=> d!1614317 (=> (not res!2137981) (not e!3132098))))

(assert (=> d!1614317 (= res!2137981 (>= lt!2073966 0))))

(assert (=> d!1614317 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!64 z!4183 lt!2073966 totalInput!1012) lt!2074206)))

(declare-fun b!5013451 () Bool)

(assert (=> b!5013451 (= e!3132098 (<= lt!2073966 (size!38489 totalInput!1012)))))

(declare-fun b!5013452 () Bool)

(assert (=> b!5013452 (= e!3132097 (matchZipper!573 z!4183 (take!664 (drop!2468 (list!18642 totalInput!1012) lt!2073966) (findLongestMatchInnerZipperFastV2!145 z!4183 lt!2073966 totalInput!1012 (size!38489 totalInput!1012)))))))

(assert (= (and d!1614317 res!2137981) b!5013451))

(assert (= (and d!1614317 (not res!2137980)) b!5013452))

(assert (=> d!1614317 m!6047828))

(assert (=> d!1614317 m!6047828))

(declare-fun m!6048254 () Bool)

(assert (=> d!1614317 m!6048254))

(declare-fun m!6048256 () Bool)

(assert (=> d!1614317 m!6048256))

(assert (=> b!5013451 m!6047828))

(assert (=> b!5013452 m!6047806))

(assert (=> b!5013452 m!6047828))

(assert (=> b!5013452 m!6047828))

(assert (=> b!5013452 m!6048254))

(declare-fun m!6048258 () Bool)

(assert (=> b!5013452 m!6048258))

(declare-fun m!6048260 () Bool)

(assert (=> b!5013452 m!6048260))

(assert (=> b!5013452 m!6047806))

(declare-fun m!6048262 () Bool)

(assert (=> b!5013452 m!6048262))

(assert (=> b!5013452 m!6048262))

(assert (=> b!5013452 m!6048254))

(assert (=> b!5013452 m!6048258))

(assert (=> b!5013018 d!1614317))

(declare-fun d!1614319 () Bool)

(declare-fun c!856417 () Bool)

(assert (=> d!1614319 (= c!856417 (isEmpty!31363 lt!2073954))))

(declare-fun e!3132099 () Bool)

(assert (=> d!1614319 (= (matchZipper!573 z!4183 lt!2073954) e!3132099)))

(declare-fun b!5013453 () Bool)

(assert (=> b!5013453 (= e!3132099 (nullableZipper!888 z!4183))))

(declare-fun b!5013454 () Bool)

(assert (=> b!5013454 (= e!3132099 (matchZipper!573 (derivationStepZipper!637 z!4183 (head!10741 lt!2073954)) (tail!9874 lt!2073954)))))

(assert (= (and d!1614319 c!856417) b!5013453))

(assert (= (and d!1614319 (not c!856417)) b!5013454))

(declare-fun m!6048264 () Bool)

(assert (=> d!1614319 m!6048264))

(assert (=> b!5013453 m!6048016))

(assert (=> b!5013454 m!6048222))

(assert (=> b!5013454 m!6048222))

(declare-fun m!6048266 () Bool)

(assert (=> b!5013454 m!6048266))

(assert (=> b!5013454 m!6048226))

(assert (=> b!5013454 m!6048266))

(assert (=> b!5013454 m!6048226))

(declare-fun m!6048268 () Bool)

(assert (=> b!5013454 m!6048268))

(assert (=> b!5013018 d!1614319))

(declare-fun b!5013455 () Bool)

(declare-fun e!3132103 () Int)

(assert (=> b!5013455 (= e!3132103 0)))

(declare-fun d!1614321 () Bool)

(declare-fun e!3132102 () Bool)

(assert (=> d!1614321 e!3132102))

(declare-fun res!2137982 () Bool)

(assert (=> d!1614321 (=> (not res!2137982) (not e!3132102))))

(declare-fun lt!2074207 () List!58020)

(assert (=> d!1614321 (= res!2137982 (= ((_ map implies) (content!10259 lt!2074207) (content!10259 lt!2073953)) ((as const (InoxSet C!27860)) true)))))

(declare-fun e!3132101 () List!58020)

(assert (=> d!1614321 (= lt!2074207 e!3132101)))

(declare-fun c!856420 () Bool)

(assert (=> d!1614321 (= c!856420 (or ((_ is Nil!57896) lt!2073953) (<= lt!2073966 0)))))

(assert (=> d!1614321 (= (take!664 lt!2073953 lt!2073966) lt!2074207)))

(declare-fun b!5013456 () Bool)

(assert (=> b!5013456 (= e!3132102 (= (size!38488 lt!2074207) e!3132103))))

(declare-fun c!856419 () Bool)

(assert (=> b!5013456 (= c!856419 (<= lt!2073966 0))))

(declare-fun b!5013457 () Bool)

(declare-fun e!3132100 () Int)

(assert (=> b!5013457 (= e!3132103 e!3132100)))

(declare-fun c!856418 () Bool)

(assert (=> b!5013457 (= c!856418 (>= lt!2073966 (size!38488 lt!2073953)))))

(declare-fun b!5013458 () Bool)

(assert (=> b!5013458 (= e!3132100 lt!2073966)))

(declare-fun b!5013459 () Bool)

(assert (=> b!5013459 (= e!3132100 (size!38488 lt!2073953))))

(declare-fun b!5013460 () Bool)

(assert (=> b!5013460 (= e!3132101 (Cons!57896 (h!64344 lt!2073953) (take!664 (t!370388 lt!2073953) (- lt!2073966 1))))))

(declare-fun b!5013461 () Bool)

(assert (=> b!5013461 (= e!3132101 Nil!57896)))

(assert (= (and d!1614321 c!856420) b!5013461))

(assert (= (and d!1614321 (not c!856420)) b!5013460))

(assert (= (and d!1614321 res!2137982) b!5013456))

(assert (= (and b!5013456 c!856419) b!5013455))

(assert (= (and b!5013456 (not c!856419)) b!5013457))

(assert (= (and b!5013457 c!856418) b!5013459))

(assert (= (and b!5013457 (not c!856418)) b!5013458))

(declare-fun m!6048270 () Bool)

(assert (=> b!5013460 m!6048270))

(declare-fun m!6048272 () Bool)

(assert (=> d!1614321 m!6048272))

(assert (=> d!1614321 m!6048038))

(assert (=> b!5013457 m!6048042))

(declare-fun m!6048274 () Bool)

(assert (=> b!5013456 m!6048274))

(assert (=> b!5013459 m!6048042))

(assert (=> b!5013018 d!1614321))

(declare-fun b!5013512 () Bool)

(declare-fun e!3132136 () Bool)

(assert (=> b!5013512 (= e!3132136 (<= lt!2073966 (size!38489 totalInput!1012)))))

(declare-fun b!5013513 () Bool)

(declare-fun e!3132134 () Int)

(declare-fun lt!2074224 () Int)

(assert (=> b!5013513 (= e!3132134 (+ 1 lt!2074224))))

(declare-fun b!5013515 () Bool)

(declare-fun e!3132132 () Bool)

(declare-fun lostCauseZipper!834 ((InoxSet Context!6460)) Bool)

(assert (=> b!5013515 (= e!3132132 (lostCauseZipper!834 z!4183))))

(declare-fun b!5013516 () Bool)

(declare-fun e!3132135 () Int)

(assert (=> b!5013516 (= e!3132135 0)))

(declare-fun b!5013517 () Bool)

(assert (=> b!5013517 (= e!3132135 1)))

(declare-fun b!5013518 () Bool)

(declare-fun e!3132133 () Int)

(assert (=> b!5013518 (= e!3132133 e!3132134)))

(declare-fun lt!2074223 () (InoxSet Context!6460))

(declare-fun apply!14004 (BalanceConc!30078 Int) C!27860)

(assert (=> b!5013518 (= lt!2074223 (derivationStepZipper!637 z!4183 (apply!14004 totalInput!1012 lt!2073966)))))

(assert (=> b!5013518 (= lt!2074224 (findLongestMatchInnerZipperFastV2!145 lt!2074223 (+ lt!2073966 1) totalInput!1012 lt!2073962))))

(declare-fun c!856435 () Bool)

(assert (=> b!5013518 (= c!856435 (> lt!2074224 0))))

(declare-fun b!5013519 () Bool)

(declare-fun c!856436 () Bool)

(assert (=> b!5013519 (= c!856436 (nullableZipper!888 lt!2074223))))

(assert (=> b!5013519 (= e!3132134 e!3132135)))

(declare-fun d!1614323 () Bool)

(declare-fun lt!2074222 () Int)

(assert (=> d!1614323 (and (>= lt!2074222 0) (<= lt!2074222 (- lt!2073962 lt!2073966)))))

(assert (=> d!1614323 (= lt!2074222 e!3132133)))

(declare-fun c!856434 () Bool)

(assert (=> d!1614323 (= c!856434 e!3132132)))

(declare-fun res!2138007 () Bool)

(assert (=> d!1614323 (=> res!2138007 e!3132132)))

(assert (=> d!1614323 (= res!2138007 (= lt!2073966 lt!2073962))))

(assert (=> d!1614323 e!3132136))

(declare-fun res!2138008 () Bool)

(assert (=> d!1614323 (=> (not res!2138008) (not e!3132136))))

(assert (=> d!1614323 (= res!2138008 (>= lt!2073966 0))))

(assert (=> d!1614323 (= (findLongestMatchInnerZipperFastV2!145 z!4183 lt!2073966 totalInput!1012 lt!2073962) lt!2074222)))

(declare-fun b!5013514 () Bool)

(assert (=> b!5013514 (= e!3132133 0)))

(assert (= (and d!1614323 res!2138008) b!5013512))

(assert (= (and d!1614323 (not res!2138007)) b!5013515))

(assert (= (and d!1614323 c!856434) b!5013514))

(assert (= (and d!1614323 (not c!856434)) b!5013518))

(assert (= (and b!5013518 c!856435) b!5013513))

(assert (= (and b!5013518 (not c!856435)) b!5013519))

(assert (= (and b!5013519 c!856436) b!5013517))

(assert (= (and b!5013519 (not c!856436)) b!5013516))

(assert (=> b!5013512 m!6047828))

(declare-fun m!6048300 () Bool)

(assert (=> b!5013515 m!6048300))

(declare-fun m!6048302 () Bool)

(assert (=> b!5013518 m!6048302))

(assert (=> b!5013518 m!6048302))

(declare-fun m!6048304 () Bool)

(assert (=> b!5013518 m!6048304))

(declare-fun m!6048306 () Bool)

(assert (=> b!5013518 m!6048306))

(declare-fun m!6048308 () Bool)

(assert (=> b!5013519 m!6048308))

(assert (=> b!5013018 d!1614323))

(declare-fun d!1614339 () Bool)

(assert (=> d!1614339 (isPrefix!5358 lt!2073954 (++!12653 lt!2073954 lt!2073968))))

(declare-fun lt!2074225 () Unit!149107)

(assert (=> d!1614339 (= lt!2074225 (choose!37073 lt!2073954 lt!2073968))))

(assert (=> d!1614339 (= (lemmaConcatTwoListThenFirstIsPrefix!3456 lt!2073954 lt!2073968) lt!2074225)))

(declare-fun bs!1186824 () Bool)

(assert (= bs!1186824 d!1614339))

(assert (=> bs!1186824 m!6047824))

(assert (=> bs!1186824 m!6047824))

(declare-fun m!6048312 () Bool)

(assert (=> bs!1186824 m!6048312))

(declare-fun m!6048316 () Bool)

(assert (=> bs!1186824 m!6048316))

(assert (=> b!5013018 d!1614339))

(declare-fun b!5013637 () Bool)

(declare-fun e!3132202 () Bool)

(declare-fun lt!2074303 () tuple2!63064)

(assert (=> b!5013637 (= e!3132202 (>= (size!38488 (_1!34835 lt!2074303)) (size!38488 Nil!57896)))))

(declare-fun b!5013638 () Bool)

(declare-fun e!3132201 () Unit!149107)

(declare-fun Unit!149112 () Unit!149107)

(assert (=> b!5013638 (= e!3132201 Unit!149112)))

(declare-fun b!5013639 () Bool)

(declare-fun e!3132208 () tuple2!63064)

(declare-fun call!350129 () tuple2!63064)

(assert (=> b!5013639 (= e!3132208 call!350129)))

(declare-fun b!5013640 () Bool)

(declare-fun c!856461 () Bool)

(declare-fun call!350130 () Bool)

(assert (=> b!5013640 (= c!856461 call!350130)))

(declare-fun lt!2074292 () Unit!149107)

(declare-fun lt!2074316 () Unit!149107)

(assert (=> b!5013640 (= lt!2074292 lt!2074316)))

(assert (=> b!5013640 (= lt!2073960 Nil!57896)))

(declare-fun call!350133 () Unit!149107)

(assert (=> b!5013640 (= lt!2074316 call!350133)))

(declare-fun lt!2074290 () Unit!149107)

(declare-fun lt!2074314 () Unit!149107)

(assert (=> b!5013640 (= lt!2074290 lt!2074314)))

(declare-fun call!350128 () Bool)

(assert (=> b!5013640 call!350128))

(declare-fun call!350132 () Unit!149107)

(assert (=> b!5013640 (= lt!2074314 call!350132)))

(declare-fun e!3132204 () tuple2!63064)

(declare-fun e!3132203 () tuple2!63064)

(assert (=> b!5013640 (= e!3132204 e!3132203)))

(declare-fun bm!350123 () Bool)

(declare-fun call!350131 () List!58020)

(assert (=> bm!350123 (= call!350131 (tail!9874 lt!2073960))))

(declare-fun bm!350124 () Bool)

(assert (=> bm!350124 (= call!350130 (nullable!4693 r!12727))))

(declare-fun bm!350125 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1279 (List!58020 List!58020 List!58020) Unit!149107)

(assert (=> bm!350125 (= call!350133 (lemmaIsPrefixSameLengthThenSameList!1279 lt!2073960 Nil!57896 lt!2073960))))

(declare-fun bm!350126 () Bool)

(declare-fun call!350134 () Regex!13805)

(declare-fun call!350135 () C!27860)

(assert (=> bm!350126 (= call!350134 (derivativeStep!3983 r!12727 call!350135))))

(declare-fun b!5013641 () Bool)

(assert (=> b!5013641 (= e!3132203 (tuple2!63065 Nil!57896 lt!2073960))))

(declare-fun bm!350127 () Bool)

(assert (=> bm!350127 (= call!350128 (isPrefix!5358 lt!2073960 lt!2073960))))

(declare-fun bm!350128 () Bool)

(declare-fun lemmaIsPrefixRefl!3631 (List!58020 List!58020) Unit!149107)

(assert (=> bm!350128 (= call!350132 (lemmaIsPrefixRefl!3631 lt!2073960 lt!2073960))))

(declare-fun b!5013642 () Bool)

(declare-fun e!3132207 () tuple2!63064)

(declare-fun lt!2074307 () tuple2!63064)

(assert (=> b!5013642 (= e!3132207 lt!2074307)))

(declare-fun b!5013643 () Bool)

(declare-fun e!3132206 () Bool)

(assert (=> b!5013643 (= e!3132206 e!3132202)))

(declare-fun res!2138032 () Bool)

(assert (=> b!5013643 (=> res!2138032 e!3132202)))

(assert (=> b!5013643 (= res!2138032 (isEmpty!31363 (_1!34835 lt!2074303)))))

(declare-fun d!1614343 () Bool)

(assert (=> d!1614343 e!3132206))

(declare-fun res!2138033 () Bool)

(assert (=> d!1614343 (=> (not res!2138033) (not e!3132206))))

(assert (=> d!1614343 (= res!2138033 (= (++!12653 (_1!34835 lt!2074303) (_2!34835 lt!2074303)) lt!2073960))))

(declare-fun e!3132205 () tuple2!63064)

(assert (=> d!1614343 (= lt!2074303 e!3132205)))

(declare-fun c!856462 () Bool)

(declare-fun lostCause!1192 (Regex!13805) Bool)

(assert (=> d!1614343 (= c!856462 (lostCause!1192 r!12727))))

(declare-fun lt!2074294 () Unit!149107)

(declare-fun Unit!149113 () Unit!149107)

(assert (=> d!1614343 (= lt!2074294 Unit!149113)))

(declare-fun getSuffix!3148 (List!58020 List!58020) List!58020)

(assert (=> d!1614343 (= (getSuffix!3148 lt!2073960 Nil!57896) lt!2073960)))

(declare-fun lt!2074298 () Unit!149107)

(declare-fun lt!2074308 () Unit!149107)

(assert (=> d!1614343 (= lt!2074298 lt!2074308)))

(declare-fun lt!2074311 () List!58020)

(assert (=> d!1614343 (= lt!2073960 lt!2074311)))

(declare-fun lemmaSamePrefixThenSameSuffix!2562 (List!58020 List!58020 List!58020 List!58020 List!58020) Unit!149107)

(assert (=> d!1614343 (= lt!2074308 (lemmaSamePrefixThenSameSuffix!2562 Nil!57896 lt!2073960 Nil!57896 lt!2074311 lt!2073960))))

(assert (=> d!1614343 (= lt!2074311 (getSuffix!3148 lt!2073960 Nil!57896))))

(declare-fun lt!2074301 () Unit!149107)

(declare-fun lt!2074296 () Unit!149107)

(assert (=> d!1614343 (= lt!2074301 lt!2074296)))

(assert (=> d!1614343 (isPrefix!5358 Nil!57896 (++!12653 Nil!57896 lt!2073960))))

(assert (=> d!1614343 (= lt!2074296 (lemmaConcatTwoListThenFirstIsPrefix!3456 Nil!57896 lt!2073960))))

(assert (=> d!1614343 (validRegex!6102 r!12727)))

(assert (=> d!1614343 (= (findLongestMatchInner!1994 r!12727 Nil!57896 (size!38488 Nil!57896) lt!2073960 lt!2073960 (size!38488 lt!2073960)) lt!2074303)))

(declare-fun bm!350129 () Bool)

(assert (=> bm!350129 (= call!350135 (head!10741 lt!2073960))))

(declare-fun b!5013644 () Bool)

(assert (=> b!5013644 (= e!3132203 (tuple2!63065 Nil!57896 Nil!57896))))

(declare-fun b!5013645 () Bool)

(assert (=> b!5013645 (= e!3132208 e!3132207)))

(assert (=> b!5013645 (= lt!2074307 call!350129)))

(declare-fun c!856458 () Bool)

(assert (=> b!5013645 (= c!856458 (isEmpty!31363 (_1!34835 lt!2074307)))))

(declare-fun b!5013646 () Bool)

(declare-fun c!856459 () Bool)

(assert (=> b!5013646 (= c!856459 call!350130)))

(declare-fun lt!2074295 () Unit!149107)

(declare-fun lt!2074299 () Unit!149107)

(assert (=> b!5013646 (= lt!2074295 lt!2074299)))

(declare-fun lt!2074306 () C!27860)

(declare-fun lt!2074310 () List!58020)

(assert (=> b!5013646 (= (++!12653 (++!12653 Nil!57896 (Cons!57896 lt!2074306 Nil!57896)) lt!2074310) lt!2073960)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1504 (List!58020 C!27860 List!58020 List!58020) Unit!149107)

(assert (=> b!5013646 (= lt!2074299 (lemmaMoveElementToOtherListKeepsConcatEq!1504 Nil!57896 lt!2074306 lt!2074310 lt!2073960))))

(assert (=> b!5013646 (= lt!2074310 (tail!9874 lt!2073960))))

(assert (=> b!5013646 (= lt!2074306 (head!10741 lt!2073960))))

(declare-fun lt!2074313 () Unit!149107)

(declare-fun lt!2074289 () Unit!149107)

(assert (=> b!5013646 (= lt!2074313 lt!2074289)))

(assert (=> b!5013646 (isPrefix!5358 (++!12653 Nil!57896 (Cons!57896 (head!10741 (getSuffix!3148 lt!2073960 Nil!57896)) Nil!57896)) lt!2073960)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!893 (List!58020 List!58020) Unit!149107)

(assert (=> b!5013646 (= lt!2074289 (lemmaAddHeadSuffixToPrefixStillPrefix!893 Nil!57896 lt!2073960))))

(declare-fun lt!2074315 () Unit!149107)

(declare-fun lt!2074304 () Unit!149107)

(assert (=> b!5013646 (= lt!2074315 lt!2074304)))

(assert (=> b!5013646 (= lt!2074304 (lemmaAddHeadSuffixToPrefixStillPrefix!893 Nil!57896 lt!2073960))))

(declare-fun lt!2074309 () List!58020)

(assert (=> b!5013646 (= lt!2074309 (++!12653 Nil!57896 (Cons!57896 (head!10741 lt!2073960) Nil!57896)))))

(declare-fun lt!2074302 () Unit!149107)

(assert (=> b!5013646 (= lt!2074302 e!3132201)))

(declare-fun c!856457 () Bool)

(assert (=> b!5013646 (= c!856457 (= (size!38488 Nil!57896) (size!38488 lt!2073960)))))

(declare-fun lt!2074297 () Unit!149107)

(declare-fun lt!2074291 () Unit!149107)

(assert (=> b!5013646 (= lt!2074297 lt!2074291)))

(assert (=> b!5013646 (<= (size!38488 Nil!57896) (size!38488 lt!2073960))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!819 (List!58020 List!58020) Unit!149107)

(assert (=> b!5013646 (= lt!2074291 (lemmaIsPrefixThenSmallerEqSize!819 Nil!57896 lt!2073960))))

(assert (=> b!5013646 (= e!3132204 e!3132208)))

(declare-fun b!5013647 () Bool)

(assert (=> b!5013647 (= e!3132205 (tuple2!63065 Nil!57896 lt!2073960))))

(declare-fun b!5013648 () Bool)

(assert (=> b!5013648 (= e!3132205 e!3132204)))

(declare-fun c!856460 () Bool)

(assert (=> b!5013648 (= c!856460 (= (size!38488 Nil!57896) (size!38488 lt!2073960)))))

(declare-fun bm!350130 () Bool)

(assert (=> bm!350130 (= call!350129 (findLongestMatchInner!1994 call!350134 lt!2074309 (+ (size!38488 Nil!57896) 1) call!350131 lt!2073960 (size!38488 lt!2073960)))))

(declare-fun b!5013649 () Bool)

(assert (=> b!5013649 (= e!3132207 (tuple2!63065 Nil!57896 lt!2073960))))

(declare-fun b!5013650 () Bool)

(declare-fun Unit!149114 () Unit!149107)

(assert (=> b!5013650 (= e!3132201 Unit!149114)))

(declare-fun lt!2074300 () Unit!149107)

(assert (=> b!5013650 (= lt!2074300 call!350132)))

(assert (=> b!5013650 call!350128))

(declare-fun lt!2074312 () Unit!149107)

(assert (=> b!5013650 (= lt!2074312 lt!2074300)))

(declare-fun lt!2074293 () Unit!149107)

(assert (=> b!5013650 (= lt!2074293 call!350133)))

(assert (=> b!5013650 (= lt!2073960 Nil!57896)))

(declare-fun lt!2074305 () Unit!149107)

(assert (=> b!5013650 (= lt!2074305 lt!2074293)))

(assert (=> b!5013650 false))

(assert (= (and d!1614343 c!856462) b!5013647))

(assert (= (and d!1614343 (not c!856462)) b!5013648))

(assert (= (and b!5013648 c!856460) b!5013640))

(assert (= (and b!5013648 (not c!856460)) b!5013646))

(assert (= (and b!5013640 c!856461) b!5013644))

(assert (= (and b!5013640 (not c!856461)) b!5013641))

(assert (= (and b!5013646 c!856457) b!5013650))

(assert (= (and b!5013646 (not c!856457)) b!5013638))

(assert (= (and b!5013646 c!856459) b!5013645))

(assert (= (and b!5013646 (not c!856459)) b!5013639))

(assert (= (and b!5013645 c!856458) b!5013649))

(assert (= (and b!5013645 (not c!856458)) b!5013642))

(assert (= (or b!5013645 b!5013639) bm!350129))

(assert (= (or b!5013645 b!5013639) bm!350123))

(assert (= (or b!5013645 b!5013639) bm!350126))

(assert (= (or b!5013645 b!5013639) bm!350130))

(assert (= (or b!5013640 b!5013646) bm!350124))

(assert (= (or b!5013640 b!5013650) bm!350127))

(assert (= (or b!5013640 b!5013650) bm!350125))

(assert (= (or b!5013640 b!5013650) bm!350128))

(assert (= (and d!1614343 res!2138033) b!5013643))

(assert (= (and b!5013643 (not res!2138032)) b!5013637))

(assert (=> bm!350123 m!6048228))

(assert (=> bm!350130 m!6047772))

(declare-fun m!6048360 () Bool)

(assert (=> bm!350130 m!6048360))

(assert (=> bm!350129 m!6048224))

(declare-fun m!6048362 () Bool)

(assert (=> bm!350128 m!6048362))

(declare-fun m!6048364 () Bool)

(assert (=> bm!350127 m!6048364))

(declare-fun m!6048366 () Bool)

(assert (=> b!5013645 m!6048366))

(assert (=> bm!350124 m!6048100))

(declare-fun m!6048368 () Bool)

(assert (=> d!1614343 m!6048368))

(declare-fun m!6048370 () Bool)

(assert (=> d!1614343 m!6048370))

(declare-fun m!6048372 () Bool)

(assert (=> d!1614343 m!6048372))

(declare-fun m!6048374 () Bool)

(assert (=> d!1614343 m!6048374))

(declare-fun m!6048376 () Bool)

(assert (=> d!1614343 m!6048376))

(assert (=> d!1614343 m!6048368))

(declare-fun m!6048378 () Bool)

(assert (=> d!1614343 m!6048378))

(declare-fun m!6048380 () Bool)

(assert (=> d!1614343 m!6048380))

(assert (=> d!1614343 m!6047742))

(assert (=> b!5013646 m!6047772))

(declare-fun m!6048382 () Bool)

(assert (=> b!5013646 m!6048382))

(declare-fun m!6048384 () Bool)

(assert (=> b!5013646 m!6048384))

(assert (=> b!5013646 m!6048224))

(declare-fun m!6048386 () Bool)

(assert (=> b!5013646 m!6048386))

(declare-fun m!6048388 () Bool)

(assert (=> b!5013646 m!6048388))

(assert (=> b!5013646 m!6048228))

(declare-fun m!6048390 () Bool)

(assert (=> b!5013646 m!6048390))

(declare-fun m!6048392 () Bool)

(assert (=> b!5013646 m!6048392))

(assert (=> b!5013646 m!6048378))

(declare-fun m!6048394 () Bool)

(assert (=> b!5013646 m!6048394))

(assert (=> b!5013646 m!6047770))

(assert (=> b!5013646 m!6048378))

(assert (=> b!5013646 m!6048390))

(declare-fun m!6048396 () Bool)

(assert (=> b!5013646 m!6048396))

(assert (=> b!5013646 m!6048396))

(declare-fun m!6048398 () Bool)

(assert (=> b!5013646 m!6048398))

(declare-fun m!6048400 () Bool)

(assert (=> bm!350125 m!6048400))

(declare-fun m!6048402 () Bool)

(assert (=> bm!350126 m!6048402))

(declare-fun m!6048404 () Bool)

(assert (=> b!5013637 m!6048404))

(assert (=> b!5013637 m!6047770))

(declare-fun m!6048406 () Bool)

(assert (=> b!5013643 m!6048406))

(assert (=> b!5013018 d!1614343))

(declare-fun d!1614357 () Bool)

(declare-fun lt!2074317 () Int)

(assert (=> d!1614357 (>= lt!2074317 0)))

(declare-fun e!3132209 () Int)

(assert (=> d!1614357 (= lt!2074317 e!3132209)))

(declare-fun c!856463 () Bool)

(assert (=> d!1614357 (= c!856463 ((_ is Nil!57896) Nil!57896))))

(assert (=> d!1614357 (= (size!38488 Nil!57896) lt!2074317)))

(declare-fun b!5013651 () Bool)

(assert (=> b!5013651 (= e!3132209 0)))

(declare-fun b!5013652 () Bool)

(assert (=> b!5013652 (= e!3132209 (+ 1 (size!38488 (t!370388 Nil!57896))))))

(assert (= (and d!1614357 c!856463) b!5013651))

(assert (= (and d!1614357 (not c!856463)) b!5013652))

(declare-fun m!6048408 () Bool)

(assert (=> b!5013652 m!6048408))

(assert (=> b!5013018 d!1614357))

(declare-fun d!1614359 () Bool)

(declare-fun lt!2074318 () Int)

(assert (=> d!1614359 (>= lt!2074318 0)))

(declare-fun e!3132210 () Int)

(assert (=> d!1614359 (= lt!2074318 e!3132210)))

(declare-fun c!856464 () Bool)

(assert (=> d!1614359 (= c!856464 ((_ is Nil!57896) lt!2073960))))

(assert (=> d!1614359 (= (size!38488 lt!2073960) lt!2074318)))

(declare-fun b!5013653 () Bool)

(assert (=> b!5013653 (= e!3132210 0)))

(declare-fun b!5013654 () Bool)

(assert (=> b!5013654 (= e!3132210 (+ 1 (size!38488 (t!370388 lt!2073960))))))

(assert (= (and d!1614359 c!856464) b!5013653))

(assert (= (and d!1614359 (not c!856464)) b!5013654))

(declare-fun m!6048410 () Bool)

(assert (=> b!5013654 m!6048410))

(assert (=> b!5013018 d!1614359))

(declare-fun d!1614361 () Bool)

(declare-fun e!3132211 () Bool)

(assert (=> d!1614361 e!3132211))

(declare-fun res!2138034 () Bool)

(assert (=> d!1614361 (=> res!2138034 e!3132211)))

(declare-fun lt!2074319 () Bool)

(assert (=> d!1614361 (= res!2138034 (not lt!2074319))))

(declare-fun e!3132212 () Bool)

(assert (=> d!1614361 (= lt!2074319 e!3132212)))

(declare-fun res!2138036 () Bool)

(assert (=> d!1614361 (=> res!2138036 e!3132212)))

(assert (=> d!1614361 (= res!2138036 ((_ is Nil!57896) (take!664 lt!2073953 lt!2073966)))))

(assert (=> d!1614361 (= (isPrefix!5358 (take!664 lt!2073953 lt!2073966) lt!2073953) lt!2074319)))

(declare-fun b!5013658 () Bool)

(assert (=> b!5013658 (= e!3132211 (>= (size!38488 lt!2073953) (size!38488 (take!664 lt!2073953 lt!2073966))))))

(declare-fun b!5013656 () Bool)

(declare-fun res!2138037 () Bool)

(declare-fun e!3132213 () Bool)

(assert (=> b!5013656 (=> (not res!2138037) (not e!3132213))))

(assert (=> b!5013656 (= res!2138037 (= (head!10741 (take!664 lt!2073953 lt!2073966)) (head!10741 lt!2073953)))))

(declare-fun b!5013657 () Bool)

(assert (=> b!5013657 (= e!3132213 (isPrefix!5358 (tail!9874 (take!664 lt!2073953 lt!2073966)) (tail!9874 lt!2073953)))))

(declare-fun b!5013655 () Bool)

(assert (=> b!5013655 (= e!3132212 e!3132213)))

(declare-fun res!2138035 () Bool)

(assert (=> b!5013655 (=> (not res!2138035) (not e!3132213))))

(assert (=> b!5013655 (= res!2138035 (not ((_ is Nil!57896) lt!2073953)))))

(assert (= (and d!1614361 (not res!2138036)) b!5013655))

(assert (= (and b!5013655 res!2138035) b!5013656))

(assert (= (and b!5013656 res!2138037) b!5013657))

(assert (= (and d!1614361 (not res!2138034)) b!5013658))

(assert (=> b!5013658 m!6048042))

(assert (=> b!5013658 m!6047776))

(declare-fun m!6048412 () Bool)

(assert (=> b!5013658 m!6048412))

(assert (=> b!5013656 m!6047776))

(declare-fun m!6048414 () Bool)

(assert (=> b!5013656 m!6048414))

(declare-fun m!6048416 () Bool)

(assert (=> b!5013656 m!6048416))

(assert (=> b!5013657 m!6047776))

(declare-fun m!6048418 () Bool)

(assert (=> b!5013657 m!6048418))

(declare-fun m!6048420 () Bool)

(assert (=> b!5013657 m!6048420))

(assert (=> b!5013657 m!6048418))

(assert (=> b!5013657 m!6048420))

(declare-fun m!6048422 () Bool)

(assert (=> b!5013657 m!6048422))

(assert (=> b!5013018 d!1614361))

(declare-fun d!1614363 () Bool)

(assert (=> d!1614363 (= (isEmpty!31363 (_1!34835 lt!2073957)) ((_ is Nil!57896) (_1!34835 lt!2073957)))))

(assert (=> b!5013018 d!1614363))

(declare-fun d!1614365 () Bool)

(declare-fun e!3132216 () Bool)

(assert (=> d!1614365 e!3132216))

(declare-fun res!2138040 () Bool)

(assert (=> d!1614365 (=> res!2138040 e!3132216)))

(assert (=> d!1614365 (= res!2138040 (isEmpty!31363 (_1!34835 (findLongestMatchInner!1994 r!12727 Nil!57896 (size!38488 Nil!57896) lt!2073960 lt!2073960 (size!38488 lt!2073960)))))))

(declare-fun lt!2074322 () Unit!149107)

(declare-fun choose!37078 (Regex!13805 List!58020) Unit!149107)

(assert (=> d!1614365 (= lt!2074322 (choose!37078 r!12727 lt!2073960))))

(assert (=> d!1614365 (validRegex!6102 r!12727)))

(assert (=> d!1614365 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1947 r!12727 lt!2073960) lt!2074322)))

(declare-fun b!5013661 () Bool)

(assert (=> b!5013661 (= e!3132216 (matchR!6769 r!12727 (_1!34835 (findLongestMatchInner!1994 r!12727 Nil!57896 (size!38488 Nil!57896) lt!2073960 lt!2073960 (size!38488 lt!2073960)))))))

(assert (= (and d!1614365 (not res!2138040)) b!5013661))

(assert (=> d!1614365 m!6047770))

(assert (=> d!1614365 m!6047772))

(assert (=> d!1614365 m!6047782))

(assert (=> d!1614365 m!6047770))

(declare-fun m!6048424 () Bool)

(assert (=> d!1614365 m!6048424))

(assert (=> d!1614365 m!6047742))

(assert (=> d!1614365 m!6047772))

(declare-fun m!6048426 () Bool)

(assert (=> d!1614365 m!6048426))

(assert (=> b!5013661 m!6047770))

(assert (=> b!5013661 m!6047772))

(assert (=> b!5013661 m!6047770))

(assert (=> b!5013661 m!6047772))

(assert (=> b!5013661 m!6047782))

(declare-fun m!6048428 () Bool)

(assert (=> b!5013661 m!6048428))

(assert (=> b!5013018 d!1614365))

(declare-fun d!1614367 () Bool)

(declare-fun e!3132217 () Bool)

(assert (=> d!1614367 e!3132217))

(declare-fun res!2138041 () Bool)

(assert (=> d!1614367 (=> res!2138041 e!3132217)))

(declare-fun lt!2074323 () Bool)

(assert (=> d!1614367 (= res!2138041 (not lt!2074323))))

(declare-fun e!3132218 () Bool)

(assert (=> d!1614367 (= lt!2074323 e!3132218)))

(declare-fun res!2138043 () Bool)

(assert (=> d!1614367 (=> res!2138043 e!3132218)))

(assert (=> d!1614367 (= res!2138043 ((_ is Nil!57896) lt!2073954))))

(assert (=> d!1614367 (= (isPrefix!5358 lt!2073954 lt!2073969) lt!2074323)))

(declare-fun b!5013665 () Bool)

(assert (=> b!5013665 (= e!3132217 (>= (size!38488 lt!2073969) (size!38488 lt!2073954)))))

(declare-fun b!5013663 () Bool)

(declare-fun res!2138044 () Bool)

(declare-fun e!3132219 () Bool)

(assert (=> b!5013663 (=> (not res!2138044) (not e!3132219))))

(assert (=> b!5013663 (= res!2138044 (= (head!10741 lt!2073954) (head!10741 lt!2073969)))))

(declare-fun b!5013664 () Bool)

(assert (=> b!5013664 (= e!3132219 (isPrefix!5358 (tail!9874 lt!2073954) (tail!9874 lt!2073969)))))

(declare-fun b!5013662 () Bool)

(assert (=> b!5013662 (= e!3132218 e!3132219)))

(declare-fun res!2138042 () Bool)

(assert (=> b!5013662 (=> (not res!2138042) (not e!3132219))))

(assert (=> b!5013662 (= res!2138042 (not ((_ is Nil!57896) lt!2073969)))))

(assert (= (and d!1614367 (not res!2138043)) b!5013662))

(assert (= (and b!5013662 res!2138042) b!5013663))

(assert (= (and b!5013663 res!2138044) b!5013664))

(assert (= (and d!1614367 (not res!2138041)) b!5013665))

(declare-fun m!6048430 () Bool)

(assert (=> b!5013665 m!6048430))

(assert (=> b!5013665 m!6047766))

(assert (=> b!5013663 m!6048222))

(declare-fun m!6048432 () Bool)

(assert (=> b!5013663 m!6048432))

(assert (=> b!5013664 m!6048226))

(declare-fun m!6048434 () Bool)

(assert (=> b!5013664 m!6048434))

(assert (=> b!5013664 m!6048226))

(assert (=> b!5013664 m!6048434))

(declare-fun m!6048436 () Bool)

(assert (=> b!5013664 m!6048436))

(assert (=> b!5013018 d!1614367))

(declare-fun b!5013666 () Bool)

(declare-fun e!3132224 () Bool)

(assert (=> b!5013666 (= e!3132224 (not (= (head!10741 (_1!34835 lt!2073961)) (c!856291 r!12727))))))

(declare-fun b!5013667 () Bool)

(declare-fun e!3132220 () Bool)

(assert (=> b!5013667 (= e!3132220 (matchR!6769 (derivativeStep!3983 r!12727 (head!10741 (_1!34835 lt!2073961))) (tail!9874 (_1!34835 lt!2073961))))))

(declare-fun b!5013668 () Bool)

(declare-fun res!2138048 () Bool)

(assert (=> b!5013668 (=> res!2138048 e!3132224)))

(assert (=> b!5013668 (= res!2138048 (not (isEmpty!31363 (tail!9874 (_1!34835 lt!2073961)))))))

(declare-fun b!5013669 () Bool)

(declare-fun res!2138052 () Bool)

(declare-fun e!3132225 () Bool)

(assert (=> b!5013669 (=> (not res!2138052) (not e!3132225))))

(assert (=> b!5013669 (= res!2138052 (isEmpty!31363 (tail!9874 (_1!34835 lt!2073961))))))

(declare-fun bm!350131 () Bool)

(declare-fun call!350136 () Bool)

(assert (=> bm!350131 (= call!350136 (isEmpty!31363 (_1!34835 lt!2073961)))))

(declare-fun b!5013670 () Bool)

(declare-fun e!3132222 () Bool)

(declare-fun lt!2074324 () Bool)

(assert (=> b!5013670 (= e!3132222 (= lt!2074324 call!350136))))

(declare-fun b!5013671 () Bool)

(declare-fun e!3132223 () Bool)

(assert (=> b!5013671 (= e!3132222 e!3132223)))

(declare-fun c!856466 () Bool)

(assert (=> b!5013671 (= c!856466 ((_ is EmptyLang!13805) r!12727))))

(declare-fun b!5013672 () Bool)

(declare-fun res!2138049 () Bool)

(declare-fun e!3132226 () Bool)

(assert (=> b!5013672 (=> res!2138049 e!3132226)))

(assert (=> b!5013672 (= res!2138049 e!3132225)))

(declare-fun res!2138045 () Bool)

(assert (=> b!5013672 (=> (not res!2138045) (not e!3132225))))

(assert (=> b!5013672 (= res!2138045 lt!2074324)))

(declare-fun b!5013673 () Bool)

(declare-fun res!2138051 () Bool)

(assert (=> b!5013673 (=> res!2138051 e!3132226)))

(assert (=> b!5013673 (= res!2138051 (not ((_ is ElementMatch!13805) r!12727)))))

(assert (=> b!5013673 (= e!3132223 e!3132226)))

(declare-fun b!5013674 () Bool)

(declare-fun e!3132221 () Bool)

(assert (=> b!5013674 (= e!3132226 e!3132221)))

(declare-fun res!2138050 () Bool)

(assert (=> b!5013674 (=> (not res!2138050) (not e!3132221))))

(assert (=> b!5013674 (= res!2138050 (not lt!2074324))))

(declare-fun b!5013675 () Bool)

(assert (=> b!5013675 (= e!3132223 (not lt!2074324))))

(declare-fun b!5013676 () Bool)

(declare-fun res!2138046 () Bool)

(assert (=> b!5013676 (=> (not res!2138046) (not e!3132225))))

(assert (=> b!5013676 (= res!2138046 (not call!350136))))

(declare-fun b!5013677 () Bool)

(assert (=> b!5013677 (= e!3132221 e!3132224)))

(declare-fun res!2138047 () Bool)

(assert (=> b!5013677 (=> res!2138047 e!3132224)))

(assert (=> b!5013677 (= res!2138047 call!350136)))

(declare-fun d!1614369 () Bool)

(assert (=> d!1614369 e!3132222))

(declare-fun c!856465 () Bool)

(assert (=> d!1614369 (= c!856465 ((_ is EmptyExpr!13805) r!12727))))

(assert (=> d!1614369 (= lt!2074324 e!3132220)))

(declare-fun c!856467 () Bool)

(assert (=> d!1614369 (= c!856467 (isEmpty!31363 (_1!34835 lt!2073961)))))

(assert (=> d!1614369 (validRegex!6102 r!12727)))

(assert (=> d!1614369 (= (matchR!6769 r!12727 (_1!34835 lt!2073961)) lt!2074324)))

(declare-fun b!5013678 () Bool)

(assert (=> b!5013678 (= e!3132220 (nullable!4693 r!12727))))

(declare-fun b!5013679 () Bool)

(assert (=> b!5013679 (= e!3132225 (= (head!10741 (_1!34835 lt!2073961)) (c!856291 r!12727)))))

(assert (= (and d!1614369 c!856467) b!5013678))

(assert (= (and d!1614369 (not c!856467)) b!5013667))

(assert (= (and d!1614369 c!856465) b!5013670))

(assert (= (and d!1614369 (not c!856465)) b!5013671))

(assert (= (and b!5013671 c!856466) b!5013675))

(assert (= (and b!5013671 (not c!856466)) b!5013673))

(assert (= (and b!5013673 (not res!2138051)) b!5013672))

(assert (= (and b!5013672 res!2138045) b!5013676))

(assert (= (and b!5013676 res!2138046) b!5013669))

(assert (= (and b!5013669 res!2138052) b!5013679))

(assert (= (and b!5013672 (not res!2138049)) b!5013674))

(assert (= (and b!5013674 res!2138050) b!5013677))

(assert (= (and b!5013677 (not res!2138047)) b!5013668))

(assert (= (and b!5013668 (not res!2138048)) b!5013666))

(assert (= (or b!5013670 b!5013676 b!5013677) bm!350131))

(assert (=> b!5013666 m!6048242))

(assert (=> bm!350131 m!6047810))

(assert (=> b!5013678 m!6048100))

(assert (=> b!5013679 m!6048242))

(assert (=> b!5013667 m!6048242))

(assert (=> b!5013667 m!6048242))

(declare-fun m!6048438 () Bool)

(assert (=> b!5013667 m!6048438))

(assert (=> b!5013667 m!6048246))

(assert (=> b!5013667 m!6048438))

(assert (=> b!5013667 m!6048246))

(declare-fun m!6048440 () Bool)

(assert (=> b!5013667 m!6048440))

(assert (=> b!5013669 m!6048246))

(assert (=> b!5013669 m!6048246))

(declare-fun m!6048442 () Bool)

(assert (=> b!5013669 m!6048442))

(assert (=> d!1614369 m!6047810))

(assert (=> d!1614369 m!6047742))

(assert (=> b!5013668 m!6048246))

(assert (=> b!5013668 m!6048246))

(assert (=> b!5013668 m!6048442))

(assert (=> b!5013028 d!1614369))

(declare-fun b!5013683 () Bool)

(declare-fun e!3132228 () Bool)

(declare-fun lt!2074325 () List!58020)

(assert (=> b!5013683 (= e!3132228 (or (not (= (_2!34835 lt!2073961) Nil!57896)) (= lt!2074325 (_1!34835 lt!2073961))))))

(declare-fun b!5013681 () Bool)

(declare-fun e!3132227 () List!58020)

(assert (=> b!5013681 (= e!3132227 (Cons!57896 (h!64344 (_1!34835 lt!2073961)) (++!12653 (t!370388 (_1!34835 lt!2073961)) (_2!34835 lt!2073961))))))

(declare-fun d!1614371 () Bool)

(assert (=> d!1614371 e!3132228))

(declare-fun res!2138054 () Bool)

(assert (=> d!1614371 (=> (not res!2138054) (not e!3132228))))

(assert (=> d!1614371 (= res!2138054 (= (content!10259 lt!2074325) ((_ map or) (content!10259 (_1!34835 lt!2073961)) (content!10259 (_2!34835 lt!2073961)))))))

(assert (=> d!1614371 (= lt!2074325 e!3132227)))

(declare-fun c!856468 () Bool)

(assert (=> d!1614371 (= c!856468 ((_ is Nil!57896) (_1!34835 lt!2073961)))))

(assert (=> d!1614371 (= (++!12653 (_1!34835 lt!2073961) (_2!34835 lt!2073961)) lt!2074325)))

(declare-fun b!5013682 () Bool)

(declare-fun res!2138053 () Bool)

(assert (=> b!5013682 (=> (not res!2138053) (not e!3132228))))

(assert (=> b!5013682 (= res!2138053 (= (size!38488 lt!2074325) (+ (size!38488 (_1!34835 lt!2073961)) (size!38488 (_2!34835 lt!2073961)))))))

(declare-fun b!5013680 () Bool)

(assert (=> b!5013680 (= e!3132227 (_2!34835 lt!2073961))))

(assert (= (and d!1614371 c!856468) b!5013680))

(assert (= (and d!1614371 (not c!856468)) b!5013681))

(assert (= (and d!1614371 res!2138054) b!5013682))

(assert (= (and b!5013682 res!2138053) b!5013683))

(declare-fun m!6048444 () Bool)

(assert (=> b!5013681 m!6048444))

(declare-fun m!6048446 () Bool)

(assert (=> d!1614371 m!6048446))

(declare-fun m!6048448 () Bool)

(assert (=> d!1614371 m!6048448))

(declare-fun m!6048450 () Bool)

(assert (=> d!1614371 m!6048450))

(declare-fun m!6048452 () Bool)

(assert (=> b!5013682 m!6048452))

(assert (=> b!5013682 m!6047748))

(declare-fun m!6048454 () Bool)

(assert (=> b!5013682 m!6048454))

(assert (=> b!5013019 d!1614371))

(declare-fun d!1614373 () Bool)

(declare-fun e!3132229 () Bool)

(assert (=> d!1614373 e!3132229))

(declare-fun res!2138055 () Bool)

(assert (=> d!1614373 (=> res!2138055 e!3132229)))

(declare-fun lt!2074326 () Bool)

(assert (=> d!1614373 (= res!2138055 (not lt!2074326))))

(declare-fun e!3132230 () Bool)

(assert (=> d!1614373 (= lt!2074326 e!3132230)))

(declare-fun res!2138057 () Bool)

(assert (=> d!1614373 (=> res!2138057 e!3132230)))

(assert (=> d!1614373 (= res!2138057 ((_ is Nil!57896) (_1!34835 lt!2073961)))))

(assert (=> d!1614373 (= (isPrefix!5358 (_1!34835 lt!2073961) lt!2073960) lt!2074326)))

(declare-fun b!5013687 () Bool)

(assert (=> b!5013687 (= e!3132229 (>= (size!38488 lt!2073960) (size!38488 (_1!34835 lt!2073961))))))

(declare-fun b!5013685 () Bool)

(declare-fun res!2138058 () Bool)

(declare-fun e!3132231 () Bool)

(assert (=> b!5013685 (=> (not res!2138058) (not e!3132231))))

(assert (=> b!5013685 (= res!2138058 (= (head!10741 (_1!34835 lt!2073961)) (head!10741 lt!2073960)))))

(declare-fun b!5013686 () Bool)

(assert (=> b!5013686 (= e!3132231 (isPrefix!5358 (tail!9874 (_1!34835 lt!2073961)) (tail!9874 lt!2073960)))))

(declare-fun b!5013684 () Bool)

(assert (=> b!5013684 (= e!3132230 e!3132231)))

(declare-fun res!2138056 () Bool)

(assert (=> b!5013684 (=> (not res!2138056) (not e!3132231))))

(assert (=> b!5013684 (= res!2138056 (not ((_ is Nil!57896) lt!2073960)))))

(assert (= (and d!1614373 (not res!2138057)) b!5013684))

(assert (= (and b!5013684 res!2138056) b!5013685))

(assert (= (and b!5013685 res!2138058) b!5013686))

(assert (= (and d!1614373 (not res!2138055)) b!5013687))

(assert (=> b!5013687 m!6047772))

(assert (=> b!5013687 m!6047748))

(assert (=> b!5013685 m!6048242))

(assert (=> b!5013685 m!6048224))

(assert (=> b!5013686 m!6048246))

(assert (=> b!5013686 m!6048228))

(assert (=> b!5013686 m!6048246))

(assert (=> b!5013686 m!6048228))

(declare-fun m!6048456 () Bool)

(assert (=> b!5013686 m!6048456))

(assert (=> b!5013029 d!1614373))

(declare-fun d!1614375 () Bool)

(assert (=> d!1614375 (= (matchR!6769 r!12727 (_1!34835 lt!2073961)) (matchZipper!573 z!4183 (_1!34835 lt!2073961)))))

(declare-fun lt!2074329 () Unit!149107)

(declare-fun choose!37079 ((InoxSet Context!6460) List!58021 Regex!13805 List!58020) Unit!149107)

(assert (=> d!1614375 (= lt!2074329 (choose!37079 z!4183 lt!2073949 r!12727 (_1!34835 lt!2073961)))))

(assert (=> d!1614375 (validRegex!6102 r!12727)))

(assert (=> d!1614375 (= (theoremZipperRegexEquiv!177 z!4183 lt!2073949 r!12727 (_1!34835 lt!2073961)) lt!2074329)))

(declare-fun bs!1186829 () Bool)

(assert (= bs!1186829 d!1614375))

(assert (=> bs!1186829 m!6047840))

(assert (=> bs!1186829 m!6047750))

(declare-fun m!6048458 () Bool)

(assert (=> bs!1186829 m!6048458))

(assert (=> bs!1186829 m!6047742))

(assert (=> b!5013020 d!1614375))

(declare-fun d!1614377 () Bool)

(declare-fun lt!2074330 () Int)

(assert (=> d!1614377 (= lt!2074330 (size!38488 (list!18642 (_1!34836 lt!2073951))))))

(assert (=> d!1614377 (= lt!2074330 (size!38491 (c!856292 (_1!34836 lt!2073951))))))

(assert (=> d!1614377 (= (size!38489 (_1!34836 lt!2073951)) lt!2074330)))

(declare-fun bs!1186830 () Bool)

(assert (= bs!1186830 d!1614377))

(assert (=> bs!1186830 m!6047834))

(assert (=> bs!1186830 m!6047834))

(declare-fun m!6048460 () Bool)

(assert (=> bs!1186830 m!6048460))

(declare-fun m!6048462 () Bool)

(assert (=> bs!1186830 m!6048462))

(assert (=> b!5013020 d!1614377))

(declare-fun d!1614379 () Bool)

(assert (=> d!1614379 (= (matchR!6769 r!12727 lt!2073954) (matchZipper!573 z!4183 lt!2073954))))

(declare-fun lt!2074331 () Unit!149107)

(assert (=> d!1614379 (= lt!2074331 (choose!37079 z!4183 lt!2073949 r!12727 lt!2073954))))

(assert (=> d!1614379 (validRegex!6102 r!12727)))

(assert (=> d!1614379 (= (theoremZipperRegexEquiv!177 z!4183 lt!2073949 r!12727 lt!2073954) lt!2074331)))

(declare-fun bs!1186831 () Bool)

(assert (= bs!1186831 d!1614379))

(assert (=> bs!1186831 m!6047756))

(assert (=> bs!1186831 m!6047790))

(declare-fun m!6048464 () Bool)

(assert (=> bs!1186831 m!6048464))

(assert (=> bs!1186831 m!6047742))

(assert (=> b!5013020 d!1614379))

(declare-fun b!5013688 () Bool)

(declare-fun e!3132236 () Bool)

(assert (=> b!5013688 (= e!3132236 (not (= (head!10741 lt!2073954) (c!856291 r!12727))))))

(declare-fun b!5013689 () Bool)

(declare-fun e!3132232 () Bool)

(assert (=> b!5013689 (= e!3132232 (matchR!6769 (derivativeStep!3983 r!12727 (head!10741 lt!2073954)) (tail!9874 lt!2073954)))))

(declare-fun b!5013690 () Bool)

(declare-fun res!2138062 () Bool)

(assert (=> b!5013690 (=> res!2138062 e!3132236)))

(assert (=> b!5013690 (= res!2138062 (not (isEmpty!31363 (tail!9874 lt!2073954))))))

(declare-fun b!5013691 () Bool)

(declare-fun res!2138066 () Bool)

(declare-fun e!3132237 () Bool)

(assert (=> b!5013691 (=> (not res!2138066) (not e!3132237))))

(assert (=> b!5013691 (= res!2138066 (isEmpty!31363 (tail!9874 lt!2073954)))))

(declare-fun bm!350132 () Bool)

(declare-fun call!350137 () Bool)

(assert (=> bm!350132 (= call!350137 (isEmpty!31363 lt!2073954))))

(declare-fun b!5013692 () Bool)

(declare-fun e!3132234 () Bool)

(declare-fun lt!2074332 () Bool)

(assert (=> b!5013692 (= e!3132234 (= lt!2074332 call!350137))))

(declare-fun b!5013693 () Bool)

(declare-fun e!3132235 () Bool)

(assert (=> b!5013693 (= e!3132234 e!3132235)))

(declare-fun c!856470 () Bool)

(assert (=> b!5013693 (= c!856470 ((_ is EmptyLang!13805) r!12727))))

(declare-fun b!5013694 () Bool)

(declare-fun res!2138063 () Bool)

(declare-fun e!3132238 () Bool)

(assert (=> b!5013694 (=> res!2138063 e!3132238)))

(assert (=> b!5013694 (= res!2138063 e!3132237)))

(declare-fun res!2138059 () Bool)

(assert (=> b!5013694 (=> (not res!2138059) (not e!3132237))))

(assert (=> b!5013694 (= res!2138059 lt!2074332)))

(declare-fun b!5013695 () Bool)

(declare-fun res!2138065 () Bool)

(assert (=> b!5013695 (=> res!2138065 e!3132238)))

(assert (=> b!5013695 (= res!2138065 (not ((_ is ElementMatch!13805) r!12727)))))

(assert (=> b!5013695 (= e!3132235 e!3132238)))

(declare-fun b!5013696 () Bool)

(declare-fun e!3132233 () Bool)

(assert (=> b!5013696 (= e!3132238 e!3132233)))

(declare-fun res!2138064 () Bool)

(assert (=> b!5013696 (=> (not res!2138064) (not e!3132233))))

(assert (=> b!5013696 (= res!2138064 (not lt!2074332))))

(declare-fun b!5013697 () Bool)

(assert (=> b!5013697 (= e!3132235 (not lt!2074332))))

(declare-fun b!5013698 () Bool)

(declare-fun res!2138060 () Bool)

(assert (=> b!5013698 (=> (not res!2138060) (not e!3132237))))

(assert (=> b!5013698 (= res!2138060 (not call!350137))))

(declare-fun b!5013699 () Bool)

(assert (=> b!5013699 (= e!3132233 e!3132236)))

(declare-fun res!2138061 () Bool)

(assert (=> b!5013699 (=> res!2138061 e!3132236)))

(assert (=> b!5013699 (= res!2138061 call!350137)))

(declare-fun d!1614381 () Bool)

(assert (=> d!1614381 e!3132234))

(declare-fun c!856469 () Bool)

(assert (=> d!1614381 (= c!856469 ((_ is EmptyExpr!13805) r!12727))))

(assert (=> d!1614381 (= lt!2074332 e!3132232)))

(declare-fun c!856471 () Bool)

(assert (=> d!1614381 (= c!856471 (isEmpty!31363 lt!2073954))))

(assert (=> d!1614381 (validRegex!6102 r!12727)))

(assert (=> d!1614381 (= (matchR!6769 r!12727 lt!2073954) lt!2074332)))

(declare-fun b!5013700 () Bool)

(assert (=> b!5013700 (= e!3132232 (nullable!4693 r!12727))))

(declare-fun b!5013701 () Bool)

(assert (=> b!5013701 (= e!3132237 (= (head!10741 lt!2073954) (c!856291 r!12727)))))

(assert (= (and d!1614381 c!856471) b!5013700))

(assert (= (and d!1614381 (not c!856471)) b!5013689))

(assert (= (and d!1614381 c!856469) b!5013692))

(assert (= (and d!1614381 (not c!856469)) b!5013693))

(assert (= (and b!5013693 c!856470) b!5013697))

(assert (= (and b!5013693 (not c!856470)) b!5013695))

(assert (= (and b!5013695 (not res!2138065)) b!5013694))

(assert (= (and b!5013694 res!2138059) b!5013698))

(assert (= (and b!5013698 res!2138060) b!5013691))

(assert (= (and b!5013691 res!2138066) b!5013701))

(assert (= (and b!5013694 (not res!2138063)) b!5013696))

(assert (= (and b!5013696 res!2138064) b!5013699))

(assert (= (and b!5013699 (not res!2138061)) b!5013690))

(assert (= (and b!5013690 (not res!2138062)) b!5013688))

(assert (= (or b!5013692 b!5013698 b!5013699) bm!350132))

(assert (=> b!5013688 m!6048222))

(assert (=> bm!350132 m!6048264))

(assert (=> b!5013700 m!6048100))

(assert (=> b!5013701 m!6048222))

(assert (=> b!5013689 m!6048222))

(assert (=> b!5013689 m!6048222))

(declare-fun m!6048466 () Bool)

(assert (=> b!5013689 m!6048466))

(assert (=> b!5013689 m!6048226))

(assert (=> b!5013689 m!6048466))

(assert (=> b!5013689 m!6048226))

(declare-fun m!6048468 () Bool)

(assert (=> b!5013689 m!6048468))

(assert (=> b!5013691 m!6048226))

(assert (=> b!5013691 m!6048226))

(declare-fun m!6048470 () Bool)

(assert (=> b!5013691 m!6048470))

(assert (=> d!1614381 m!6048264))

(assert (=> d!1614381 m!6047742))

(assert (=> b!5013690 m!6048226))

(assert (=> b!5013690 m!6048226))

(assert (=> b!5013690 m!6048470))

(assert (=> b!5013020 d!1614381))

(declare-fun d!1614383 () Bool)

(declare-fun c!856472 () Bool)

(assert (=> d!1614383 (= c!856472 (isEmpty!31363 (_1!34835 lt!2073961)))))

(declare-fun e!3132239 () Bool)

(assert (=> d!1614383 (= (matchZipper!573 z!4183 (_1!34835 lt!2073961)) e!3132239)))

(declare-fun b!5013702 () Bool)

(assert (=> b!5013702 (= e!3132239 (nullableZipper!888 z!4183))))

(declare-fun b!5013703 () Bool)

(assert (=> b!5013703 (= e!3132239 (matchZipper!573 (derivationStepZipper!637 z!4183 (head!10741 (_1!34835 lt!2073961))) (tail!9874 (_1!34835 lt!2073961))))))

(assert (= (and d!1614383 c!856472) b!5013702))

(assert (= (and d!1614383 (not c!856472)) b!5013703))

(assert (=> d!1614383 m!6047810))

(assert (=> b!5013702 m!6048016))

(assert (=> b!5013703 m!6048242))

(assert (=> b!5013703 m!6048242))

(declare-fun m!6048472 () Bool)

(assert (=> b!5013703 m!6048472))

(assert (=> b!5013703 m!6048246))

(assert (=> b!5013703 m!6048472))

(assert (=> b!5013703 m!6048246))

(declare-fun m!6048474 () Bool)

(assert (=> b!5013703 m!6048474))

(assert (=> b!5013020 d!1614383))

(declare-fun d!1614385 () Bool)

(declare-fun lt!2074333 () Int)

(assert (=> d!1614385 (>= lt!2074333 0)))

(declare-fun e!3132240 () Int)

(assert (=> d!1614385 (= lt!2074333 e!3132240)))

(declare-fun c!856473 () Bool)

(assert (=> d!1614385 (= c!856473 ((_ is Nil!57896) (_1!34835 lt!2073961)))))

(assert (=> d!1614385 (= (size!38488 (_1!34835 lt!2073961)) lt!2074333)))

(declare-fun b!5013704 () Bool)

(assert (=> b!5013704 (= e!3132240 0)))

(declare-fun b!5013705 () Bool)

(assert (=> b!5013705 (= e!3132240 (+ 1 (size!38488 (t!370388 (_1!34835 lt!2073961)))))))

(assert (= (and d!1614385 c!856473) b!5013704))

(assert (= (and d!1614385 (not c!856473)) b!5013705))

(declare-fun m!6048476 () Bool)

(assert (=> b!5013705 m!6048476))

(assert (=> b!5013020 d!1614385))

(declare-fun d!1614387 () Bool)

(declare-fun c!856474 () Bool)

(assert (=> d!1614387 (= c!856474 ((_ is Node!15324) (c!856292 totalInput!1012)))))

(declare-fun e!3132241 () Bool)

(assert (=> d!1614387 (= (inv!76086 (c!856292 totalInput!1012)) e!3132241)))

(declare-fun b!5013706 () Bool)

(assert (=> b!5013706 (= e!3132241 (inv!76091 (c!856292 totalInput!1012)))))

(declare-fun b!5013707 () Bool)

(declare-fun e!3132242 () Bool)

(assert (=> b!5013707 (= e!3132241 e!3132242)))

(declare-fun res!2138067 () Bool)

(assert (=> b!5013707 (= res!2138067 (not ((_ is Leaf!25435) (c!856292 totalInput!1012))))))

(assert (=> b!5013707 (=> res!2138067 e!3132242)))

(declare-fun b!5013708 () Bool)

(assert (=> b!5013708 (= e!3132242 (inv!76092 (c!856292 totalInput!1012)))))

(assert (= (and d!1614387 c!856474) b!5013706))

(assert (= (and d!1614387 (not c!856474)) b!5013707))

(assert (= (and b!5013707 (not res!2138067)) b!5013708))

(declare-fun m!6048478 () Bool)

(assert (=> b!5013706 m!6048478))

(declare-fun m!6048480 () Bool)

(assert (=> b!5013708 m!6048480))

(assert (=> b!5013021 d!1614387))

(declare-fun d!1614389 () Bool)

(declare-fun lt!2074336 () Regex!13805)

(assert (=> d!1614389 (validRegex!6102 lt!2074336)))

(declare-fun generalisedUnion!586 (List!58019) Regex!13805)

(declare-fun unfocusZipperList!99 (List!58021) List!58019)

(assert (=> d!1614389 (= lt!2074336 (generalisedUnion!586 (unfocusZipperList!99 lt!2073949)))))

(assert (=> d!1614389 (= (unfocusZipper!332 lt!2073949) lt!2074336)))

(declare-fun bs!1186832 () Bool)

(assert (= bs!1186832 d!1614389))

(declare-fun m!6048482 () Bool)

(assert (=> bs!1186832 m!6048482))

(declare-fun m!6048484 () Bool)

(assert (=> bs!1186832 m!6048484))

(assert (=> bs!1186832 m!6048484))

(declare-fun m!6048486 () Bool)

(assert (=> bs!1186832 m!6048486))

(assert (=> b!5013022 d!1614389))

(declare-fun d!1614391 () Bool)

(declare-fun e!3132245 () Bool)

(assert (=> d!1614391 e!3132245))

(declare-fun res!2138070 () Bool)

(assert (=> d!1614391 (=> (not res!2138070) (not e!3132245))))

(declare-fun lt!2074339 () List!58021)

(declare-fun noDuplicate!1035 (List!58021) Bool)

(assert (=> d!1614391 (= res!2138070 (noDuplicate!1035 lt!2074339))))

(declare-fun choose!37080 ((InoxSet Context!6460)) List!58021)

(assert (=> d!1614391 (= lt!2074339 (choose!37080 z!4183))))

(assert (=> d!1614391 (= (toList!8090 z!4183) lt!2074339)))

(declare-fun b!5013711 () Bool)

(declare-fun content!10261 (List!58021) (InoxSet Context!6460))

(assert (=> b!5013711 (= e!3132245 (= (content!10261 lt!2074339) z!4183))))

(assert (= (and d!1614391 res!2138070) b!5013711))

(declare-fun m!6048488 () Bool)

(assert (=> d!1614391 m!6048488))

(declare-fun m!6048490 () Bool)

(assert (=> d!1614391 m!6048490))

(declare-fun m!6048492 () Bool)

(assert (=> b!5013711 m!6048492))

(assert (=> b!5013022 d!1614391))

(declare-fun d!1614393 () Bool)

(declare-fun e!3132248 () Bool)

(assert (=> d!1614393 e!3132248))

(declare-fun res!2138073 () Bool)

(assert (=> d!1614393 (=> res!2138073 e!3132248)))

(declare-fun lt!2074342 () Bool)

(assert (=> d!1614393 (= res!2138073 (not lt!2074342))))

(assert (=> d!1614393 (= lt!2074342 (= lt!2073960 (drop!2468 lt!2073953 (- (size!38488 lt!2073953) (size!38488 lt!2073960)))))))

(assert (=> d!1614393 (= (isSuffix!1371 lt!2073960 lt!2073953) lt!2074342)))

(declare-fun b!5013714 () Bool)

(assert (=> b!5013714 (= e!3132248 (>= (size!38488 lt!2073953) (size!38488 lt!2073960)))))

(assert (= (and d!1614393 (not res!2138073)) b!5013714))

(assert (=> d!1614393 m!6048042))

(assert (=> d!1614393 m!6047772))

(declare-fun m!6048494 () Bool)

(assert (=> d!1614393 m!6048494))

(assert (=> b!5013714 m!6048042))

(assert (=> b!5013714 m!6047772))

(assert (=> b!5013032 d!1614393))

(declare-fun d!1614395 () Bool)

(assert (=> d!1614395 (= (list!18642 totalInput!1012) (list!18644 (c!856292 totalInput!1012)))))

(declare-fun bs!1186833 () Bool)

(assert (= bs!1186833 d!1614395))

(declare-fun m!6048496 () Bool)

(assert (=> bs!1186833 m!6048496))

(assert (=> b!5013032 d!1614395))

(declare-fun d!1614397 () Bool)

(assert (=> d!1614397 (= (list!18642 input!5597) (list!18644 (c!856292 input!5597)))))

(declare-fun bs!1186834 () Bool)

(assert (= bs!1186834 d!1614397))

(declare-fun m!6048498 () Bool)

(assert (=> bs!1186834 m!6048498))

(assert (=> b!5013032 d!1614397))

(declare-fun b!5013728 () Bool)

(declare-fun e!3132251 () Bool)

(declare-fun tp!1406118 () Bool)

(declare-fun tp!1406120 () Bool)

(assert (=> b!5013728 (= e!3132251 (and tp!1406118 tp!1406120))))

(declare-fun b!5013726 () Bool)

(declare-fun tp!1406116 () Bool)

(declare-fun tp!1406119 () Bool)

(assert (=> b!5013726 (= e!3132251 (and tp!1406116 tp!1406119))))

(declare-fun b!5013727 () Bool)

(declare-fun tp!1406117 () Bool)

(assert (=> b!5013727 (= e!3132251 tp!1406117)))

(declare-fun b!5013725 () Bool)

(assert (=> b!5013725 (= e!3132251 tp_is_empty!36607)))

(assert (=> b!5013030 (= tp!1406038 e!3132251)))

(assert (= (and b!5013030 ((_ is ElementMatch!13805) (regOne!28123 r!12727))) b!5013725))

(assert (= (and b!5013030 ((_ is Concat!22598) (regOne!28123 r!12727))) b!5013726))

(assert (= (and b!5013030 ((_ is Star!13805) (regOne!28123 r!12727))) b!5013727))

(assert (= (and b!5013030 ((_ is Union!13805) (regOne!28123 r!12727))) b!5013728))

(declare-fun b!5013732 () Bool)

(declare-fun e!3132252 () Bool)

(declare-fun tp!1406123 () Bool)

(declare-fun tp!1406125 () Bool)

(assert (=> b!5013732 (= e!3132252 (and tp!1406123 tp!1406125))))

(declare-fun b!5013730 () Bool)

(declare-fun tp!1406121 () Bool)

(declare-fun tp!1406124 () Bool)

(assert (=> b!5013730 (= e!3132252 (and tp!1406121 tp!1406124))))

(declare-fun b!5013731 () Bool)

(declare-fun tp!1406122 () Bool)

(assert (=> b!5013731 (= e!3132252 tp!1406122)))

(declare-fun b!5013729 () Bool)

(assert (=> b!5013729 (= e!3132252 tp_is_empty!36607)))

(assert (=> b!5013030 (= tp!1406042 e!3132252)))

(assert (= (and b!5013030 ((_ is ElementMatch!13805) (regTwo!28123 r!12727))) b!5013729))

(assert (= (and b!5013030 ((_ is Concat!22598) (regTwo!28123 r!12727))) b!5013730))

(assert (= (and b!5013030 ((_ is Star!13805) (regTwo!28123 r!12727))) b!5013731))

(assert (= (and b!5013030 ((_ is Union!13805) (regTwo!28123 r!12727))) b!5013732))

(declare-fun b!5013736 () Bool)

(declare-fun e!3132253 () Bool)

(declare-fun tp!1406128 () Bool)

(declare-fun tp!1406130 () Bool)

(assert (=> b!5013736 (= e!3132253 (and tp!1406128 tp!1406130))))

(declare-fun b!5013734 () Bool)

(declare-fun tp!1406126 () Bool)

(declare-fun tp!1406129 () Bool)

(assert (=> b!5013734 (= e!3132253 (and tp!1406126 tp!1406129))))

(declare-fun b!5013735 () Bool)

(declare-fun tp!1406127 () Bool)

(assert (=> b!5013735 (= e!3132253 tp!1406127)))

(declare-fun b!5013733 () Bool)

(assert (=> b!5013733 (= e!3132253 tp_is_empty!36607)))

(assert (=> b!5013025 (= tp!1406039 e!3132253)))

(assert (= (and b!5013025 ((_ is ElementMatch!13805) (regOne!28122 r!12727))) b!5013733))

(assert (= (and b!5013025 ((_ is Concat!22598) (regOne!28122 r!12727))) b!5013734))

(assert (= (and b!5013025 ((_ is Star!13805) (regOne!28122 r!12727))) b!5013735))

(assert (= (and b!5013025 ((_ is Union!13805) (regOne!28122 r!12727))) b!5013736))

(declare-fun b!5013740 () Bool)

(declare-fun e!3132254 () Bool)

(declare-fun tp!1406133 () Bool)

(declare-fun tp!1406135 () Bool)

(assert (=> b!5013740 (= e!3132254 (and tp!1406133 tp!1406135))))

(declare-fun b!5013738 () Bool)

(declare-fun tp!1406131 () Bool)

(declare-fun tp!1406134 () Bool)

(assert (=> b!5013738 (= e!3132254 (and tp!1406131 tp!1406134))))

(declare-fun b!5013739 () Bool)

(declare-fun tp!1406132 () Bool)

(assert (=> b!5013739 (= e!3132254 tp!1406132)))

(declare-fun b!5013737 () Bool)

(assert (=> b!5013737 (= e!3132254 tp_is_empty!36607)))

(assert (=> b!5013025 (= tp!1406040 e!3132254)))

(assert (= (and b!5013025 ((_ is ElementMatch!13805) (regTwo!28122 r!12727))) b!5013737))

(assert (= (and b!5013025 ((_ is Concat!22598) (regTwo!28122 r!12727))) b!5013738))

(assert (= (and b!5013025 ((_ is Star!13805) (regTwo!28122 r!12727))) b!5013739))

(assert (= (and b!5013025 ((_ is Union!13805) (regTwo!28122 r!12727))) b!5013740))

(declare-fun tp!1406144 () Bool)

(declare-fun tp!1406143 () Bool)

(declare-fun e!3132259 () Bool)

(declare-fun b!5013749 () Bool)

(assert (=> b!5013749 (= e!3132259 (and (inv!76086 (left!42328 (c!856292 totalInput!1012))) tp!1406143 (inv!76086 (right!42658 (c!856292 totalInput!1012))) tp!1406144))))

(declare-fun b!5013751 () Bool)

(declare-fun e!3132260 () Bool)

(declare-fun tp!1406142 () Bool)

(assert (=> b!5013751 (= e!3132260 tp!1406142)))

(declare-fun b!5013750 () Bool)

(declare-fun inv!76094 (IArray!30709) Bool)

(assert (=> b!5013750 (= e!3132259 (and (inv!76094 (xs!18650 (c!856292 totalInput!1012))) e!3132260))))

(assert (=> b!5013021 (= tp!1406045 (and (inv!76086 (c!856292 totalInput!1012)) e!3132259))))

(assert (= (and b!5013021 ((_ is Node!15324) (c!856292 totalInput!1012))) b!5013749))

(assert (= b!5013750 b!5013751))

(assert (= (and b!5013021 ((_ is Leaf!25435) (c!856292 totalInput!1012))) b!5013750))

(declare-fun m!6048500 () Bool)

(assert (=> b!5013749 m!6048500))

(declare-fun m!6048502 () Bool)

(assert (=> b!5013749 m!6048502))

(declare-fun m!6048504 () Bool)

(assert (=> b!5013750 m!6048504))

(assert (=> b!5013021 m!6047812))

(declare-fun condSetEmpty!28466 () Bool)

(assert (=> setNonEmpty!28460 (= condSetEmpty!28466 (= setRest!28460 ((as const (Array Context!6460 Bool)) false)))))

(declare-fun setRes!28466 () Bool)

(assert (=> setNonEmpty!28460 (= tp!1406046 setRes!28466)))

(declare-fun setIsEmpty!28466 () Bool)

(assert (=> setIsEmpty!28466 setRes!28466))

(declare-fun setNonEmpty!28466 () Bool)

(declare-fun setElem!28466 () Context!6460)

(declare-fun e!3132263 () Bool)

(declare-fun tp!1406150 () Bool)

(assert (=> setNonEmpty!28466 (= setRes!28466 (and tp!1406150 (inv!76088 setElem!28466) e!3132263))))

(declare-fun setRest!28466 () (InoxSet Context!6460))

(assert (=> setNonEmpty!28466 (= setRest!28460 ((_ map or) (store ((as const (Array Context!6460 Bool)) false) setElem!28466 true) setRest!28466))))

(declare-fun b!5013756 () Bool)

(declare-fun tp!1406149 () Bool)

(assert (=> b!5013756 (= e!3132263 tp!1406149)))

(assert (= (and setNonEmpty!28460 condSetEmpty!28466) setIsEmpty!28466))

(assert (= (and setNonEmpty!28460 (not condSetEmpty!28466)) setNonEmpty!28466))

(assert (= setNonEmpty!28466 b!5013756))

(declare-fun m!6048506 () Bool)

(assert (=> setNonEmpty!28466 m!6048506))

(declare-fun b!5013761 () Bool)

(declare-fun e!3132266 () Bool)

(declare-fun tp!1406155 () Bool)

(declare-fun tp!1406156 () Bool)

(assert (=> b!5013761 (= e!3132266 (and tp!1406155 tp!1406156))))

(assert (=> b!5013031 (= tp!1406041 e!3132266)))

(assert (= (and b!5013031 ((_ is Cons!57895) (exprs!3730 setElem!28460))) b!5013761))

(declare-fun e!3132267 () Bool)

(declare-fun tp!1406159 () Bool)

(declare-fun b!5013762 () Bool)

(declare-fun tp!1406158 () Bool)

(assert (=> b!5013762 (= e!3132267 (and (inv!76086 (left!42328 (c!856292 input!5597))) tp!1406158 (inv!76086 (right!42658 (c!856292 input!5597))) tp!1406159))))

(declare-fun b!5013764 () Bool)

(declare-fun e!3132268 () Bool)

(declare-fun tp!1406157 () Bool)

(assert (=> b!5013764 (= e!3132268 tp!1406157)))

(declare-fun b!5013763 () Bool)

(assert (=> b!5013763 (= e!3132267 (and (inv!76094 (xs!18650 (c!856292 input!5597))) e!3132268))))

(assert (=> b!5013026 (= tp!1406044 (and (inv!76086 (c!856292 input!5597)) e!3132267))))

(assert (= (and b!5013026 ((_ is Node!15324) (c!856292 input!5597))) b!5013762))

(assert (= b!5013763 b!5013764))

(assert (= (and b!5013026 ((_ is Leaf!25435) (c!856292 input!5597))) b!5013763))

(declare-fun m!6048508 () Bool)

(assert (=> b!5013762 m!6048508))

(declare-fun m!6048510 () Bool)

(assert (=> b!5013762 m!6048510))

(declare-fun m!6048512 () Bool)

(assert (=> b!5013763 m!6048512))

(assert (=> b!5013026 m!6047762))

(declare-fun b!5013768 () Bool)

(declare-fun e!3132269 () Bool)

(declare-fun tp!1406162 () Bool)

(declare-fun tp!1406164 () Bool)

(assert (=> b!5013768 (= e!3132269 (and tp!1406162 tp!1406164))))

(declare-fun b!5013766 () Bool)

(declare-fun tp!1406160 () Bool)

(declare-fun tp!1406163 () Bool)

(assert (=> b!5013766 (= e!3132269 (and tp!1406160 tp!1406163))))

(declare-fun b!5013767 () Bool)

(declare-fun tp!1406161 () Bool)

(assert (=> b!5013767 (= e!3132269 tp!1406161)))

(declare-fun b!5013765 () Bool)

(assert (=> b!5013765 (= e!3132269 tp_is_empty!36607)))

(assert (=> b!5013036 (= tp!1406043 e!3132269)))

(assert (= (and b!5013036 ((_ is ElementMatch!13805) (reg!14134 r!12727))) b!5013765))

(assert (= (and b!5013036 ((_ is Concat!22598) (reg!14134 r!12727))) b!5013766))

(assert (= (and b!5013036 ((_ is Star!13805) (reg!14134 r!12727))) b!5013767))

(assert (= (and b!5013036 ((_ is Union!13805) (reg!14134 r!12727))) b!5013768))

(check-sat (not d!1614397) (not d!1614227) (not d!1614211) (not b!5013643) (not b!5013170) (not bm!350127) (not b!5013026) (not d!1614259) (not b!5013021) (not b!5013150) (not b!5013679) (not b!5013646) (not b!5013519) (not b!5013763) (not bm!350126) (not d!1614261) (not b!5013663) (not bm!350124) (not b!5013667) (not d!1614209) (not b!5013739) (not b!5013756) (not b!5013451) (not b!5013678) (not b!5013714) (not d!1614379) (not b!5013700) (not b!5013518) (not b!5013705) (not b!5013708) (not b!5013440) (not d!1614371) (not d!1614315) (not b!5013515) (not b!5013299) (not d!1614311) (not b!5013297) (not b!5013702) (not b!5013441) (not b!5013691) (not b!5013446) (not b!5013749) (not b!5013456) (not b!5013738) (not b!5013682) (not b!5013452) (not b!5013740) (not d!1614377) (not bm!350063) (not b!5013701) (not b!5013681) (not b!5013731) (not d!1614369) (not b!5013668) (not b!5013687) (not b!5013061) (not b!5013512) (not b!5013658) (not b!5013457) (not b!5013751) (not b!5013460) (not d!1614317) (not b!5013688) (not b!5013690) (not d!1614365) (not b!5013637) (not b!5013726) (not b!5013149) (not b!5013730) (not bm!350092) (not d!1614391) (not b!5013685) (not b!5013309) (not b!5013669) (not b!5013761) (not b!5013706) (not b!5013666) (not b!5013428) (not b!5013166) (not b!5013454) (not b!5013308) (not b!5013296) (not d!1614383) (not bm!350056) (not b!5013198) (not b!5013652) (not bm!350132) (not bm!350131) (not b!5013767) (not b!5013734) (not b!5013768) (not b!5013225) (not bm!350064) (not b!5013728) (not d!1614263) (not b!5013762) (not b!5013298) (not d!1614199) (not b!5013169) (not b!5013664) (not b!5013323) (not d!1614321) (not b!5013190) (not b!5013689) (not bm!350128) (not d!1614395) (not b!5013661) (not d!1614339) (not d!1614249) (not b!5013656) (not b!5013750) (not d!1614201) (not bm!350125) (not d!1614343) (not b!5013665) (not d!1614273) (not d!1614319) (not b!5013645) (not b!5013445) (not b!5013764) (not b!5013453) (not setNonEmpty!28466) (not d!1614393) (not d!1614381) (not b!5013444) (not d!1614225) (not d!1614213) tp_is_empty!36607 (not d!1614253) (not b!5013167) (not bm!350129) (not b!5013735) (not b!5013727) (not b!5013732) (not bm!350130) (not bm!350123) (not b!5013736) (not b!5013657) (not b!5013686) (not b!5013766) (not d!1614389) (not b!5013442) (not b!5013711) (not d!1614309) (not b!5013430) (not b!5013459) (not b!5013060) (not d!1614375) (not b!5013703) (not b!5013654) (not d!1614255))
(check-sat)
