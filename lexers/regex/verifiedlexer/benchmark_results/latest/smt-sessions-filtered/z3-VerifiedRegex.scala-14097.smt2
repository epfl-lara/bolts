; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742394 () Bool)

(assert start!742394)

(declare-fun b!7837033 () Bool)

(declare-datatypes ((Unit!168796 0))(
  ( (Unit!168797) )
))
(declare-fun e!4634114 () Unit!168796)

(declare-fun Unit!168798 () Unit!168796)

(assert (=> b!7837033 (= e!4634114 Unit!168798)))

(declare-datatypes ((C!42304 0))(
  ( (C!42305 (val!31592 Int)) )
))
(declare-datatypes ((List!73826 0))(
  ( (Nil!73702) (Cons!73702 (h!80150 C!42304) (t!388561 List!73826)) )
))
(declare-fun s1Rec!453 () List!73826)

(declare-fun s1!4101 () List!73826)

(declare-fun s!14274 () List!73826)

(declare-fun lt!2677933 () Unit!168796)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1555 (List!73826 List!73826 List!73826) Unit!168796)

(assert (=> b!7837033 (= lt!2677933 (lemmaIsPrefixSameLengthThenSameList!1555 s1!4101 s1Rec!453 s!14274))))

(assert (=> b!7837033 false))

(declare-fun b!7837034 () Bool)

(declare-fun res!3117017 () Bool)

(declare-fun e!4634123 () Bool)

(assert (=> b!7837034 (=> (not res!3117017) (not e!4634123))))

(declare-datatypes ((Regex!20989 0))(
  ( (ElementMatch!20989 (c!1441194 C!42304)) (Concat!29834 (regOne!42490 Regex!20989) (regTwo!42490 Regex!20989)) (EmptyExpr!20989) (Star!20989 (reg!21318 Regex!20989)) (EmptyLang!20989) (Union!20989 (regOne!42491 Regex!20989) (regTwo!42491 Regex!20989)) )
))
(declare-fun r2!6199 () Regex!20989)

(declare-fun validRegex!11403 (Regex!20989) Bool)

(assert (=> b!7837034 (= res!3117017 (validRegex!11403 r2!6199))))

(declare-fun b!7837035 () Bool)

(declare-fun e!4634122 () Bool)

(declare-fun tp_is_empty!52333 () Bool)

(declare-fun tp!2318651 () Bool)

(assert (=> b!7837035 (= e!4634122 (and tp_is_empty!52333 tp!2318651))))

(declare-fun b!7837036 () Bool)

(declare-fun e!4634124 () Bool)

(declare-fun tp!2318645 () Bool)

(assert (=> b!7837036 (= e!4634124 (and tp_is_empty!52333 tp!2318645))))

(declare-fun b!7837038 () Bool)

(declare-fun e!4634121 () Bool)

(declare-fun e!4634117 () Bool)

(assert (=> b!7837038 (= e!4634121 e!4634117)))

(declare-fun res!3117022 () Bool)

(assert (=> b!7837038 (=> (not res!3117022) (not e!4634117))))

(declare-fun lt!2677939 () List!73826)

(assert (=> b!7837038 (= res!3117022 (= lt!2677939 s!14274))))

(declare-fun s2Rec!453 () List!73826)

(declare-fun ++!18023 (List!73826 List!73826) List!73826)

(assert (=> b!7837038 (= lt!2677939 (++!18023 s1Rec!453 s2Rec!453))))

(declare-fun b!7837039 () Bool)

(declare-fun e!4634119 () Unit!168796)

(declare-fun Unit!168799 () Unit!168796)

(assert (=> b!7837039 (= e!4634119 Unit!168799)))

(declare-fun lt!2677938 () Unit!168796)

(declare-fun s2!3721 () List!73826)

(declare-fun lemmaSamePrefixThenSameSuffix!2923 (List!73826 List!73826 List!73826 List!73826 List!73826) Unit!168796)

(assert (=> b!7837039 (= lt!2677938 (lemmaSamePrefixThenSameSuffix!2923 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7837039 false))

(declare-fun b!7837040 () Bool)

(declare-fun e!4634113 () Bool)

(assert (=> b!7837040 (= e!4634113 tp_is_empty!52333)))

(declare-fun b!7837041 () Bool)

(declare-fun tp!2318644 () Bool)

(declare-fun tp!2318655 () Bool)

(assert (=> b!7837041 (= e!4634113 (and tp!2318644 tp!2318655))))

(declare-fun b!7837042 () Bool)

(declare-fun res!3117019 () Bool)

(assert (=> b!7837042 (=> (not res!3117019) (not e!4634117))))

(declare-fun e!4634118 () Bool)

(assert (=> b!7837042 (= res!3117019 e!4634118)))

(declare-fun res!3117014 () Bool)

(assert (=> b!7837042 (=> res!3117014 e!4634118)))

(declare-fun r1!6261 () Regex!20989)

(declare-fun matchR!10445 (Regex!20989 List!73826) Bool)

(assert (=> b!7837042 (= res!3117014 (not (matchR!10445 r1!6261 s1Rec!453)))))

(declare-fun b!7837043 () Bool)

(declare-fun e!4634120 () Bool)

(declare-fun tp!2318652 () Bool)

(assert (=> b!7837043 (= e!4634120 tp!2318652)))

(declare-fun b!7837044 () Bool)

(declare-fun e!4634115 () Bool)

(declare-fun tp!2318654 () Bool)

(assert (=> b!7837044 (= e!4634115 (and tp_is_empty!52333 tp!2318654))))

(declare-fun b!7837045 () Bool)

(declare-fun size!42779 (List!73826) Int)

(assert (=> b!7837045 (= e!4634117 (not (< (size!42779 (t!388561 s2Rec!453)) (size!42779 s2Rec!453))))))

(declare-fun lt!2677932 () List!73826)

(declare-fun isPrefix!6339 (List!73826 List!73826) Bool)

(assert (=> b!7837045 (isPrefix!6339 lt!2677932 s1!4101)))

(declare-fun lt!2677942 () Unit!168796)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!945 (List!73826 List!73826 List!73826) Unit!168796)

(assert (=> b!7837045 (= lt!2677942 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!945 s1!4101 lt!2677932 s!14274))))

(declare-fun lt!2677931 () Unit!168796)

(assert (=> b!7837045 (= lt!2677931 e!4634114)))

(declare-fun c!1441192 () Bool)

(assert (=> b!7837045 (= c!1441192 (= (size!42779 s1Rec!453) (size!42779 s1!4101)))))

(declare-fun lt!2677934 () List!73826)

(assert (=> b!7837045 (isPrefix!6339 lt!2677932 lt!2677934)))

(declare-fun lt!2677930 () Unit!168796)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3785 (List!73826 List!73826) Unit!168796)

(assert (=> b!7837045 (= lt!2677930 (lemmaConcatTwoListThenFirstIsPrefix!3785 lt!2677932 (t!388561 s2Rec!453)))))

(assert (=> b!7837045 (= lt!2677934 s!14274)))

(assert (=> b!7837045 (= lt!2677934 (++!18023 lt!2677932 (t!388561 s2Rec!453)))))

(assert (=> b!7837045 (= lt!2677932 (++!18023 s1Rec!453 (Cons!73702 (h!80150 s2Rec!453) Nil!73702)))))

(declare-fun lt!2677935 () Unit!168796)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3450 (List!73826 C!42304 List!73826 List!73826) Unit!168796)

(assert (=> b!7837045 (= lt!2677935 (lemmaMoveElementToOtherListKeepsConcatEq!3450 s1Rec!453 (h!80150 s2Rec!453) (t!388561 s2Rec!453) s!14274))))

(declare-fun lt!2677940 () Unit!168796)

(assert (=> b!7837045 (= lt!2677940 e!4634119)))

(declare-fun c!1441193 () Bool)

(assert (=> b!7837045 (= c!1441193 (= s1Rec!453 s1!4101))))

(assert (=> b!7837045 (isPrefix!6339 s1Rec!453 lt!2677939)))

(declare-fun lt!2677941 () Unit!168796)

(assert (=> b!7837045 (= lt!2677941 (lemmaConcatTwoListThenFirstIsPrefix!3785 s1Rec!453 s2Rec!453))))

(declare-fun lt!2677937 () List!73826)

(assert (=> b!7837045 (isPrefix!6339 s1!4101 lt!2677937)))

(declare-fun lt!2677936 () Unit!168796)

(assert (=> b!7837045 (= lt!2677936 (lemmaConcatTwoListThenFirstIsPrefix!3785 s1!4101 s2!3721))))

(declare-fun b!7837046 () Bool)

(declare-fun tp!2318653 () Bool)

(declare-fun tp!2318647 () Bool)

(assert (=> b!7837046 (= e!4634120 (and tp!2318653 tp!2318647))))

(declare-fun b!7837047 () Bool)

(declare-fun tp!2318649 () Bool)

(declare-fun tp!2318642 () Bool)

(assert (=> b!7837047 (= e!4634113 (and tp!2318649 tp!2318642))))

(declare-fun b!7837048 () Bool)

(declare-fun tp!2318648 () Bool)

(assert (=> b!7837048 (= e!4634113 tp!2318648)))

(declare-fun b!7837049 () Bool)

(assert (=> b!7837049 (= e!4634120 tp_is_empty!52333)))

(declare-fun b!7837050 () Bool)

(declare-fun res!3117016 () Bool)

(assert (=> b!7837050 (=> (not res!3117016) (not e!4634117))))

(assert (=> b!7837050 (= res!3117016 (matchR!10445 r2!6199 s2!3721))))

(declare-fun b!7837051 () Bool)

(declare-fun Unit!168800 () Unit!168796)

(assert (=> b!7837051 (= e!4634114 Unit!168800)))

(declare-fun b!7837037 () Bool)

(declare-fun e!4634116 () Bool)

(declare-fun tp!2318650 () Bool)

(assert (=> b!7837037 (= e!4634116 (and tp_is_empty!52333 tp!2318650))))

(declare-fun res!3117018 () Bool)

(assert (=> start!742394 (=> (not res!3117018) (not e!4634123))))

(assert (=> start!742394 (= res!3117018 (validRegex!11403 r1!6261))))

(assert (=> start!742394 e!4634123))

(assert (=> start!742394 e!4634113))

(declare-fun e!4634125 () Bool)

(assert (=> start!742394 e!4634125))

(assert (=> start!742394 e!4634116))

(assert (=> start!742394 e!4634122))

(assert (=> start!742394 e!4634124))

(assert (=> start!742394 e!4634120))

(assert (=> start!742394 e!4634115))

(declare-fun b!7837052 () Bool)

(declare-fun res!3117020 () Bool)

(assert (=> b!7837052 (=> (not res!3117020) (not e!4634121))))

(assert (=> b!7837052 (= res!3117020 (isPrefix!6339 s1Rec!453 s1!4101))))

(declare-fun b!7837053 () Bool)

(declare-fun res!3117013 () Bool)

(assert (=> b!7837053 (=> (not res!3117013) (not e!4634117))))

(get-info :version)

(assert (=> b!7837053 (= res!3117013 (not ((_ is Nil!73702) s2Rec!453)))))

(declare-fun b!7837054 () Bool)

(declare-fun res!3117015 () Bool)

(assert (=> b!7837054 (=> (not res!3117015) (not e!4634117))))

(assert (=> b!7837054 (= res!3117015 (matchR!10445 r1!6261 s1!4101))))

(declare-fun b!7837055 () Bool)

(assert (=> b!7837055 (= e!4634123 e!4634121)))

(declare-fun res!3117021 () Bool)

(assert (=> b!7837055 (=> (not res!3117021) (not e!4634121))))

(assert (=> b!7837055 (= res!3117021 (= lt!2677937 s!14274))))

(assert (=> b!7837055 (= lt!2677937 (++!18023 s1!4101 s2!3721))))

(declare-fun b!7837056 () Bool)

(declare-fun tp!2318641 () Bool)

(assert (=> b!7837056 (= e!4634125 (and tp_is_empty!52333 tp!2318641))))

(declare-fun b!7837057 () Bool)

(assert (=> b!7837057 (= e!4634118 (not (matchR!10445 r2!6199 s2Rec!453)))))

(declare-fun b!7837058 () Bool)

(declare-fun tp!2318646 () Bool)

(declare-fun tp!2318643 () Bool)

(assert (=> b!7837058 (= e!4634120 (and tp!2318646 tp!2318643))))

(declare-fun b!7837059 () Bool)

(declare-fun Unit!168801 () Unit!168796)

(assert (=> b!7837059 (= e!4634119 Unit!168801)))

(assert (= (and start!742394 res!3117018) b!7837034))

(assert (= (and b!7837034 res!3117017) b!7837055))

(assert (= (and b!7837055 res!3117021) b!7837052))

(assert (= (and b!7837052 res!3117020) b!7837038))

(assert (= (and b!7837038 res!3117022) b!7837054))

(assert (= (and b!7837054 res!3117015) b!7837050))

(assert (= (and b!7837050 res!3117016) b!7837042))

(assert (= (and b!7837042 (not res!3117014)) b!7837057))

(assert (= (and b!7837042 res!3117019) b!7837053))

(assert (= (and b!7837053 res!3117013) b!7837045))

(assert (= (and b!7837045 c!1441193) b!7837039))

(assert (= (and b!7837045 (not c!1441193)) b!7837059))

(assert (= (and b!7837045 c!1441192) b!7837033))

(assert (= (and b!7837045 (not c!1441192)) b!7837051))

(assert (= (and start!742394 ((_ is ElementMatch!20989) r2!6199)) b!7837040))

(assert (= (and start!742394 ((_ is Concat!29834) r2!6199)) b!7837047))

(assert (= (and start!742394 ((_ is Star!20989) r2!6199)) b!7837048))

(assert (= (and start!742394 ((_ is Union!20989) r2!6199)) b!7837041))

(assert (= (and start!742394 ((_ is Cons!73702) s1!4101)) b!7837056))

(assert (= (and start!742394 ((_ is Cons!73702) s2!3721)) b!7837037))

(assert (= (and start!742394 ((_ is Cons!73702) s2Rec!453)) b!7837035))

(assert (= (and start!742394 ((_ is Cons!73702) s!14274)) b!7837036))

(assert (= (and start!742394 ((_ is ElementMatch!20989) r1!6261)) b!7837049))

(assert (= (and start!742394 ((_ is Concat!29834) r1!6261)) b!7837046))

(assert (= (and start!742394 ((_ is Star!20989) r1!6261)) b!7837043))

(assert (= (and start!742394 ((_ is Union!20989) r1!6261)) b!7837058))

(assert (= (and start!742394 ((_ is Cons!73702) s1Rec!453)) b!7837044))

(declare-fun m!8251662 () Bool)

(assert (=> b!7837038 m!8251662))

(declare-fun m!8251664 () Bool)

(assert (=> b!7837054 m!8251664))

(declare-fun m!8251666 () Bool)

(assert (=> b!7837055 m!8251666))

(declare-fun m!8251668 () Bool)

(assert (=> b!7837050 m!8251668))

(declare-fun m!8251670 () Bool)

(assert (=> b!7837045 m!8251670))

(declare-fun m!8251672 () Bool)

(assert (=> b!7837045 m!8251672))

(declare-fun m!8251674 () Bool)

(assert (=> b!7837045 m!8251674))

(declare-fun m!8251676 () Bool)

(assert (=> b!7837045 m!8251676))

(declare-fun m!8251678 () Bool)

(assert (=> b!7837045 m!8251678))

(declare-fun m!8251680 () Bool)

(assert (=> b!7837045 m!8251680))

(declare-fun m!8251682 () Bool)

(assert (=> b!7837045 m!8251682))

(declare-fun m!8251684 () Bool)

(assert (=> b!7837045 m!8251684))

(declare-fun m!8251686 () Bool)

(assert (=> b!7837045 m!8251686))

(declare-fun m!8251688 () Bool)

(assert (=> b!7837045 m!8251688))

(declare-fun m!8251690 () Bool)

(assert (=> b!7837045 m!8251690))

(declare-fun m!8251692 () Bool)

(assert (=> b!7837045 m!8251692))

(declare-fun m!8251694 () Bool)

(assert (=> b!7837045 m!8251694))

(declare-fun m!8251696 () Bool)

(assert (=> b!7837045 m!8251696))

(declare-fun m!8251698 () Bool)

(assert (=> b!7837045 m!8251698))

(declare-fun m!8251700 () Bool)

(assert (=> b!7837033 m!8251700))

(declare-fun m!8251702 () Bool)

(assert (=> b!7837052 m!8251702))

(declare-fun m!8251704 () Bool)

(assert (=> b!7837039 m!8251704))

(declare-fun m!8251706 () Bool)

(assert (=> b!7837042 m!8251706))

(declare-fun m!8251708 () Bool)

(assert (=> b!7837057 m!8251708))

(declare-fun m!8251710 () Bool)

(assert (=> b!7837034 m!8251710))

(declare-fun m!8251712 () Bool)

(assert (=> start!742394 m!8251712))

(check-sat (not b!7837045) (not b!7837041) (not b!7837043) (not b!7837055) (not b!7837044) (not b!7837042) (not b!7837047) (not b!7837046) (not b!7837039) (not b!7837058) (not b!7837050) (not b!7837052) (not b!7837056) (not b!7837033) (not b!7837048) tp_is_empty!52333 (not b!7837038) (not start!742394) (not b!7837037) (not b!7837035) (not b!7837057) (not b!7837036) (not b!7837054) (not b!7837034))
(check-sat)
(get-model)

(declare-fun b!7837088 () Bool)

(declare-fun res!3117042 () Bool)

(declare-fun e!4634145 () Bool)

(assert (=> b!7837088 (=> res!3117042 e!4634145)))

(declare-fun e!4634146 () Bool)

(assert (=> b!7837088 (= res!3117042 e!4634146)))

(declare-fun res!3117045 () Bool)

(assert (=> b!7837088 (=> (not res!3117045) (not e!4634146))))

(declare-fun lt!2677945 () Bool)

(assert (=> b!7837088 (= res!3117045 lt!2677945)))

(declare-fun b!7837089 () Bool)

(declare-fun res!3117041 () Bool)

(assert (=> b!7837089 (=> (not res!3117041) (not e!4634146))))

(declare-fun call!726537 () Bool)

(assert (=> b!7837089 (= res!3117041 (not call!726537))))

(declare-fun b!7837090 () Bool)

(declare-fun res!3117039 () Bool)

(assert (=> b!7837090 (=> (not res!3117039) (not e!4634146))))

(declare-fun isEmpty!42296 (List!73826) Bool)

(declare-fun tail!15536 (List!73826) List!73826)

(assert (=> b!7837090 (= res!3117039 (isEmpty!42296 (tail!15536 s1Rec!453)))))

(declare-fun d!2351730 () Bool)

(declare-fun e!4634143 () Bool)

(assert (=> d!2351730 e!4634143))

(declare-fun c!1441203 () Bool)

(assert (=> d!2351730 (= c!1441203 ((_ is EmptyExpr!20989) r1!6261))))

(declare-fun e!4634144 () Bool)

(assert (=> d!2351730 (= lt!2677945 e!4634144)))

(declare-fun c!1441202 () Bool)

(assert (=> d!2351730 (= c!1441202 (isEmpty!42296 s1Rec!453))))

(assert (=> d!2351730 (validRegex!11403 r1!6261)))

(assert (=> d!2351730 (= (matchR!10445 r1!6261 s1Rec!453) lt!2677945)))

(declare-fun b!7837091 () Bool)

(declare-fun e!4634141 () Bool)

(declare-fun e!4634140 () Bool)

(assert (=> b!7837091 (= e!4634141 e!4634140)))

(declare-fun res!3117040 () Bool)

(assert (=> b!7837091 (=> res!3117040 e!4634140)))

(assert (=> b!7837091 (= res!3117040 call!726537)))

(declare-fun b!7837092 () Bool)

(declare-fun e!4634142 () Bool)

(assert (=> b!7837092 (= e!4634142 (not lt!2677945))))

(declare-fun b!7837093 () Bool)

(declare-fun res!3117044 () Bool)

(assert (=> b!7837093 (=> res!3117044 e!4634145)))

(assert (=> b!7837093 (= res!3117044 (not ((_ is ElementMatch!20989) r1!6261)))))

(assert (=> b!7837093 (= e!4634142 e!4634145)))

(declare-fun b!7837094 () Bool)

(declare-fun head!15995 (List!73826) C!42304)

(assert (=> b!7837094 (= e!4634140 (not (= (head!15995 s1Rec!453) (c!1441194 r1!6261))))))

(declare-fun b!7837095 () Bool)

(assert (=> b!7837095 (= e!4634143 e!4634142)))

(declare-fun c!1441201 () Bool)

(assert (=> b!7837095 (= c!1441201 ((_ is EmptyLang!20989) r1!6261))))

(declare-fun b!7837096 () Bool)

(assert (=> b!7837096 (= e!4634145 e!4634141)))

(declare-fun res!3117046 () Bool)

(assert (=> b!7837096 (=> (not res!3117046) (not e!4634141))))

(assert (=> b!7837096 (= res!3117046 (not lt!2677945))))

(declare-fun b!7837097 () Bool)

(declare-fun nullable!9306 (Regex!20989) Bool)

(assert (=> b!7837097 (= e!4634144 (nullable!9306 r1!6261))))

(declare-fun b!7837098 () Bool)

(declare-fun derivativeStep!6265 (Regex!20989 C!42304) Regex!20989)

(assert (=> b!7837098 (= e!4634144 (matchR!10445 (derivativeStep!6265 r1!6261 (head!15995 s1Rec!453)) (tail!15536 s1Rec!453)))))

(declare-fun bm!726532 () Bool)

(assert (=> bm!726532 (= call!726537 (isEmpty!42296 s1Rec!453))))

(declare-fun b!7837099 () Bool)

(assert (=> b!7837099 (= e!4634143 (= lt!2677945 call!726537))))

(declare-fun b!7837100 () Bool)

(declare-fun res!3117043 () Bool)

(assert (=> b!7837100 (=> res!3117043 e!4634140)))

(assert (=> b!7837100 (= res!3117043 (not (isEmpty!42296 (tail!15536 s1Rec!453))))))

(declare-fun b!7837101 () Bool)

(assert (=> b!7837101 (= e!4634146 (= (head!15995 s1Rec!453) (c!1441194 r1!6261)))))

(assert (= (and d!2351730 c!1441202) b!7837097))

(assert (= (and d!2351730 (not c!1441202)) b!7837098))

(assert (= (and d!2351730 c!1441203) b!7837099))

(assert (= (and d!2351730 (not c!1441203)) b!7837095))

(assert (= (and b!7837095 c!1441201) b!7837092))

(assert (= (and b!7837095 (not c!1441201)) b!7837093))

(assert (= (and b!7837093 (not res!3117044)) b!7837088))

(assert (= (and b!7837088 res!3117045) b!7837089))

(assert (= (and b!7837089 res!3117041) b!7837090))

(assert (= (and b!7837090 res!3117039) b!7837101))

(assert (= (and b!7837088 (not res!3117042)) b!7837096))

(assert (= (and b!7837096 res!3117046) b!7837091))

(assert (= (and b!7837091 (not res!3117040)) b!7837100))

(assert (= (and b!7837100 (not res!3117043)) b!7837094))

(assert (= (or b!7837099 b!7837089 b!7837091) bm!726532))

(declare-fun m!8251714 () Bool)

(assert (=> b!7837097 m!8251714))

(declare-fun m!8251716 () Bool)

(assert (=> d!2351730 m!8251716))

(assert (=> d!2351730 m!8251712))

(declare-fun m!8251718 () Bool)

(assert (=> b!7837100 m!8251718))

(assert (=> b!7837100 m!8251718))

(declare-fun m!8251720 () Bool)

(assert (=> b!7837100 m!8251720))

(assert (=> b!7837090 m!8251718))

(assert (=> b!7837090 m!8251718))

(assert (=> b!7837090 m!8251720))

(declare-fun m!8251722 () Bool)

(assert (=> b!7837098 m!8251722))

(assert (=> b!7837098 m!8251722))

(declare-fun m!8251724 () Bool)

(assert (=> b!7837098 m!8251724))

(assert (=> b!7837098 m!8251718))

(assert (=> b!7837098 m!8251724))

(assert (=> b!7837098 m!8251718))

(declare-fun m!8251726 () Bool)

(assert (=> b!7837098 m!8251726))

(assert (=> bm!726532 m!8251716))

(assert (=> b!7837101 m!8251722))

(assert (=> b!7837094 m!8251722))

(assert (=> b!7837042 d!2351730))

(declare-fun b!7837124 () Bool)

(declare-fun res!3117051 () Bool)

(declare-fun e!4634157 () Bool)

(assert (=> b!7837124 (=> (not res!3117051) (not e!4634157))))

(declare-fun lt!2677950 () List!73826)

(assert (=> b!7837124 (= res!3117051 (= (size!42779 lt!2677950) (+ (size!42779 s1!4101) (size!42779 s2!3721))))))

(declare-fun d!2351734 () Bool)

(assert (=> d!2351734 e!4634157))

(declare-fun res!3117052 () Bool)

(assert (=> d!2351734 (=> (not res!3117052) (not e!4634157))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15647 (List!73826) (InoxSet C!42304))

(assert (=> d!2351734 (= res!3117052 (= (content!15647 lt!2677950) ((_ map or) (content!15647 s1!4101) (content!15647 s2!3721))))))

(declare-fun e!4634158 () List!73826)

(assert (=> d!2351734 (= lt!2677950 e!4634158)))

(declare-fun c!1441212 () Bool)

(assert (=> d!2351734 (= c!1441212 ((_ is Nil!73702) s1!4101))))

(assert (=> d!2351734 (= (++!18023 s1!4101 s2!3721) lt!2677950)))

(declare-fun b!7837122 () Bool)

(assert (=> b!7837122 (= e!4634158 s2!3721)))

(declare-fun b!7837125 () Bool)

(assert (=> b!7837125 (= e!4634157 (or (not (= s2!3721 Nil!73702)) (= lt!2677950 s1!4101)))))

(declare-fun b!7837123 () Bool)

(assert (=> b!7837123 (= e!4634158 (Cons!73702 (h!80150 s1!4101) (++!18023 (t!388561 s1!4101) s2!3721)))))

(assert (= (and d!2351734 c!1441212) b!7837122))

(assert (= (and d!2351734 (not c!1441212)) b!7837123))

(assert (= (and d!2351734 res!3117052) b!7837124))

(assert (= (and b!7837124 res!3117051) b!7837125))

(declare-fun m!8251728 () Bool)

(assert (=> b!7837124 m!8251728))

(assert (=> b!7837124 m!8251694))

(declare-fun m!8251730 () Bool)

(assert (=> b!7837124 m!8251730))

(declare-fun m!8251732 () Bool)

(assert (=> d!2351734 m!8251732))

(declare-fun m!8251734 () Bool)

(assert (=> d!2351734 m!8251734))

(declare-fun m!8251736 () Bool)

(assert (=> d!2351734 m!8251736))

(declare-fun m!8251738 () Bool)

(assert (=> b!7837123 m!8251738))

(assert (=> b!7837055 d!2351734))

(declare-fun b!7837142 () Bool)

(declare-fun res!3117072 () Bool)

(declare-fun e!4634172 () Bool)

(assert (=> b!7837142 (=> res!3117072 e!4634172)))

(declare-fun e!4634173 () Bool)

(assert (=> b!7837142 (= res!3117072 e!4634173)))

(declare-fun res!3117075 () Bool)

(assert (=> b!7837142 (=> (not res!3117075) (not e!4634173))))

(declare-fun lt!2677951 () Bool)

(assert (=> b!7837142 (= res!3117075 lt!2677951)))

(declare-fun b!7837143 () Bool)

(declare-fun res!3117071 () Bool)

(assert (=> b!7837143 (=> (not res!3117071) (not e!4634173))))

(declare-fun call!726538 () Bool)

(assert (=> b!7837143 (= res!3117071 (not call!726538))))

(declare-fun b!7837144 () Bool)

(declare-fun res!3117069 () Bool)

(assert (=> b!7837144 (=> (not res!3117069) (not e!4634173))))

(assert (=> b!7837144 (= res!3117069 (isEmpty!42296 (tail!15536 s1!4101)))))

(declare-fun d!2351736 () Bool)

(declare-fun e!4634170 () Bool)

(assert (=> d!2351736 e!4634170))

(declare-fun c!1441215 () Bool)

(assert (=> d!2351736 (= c!1441215 ((_ is EmptyExpr!20989) r1!6261))))

(declare-fun e!4634171 () Bool)

(assert (=> d!2351736 (= lt!2677951 e!4634171)))

(declare-fun c!1441214 () Bool)

(assert (=> d!2351736 (= c!1441214 (isEmpty!42296 s1!4101))))

(assert (=> d!2351736 (validRegex!11403 r1!6261)))

(assert (=> d!2351736 (= (matchR!10445 r1!6261 s1!4101) lt!2677951)))

(declare-fun b!7837145 () Bool)

(declare-fun e!4634168 () Bool)

(declare-fun e!4634167 () Bool)

(assert (=> b!7837145 (= e!4634168 e!4634167)))

(declare-fun res!3117070 () Bool)

(assert (=> b!7837145 (=> res!3117070 e!4634167)))

(assert (=> b!7837145 (= res!3117070 call!726538)))

(declare-fun b!7837146 () Bool)

(declare-fun e!4634169 () Bool)

(assert (=> b!7837146 (= e!4634169 (not lt!2677951))))

(declare-fun b!7837147 () Bool)

(declare-fun res!3117074 () Bool)

(assert (=> b!7837147 (=> res!3117074 e!4634172)))

(assert (=> b!7837147 (= res!3117074 (not ((_ is ElementMatch!20989) r1!6261)))))

(assert (=> b!7837147 (= e!4634169 e!4634172)))

(declare-fun b!7837148 () Bool)

(assert (=> b!7837148 (= e!4634167 (not (= (head!15995 s1!4101) (c!1441194 r1!6261))))))

(declare-fun b!7837149 () Bool)

(assert (=> b!7837149 (= e!4634170 e!4634169)))

(declare-fun c!1441213 () Bool)

(assert (=> b!7837149 (= c!1441213 ((_ is EmptyLang!20989) r1!6261))))

(declare-fun b!7837150 () Bool)

(assert (=> b!7837150 (= e!4634172 e!4634168)))

(declare-fun res!3117076 () Bool)

(assert (=> b!7837150 (=> (not res!3117076) (not e!4634168))))

(assert (=> b!7837150 (= res!3117076 (not lt!2677951))))

(declare-fun b!7837151 () Bool)

(assert (=> b!7837151 (= e!4634171 (nullable!9306 r1!6261))))

(declare-fun b!7837152 () Bool)

(assert (=> b!7837152 (= e!4634171 (matchR!10445 (derivativeStep!6265 r1!6261 (head!15995 s1!4101)) (tail!15536 s1!4101)))))

(declare-fun bm!726533 () Bool)

(assert (=> bm!726533 (= call!726538 (isEmpty!42296 s1!4101))))

(declare-fun b!7837153 () Bool)

(assert (=> b!7837153 (= e!4634170 (= lt!2677951 call!726538))))

(declare-fun b!7837154 () Bool)

(declare-fun res!3117073 () Bool)

(assert (=> b!7837154 (=> res!3117073 e!4634167)))

(assert (=> b!7837154 (= res!3117073 (not (isEmpty!42296 (tail!15536 s1!4101))))))

(declare-fun b!7837155 () Bool)

(assert (=> b!7837155 (= e!4634173 (= (head!15995 s1!4101) (c!1441194 r1!6261)))))

(assert (= (and d!2351736 c!1441214) b!7837151))

(assert (= (and d!2351736 (not c!1441214)) b!7837152))

(assert (= (and d!2351736 c!1441215) b!7837153))

(assert (= (and d!2351736 (not c!1441215)) b!7837149))

(assert (= (and b!7837149 c!1441213) b!7837146))

(assert (= (and b!7837149 (not c!1441213)) b!7837147))

(assert (= (and b!7837147 (not res!3117074)) b!7837142))

(assert (= (and b!7837142 res!3117075) b!7837143))

(assert (= (and b!7837143 res!3117071) b!7837144))

(assert (= (and b!7837144 res!3117069) b!7837155))

(assert (= (and b!7837142 (not res!3117072)) b!7837150))

(assert (= (and b!7837150 res!3117076) b!7837145))

(assert (= (and b!7837145 (not res!3117070)) b!7837154))

(assert (= (and b!7837154 (not res!3117073)) b!7837148))

(assert (= (or b!7837153 b!7837143 b!7837145) bm!726533))

(assert (=> b!7837151 m!8251714))

(declare-fun m!8251740 () Bool)

(assert (=> d!2351736 m!8251740))

(assert (=> d!2351736 m!8251712))

(declare-fun m!8251742 () Bool)

(assert (=> b!7837154 m!8251742))

(assert (=> b!7837154 m!8251742))

(declare-fun m!8251744 () Bool)

(assert (=> b!7837154 m!8251744))

(assert (=> b!7837144 m!8251742))

(assert (=> b!7837144 m!8251742))

(assert (=> b!7837144 m!8251744))

(declare-fun m!8251746 () Bool)

(assert (=> b!7837152 m!8251746))

(assert (=> b!7837152 m!8251746))

(declare-fun m!8251748 () Bool)

(assert (=> b!7837152 m!8251748))

(assert (=> b!7837152 m!8251742))

(assert (=> b!7837152 m!8251748))

(assert (=> b!7837152 m!8251742))

(declare-fun m!8251750 () Bool)

(assert (=> b!7837152 m!8251750))

(assert (=> bm!726533 m!8251740))

(assert (=> b!7837155 m!8251746))

(assert (=> b!7837148 m!8251746))

(assert (=> b!7837054 d!2351736))

(declare-fun d!2351738 () Bool)

(assert (=> d!2351738 (= s1!4101 s1Rec!453)))

(declare-fun lt!2677954 () Unit!168796)

(declare-fun choose!59596 (List!73826 List!73826 List!73826) Unit!168796)

(assert (=> d!2351738 (= lt!2677954 (choose!59596 s1!4101 s1Rec!453 s!14274))))

(assert (=> d!2351738 (isPrefix!6339 s1!4101 s!14274)))

(assert (=> d!2351738 (= (lemmaIsPrefixSameLengthThenSameList!1555 s1!4101 s1Rec!453 s!14274) lt!2677954)))

(declare-fun bs!1966886 () Bool)

(assert (= bs!1966886 d!2351738))

(declare-fun m!8251752 () Bool)

(assert (=> bs!1966886 m!8251752))

(declare-fun m!8251754 () Bool)

(assert (=> bs!1966886 m!8251754))

(assert (=> b!7837033 d!2351738))

(declare-fun b!7837156 () Bool)

(declare-fun res!3117080 () Bool)

(declare-fun e!4634179 () Bool)

(assert (=> b!7837156 (=> res!3117080 e!4634179)))

(declare-fun e!4634180 () Bool)

(assert (=> b!7837156 (= res!3117080 e!4634180)))

(declare-fun res!3117083 () Bool)

(assert (=> b!7837156 (=> (not res!3117083) (not e!4634180))))

(declare-fun lt!2677955 () Bool)

(assert (=> b!7837156 (= res!3117083 lt!2677955)))

(declare-fun b!7837157 () Bool)

(declare-fun res!3117079 () Bool)

(assert (=> b!7837157 (=> (not res!3117079) (not e!4634180))))

(declare-fun call!726541 () Bool)

(assert (=> b!7837157 (= res!3117079 (not call!726541))))

(declare-fun b!7837158 () Bool)

(declare-fun res!3117077 () Bool)

(assert (=> b!7837158 (=> (not res!3117077) (not e!4634180))))

(assert (=> b!7837158 (= res!3117077 (isEmpty!42296 (tail!15536 s2!3721)))))

(declare-fun d!2351740 () Bool)

(declare-fun e!4634177 () Bool)

(assert (=> d!2351740 e!4634177))

(declare-fun c!1441218 () Bool)

(assert (=> d!2351740 (= c!1441218 ((_ is EmptyExpr!20989) r2!6199))))

(declare-fun e!4634178 () Bool)

(assert (=> d!2351740 (= lt!2677955 e!4634178)))

(declare-fun c!1441217 () Bool)

(assert (=> d!2351740 (= c!1441217 (isEmpty!42296 s2!3721))))

(assert (=> d!2351740 (validRegex!11403 r2!6199)))

(assert (=> d!2351740 (= (matchR!10445 r2!6199 s2!3721) lt!2677955)))

(declare-fun b!7837159 () Bool)

(declare-fun e!4634175 () Bool)

(declare-fun e!4634174 () Bool)

(assert (=> b!7837159 (= e!4634175 e!4634174)))

(declare-fun res!3117078 () Bool)

(assert (=> b!7837159 (=> res!3117078 e!4634174)))

(assert (=> b!7837159 (= res!3117078 call!726541)))

(declare-fun b!7837160 () Bool)

(declare-fun e!4634176 () Bool)

(assert (=> b!7837160 (= e!4634176 (not lt!2677955))))

(declare-fun b!7837161 () Bool)

(declare-fun res!3117082 () Bool)

(assert (=> b!7837161 (=> res!3117082 e!4634179)))

(assert (=> b!7837161 (= res!3117082 (not ((_ is ElementMatch!20989) r2!6199)))))

(assert (=> b!7837161 (= e!4634176 e!4634179)))

(declare-fun b!7837162 () Bool)

(assert (=> b!7837162 (= e!4634174 (not (= (head!15995 s2!3721) (c!1441194 r2!6199))))))

(declare-fun b!7837163 () Bool)

(assert (=> b!7837163 (= e!4634177 e!4634176)))

(declare-fun c!1441216 () Bool)

(assert (=> b!7837163 (= c!1441216 ((_ is EmptyLang!20989) r2!6199))))

(declare-fun b!7837164 () Bool)

(assert (=> b!7837164 (= e!4634179 e!4634175)))

(declare-fun res!3117084 () Bool)

(assert (=> b!7837164 (=> (not res!3117084) (not e!4634175))))

(assert (=> b!7837164 (= res!3117084 (not lt!2677955))))

(declare-fun b!7837165 () Bool)

(assert (=> b!7837165 (= e!4634178 (nullable!9306 r2!6199))))

(declare-fun b!7837166 () Bool)

(assert (=> b!7837166 (= e!4634178 (matchR!10445 (derivativeStep!6265 r2!6199 (head!15995 s2!3721)) (tail!15536 s2!3721)))))

(declare-fun bm!726536 () Bool)

(assert (=> bm!726536 (= call!726541 (isEmpty!42296 s2!3721))))

(declare-fun b!7837167 () Bool)

(assert (=> b!7837167 (= e!4634177 (= lt!2677955 call!726541))))

(declare-fun b!7837168 () Bool)

(declare-fun res!3117081 () Bool)

(assert (=> b!7837168 (=> res!3117081 e!4634174)))

(assert (=> b!7837168 (= res!3117081 (not (isEmpty!42296 (tail!15536 s2!3721))))))

(declare-fun b!7837169 () Bool)

(assert (=> b!7837169 (= e!4634180 (= (head!15995 s2!3721) (c!1441194 r2!6199)))))

(assert (= (and d!2351740 c!1441217) b!7837165))

(assert (= (and d!2351740 (not c!1441217)) b!7837166))

(assert (= (and d!2351740 c!1441218) b!7837167))

(assert (= (and d!2351740 (not c!1441218)) b!7837163))

(assert (= (and b!7837163 c!1441216) b!7837160))

(assert (= (and b!7837163 (not c!1441216)) b!7837161))

(assert (= (and b!7837161 (not res!3117082)) b!7837156))

(assert (= (and b!7837156 res!3117083) b!7837157))

(assert (= (and b!7837157 res!3117079) b!7837158))

(assert (= (and b!7837158 res!3117077) b!7837169))

(assert (= (and b!7837156 (not res!3117080)) b!7837164))

(assert (= (and b!7837164 res!3117084) b!7837159))

(assert (= (and b!7837159 (not res!3117078)) b!7837168))

(assert (= (and b!7837168 (not res!3117081)) b!7837162))

(assert (= (or b!7837167 b!7837157 b!7837159) bm!726536))

(declare-fun m!8251756 () Bool)

(assert (=> b!7837165 m!8251756))

(declare-fun m!8251758 () Bool)

(assert (=> d!2351740 m!8251758))

(assert (=> d!2351740 m!8251710))

(declare-fun m!8251760 () Bool)

(assert (=> b!7837168 m!8251760))

(assert (=> b!7837168 m!8251760))

(declare-fun m!8251762 () Bool)

(assert (=> b!7837168 m!8251762))

(assert (=> b!7837158 m!8251760))

(assert (=> b!7837158 m!8251760))

(assert (=> b!7837158 m!8251762))

(declare-fun m!8251764 () Bool)

(assert (=> b!7837166 m!8251764))

(assert (=> b!7837166 m!8251764))

(declare-fun m!8251766 () Bool)

(assert (=> b!7837166 m!8251766))

(assert (=> b!7837166 m!8251760))

(assert (=> b!7837166 m!8251766))

(assert (=> b!7837166 m!8251760))

(declare-fun m!8251768 () Bool)

(assert (=> b!7837166 m!8251768))

(assert (=> bm!726536 m!8251758))

(assert (=> b!7837169 m!8251764))

(assert (=> b!7837162 m!8251764))

(assert (=> b!7837050 d!2351740))

(declare-fun b!7837199 () Bool)

(declare-fun res!3117103 () Bool)

(declare-fun e!4634198 () Bool)

(assert (=> b!7837199 (=> (not res!3117103) (not e!4634198))))

(assert (=> b!7837199 (= res!3117103 (= (head!15995 s1Rec!453) (head!15995 s1!4101)))))

(declare-fun b!7837201 () Bool)

(declare-fun e!4634199 () Bool)

(assert (=> b!7837201 (= e!4634199 (>= (size!42779 s1!4101) (size!42779 s1Rec!453)))))

(declare-fun b!7837200 () Bool)

(assert (=> b!7837200 (= e!4634198 (isPrefix!6339 (tail!15536 s1Rec!453) (tail!15536 s1!4101)))))

(declare-fun b!7837198 () Bool)

(declare-fun e!4634197 () Bool)

(assert (=> b!7837198 (= e!4634197 e!4634198)))

(declare-fun res!3117102 () Bool)

(assert (=> b!7837198 (=> (not res!3117102) (not e!4634198))))

(assert (=> b!7837198 (= res!3117102 (not ((_ is Nil!73702) s1!4101)))))

(declare-fun d!2351742 () Bool)

(assert (=> d!2351742 e!4634199))

(declare-fun res!3117101 () Bool)

(assert (=> d!2351742 (=> res!3117101 e!4634199)))

(declare-fun lt!2677962 () Bool)

(assert (=> d!2351742 (= res!3117101 (not lt!2677962))))

(assert (=> d!2351742 (= lt!2677962 e!4634197)))

(declare-fun res!3117104 () Bool)

(assert (=> d!2351742 (=> res!3117104 e!4634197)))

(assert (=> d!2351742 (= res!3117104 ((_ is Nil!73702) s1Rec!453))))

(assert (=> d!2351742 (= (isPrefix!6339 s1Rec!453 s1!4101) lt!2677962)))

(assert (= (and d!2351742 (not res!3117104)) b!7837198))

(assert (= (and b!7837198 res!3117102) b!7837199))

(assert (= (and b!7837199 res!3117103) b!7837200))

(assert (= (and d!2351742 (not res!3117101)) b!7837201))

(assert (=> b!7837199 m!8251722))

(assert (=> b!7837199 m!8251746))

(assert (=> b!7837201 m!8251694))

(assert (=> b!7837201 m!8251698))

(assert (=> b!7837200 m!8251718))

(assert (=> b!7837200 m!8251742))

(assert (=> b!7837200 m!8251718))

(assert (=> b!7837200 m!8251742))

(declare-fun m!8251786 () Bool)

(assert (=> b!7837200 m!8251786))

(assert (=> b!7837052 d!2351742))

(declare-fun b!7837240 () Bool)

(declare-fun res!3117132 () Bool)

(declare-fun e!4634232 () Bool)

(assert (=> b!7837240 (=> res!3117132 e!4634232)))

(assert (=> b!7837240 (= res!3117132 (not ((_ is Concat!29834) r1!6261)))))

(declare-fun e!4634229 () Bool)

(assert (=> b!7837240 (= e!4634229 e!4634232)))

(declare-fun b!7837242 () Bool)

(declare-fun e!4634228 () Bool)

(assert (=> b!7837242 (= e!4634228 e!4634229)))

(declare-fun c!1441233 () Bool)

(assert (=> b!7837242 (= c!1441233 ((_ is Union!20989) r1!6261))))

(declare-fun b!7837243 () Bool)

(declare-fun e!4634226 () Bool)

(assert (=> b!7837243 (= e!4634226 e!4634228)))

(declare-fun c!1441232 () Bool)

(assert (=> b!7837243 (= c!1441232 ((_ is Star!20989) r1!6261))))

(declare-fun b!7837244 () Bool)

(declare-fun e!4634231 () Bool)

(declare-fun call!726550 () Bool)

(assert (=> b!7837244 (= e!4634231 call!726550)))

(declare-fun bm!726544 () Bool)

(assert (=> bm!726544 (= call!726550 (validRegex!11403 (ite c!1441232 (reg!21318 r1!6261) (ite c!1441233 (regTwo!42491 r1!6261) (regOne!42490 r1!6261)))))))

(declare-fun d!2351748 () Bool)

(declare-fun res!3117131 () Bool)

(assert (=> d!2351748 (=> res!3117131 e!4634226)))

(assert (=> d!2351748 (= res!3117131 ((_ is ElementMatch!20989) r1!6261))))

(assert (=> d!2351748 (= (validRegex!11403 r1!6261) e!4634226)))

(declare-fun b!7837241 () Bool)

(assert (=> b!7837241 (= e!4634228 e!4634231)))

(declare-fun res!3117130 () Bool)

(assert (=> b!7837241 (= res!3117130 (not (nullable!9306 (reg!21318 r1!6261))))))

(assert (=> b!7837241 (=> (not res!3117130) (not e!4634231))))

(declare-fun b!7837245 () Bool)

(declare-fun e!4634227 () Bool)

(declare-fun call!726549 () Bool)

(assert (=> b!7837245 (= e!4634227 call!726549)))

(declare-fun b!7837246 () Bool)

(declare-fun e!4634230 () Bool)

(assert (=> b!7837246 (= e!4634232 e!4634230)))

(declare-fun res!3117129 () Bool)

(assert (=> b!7837246 (=> (not res!3117129) (not e!4634230))))

(assert (=> b!7837246 (= res!3117129 call!726549)))

(declare-fun bm!726545 () Bool)

(declare-fun call!726551 () Bool)

(assert (=> bm!726545 (= call!726551 (validRegex!11403 (ite c!1441233 (regOne!42491 r1!6261) (regTwo!42490 r1!6261))))))

(declare-fun b!7837247 () Bool)

(declare-fun res!3117133 () Bool)

(assert (=> b!7837247 (=> (not res!3117133) (not e!4634227))))

(assert (=> b!7837247 (= res!3117133 call!726551)))

(assert (=> b!7837247 (= e!4634229 e!4634227)))

(declare-fun b!7837248 () Bool)

(assert (=> b!7837248 (= e!4634230 call!726551)))

(declare-fun bm!726546 () Bool)

(assert (=> bm!726546 (= call!726549 call!726550)))

(assert (= (and d!2351748 (not res!3117131)) b!7837243))

(assert (= (and b!7837243 c!1441232) b!7837241))

(assert (= (and b!7837243 (not c!1441232)) b!7837242))

(assert (= (and b!7837241 res!3117130) b!7837244))

(assert (= (and b!7837242 c!1441233) b!7837247))

(assert (= (and b!7837242 (not c!1441233)) b!7837240))

(assert (= (and b!7837247 res!3117133) b!7837245))

(assert (= (and b!7837240 (not res!3117132)) b!7837246))

(assert (= (and b!7837246 res!3117129) b!7837248))

(assert (= (or b!7837245 b!7837246) bm!726546))

(assert (= (or b!7837247 b!7837248) bm!726545))

(assert (= (or b!7837244 bm!726546) bm!726544))

(declare-fun m!8251800 () Bool)

(assert (=> bm!726544 m!8251800))

(declare-fun m!8251802 () Bool)

(assert (=> b!7837241 m!8251802))

(declare-fun m!8251804 () Bool)

(assert (=> bm!726545 m!8251804))

(assert (=> start!742394 d!2351748))

(declare-fun d!2351752 () Bool)

(assert (=> d!2351752 (= s2!3721 s2Rec!453)))

(declare-fun lt!2677973 () Unit!168796)

(declare-fun choose!59600 (List!73826 List!73826 List!73826 List!73826 List!73826) Unit!168796)

(assert (=> d!2351752 (= lt!2677973 (choose!59600 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> d!2351752 (isPrefix!6339 s1!4101 s!14274)))

(assert (=> d!2351752 (= (lemmaSamePrefixThenSameSuffix!2923 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274) lt!2677973)))

(declare-fun bs!1966887 () Bool)

(assert (= bs!1966887 d!2351752))

(declare-fun m!8251836 () Bool)

(assert (=> bs!1966887 m!8251836))

(assert (=> bs!1966887 m!8251754))

(assert (=> b!7837039 d!2351752))

(declare-fun b!7837263 () Bool)

(declare-fun res!3117144 () Bool)

(declare-fun e!4634241 () Bool)

(assert (=> b!7837263 (=> (not res!3117144) (not e!4634241))))

(declare-fun lt!2677976 () List!73826)

(assert (=> b!7837263 (= res!3117144 (= (size!42779 lt!2677976) (+ (size!42779 s1Rec!453) (size!42779 s2Rec!453))))))

(declare-fun d!2351760 () Bool)

(assert (=> d!2351760 e!4634241))

(declare-fun res!3117145 () Bool)

(assert (=> d!2351760 (=> (not res!3117145) (not e!4634241))))

(assert (=> d!2351760 (= res!3117145 (= (content!15647 lt!2677976) ((_ map or) (content!15647 s1Rec!453) (content!15647 s2Rec!453))))))

(declare-fun e!4634242 () List!73826)

(assert (=> d!2351760 (= lt!2677976 e!4634242)))

(declare-fun c!1441235 () Bool)

(assert (=> d!2351760 (= c!1441235 ((_ is Nil!73702) s1Rec!453))))

(assert (=> d!2351760 (= (++!18023 s1Rec!453 s2Rec!453) lt!2677976)))

(declare-fun b!7837261 () Bool)

(assert (=> b!7837261 (= e!4634242 s2Rec!453)))

(declare-fun b!7837264 () Bool)

(assert (=> b!7837264 (= e!4634241 (or (not (= s2Rec!453 Nil!73702)) (= lt!2677976 s1Rec!453)))))

(declare-fun b!7837262 () Bool)

(assert (=> b!7837262 (= e!4634242 (Cons!73702 (h!80150 s1Rec!453) (++!18023 (t!388561 s1Rec!453) s2Rec!453)))))

(assert (= (and d!2351760 c!1441235) b!7837261))

(assert (= (and d!2351760 (not c!1441235)) b!7837262))

(assert (= (and d!2351760 res!3117145) b!7837263))

(assert (= (and b!7837263 res!3117144) b!7837264))

(declare-fun m!8251838 () Bool)

(assert (=> b!7837263 m!8251838))

(assert (=> b!7837263 m!8251698))

(assert (=> b!7837263 m!8251682))

(declare-fun m!8251840 () Bool)

(assert (=> d!2351760 m!8251840))

(declare-fun m!8251842 () Bool)

(assert (=> d!2351760 m!8251842))

(declare-fun m!8251844 () Bool)

(assert (=> d!2351760 m!8251844))

(declare-fun m!8251846 () Bool)

(assert (=> b!7837262 m!8251846))

(assert (=> b!7837038 d!2351760))

(declare-fun b!7837265 () Bool)

(declare-fun res!3117149 () Bool)

(declare-fun e!4634249 () Bool)

(assert (=> b!7837265 (=> res!3117149 e!4634249)))

(assert (=> b!7837265 (= res!3117149 (not ((_ is Concat!29834) r2!6199)))))

(declare-fun e!4634246 () Bool)

(assert (=> b!7837265 (= e!4634246 e!4634249)))

(declare-fun b!7837267 () Bool)

(declare-fun e!4634245 () Bool)

(assert (=> b!7837267 (= e!4634245 e!4634246)))

(declare-fun c!1441237 () Bool)

(assert (=> b!7837267 (= c!1441237 ((_ is Union!20989) r2!6199))))

(declare-fun b!7837268 () Bool)

(declare-fun e!4634243 () Bool)

(assert (=> b!7837268 (= e!4634243 e!4634245)))

(declare-fun c!1441236 () Bool)

(assert (=> b!7837268 (= c!1441236 ((_ is Star!20989) r2!6199))))

(declare-fun b!7837269 () Bool)

(declare-fun e!4634248 () Bool)

(declare-fun call!726553 () Bool)

(assert (=> b!7837269 (= e!4634248 call!726553)))

(declare-fun bm!726547 () Bool)

(assert (=> bm!726547 (= call!726553 (validRegex!11403 (ite c!1441236 (reg!21318 r2!6199) (ite c!1441237 (regTwo!42491 r2!6199) (regOne!42490 r2!6199)))))))

(declare-fun d!2351762 () Bool)

(declare-fun res!3117148 () Bool)

(assert (=> d!2351762 (=> res!3117148 e!4634243)))

(assert (=> d!2351762 (= res!3117148 ((_ is ElementMatch!20989) r2!6199))))

(assert (=> d!2351762 (= (validRegex!11403 r2!6199) e!4634243)))

(declare-fun b!7837266 () Bool)

(assert (=> b!7837266 (= e!4634245 e!4634248)))

(declare-fun res!3117147 () Bool)

(assert (=> b!7837266 (= res!3117147 (not (nullable!9306 (reg!21318 r2!6199))))))

(assert (=> b!7837266 (=> (not res!3117147) (not e!4634248))))

(declare-fun b!7837270 () Bool)

(declare-fun e!4634244 () Bool)

(declare-fun call!726552 () Bool)

(assert (=> b!7837270 (= e!4634244 call!726552)))

(declare-fun b!7837271 () Bool)

(declare-fun e!4634247 () Bool)

(assert (=> b!7837271 (= e!4634249 e!4634247)))

(declare-fun res!3117146 () Bool)

(assert (=> b!7837271 (=> (not res!3117146) (not e!4634247))))

(assert (=> b!7837271 (= res!3117146 call!726552)))

(declare-fun bm!726548 () Bool)

(declare-fun call!726554 () Bool)

(assert (=> bm!726548 (= call!726554 (validRegex!11403 (ite c!1441237 (regOne!42491 r2!6199) (regTwo!42490 r2!6199))))))

(declare-fun b!7837272 () Bool)

(declare-fun res!3117150 () Bool)

(assert (=> b!7837272 (=> (not res!3117150) (not e!4634244))))

(assert (=> b!7837272 (= res!3117150 call!726554)))

(assert (=> b!7837272 (= e!4634246 e!4634244)))

(declare-fun b!7837273 () Bool)

(assert (=> b!7837273 (= e!4634247 call!726554)))

(declare-fun bm!726549 () Bool)

(assert (=> bm!726549 (= call!726552 call!726553)))

(assert (= (and d!2351762 (not res!3117148)) b!7837268))

(assert (= (and b!7837268 c!1441236) b!7837266))

(assert (= (and b!7837268 (not c!1441236)) b!7837267))

(assert (= (and b!7837266 res!3117147) b!7837269))

(assert (= (and b!7837267 c!1441237) b!7837272))

(assert (= (and b!7837267 (not c!1441237)) b!7837265))

(assert (= (and b!7837272 res!3117150) b!7837270))

(assert (= (and b!7837265 (not res!3117149)) b!7837271))

(assert (= (and b!7837271 res!3117146) b!7837273))

(assert (= (or b!7837270 b!7837271) bm!726549))

(assert (= (or b!7837272 b!7837273) bm!726548))

(assert (= (or b!7837269 bm!726549) bm!726547))

(declare-fun m!8251864 () Bool)

(assert (=> bm!726547 m!8251864))

(declare-fun m!8251866 () Bool)

(assert (=> b!7837266 m!8251866))

(declare-fun m!8251868 () Bool)

(assert (=> bm!726548 m!8251868))

(assert (=> b!7837034 d!2351762))

(declare-fun d!2351770 () Bool)

(declare-fun lt!2677986 () Int)

(assert (=> d!2351770 (>= lt!2677986 0)))

(declare-fun e!4634260 () Int)

(assert (=> d!2351770 (= lt!2677986 e!4634260)))

(declare-fun c!1441242 () Bool)

(assert (=> d!2351770 (= c!1441242 ((_ is Nil!73702) s1!4101))))

(assert (=> d!2351770 (= (size!42779 s1!4101) lt!2677986)))

(declare-fun b!7837290 () Bool)

(assert (=> b!7837290 (= e!4634260 0)))

(declare-fun b!7837291 () Bool)

(assert (=> b!7837291 (= e!4634260 (+ 1 (size!42779 (t!388561 s1!4101))))))

(assert (= (and d!2351770 c!1441242) b!7837290))

(assert (= (and d!2351770 (not c!1441242)) b!7837291))

(declare-fun m!8251886 () Bool)

(assert (=> b!7837291 m!8251886))

(assert (=> b!7837045 d!2351770))

(declare-fun b!7837293 () Bool)

(declare-fun res!3117161 () Bool)

(declare-fun e!4634262 () Bool)

(assert (=> b!7837293 (=> (not res!3117161) (not e!4634262))))

(assert (=> b!7837293 (= res!3117161 (= (head!15995 s1Rec!453) (head!15995 lt!2677939)))))

(declare-fun b!7837295 () Bool)

(declare-fun e!4634263 () Bool)

(assert (=> b!7837295 (= e!4634263 (>= (size!42779 lt!2677939) (size!42779 s1Rec!453)))))

(declare-fun b!7837294 () Bool)

(assert (=> b!7837294 (= e!4634262 (isPrefix!6339 (tail!15536 s1Rec!453) (tail!15536 lt!2677939)))))

(declare-fun b!7837292 () Bool)

(declare-fun e!4634261 () Bool)

(assert (=> b!7837292 (= e!4634261 e!4634262)))

(declare-fun res!3117160 () Bool)

(assert (=> b!7837292 (=> (not res!3117160) (not e!4634262))))

(assert (=> b!7837292 (= res!3117160 (not ((_ is Nil!73702) lt!2677939)))))

(declare-fun d!2351780 () Bool)

(assert (=> d!2351780 e!4634263))

(declare-fun res!3117159 () Bool)

(assert (=> d!2351780 (=> res!3117159 e!4634263)))

(declare-fun lt!2677989 () Bool)

(assert (=> d!2351780 (= res!3117159 (not lt!2677989))))

(assert (=> d!2351780 (= lt!2677989 e!4634261)))

(declare-fun res!3117162 () Bool)

(assert (=> d!2351780 (=> res!3117162 e!4634261)))

(assert (=> d!2351780 (= res!3117162 ((_ is Nil!73702) s1Rec!453))))

(assert (=> d!2351780 (= (isPrefix!6339 s1Rec!453 lt!2677939) lt!2677989)))

(assert (= (and d!2351780 (not res!3117162)) b!7837292))

(assert (= (and b!7837292 res!3117160) b!7837293))

(assert (= (and b!7837293 res!3117161) b!7837294))

(assert (= (and d!2351780 (not res!3117159)) b!7837295))

(assert (=> b!7837293 m!8251722))

(declare-fun m!8251892 () Bool)

(assert (=> b!7837293 m!8251892))

(declare-fun m!8251894 () Bool)

(assert (=> b!7837295 m!8251894))

(assert (=> b!7837295 m!8251698))

(assert (=> b!7837294 m!8251718))

(declare-fun m!8251896 () Bool)

(assert (=> b!7837294 m!8251896))

(assert (=> b!7837294 m!8251718))

(assert (=> b!7837294 m!8251896))

(declare-fun m!8251898 () Bool)

(assert (=> b!7837294 m!8251898))

(assert (=> b!7837045 d!2351780))

(declare-fun b!7837297 () Bool)

(declare-fun res!3117165 () Bool)

(declare-fun e!4634265 () Bool)

(assert (=> b!7837297 (=> (not res!3117165) (not e!4634265))))

(assert (=> b!7837297 (= res!3117165 (= (head!15995 lt!2677932) (head!15995 lt!2677934)))))

(declare-fun b!7837299 () Bool)

(declare-fun e!4634266 () Bool)

(assert (=> b!7837299 (= e!4634266 (>= (size!42779 lt!2677934) (size!42779 lt!2677932)))))

(declare-fun b!7837298 () Bool)

(assert (=> b!7837298 (= e!4634265 (isPrefix!6339 (tail!15536 lt!2677932) (tail!15536 lt!2677934)))))

(declare-fun b!7837296 () Bool)

(declare-fun e!4634264 () Bool)

(assert (=> b!7837296 (= e!4634264 e!4634265)))

(declare-fun res!3117164 () Bool)

(assert (=> b!7837296 (=> (not res!3117164) (not e!4634265))))

(assert (=> b!7837296 (= res!3117164 (not ((_ is Nil!73702) lt!2677934)))))

(declare-fun d!2351784 () Bool)

(assert (=> d!2351784 e!4634266))

(declare-fun res!3117163 () Bool)

(assert (=> d!2351784 (=> res!3117163 e!4634266)))

(declare-fun lt!2677991 () Bool)

(assert (=> d!2351784 (= res!3117163 (not lt!2677991))))

(assert (=> d!2351784 (= lt!2677991 e!4634264)))

(declare-fun res!3117166 () Bool)

(assert (=> d!2351784 (=> res!3117166 e!4634264)))

(assert (=> d!2351784 (= res!3117166 ((_ is Nil!73702) lt!2677932))))

(assert (=> d!2351784 (= (isPrefix!6339 lt!2677932 lt!2677934) lt!2677991)))

(assert (= (and d!2351784 (not res!3117166)) b!7837296))

(assert (= (and b!7837296 res!3117164) b!7837297))

(assert (= (and b!7837297 res!3117165) b!7837298))

(assert (= (and d!2351784 (not res!3117163)) b!7837299))

(declare-fun m!8251900 () Bool)

(assert (=> b!7837297 m!8251900))

(declare-fun m!8251902 () Bool)

(assert (=> b!7837297 m!8251902))

(declare-fun m!8251904 () Bool)

(assert (=> b!7837299 m!8251904))

(declare-fun m!8251906 () Bool)

(assert (=> b!7837299 m!8251906))

(declare-fun m!8251908 () Bool)

(assert (=> b!7837298 m!8251908))

(declare-fun m!8251910 () Bool)

(assert (=> b!7837298 m!8251910))

(assert (=> b!7837298 m!8251908))

(assert (=> b!7837298 m!8251910))

(declare-fun m!8251912 () Bool)

(assert (=> b!7837298 m!8251912))

(assert (=> b!7837045 d!2351784))

(declare-fun b!7837302 () Bool)

(declare-fun res!3117167 () Bool)

(declare-fun e!4634267 () Bool)

(assert (=> b!7837302 (=> (not res!3117167) (not e!4634267))))

(declare-fun lt!2677992 () List!73826)

(assert (=> b!7837302 (= res!3117167 (= (size!42779 lt!2677992) (+ (size!42779 lt!2677932) (size!42779 (t!388561 s2Rec!453)))))))

(declare-fun d!2351786 () Bool)

(assert (=> d!2351786 e!4634267))

(declare-fun res!3117168 () Bool)

(assert (=> d!2351786 (=> (not res!3117168) (not e!4634267))))

(assert (=> d!2351786 (= res!3117168 (= (content!15647 lt!2677992) ((_ map or) (content!15647 lt!2677932) (content!15647 (t!388561 s2Rec!453)))))))

(declare-fun e!4634268 () List!73826)

(assert (=> d!2351786 (= lt!2677992 e!4634268)))

(declare-fun c!1441243 () Bool)

(assert (=> d!2351786 (= c!1441243 ((_ is Nil!73702) lt!2677932))))

(assert (=> d!2351786 (= (++!18023 lt!2677932 (t!388561 s2Rec!453)) lt!2677992)))

(declare-fun b!7837300 () Bool)

(assert (=> b!7837300 (= e!4634268 (t!388561 s2Rec!453))))

(declare-fun b!7837303 () Bool)

(assert (=> b!7837303 (= e!4634267 (or (not (= (t!388561 s2Rec!453) Nil!73702)) (= lt!2677992 lt!2677932)))))

(declare-fun b!7837301 () Bool)

(assert (=> b!7837301 (= e!4634268 (Cons!73702 (h!80150 lt!2677932) (++!18023 (t!388561 lt!2677932) (t!388561 s2Rec!453))))))

(assert (= (and d!2351786 c!1441243) b!7837300))

(assert (= (and d!2351786 (not c!1441243)) b!7837301))

(assert (= (and d!2351786 res!3117168) b!7837302))

(assert (= (and b!7837302 res!3117167) b!7837303))

(declare-fun m!8251914 () Bool)

(assert (=> b!7837302 m!8251914))

(assert (=> b!7837302 m!8251906))

(assert (=> b!7837302 m!8251688))

(declare-fun m!8251916 () Bool)

(assert (=> d!2351786 m!8251916))

(declare-fun m!8251918 () Bool)

(assert (=> d!2351786 m!8251918))

(declare-fun m!8251920 () Bool)

(assert (=> d!2351786 m!8251920))

(declare-fun m!8251922 () Bool)

(assert (=> b!7837301 m!8251922))

(assert (=> b!7837045 d!2351786))

(declare-fun d!2351788 () Bool)

(assert (=> d!2351788 (isPrefix!6339 lt!2677932 (++!18023 lt!2677932 (t!388561 s2Rec!453)))))

(declare-fun lt!2677999 () Unit!168796)

(declare-fun choose!59603 (List!73826 List!73826) Unit!168796)

(assert (=> d!2351788 (= lt!2677999 (choose!59603 lt!2677932 (t!388561 s2Rec!453)))))

(assert (=> d!2351788 (= (lemmaConcatTwoListThenFirstIsPrefix!3785 lt!2677932 (t!388561 s2Rec!453)) lt!2677999)))

(declare-fun bs!1966893 () Bool)

(assert (= bs!1966893 d!2351788))

(assert (=> bs!1966893 m!8251692))

(assert (=> bs!1966893 m!8251692))

(declare-fun m!8251930 () Bool)

(assert (=> bs!1966893 m!8251930))

(declare-fun m!8251932 () Bool)

(assert (=> bs!1966893 m!8251932))

(assert (=> b!7837045 d!2351788))

(declare-fun b!7837321 () Bool)

(declare-fun res!3117179 () Bool)

(declare-fun e!4634278 () Bool)

(assert (=> b!7837321 (=> (not res!3117179) (not e!4634278))))

(assert (=> b!7837321 (= res!3117179 (= (head!15995 s1!4101) (head!15995 lt!2677937)))))

(declare-fun b!7837323 () Bool)

(declare-fun e!4634279 () Bool)

(assert (=> b!7837323 (= e!4634279 (>= (size!42779 lt!2677937) (size!42779 s1!4101)))))

(declare-fun b!7837322 () Bool)

(assert (=> b!7837322 (= e!4634278 (isPrefix!6339 (tail!15536 s1!4101) (tail!15536 lt!2677937)))))

(declare-fun b!7837320 () Bool)

(declare-fun e!4634277 () Bool)

(assert (=> b!7837320 (= e!4634277 e!4634278)))

(declare-fun res!3117178 () Bool)

(assert (=> b!7837320 (=> (not res!3117178) (not e!4634278))))

(assert (=> b!7837320 (= res!3117178 (not ((_ is Nil!73702) lt!2677937)))))

(declare-fun d!2351794 () Bool)

(assert (=> d!2351794 e!4634279))

(declare-fun res!3117177 () Bool)

(assert (=> d!2351794 (=> res!3117177 e!4634279)))

(declare-fun lt!2678001 () Bool)

(assert (=> d!2351794 (= res!3117177 (not lt!2678001))))

(assert (=> d!2351794 (= lt!2678001 e!4634277)))

(declare-fun res!3117180 () Bool)

(assert (=> d!2351794 (=> res!3117180 e!4634277)))

(assert (=> d!2351794 (= res!3117180 ((_ is Nil!73702) s1!4101))))

(assert (=> d!2351794 (= (isPrefix!6339 s1!4101 lt!2677937) lt!2678001)))

(assert (= (and d!2351794 (not res!3117180)) b!7837320))

(assert (= (and b!7837320 res!3117178) b!7837321))

(assert (= (and b!7837321 res!3117179) b!7837322))

(assert (= (and d!2351794 (not res!3117177)) b!7837323))

(assert (=> b!7837321 m!8251746))

(declare-fun m!8251934 () Bool)

(assert (=> b!7837321 m!8251934))

(declare-fun m!8251936 () Bool)

(assert (=> b!7837323 m!8251936))

(assert (=> b!7837323 m!8251694))

(assert (=> b!7837322 m!8251742))

(declare-fun m!8251938 () Bool)

(assert (=> b!7837322 m!8251938))

(assert (=> b!7837322 m!8251742))

(assert (=> b!7837322 m!8251938))

(declare-fun m!8251940 () Bool)

(assert (=> b!7837322 m!8251940))

(assert (=> b!7837045 d!2351794))

(declare-fun b!7837326 () Bool)

(declare-fun res!3117181 () Bool)

(declare-fun e!4634280 () Bool)

(assert (=> b!7837326 (=> (not res!3117181) (not e!4634280))))

(declare-fun lt!2678002 () List!73826)

(assert (=> b!7837326 (= res!3117181 (= (size!42779 lt!2678002) (+ (size!42779 s1Rec!453) (size!42779 (Cons!73702 (h!80150 s2Rec!453) Nil!73702)))))))

(declare-fun d!2351796 () Bool)

(assert (=> d!2351796 e!4634280))

(declare-fun res!3117182 () Bool)

(assert (=> d!2351796 (=> (not res!3117182) (not e!4634280))))

(assert (=> d!2351796 (= res!3117182 (= (content!15647 lt!2678002) ((_ map or) (content!15647 s1Rec!453) (content!15647 (Cons!73702 (h!80150 s2Rec!453) Nil!73702)))))))

(declare-fun e!4634281 () List!73826)

(assert (=> d!2351796 (= lt!2678002 e!4634281)))

(declare-fun c!1441248 () Bool)

(assert (=> d!2351796 (= c!1441248 ((_ is Nil!73702) s1Rec!453))))

(assert (=> d!2351796 (= (++!18023 s1Rec!453 (Cons!73702 (h!80150 s2Rec!453) Nil!73702)) lt!2678002)))

(declare-fun b!7837324 () Bool)

(assert (=> b!7837324 (= e!4634281 (Cons!73702 (h!80150 s2Rec!453) Nil!73702))))

(declare-fun b!7837327 () Bool)

(assert (=> b!7837327 (= e!4634280 (or (not (= (Cons!73702 (h!80150 s2Rec!453) Nil!73702) Nil!73702)) (= lt!2678002 s1Rec!453)))))

(declare-fun b!7837325 () Bool)

(assert (=> b!7837325 (= e!4634281 (Cons!73702 (h!80150 s1Rec!453) (++!18023 (t!388561 s1Rec!453) (Cons!73702 (h!80150 s2Rec!453) Nil!73702))))))

(assert (= (and d!2351796 c!1441248) b!7837324))

(assert (= (and d!2351796 (not c!1441248)) b!7837325))

(assert (= (and d!2351796 res!3117182) b!7837326))

(assert (= (and b!7837326 res!3117181) b!7837327))

(declare-fun m!8251956 () Bool)

(assert (=> b!7837326 m!8251956))

(assert (=> b!7837326 m!8251698))

(declare-fun m!8251958 () Bool)

(assert (=> b!7837326 m!8251958))

(declare-fun m!8251960 () Bool)

(assert (=> d!2351796 m!8251960))

(assert (=> d!2351796 m!8251842))

(declare-fun m!8251962 () Bool)

(assert (=> d!2351796 m!8251962))

(declare-fun m!8251964 () Bool)

(assert (=> b!7837325 m!8251964))

(assert (=> b!7837045 d!2351796))

(declare-fun d!2351800 () Bool)

(assert (=> d!2351800 (isPrefix!6339 lt!2677932 s1!4101)))

(declare-fun lt!2678008 () Unit!168796)

(declare-fun choose!59604 (List!73826 List!73826 List!73826) Unit!168796)

(assert (=> d!2351800 (= lt!2678008 (choose!59604 s1!4101 lt!2677932 s!14274))))

(assert (=> d!2351800 (isPrefix!6339 s1!4101 s!14274)))

(assert (=> d!2351800 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!945 s1!4101 lt!2677932 s!14274) lt!2678008)))

(declare-fun bs!1966895 () Bool)

(assert (= bs!1966895 d!2351800))

(assert (=> bs!1966895 m!8251686))

(declare-fun m!8251968 () Bool)

(assert (=> bs!1966895 m!8251968))

(assert (=> bs!1966895 m!8251754))

(assert (=> b!7837045 d!2351800))

(declare-fun d!2351804 () Bool)

(assert (=> d!2351804 (isPrefix!6339 s1!4101 (++!18023 s1!4101 s2!3721))))

(declare-fun lt!2678009 () Unit!168796)

(assert (=> d!2351804 (= lt!2678009 (choose!59603 s1!4101 s2!3721))))

(assert (=> d!2351804 (= (lemmaConcatTwoListThenFirstIsPrefix!3785 s1!4101 s2!3721) lt!2678009)))

(declare-fun bs!1966896 () Bool)

(assert (= bs!1966896 d!2351804))

(assert (=> bs!1966896 m!8251666))

(assert (=> bs!1966896 m!8251666))

(declare-fun m!8251970 () Bool)

(assert (=> bs!1966896 m!8251970))

(declare-fun m!8251972 () Bool)

(assert (=> bs!1966896 m!8251972))

(assert (=> b!7837045 d!2351804))

(declare-fun d!2351806 () Bool)

(declare-fun lt!2678010 () Int)

(assert (=> d!2351806 (>= lt!2678010 0)))

(declare-fun e!4634282 () Int)

(assert (=> d!2351806 (= lt!2678010 e!4634282)))

(declare-fun c!1441249 () Bool)

(assert (=> d!2351806 (= c!1441249 ((_ is Nil!73702) (t!388561 s2Rec!453)))))

(assert (=> d!2351806 (= (size!42779 (t!388561 s2Rec!453)) lt!2678010)))

(declare-fun b!7837328 () Bool)

(assert (=> b!7837328 (= e!4634282 0)))

(declare-fun b!7837329 () Bool)

(assert (=> b!7837329 (= e!4634282 (+ 1 (size!42779 (t!388561 (t!388561 s2Rec!453)))))))

(assert (= (and d!2351806 c!1441249) b!7837328))

(assert (= (and d!2351806 (not c!1441249)) b!7837329))

(declare-fun m!8251974 () Bool)

(assert (=> b!7837329 m!8251974))

(assert (=> b!7837045 d!2351806))

(declare-fun d!2351808 () Bool)

(assert (=> d!2351808 (isPrefix!6339 s1Rec!453 (++!18023 s1Rec!453 s2Rec!453))))

(declare-fun lt!2678011 () Unit!168796)

(assert (=> d!2351808 (= lt!2678011 (choose!59603 s1Rec!453 s2Rec!453))))

(assert (=> d!2351808 (= (lemmaConcatTwoListThenFirstIsPrefix!3785 s1Rec!453 s2Rec!453) lt!2678011)))

(declare-fun bs!1966897 () Bool)

(assert (= bs!1966897 d!2351808))

(assert (=> bs!1966897 m!8251662))

(assert (=> bs!1966897 m!8251662))

(declare-fun m!8251976 () Bool)

(assert (=> bs!1966897 m!8251976))

(declare-fun m!8251978 () Bool)

(assert (=> bs!1966897 m!8251978))

(assert (=> b!7837045 d!2351808))

(declare-fun d!2351810 () Bool)

(declare-fun lt!2678014 () Int)

(assert (=> d!2351810 (>= lt!2678014 0)))

(declare-fun e!4634283 () Int)

(assert (=> d!2351810 (= lt!2678014 e!4634283)))

(declare-fun c!1441250 () Bool)

(assert (=> d!2351810 (= c!1441250 ((_ is Nil!73702) s1Rec!453))))

(assert (=> d!2351810 (= (size!42779 s1Rec!453) lt!2678014)))

(declare-fun b!7837330 () Bool)

(assert (=> b!7837330 (= e!4634283 0)))

(declare-fun b!7837331 () Bool)

(assert (=> b!7837331 (= e!4634283 (+ 1 (size!42779 (t!388561 s1Rec!453))))))

(assert (= (and d!2351810 c!1441250) b!7837330))

(assert (= (and d!2351810 (not c!1441250)) b!7837331))

(declare-fun m!8251980 () Bool)

(assert (=> b!7837331 m!8251980))

(assert (=> b!7837045 d!2351810))

(declare-fun b!7837333 () Bool)

(declare-fun res!3117185 () Bool)

(declare-fun e!4634285 () Bool)

(assert (=> b!7837333 (=> (not res!3117185) (not e!4634285))))

(assert (=> b!7837333 (= res!3117185 (= (head!15995 lt!2677932) (head!15995 s1!4101)))))

(declare-fun b!7837335 () Bool)

(declare-fun e!4634286 () Bool)

(assert (=> b!7837335 (= e!4634286 (>= (size!42779 s1!4101) (size!42779 lt!2677932)))))

(declare-fun b!7837334 () Bool)

(assert (=> b!7837334 (= e!4634285 (isPrefix!6339 (tail!15536 lt!2677932) (tail!15536 s1!4101)))))

(declare-fun b!7837332 () Bool)

(declare-fun e!4634284 () Bool)

(assert (=> b!7837332 (= e!4634284 e!4634285)))

(declare-fun res!3117184 () Bool)

(assert (=> b!7837332 (=> (not res!3117184) (not e!4634285))))

(assert (=> b!7837332 (= res!3117184 (not ((_ is Nil!73702) s1!4101)))))

(declare-fun d!2351812 () Bool)

(assert (=> d!2351812 e!4634286))

(declare-fun res!3117183 () Bool)

(assert (=> d!2351812 (=> res!3117183 e!4634286)))

(declare-fun lt!2678015 () Bool)

(assert (=> d!2351812 (= res!3117183 (not lt!2678015))))

(assert (=> d!2351812 (= lt!2678015 e!4634284)))

(declare-fun res!3117186 () Bool)

(assert (=> d!2351812 (=> res!3117186 e!4634284)))

(assert (=> d!2351812 (= res!3117186 ((_ is Nil!73702) lt!2677932))))

(assert (=> d!2351812 (= (isPrefix!6339 lt!2677932 s1!4101) lt!2678015)))

(assert (= (and d!2351812 (not res!3117186)) b!7837332))

(assert (= (and b!7837332 res!3117184) b!7837333))

(assert (= (and b!7837333 res!3117185) b!7837334))

(assert (= (and d!2351812 (not res!3117183)) b!7837335))

(assert (=> b!7837333 m!8251900))

(assert (=> b!7837333 m!8251746))

(assert (=> b!7837335 m!8251694))

(assert (=> b!7837335 m!8251906))

(assert (=> b!7837334 m!8251908))

(assert (=> b!7837334 m!8251742))

(assert (=> b!7837334 m!8251908))

(assert (=> b!7837334 m!8251742))

(declare-fun m!8251984 () Bool)

(assert (=> b!7837334 m!8251984))

(assert (=> b!7837045 d!2351812))

(declare-fun d!2351816 () Bool)

(assert (=> d!2351816 (= (++!18023 (++!18023 s1Rec!453 (Cons!73702 (h!80150 s2Rec!453) Nil!73702)) (t!388561 s2Rec!453)) s!14274)))

(declare-fun lt!2678021 () Unit!168796)

(declare-fun choose!59605 (List!73826 C!42304 List!73826 List!73826) Unit!168796)

(assert (=> d!2351816 (= lt!2678021 (choose!59605 s1Rec!453 (h!80150 s2Rec!453) (t!388561 s2Rec!453) s!14274))))

(assert (=> d!2351816 (= (++!18023 s1Rec!453 (Cons!73702 (h!80150 s2Rec!453) (t!388561 s2Rec!453))) s!14274)))

(assert (=> d!2351816 (= (lemmaMoveElementToOtherListKeepsConcatEq!3450 s1Rec!453 (h!80150 s2Rec!453) (t!388561 s2Rec!453) s!14274) lt!2678021)))

(declare-fun bs!1966899 () Bool)

(assert (= bs!1966899 d!2351816))

(assert (=> bs!1966899 m!8251676))

(assert (=> bs!1966899 m!8251676))

(declare-fun m!8252000 () Bool)

(assert (=> bs!1966899 m!8252000))

(declare-fun m!8252002 () Bool)

(assert (=> bs!1966899 m!8252002))

(declare-fun m!8252004 () Bool)

(assert (=> bs!1966899 m!8252004))

(assert (=> b!7837045 d!2351816))

(declare-fun d!2351822 () Bool)

(declare-fun lt!2678022 () Int)

(assert (=> d!2351822 (>= lt!2678022 0)))

(declare-fun e!4634311 () Int)

(assert (=> d!2351822 (= lt!2678022 e!4634311)))

(declare-fun c!1441258 () Bool)

(assert (=> d!2351822 (= c!1441258 ((_ is Nil!73702) s2Rec!453))))

(assert (=> d!2351822 (= (size!42779 s2Rec!453) lt!2678022)))

(declare-fun b!7837372 () Bool)

(assert (=> b!7837372 (= e!4634311 0)))

(declare-fun b!7837373 () Bool)

(assert (=> b!7837373 (= e!4634311 (+ 1 (size!42779 (t!388561 s2Rec!453))))))

(assert (= (and d!2351822 c!1441258) b!7837372))

(assert (= (and d!2351822 (not c!1441258)) b!7837373))

(assert (=> b!7837373 m!8251688))

(assert (=> b!7837045 d!2351822))

(declare-fun b!7837374 () Bool)

(declare-fun res!3117212 () Bool)

(declare-fun e!4634317 () Bool)

(assert (=> b!7837374 (=> res!3117212 e!4634317)))

(declare-fun e!4634318 () Bool)

(assert (=> b!7837374 (= res!3117212 e!4634318)))

(declare-fun res!3117215 () Bool)

(assert (=> b!7837374 (=> (not res!3117215) (not e!4634318))))

(declare-fun lt!2678023 () Bool)

(assert (=> b!7837374 (= res!3117215 lt!2678023)))

(declare-fun b!7837375 () Bool)

(declare-fun res!3117211 () Bool)

(assert (=> b!7837375 (=> (not res!3117211) (not e!4634318))))

(declare-fun call!726561 () Bool)

(assert (=> b!7837375 (= res!3117211 (not call!726561))))

(declare-fun b!7837376 () Bool)

(declare-fun res!3117209 () Bool)

(assert (=> b!7837376 (=> (not res!3117209) (not e!4634318))))

(assert (=> b!7837376 (= res!3117209 (isEmpty!42296 (tail!15536 s2Rec!453)))))

(declare-fun d!2351824 () Bool)

(declare-fun e!4634315 () Bool)

(assert (=> d!2351824 e!4634315))

(declare-fun c!1441261 () Bool)

(assert (=> d!2351824 (= c!1441261 ((_ is EmptyExpr!20989) r2!6199))))

(declare-fun e!4634316 () Bool)

(assert (=> d!2351824 (= lt!2678023 e!4634316)))

(declare-fun c!1441260 () Bool)

(assert (=> d!2351824 (= c!1441260 (isEmpty!42296 s2Rec!453))))

(assert (=> d!2351824 (validRegex!11403 r2!6199)))

(assert (=> d!2351824 (= (matchR!10445 r2!6199 s2Rec!453) lt!2678023)))

(declare-fun b!7837377 () Bool)

(declare-fun e!4634313 () Bool)

(declare-fun e!4634312 () Bool)

(assert (=> b!7837377 (= e!4634313 e!4634312)))

(declare-fun res!3117210 () Bool)

(assert (=> b!7837377 (=> res!3117210 e!4634312)))

(assert (=> b!7837377 (= res!3117210 call!726561)))

(declare-fun b!7837378 () Bool)

(declare-fun e!4634314 () Bool)

(assert (=> b!7837378 (= e!4634314 (not lt!2678023))))

(declare-fun b!7837379 () Bool)

(declare-fun res!3117214 () Bool)

(assert (=> b!7837379 (=> res!3117214 e!4634317)))

(assert (=> b!7837379 (= res!3117214 (not ((_ is ElementMatch!20989) r2!6199)))))

(assert (=> b!7837379 (= e!4634314 e!4634317)))

(declare-fun b!7837380 () Bool)

(assert (=> b!7837380 (= e!4634312 (not (= (head!15995 s2Rec!453) (c!1441194 r2!6199))))))

(declare-fun b!7837381 () Bool)

(assert (=> b!7837381 (= e!4634315 e!4634314)))

(declare-fun c!1441259 () Bool)

(assert (=> b!7837381 (= c!1441259 ((_ is EmptyLang!20989) r2!6199))))

(declare-fun b!7837382 () Bool)

(assert (=> b!7837382 (= e!4634317 e!4634313)))

(declare-fun res!3117216 () Bool)

(assert (=> b!7837382 (=> (not res!3117216) (not e!4634313))))

(assert (=> b!7837382 (= res!3117216 (not lt!2678023))))

(declare-fun b!7837383 () Bool)

(assert (=> b!7837383 (= e!4634316 (nullable!9306 r2!6199))))

(declare-fun b!7837384 () Bool)

(assert (=> b!7837384 (= e!4634316 (matchR!10445 (derivativeStep!6265 r2!6199 (head!15995 s2Rec!453)) (tail!15536 s2Rec!453)))))

(declare-fun bm!726556 () Bool)

(assert (=> bm!726556 (= call!726561 (isEmpty!42296 s2Rec!453))))

(declare-fun b!7837385 () Bool)

(assert (=> b!7837385 (= e!4634315 (= lt!2678023 call!726561))))

(declare-fun b!7837386 () Bool)

(declare-fun res!3117213 () Bool)

(assert (=> b!7837386 (=> res!3117213 e!4634312)))

(assert (=> b!7837386 (= res!3117213 (not (isEmpty!42296 (tail!15536 s2Rec!453))))))

(declare-fun b!7837387 () Bool)

(assert (=> b!7837387 (= e!4634318 (= (head!15995 s2Rec!453) (c!1441194 r2!6199)))))

(assert (= (and d!2351824 c!1441260) b!7837383))

(assert (= (and d!2351824 (not c!1441260)) b!7837384))

(assert (= (and d!2351824 c!1441261) b!7837385))

(assert (= (and d!2351824 (not c!1441261)) b!7837381))

(assert (= (and b!7837381 c!1441259) b!7837378))

(assert (= (and b!7837381 (not c!1441259)) b!7837379))

(assert (= (and b!7837379 (not res!3117214)) b!7837374))

(assert (= (and b!7837374 res!3117215) b!7837375))

(assert (= (and b!7837375 res!3117211) b!7837376))

(assert (= (and b!7837376 res!3117209) b!7837387))

(assert (= (and b!7837374 (not res!3117212)) b!7837382))

(assert (= (and b!7837382 res!3117216) b!7837377))

(assert (= (and b!7837377 (not res!3117210)) b!7837386))

(assert (= (and b!7837386 (not res!3117213)) b!7837380))

(assert (= (or b!7837385 b!7837375 b!7837377) bm!726556))

(assert (=> b!7837383 m!8251756))

(declare-fun m!8252006 () Bool)

(assert (=> d!2351824 m!8252006))

(assert (=> d!2351824 m!8251710))

(declare-fun m!8252008 () Bool)

(assert (=> b!7837386 m!8252008))

(assert (=> b!7837386 m!8252008))

(declare-fun m!8252010 () Bool)

(assert (=> b!7837386 m!8252010))

(assert (=> b!7837376 m!8252008))

(assert (=> b!7837376 m!8252008))

(assert (=> b!7837376 m!8252010))

(declare-fun m!8252012 () Bool)

(assert (=> b!7837384 m!8252012))

(assert (=> b!7837384 m!8252012))

(declare-fun m!8252014 () Bool)

(assert (=> b!7837384 m!8252014))

(assert (=> b!7837384 m!8252008))

(assert (=> b!7837384 m!8252014))

(assert (=> b!7837384 m!8252008))

(declare-fun m!8252016 () Bool)

(assert (=> b!7837384 m!8252016))

(assert (=> bm!726556 m!8252006))

(assert (=> b!7837387 m!8252012))

(assert (=> b!7837380 m!8252012))

(assert (=> b!7837057 d!2351824))

(declare-fun b!7837399 () Bool)

(declare-fun e!4634321 () Bool)

(declare-fun tp!2318670 () Bool)

(declare-fun tp!2318667 () Bool)

(assert (=> b!7837399 (= e!4634321 (and tp!2318670 tp!2318667))))

(assert (=> b!7837048 (= tp!2318648 e!4634321)))

(declare-fun b!7837400 () Bool)

(declare-fun tp!2318669 () Bool)

(assert (=> b!7837400 (= e!4634321 tp!2318669)))

(declare-fun b!7837398 () Bool)

(assert (=> b!7837398 (= e!4634321 tp_is_empty!52333)))

(declare-fun b!7837401 () Bool)

(declare-fun tp!2318668 () Bool)

(declare-fun tp!2318666 () Bool)

(assert (=> b!7837401 (= e!4634321 (and tp!2318668 tp!2318666))))

(assert (= (and b!7837048 ((_ is ElementMatch!20989) (reg!21318 r2!6199))) b!7837398))

(assert (= (and b!7837048 ((_ is Concat!29834) (reg!21318 r2!6199))) b!7837399))

(assert (= (and b!7837048 ((_ is Star!20989) (reg!21318 r2!6199))) b!7837400))

(assert (= (and b!7837048 ((_ is Union!20989) (reg!21318 r2!6199))) b!7837401))

(declare-fun b!7837403 () Bool)

(declare-fun e!4634322 () Bool)

(declare-fun tp!2318675 () Bool)

(declare-fun tp!2318672 () Bool)

(assert (=> b!7837403 (= e!4634322 (and tp!2318675 tp!2318672))))

(assert (=> b!7837043 (= tp!2318652 e!4634322)))

(declare-fun b!7837404 () Bool)

(declare-fun tp!2318674 () Bool)

(assert (=> b!7837404 (= e!4634322 tp!2318674)))

(declare-fun b!7837402 () Bool)

(assert (=> b!7837402 (= e!4634322 tp_is_empty!52333)))

(declare-fun b!7837405 () Bool)

(declare-fun tp!2318673 () Bool)

(declare-fun tp!2318671 () Bool)

(assert (=> b!7837405 (= e!4634322 (and tp!2318673 tp!2318671))))

(assert (= (and b!7837043 ((_ is ElementMatch!20989) (reg!21318 r1!6261))) b!7837402))

(assert (= (and b!7837043 ((_ is Concat!29834) (reg!21318 r1!6261))) b!7837403))

(assert (= (and b!7837043 ((_ is Star!20989) (reg!21318 r1!6261))) b!7837404))

(assert (= (and b!7837043 ((_ is Union!20989) (reg!21318 r1!6261))) b!7837405))

(declare-fun b!7837416 () Bool)

(declare-fun e!4634330 () Bool)

(declare-fun tp!2318680 () Bool)

(declare-fun tp!2318677 () Bool)

(assert (=> b!7837416 (= e!4634330 (and tp!2318680 tp!2318677))))

(assert (=> b!7837058 (= tp!2318646 e!4634330)))

(declare-fun b!7837417 () Bool)

(declare-fun tp!2318679 () Bool)

(assert (=> b!7837417 (= e!4634330 tp!2318679)))

(declare-fun b!7837415 () Bool)

(assert (=> b!7837415 (= e!4634330 tp_is_empty!52333)))

(declare-fun b!7837418 () Bool)

(declare-fun tp!2318678 () Bool)

(declare-fun tp!2318676 () Bool)

(assert (=> b!7837418 (= e!4634330 (and tp!2318678 tp!2318676))))

(assert (= (and b!7837058 ((_ is ElementMatch!20989) (regOne!42491 r1!6261))) b!7837415))

(assert (= (and b!7837058 ((_ is Concat!29834) (regOne!42491 r1!6261))) b!7837416))

(assert (= (and b!7837058 ((_ is Star!20989) (regOne!42491 r1!6261))) b!7837417))

(assert (= (and b!7837058 ((_ is Union!20989) (regOne!42491 r1!6261))) b!7837418))

(declare-fun b!7837420 () Bool)

(declare-fun e!4634331 () Bool)

(declare-fun tp!2318685 () Bool)

(declare-fun tp!2318682 () Bool)

(assert (=> b!7837420 (= e!4634331 (and tp!2318685 tp!2318682))))

(assert (=> b!7837058 (= tp!2318643 e!4634331)))

(declare-fun b!7837421 () Bool)

(declare-fun tp!2318684 () Bool)

(assert (=> b!7837421 (= e!4634331 tp!2318684)))

(declare-fun b!7837419 () Bool)

(assert (=> b!7837419 (= e!4634331 tp_is_empty!52333)))

(declare-fun b!7837422 () Bool)

(declare-fun tp!2318683 () Bool)

(declare-fun tp!2318681 () Bool)

(assert (=> b!7837422 (= e!4634331 (and tp!2318683 tp!2318681))))

(assert (= (and b!7837058 ((_ is ElementMatch!20989) (regTwo!42491 r1!6261))) b!7837419))

(assert (= (and b!7837058 ((_ is Concat!29834) (regTwo!42491 r1!6261))) b!7837420))

(assert (= (and b!7837058 ((_ is Star!20989) (regTwo!42491 r1!6261))) b!7837421))

(assert (= (and b!7837058 ((_ is Union!20989) (regTwo!42491 r1!6261))) b!7837422))

(declare-fun b!7837436 () Bool)

(declare-fun e!4634341 () Bool)

(declare-fun tp!2318688 () Bool)

(assert (=> b!7837436 (= e!4634341 (and tp_is_empty!52333 tp!2318688))))

(assert (=> b!7837037 (= tp!2318650 e!4634341)))

(assert (= (and b!7837037 ((_ is Cons!73702) (t!388561 s2!3721))) b!7837436))

(declare-fun b!7837437 () Bool)

(declare-fun e!4634342 () Bool)

(declare-fun tp!2318689 () Bool)

(assert (=> b!7837437 (= e!4634342 (and tp_is_empty!52333 tp!2318689))))

(assert (=> b!7837044 (= tp!2318654 e!4634342)))

(assert (= (and b!7837044 ((_ is Cons!73702) (t!388561 s1Rec!453))) b!7837437))

(declare-fun b!7837438 () Bool)

(declare-fun e!4634343 () Bool)

(declare-fun tp!2318690 () Bool)

(assert (=> b!7837438 (= e!4634343 (and tp_is_empty!52333 tp!2318690))))

(assert (=> b!7837056 (= tp!2318641 e!4634343)))

(assert (= (and b!7837056 ((_ is Cons!73702) (t!388561 s1!4101))) b!7837438))

(declare-fun b!7837439 () Bool)

(declare-fun e!4634344 () Bool)

(declare-fun tp!2318691 () Bool)

(assert (=> b!7837439 (= e!4634344 (and tp_is_empty!52333 tp!2318691))))

(assert (=> b!7837035 (= tp!2318651 e!4634344)))

(assert (= (and b!7837035 ((_ is Cons!73702) (t!388561 s2Rec!453))) b!7837439))

(declare-fun b!7837440 () Bool)

(declare-fun e!4634345 () Bool)

(declare-fun tp!2318692 () Bool)

(assert (=> b!7837440 (= e!4634345 (and tp_is_empty!52333 tp!2318692))))

(assert (=> b!7837036 (= tp!2318645 e!4634345)))

(assert (= (and b!7837036 ((_ is Cons!73702) (t!388561 s!14274))) b!7837440))

(declare-fun b!7837456 () Bool)

(declare-fun e!4634353 () Bool)

(declare-fun tp!2318697 () Bool)

(declare-fun tp!2318694 () Bool)

(assert (=> b!7837456 (= e!4634353 (and tp!2318697 tp!2318694))))

(assert (=> b!7837047 (= tp!2318649 e!4634353)))

(declare-fun b!7837457 () Bool)

(declare-fun tp!2318696 () Bool)

(assert (=> b!7837457 (= e!4634353 tp!2318696)))

(declare-fun b!7837455 () Bool)

(assert (=> b!7837455 (= e!4634353 tp_is_empty!52333)))

(declare-fun b!7837458 () Bool)

(declare-fun tp!2318695 () Bool)

(declare-fun tp!2318693 () Bool)

(assert (=> b!7837458 (= e!4634353 (and tp!2318695 tp!2318693))))

(assert (= (and b!7837047 ((_ is ElementMatch!20989) (regOne!42490 r2!6199))) b!7837455))

(assert (= (and b!7837047 ((_ is Concat!29834) (regOne!42490 r2!6199))) b!7837456))

(assert (= (and b!7837047 ((_ is Star!20989) (regOne!42490 r2!6199))) b!7837457))

(assert (= (and b!7837047 ((_ is Union!20989) (regOne!42490 r2!6199))) b!7837458))

(declare-fun b!7837460 () Bool)

(declare-fun e!4634354 () Bool)

(declare-fun tp!2318702 () Bool)

(declare-fun tp!2318699 () Bool)

(assert (=> b!7837460 (= e!4634354 (and tp!2318702 tp!2318699))))

(assert (=> b!7837047 (= tp!2318642 e!4634354)))

(declare-fun b!7837461 () Bool)

(declare-fun tp!2318701 () Bool)

(assert (=> b!7837461 (= e!4634354 tp!2318701)))

(declare-fun b!7837459 () Bool)

(assert (=> b!7837459 (= e!4634354 tp_is_empty!52333)))

(declare-fun b!7837462 () Bool)

(declare-fun tp!2318700 () Bool)

(declare-fun tp!2318698 () Bool)

(assert (=> b!7837462 (= e!4634354 (and tp!2318700 tp!2318698))))

(assert (= (and b!7837047 ((_ is ElementMatch!20989) (regTwo!42490 r2!6199))) b!7837459))

(assert (= (and b!7837047 ((_ is Concat!29834) (regTwo!42490 r2!6199))) b!7837460))

(assert (= (and b!7837047 ((_ is Star!20989) (regTwo!42490 r2!6199))) b!7837461))

(assert (= (and b!7837047 ((_ is Union!20989) (regTwo!42490 r2!6199))) b!7837462))

(declare-fun b!7837464 () Bool)

(declare-fun e!4634355 () Bool)

(declare-fun tp!2318707 () Bool)

(declare-fun tp!2318704 () Bool)

(assert (=> b!7837464 (= e!4634355 (and tp!2318707 tp!2318704))))

(assert (=> b!7837046 (= tp!2318653 e!4634355)))

(declare-fun b!7837465 () Bool)

(declare-fun tp!2318706 () Bool)

(assert (=> b!7837465 (= e!4634355 tp!2318706)))

(declare-fun b!7837463 () Bool)

(assert (=> b!7837463 (= e!4634355 tp_is_empty!52333)))

(declare-fun b!7837466 () Bool)

(declare-fun tp!2318705 () Bool)

(declare-fun tp!2318703 () Bool)

(assert (=> b!7837466 (= e!4634355 (and tp!2318705 tp!2318703))))

(assert (= (and b!7837046 ((_ is ElementMatch!20989) (regOne!42490 r1!6261))) b!7837463))

(assert (= (and b!7837046 ((_ is Concat!29834) (regOne!42490 r1!6261))) b!7837464))

(assert (= (and b!7837046 ((_ is Star!20989) (regOne!42490 r1!6261))) b!7837465))

(assert (= (and b!7837046 ((_ is Union!20989) (regOne!42490 r1!6261))) b!7837466))

(declare-fun b!7837468 () Bool)

(declare-fun e!4634356 () Bool)

(declare-fun tp!2318712 () Bool)

(declare-fun tp!2318709 () Bool)

(assert (=> b!7837468 (= e!4634356 (and tp!2318712 tp!2318709))))

(assert (=> b!7837046 (= tp!2318647 e!4634356)))

(declare-fun b!7837469 () Bool)

(declare-fun tp!2318711 () Bool)

(assert (=> b!7837469 (= e!4634356 tp!2318711)))

(declare-fun b!7837467 () Bool)

(assert (=> b!7837467 (= e!4634356 tp_is_empty!52333)))

(declare-fun b!7837470 () Bool)

(declare-fun tp!2318710 () Bool)

(declare-fun tp!2318708 () Bool)

(assert (=> b!7837470 (= e!4634356 (and tp!2318710 tp!2318708))))

(assert (= (and b!7837046 ((_ is ElementMatch!20989) (regTwo!42490 r1!6261))) b!7837467))

(assert (= (and b!7837046 ((_ is Concat!29834) (regTwo!42490 r1!6261))) b!7837468))

(assert (= (and b!7837046 ((_ is Star!20989) (regTwo!42490 r1!6261))) b!7837469))

(assert (= (and b!7837046 ((_ is Union!20989) (regTwo!42490 r1!6261))) b!7837470))

(declare-fun b!7837472 () Bool)

(declare-fun e!4634357 () Bool)

(declare-fun tp!2318717 () Bool)

(declare-fun tp!2318714 () Bool)

(assert (=> b!7837472 (= e!4634357 (and tp!2318717 tp!2318714))))

(assert (=> b!7837041 (= tp!2318644 e!4634357)))

(declare-fun b!7837473 () Bool)

(declare-fun tp!2318716 () Bool)

(assert (=> b!7837473 (= e!4634357 tp!2318716)))

(declare-fun b!7837471 () Bool)

(assert (=> b!7837471 (= e!4634357 tp_is_empty!52333)))

(declare-fun b!7837474 () Bool)

(declare-fun tp!2318715 () Bool)

(declare-fun tp!2318713 () Bool)

(assert (=> b!7837474 (= e!4634357 (and tp!2318715 tp!2318713))))

(assert (= (and b!7837041 ((_ is ElementMatch!20989) (regOne!42491 r2!6199))) b!7837471))

(assert (= (and b!7837041 ((_ is Concat!29834) (regOne!42491 r2!6199))) b!7837472))

(assert (= (and b!7837041 ((_ is Star!20989) (regOne!42491 r2!6199))) b!7837473))

(assert (= (and b!7837041 ((_ is Union!20989) (regOne!42491 r2!6199))) b!7837474))

(declare-fun b!7837480 () Bool)

(declare-fun e!4634360 () Bool)

(declare-fun tp!2318722 () Bool)

(declare-fun tp!2318719 () Bool)

(assert (=> b!7837480 (= e!4634360 (and tp!2318722 tp!2318719))))

(assert (=> b!7837041 (= tp!2318655 e!4634360)))

(declare-fun b!7837481 () Bool)

(declare-fun tp!2318721 () Bool)

(assert (=> b!7837481 (= e!4634360 tp!2318721)))

(declare-fun b!7837479 () Bool)

(assert (=> b!7837479 (= e!4634360 tp_is_empty!52333)))

(declare-fun b!7837482 () Bool)

(declare-fun tp!2318720 () Bool)

(declare-fun tp!2318718 () Bool)

(assert (=> b!7837482 (= e!4634360 (and tp!2318720 tp!2318718))))

(assert (= (and b!7837041 ((_ is ElementMatch!20989) (regTwo!42491 r2!6199))) b!7837479))

(assert (= (and b!7837041 ((_ is Concat!29834) (regTwo!42491 r2!6199))) b!7837480))

(assert (= (and b!7837041 ((_ is Star!20989) (regTwo!42491 r2!6199))) b!7837481))

(assert (= (and b!7837041 ((_ is Union!20989) (regTwo!42491 r2!6199))) b!7837482))

(check-sat (not b!7837420) (not b!7837154) (not b!7837469) (not bm!726545) (not b!7837241) (not b!7837440) (not d!2351740) (not bm!726556) (not d!2351752) (not b!7837470) (not b!7837422) (not b!7837457) (not b!7837461) (not b!7837101) (not b!7837294) (not b!7837321) (not b!7837266) (not b!7837465) (not d!2351804) (not b!7837199) (not b!7837201) (not b!7837291) (not b!7837301) (not b!7837090) (not b!7837335) (not b!7837373) (not b!7837436) (not bm!726548) (not b!7837421) (not b!7837480) (not b!7837383) (not b!7837403) (not b!7837386) (not bm!726547) (not b!7837458) (not b!7837331) (not b!7837168) (not b!7837473) (not b!7837468) (not b!7837418) (not b!7837482) (not b!7837481) (not d!2351786) tp_is_empty!52333 (not b!7837460) (not b!7837148) (not b!7837329) (not b!7837297) (not b!7837152) (not b!7837399) (not b!7837302) (not b!7837098) (not b!7837456) (not d!2351808) (not bm!726533) (not b!7837166) (not b!7837169) (not b!7837380) (not b!7837151) (not b!7837123) (not b!7837200) (not b!7837417) (not b!7837295) (not b!7837124) (not b!7837387) (not d!2351734) (not b!7837100) (not d!2351788) (not bm!726544) (not b!7837404) (not d!2351800) (not b!7837438) (not b!7837263) (not b!7837155) (not d!2351738) (not b!7837158) (not b!7837464) (not b!7837376) (not b!7837162) (not b!7837299) (not d!2351730) (not b!7837472) (not b!7837439) (not d!2351760) (not b!7837384) (not b!7837405) (not b!7837323) (not d!2351736) (not b!7837400) (not bm!726536) (not b!7837437) (not d!2351824) (not b!7837474) (not b!7837094) (not b!7837144) (not b!7837466) (not b!7837462) (not b!7837097) (not d!2351816) (not b!7837165) (not b!7837326) (not b!7837401) (not b!7837416) (not d!2351796) (not b!7837333) (not b!7837322) (not b!7837262) (not b!7837334) (not b!7837293) (not b!7837325) (not b!7837298) (not bm!726532))
(check-sat)
