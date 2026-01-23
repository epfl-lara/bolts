; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!210432 () Bool)

(assert start!210432)

(declare-fun setIsEmpty!18173 () Bool)

(declare-fun setRes!18173 () Bool)

(assert (=> setIsEmpty!18173 setRes!18173))

(declare-fun b!2169748 () Bool)

(declare-fun e!1387689 () Bool)

(declare-fun e!1387692 () Bool)

(assert (=> b!2169748 (= e!1387689 e!1387692)))

(declare-fun res!933904 () Bool)

(assert (=> b!2169748 (=> (not res!933904) (not e!1387692))))

(declare-datatypes ((C!12162 0))(
  ( (C!12163 (val!7067 Int)) )
))
(declare-datatypes ((List!25237 0))(
  ( (Nil!25153) (Cons!25153 (h!30554 C!12162) (t!197799 List!25237)) )
))
(declare-fun lt!808070 () List!25237)

(declare-fun lt!808073 () List!25237)

(assert (=> b!2169748 (= res!933904 (= lt!808070 lt!808073))))

(declare-fun lt!808063 () List!25237)

(declare-fun lt!808074 () List!25237)

(declare-fun ++!6367 (List!25237 List!25237) List!25237)

(assert (=> b!2169748 (= lt!808070 (++!6367 lt!808063 lt!808074))))

(declare-datatypes ((IArray!16293 0))(
  ( (IArray!16294 (innerList!8204 List!25237)) )
))
(declare-datatypes ((Conc!8144 0))(
  ( (Node!8144 (left!19331 Conc!8144) (right!19661 Conc!8144) (csize!16518 Int) (cheight!8355 Int)) (Leaf!11916 (xs!11086 IArray!16293) (csize!16519 Int)) (Empty!8144) )
))
(declare-datatypes ((BalanceConc!16050 0))(
  ( (BalanceConc!16051 (c!343802 Conc!8144)) )
))
(declare-datatypes ((tuple2!24902 0))(
  ( (tuple2!24903 (_1!14821 BalanceConc!16050) (_2!14821 BalanceConc!16050)) )
))
(declare-fun lt!808076 () tuple2!24902)

(declare-fun list!9641 (BalanceConc!16050) List!25237)

(assert (=> b!2169748 (= lt!808074 (list!9641 (_2!14821 lt!808076)))))

(assert (=> b!2169748 (= lt!808063 (list!9641 (_1!14821 lt!808076)))))

(declare-datatypes ((tuple2!24904 0))(
  ( (tuple2!24905 (_1!14822 List!25237) (_2!14822 List!25237)) )
))
(declare-fun lt!808066 () tuple2!24904)

(declare-datatypes ((Regex!6008 0))(
  ( (ElementMatch!6008 (c!343803 C!12162)) (Concat!10310 (regOne!12528 Regex!6008) (regTwo!12528 Regex!6008)) (EmptyExpr!6008) (Star!6008 (reg!6337 Regex!6008)) (EmptyLang!6008) (Union!6008 (regOne!12529 Regex!6008) (regTwo!12529 Regex!6008)) )
))
(declare-fun r!12534 () Regex!6008)

(declare-fun findLongestMatch!562 (Regex!6008 List!25237) tuple2!24904)

(assert (=> b!2169748 (= lt!808066 (findLongestMatch!562 r!12534 lt!808073))))

(declare-fun lt!808071 () Int)

(declare-fun lt!808069 () Int)

(declare-fun input!5540 () BalanceConc!16050)

(declare-fun size!19654 (BalanceConc!16050) Int)

(assert (=> b!2169748 (= lt!808071 (- lt!808069 (size!19654 input!5540)))))

(declare-fun totalInput!977 () BalanceConc!16050)

(assert (=> b!2169748 (= lt!808069 (size!19654 totalInput!977))))

(declare-datatypes ((List!25238 0))(
  ( (Nil!25154) (Cons!25154 (h!30555 Regex!6008) (t!197800 List!25238)) )
))
(declare-datatypes ((Context!3156 0))(
  ( (Context!3157 (exprs!2078 List!25238)) )
))
(declare-fun z!4055 () (Set Context!3156))

(declare-fun findLongestMatchZipperSequenceV3!57 ((Set Context!3156) BalanceConc!16050 BalanceConc!16050) tuple2!24902)

(assert (=> b!2169748 (= lt!808076 (findLongestMatchZipperSequenceV3!57 z!4055 input!5540 totalInput!977))))

(declare-fun b!2169749 () Bool)

(declare-fun e!1387687 () Bool)

(assert (=> b!2169749 (= e!1387687 (not (and (>= lt!808071 0) (<= lt!808071 lt!808069))))))

(declare-fun lt!808064 () Bool)

(declare-fun nullableZipper!288 ((Set Context!3156)) Bool)

(assert (=> b!2169749 (= lt!808064 (nullableZipper!288 z!4055))))

(declare-fun lt!808068 () List!25237)

(declare-fun isPrefix!2124 (List!25237 List!25237) Bool)

(declare-fun take!216 (List!25237 Int) List!25237)

(assert (=> b!2169749 (isPrefix!2124 (take!216 lt!808068 lt!808071) lt!808068)))

(declare-datatypes ((Unit!38217 0))(
  ( (Unit!38218) )
))
(declare-fun lt!808065 () Unit!38217)

(declare-fun lemmaTakeIsPrefix!39 (List!25237 Int) Unit!38217)

(assert (=> b!2169749 (= lt!808065 (lemmaTakeIsPrefix!39 lt!808068 lt!808071))))

(declare-fun lt!808067 () List!25237)

(assert (=> b!2169749 (isPrefix!2124 (_1!14822 lt!808066) lt!808067)))

(declare-fun lt!808075 () Unit!38217)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1407 (List!25237 List!25237) Unit!38217)

(assert (=> b!2169749 (= lt!808075 (lemmaConcatTwoListThenFirstIsPrefix!1407 (_1!14822 lt!808066) (_2!14822 lt!808066)))))

(assert (=> b!2169749 (isPrefix!2124 lt!808063 lt!808070)))

(declare-fun lt!808072 () Unit!38217)

(assert (=> b!2169749 (= lt!808072 (lemmaConcatTwoListThenFirstIsPrefix!1407 lt!808063 lt!808074))))

(declare-fun b!2169751 () Bool)

(declare-fun e!1387691 () Bool)

(declare-fun tp!677268 () Bool)

(declare-fun tp!677271 () Bool)

(assert (=> b!2169751 (= e!1387691 (and tp!677268 tp!677271))))

(declare-fun b!2169752 () Bool)

(declare-fun tp_is_empty!9623 () Bool)

(assert (=> b!2169752 (= e!1387691 tp_is_empty!9623)))

(declare-fun b!2169753 () Bool)

(declare-fun e!1387690 () Bool)

(declare-fun tp!677273 () Bool)

(assert (=> b!2169753 (= e!1387690 tp!677273)))

(declare-fun b!2169754 () Bool)

(declare-fun e!1387686 () Bool)

(declare-fun tp!677272 () Bool)

(declare-fun inv!33372 (Conc!8144) Bool)

(assert (=> b!2169754 (= e!1387686 (and (inv!33372 (c!343802 totalInput!977)) tp!677272))))

(declare-fun b!2169755 () Bool)

(declare-fun res!933905 () Bool)

(declare-fun e!1387693 () Bool)

(assert (=> b!2169755 (=> (not res!933905) (not e!1387693))))

(declare-datatypes ((List!25239 0))(
  ( (Nil!25155) (Cons!25155 (h!30556 Context!3156) (t!197801 List!25239)) )
))
(declare-fun unfocusZipper!115 (List!25239) Regex!6008)

(declare-fun toList!1191 ((Set Context!3156)) List!25239)

(assert (=> b!2169755 (= res!933905 (= (unfocusZipper!115 (toList!1191 z!4055)) r!12534))))

(declare-fun setElem!18173 () Context!3156)

(declare-fun tp!677270 () Bool)

(declare-fun setNonEmpty!18173 () Bool)

(declare-fun inv!33373 (Context!3156) Bool)

(assert (=> setNonEmpty!18173 (= setRes!18173 (and tp!677270 (inv!33373 setElem!18173) e!1387690))))

(declare-fun setRest!18173 () (Set Context!3156))

(assert (=> setNonEmpty!18173 (= z!4055 (set.union (set.insert setElem!18173 (as set.empty (Set Context!3156))) setRest!18173))))

(declare-fun b!2169756 () Bool)

(assert (=> b!2169756 (= e!1387692 e!1387687)))

(declare-fun res!933903 () Bool)

(assert (=> b!2169756 (=> (not res!933903) (not e!1387687))))

(assert (=> b!2169756 (= res!933903 (= lt!808067 lt!808073))))

(assert (=> b!2169756 (= lt!808067 (++!6367 (_1!14822 lt!808066) (_2!14822 lt!808066)))))

(declare-fun b!2169757 () Bool)

(declare-fun e!1387688 () Bool)

(declare-fun tp!677269 () Bool)

(assert (=> b!2169757 (= e!1387688 (and (inv!33372 (c!343802 input!5540)) tp!677269))))

(declare-fun res!933906 () Bool)

(assert (=> start!210432 (=> (not res!933906) (not e!1387693))))

(declare-fun validRegex!2284 (Regex!6008) Bool)

(assert (=> start!210432 (= res!933906 (validRegex!2284 r!12534))))

(assert (=> start!210432 e!1387693))

(assert (=> start!210432 e!1387691))

(declare-fun condSetEmpty!18173 () Bool)

(assert (=> start!210432 (= condSetEmpty!18173 (= z!4055 (as set.empty (Set Context!3156))))))

(assert (=> start!210432 setRes!18173))

(declare-fun inv!33374 (BalanceConc!16050) Bool)

(assert (=> start!210432 (and (inv!33374 totalInput!977) e!1387686)))

(assert (=> start!210432 (and (inv!33374 input!5540) e!1387688)))

(declare-fun b!2169750 () Bool)

(assert (=> b!2169750 (= e!1387693 e!1387689)))

(declare-fun res!933902 () Bool)

(assert (=> b!2169750 (=> (not res!933902) (not e!1387689))))

(declare-fun isSuffix!675 (List!25237 List!25237) Bool)

(assert (=> b!2169750 (= res!933902 (isSuffix!675 lt!808073 lt!808068))))

(assert (=> b!2169750 (= lt!808068 (list!9641 totalInput!977))))

(assert (=> b!2169750 (= lt!808073 (list!9641 input!5540))))

(declare-fun b!2169758 () Bool)

(declare-fun tp!677267 () Bool)

(declare-fun tp!677265 () Bool)

(assert (=> b!2169758 (= e!1387691 (and tp!677267 tp!677265))))

(declare-fun b!2169759 () Bool)

(declare-fun tp!677266 () Bool)

(assert (=> b!2169759 (= e!1387691 tp!677266)))

(assert (= (and start!210432 res!933906) b!2169755))

(assert (= (and b!2169755 res!933905) b!2169750))

(assert (= (and b!2169750 res!933902) b!2169748))

(assert (= (and b!2169748 res!933904) b!2169756))

(assert (= (and b!2169756 res!933903) b!2169749))

(assert (= (and start!210432 (is-ElementMatch!6008 r!12534)) b!2169752))

(assert (= (and start!210432 (is-Concat!10310 r!12534)) b!2169758))

(assert (= (and start!210432 (is-Star!6008 r!12534)) b!2169759))

(assert (= (and start!210432 (is-Union!6008 r!12534)) b!2169751))

(assert (= (and start!210432 condSetEmpty!18173) setIsEmpty!18173))

(assert (= (and start!210432 (not condSetEmpty!18173)) setNonEmpty!18173))

(assert (= setNonEmpty!18173 b!2169753))

(assert (= start!210432 b!2169754))

(assert (= start!210432 b!2169757))

(declare-fun m!2610807 () Bool)

(assert (=> b!2169749 m!2610807))

(declare-fun m!2610809 () Bool)

(assert (=> b!2169749 m!2610809))

(declare-fun m!2610811 () Bool)

(assert (=> b!2169749 m!2610811))

(declare-fun m!2610813 () Bool)

(assert (=> b!2169749 m!2610813))

(declare-fun m!2610815 () Bool)

(assert (=> b!2169749 m!2610815))

(declare-fun m!2610817 () Bool)

(assert (=> b!2169749 m!2610817))

(declare-fun m!2610819 () Bool)

(assert (=> b!2169749 m!2610819))

(assert (=> b!2169749 m!2610815))

(declare-fun m!2610821 () Bool)

(assert (=> b!2169749 m!2610821))

(declare-fun m!2610823 () Bool)

(assert (=> b!2169748 m!2610823))

(declare-fun m!2610825 () Bool)

(assert (=> b!2169748 m!2610825))

(declare-fun m!2610827 () Bool)

(assert (=> b!2169748 m!2610827))

(declare-fun m!2610829 () Bool)

(assert (=> b!2169748 m!2610829))

(declare-fun m!2610831 () Bool)

(assert (=> b!2169748 m!2610831))

(declare-fun m!2610833 () Bool)

(assert (=> b!2169748 m!2610833))

(declare-fun m!2610835 () Bool)

(assert (=> b!2169748 m!2610835))

(declare-fun m!2610837 () Bool)

(assert (=> start!210432 m!2610837))

(declare-fun m!2610839 () Bool)

(assert (=> start!210432 m!2610839))

(declare-fun m!2610841 () Bool)

(assert (=> start!210432 m!2610841))

(declare-fun m!2610843 () Bool)

(assert (=> b!2169756 m!2610843))

(declare-fun m!2610845 () Bool)

(assert (=> b!2169755 m!2610845))

(assert (=> b!2169755 m!2610845))

(declare-fun m!2610847 () Bool)

(assert (=> b!2169755 m!2610847))

(declare-fun m!2610849 () Bool)

(assert (=> b!2169754 m!2610849))

(declare-fun m!2610851 () Bool)

(assert (=> b!2169757 m!2610851))

(declare-fun m!2610853 () Bool)

(assert (=> setNonEmpty!18173 m!2610853))

(declare-fun m!2610855 () Bool)

(assert (=> b!2169750 m!2610855))

(declare-fun m!2610857 () Bool)

(assert (=> b!2169750 m!2610857))

(declare-fun m!2610859 () Bool)

(assert (=> b!2169750 m!2610859))

(push 1)

(assert (not b!2169749))

(assert (not b!2169753))

(assert (not b!2169756))

(assert (not b!2169750))

(assert (not b!2169757))

(assert (not b!2169754))

(assert (not b!2169755))

(assert (not b!2169751))

(assert (not start!210432))

(assert tp_is_empty!9623)

(assert (not b!2169758))

(assert (not b!2169748))

(assert (not b!2169759))

(assert (not setNonEmpty!18173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!649738 () Bool)

(declare-fun e!1387720 () Bool)

(assert (=> d!649738 e!1387720))

(declare-fun res!933924 () Bool)

(assert (=> d!649738 (=> res!933924 e!1387720)))

(declare-fun lt!808121 () Bool)

(assert (=> d!649738 (= res!933924 (not lt!808121))))

(declare-fun drop!1230 (List!25237 Int) List!25237)

(declare-fun size!19656 (List!25237) Int)

(assert (=> d!649738 (= lt!808121 (= lt!808073 (drop!1230 lt!808068 (- (size!19656 lt!808068) (size!19656 lt!808073)))))))

(assert (=> d!649738 (= (isSuffix!675 lt!808073 lt!808068) lt!808121)))

(declare-fun b!2169798 () Bool)

(assert (=> b!2169798 (= e!1387720 (>= (size!19656 lt!808068) (size!19656 lt!808073)))))

(assert (= (and d!649738 (not res!933924)) b!2169798))

(declare-fun m!2610915 () Bool)

(assert (=> d!649738 m!2610915))

(declare-fun m!2610917 () Bool)

(assert (=> d!649738 m!2610917))

(declare-fun m!2610919 () Bool)

(assert (=> d!649738 m!2610919))

(assert (=> b!2169798 m!2610915))

(assert (=> b!2169798 m!2610917))

(assert (=> b!2169750 d!649738))

(declare-fun d!649740 () Bool)

(declare-fun list!9643 (Conc!8144) List!25237)

(assert (=> d!649740 (= (list!9641 totalInput!977) (list!9643 (c!343802 totalInput!977)))))

(declare-fun bs!446859 () Bool)

(assert (= bs!446859 d!649740))

(declare-fun m!2610921 () Bool)

(assert (=> bs!446859 m!2610921))

(assert (=> b!2169750 d!649740))

(declare-fun d!649742 () Bool)

(assert (=> d!649742 (= (list!9641 input!5540) (list!9643 (c!343802 input!5540)))))

(declare-fun bs!446860 () Bool)

(assert (= bs!446860 d!649742))

(declare-fun m!2610923 () Bool)

(assert (=> bs!446860 m!2610923))

(assert (=> b!2169750 d!649742))

(declare-fun d!649744 () Bool)

(declare-fun lt!808124 () Regex!6008)

(assert (=> d!649744 (validRegex!2284 lt!808124)))

(declare-fun generalisedUnion!510 (List!25238) Regex!6008)

(declare-fun unfocusZipperList!34 (List!25239) List!25238)

(assert (=> d!649744 (= lt!808124 (generalisedUnion!510 (unfocusZipperList!34 (toList!1191 z!4055))))))

(assert (=> d!649744 (= (unfocusZipper!115 (toList!1191 z!4055)) lt!808124)))

(declare-fun bs!446861 () Bool)

(assert (= bs!446861 d!649744))

(declare-fun m!2610925 () Bool)

(assert (=> bs!446861 m!2610925))

(assert (=> bs!446861 m!2610845))

(declare-fun m!2610927 () Bool)

(assert (=> bs!446861 m!2610927))

(assert (=> bs!446861 m!2610927))

(declare-fun m!2610929 () Bool)

(assert (=> bs!446861 m!2610929))

(assert (=> b!2169755 d!649744))

(declare-fun d!649746 () Bool)

(declare-fun e!1387723 () Bool)

(assert (=> d!649746 e!1387723))

(declare-fun res!933927 () Bool)

(assert (=> d!649746 (=> (not res!933927) (not e!1387723))))

(declare-fun lt!808127 () List!25239)

(declare-fun noDuplicate!287 (List!25239) Bool)

(assert (=> d!649746 (= res!933927 (noDuplicate!287 lt!808127))))

(declare-fun choose!12781 ((Set Context!3156)) List!25239)

(assert (=> d!649746 (= lt!808127 (choose!12781 z!4055))))

(assert (=> d!649746 (= (toList!1191 z!4055) lt!808127)))

(declare-fun b!2169801 () Bool)

(declare-fun content!3414 (List!25239) (Set Context!3156))

(assert (=> b!2169801 (= e!1387723 (= (content!3414 lt!808127) z!4055))))

(assert (= (and d!649746 res!933927) b!2169801))

(declare-fun m!2610931 () Bool)

(assert (=> d!649746 m!2610931))

(declare-fun m!2610933 () Bool)

(assert (=> d!649746 m!2610933))

(declare-fun m!2610935 () Bool)

(assert (=> b!2169801 m!2610935))

(assert (=> b!2169755 d!649746))

(declare-fun b!2169820 () Bool)

(declare-fun e!1387738 () Bool)

(declare-fun call!130161 () Bool)

(assert (=> b!2169820 (= e!1387738 call!130161)))

(declare-fun bm!130154 () Bool)

(declare-fun call!130159 () Bool)

(declare-fun c!343810 () Bool)

(assert (=> bm!130154 (= call!130159 (validRegex!2284 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534))))))

(declare-fun b!2169821 () Bool)

(declare-fun e!1387743 () Bool)

(declare-fun e!1387742 () Bool)

(assert (=> b!2169821 (= e!1387743 e!1387742)))

(declare-fun c!343811 () Bool)

(assert (=> b!2169821 (= c!343811 (is-Star!6008 r!12534))))

(declare-fun b!2169822 () Bool)

(declare-fun res!933941 () Bool)

(declare-fun e!1387744 () Bool)

(assert (=> b!2169822 (=> (not res!933941) (not e!1387744))))

(assert (=> b!2169822 (= res!933941 call!130159)))

(declare-fun e!1387741 () Bool)

(assert (=> b!2169822 (= e!1387741 e!1387744)))

(declare-fun b!2169823 () Bool)

(declare-fun e!1387740 () Bool)

(assert (=> b!2169823 (= e!1387740 call!130159)))

(declare-fun b!2169824 () Bool)

(declare-fun e!1387739 () Bool)

(assert (=> b!2169824 (= e!1387739 e!1387740)))

(declare-fun res!933942 () Bool)

(assert (=> b!2169824 (=> (not res!933942) (not e!1387740))))

(declare-fun call!130160 () Bool)

(assert (=> b!2169824 (= res!933942 call!130160)))

(declare-fun b!2169825 () Bool)

(declare-fun res!933938 () Bool)

(assert (=> b!2169825 (=> res!933938 e!1387739)))

(assert (=> b!2169825 (= res!933938 (not (is-Concat!10310 r!12534)))))

(assert (=> b!2169825 (= e!1387741 e!1387739)))

(declare-fun bm!130155 () Bool)

(assert (=> bm!130155 (= call!130160 call!130161)))

(declare-fun d!649748 () Bool)

(declare-fun res!933940 () Bool)

(assert (=> d!649748 (=> res!933940 e!1387743)))

(assert (=> d!649748 (= res!933940 (is-ElementMatch!6008 r!12534))))

(assert (=> d!649748 (= (validRegex!2284 r!12534) e!1387743)))

(declare-fun b!2169826 () Bool)

(assert (=> b!2169826 (= e!1387742 e!1387738)))

(declare-fun res!933939 () Bool)

(declare-fun nullable!1694 (Regex!6008) Bool)

(assert (=> b!2169826 (= res!933939 (not (nullable!1694 (reg!6337 r!12534))))))

(assert (=> b!2169826 (=> (not res!933939) (not e!1387738))))

(declare-fun b!2169827 () Bool)

(assert (=> b!2169827 (= e!1387742 e!1387741)))

(assert (=> b!2169827 (= c!343810 (is-Union!6008 r!12534))))

(declare-fun b!2169828 () Bool)

(assert (=> b!2169828 (= e!1387744 call!130160)))

(declare-fun bm!130156 () Bool)

(assert (=> bm!130156 (= call!130161 (validRegex!2284 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534)))))))

(assert (= (and d!649748 (not res!933940)) b!2169821))

(assert (= (and b!2169821 c!343811) b!2169826))

(assert (= (and b!2169821 (not c!343811)) b!2169827))

(assert (= (and b!2169826 res!933939) b!2169820))

(assert (= (and b!2169827 c!343810) b!2169822))

(assert (= (and b!2169827 (not c!343810)) b!2169825))

(assert (= (and b!2169822 res!933941) b!2169828))

(assert (= (and b!2169825 (not res!933938)) b!2169824))

(assert (= (and b!2169824 res!933942) b!2169823))

(assert (= (or b!2169828 b!2169824) bm!130155))

(assert (= (or b!2169822 b!2169823) bm!130154))

(assert (= (or b!2169820 bm!130155) bm!130156))

(declare-fun m!2610937 () Bool)

(assert (=> bm!130154 m!2610937))

(declare-fun m!2610939 () Bool)

(assert (=> b!2169826 m!2610939))

(declare-fun m!2610941 () Bool)

(assert (=> bm!130156 m!2610941))

(assert (=> start!210432 d!649748))

(declare-fun d!649752 () Bool)

(declare-fun isBalanced!2527 (Conc!8144) Bool)

(assert (=> d!649752 (= (inv!33374 totalInput!977) (isBalanced!2527 (c!343802 totalInput!977)))))

(declare-fun bs!446862 () Bool)

(assert (= bs!446862 d!649752))

(declare-fun m!2610943 () Bool)

(assert (=> bs!446862 m!2610943))

(assert (=> start!210432 d!649752))

(declare-fun d!649754 () Bool)

(assert (=> d!649754 (= (inv!33374 input!5540) (isBalanced!2527 (c!343802 input!5540)))))

(declare-fun bs!446863 () Bool)

(assert (= bs!446863 d!649754))

(declare-fun m!2610945 () Bool)

(assert (=> bs!446863 m!2610945))

(assert (=> start!210432 d!649754))

(declare-fun d!649756 () Bool)

(declare-fun lambda!81776 () Int)

(declare-fun forall!5166 (List!25238 Int) Bool)

(assert (=> d!649756 (= (inv!33373 setElem!18173) (forall!5166 (exprs!2078 setElem!18173) lambda!81776))))

(declare-fun bs!446868 () Bool)

(assert (= bs!446868 d!649756))

(declare-fun m!2610991 () Bool)

(assert (=> bs!446868 m!2610991))

(assert (=> setNonEmpty!18173 d!649756))

(declare-fun b!2169882 () Bool)

(declare-fun e!1387776 () List!25237)

(assert (=> b!2169882 (= e!1387776 (_2!14822 lt!808066))))

(declare-fun b!2169885 () Bool)

(declare-fun e!1387777 () Bool)

(declare-fun lt!808143 () List!25237)

(assert (=> b!2169885 (= e!1387777 (or (not (= (_2!14822 lt!808066) Nil!25153)) (= lt!808143 (_1!14822 lt!808066))))))

(declare-fun d!649774 () Bool)

(assert (=> d!649774 e!1387777))

(declare-fun res!933962 () Bool)

(assert (=> d!649774 (=> (not res!933962) (not e!1387777))))

(declare-fun content!3415 (List!25237) (Set C!12162))

(assert (=> d!649774 (= res!933962 (= (content!3415 lt!808143) (set.union (content!3415 (_1!14822 lt!808066)) (content!3415 (_2!14822 lt!808066)))))))

(assert (=> d!649774 (= lt!808143 e!1387776)))

(declare-fun c!343831 () Bool)

(assert (=> d!649774 (= c!343831 (is-Nil!25153 (_1!14822 lt!808066)))))

(assert (=> d!649774 (= (++!6367 (_1!14822 lt!808066) (_2!14822 lt!808066)) lt!808143)))

(declare-fun b!2169883 () Bool)

(assert (=> b!2169883 (= e!1387776 (Cons!25153 (h!30554 (_1!14822 lt!808066)) (++!6367 (t!197799 (_1!14822 lt!808066)) (_2!14822 lt!808066))))))

(declare-fun b!2169884 () Bool)

(declare-fun res!933963 () Bool)

(assert (=> b!2169884 (=> (not res!933963) (not e!1387777))))

(assert (=> b!2169884 (= res!933963 (= (size!19656 lt!808143) (+ (size!19656 (_1!14822 lt!808066)) (size!19656 (_2!14822 lt!808066)))))))

(assert (= (and d!649774 c!343831) b!2169882))

(assert (= (and d!649774 (not c!343831)) b!2169883))

(assert (= (and d!649774 res!933962) b!2169884))

(assert (= (and b!2169884 res!933963) b!2169885))

(declare-fun m!2610993 () Bool)

(assert (=> d!649774 m!2610993))

(declare-fun m!2610995 () Bool)

(assert (=> d!649774 m!2610995))

(declare-fun m!2610997 () Bool)

(assert (=> d!649774 m!2610997))

(declare-fun m!2610999 () Bool)

(assert (=> b!2169883 m!2610999))

(declare-fun m!2611001 () Bool)

(assert (=> b!2169884 m!2611001))

(declare-fun m!2611003 () Bool)

(assert (=> b!2169884 m!2611003))

(declare-fun m!2611005 () Bool)

(assert (=> b!2169884 m!2611005))

(assert (=> b!2169756 d!649774))

(declare-fun d!649776 () Bool)

(declare-fun c!343834 () Bool)

(assert (=> d!649776 (= c!343834 (is-Node!8144 (c!343802 input!5540)))))

(declare-fun e!1387782 () Bool)

(assert (=> d!649776 (= (inv!33372 (c!343802 input!5540)) e!1387782)))

(declare-fun b!2169892 () Bool)

(declare-fun inv!33378 (Conc!8144) Bool)

(assert (=> b!2169892 (= e!1387782 (inv!33378 (c!343802 input!5540)))))

(declare-fun b!2169893 () Bool)

(declare-fun e!1387783 () Bool)

(assert (=> b!2169893 (= e!1387782 e!1387783)))

(declare-fun res!933966 () Bool)

(assert (=> b!2169893 (= res!933966 (not (is-Leaf!11916 (c!343802 input!5540))))))

(assert (=> b!2169893 (=> res!933966 e!1387783)))

(declare-fun b!2169894 () Bool)

(declare-fun inv!33379 (Conc!8144) Bool)

(assert (=> b!2169894 (= e!1387783 (inv!33379 (c!343802 input!5540)))))

(assert (= (and d!649776 c!343834) b!2169892))

(assert (= (and d!649776 (not c!343834)) b!2169893))

(assert (= (and b!2169893 (not res!933966)) b!2169894))

(declare-fun m!2611007 () Bool)

(assert (=> b!2169892 m!2611007))

(declare-fun m!2611009 () Bool)

(assert (=> b!2169894 m!2611009))

(assert (=> b!2169757 d!649776))

(declare-fun d!649778 () Bool)

(declare-fun lt!808146 () Int)

(assert (=> d!649778 (= lt!808146 (size!19656 (list!9641 totalInput!977)))))

(declare-fun size!19657 (Conc!8144) Int)

(assert (=> d!649778 (= lt!808146 (size!19657 (c!343802 totalInput!977)))))

(assert (=> d!649778 (= (size!19654 totalInput!977) lt!808146)))

(declare-fun bs!446869 () Bool)

(assert (= bs!446869 d!649778))

(assert (=> bs!446869 m!2610857))

(assert (=> bs!446869 m!2610857))

(declare-fun m!2611011 () Bool)

(assert (=> bs!446869 m!2611011))

(declare-fun m!2611013 () Bool)

(assert (=> bs!446869 m!2611013))

(assert (=> b!2169748 d!649778))

(declare-fun b!2169895 () Bool)

(declare-fun e!1387784 () List!25237)

(assert (=> b!2169895 (= e!1387784 lt!808074)))

(declare-fun e!1387785 () Bool)

(declare-fun lt!808147 () List!25237)

(declare-fun b!2169898 () Bool)

(assert (=> b!2169898 (= e!1387785 (or (not (= lt!808074 Nil!25153)) (= lt!808147 lt!808063)))))

(declare-fun d!649780 () Bool)

(assert (=> d!649780 e!1387785))

(declare-fun res!933967 () Bool)

(assert (=> d!649780 (=> (not res!933967) (not e!1387785))))

(assert (=> d!649780 (= res!933967 (= (content!3415 lt!808147) (set.union (content!3415 lt!808063) (content!3415 lt!808074))))))

(assert (=> d!649780 (= lt!808147 e!1387784)))

(declare-fun c!343835 () Bool)

(assert (=> d!649780 (= c!343835 (is-Nil!25153 lt!808063))))

(assert (=> d!649780 (= (++!6367 lt!808063 lt!808074) lt!808147)))

(declare-fun b!2169896 () Bool)

(assert (=> b!2169896 (= e!1387784 (Cons!25153 (h!30554 lt!808063) (++!6367 (t!197799 lt!808063) lt!808074)))))

(declare-fun b!2169897 () Bool)

(declare-fun res!933968 () Bool)

(assert (=> b!2169897 (=> (not res!933968) (not e!1387785))))

(assert (=> b!2169897 (= res!933968 (= (size!19656 lt!808147) (+ (size!19656 lt!808063) (size!19656 lt!808074))))))

(assert (= (and d!649780 c!343835) b!2169895))

(assert (= (and d!649780 (not c!343835)) b!2169896))

(assert (= (and d!649780 res!933967) b!2169897))

(assert (= (and b!2169897 res!933968) b!2169898))

(declare-fun m!2611015 () Bool)

(assert (=> d!649780 m!2611015))

(declare-fun m!2611017 () Bool)

(assert (=> d!649780 m!2611017))

(declare-fun m!2611019 () Bool)

(assert (=> d!649780 m!2611019))

(declare-fun m!2611021 () Bool)

(assert (=> b!2169896 m!2611021))

(declare-fun m!2611023 () Bool)

(assert (=> b!2169897 m!2611023))

(declare-fun m!2611025 () Bool)

(assert (=> b!2169897 m!2611025))

(declare-fun m!2611027 () Bool)

(assert (=> b!2169897 m!2611027))

(assert (=> b!2169748 d!649780))

(declare-fun d!649782 () Bool)

(declare-fun lt!808148 () Int)

(assert (=> d!649782 (= lt!808148 (size!19656 (list!9641 input!5540)))))

(assert (=> d!649782 (= lt!808148 (size!19657 (c!343802 input!5540)))))

(assert (=> d!649782 (= (size!19654 input!5540) lt!808148)))

(declare-fun bs!446870 () Bool)

(assert (= bs!446870 d!649782))

(assert (=> bs!446870 m!2610859))

(assert (=> bs!446870 m!2610859))

(declare-fun m!2611029 () Bool)

(assert (=> bs!446870 m!2611029))

(declare-fun m!2611031 () Bool)

(assert (=> bs!446870 m!2611031))

(assert (=> b!2169748 d!649782))

(declare-fun b!2169907 () Bool)

(declare-fun e!1387790 () tuple2!24902)

(declare-fun call!130164 () tuple2!24902)

(assert (=> b!2169907 (= e!1387790 call!130164)))

(declare-fun b!2169908 () Bool)

(assert (=> b!2169908 (= e!1387790 call!130164)))

(declare-fun c!343840 () Bool)

(declare-fun lt!808160 () Int)

(declare-fun bm!130159 () Bool)

(declare-fun splitAt!32 (BalanceConc!16050 Int) tuple2!24902)

(assert (=> bm!130159 (= call!130164 (splitAt!32 input!5540 (ite c!343840 0 lt!808160)))))

(declare-fun b!2169909 () Bool)

(declare-fun e!1387791 () Int)

(assert (=> b!2169909 (= e!1387791 (- 1))))

(declare-fun b!2169910 () Bool)

(declare-fun lt!808159 () Int)

(assert (=> b!2169910 (= e!1387791 (- lt!808159 1))))

(declare-fun d!649784 () Bool)

(declare-fun lt!808157 () tuple2!24902)

(assert (=> d!649784 (= (++!6367 (list!9641 (_1!14821 lt!808157)) (list!9641 (_2!14821 lt!808157))) (list!9641 input!5540))))

(assert (=> d!649784 (= lt!808157 e!1387790)))

(assert (=> d!649784 (= c!343840 (< lt!808160 0))))

(declare-fun lt!808158 () Int)

(declare-fun furthestNullablePosition!194 ((Set Context!3156) Int BalanceConc!16050 Int Int) Int)

(assert (=> d!649784 (= lt!808160 (+ (- (furthestNullablePosition!194 z!4055 lt!808159 totalInput!977 lt!808158 e!1387791) lt!808159) 1))))

(declare-fun c!343841 () Bool)

(assert (=> d!649784 (= c!343841 (nullableZipper!288 z!4055))))

(assert (=> d!649784 (= lt!808159 (- lt!808158 (size!19654 input!5540)))))

(assert (=> d!649784 (= lt!808158 (size!19654 totalInput!977))))

(assert (=> d!649784 (isSuffix!675 (list!9641 input!5540) (list!9641 totalInput!977))))

(assert (=> d!649784 (= (findLongestMatchZipperSequenceV3!57 z!4055 input!5540 totalInput!977) lt!808157)))

(assert (= (and d!649784 c!343841) b!2169910))

(assert (= (and d!649784 (not c!343841)) b!2169909))

(assert (= (and d!649784 c!343840) b!2169908))

(assert (= (and d!649784 (not c!343840)) b!2169907))

(assert (= (or b!2169908 b!2169907) bm!130159))

(declare-fun m!2611033 () Bool)

(assert (=> bm!130159 m!2611033))

(assert (=> d!649784 m!2610857))

(declare-fun m!2611035 () Bool)

(assert (=> d!649784 m!2611035))

(declare-fun m!2611037 () Bool)

(assert (=> d!649784 m!2611037))

(declare-fun m!2611039 () Bool)

(assert (=> d!649784 m!2611039))

(assert (=> d!649784 m!2611035))

(assert (=> d!649784 m!2611037))

(assert (=> d!649784 m!2610827))

(assert (=> d!649784 m!2610859))

(assert (=> d!649784 m!2610859))

(assert (=> d!649784 m!2610857))

(declare-fun m!2611041 () Bool)

(assert (=> d!649784 m!2611041))

(assert (=> d!649784 m!2610813))

(declare-fun m!2611043 () Bool)

(assert (=> d!649784 m!2611043))

(assert (=> d!649784 m!2610825))

(assert (=> b!2169748 d!649784))

(declare-fun d!649786 () Bool)

(assert (=> d!649786 (= (list!9641 (_2!14821 lt!808076)) (list!9643 (c!343802 (_2!14821 lt!808076))))))

(declare-fun bs!446871 () Bool)

(assert (= bs!446871 d!649786))

(declare-fun m!2611045 () Bool)

(assert (=> bs!446871 m!2611045))

(assert (=> b!2169748 d!649786))

(declare-fun d!649788 () Bool)

(declare-fun lt!808183 () tuple2!24904)

(assert (=> d!649788 (= (++!6367 (_1!14822 lt!808183) (_2!14822 lt!808183)) lt!808073)))

(declare-fun findLongestMatchInner!637 (Regex!6008 List!25237 Int List!25237 List!25237 Int) tuple2!24904)

(declare-fun sizeTr!111 (List!25237 Int) Int)

(assert (=> d!649788 (= lt!808183 (findLongestMatchInner!637 r!12534 Nil!25153 0 lt!808073 lt!808073 (sizeTr!111 lt!808073 0)))))

(declare-fun lt!808178 () Unit!38217)

(declare-fun lt!808182 () Unit!38217)

(assert (=> d!649788 (= lt!808178 lt!808182)))

(declare-fun lt!808184 () List!25237)

(declare-fun lt!808179 () Int)

(assert (=> d!649788 (= (sizeTr!111 lt!808184 lt!808179) (+ (size!19656 lt!808184) lt!808179))))

(declare-fun lemmaSizeTrEqualsSize!110 (List!25237 Int) Unit!38217)

(assert (=> d!649788 (= lt!808182 (lemmaSizeTrEqualsSize!110 lt!808184 lt!808179))))

(assert (=> d!649788 (= lt!808179 0)))

(assert (=> d!649788 (= lt!808184 Nil!25153)))

(declare-fun lt!808177 () Unit!38217)

(declare-fun lt!808180 () Unit!38217)

(assert (=> d!649788 (= lt!808177 lt!808180)))

(declare-fun lt!808181 () Int)

(assert (=> d!649788 (= (sizeTr!111 lt!808073 lt!808181) (+ (size!19656 lt!808073) lt!808181))))

(assert (=> d!649788 (= lt!808180 (lemmaSizeTrEqualsSize!110 lt!808073 lt!808181))))

(assert (=> d!649788 (= lt!808181 0)))

(assert (=> d!649788 (validRegex!2284 r!12534)))

(assert (=> d!649788 (= (findLongestMatch!562 r!12534 lt!808073) lt!808183)))

(declare-fun bs!446872 () Bool)

(assert (= bs!446872 d!649788))

(assert (=> bs!446872 m!2610917))

(declare-fun m!2611047 () Bool)

(assert (=> bs!446872 m!2611047))

(declare-fun m!2611049 () Bool)

(assert (=> bs!446872 m!2611049))

(assert (=> bs!446872 m!2611049))

(declare-fun m!2611051 () Bool)

(assert (=> bs!446872 m!2611051))

(assert (=> bs!446872 m!2610837))

(declare-fun m!2611053 () Bool)

(assert (=> bs!446872 m!2611053))

(declare-fun m!2611055 () Bool)

(assert (=> bs!446872 m!2611055))

(declare-fun m!2611057 () Bool)

(assert (=> bs!446872 m!2611057))

(declare-fun m!2611059 () Bool)

(assert (=> bs!446872 m!2611059))

(declare-fun m!2611061 () Bool)

(assert (=> bs!446872 m!2611061))

(assert (=> b!2169748 d!649788))

(declare-fun d!649790 () Bool)

(assert (=> d!649790 (= (list!9641 (_1!14821 lt!808076)) (list!9643 (c!343802 (_1!14821 lt!808076))))))

(declare-fun bs!446873 () Bool)

(assert (= bs!446873 d!649790))

(declare-fun m!2611063 () Bool)

(assert (=> bs!446873 m!2611063))

(assert (=> b!2169748 d!649790))

(declare-fun d!649792 () Bool)

(declare-fun c!343842 () Bool)

(assert (=> d!649792 (= c!343842 (is-Node!8144 (c!343802 totalInput!977)))))

(declare-fun e!1387792 () Bool)

(assert (=> d!649792 (= (inv!33372 (c!343802 totalInput!977)) e!1387792)))

(declare-fun b!2169911 () Bool)

(assert (=> b!2169911 (= e!1387792 (inv!33378 (c!343802 totalInput!977)))))

(declare-fun b!2169912 () Bool)

(declare-fun e!1387793 () Bool)

(assert (=> b!2169912 (= e!1387792 e!1387793)))

(declare-fun res!933969 () Bool)

(assert (=> b!2169912 (= res!933969 (not (is-Leaf!11916 (c!343802 totalInput!977))))))

(assert (=> b!2169912 (=> res!933969 e!1387793)))

(declare-fun b!2169913 () Bool)

(assert (=> b!2169913 (= e!1387793 (inv!33379 (c!343802 totalInput!977)))))

(assert (= (and d!649792 c!343842) b!2169911))

(assert (= (and d!649792 (not c!343842)) b!2169912))

(assert (= (and b!2169912 (not res!933969)) b!2169913))

(declare-fun m!2611065 () Bool)

(assert (=> b!2169911 m!2611065))

(declare-fun m!2611067 () Bool)

(assert (=> b!2169913 m!2611067))

(assert (=> b!2169754 d!649792))

(declare-fun d!649794 () Bool)

(assert (=> d!649794 (isPrefix!2124 (take!216 lt!808068 lt!808071) lt!808068)))

(declare-fun lt!808187 () Unit!38217)

(declare-fun choose!12782 (List!25237 Int) Unit!38217)

(assert (=> d!649794 (= lt!808187 (choose!12782 lt!808068 lt!808071))))

(assert (=> d!649794 (>= lt!808071 0)))

(assert (=> d!649794 (= (lemmaTakeIsPrefix!39 lt!808068 lt!808071) lt!808187)))

(declare-fun bs!446874 () Bool)

(assert (= bs!446874 d!649794))

(assert (=> bs!446874 m!2610815))

(assert (=> bs!446874 m!2610815))

(assert (=> bs!446874 m!2610821))

(declare-fun m!2611069 () Bool)

(assert (=> bs!446874 m!2611069))

(assert (=> b!2169749 d!649794))

(declare-fun b!2169924 () Bool)

(declare-fun e!1387800 () Bool)

(declare-fun tail!3117 (List!25237) List!25237)

(assert (=> b!2169924 (= e!1387800 (isPrefix!2124 (tail!3117 lt!808063) (tail!3117 lt!808070)))))

(declare-fun b!2169923 () Bool)

(declare-fun res!933980 () Bool)

(assert (=> b!2169923 (=> (not res!933980) (not e!1387800))))

(declare-fun head!4645 (List!25237) C!12162)

(assert (=> b!2169923 (= res!933980 (= (head!4645 lt!808063) (head!4645 lt!808070)))))

(declare-fun d!649796 () Bool)

(declare-fun e!1387801 () Bool)

(assert (=> d!649796 e!1387801))

(declare-fun res!933978 () Bool)

(assert (=> d!649796 (=> res!933978 e!1387801)))

(declare-fun lt!808190 () Bool)

(assert (=> d!649796 (= res!933978 (not lt!808190))))

(declare-fun e!1387802 () Bool)

(assert (=> d!649796 (= lt!808190 e!1387802)))

(declare-fun res!933979 () Bool)

(assert (=> d!649796 (=> res!933979 e!1387802)))

(assert (=> d!649796 (= res!933979 (is-Nil!25153 lt!808063))))

(assert (=> d!649796 (= (isPrefix!2124 lt!808063 lt!808070) lt!808190)))

(declare-fun b!2169922 () Bool)

(assert (=> b!2169922 (= e!1387802 e!1387800)))

(declare-fun res!933981 () Bool)

(assert (=> b!2169922 (=> (not res!933981) (not e!1387800))))

(assert (=> b!2169922 (= res!933981 (not (is-Nil!25153 lt!808070)))))

(declare-fun b!2169925 () Bool)

(assert (=> b!2169925 (= e!1387801 (>= (size!19656 lt!808070) (size!19656 lt!808063)))))

(assert (= (and d!649796 (not res!933979)) b!2169922))

(assert (= (and b!2169922 res!933981) b!2169923))

(assert (= (and b!2169923 res!933980) b!2169924))

(assert (= (and d!649796 (not res!933978)) b!2169925))

(declare-fun m!2611071 () Bool)

(assert (=> b!2169924 m!2611071))

(declare-fun m!2611073 () Bool)

(assert (=> b!2169924 m!2611073))

(assert (=> b!2169924 m!2611071))

(assert (=> b!2169924 m!2611073))

(declare-fun m!2611075 () Bool)

(assert (=> b!2169924 m!2611075))

(declare-fun m!2611077 () Bool)

(assert (=> b!2169923 m!2611077))

(declare-fun m!2611079 () Bool)

(assert (=> b!2169923 m!2611079))

(declare-fun m!2611081 () Bool)

(assert (=> b!2169925 m!2611081))

(assert (=> b!2169925 m!2611025))

(assert (=> b!2169749 d!649796))

(declare-fun b!2169928 () Bool)

(declare-fun e!1387803 () Bool)

(assert (=> b!2169928 (= e!1387803 (isPrefix!2124 (tail!3117 (take!216 lt!808068 lt!808071)) (tail!3117 lt!808068)))))

(declare-fun b!2169927 () Bool)

(declare-fun res!933984 () Bool)

(assert (=> b!2169927 (=> (not res!933984) (not e!1387803))))

(assert (=> b!2169927 (= res!933984 (= (head!4645 (take!216 lt!808068 lt!808071)) (head!4645 lt!808068)))))

(declare-fun d!649798 () Bool)

(declare-fun e!1387804 () Bool)

(assert (=> d!649798 e!1387804))

(declare-fun res!933982 () Bool)

(assert (=> d!649798 (=> res!933982 e!1387804)))

(declare-fun lt!808191 () Bool)

(assert (=> d!649798 (= res!933982 (not lt!808191))))

(declare-fun e!1387805 () Bool)

(assert (=> d!649798 (= lt!808191 e!1387805)))

(declare-fun res!933983 () Bool)

(assert (=> d!649798 (=> res!933983 e!1387805)))

(assert (=> d!649798 (= res!933983 (is-Nil!25153 (take!216 lt!808068 lt!808071)))))

(assert (=> d!649798 (= (isPrefix!2124 (take!216 lt!808068 lt!808071) lt!808068) lt!808191)))

(declare-fun b!2169926 () Bool)

(assert (=> b!2169926 (= e!1387805 e!1387803)))

(declare-fun res!933985 () Bool)

(assert (=> b!2169926 (=> (not res!933985) (not e!1387803))))

(assert (=> b!2169926 (= res!933985 (not (is-Nil!25153 lt!808068)))))

(declare-fun b!2169929 () Bool)

(assert (=> b!2169929 (= e!1387804 (>= (size!19656 lt!808068) (size!19656 (take!216 lt!808068 lt!808071))))))

(assert (= (and d!649798 (not res!933983)) b!2169926))

(assert (= (and b!2169926 res!933985) b!2169927))

(assert (= (and b!2169927 res!933984) b!2169928))

(assert (= (and d!649798 (not res!933982)) b!2169929))

(assert (=> b!2169928 m!2610815))

(declare-fun m!2611083 () Bool)

(assert (=> b!2169928 m!2611083))

(declare-fun m!2611085 () Bool)

(assert (=> b!2169928 m!2611085))

(assert (=> b!2169928 m!2611083))

(assert (=> b!2169928 m!2611085))

(declare-fun m!2611087 () Bool)

(assert (=> b!2169928 m!2611087))

(assert (=> b!2169927 m!2610815))

(declare-fun m!2611089 () Bool)

(assert (=> b!2169927 m!2611089))

(declare-fun m!2611091 () Bool)

(assert (=> b!2169927 m!2611091))

(assert (=> b!2169929 m!2610915))

(assert (=> b!2169929 m!2610815))

(declare-fun m!2611093 () Bool)

(assert (=> b!2169929 m!2611093))

(assert (=> b!2169749 d!649798))

(declare-fun d!649800 () Bool)

(assert (=> d!649800 (isPrefix!2124 lt!808063 (++!6367 lt!808063 lt!808074))))

(declare-fun lt!808194 () Unit!38217)

(declare-fun choose!12783 (List!25237 List!25237) Unit!38217)

(assert (=> d!649800 (= lt!808194 (choose!12783 lt!808063 lt!808074))))

(assert (=> d!649800 (= (lemmaConcatTwoListThenFirstIsPrefix!1407 lt!808063 lt!808074) lt!808194)))

(declare-fun bs!446875 () Bool)

(assert (= bs!446875 d!649800))

(assert (=> bs!446875 m!2610831))

(assert (=> bs!446875 m!2610831))

(declare-fun m!2611095 () Bool)

(assert (=> bs!446875 m!2611095))

(declare-fun m!2611097 () Bool)

(assert (=> bs!446875 m!2611097))

(assert (=> b!2169749 d!649800))

(declare-fun b!2169932 () Bool)

(declare-fun e!1387806 () Bool)

(assert (=> b!2169932 (= e!1387806 (isPrefix!2124 (tail!3117 (_1!14822 lt!808066)) (tail!3117 lt!808067)))))

(declare-fun b!2169931 () Bool)

(declare-fun res!933988 () Bool)

(assert (=> b!2169931 (=> (not res!933988) (not e!1387806))))

(assert (=> b!2169931 (= res!933988 (= (head!4645 (_1!14822 lt!808066)) (head!4645 lt!808067)))))

(declare-fun d!649802 () Bool)

(declare-fun e!1387807 () Bool)

(assert (=> d!649802 e!1387807))

(declare-fun res!933986 () Bool)

(assert (=> d!649802 (=> res!933986 e!1387807)))

(declare-fun lt!808195 () Bool)

(assert (=> d!649802 (= res!933986 (not lt!808195))))

(declare-fun e!1387808 () Bool)

(assert (=> d!649802 (= lt!808195 e!1387808)))

(declare-fun res!933987 () Bool)

(assert (=> d!649802 (=> res!933987 e!1387808)))

(assert (=> d!649802 (= res!933987 (is-Nil!25153 (_1!14822 lt!808066)))))

(assert (=> d!649802 (= (isPrefix!2124 (_1!14822 lt!808066) lt!808067) lt!808195)))

(declare-fun b!2169930 () Bool)

(assert (=> b!2169930 (= e!1387808 e!1387806)))

(declare-fun res!933989 () Bool)

(assert (=> b!2169930 (=> (not res!933989) (not e!1387806))))

(assert (=> b!2169930 (= res!933989 (not (is-Nil!25153 lt!808067)))))

(declare-fun b!2169933 () Bool)

(assert (=> b!2169933 (= e!1387807 (>= (size!19656 lt!808067) (size!19656 (_1!14822 lt!808066))))))

(assert (= (and d!649802 (not res!933987)) b!2169930))

(assert (= (and b!2169930 res!933989) b!2169931))

(assert (= (and b!2169931 res!933988) b!2169932))

(assert (= (and d!649802 (not res!933986)) b!2169933))

(declare-fun m!2611099 () Bool)

(assert (=> b!2169932 m!2611099))

(declare-fun m!2611101 () Bool)

(assert (=> b!2169932 m!2611101))

(assert (=> b!2169932 m!2611099))

(assert (=> b!2169932 m!2611101))

(declare-fun m!2611103 () Bool)

(assert (=> b!2169932 m!2611103))

(declare-fun m!2611105 () Bool)

(assert (=> b!2169931 m!2611105))

(declare-fun m!2611107 () Bool)

(assert (=> b!2169931 m!2611107))

(declare-fun m!2611109 () Bool)

(assert (=> b!2169933 m!2611109))

(assert (=> b!2169933 m!2611003))

(assert (=> b!2169749 d!649802))

(declare-fun d!649804 () Bool)

(declare-fun lambda!81779 () Int)

(declare-fun exists!755 ((Set Context!3156) Int) Bool)

(assert (=> d!649804 (= (nullableZipper!288 z!4055) (exists!755 z!4055 lambda!81779))))

(declare-fun bs!446876 () Bool)

(assert (= bs!446876 d!649804))

(declare-fun m!2611111 () Bool)

(assert (=> bs!446876 m!2611111))

(assert (=> b!2169749 d!649804))

(declare-fun d!649806 () Bool)

(assert (=> d!649806 (isPrefix!2124 (_1!14822 lt!808066) (++!6367 (_1!14822 lt!808066) (_2!14822 lt!808066)))))

(declare-fun lt!808196 () Unit!38217)

(assert (=> d!649806 (= lt!808196 (choose!12783 (_1!14822 lt!808066) (_2!14822 lt!808066)))))

(assert (=> d!649806 (= (lemmaConcatTwoListThenFirstIsPrefix!1407 (_1!14822 lt!808066) (_2!14822 lt!808066)) lt!808196)))

(declare-fun bs!446877 () Bool)

(assert (= bs!446877 d!649806))

(assert (=> bs!446877 m!2610843))

(assert (=> bs!446877 m!2610843))

(declare-fun m!2611113 () Bool)

(assert (=> bs!446877 m!2611113))

(declare-fun m!2611115 () Bool)

(assert (=> bs!446877 m!2611115))

(assert (=> b!2169749 d!649806))

(declare-fun b!2169949 () Bool)

(declare-fun e!1387820 () List!25237)

(assert (=> b!2169949 (= e!1387820 Nil!25153)))

(declare-fun b!2169950 () Bool)

(declare-fun e!1387818 () Int)

(assert (=> b!2169950 (= e!1387818 (size!19656 lt!808068))))

(declare-fun b!2169951 () Bool)

(declare-fun e!1387817 () Int)

(assert (=> b!2169951 (= e!1387817 e!1387818)))

(declare-fun c!343852 () Bool)

(assert (=> b!2169951 (= c!343852 (>= lt!808071 (size!19656 lt!808068)))))

(declare-fun b!2169952 () Bool)

(assert (=> b!2169952 (= e!1387817 0)))

(declare-fun b!2169953 () Bool)

(assert (=> b!2169953 (= e!1387818 lt!808071)))

(declare-fun b!2169954 () Bool)

(declare-fun e!1387819 () Bool)

(declare-fun lt!808199 () List!25237)

(assert (=> b!2169954 (= e!1387819 (= (size!19656 lt!808199) e!1387817))))

(declare-fun c!343851 () Bool)

(assert (=> b!2169954 (= c!343851 (<= lt!808071 0))))

(declare-fun d!649808 () Bool)

(assert (=> d!649808 e!1387819))

(declare-fun res!933992 () Bool)

(assert (=> d!649808 (=> (not res!933992) (not e!1387819))))

(assert (=> d!649808 (= res!933992 (set.subset (content!3415 lt!808199) (content!3415 lt!808068)))))

(assert (=> d!649808 (= lt!808199 e!1387820)))

(declare-fun c!343853 () Bool)

(assert (=> d!649808 (= c!343853 (or (is-Nil!25153 lt!808068) (<= lt!808071 0)))))

(assert (=> d!649808 (= (take!216 lt!808068 lt!808071) lt!808199)))

(declare-fun b!2169948 () Bool)

(assert (=> b!2169948 (= e!1387820 (Cons!25153 (h!30554 lt!808068) (take!216 (t!197799 lt!808068) (- lt!808071 1))))))

(assert (= (and d!649808 c!343853) b!2169949))

(assert (= (and d!649808 (not c!343853)) b!2169948))

(assert (= (and d!649808 res!933992) b!2169954))

(assert (= (and b!2169954 c!343851) b!2169952))

(assert (= (and b!2169954 (not c!343851)) b!2169951))

(assert (= (and b!2169951 c!343852) b!2169950))

(assert (= (and b!2169951 (not c!343852)) b!2169953))

(declare-fun m!2611117 () Bool)

(assert (=> b!2169954 m!2611117))

(declare-fun m!2611119 () Bool)

(assert (=> b!2169948 m!2611119))

(declare-fun m!2611121 () Bool)

(assert (=> d!649808 m!2611121))

(declare-fun m!2611123 () Bool)

(assert (=> d!649808 m!2611123))

(assert (=> b!2169951 m!2610915))

(assert (=> b!2169950 m!2610915))

(assert (=> b!2169749 d!649808))

(declare-fun condSetEmpty!18179 () Bool)

(assert (=> setNonEmpty!18173 (= condSetEmpty!18179 (= setRest!18173 (as set.empty (Set Context!3156))))))

(declare-fun setRes!18179 () Bool)

(assert (=> setNonEmpty!18173 (= tp!677270 setRes!18179)))

(declare-fun setIsEmpty!18179 () Bool)

(assert (=> setIsEmpty!18179 setRes!18179))

(declare-fun e!1387823 () Bool)

(declare-fun tp!677306 () Bool)

(declare-fun setNonEmpty!18179 () Bool)

(declare-fun setElem!18179 () Context!3156)

(assert (=> setNonEmpty!18179 (= setRes!18179 (and tp!677306 (inv!33373 setElem!18179) e!1387823))))

(declare-fun setRest!18179 () (Set Context!3156))

(assert (=> setNonEmpty!18179 (= setRest!18173 (set.union (set.insert setElem!18179 (as set.empty (Set Context!3156))) setRest!18179))))

(declare-fun b!2169959 () Bool)

(declare-fun tp!677305 () Bool)

(assert (=> b!2169959 (= e!1387823 tp!677305)))

(assert (= (and setNonEmpty!18173 condSetEmpty!18179) setIsEmpty!18179))

(assert (= (and setNonEmpty!18173 (not condSetEmpty!18179)) setNonEmpty!18179))

(assert (= setNonEmpty!18179 b!2169959))

(declare-fun m!2611125 () Bool)

(assert (=> setNonEmpty!18179 m!2611125))

(declare-fun b!2169971 () Bool)

(declare-fun e!1387826 () Bool)

(declare-fun tp!677317 () Bool)

(declare-fun tp!677318 () Bool)

(assert (=> b!2169971 (= e!1387826 (and tp!677317 tp!677318))))

(assert (=> b!2169751 (= tp!677268 e!1387826)))

(declare-fun b!2169970 () Bool)

(assert (=> b!2169970 (= e!1387826 tp_is_empty!9623)))

(declare-fun b!2169973 () Bool)

(declare-fun tp!677320 () Bool)

(declare-fun tp!677319 () Bool)

(assert (=> b!2169973 (= e!1387826 (and tp!677320 tp!677319))))

(declare-fun b!2169972 () Bool)

(declare-fun tp!677321 () Bool)

(assert (=> b!2169972 (= e!1387826 tp!677321)))

(assert (= (and b!2169751 (is-ElementMatch!6008 (regOne!12529 r!12534))) b!2169970))

(assert (= (and b!2169751 (is-Concat!10310 (regOne!12529 r!12534))) b!2169971))

(assert (= (and b!2169751 (is-Star!6008 (regOne!12529 r!12534))) b!2169972))

(assert (= (and b!2169751 (is-Union!6008 (regOne!12529 r!12534))) b!2169973))

(declare-fun b!2169975 () Bool)

(declare-fun e!1387827 () Bool)

(declare-fun tp!677322 () Bool)

(declare-fun tp!677323 () Bool)

(assert (=> b!2169975 (= e!1387827 (and tp!677322 tp!677323))))

(assert (=> b!2169751 (= tp!677271 e!1387827)))

(declare-fun b!2169974 () Bool)

(assert (=> b!2169974 (= e!1387827 tp_is_empty!9623)))

(declare-fun b!2169977 () Bool)

(declare-fun tp!677325 () Bool)

(declare-fun tp!677324 () Bool)

(assert (=> b!2169977 (= e!1387827 (and tp!677325 tp!677324))))

(declare-fun b!2169976 () Bool)

(declare-fun tp!677326 () Bool)

(assert (=> b!2169976 (= e!1387827 tp!677326)))

(assert (= (and b!2169751 (is-ElementMatch!6008 (regTwo!12529 r!12534))) b!2169974))

(assert (= (and b!2169751 (is-Concat!10310 (regTwo!12529 r!12534))) b!2169975))

(assert (= (and b!2169751 (is-Star!6008 (regTwo!12529 r!12534))) b!2169976))

(assert (= (and b!2169751 (is-Union!6008 (regTwo!12529 r!12534))) b!2169977))

(declare-fun tp!677334 () Bool)

(declare-fun b!2169986 () Bool)

(declare-fun e!1387832 () Bool)

(declare-fun tp!677335 () Bool)

(assert (=> b!2169986 (= e!1387832 (and (inv!33372 (left!19331 (c!343802 input!5540))) tp!677334 (inv!33372 (right!19661 (c!343802 input!5540))) tp!677335))))

(declare-fun b!2169988 () Bool)

(declare-fun e!1387833 () Bool)

(declare-fun tp!677333 () Bool)

(assert (=> b!2169988 (= e!1387833 tp!677333)))

(declare-fun b!2169987 () Bool)

(declare-fun inv!33380 (IArray!16293) Bool)

(assert (=> b!2169987 (= e!1387832 (and (inv!33380 (xs!11086 (c!343802 input!5540))) e!1387833))))

(assert (=> b!2169757 (= tp!677269 (and (inv!33372 (c!343802 input!5540)) e!1387832))))

(assert (= (and b!2169757 (is-Node!8144 (c!343802 input!5540))) b!2169986))

(assert (= b!2169987 b!2169988))

(assert (= (and b!2169757 (is-Leaf!11916 (c!343802 input!5540))) b!2169987))

(declare-fun m!2611127 () Bool)

(assert (=> b!2169986 m!2611127))

(declare-fun m!2611129 () Bool)

(assert (=> b!2169986 m!2611129))

(declare-fun m!2611131 () Bool)

(assert (=> b!2169987 m!2611131))

(assert (=> b!2169757 m!2610851))

(declare-fun b!2169993 () Bool)

(declare-fun e!1387836 () Bool)

(declare-fun tp!677340 () Bool)

(declare-fun tp!677341 () Bool)

(assert (=> b!2169993 (= e!1387836 (and tp!677340 tp!677341))))

(assert (=> b!2169753 (= tp!677273 e!1387836)))

(assert (= (and b!2169753 (is-Cons!25154 (exprs!2078 setElem!18173))) b!2169993))

(declare-fun e!1387837 () Bool)

(declare-fun tp!677344 () Bool)

(declare-fun tp!677343 () Bool)

(declare-fun b!2169994 () Bool)

(assert (=> b!2169994 (= e!1387837 (and (inv!33372 (left!19331 (c!343802 totalInput!977))) tp!677343 (inv!33372 (right!19661 (c!343802 totalInput!977))) tp!677344))))

(declare-fun b!2169996 () Bool)

(declare-fun e!1387838 () Bool)

(declare-fun tp!677342 () Bool)

(assert (=> b!2169996 (= e!1387838 tp!677342)))

(declare-fun b!2169995 () Bool)

(assert (=> b!2169995 (= e!1387837 (and (inv!33380 (xs!11086 (c!343802 totalInput!977))) e!1387838))))

(assert (=> b!2169754 (= tp!677272 (and (inv!33372 (c!343802 totalInput!977)) e!1387837))))

(assert (= (and b!2169754 (is-Node!8144 (c!343802 totalInput!977))) b!2169994))

(assert (= b!2169995 b!2169996))

(assert (= (and b!2169754 (is-Leaf!11916 (c!343802 totalInput!977))) b!2169995))

(declare-fun m!2611133 () Bool)

(assert (=> b!2169994 m!2611133))

(declare-fun m!2611135 () Bool)

(assert (=> b!2169994 m!2611135))

(declare-fun m!2611137 () Bool)

(assert (=> b!2169995 m!2611137))

(assert (=> b!2169754 m!2610849))

(declare-fun b!2169998 () Bool)

(declare-fun e!1387839 () Bool)

(declare-fun tp!677345 () Bool)

(declare-fun tp!677346 () Bool)

(assert (=> b!2169998 (= e!1387839 (and tp!677345 tp!677346))))

(assert (=> b!2169758 (= tp!677267 e!1387839)))

(declare-fun b!2169997 () Bool)

(assert (=> b!2169997 (= e!1387839 tp_is_empty!9623)))

(declare-fun b!2170000 () Bool)

(declare-fun tp!677348 () Bool)

(declare-fun tp!677347 () Bool)

(assert (=> b!2170000 (= e!1387839 (and tp!677348 tp!677347))))

(declare-fun b!2169999 () Bool)

(declare-fun tp!677349 () Bool)

(assert (=> b!2169999 (= e!1387839 tp!677349)))

(assert (= (and b!2169758 (is-ElementMatch!6008 (regOne!12528 r!12534))) b!2169997))

(assert (= (and b!2169758 (is-Concat!10310 (regOne!12528 r!12534))) b!2169998))

(assert (= (and b!2169758 (is-Star!6008 (regOne!12528 r!12534))) b!2169999))

(assert (= (and b!2169758 (is-Union!6008 (regOne!12528 r!12534))) b!2170000))

(declare-fun b!2170002 () Bool)

(declare-fun e!1387840 () Bool)

(declare-fun tp!677350 () Bool)

(declare-fun tp!677351 () Bool)

(assert (=> b!2170002 (= e!1387840 (and tp!677350 tp!677351))))

(assert (=> b!2169758 (= tp!677265 e!1387840)))

(declare-fun b!2170001 () Bool)

(assert (=> b!2170001 (= e!1387840 tp_is_empty!9623)))

(declare-fun b!2170004 () Bool)

(declare-fun tp!677353 () Bool)

(declare-fun tp!677352 () Bool)

(assert (=> b!2170004 (= e!1387840 (and tp!677353 tp!677352))))

(declare-fun b!2170003 () Bool)

(declare-fun tp!677354 () Bool)

(assert (=> b!2170003 (= e!1387840 tp!677354)))

(assert (= (and b!2169758 (is-ElementMatch!6008 (regTwo!12528 r!12534))) b!2170001))

(assert (= (and b!2169758 (is-Concat!10310 (regTwo!12528 r!12534))) b!2170002))

(assert (= (and b!2169758 (is-Star!6008 (regTwo!12528 r!12534))) b!2170003))

(assert (= (and b!2169758 (is-Union!6008 (regTwo!12528 r!12534))) b!2170004))

(declare-fun b!2170006 () Bool)

(declare-fun e!1387841 () Bool)

(declare-fun tp!677355 () Bool)

(declare-fun tp!677356 () Bool)

(assert (=> b!2170006 (= e!1387841 (and tp!677355 tp!677356))))

(assert (=> b!2169759 (= tp!677266 e!1387841)))

(declare-fun b!2170005 () Bool)

(assert (=> b!2170005 (= e!1387841 tp_is_empty!9623)))

(declare-fun b!2170008 () Bool)

(declare-fun tp!677358 () Bool)

(declare-fun tp!677357 () Bool)

(assert (=> b!2170008 (= e!1387841 (and tp!677358 tp!677357))))

(declare-fun b!2170007 () Bool)

(declare-fun tp!677359 () Bool)

(assert (=> b!2170007 (= e!1387841 tp!677359)))

(assert (= (and b!2169759 (is-ElementMatch!6008 (reg!6337 r!12534))) b!2170005))

(assert (= (and b!2169759 (is-Concat!10310 (reg!6337 r!12534))) b!2170006))

(assert (= (and b!2169759 (is-Star!6008 (reg!6337 r!12534))) b!2170007))

(assert (= (and b!2169759 (is-Union!6008 (reg!6337 r!12534))) b!2170008))

(push 1)

(assert (not b!2169897))

(assert (not b!2169826))

(assert (not b!2169959))

(assert (not b!2170006))

(assert (not d!649744))

(assert (not b!2169994))

(assert (not b!2169950))

(assert (not b!2169954))

(assert (not b!2170003))

(assert (not d!649780))

(assert (not d!649804))

(assert (not bm!130159))

(assert (not b!2169996))

(assert (not b!2169892))

(assert (not d!649738))

(assert (not b!2169986))

(assert (not b!2169972))

(assert (not d!649800))

(assert (not b!2169913))

(assert (not b!2169948))

(assert (not d!649778))

(assert (not b!2169988))

(assert (not d!649808))

(assert (not b!2169993))

(assert (not b!2169999))

(assert (not b!2170008))

(assert (not b!2169894))

(assert (not b!2169896))

(assert (not d!649774))

(assert (not b!2169924))

(assert (not b!2169977))

(assert (not b!2169928))

(assert (not b!2170002))

(assert (not b!2169929))

(assert (not d!649788))

(assert (not b!2169798))

(assert (not b!2169951))

(assert tp_is_empty!9623)

(assert (not b!2170000))

(assert (not d!649790))

(assert (not b!2169757))

(assert (not b!2169971))

(assert (not b!2169801))

(assert (not d!649742))

(assert (not d!649794))

(assert (not d!649754))

(assert (not b!2169973))

(assert (not b!2169883))

(assert (not d!649740))

(assert (not b!2169754))

(assert (not d!649784))

(assert (not b!2169932))

(assert (not b!2170004))

(assert (not d!649752))

(assert (not b!2169884))

(assert (not setNonEmpty!18179))

(assert (not d!649786))

(assert (not b!2169975))

(assert (not d!649782))

(assert (not b!2169933))

(assert (not b!2169987))

(assert (not bm!130154))

(assert (not bm!130156))

(assert (not b!2169925))

(assert (not d!649806))

(assert (not b!2169931))

(assert (not b!2170007))

(assert (not d!649756))

(assert (not b!2169911))

(assert (not b!2169976))

(assert (not d!649746))

(assert (not b!2169998))

(assert (not b!2169995))

(assert (not b!2169923))

(assert (not b!2169927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!649846 () Bool)

(declare-fun c!343870 () Bool)

(assert (=> d!649846 (= c!343870 (is-Nil!25153 lt!808147))))

(declare-fun e!1387914 () (Set C!12162))

(assert (=> d!649846 (= (content!3415 lt!808147) e!1387914)))

(declare-fun b!2170136 () Bool)

(assert (=> b!2170136 (= e!1387914 (as set.empty (Set C!12162)))))

(declare-fun b!2170137 () Bool)

(assert (=> b!2170137 (= e!1387914 (set.union (set.insert (h!30554 lt!808147) (as set.empty (Set C!12162))) (content!3415 (t!197799 lt!808147))))))

(assert (= (and d!649846 c!343870) b!2170136))

(assert (= (and d!649846 (not c!343870)) b!2170137))

(declare-fun m!2611275 () Bool)

(assert (=> b!2170137 m!2611275))

(declare-fun m!2611277 () Bool)

(assert (=> b!2170137 m!2611277))

(assert (=> d!649780 d!649846))

(declare-fun d!649848 () Bool)

(declare-fun c!343871 () Bool)

(assert (=> d!649848 (= c!343871 (is-Nil!25153 lt!808063))))

(declare-fun e!1387915 () (Set C!12162))

(assert (=> d!649848 (= (content!3415 lt!808063) e!1387915)))

(declare-fun b!2170138 () Bool)

(assert (=> b!2170138 (= e!1387915 (as set.empty (Set C!12162)))))

(declare-fun b!2170139 () Bool)

(assert (=> b!2170139 (= e!1387915 (set.union (set.insert (h!30554 lt!808063) (as set.empty (Set C!12162))) (content!3415 (t!197799 lt!808063))))))

(assert (= (and d!649848 c!343871) b!2170138))

(assert (= (and d!649848 (not c!343871)) b!2170139))

(declare-fun m!2611279 () Bool)

(assert (=> b!2170139 m!2611279))

(declare-fun m!2611281 () Bool)

(assert (=> b!2170139 m!2611281))

(assert (=> d!649780 d!649848))

(declare-fun d!649850 () Bool)

(declare-fun c!343872 () Bool)

(assert (=> d!649850 (= c!343872 (is-Nil!25153 lt!808074))))

(declare-fun e!1387916 () (Set C!12162))

(assert (=> d!649850 (= (content!3415 lt!808074) e!1387916)))

(declare-fun b!2170140 () Bool)

(assert (=> b!2170140 (= e!1387916 (as set.empty (Set C!12162)))))

(declare-fun b!2170141 () Bool)

(assert (=> b!2170141 (= e!1387916 (set.union (set.insert (h!30554 lt!808074) (as set.empty (Set C!12162))) (content!3415 (t!197799 lt!808074))))))

(assert (= (and d!649850 c!343872) b!2170140))

(assert (= (and d!649850 (not c!343872)) b!2170141))

(declare-fun m!2611283 () Bool)

(assert (=> b!2170141 m!2611283))

(declare-fun m!2611285 () Bool)

(assert (=> b!2170141 m!2611285))

(assert (=> d!649780 d!649850))

(declare-fun d!649852 () Bool)

(declare-fun res!934040 () Bool)

(declare-fun e!1387919 () Bool)

(assert (=> d!649852 (=> (not res!934040) (not e!1387919))))

(assert (=> d!649852 (= res!934040 (= (csize!16518 (c!343802 input!5540)) (+ (size!19657 (left!19331 (c!343802 input!5540))) (size!19657 (right!19661 (c!343802 input!5540))))))))

(assert (=> d!649852 (= (inv!33378 (c!343802 input!5540)) e!1387919)))

(declare-fun b!2170148 () Bool)

(declare-fun res!934041 () Bool)

(assert (=> b!2170148 (=> (not res!934041) (not e!1387919))))

(assert (=> b!2170148 (= res!934041 (and (not (= (left!19331 (c!343802 input!5540)) Empty!8144)) (not (= (right!19661 (c!343802 input!5540)) Empty!8144))))))

(declare-fun b!2170149 () Bool)

(declare-fun res!934042 () Bool)

(assert (=> b!2170149 (=> (not res!934042) (not e!1387919))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1240 (Conc!8144) Int)

(assert (=> b!2170149 (= res!934042 (= (cheight!8355 (c!343802 input!5540)) (+ (max!0 (height!1240 (left!19331 (c!343802 input!5540))) (height!1240 (right!19661 (c!343802 input!5540)))) 1)))))

(declare-fun b!2170150 () Bool)

(assert (=> b!2170150 (= e!1387919 (<= 0 (cheight!8355 (c!343802 input!5540))))))

(assert (= (and d!649852 res!934040) b!2170148))

(assert (= (and b!2170148 res!934041) b!2170149))

(assert (= (and b!2170149 res!934042) b!2170150))

(declare-fun m!2611287 () Bool)

(assert (=> d!649852 m!2611287))

(declare-fun m!2611289 () Bool)

(assert (=> d!649852 m!2611289))

(declare-fun m!2611291 () Bool)

(assert (=> b!2170149 m!2611291))

(declare-fun m!2611293 () Bool)

(assert (=> b!2170149 m!2611293))

(assert (=> b!2170149 m!2611291))

(assert (=> b!2170149 m!2611293))

(declare-fun m!2611295 () Bool)

(assert (=> b!2170149 m!2611295))

(assert (=> b!2169892 d!649852))

(declare-fun d!649854 () Bool)

(declare-fun nullableFct!388 (Regex!6008) Bool)

(assert (=> d!649854 (= (nullable!1694 (reg!6337 r!12534)) (nullableFct!388 (reg!6337 r!12534)))))

(declare-fun bs!446889 () Bool)

(assert (= bs!446889 d!649854))

(declare-fun m!2611297 () Bool)

(assert (=> bs!446889 m!2611297))

(assert (=> b!2169826 d!649854))

(assert (=> b!2169757 d!649776))

(declare-fun d!649856 () Bool)

(declare-fun res!934047 () Bool)

(declare-fun e!1387922 () Bool)

(assert (=> d!649856 (=> (not res!934047) (not e!1387922))))

(declare-fun list!9645 (IArray!16293) List!25237)

(assert (=> d!649856 (= res!934047 (<= (size!19656 (list!9645 (xs!11086 (c!343802 input!5540)))) 512))))

(assert (=> d!649856 (= (inv!33379 (c!343802 input!5540)) e!1387922)))

(declare-fun b!2170155 () Bool)

(declare-fun res!934048 () Bool)

(assert (=> b!2170155 (=> (not res!934048) (not e!1387922))))

(assert (=> b!2170155 (= res!934048 (= (csize!16519 (c!343802 input!5540)) (size!19656 (list!9645 (xs!11086 (c!343802 input!5540))))))))

(declare-fun b!2170156 () Bool)

(assert (=> b!2170156 (= e!1387922 (and (> (csize!16519 (c!343802 input!5540)) 0) (<= (csize!16519 (c!343802 input!5540)) 512)))))

(assert (= (and d!649856 res!934047) b!2170155))

(assert (= (and b!2170155 res!934048) b!2170156))

(declare-fun m!2611299 () Bool)

(assert (=> d!649856 m!2611299))

(assert (=> d!649856 m!2611299))

(declare-fun m!2611301 () Bool)

(assert (=> d!649856 m!2611301))

(assert (=> b!2170155 m!2611299))

(assert (=> b!2170155 m!2611299))

(assert (=> b!2170155 m!2611301))

(assert (=> b!2169894 d!649856))

(declare-fun b!2170159 () Bool)

(declare-fun e!1387923 () Bool)

(assert (=> b!2170159 (= e!1387923 (isPrefix!2124 (tail!3117 (tail!3117 lt!808063)) (tail!3117 (tail!3117 lt!808070))))))

(declare-fun b!2170158 () Bool)

(declare-fun res!934051 () Bool)

(assert (=> b!2170158 (=> (not res!934051) (not e!1387923))))

(assert (=> b!2170158 (= res!934051 (= (head!4645 (tail!3117 lt!808063)) (head!4645 (tail!3117 lt!808070))))))

(declare-fun d!649858 () Bool)

(declare-fun e!1387924 () Bool)

(assert (=> d!649858 e!1387924))

(declare-fun res!934049 () Bool)

(assert (=> d!649858 (=> res!934049 e!1387924)))

(declare-fun lt!808255 () Bool)

(assert (=> d!649858 (= res!934049 (not lt!808255))))

(declare-fun e!1387925 () Bool)

(assert (=> d!649858 (= lt!808255 e!1387925)))

(declare-fun res!934050 () Bool)

(assert (=> d!649858 (=> res!934050 e!1387925)))

(assert (=> d!649858 (= res!934050 (is-Nil!25153 (tail!3117 lt!808063)))))

(assert (=> d!649858 (= (isPrefix!2124 (tail!3117 lt!808063) (tail!3117 lt!808070)) lt!808255)))

(declare-fun b!2170157 () Bool)

(assert (=> b!2170157 (= e!1387925 e!1387923)))

(declare-fun res!934052 () Bool)

(assert (=> b!2170157 (=> (not res!934052) (not e!1387923))))

(assert (=> b!2170157 (= res!934052 (not (is-Nil!25153 (tail!3117 lt!808070))))))

(declare-fun b!2170160 () Bool)

(assert (=> b!2170160 (= e!1387924 (>= (size!19656 (tail!3117 lt!808070)) (size!19656 (tail!3117 lt!808063))))))

(assert (= (and d!649858 (not res!934050)) b!2170157))

(assert (= (and b!2170157 res!934052) b!2170158))

(assert (= (and b!2170158 res!934051) b!2170159))

(assert (= (and d!649858 (not res!934049)) b!2170160))

(assert (=> b!2170159 m!2611071))

(declare-fun m!2611303 () Bool)

(assert (=> b!2170159 m!2611303))

(assert (=> b!2170159 m!2611073))

(declare-fun m!2611305 () Bool)

(assert (=> b!2170159 m!2611305))

(assert (=> b!2170159 m!2611303))

(assert (=> b!2170159 m!2611305))

(declare-fun m!2611307 () Bool)

(assert (=> b!2170159 m!2611307))

(assert (=> b!2170158 m!2611071))

(declare-fun m!2611309 () Bool)

(assert (=> b!2170158 m!2611309))

(assert (=> b!2170158 m!2611073))

(declare-fun m!2611311 () Bool)

(assert (=> b!2170158 m!2611311))

(assert (=> b!2170160 m!2611073))

(declare-fun m!2611313 () Bool)

(assert (=> b!2170160 m!2611313))

(assert (=> b!2170160 m!2611071))

(declare-fun m!2611315 () Bool)

(assert (=> b!2170160 m!2611315))

(assert (=> b!2169924 d!649858))

(declare-fun d!649860 () Bool)

(assert (=> d!649860 (= (tail!3117 lt!808063) (t!197799 lt!808063))))

(assert (=> b!2169924 d!649860))

(declare-fun d!649862 () Bool)

(assert (=> d!649862 (= (tail!3117 lt!808070) (t!197799 lt!808070))))

(assert (=> b!2169924 d!649862))

(declare-fun b!2170161 () Bool)

(declare-fun e!1387926 () List!25237)

(assert (=> b!2170161 (= e!1387926 (_2!14822 lt!808066))))

(declare-fun b!2170164 () Bool)

(declare-fun e!1387927 () Bool)

(declare-fun lt!808256 () List!25237)

(assert (=> b!2170164 (= e!1387927 (or (not (= (_2!14822 lt!808066) Nil!25153)) (= lt!808256 (t!197799 (_1!14822 lt!808066)))))))

(declare-fun d!649864 () Bool)

(assert (=> d!649864 e!1387927))

(declare-fun res!934053 () Bool)

(assert (=> d!649864 (=> (not res!934053) (not e!1387927))))

(assert (=> d!649864 (= res!934053 (= (content!3415 lt!808256) (set.union (content!3415 (t!197799 (_1!14822 lt!808066))) (content!3415 (_2!14822 lt!808066)))))))

(assert (=> d!649864 (= lt!808256 e!1387926)))

(declare-fun c!343873 () Bool)

(assert (=> d!649864 (= c!343873 (is-Nil!25153 (t!197799 (_1!14822 lt!808066))))))

(assert (=> d!649864 (= (++!6367 (t!197799 (_1!14822 lt!808066)) (_2!14822 lt!808066)) lt!808256)))

(declare-fun b!2170162 () Bool)

(assert (=> b!2170162 (= e!1387926 (Cons!25153 (h!30554 (t!197799 (_1!14822 lt!808066))) (++!6367 (t!197799 (t!197799 (_1!14822 lt!808066))) (_2!14822 lt!808066))))))

(declare-fun b!2170163 () Bool)

(declare-fun res!934054 () Bool)

(assert (=> b!2170163 (=> (not res!934054) (not e!1387927))))

(assert (=> b!2170163 (= res!934054 (= (size!19656 lt!808256) (+ (size!19656 (t!197799 (_1!14822 lt!808066))) (size!19656 (_2!14822 lt!808066)))))))

(assert (= (and d!649864 c!343873) b!2170161))

(assert (= (and d!649864 (not c!343873)) b!2170162))

(assert (= (and d!649864 res!934053) b!2170163))

(assert (= (and b!2170163 res!934054) b!2170164))

(declare-fun m!2611317 () Bool)

(assert (=> d!649864 m!2611317))

(declare-fun m!2611319 () Bool)

(assert (=> d!649864 m!2611319))

(assert (=> d!649864 m!2610997))

(declare-fun m!2611321 () Bool)

(assert (=> b!2170162 m!2611321))

(declare-fun m!2611323 () Bool)

(assert (=> b!2170163 m!2611323))

(declare-fun m!2611325 () Bool)

(assert (=> b!2170163 m!2611325))

(assert (=> b!2170163 m!2611005))

(assert (=> b!2169883 d!649864))

(declare-fun d!649866 () Bool)

(assert (=> d!649866 (= (head!4645 (_1!14822 lt!808066)) (h!30554 (_1!14822 lt!808066)))))

(assert (=> b!2169931 d!649866))

(declare-fun d!649868 () Bool)

(assert (=> d!649868 (= (head!4645 lt!808067) (h!30554 lt!808067))))

(assert (=> b!2169931 d!649868))

(declare-fun d!649870 () Bool)

(assert (=> d!649870 (= (inv!33380 (xs!11086 (c!343802 totalInput!977))) (<= (size!19656 (innerList!8204 (xs!11086 (c!343802 totalInput!977)))) 2147483647))))

(declare-fun bs!446890 () Bool)

(assert (= bs!446890 d!649870))

(declare-fun m!2611327 () Bool)

(assert (=> bs!446890 m!2611327))

(assert (=> b!2169995 d!649870))

(declare-fun d!649872 () Bool)

(declare-fun lt!808259 () Int)

(assert (=> d!649872 (>= lt!808259 0)))

(declare-fun e!1387930 () Int)

(assert (=> d!649872 (= lt!808259 e!1387930)))

(declare-fun c!343876 () Bool)

(assert (=> d!649872 (= c!343876 (is-Nil!25153 lt!808067))))

(assert (=> d!649872 (= (size!19656 lt!808067) lt!808259)))

(declare-fun b!2170169 () Bool)

(assert (=> b!2170169 (= e!1387930 0)))

(declare-fun b!2170170 () Bool)

(assert (=> b!2170170 (= e!1387930 (+ 1 (size!19656 (t!197799 lt!808067))))))

(assert (= (and d!649872 c!343876) b!2170169))

(assert (= (and d!649872 (not c!343876)) b!2170170))

(declare-fun m!2611329 () Bool)

(assert (=> b!2170170 m!2611329))

(assert (=> b!2169933 d!649872))

(declare-fun d!649874 () Bool)

(declare-fun lt!808260 () Int)

(assert (=> d!649874 (>= lt!808260 0)))

(declare-fun e!1387931 () Int)

(assert (=> d!649874 (= lt!808260 e!1387931)))

(declare-fun c!343877 () Bool)

(assert (=> d!649874 (= c!343877 (is-Nil!25153 (_1!14822 lt!808066)))))

(assert (=> d!649874 (= (size!19656 (_1!14822 lt!808066)) lt!808260)))

(declare-fun b!2170171 () Bool)

(assert (=> b!2170171 (= e!1387931 0)))

(declare-fun b!2170172 () Bool)

(assert (=> b!2170172 (= e!1387931 (+ 1 (size!19656 (t!197799 (_1!14822 lt!808066)))))))

(assert (= (and d!649874 c!343877) b!2170171))

(assert (= (and d!649874 (not c!343877)) b!2170172))

(assert (=> b!2170172 m!2611325))

(assert (=> b!2169933 d!649874))

(declare-fun d!649876 () Bool)

(assert (=> d!649876 (= (head!4645 (take!216 lt!808068 lt!808071)) (h!30554 (take!216 lt!808068 lt!808071)))))

(assert (=> b!2169927 d!649876))

(declare-fun d!649878 () Bool)

(assert (=> d!649878 (= (head!4645 lt!808068) (h!30554 lt!808068))))

(assert (=> b!2169927 d!649878))

(declare-fun d!649880 () Bool)

(declare-fun res!934055 () Bool)

(declare-fun e!1387932 () Bool)

(assert (=> d!649880 (=> (not res!934055) (not e!1387932))))

(assert (=> d!649880 (= res!934055 (= (csize!16518 (c!343802 totalInput!977)) (+ (size!19657 (left!19331 (c!343802 totalInput!977))) (size!19657 (right!19661 (c!343802 totalInput!977))))))))

(assert (=> d!649880 (= (inv!33378 (c!343802 totalInput!977)) e!1387932)))

(declare-fun b!2170173 () Bool)

(declare-fun res!934056 () Bool)

(assert (=> b!2170173 (=> (not res!934056) (not e!1387932))))

(assert (=> b!2170173 (= res!934056 (and (not (= (left!19331 (c!343802 totalInput!977)) Empty!8144)) (not (= (right!19661 (c!343802 totalInput!977)) Empty!8144))))))

(declare-fun b!2170174 () Bool)

(declare-fun res!934057 () Bool)

(assert (=> b!2170174 (=> (not res!934057) (not e!1387932))))

(assert (=> b!2170174 (= res!934057 (= (cheight!8355 (c!343802 totalInput!977)) (+ (max!0 (height!1240 (left!19331 (c!343802 totalInput!977))) (height!1240 (right!19661 (c!343802 totalInput!977)))) 1)))))

(declare-fun b!2170175 () Bool)

(assert (=> b!2170175 (= e!1387932 (<= 0 (cheight!8355 (c!343802 totalInput!977))))))

(assert (= (and d!649880 res!934055) b!2170173))

(assert (= (and b!2170173 res!934056) b!2170174))

(assert (= (and b!2170174 res!934057) b!2170175))

(declare-fun m!2611331 () Bool)

(assert (=> d!649880 m!2611331))

(declare-fun m!2611333 () Bool)

(assert (=> d!649880 m!2611333))

(declare-fun m!2611335 () Bool)

(assert (=> b!2170174 m!2611335))

(declare-fun m!2611337 () Bool)

(assert (=> b!2170174 m!2611337))

(assert (=> b!2170174 m!2611335))

(assert (=> b!2170174 m!2611337))

(declare-fun m!2611339 () Bool)

(assert (=> b!2170174 m!2611339))

(assert (=> b!2169911 d!649880))

(declare-fun b!2170194 () Bool)

(declare-fun e!1387945 () Int)

(declare-fun call!130179 () Int)

(assert (=> b!2170194 (= e!1387945 call!130179)))

(declare-fun b!2170195 () Bool)

(declare-fun e!1387943 () List!25237)

(declare-fun e!1387944 () List!25237)

(assert (=> b!2170195 (= e!1387943 e!1387944)))

(declare-fun c!343889 () Bool)

(assert (=> b!2170195 (= c!343889 (<= (- (size!19656 lt!808068) (size!19656 lt!808073)) 0))))

(declare-fun b!2170196 () Bool)

(declare-fun e!1387946 () Int)

(assert (=> b!2170196 (= e!1387945 e!1387946)))

(declare-fun c!343888 () Bool)

(assert (=> b!2170196 (= c!343888 (>= (- (size!19656 lt!808068) (size!19656 lt!808073)) call!130179))))

(declare-fun d!649882 () Bool)

(declare-fun e!1387947 () Bool)

(assert (=> d!649882 e!1387947))

(declare-fun res!934060 () Bool)

(assert (=> d!649882 (=> (not res!934060) (not e!1387947))))

(declare-fun lt!808263 () List!25237)

(assert (=> d!649882 (= res!934060 (set.subset (content!3415 lt!808263) (content!3415 lt!808068)))))

(assert (=> d!649882 (= lt!808263 e!1387943)))

(declare-fun c!343886 () Bool)

(assert (=> d!649882 (= c!343886 (is-Nil!25153 lt!808068))))

(assert (=> d!649882 (= (drop!1230 lt!808068 (- (size!19656 lt!808068) (size!19656 lt!808073))) lt!808263)))

(declare-fun b!2170197 () Bool)

(assert (=> b!2170197 (= e!1387944 (drop!1230 (t!197799 lt!808068) (- (- (size!19656 lt!808068) (size!19656 lt!808073)) 1)))))

(declare-fun b!2170198 () Bool)

(assert (=> b!2170198 (= e!1387944 lt!808068)))

(declare-fun b!2170199 () Bool)

(assert (=> b!2170199 (= e!1387946 0)))

(declare-fun b!2170200 () Bool)

(assert (=> b!2170200 (= e!1387946 (- call!130179 (- (size!19656 lt!808068) (size!19656 lt!808073))))))

(declare-fun b!2170201 () Bool)

(assert (=> b!2170201 (= e!1387947 (= (size!19656 lt!808263) e!1387945))))

(declare-fun c!343887 () Bool)

(assert (=> b!2170201 (= c!343887 (<= (- (size!19656 lt!808068) (size!19656 lt!808073)) 0))))

(declare-fun bm!130174 () Bool)

(assert (=> bm!130174 (= call!130179 (size!19656 lt!808068))))

(declare-fun b!2170202 () Bool)

(assert (=> b!2170202 (= e!1387943 Nil!25153)))

(assert (= (and d!649882 c!343886) b!2170202))

(assert (= (and d!649882 (not c!343886)) b!2170195))

(assert (= (and b!2170195 c!343889) b!2170198))

(assert (= (and b!2170195 (not c!343889)) b!2170197))

(assert (= (and d!649882 res!934060) b!2170201))

(assert (= (and b!2170201 c!343887) b!2170194))

(assert (= (and b!2170201 (not c!343887)) b!2170196))

(assert (= (and b!2170196 c!343888) b!2170199))

(assert (= (and b!2170196 (not c!343888)) b!2170200))

(assert (= (or b!2170194 b!2170196 b!2170200) bm!130174))

(declare-fun m!2611341 () Bool)

(assert (=> d!649882 m!2611341))

(assert (=> d!649882 m!2611123))

(declare-fun m!2611343 () Bool)

(assert (=> b!2170197 m!2611343))

(declare-fun m!2611345 () Bool)

(assert (=> b!2170201 m!2611345))

(assert (=> bm!130174 m!2610915))

(assert (=> d!649738 d!649882))

(declare-fun d!649884 () Bool)

(declare-fun lt!808264 () Int)

(assert (=> d!649884 (>= lt!808264 0)))

(declare-fun e!1387948 () Int)

(assert (=> d!649884 (= lt!808264 e!1387948)))

(declare-fun c!343890 () Bool)

(assert (=> d!649884 (= c!343890 (is-Nil!25153 lt!808068))))

(assert (=> d!649884 (= (size!19656 lt!808068) lt!808264)))

(declare-fun b!2170203 () Bool)

(assert (=> b!2170203 (= e!1387948 0)))

(declare-fun b!2170204 () Bool)

(assert (=> b!2170204 (= e!1387948 (+ 1 (size!19656 (t!197799 lt!808068))))))

(assert (= (and d!649884 c!343890) b!2170203))

(assert (= (and d!649884 (not c!343890)) b!2170204))

(declare-fun m!2611347 () Bool)

(assert (=> b!2170204 m!2611347))

(assert (=> d!649738 d!649884))

(declare-fun d!649886 () Bool)

(declare-fun lt!808265 () Int)

(assert (=> d!649886 (>= lt!808265 0)))

(declare-fun e!1387949 () Int)

(assert (=> d!649886 (= lt!808265 e!1387949)))

(declare-fun c!343891 () Bool)

(assert (=> d!649886 (= c!343891 (is-Nil!25153 lt!808073))))

(assert (=> d!649886 (= (size!19656 lt!808073) lt!808265)))

(declare-fun b!2170205 () Bool)

(assert (=> b!2170205 (= e!1387949 0)))

(declare-fun b!2170206 () Bool)

(assert (=> b!2170206 (= e!1387949 (+ 1 (size!19656 (t!197799 lt!808073))))))

(assert (= (and d!649886 c!343891) b!2170205))

(assert (= (and d!649886 (not c!343891)) b!2170206))

(declare-fun m!2611349 () Bool)

(assert (=> b!2170206 m!2611349))

(assert (=> d!649738 d!649886))

(declare-fun b!2170207 () Bool)

(declare-fun e!1387950 () List!25237)

(assert (=> b!2170207 (= e!1387950 lt!808074)))

(declare-fun b!2170210 () Bool)

(declare-fun lt!808266 () List!25237)

(declare-fun e!1387951 () Bool)

(assert (=> b!2170210 (= e!1387951 (or (not (= lt!808074 Nil!25153)) (= lt!808266 (t!197799 lt!808063))))))

(declare-fun d!649888 () Bool)

(assert (=> d!649888 e!1387951))

(declare-fun res!934061 () Bool)

(assert (=> d!649888 (=> (not res!934061) (not e!1387951))))

(assert (=> d!649888 (= res!934061 (= (content!3415 lt!808266) (set.union (content!3415 (t!197799 lt!808063)) (content!3415 lt!808074))))))

(assert (=> d!649888 (= lt!808266 e!1387950)))

(declare-fun c!343892 () Bool)

(assert (=> d!649888 (= c!343892 (is-Nil!25153 (t!197799 lt!808063)))))

(assert (=> d!649888 (= (++!6367 (t!197799 lt!808063) lt!808074) lt!808266)))

(declare-fun b!2170208 () Bool)

(assert (=> b!2170208 (= e!1387950 (Cons!25153 (h!30554 (t!197799 lt!808063)) (++!6367 (t!197799 (t!197799 lt!808063)) lt!808074)))))

(declare-fun b!2170209 () Bool)

(declare-fun res!934062 () Bool)

(assert (=> b!2170209 (=> (not res!934062) (not e!1387951))))

(assert (=> b!2170209 (= res!934062 (= (size!19656 lt!808266) (+ (size!19656 (t!197799 lt!808063)) (size!19656 lt!808074))))))

(assert (= (and d!649888 c!343892) b!2170207))

(assert (= (and d!649888 (not c!343892)) b!2170208))

(assert (= (and d!649888 res!934061) b!2170209))

(assert (= (and b!2170209 res!934062) b!2170210))

(declare-fun m!2611351 () Bool)

(assert (=> d!649888 m!2611351))

(assert (=> d!649888 m!2611281))

(assert (=> d!649888 m!2611019))

(declare-fun m!2611353 () Bool)

(assert (=> b!2170208 m!2611353))

(declare-fun m!2611355 () Bool)

(assert (=> b!2170209 m!2611355))

(declare-fun m!2611357 () Bool)

(assert (=> b!2170209 m!2611357))

(assert (=> b!2170209 m!2611027))

(assert (=> b!2169896 d!649888))

(declare-fun d!649890 () Bool)

(declare-fun lt!808267 () Int)

(assert (=> d!649890 (>= lt!808267 0)))

(declare-fun e!1387952 () Int)

(assert (=> d!649890 (= lt!808267 e!1387952)))

(declare-fun c!343893 () Bool)

(assert (=> d!649890 (= c!343893 (is-Nil!25153 (list!9641 totalInput!977)))))

(assert (=> d!649890 (= (size!19656 (list!9641 totalInput!977)) lt!808267)))

(declare-fun b!2170211 () Bool)

(assert (=> b!2170211 (= e!1387952 0)))

(declare-fun b!2170212 () Bool)

(assert (=> b!2170212 (= e!1387952 (+ 1 (size!19656 (t!197799 (list!9641 totalInput!977)))))))

(assert (= (and d!649890 c!343893) b!2170211))

(assert (= (and d!649890 (not c!343893)) b!2170212))

(declare-fun m!2611359 () Bool)

(assert (=> b!2170212 m!2611359))

(assert (=> d!649778 d!649890))

(assert (=> d!649778 d!649740))

(declare-fun d!649892 () Bool)

(declare-fun lt!808270 () Int)

(assert (=> d!649892 (= lt!808270 (size!19656 (list!9643 (c!343802 totalInput!977))))))

(assert (=> d!649892 (= lt!808270 (ite (is-Empty!8144 (c!343802 totalInput!977)) 0 (ite (is-Leaf!11916 (c!343802 totalInput!977)) (csize!16519 (c!343802 totalInput!977)) (csize!16518 (c!343802 totalInput!977)))))))

(assert (=> d!649892 (= (size!19657 (c!343802 totalInput!977)) lt!808270)))

(declare-fun bs!446891 () Bool)

(assert (= bs!446891 d!649892))

(assert (=> bs!446891 m!2610921))

(assert (=> bs!446891 m!2610921))

(declare-fun m!2611361 () Bool)

(assert (=> bs!446891 m!2611361))

(assert (=> d!649778 d!649892))

(assert (=> b!2169929 d!649884))

(declare-fun d!649894 () Bool)

(declare-fun lt!808271 () Int)

(assert (=> d!649894 (>= lt!808271 0)))

(declare-fun e!1387953 () Int)

(assert (=> d!649894 (= lt!808271 e!1387953)))

(declare-fun c!343894 () Bool)

(assert (=> d!649894 (= c!343894 (is-Nil!25153 (take!216 lt!808068 lt!808071)))))

(assert (=> d!649894 (= (size!19656 (take!216 lt!808068 lt!808071)) lt!808271)))

(declare-fun b!2170213 () Bool)

(assert (=> b!2170213 (= e!1387953 0)))

(declare-fun b!2170214 () Bool)

(assert (=> b!2170214 (= e!1387953 (+ 1 (size!19656 (t!197799 (take!216 lt!808068 lt!808071)))))))

(assert (= (and d!649894 c!343894) b!2170213))

(assert (= (and d!649894 (not c!343894)) b!2170214))

(declare-fun m!2611363 () Bool)

(assert (=> b!2170214 m!2611363))

(assert (=> b!2169929 d!649894))

(assert (=> b!2169951 d!649884))

(declare-fun d!649896 () Bool)

(declare-fun res!934063 () Bool)

(declare-fun e!1387954 () Bool)

(assert (=> d!649896 (=> (not res!934063) (not e!1387954))))

(assert (=> d!649896 (= res!934063 (<= (size!19656 (list!9645 (xs!11086 (c!343802 totalInput!977)))) 512))))

(assert (=> d!649896 (= (inv!33379 (c!343802 totalInput!977)) e!1387954)))

(declare-fun b!2170215 () Bool)

(declare-fun res!934064 () Bool)

(assert (=> b!2170215 (=> (not res!934064) (not e!1387954))))

(assert (=> b!2170215 (= res!934064 (= (csize!16519 (c!343802 totalInput!977)) (size!19656 (list!9645 (xs!11086 (c!343802 totalInput!977))))))))

(declare-fun b!2170216 () Bool)

(assert (=> b!2170216 (= e!1387954 (and (> (csize!16519 (c!343802 totalInput!977)) 0) (<= (csize!16519 (c!343802 totalInput!977)) 512)))))

(assert (= (and d!649896 res!934063) b!2170215))

(assert (= (and b!2170215 res!934064) b!2170216))

(declare-fun m!2611365 () Bool)

(assert (=> d!649896 m!2611365))

(assert (=> d!649896 m!2611365))

(declare-fun m!2611367 () Bool)

(assert (=> d!649896 m!2611367))

(assert (=> b!2170215 m!2611365))

(assert (=> b!2170215 m!2611365))

(assert (=> b!2170215 m!2611367))

(assert (=> b!2169913 d!649896))

(declare-fun b!2170227 () Bool)

(declare-fun e!1387960 () List!25237)

(assert (=> b!2170227 (= e!1387960 (list!9645 (xs!11086 (c!343802 totalInput!977))))))

(declare-fun b!2170226 () Bool)

(declare-fun e!1387959 () List!25237)

(assert (=> b!2170226 (= e!1387959 e!1387960)))

(declare-fun c!343900 () Bool)

(assert (=> b!2170226 (= c!343900 (is-Leaf!11916 (c!343802 totalInput!977)))))

(declare-fun d!649898 () Bool)

(declare-fun c!343899 () Bool)

(assert (=> d!649898 (= c!343899 (is-Empty!8144 (c!343802 totalInput!977)))))

(assert (=> d!649898 (= (list!9643 (c!343802 totalInput!977)) e!1387959)))

(declare-fun b!2170228 () Bool)

(assert (=> b!2170228 (= e!1387960 (++!6367 (list!9643 (left!19331 (c!343802 totalInput!977))) (list!9643 (right!19661 (c!343802 totalInput!977)))))))

(declare-fun b!2170225 () Bool)

(assert (=> b!2170225 (= e!1387959 Nil!25153)))

(assert (= (and d!649898 c!343899) b!2170225))

(assert (= (and d!649898 (not c!343899)) b!2170226))

(assert (= (and b!2170226 c!343900) b!2170227))

(assert (= (and b!2170226 (not c!343900)) b!2170228))

(assert (=> b!2170227 m!2611365))

(declare-fun m!2611369 () Bool)

(assert (=> b!2170228 m!2611369))

(declare-fun m!2611371 () Bool)

(assert (=> b!2170228 m!2611371))

(assert (=> b!2170228 m!2611369))

(assert (=> b!2170228 m!2611371))

(declare-fun m!2611373 () Bool)

(assert (=> b!2170228 m!2611373))

(assert (=> d!649740 d!649898))

(declare-fun d!649900 () Bool)

(declare-fun lt!808272 () Int)

(assert (=> d!649900 (>= lt!808272 0)))

(declare-fun e!1387961 () Int)

(assert (=> d!649900 (= lt!808272 e!1387961)))

(declare-fun c!343901 () Bool)

(assert (=> d!649900 (= c!343901 (is-Nil!25153 lt!808199))))

(assert (=> d!649900 (= (size!19656 lt!808199) lt!808272)))

(declare-fun b!2170229 () Bool)

(assert (=> b!2170229 (= e!1387961 0)))

(declare-fun b!2170230 () Bool)

(assert (=> b!2170230 (= e!1387961 (+ 1 (size!19656 (t!197799 lt!808199))))))

(assert (= (and d!649900 c!343901) b!2170229))

(assert (= (and d!649900 (not c!343901)) b!2170230))

(declare-fun m!2611375 () Bool)

(assert (=> b!2170230 m!2611375))

(assert (=> b!2169954 d!649900))

(declare-fun b!2170243 () Bool)

(declare-fun res!934081 () Bool)

(declare-fun e!1387966 () Bool)

(assert (=> b!2170243 (=> (not res!934081) (not e!1387966))))

(assert (=> b!2170243 (= res!934081 (isBalanced!2527 (left!19331 (c!343802 totalInput!977))))))

(declare-fun d!649902 () Bool)

(declare-fun res!934079 () Bool)

(declare-fun e!1387967 () Bool)

(assert (=> d!649902 (=> res!934079 e!1387967)))

(assert (=> d!649902 (= res!934079 (not (is-Node!8144 (c!343802 totalInput!977))))))

(assert (=> d!649902 (= (isBalanced!2527 (c!343802 totalInput!977)) e!1387967)))

(declare-fun b!2170244 () Bool)

(declare-fun res!934078 () Bool)

(assert (=> b!2170244 (=> (not res!934078) (not e!1387966))))

(declare-fun isEmpty!14429 (Conc!8144) Bool)

(assert (=> b!2170244 (= res!934078 (not (isEmpty!14429 (left!19331 (c!343802 totalInput!977)))))))

(declare-fun b!2170245 () Bool)

(assert (=> b!2170245 (= e!1387967 e!1387966)))

(declare-fun res!934080 () Bool)

(assert (=> b!2170245 (=> (not res!934080) (not e!1387966))))

(assert (=> b!2170245 (= res!934080 (<= (- 1) (- (height!1240 (left!19331 (c!343802 totalInput!977))) (height!1240 (right!19661 (c!343802 totalInput!977))))))))

(declare-fun b!2170246 () Bool)

(assert (=> b!2170246 (= e!1387966 (not (isEmpty!14429 (right!19661 (c!343802 totalInput!977)))))))

(declare-fun b!2170247 () Bool)

(declare-fun res!934077 () Bool)

(assert (=> b!2170247 (=> (not res!934077) (not e!1387966))))

(assert (=> b!2170247 (= res!934077 (<= (- (height!1240 (left!19331 (c!343802 totalInput!977))) (height!1240 (right!19661 (c!343802 totalInput!977)))) 1))))

(declare-fun b!2170248 () Bool)

(declare-fun res!934082 () Bool)

(assert (=> b!2170248 (=> (not res!934082) (not e!1387966))))

(assert (=> b!2170248 (= res!934082 (isBalanced!2527 (right!19661 (c!343802 totalInput!977))))))

(assert (= (and d!649902 (not res!934079)) b!2170245))

(assert (= (and b!2170245 res!934080) b!2170247))

(assert (= (and b!2170247 res!934077) b!2170243))

(assert (= (and b!2170243 res!934081) b!2170248))

(assert (= (and b!2170248 res!934082) b!2170244))

(assert (= (and b!2170244 res!934078) b!2170246))

(assert (=> b!2170245 m!2611335))

(assert (=> b!2170245 m!2611337))

(declare-fun m!2611377 () Bool)

(assert (=> b!2170244 m!2611377))

(assert (=> b!2170247 m!2611335))

(assert (=> b!2170247 m!2611337))

(declare-fun m!2611379 () Bool)

(assert (=> b!2170243 m!2611379))

(declare-fun m!2611381 () Bool)

(assert (=> b!2170246 m!2611381))

(declare-fun m!2611383 () Bool)

(assert (=> b!2170248 m!2611383))

(assert (=> d!649752 d!649902))

(declare-fun b!2170249 () Bool)

(declare-fun e!1387968 () List!25237)

(assert (=> b!2170249 (= e!1387968 (list!9641 (_2!14821 lt!808157)))))

(declare-fun b!2170252 () Bool)

(declare-fun e!1387969 () Bool)

(declare-fun lt!808273 () List!25237)

(assert (=> b!2170252 (= e!1387969 (or (not (= (list!9641 (_2!14821 lt!808157)) Nil!25153)) (= lt!808273 (list!9641 (_1!14821 lt!808157)))))))

(declare-fun d!649904 () Bool)

(assert (=> d!649904 e!1387969))

(declare-fun res!934083 () Bool)

(assert (=> d!649904 (=> (not res!934083) (not e!1387969))))

(assert (=> d!649904 (= res!934083 (= (content!3415 lt!808273) (set.union (content!3415 (list!9641 (_1!14821 lt!808157))) (content!3415 (list!9641 (_2!14821 lt!808157))))))))

(assert (=> d!649904 (= lt!808273 e!1387968)))

(declare-fun c!343902 () Bool)

(assert (=> d!649904 (= c!343902 (is-Nil!25153 (list!9641 (_1!14821 lt!808157))))))

(assert (=> d!649904 (= (++!6367 (list!9641 (_1!14821 lt!808157)) (list!9641 (_2!14821 lt!808157))) lt!808273)))

(declare-fun b!2170250 () Bool)

(assert (=> b!2170250 (= e!1387968 (Cons!25153 (h!30554 (list!9641 (_1!14821 lt!808157))) (++!6367 (t!197799 (list!9641 (_1!14821 lt!808157))) (list!9641 (_2!14821 lt!808157)))))))

(declare-fun b!2170251 () Bool)

(declare-fun res!934084 () Bool)

(assert (=> b!2170251 (=> (not res!934084) (not e!1387969))))

(assert (=> b!2170251 (= res!934084 (= (size!19656 lt!808273) (+ (size!19656 (list!9641 (_1!14821 lt!808157))) (size!19656 (list!9641 (_2!14821 lt!808157))))))))

(assert (= (and d!649904 c!343902) b!2170249))

(assert (= (and d!649904 (not c!343902)) b!2170250))

(assert (= (and d!649904 res!934083) b!2170251))

(assert (= (and b!2170251 res!934084) b!2170252))

(declare-fun m!2611385 () Bool)

(assert (=> d!649904 m!2611385))

(assert (=> d!649904 m!2611035))

(declare-fun m!2611387 () Bool)

(assert (=> d!649904 m!2611387))

(assert (=> d!649904 m!2611037))

(declare-fun m!2611389 () Bool)

(assert (=> d!649904 m!2611389))

(assert (=> b!2170250 m!2611037))

(declare-fun m!2611391 () Bool)

(assert (=> b!2170250 m!2611391))

(declare-fun m!2611393 () Bool)

(assert (=> b!2170251 m!2611393))

(assert (=> b!2170251 m!2611035))

(declare-fun m!2611395 () Bool)

(assert (=> b!2170251 m!2611395))

(assert (=> b!2170251 m!2611037))

(declare-fun m!2611397 () Bool)

(assert (=> b!2170251 m!2611397))

(assert (=> d!649784 d!649904))

(assert (=> d!649784 d!649742))

(declare-fun d!649906 () Bool)

(declare-fun e!1387970 () Bool)

(assert (=> d!649906 e!1387970))

(declare-fun res!934085 () Bool)

(assert (=> d!649906 (=> res!934085 e!1387970)))

(declare-fun lt!808274 () Bool)

(assert (=> d!649906 (= res!934085 (not lt!808274))))

(assert (=> d!649906 (= lt!808274 (= (list!9641 input!5540) (drop!1230 (list!9641 totalInput!977) (- (size!19656 (list!9641 totalInput!977)) (size!19656 (list!9641 input!5540))))))))

(assert (=> d!649906 (= (isSuffix!675 (list!9641 input!5540) (list!9641 totalInput!977)) lt!808274)))

(declare-fun b!2170253 () Bool)

(assert (=> b!2170253 (= e!1387970 (>= (size!19656 (list!9641 totalInput!977)) (size!19656 (list!9641 input!5540))))))

(assert (= (and d!649906 (not res!934085)) b!2170253))

(assert (=> d!649906 m!2610857))

(assert (=> d!649906 m!2611011))

(assert (=> d!649906 m!2610859))

(assert (=> d!649906 m!2611029))

(assert (=> d!649906 m!2610857))

(declare-fun m!2611399 () Bool)

(assert (=> d!649906 m!2611399))

(assert (=> b!2170253 m!2610857))

(assert (=> b!2170253 m!2611011))

(assert (=> b!2170253 m!2610859))

(assert (=> b!2170253 m!2611029))

(assert (=> d!649784 d!649906))

(declare-fun d!649908 () Bool)

(assert (=> d!649908 (= (list!9641 (_1!14821 lt!808157)) (list!9643 (c!343802 (_1!14821 lt!808157))))))

(declare-fun bs!446892 () Bool)

(assert (= bs!446892 d!649908))

(declare-fun m!2611401 () Bool)

(assert (=> bs!446892 m!2611401))

(assert (=> d!649784 d!649908))

(assert (=> d!649784 d!649782))

(assert (=> d!649784 d!649804))

(assert (=> d!649784 d!649740))

(declare-fun b!2170264 () Bool)

(declare-fun e!1387977 () Bool)

(declare-fun lostCauseZipper!156 ((Set Context!3156)) Bool)

(assert (=> b!2170264 (= e!1387977 (lostCauseZipper!156 z!4055))))

(declare-fun b!2170265 () Bool)

(declare-fun e!1387979 () Int)

(assert (=> b!2170265 (= e!1387979 e!1387791)))

(declare-fun b!2170266 () Bool)

(assert (=> b!2170266 (= e!1387979 lt!808159)))

(declare-fun d!649910 () Bool)

(declare-fun lt!808279 () Int)

(assert (=> d!649910 (and (>= lt!808279 (- 1)) (< lt!808279 lt!808158) (>= lt!808279 e!1387791) (or (= lt!808279 e!1387791) (>= lt!808279 lt!808159)))))

(declare-fun e!1387978 () Int)

(assert (=> d!649910 (= lt!808279 e!1387978)))

(declare-fun c!343908 () Bool)

(assert (=> d!649910 (= c!343908 e!1387977)))

(declare-fun res!934088 () Bool)

(assert (=> d!649910 (=> res!934088 e!1387977)))

(assert (=> d!649910 (= res!934088 (= lt!808159 lt!808158))))

(assert (=> d!649910 (and (>= lt!808159 0) (<= lt!808159 lt!808158))))

(assert (=> d!649910 (= (furthestNullablePosition!194 z!4055 lt!808159 totalInput!977 lt!808158 e!1387791) lt!808279)))

(declare-fun lt!808280 () (Set Context!3156))

(declare-fun b!2170267 () Bool)

(assert (=> b!2170267 (= e!1387978 (furthestNullablePosition!194 lt!808280 (+ lt!808159 1) totalInput!977 lt!808158 e!1387979))))

(declare-fun derivationStepZipper!123 ((Set Context!3156) C!12162) (Set Context!3156))

(declare-fun apply!6065 (BalanceConc!16050 Int) C!12162)

(assert (=> b!2170267 (= lt!808280 (derivationStepZipper!123 z!4055 (apply!6065 totalInput!977 lt!808159)))))

(declare-fun c!343907 () Bool)

(assert (=> b!2170267 (= c!343907 (nullableZipper!288 lt!808280))))

(declare-fun b!2170268 () Bool)

(assert (=> b!2170268 (= e!1387978 e!1387791)))

(assert (= (and d!649910 (not res!934088)) b!2170264))

(assert (= (and d!649910 c!343908) b!2170268))

(assert (= (and d!649910 (not c!343908)) b!2170267))

(assert (= (and b!2170267 c!343907) b!2170266))

(assert (= (and b!2170267 (not c!343907)) b!2170265))

(declare-fun m!2611403 () Bool)

(assert (=> b!2170264 m!2611403))

(declare-fun m!2611405 () Bool)

(assert (=> b!2170267 m!2611405))

(declare-fun m!2611407 () Bool)

(assert (=> b!2170267 m!2611407))

(assert (=> b!2170267 m!2611407))

(declare-fun m!2611409 () Bool)

(assert (=> b!2170267 m!2611409))

(declare-fun m!2611411 () Bool)

(assert (=> b!2170267 m!2611411))

(assert (=> d!649784 d!649910))

(declare-fun d!649912 () Bool)

(assert (=> d!649912 (= (list!9641 (_2!14821 lt!808157)) (list!9643 (c!343802 (_2!14821 lt!808157))))))

(declare-fun bs!446893 () Bool)

(assert (= bs!446893 d!649912))

(declare-fun m!2611413 () Bool)

(assert (=> bs!446893 m!2611413))

(assert (=> d!649784 d!649912))

(assert (=> d!649784 d!649778))

(declare-fun d!649914 () Bool)

(assert (=> d!649914 (= (inv!33380 (xs!11086 (c!343802 input!5540))) (<= (size!19656 (innerList!8204 (xs!11086 (c!343802 input!5540)))) 2147483647))))

(declare-fun bs!446894 () Bool)

(assert (= bs!446894 d!649914))

(declare-fun m!2611415 () Bool)

(assert (=> bs!446894 m!2611415))

(assert (=> b!2169987 d!649914))

(declare-fun d!649916 () Bool)

(declare-fun res!934093 () Bool)

(declare-fun e!1387984 () Bool)

(assert (=> d!649916 (=> res!934093 e!1387984)))

(assert (=> d!649916 (= res!934093 (is-Nil!25154 (exprs!2078 setElem!18173)))))

(assert (=> d!649916 (= (forall!5166 (exprs!2078 setElem!18173) lambda!81776) e!1387984)))

(declare-fun b!2170273 () Bool)

(declare-fun e!1387985 () Bool)

(assert (=> b!2170273 (= e!1387984 e!1387985)))

(declare-fun res!934094 () Bool)

(assert (=> b!2170273 (=> (not res!934094) (not e!1387985))))

(declare-fun dynLambda!11430 (Int Regex!6008) Bool)

(assert (=> b!2170273 (= res!934094 (dynLambda!11430 lambda!81776 (h!30555 (exprs!2078 setElem!18173))))))

(declare-fun b!2170274 () Bool)

(assert (=> b!2170274 (= e!1387985 (forall!5166 (t!197800 (exprs!2078 setElem!18173)) lambda!81776))))

(assert (= (and d!649916 (not res!934093)) b!2170273))

(assert (= (and b!2170273 res!934094) b!2170274))

(declare-fun b_lambda!71085 () Bool)

(assert (=> (not b_lambda!71085) (not b!2170273)))

(declare-fun m!2611417 () Bool)

(assert (=> b!2170273 m!2611417))

(declare-fun m!2611419 () Bool)

(assert (=> b!2170274 m!2611419))

(assert (=> d!649756 d!649916))

(declare-fun b!2170277 () Bool)

(declare-fun e!1387987 () List!25237)

(assert (=> b!2170277 (= e!1387987 (list!9645 (xs!11086 (c!343802 input!5540))))))

(declare-fun b!2170276 () Bool)

(declare-fun e!1387986 () List!25237)

(assert (=> b!2170276 (= e!1387986 e!1387987)))

(declare-fun c!343910 () Bool)

(assert (=> b!2170276 (= c!343910 (is-Leaf!11916 (c!343802 input!5540)))))

(declare-fun d!649918 () Bool)

(declare-fun c!343909 () Bool)

(assert (=> d!649918 (= c!343909 (is-Empty!8144 (c!343802 input!5540)))))

(assert (=> d!649918 (= (list!9643 (c!343802 input!5540)) e!1387986)))

(declare-fun b!2170278 () Bool)

(assert (=> b!2170278 (= e!1387987 (++!6367 (list!9643 (left!19331 (c!343802 input!5540))) (list!9643 (right!19661 (c!343802 input!5540)))))))

(declare-fun b!2170275 () Bool)

(assert (=> b!2170275 (= e!1387986 Nil!25153)))

(assert (= (and d!649918 c!343909) b!2170275))

(assert (= (and d!649918 (not c!343909)) b!2170276))

(assert (= (and b!2170276 c!343910) b!2170277))

(assert (= (and b!2170276 (not c!343910)) b!2170278))

(assert (=> b!2170277 m!2611299))

(declare-fun m!2611421 () Bool)

(assert (=> b!2170278 m!2611421))

(declare-fun m!2611423 () Bool)

(assert (=> b!2170278 m!2611423))

(assert (=> b!2170278 m!2611421))

(assert (=> b!2170278 m!2611423))

(declare-fun m!2611425 () Bool)

(assert (=> b!2170278 m!2611425))

(assert (=> d!649742 d!649918))

(declare-fun b!2170281 () Bool)

(declare-fun e!1387989 () List!25237)

(assert (=> b!2170281 (= e!1387989 (list!9645 (xs!11086 (c!343802 (_1!14821 lt!808076)))))))

(declare-fun b!2170280 () Bool)

(declare-fun e!1387988 () List!25237)

(assert (=> b!2170280 (= e!1387988 e!1387989)))

(declare-fun c!343912 () Bool)

(assert (=> b!2170280 (= c!343912 (is-Leaf!11916 (c!343802 (_1!14821 lt!808076))))))

(declare-fun d!649920 () Bool)

(declare-fun c!343911 () Bool)

(assert (=> d!649920 (= c!343911 (is-Empty!8144 (c!343802 (_1!14821 lt!808076))))))

(assert (=> d!649920 (= (list!9643 (c!343802 (_1!14821 lt!808076))) e!1387988)))

(declare-fun b!2170282 () Bool)

(assert (=> b!2170282 (= e!1387989 (++!6367 (list!9643 (left!19331 (c!343802 (_1!14821 lt!808076)))) (list!9643 (right!19661 (c!343802 (_1!14821 lt!808076))))))))

(declare-fun b!2170279 () Bool)

(assert (=> b!2170279 (= e!1387988 Nil!25153)))

(assert (= (and d!649920 c!343911) b!2170279))

(assert (= (and d!649920 (not c!343911)) b!2170280))

(assert (= (and b!2170280 c!343912) b!2170281))

(assert (= (and b!2170280 (not c!343912)) b!2170282))

(declare-fun m!2611427 () Bool)

(assert (=> b!2170281 m!2611427))

(declare-fun m!2611429 () Bool)

(assert (=> b!2170282 m!2611429))

(declare-fun m!2611431 () Bool)

(assert (=> b!2170282 m!2611431))

(assert (=> b!2170282 m!2611429))

(assert (=> b!2170282 m!2611431))

(declare-fun m!2611433 () Bool)

(assert (=> b!2170282 m!2611433))

(assert (=> d!649790 d!649920))

(assert (=> b!2169754 d!649792))

(declare-fun b!2170285 () Bool)

(declare-fun e!1387990 () Bool)

(assert (=> b!2170285 (= e!1387990 (isPrefix!2124 (tail!3117 lt!808063) (tail!3117 (++!6367 lt!808063 lt!808074))))))

(declare-fun b!2170284 () Bool)

(declare-fun res!934097 () Bool)

(assert (=> b!2170284 (=> (not res!934097) (not e!1387990))))

(assert (=> b!2170284 (= res!934097 (= (head!4645 lt!808063) (head!4645 (++!6367 lt!808063 lt!808074))))))

(declare-fun d!649922 () Bool)

(declare-fun e!1387991 () Bool)

(assert (=> d!649922 e!1387991))

(declare-fun res!934095 () Bool)

(assert (=> d!649922 (=> res!934095 e!1387991)))

(declare-fun lt!808281 () Bool)

(assert (=> d!649922 (= res!934095 (not lt!808281))))

(declare-fun e!1387992 () Bool)

(assert (=> d!649922 (= lt!808281 e!1387992)))

(declare-fun res!934096 () Bool)

(assert (=> d!649922 (=> res!934096 e!1387992)))

(assert (=> d!649922 (= res!934096 (is-Nil!25153 lt!808063))))

(assert (=> d!649922 (= (isPrefix!2124 lt!808063 (++!6367 lt!808063 lt!808074)) lt!808281)))

(declare-fun b!2170283 () Bool)

(assert (=> b!2170283 (= e!1387992 e!1387990)))

(declare-fun res!934098 () Bool)

(assert (=> b!2170283 (=> (not res!934098) (not e!1387990))))

(assert (=> b!2170283 (= res!934098 (not (is-Nil!25153 (++!6367 lt!808063 lt!808074))))))

(declare-fun b!2170286 () Bool)

(assert (=> b!2170286 (= e!1387991 (>= (size!19656 (++!6367 lt!808063 lt!808074)) (size!19656 lt!808063)))))

(assert (= (and d!649922 (not res!934096)) b!2170283))

(assert (= (and b!2170283 res!934098) b!2170284))

(assert (= (and b!2170284 res!934097) b!2170285))

(assert (= (and d!649922 (not res!934095)) b!2170286))

(assert (=> b!2170285 m!2611071))

(assert (=> b!2170285 m!2610831))

(declare-fun m!2611435 () Bool)

(assert (=> b!2170285 m!2611435))

(assert (=> b!2170285 m!2611071))

(assert (=> b!2170285 m!2611435))

(declare-fun m!2611437 () Bool)

(assert (=> b!2170285 m!2611437))

(assert (=> b!2170284 m!2611077))

(assert (=> b!2170284 m!2610831))

(declare-fun m!2611439 () Bool)

(assert (=> b!2170284 m!2611439))

(assert (=> b!2170286 m!2610831))

(declare-fun m!2611441 () Bool)

(assert (=> b!2170286 m!2611441))

(assert (=> b!2170286 m!2611025))

(assert (=> d!649800 d!649922))

(assert (=> d!649800 d!649780))

(declare-fun d!649924 () Bool)

(assert (=> d!649924 (isPrefix!2124 lt!808063 (++!6367 lt!808063 lt!808074))))

(assert (=> d!649924 true))

(declare-fun _$46!1256 () Unit!38217)

(assert (=> d!649924 (= (choose!12783 lt!808063 lt!808074) _$46!1256)))

(declare-fun bs!446895 () Bool)

(assert (= bs!446895 d!649924))

(assert (=> bs!446895 m!2610831))

(assert (=> bs!446895 m!2610831))

(assert (=> bs!446895 m!2611095))

(assert (=> d!649800 d!649924))

(declare-fun d!649926 () Bool)

(assert (=> d!649926 (= (head!4645 lt!808063) (h!30554 lt!808063))))

(assert (=> b!2169923 d!649926))

(declare-fun d!649928 () Bool)

(assert (=> d!649928 (= (head!4645 lt!808070) (h!30554 lt!808070))))

(assert (=> b!2169923 d!649928))

(declare-fun d!649930 () Bool)

(declare-fun c!343913 () Bool)

(assert (=> d!649930 (= c!343913 (is-Nil!25153 lt!808199))))

(declare-fun e!1387993 () (Set C!12162))

(assert (=> d!649930 (= (content!3415 lt!808199) e!1387993)))

(declare-fun b!2170287 () Bool)

(assert (=> b!2170287 (= e!1387993 (as set.empty (Set C!12162)))))

(declare-fun b!2170288 () Bool)

(assert (=> b!2170288 (= e!1387993 (set.union (set.insert (h!30554 lt!808199) (as set.empty (Set C!12162))) (content!3415 (t!197799 lt!808199))))))

(assert (= (and d!649930 c!343913) b!2170287))

(assert (= (and d!649930 (not c!343913)) b!2170288))

(declare-fun m!2611443 () Bool)

(assert (=> b!2170288 m!2611443))

(declare-fun m!2611445 () Bool)

(assert (=> b!2170288 m!2611445))

(assert (=> d!649808 d!649930))

(declare-fun d!649932 () Bool)

(declare-fun c!343914 () Bool)

(assert (=> d!649932 (= c!343914 (is-Nil!25153 lt!808068))))

(declare-fun e!1387994 () (Set C!12162))

(assert (=> d!649932 (= (content!3415 lt!808068) e!1387994)))

(declare-fun b!2170289 () Bool)

(assert (=> b!2170289 (= e!1387994 (as set.empty (Set C!12162)))))

(declare-fun b!2170290 () Bool)

(assert (=> b!2170290 (= e!1387994 (set.union (set.insert (h!30554 lt!808068) (as set.empty (Set C!12162))) (content!3415 (t!197799 lt!808068))))))

(assert (= (and d!649932 c!343914) b!2170289))

(assert (= (and d!649932 (not c!343914)) b!2170290))

(declare-fun m!2611447 () Bool)

(assert (=> b!2170290 m!2611447))

(declare-fun m!2611449 () Bool)

(assert (=> b!2170290 m!2611449))

(assert (=> d!649808 d!649932))

(declare-fun b!2170291 () Bool)

(declare-fun e!1387995 () Bool)

(declare-fun call!130182 () Bool)

(assert (=> b!2170291 (= e!1387995 call!130182)))

(declare-fun bm!130175 () Bool)

(declare-fun call!130180 () Bool)

(declare-fun c!343915 () Bool)

(assert (=> bm!130175 (= call!130180 (validRegex!2284 (ite c!343915 (regOne!12529 lt!808124) (regTwo!12528 lt!808124))))))

(declare-fun b!2170292 () Bool)

(declare-fun e!1388000 () Bool)

(declare-fun e!1387999 () Bool)

(assert (=> b!2170292 (= e!1388000 e!1387999)))

(declare-fun c!343916 () Bool)

(assert (=> b!2170292 (= c!343916 (is-Star!6008 lt!808124))))

(declare-fun b!2170293 () Bool)

(declare-fun res!934102 () Bool)

(declare-fun e!1388001 () Bool)

(assert (=> b!2170293 (=> (not res!934102) (not e!1388001))))

(assert (=> b!2170293 (= res!934102 call!130180)))

(declare-fun e!1387998 () Bool)

(assert (=> b!2170293 (= e!1387998 e!1388001)))

(declare-fun b!2170294 () Bool)

(declare-fun e!1387997 () Bool)

(assert (=> b!2170294 (= e!1387997 call!130180)))

(declare-fun b!2170295 () Bool)

(declare-fun e!1387996 () Bool)

(assert (=> b!2170295 (= e!1387996 e!1387997)))

(declare-fun res!934103 () Bool)

(assert (=> b!2170295 (=> (not res!934103) (not e!1387997))))

(declare-fun call!130181 () Bool)

(assert (=> b!2170295 (= res!934103 call!130181)))

(declare-fun b!2170296 () Bool)

(declare-fun res!934099 () Bool)

(assert (=> b!2170296 (=> res!934099 e!1387996)))

(assert (=> b!2170296 (= res!934099 (not (is-Concat!10310 lt!808124)))))

(assert (=> b!2170296 (= e!1387998 e!1387996)))

(declare-fun bm!130176 () Bool)

(assert (=> bm!130176 (= call!130181 call!130182)))

(declare-fun d!649934 () Bool)

(declare-fun res!934101 () Bool)

(assert (=> d!649934 (=> res!934101 e!1388000)))

(assert (=> d!649934 (= res!934101 (is-ElementMatch!6008 lt!808124))))

(assert (=> d!649934 (= (validRegex!2284 lt!808124) e!1388000)))

(declare-fun b!2170297 () Bool)

(assert (=> b!2170297 (= e!1387999 e!1387995)))

(declare-fun res!934100 () Bool)

(assert (=> b!2170297 (= res!934100 (not (nullable!1694 (reg!6337 lt!808124))))))

(assert (=> b!2170297 (=> (not res!934100) (not e!1387995))))

(declare-fun b!2170298 () Bool)

(assert (=> b!2170298 (= e!1387999 e!1387998)))

(assert (=> b!2170298 (= c!343915 (is-Union!6008 lt!808124))))

(declare-fun b!2170299 () Bool)

(assert (=> b!2170299 (= e!1388001 call!130181)))

(declare-fun bm!130177 () Bool)

(assert (=> bm!130177 (= call!130182 (validRegex!2284 (ite c!343916 (reg!6337 lt!808124) (ite c!343915 (regTwo!12529 lt!808124) (regOne!12528 lt!808124)))))))

(assert (= (and d!649934 (not res!934101)) b!2170292))

(assert (= (and b!2170292 c!343916) b!2170297))

(assert (= (and b!2170292 (not c!343916)) b!2170298))

(assert (= (and b!2170297 res!934100) b!2170291))

(assert (= (and b!2170298 c!343915) b!2170293))

(assert (= (and b!2170298 (not c!343915)) b!2170296))

(assert (= (and b!2170293 res!934102) b!2170299))

(assert (= (and b!2170296 (not res!934099)) b!2170295))

(assert (= (and b!2170295 res!934103) b!2170294))

(assert (= (or b!2170299 b!2170295) bm!130176))

(assert (= (or b!2170293 b!2170294) bm!130175))

(assert (= (or b!2170291 bm!130176) bm!130177))

(declare-fun m!2611451 () Bool)

(assert (=> bm!130175 m!2611451))

(declare-fun m!2611453 () Bool)

(assert (=> b!2170297 m!2611453))

(declare-fun m!2611455 () Bool)

(assert (=> bm!130177 m!2611455))

(assert (=> d!649744 d!649934))

(declare-fun bs!446896 () Bool)

(declare-fun d!649936 () Bool)

(assert (= bs!446896 (and d!649936 d!649756)))

(declare-fun lambda!81788 () Int)

(assert (=> bs!446896 (= lambda!81788 lambda!81776)))

(declare-fun e!1388015 () Bool)

(assert (=> d!649936 e!1388015))

(declare-fun res!934109 () Bool)

(assert (=> d!649936 (=> (not res!934109) (not e!1388015))))

(declare-fun lt!808284 () Regex!6008)

(assert (=> d!649936 (= res!934109 (validRegex!2284 lt!808284))))

(declare-fun e!1388016 () Regex!6008)

(assert (=> d!649936 (= lt!808284 e!1388016)))

(declare-fun c!343926 () Bool)

(declare-fun e!1388014 () Bool)

(assert (=> d!649936 (= c!343926 e!1388014)))

(declare-fun res!934108 () Bool)

(assert (=> d!649936 (=> (not res!934108) (not e!1388014))))

(assert (=> d!649936 (= res!934108 (is-Cons!25154 (unfocusZipperList!34 (toList!1191 z!4055))))))

(assert (=> d!649936 (forall!5166 (unfocusZipperList!34 (toList!1191 z!4055)) lambda!81788)))

(assert (=> d!649936 (= (generalisedUnion!510 (unfocusZipperList!34 (toList!1191 z!4055))) lt!808284)))

(declare-fun b!2170320 () Bool)

(declare-fun e!1388018 () Bool)

(declare-fun head!4647 (List!25238) Regex!6008)

(assert (=> b!2170320 (= e!1388018 (= lt!808284 (head!4647 (unfocusZipperList!34 (toList!1191 z!4055)))))))

(declare-fun b!2170321 () Bool)

(declare-fun e!1388019 () Bool)

(assert (=> b!2170321 (= e!1388019 e!1388018)))

(declare-fun c!343927 () Bool)

(declare-fun isEmpty!14430 (List!25238) Bool)

(declare-fun tail!3119 (List!25238) List!25238)

(assert (=> b!2170321 (= c!343927 (isEmpty!14430 (tail!3119 (unfocusZipperList!34 (toList!1191 z!4055)))))))

(declare-fun b!2170322 () Bool)

(declare-fun e!1388017 () Regex!6008)

(assert (=> b!2170322 (= e!1388017 EmptyLang!6008)))

(declare-fun b!2170323 () Bool)

(assert (=> b!2170323 (= e!1388014 (isEmpty!14430 (t!197800 (unfocusZipperList!34 (toList!1191 z!4055)))))))

(declare-fun b!2170324 () Bool)

(declare-fun isUnion!138 (Regex!6008) Bool)

(assert (=> b!2170324 (= e!1388018 (isUnion!138 lt!808284))))

(declare-fun b!2170325 () Bool)

(assert (=> b!2170325 (= e!1388016 (h!30555 (unfocusZipperList!34 (toList!1191 z!4055))))))

(declare-fun b!2170326 () Bool)

(assert (=> b!2170326 (= e!1388017 (Union!6008 (h!30555 (unfocusZipperList!34 (toList!1191 z!4055))) (generalisedUnion!510 (t!197800 (unfocusZipperList!34 (toList!1191 z!4055))))))))

(declare-fun b!2170327 () Bool)

(declare-fun isEmptyLang!138 (Regex!6008) Bool)

(assert (=> b!2170327 (= e!1388019 (isEmptyLang!138 lt!808284))))

(declare-fun b!2170328 () Bool)

(assert (=> b!2170328 (= e!1388015 e!1388019)))

(declare-fun c!343928 () Bool)

(assert (=> b!2170328 (= c!343928 (isEmpty!14430 (unfocusZipperList!34 (toList!1191 z!4055))))))

(declare-fun b!2170329 () Bool)

(assert (=> b!2170329 (= e!1388016 e!1388017)))

(declare-fun c!343925 () Bool)

(assert (=> b!2170329 (= c!343925 (is-Cons!25154 (unfocusZipperList!34 (toList!1191 z!4055))))))

(assert (= (and d!649936 res!934108) b!2170323))

(assert (= (and d!649936 c!343926) b!2170325))

(assert (= (and d!649936 (not c!343926)) b!2170329))

(assert (= (and b!2170329 c!343925) b!2170326))

(assert (= (and b!2170329 (not c!343925)) b!2170322))

(assert (= (and d!649936 res!934109) b!2170328))

(assert (= (and b!2170328 c!343928) b!2170327))

(assert (= (and b!2170328 (not c!343928)) b!2170321))

(assert (= (and b!2170321 c!343927) b!2170320))

(assert (= (and b!2170321 (not c!343927)) b!2170324))

(declare-fun m!2611457 () Bool)

(assert (=> b!2170324 m!2611457))

(assert (=> b!2170328 m!2610927))

(declare-fun m!2611459 () Bool)

(assert (=> b!2170328 m!2611459))

(assert (=> b!2170320 m!2610927))

(declare-fun m!2611461 () Bool)

(assert (=> b!2170320 m!2611461))

(assert (=> b!2170321 m!2610927))

(declare-fun m!2611463 () Bool)

(assert (=> b!2170321 m!2611463))

(assert (=> b!2170321 m!2611463))

(declare-fun m!2611465 () Bool)

(assert (=> b!2170321 m!2611465))

(declare-fun m!2611467 () Bool)

(assert (=> d!649936 m!2611467))

(assert (=> d!649936 m!2610927))

(declare-fun m!2611469 () Bool)

(assert (=> d!649936 m!2611469))

(declare-fun m!2611471 () Bool)

(assert (=> b!2170323 m!2611471))

(declare-fun m!2611473 () Bool)

(assert (=> b!2170326 m!2611473))

(declare-fun m!2611475 () Bool)

(assert (=> b!2170327 m!2611475))

(assert (=> d!649744 d!649936))

(declare-fun bs!446897 () Bool)

(declare-fun d!649938 () Bool)

(assert (= bs!446897 (and d!649938 d!649756)))

(declare-fun lambda!81791 () Int)

(assert (=> bs!446897 (= lambda!81791 lambda!81776)))

(declare-fun bs!446898 () Bool)

(assert (= bs!446898 (and d!649938 d!649936)))

(assert (=> bs!446898 (= lambda!81791 lambda!81788)))

(declare-fun lt!808287 () List!25238)

(assert (=> d!649938 (forall!5166 lt!808287 lambda!81791)))

(declare-fun e!1388022 () List!25238)

(assert (=> d!649938 (= lt!808287 e!1388022)))

(declare-fun c!343931 () Bool)

(assert (=> d!649938 (= c!343931 (is-Cons!25155 (toList!1191 z!4055)))))

(assert (=> d!649938 (= (unfocusZipperList!34 (toList!1191 z!4055)) lt!808287)))

(declare-fun b!2170334 () Bool)

(declare-fun generalisedConcat!3 (List!25238) Regex!6008)

(assert (=> b!2170334 (= e!1388022 (Cons!25154 (generalisedConcat!3 (exprs!2078 (h!30556 (toList!1191 z!4055)))) (unfocusZipperList!34 (t!197801 (toList!1191 z!4055)))))))

(declare-fun b!2170335 () Bool)

(assert (=> b!2170335 (= e!1388022 Nil!25154)))

(assert (= (and d!649938 c!343931) b!2170334))

(assert (= (and d!649938 (not c!343931)) b!2170335))

(declare-fun m!2611477 () Bool)

(assert (=> d!649938 m!2611477))

(declare-fun m!2611479 () Bool)

(assert (=> b!2170334 m!2611479))

(declare-fun m!2611481 () Bool)

(assert (=> b!2170334 m!2611481))

(assert (=> d!649744 d!649938))

(assert (=> b!2169798 d!649884))

(assert (=> b!2169798 d!649886))

(declare-fun d!649940 () Bool)

(declare-fun lt!808288 () Int)

(assert (=> d!649940 (>= lt!808288 0)))

(declare-fun e!1388023 () Int)

(assert (=> d!649940 (= lt!808288 e!1388023)))

(declare-fun c!343932 () Bool)

(assert (=> d!649940 (= c!343932 (is-Nil!25153 lt!808070))))

(assert (=> d!649940 (= (size!19656 lt!808070) lt!808288)))

(declare-fun b!2170336 () Bool)

(assert (=> b!2170336 (= e!1388023 0)))

(declare-fun b!2170337 () Bool)

(assert (=> b!2170337 (= e!1388023 (+ 1 (size!19656 (t!197799 lt!808070))))))

(assert (= (and d!649940 c!343932) b!2170336))

(assert (= (and d!649940 (not c!343932)) b!2170337))

(declare-fun m!2611483 () Bool)

(assert (=> b!2170337 m!2611483))

(assert (=> b!2169925 d!649940))

(declare-fun d!649942 () Bool)

(declare-fun lt!808289 () Int)

(assert (=> d!649942 (>= lt!808289 0)))

(declare-fun e!1388024 () Int)

(assert (=> d!649942 (= lt!808289 e!1388024)))

(declare-fun c!343933 () Bool)

(assert (=> d!649942 (= c!343933 (is-Nil!25153 lt!808063))))

(assert (=> d!649942 (= (size!19656 lt!808063) lt!808289)))

(declare-fun b!2170338 () Bool)

(assert (=> b!2170338 (= e!1388024 0)))

(declare-fun b!2170339 () Bool)

(assert (=> b!2170339 (= e!1388024 (+ 1 (size!19656 (t!197799 lt!808063))))))

(assert (= (and d!649942 c!343933) b!2170338))

(assert (= (and d!649942 (not c!343933)) b!2170339))

(assert (=> b!2170339 m!2611357))

(assert (=> b!2169925 d!649942))

(declare-fun d!649944 () Bool)

(declare-fun lt!808290 () Int)

(assert (=> d!649944 (>= lt!808290 0)))

(declare-fun e!1388025 () Int)

(assert (=> d!649944 (= lt!808290 e!1388025)))

(declare-fun c!343934 () Bool)

(assert (=> d!649944 (= c!343934 (is-Nil!25153 lt!808143))))

(assert (=> d!649944 (= (size!19656 lt!808143) lt!808290)))

(declare-fun b!2170340 () Bool)

(assert (=> b!2170340 (= e!1388025 0)))

(declare-fun b!2170341 () Bool)

(assert (=> b!2170341 (= e!1388025 (+ 1 (size!19656 (t!197799 lt!808143))))))

(assert (= (and d!649944 c!343934) b!2170340))

(assert (= (and d!649944 (not c!343934)) b!2170341))

(declare-fun m!2611485 () Bool)

(assert (=> b!2170341 m!2611485))

(assert (=> b!2169884 d!649944))

(assert (=> b!2169884 d!649874))

(declare-fun d!649946 () Bool)

(declare-fun lt!808291 () Int)

(assert (=> d!649946 (>= lt!808291 0)))

(declare-fun e!1388026 () Int)

(assert (=> d!649946 (= lt!808291 e!1388026)))

(declare-fun c!343935 () Bool)

(assert (=> d!649946 (= c!343935 (is-Nil!25153 (_2!14822 lt!808066)))))

(assert (=> d!649946 (= (size!19656 (_2!14822 lt!808066)) lt!808291)))

(declare-fun b!2170342 () Bool)

(assert (=> b!2170342 (= e!1388026 0)))

(declare-fun b!2170343 () Bool)

(assert (=> b!2170343 (= e!1388026 (+ 1 (size!19656 (t!197799 (_2!14822 lt!808066)))))))

(assert (= (and d!649946 c!343935) b!2170342))

(assert (= (and d!649946 (not c!343935)) b!2170343))

(declare-fun m!2611487 () Bool)

(assert (=> b!2170343 m!2611487))

(assert (=> b!2169884 d!649946))

(declare-fun b!2170344 () Bool)

(declare-fun e!1388027 () Bool)

(declare-fun call!130185 () Bool)

(assert (=> b!2170344 (= e!1388027 call!130185)))

(declare-fun c!343936 () Bool)

(declare-fun bm!130178 () Bool)

(declare-fun call!130183 () Bool)

(assert (=> bm!130178 (= call!130183 (validRegex!2284 (ite c!343936 (regOne!12529 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534)))) (regTwo!12528 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534)))))))))

(declare-fun b!2170345 () Bool)

(declare-fun e!1388032 () Bool)

(declare-fun e!1388031 () Bool)

(assert (=> b!2170345 (= e!1388032 e!1388031)))

(declare-fun c!343937 () Bool)

(assert (=> b!2170345 (= c!343937 (is-Star!6008 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534)))))))

(declare-fun b!2170346 () Bool)

(declare-fun res!934113 () Bool)

(declare-fun e!1388033 () Bool)

(assert (=> b!2170346 (=> (not res!934113) (not e!1388033))))

(assert (=> b!2170346 (= res!934113 call!130183)))

(declare-fun e!1388030 () Bool)

(assert (=> b!2170346 (= e!1388030 e!1388033)))

(declare-fun b!2170347 () Bool)

(declare-fun e!1388029 () Bool)

(assert (=> b!2170347 (= e!1388029 call!130183)))

(declare-fun b!2170348 () Bool)

(declare-fun e!1388028 () Bool)

(assert (=> b!2170348 (= e!1388028 e!1388029)))

(declare-fun res!934114 () Bool)

(assert (=> b!2170348 (=> (not res!934114) (not e!1388029))))

(declare-fun call!130184 () Bool)

(assert (=> b!2170348 (= res!934114 call!130184)))

(declare-fun b!2170349 () Bool)

(declare-fun res!934110 () Bool)

(assert (=> b!2170349 (=> res!934110 e!1388028)))

(assert (=> b!2170349 (= res!934110 (not (is-Concat!10310 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534))))))))

(assert (=> b!2170349 (= e!1388030 e!1388028)))

(declare-fun bm!130179 () Bool)

(assert (=> bm!130179 (= call!130184 call!130185)))

(declare-fun d!649948 () Bool)

(declare-fun res!934112 () Bool)

(assert (=> d!649948 (=> res!934112 e!1388032)))

(assert (=> d!649948 (= res!934112 (is-ElementMatch!6008 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534)))))))

(assert (=> d!649948 (= (validRegex!2284 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534)))) e!1388032)))

(declare-fun b!2170350 () Bool)

(assert (=> b!2170350 (= e!1388031 e!1388027)))

(declare-fun res!934111 () Bool)

(assert (=> b!2170350 (= res!934111 (not (nullable!1694 (reg!6337 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534)))))))))

(assert (=> b!2170350 (=> (not res!934111) (not e!1388027))))

(declare-fun b!2170351 () Bool)

(assert (=> b!2170351 (= e!1388031 e!1388030)))

(assert (=> b!2170351 (= c!343936 (is-Union!6008 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534)))))))

(declare-fun b!2170352 () Bool)

(assert (=> b!2170352 (= e!1388033 call!130184)))

(declare-fun bm!130180 () Bool)

(assert (=> bm!130180 (= call!130185 (validRegex!2284 (ite c!343937 (reg!6337 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534)))) (ite c!343936 (regTwo!12529 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534)))) (regOne!12528 (ite c!343811 (reg!6337 r!12534) (ite c!343810 (regTwo!12529 r!12534) (regOne!12528 r!12534))))))))))

(assert (= (and d!649948 (not res!934112)) b!2170345))

(assert (= (and b!2170345 c!343937) b!2170350))

(assert (= (and b!2170345 (not c!343937)) b!2170351))

(assert (= (and b!2170350 res!934111) b!2170344))

(assert (= (and b!2170351 c!343936) b!2170346))

(assert (= (and b!2170351 (not c!343936)) b!2170349))

(assert (= (and b!2170346 res!934113) b!2170352))

(assert (= (and b!2170349 (not res!934110)) b!2170348))

(assert (= (and b!2170348 res!934114) b!2170347))

(assert (= (or b!2170352 b!2170348) bm!130179))

(assert (= (or b!2170346 b!2170347) bm!130178))

(assert (= (or b!2170344 bm!130179) bm!130180))

(declare-fun m!2611489 () Bool)

(assert (=> bm!130178 m!2611489))

(declare-fun m!2611491 () Bool)

(assert (=> b!2170350 m!2611491))

(declare-fun m!2611493 () Bool)

(assert (=> bm!130180 m!2611493))

(assert (=> bm!130156 d!649948))

(declare-fun d!649950 () Bool)

(declare-fun lt!808292 () Int)

(assert (=> d!649950 (>= lt!808292 0)))

(declare-fun e!1388034 () Int)

(assert (=> d!649950 (= lt!808292 e!1388034)))

(declare-fun c!343938 () Bool)

(assert (=> d!649950 (= c!343938 (is-Nil!25153 (list!9641 input!5540)))))

(assert (=> d!649950 (= (size!19656 (list!9641 input!5540)) lt!808292)))

(declare-fun b!2170353 () Bool)

(assert (=> b!2170353 (= e!1388034 0)))

(declare-fun b!2170354 () Bool)

(assert (=> b!2170354 (= e!1388034 (+ 1 (size!19656 (t!197799 (list!9641 input!5540)))))))

(assert (= (and d!649950 c!343938) b!2170353))

(assert (= (and d!649950 (not c!343938)) b!2170354))

(declare-fun m!2611495 () Bool)

(assert (=> b!2170354 m!2611495))

(assert (=> d!649782 d!649950))

(assert (=> d!649782 d!649742))

(declare-fun d!649952 () Bool)

(declare-fun lt!808293 () Int)

(assert (=> d!649952 (= lt!808293 (size!19656 (list!9643 (c!343802 input!5540))))))

(assert (=> d!649952 (= lt!808293 (ite (is-Empty!8144 (c!343802 input!5540)) 0 (ite (is-Leaf!11916 (c!343802 input!5540)) (csize!16519 (c!343802 input!5540)) (csize!16518 (c!343802 input!5540)))))))

(assert (=> d!649952 (= (size!19657 (c!343802 input!5540)) lt!808293)))

(declare-fun bs!446899 () Bool)

(assert (= bs!446899 d!649952))

(assert (=> bs!446899 m!2610923))

(assert (=> bs!446899 m!2610923))

(declare-fun m!2611497 () Bool)

(assert (=> bs!446899 m!2611497))

(assert (=> d!649782 d!649952))

(declare-fun b!2170357 () Bool)

(declare-fun e!1388035 () Bool)

(assert (=> b!2170357 (= e!1388035 (isPrefix!2124 (tail!3117 (tail!3117 (_1!14822 lt!808066))) (tail!3117 (tail!3117 lt!808067))))))

(declare-fun b!2170356 () Bool)

(declare-fun res!934117 () Bool)

(assert (=> b!2170356 (=> (not res!934117) (not e!1388035))))

(assert (=> b!2170356 (= res!934117 (= (head!4645 (tail!3117 (_1!14822 lt!808066))) (head!4645 (tail!3117 lt!808067))))))

(declare-fun d!649954 () Bool)

(declare-fun e!1388036 () Bool)

(assert (=> d!649954 e!1388036))

(declare-fun res!934115 () Bool)

(assert (=> d!649954 (=> res!934115 e!1388036)))

(declare-fun lt!808294 () Bool)

(assert (=> d!649954 (= res!934115 (not lt!808294))))

(declare-fun e!1388037 () Bool)

(assert (=> d!649954 (= lt!808294 e!1388037)))

(declare-fun res!934116 () Bool)

(assert (=> d!649954 (=> res!934116 e!1388037)))

(assert (=> d!649954 (= res!934116 (is-Nil!25153 (tail!3117 (_1!14822 lt!808066))))))

(assert (=> d!649954 (= (isPrefix!2124 (tail!3117 (_1!14822 lt!808066)) (tail!3117 lt!808067)) lt!808294)))

(declare-fun b!2170355 () Bool)

(assert (=> b!2170355 (= e!1388037 e!1388035)))

(declare-fun res!934118 () Bool)

(assert (=> b!2170355 (=> (not res!934118) (not e!1388035))))

(assert (=> b!2170355 (= res!934118 (not (is-Nil!25153 (tail!3117 lt!808067))))))

(declare-fun b!2170358 () Bool)

(assert (=> b!2170358 (= e!1388036 (>= (size!19656 (tail!3117 lt!808067)) (size!19656 (tail!3117 (_1!14822 lt!808066)))))))

(assert (= (and d!649954 (not res!934116)) b!2170355))

(assert (= (and b!2170355 res!934118) b!2170356))

(assert (= (and b!2170356 res!934117) b!2170357))

(assert (= (and d!649954 (not res!934115)) b!2170358))

(assert (=> b!2170357 m!2611099))

(declare-fun m!2611499 () Bool)

(assert (=> b!2170357 m!2611499))

(assert (=> b!2170357 m!2611101))

(declare-fun m!2611501 () Bool)

(assert (=> b!2170357 m!2611501))

(assert (=> b!2170357 m!2611499))

(assert (=> b!2170357 m!2611501))

(declare-fun m!2611503 () Bool)

(assert (=> b!2170357 m!2611503))

(assert (=> b!2170356 m!2611099))

(declare-fun m!2611505 () Bool)

(assert (=> b!2170356 m!2611505))

(assert (=> b!2170356 m!2611101))

(declare-fun m!2611507 () Bool)

(assert (=> b!2170356 m!2611507))

(assert (=> b!2170358 m!2611101))

(declare-fun m!2611509 () Bool)

(assert (=> b!2170358 m!2611509))

(assert (=> b!2170358 m!2611099))

(declare-fun m!2611511 () Bool)

(assert (=> b!2170358 m!2611511))

(assert (=> b!2169932 d!649954))

(declare-fun d!649956 () Bool)

(assert (=> d!649956 (= (tail!3117 (_1!14822 lt!808066)) (t!197799 (_1!14822 lt!808066)))))

(assert (=> b!2169932 d!649956))

(declare-fun d!649958 () Bool)

(assert (=> d!649958 (= (tail!3117 lt!808067) (t!197799 lt!808067))))

(assert (=> b!2169932 d!649958))

(declare-fun b!2170360 () Bool)

(declare-fun e!1388041 () List!25237)

(assert (=> b!2170360 (= e!1388041 Nil!25153)))

(declare-fun b!2170361 () Bool)

(declare-fun e!1388039 () Int)

(assert (=> b!2170361 (= e!1388039 (size!19656 (t!197799 lt!808068)))))

(declare-fun b!2170362 () Bool)

(declare-fun e!1388038 () Int)

(assert (=> b!2170362 (= e!1388038 e!1388039)))

(declare-fun c!343940 () Bool)

(assert (=> b!2170362 (= c!343940 (>= (- lt!808071 1) (size!19656 (t!197799 lt!808068))))))

(declare-fun b!2170363 () Bool)

(assert (=> b!2170363 (= e!1388038 0)))

(declare-fun b!2170364 () Bool)

(assert (=> b!2170364 (= e!1388039 (- lt!808071 1))))

(declare-fun b!2170365 () Bool)

(declare-fun e!1388040 () Bool)

(declare-fun lt!808295 () List!25237)

(assert (=> b!2170365 (= e!1388040 (= (size!19656 lt!808295) e!1388038))))

(declare-fun c!343939 () Bool)

(assert (=> b!2170365 (= c!343939 (<= (- lt!808071 1) 0))))

(declare-fun d!649960 () Bool)

(assert (=> d!649960 e!1388040))

(declare-fun res!934119 () Bool)

(assert (=> d!649960 (=> (not res!934119) (not e!1388040))))

(assert (=> d!649960 (= res!934119 (set.subset (content!3415 lt!808295) (content!3415 (t!197799 lt!808068))))))

(assert (=> d!649960 (= lt!808295 e!1388041)))

(declare-fun c!343941 () Bool)

(assert (=> d!649960 (= c!343941 (or (is-Nil!25153 (t!197799 lt!808068)) (<= (- lt!808071 1) 0)))))

(assert (=> d!649960 (= (take!216 (t!197799 lt!808068) (- lt!808071 1)) lt!808295)))

(declare-fun b!2170359 () Bool)

(assert (=> b!2170359 (= e!1388041 (Cons!25153 (h!30554 (t!197799 lt!808068)) (take!216 (t!197799 (t!197799 lt!808068)) (- (- lt!808071 1) 1))))))

(assert (= (and d!649960 c!343941) b!2170360))

(assert (= (and d!649960 (not c!343941)) b!2170359))

(assert (= (and d!649960 res!934119) b!2170365))

(assert (= (and b!2170365 c!343939) b!2170363))

(assert (= (and b!2170365 (not c!343939)) b!2170362))

(assert (= (and b!2170362 c!343940) b!2170361))

(assert (= (and b!2170362 (not c!343940)) b!2170364))

(declare-fun m!2611513 () Bool)

(assert (=> b!2170365 m!2611513))

(declare-fun m!2611515 () Bool)

(assert (=> b!2170359 m!2611515))

(declare-fun m!2611517 () Bool)

(assert (=> d!649960 m!2611517))

(assert (=> d!649960 m!2611449))

(assert (=> b!2170362 m!2611347))

(assert (=> b!2170361 m!2611347))

(assert (=> b!2169948 d!649960))

(declare-fun d!649962 () Bool)

(declare-fun c!343942 () Bool)

(assert (=> d!649962 (= c!343942 (is-Node!8144 (left!19331 (c!343802 totalInput!977))))))

(declare-fun e!1388042 () Bool)

(assert (=> d!649962 (= (inv!33372 (left!19331 (c!343802 totalInput!977))) e!1388042)))

(declare-fun b!2170366 () Bool)

(assert (=> b!2170366 (= e!1388042 (inv!33378 (left!19331 (c!343802 totalInput!977))))))

(declare-fun b!2170367 () Bool)

(declare-fun e!1388043 () Bool)

(assert (=> b!2170367 (= e!1388042 e!1388043)))

(declare-fun res!934120 () Bool)

(assert (=> b!2170367 (= res!934120 (not (is-Leaf!11916 (left!19331 (c!343802 totalInput!977)))))))

(assert (=> b!2170367 (=> res!934120 e!1388043)))

(declare-fun b!2170368 () Bool)

(assert (=> b!2170368 (= e!1388043 (inv!33379 (left!19331 (c!343802 totalInput!977))))))

(assert (= (and d!649962 c!343942) b!2170366))

(assert (= (and d!649962 (not c!343942)) b!2170367))

(assert (= (and b!2170367 (not res!934120)) b!2170368))

(declare-fun m!2611519 () Bool)

(assert (=> b!2170366 m!2611519))

(declare-fun m!2611521 () Bool)

(assert (=> b!2170368 m!2611521))

(assert (=> b!2169994 d!649962))

(declare-fun d!649964 () Bool)

(declare-fun c!343943 () Bool)

(assert (=> d!649964 (= c!343943 (is-Node!8144 (right!19661 (c!343802 totalInput!977))))))

(declare-fun e!1388044 () Bool)

(assert (=> d!649964 (= (inv!33372 (right!19661 (c!343802 totalInput!977))) e!1388044)))

(declare-fun b!2170369 () Bool)

(assert (=> b!2170369 (= e!1388044 (inv!33378 (right!19661 (c!343802 totalInput!977))))))

(declare-fun b!2170370 () Bool)

(declare-fun e!1388045 () Bool)

(assert (=> b!2170370 (= e!1388044 e!1388045)))

(declare-fun res!934121 () Bool)

(assert (=> b!2170370 (= res!934121 (not (is-Leaf!11916 (right!19661 (c!343802 totalInput!977)))))))

(assert (=> b!2170370 (=> res!934121 e!1388045)))

(declare-fun b!2170371 () Bool)

(assert (=> b!2170371 (= e!1388045 (inv!33379 (right!19661 (c!343802 totalInput!977))))))

(assert (= (and d!649964 c!343943) b!2170369))

(assert (= (and d!649964 (not c!343943)) b!2170370))

(assert (= (and b!2170370 (not res!934121)) b!2170371))

(declare-fun m!2611523 () Bool)

(assert (=> b!2170369 m!2611523))

(declare-fun m!2611525 () Bool)

(assert (=> b!2170371 m!2611525))

(assert (=> b!2169994 d!649964))

(declare-fun b!2170374 () Bool)

(declare-fun e!1388046 () Bool)

(assert (=> b!2170374 (= e!1388046 (isPrefix!2124 (tail!3117 (tail!3117 (take!216 lt!808068 lt!808071))) (tail!3117 (tail!3117 lt!808068))))))

(declare-fun b!2170373 () Bool)

(declare-fun res!934124 () Bool)

(assert (=> b!2170373 (=> (not res!934124) (not e!1388046))))

(assert (=> b!2170373 (= res!934124 (= (head!4645 (tail!3117 (take!216 lt!808068 lt!808071))) (head!4645 (tail!3117 lt!808068))))))

(declare-fun d!649966 () Bool)

(declare-fun e!1388047 () Bool)

(assert (=> d!649966 e!1388047))

(declare-fun res!934122 () Bool)

(assert (=> d!649966 (=> res!934122 e!1388047)))

(declare-fun lt!808296 () Bool)

(assert (=> d!649966 (= res!934122 (not lt!808296))))

(declare-fun e!1388048 () Bool)

(assert (=> d!649966 (= lt!808296 e!1388048)))

(declare-fun res!934123 () Bool)

(assert (=> d!649966 (=> res!934123 e!1388048)))

(assert (=> d!649966 (= res!934123 (is-Nil!25153 (tail!3117 (take!216 lt!808068 lt!808071))))))

(assert (=> d!649966 (= (isPrefix!2124 (tail!3117 (take!216 lt!808068 lt!808071)) (tail!3117 lt!808068)) lt!808296)))

(declare-fun b!2170372 () Bool)

(assert (=> b!2170372 (= e!1388048 e!1388046)))

(declare-fun res!934125 () Bool)

(assert (=> b!2170372 (=> (not res!934125) (not e!1388046))))

(assert (=> b!2170372 (= res!934125 (not (is-Nil!25153 (tail!3117 lt!808068))))))

(declare-fun b!2170375 () Bool)

(assert (=> b!2170375 (= e!1388047 (>= (size!19656 (tail!3117 lt!808068)) (size!19656 (tail!3117 (take!216 lt!808068 lt!808071)))))))

(assert (= (and d!649966 (not res!934123)) b!2170372))

(assert (= (and b!2170372 res!934125) b!2170373))

(assert (= (and b!2170373 res!934124) b!2170374))

(assert (= (and d!649966 (not res!934122)) b!2170375))

(assert (=> b!2170374 m!2611083))

(declare-fun m!2611527 () Bool)

(assert (=> b!2170374 m!2611527))

(assert (=> b!2170374 m!2611085))

(declare-fun m!2611529 () Bool)

(assert (=> b!2170374 m!2611529))

(assert (=> b!2170374 m!2611527))

(assert (=> b!2170374 m!2611529))

(declare-fun m!2611531 () Bool)

(assert (=> b!2170374 m!2611531))

(assert (=> b!2170373 m!2611083))

(declare-fun m!2611533 () Bool)

(assert (=> b!2170373 m!2611533))

(assert (=> b!2170373 m!2611085))

(declare-fun m!2611535 () Bool)

(assert (=> b!2170373 m!2611535))

(assert (=> b!2170375 m!2611085))

(declare-fun m!2611537 () Bool)

(assert (=> b!2170375 m!2611537))

(assert (=> b!2170375 m!2611083))

(declare-fun m!2611539 () Bool)

(assert (=> b!2170375 m!2611539))

(assert (=> b!2169928 d!649966))

(declare-fun d!649968 () Bool)

(assert (=> d!649968 (= (tail!3117 (take!216 lt!808068 lt!808071)) (t!197799 (take!216 lt!808068 lt!808071)))))

(assert (=> b!2169928 d!649968))

(declare-fun d!649970 () Bool)

(assert (=> d!649970 (= (tail!3117 lt!808068) (t!197799 lt!808068))))

(assert (=> b!2169928 d!649970))

(assert (=> b!2169950 d!649884))

(declare-fun d!649972 () Bool)

(declare-fun lt!808297 () Int)

(assert (=> d!649972 (>= lt!808297 0)))

(declare-fun e!1388049 () Int)

(assert (=> d!649972 (= lt!808297 e!1388049)))

(declare-fun c!343944 () Bool)

(assert (=> d!649972 (= c!343944 (is-Nil!25153 lt!808147))))

(assert (=> d!649972 (= (size!19656 lt!808147) lt!808297)))

(declare-fun b!2170376 () Bool)

(assert (=> b!2170376 (= e!1388049 0)))

(declare-fun b!2170377 () Bool)

(assert (=> b!2170377 (= e!1388049 (+ 1 (size!19656 (t!197799 lt!808147))))))

(assert (= (and d!649972 c!343944) b!2170376))

(assert (= (and d!649972 (not c!343944)) b!2170377))

(declare-fun m!2611541 () Bool)

(assert (=> b!2170377 m!2611541))

(assert (=> b!2169897 d!649972))

(assert (=> b!2169897 d!649942))

(declare-fun d!649974 () Bool)

(declare-fun lt!808298 () Int)

(assert (=> d!649974 (>= lt!808298 0)))

(declare-fun e!1388050 () Int)

(assert (=> d!649974 (= lt!808298 e!1388050)))

(declare-fun c!343945 () Bool)

(assert (=> d!649974 (= c!343945 (is-Nil!25153 lt!808074))))

(assert (=> d!649974 (= (size!19656 lt!808074) lt!808298)))

(declare-fun b!2170378 () Bool)

(assert (=> b!2170378 (= e!1388050 0)))

(declare-fun b!2170379 () Bool)

(assert (=> b!2170379 (= e!1388050 (+ 1 (size!19656 (t!197799 lt!808074))))))

(assert (= (and d!649974 c!343945) b!2170378))

(assert (= (and d!649974 (not c!343945)) b!2170379))

(declare-fun m!2611543 () Bool)

(assert (=> b!2170379 m!2611543))

(assert (=> b!2169897 d!649974))

(declare-fun b!2170382 () Bool)

(declare-fun e!1388052 () List!25237)

(assert (=> b!2170382 (= e!1388052 (list!9645 (xs!11086 (c!343802 (_2!14821 lt!808076)))))))

(declare-fun b!2170381 () Bool)

(declare-fun e!1388051 () List!25237)

(assert (=> b!2170381 (= e!1388051 e!1388052)))

(declare-fun c!343947 () Bool)

(assert (=> b!2170381 (= c!343947 (is-Leaf!11916 (c!343802 (_2!14821 lt!808076))))))

(declare-fun d!649976 () Bool)

(declare-fun c!343946 () Bool)

(assert (=> d!649976 (= c!343946 (is-Empty!8144 (c!343802 (_2!14821 lt!808076))))))

(assert (=> d!649976 (= (list!9643 (c!343802 (_2!14821 lt!808076))) e!1388051)))

(declare-fun b!2170383 () Bool)

(assert (=> b!2170383 (= e!1388052 (++!6367 (list!9643 (left!19331 (c!343802 (_2!14821 lt!808076)))) (list!9643 (right!19661 (c!343802 (_2!14821 lt!808076))))))))

(declare-fun b!2170380 () Bool)

(assert (=> b!2170380 (= e!1388051 Nil!25153)))

(assert (= (and d!649976 c!343946) b!2170380))

(assert (= (and d!649976 (not c!343946)) b!2170381))

(assert (= (and b!2170381 c!343947) b!2170382))

(assert (= (and b!2170381 (not c!343947)) b!2170383))

(declare-fun m!2611545 () Bool)

(assert (=> b!2170382 m!2611545))

(declare-fun m!2611547 () Bool)

(assert (=> b!2170383 m!2611547))

(declare-fun m!2611549 () Bool)

(assert (=> b!2170383 m!2611549))

(assert (=> b!2170383 m!2611547))

(assert (=> b!2170383 m!2611549))

(declare-fun m!2611551 () Bool)

(assert (=> b!2170383 m!2611551))

(assert (=> d!649786 d!649976))

(declare-fun d!649978 () Bool)

(declare-fun c!343950 () Bool)

(assert (=> d!649978 (= c!343950 (is-Nil!25155 lt!808127))))

(declare-fun e!1388055 () (Set Context!3156))

(assert (=> d!649978 (= (content!3414 lt!808127) e!1388055)))

(declare-fun b!2170388 () Bool)

(assert (=> b!2170388 (= e!1388055 (as set.empty (Set Context!3156)))))

(declare-fun b!2170389 () Bool)

(assert (=> b!2170389 (= e!1388055 (set.union (set.insert (h!30556 lt!808127) (as set.empty (Set Context!3156))) (content!3414 (t!197801 lt!808127))))))

(assert (= (and d!649978 c!343950) b!2170388))

(assert (= (and d!649978 (not c!343950)) b!2170389))

(declare-fun m!2611553 () Bool)

(assert (=> b!2170389 m!2611553))

(declare-fun m!2611555 () Bool)

(assert (=> b!2170389 m!2611555))

(assert (=> b!2169801 d!649978))

(declare-fun bs!446900 () Bool)

(declare-fun d!649980 () Bool)

(assert (= bs!446900 (and d!649980 d!649756)))

(declare-fun lambda!81792 () Int)

(assert (=> bs!446900 (= lambda!81792 lambda!81776)))

(declare-fun bs!446901 () Bool)

(assert (= bs!446901 (and d!649980 d!649936)))

(assert (=> bs!446901 (= lambda!81792 lambda!81788)))

(declare-fun bs!446902 () Bool)

(assert (= bs!446902 (and d!649980 d!649938)))

(assert (=> bs!446902 (= lambda!81792 lambda!81791)))

(assert (=> d!649980 (= (inv!33373 setElem!18179) (forall!5166 (exprs!2078 setElem!18179) lambda!81792))))

(declare-fun bs!446903 () Bool)

(assert (= bs!446903 d!649980))

(declare-fun m!2611557 () Bool)

(assert (=> bs!446903 m!2611557))

(assert (=> setNonEmpty!18179 d!649980))

(declare-fun b!2170390 () Bool)

(declare-fun res!934130 () Bool)

(declare-fun e!1388056 () Bool)

(assert (=> b!2170390 (=> (not res!934130) (not e!1388056))))

(assert (=> b!2170390 (= res!934130 (isBalanced!2527 (left!19331 (c!343802 input!5540))))))

(declare-fun d!649982 () Bool)

(declare-fun res!934128 () Bool)

(declare-fun e!1388057 () Bool)

(assert (=> d!649982 (=> res!934128 e!1388057)))

(assert (=> d!649982 (= res!934128 (not (is-Node!8144 (c!343802 input!5540))))))

(assert (=> d!649982 (= (isBalanced!2527 (c!343802 input!5540)) e!1388057)))

(declare-fun b!2170391 () Bool)

(declare-fun res!934127 () Bool)

(assert (=> b!2170391 (=> (not res!934127) (not e!1388056))))

(assert (=> b!2170391 (= res!934127 (not (isEmpty!14429 (left!19331 (c!343802 input!5540)))))))

(declare-fun b!2170392 () Bool)

(assert (=> b!2170392 (= e!1388057 e!1388056)))

(declare-fun res!934129 () Bool)

(assert (=> b!2170392 (=> (not res!934129) (not e!1388056))))

(assert (=> b!2170392 (= res!934129 (<= (- 1) (- (height!1240 (left!19331 (c!343802 input!5540))) (height!1240 (right!19661 (c!343802 input!5540))))))))

(declare-fun b!2170393 () Bool)

(assert (=> b!2170393 (= e!1388056 (not (isEmpty!14429 (right!19661 (c!343802 input!5540)))))))

(declare-fun b!2170394 () Bool)

(declare-fun res!934126 () Bool)

(assert (=> b!2170394 (=> (not res!934126) (not e!1388056))))

(assert (=> b!2170394 (= res!934126 (<= (- (height!1240 (left!19331 (c!343802 input!5540))) (height!1240 (right!19661 (c!343802 input!5540)))) 1))))

(declare-fun b!2170395 () Bool)

(declare-fun res!934131 () Bool)

(assert (=> b!2170395 (=> (not res!934131) (not e!1388056))))

(assert (=> b!2170395 (= res!934131 (isBalanced!2527 (right!19661 (c!343802 input!5540))))))

(assert (= (and d!649982 (not res!934128)) b!2170392))

(assert (= (and b!2170392 res!934129) b!2170394))

(assert (= (and b!2170394 res!934126) b!2170390))

(assert (= (and b!2170390 res!934130) b!2170395))

(assert (= (and b!2170395 res!934131) b!2170391))

(assert (= (and b!2170391 res!934127) b!2170393))

(assert (=> b!2170392 m!2611291))

(assert (=> b!2170392 m!2611293))

(declare-fun m!2611559 () Bool)

(assert (=> b!2170391 m!2611559))

(assert (=> b!2170394 m!2611291))

(assert (=> b!2170394 m!2611293))

(declare-fun m!2611561 () Bool)

(assert (=> b!2170390 m!2611561))

(declare-fun m!2611563 () Bool)

(assert (=> b!2170393 m!2611563))

(declare-fun m!2611565 () Bool)

(assert (=> b!2170395 m!2611565))

(assert (=> d!649754 d!649982))

(declare-fun d!649984 () Bool)

(declare-fun c!343951 () Bool)

(assert (=> d!649984 (= c!343951 (is-Nil!25153 lt!808143))))

(declare-fun e!1388058 () (Set C!12162))

(assert (=> d!649984 (= (content!3415 lt!808143) e!1388058)))

(declare-fun b!2170396 () Bool)

(assert (=> b!2170396 (= e!1388058 (as set.empty (Set C!12162)))))

(declare-fun b!2170397 () Bool)

(assert (=> b!2170397 (= e!1388058 (set.union (set.insert (h!30554 lt!808143) (as set.empty (Set C!12162))) (content!3415 (t!197799 lt!808143))))))

(assert (= (and d!649984 c!343951) b!2170396))

(assert (= (and d!649984 (not c!343951)) b!2170397))

(declare-fun m!2611567 () Bool)

(assert (=> b!2170397 m!2611567))

(declare-fun m!2611569 () Bool)

(assert (=> b!2170397 m!2611569))

(assert (=> d!649774 d!649984))

(declare-fun d!649986 () Bool)

(declare-fun c!343952 () Bool)

(assert (=> d!649986 (= c!343952 (is-Nil!25153 (_1!14822 lt!808066)))))

(declare-fun e!1388059 () (Set C!12162))

(assert (=> d!649986 (= (content!3415 (_1!14822 lt!808066)) e!1388059)))

(declare-fun b!2170398 () Bool)

(assert (=> b!2170398 (= e!1388059 (as set.empty (Set C!12162)))))

(declare-fun b!2170399 () Bool)

(assert (=> b!2170399 (= e!1388059 (set.union (set.insert (h!30554 (_1!14822 lt!808066)) (as set.empty (Set C!12162))) (content!3415 (t!197799 (_1!14822 lt!808066)))))))

(assert (= (and d!649986 c!343952) b!2170398))

(assert (= (and d!649986 (not c!343952)) b!2170399))

(declare-fun m!2611571 () Bool)

(assert (=> b!2170399 m!2611571))

(assert (=> b!2170399 m!2611319))

(assert (=> d!649774 d!649986))

(declare-fun d!649988 () Bool)

(declare-fun c!343953 () Bool)

(assert (=> d!649988 (= c!343953 (is-Nil!25153 (_2!14822 lt!808066)))))

(declare-fun e!1388060 () (Set C!12162))

(assert (=> d!649988 (= (content!3415 (_2!14822 lt!808066)) e!1388060)))

(declare-fun b!2170400 () Bool)

(assert (=> b!2170400 (= e!1388060 (as set.empty (Set C!12162)))))

(declare-fun b!2170401 () Bool)

(assert (=> b!2170401 (= e!1388060 (set.union (set.insert (h!30554 (_2!14822 lt!808066)) (as set.empty (Set C!12162))) (content!3415 (t!197799 (_2!14822 lt!808066)))))))

(assert (= (and d!649988 c!343953) b!2170400))

(assert (= (and d!649988 (not c!343953)) b!2170401))

(declare-fun m!2611573 () Bool)

(assert (=> b!2170401 m!2611573))

(declare-fun m!2611575 () Bool)

(assert (=> b!2170401 m!2611575))

(assert (=> d!649774 d!649988))

(declare-fun d!649990 () Bool)

(declare-fun c!343956 () Bool)

(assert (=> d!649990 (= c!343956 (is-Nil!25153 lt!808184))))

(declare-fun e!1388063 () Int)

(assert (=> d!649990 (= (sizeTr!111 lt!808184 lt!808179) e!1388063)))

(declare-fun b!2170406 () Bool)

(assert (=> b!2170406 (= e!1388063 lt!808179)))

(declare-fun b!2170407 () Bool)

(assert (=> b!2170407 (= e!1388063 (sizeTr!111 (t!197799 lt!808184) (+ lt!808179 1)))))

(assert (= (and d!649990 c!343956) b!2170406))

(assert (= (and d!649990 (not c!343956)) b!2170407))

(declare-fun m!2611577 () Bool)

(assert (=> b!2170407 m!2611577))

(assert (=> d!649788 d!649990))

(declare-fun d!649992 () Bool)

(declare-fun c!343957 () Bool)

(assert (=> d!649992 (= c!343957 (is-Nil!25153 lt!808073))))

(declare-fun e!1388064 () Int)

(assert (=> d!649992 (= (sizeTr!111 lt!808073 lt!808181) e!1388064)))

(declare-fun b!2170408 () Bool)

(assert (=> b!2170408 (= e!1388064 lt!808181)))

(declare-fun b!2170409 () Bool)

(assert (=> b!2170409 (= e!1388064 (sizeTr!111 (t!197799 lt!808073) (+ lt!808181 1)))))

(assert (= (and d!649992 c!343957) b!2170408))

(assert (= (and d!649992 (not c!343957)) b!2170409))

(declare-fun m!2611579 () Bool)

(assert (=> b!2170409 m!2611579))

(assert (=> d!649788 d!649992))

(declare-fun b!2170438 () Bool)

(declare-fun e!1388081 () tuple2!24904)

(assert (=> b!2170438 (= e!1388081 (tuple2!24905 Nil!25153 lt!808073))))

(declare-fun bm!130197 () Bool)

(declare-fun call!130209 () List!25237)

(assert (=> bm!130197 (= call!130209 (tail!3117 lt!808073))))

(declare-fun b!2170439 () Bool)

(declare-fun e!1388087 () Unit!38217)

(declare-fun Unit!38221 () Unit!38217)

(assert (=> b!2170439 (= e!1388087 Unit!38221)))

(declare-fun lt!808369 () Unit!38217)

(declare-fun call!130208 () Unit!38217)

(assert (=> b!2170439 (= lt!808369 call!130208)))

(declare-fun call!130203 () Bool)

(assert (=> b!2170439 call!130203))

(declare-fun lt!808382 () Unit!38217)

(assert (=> b!2170439 (= lt!808382 lt!808369)))

(declare-fun lt!808365 () Unit!38217)

(declare-fun call!130202 () Unit!38217)

(assert (=> b!2170439 (= lt!808365 call!130202)))

(assert (=> b!2170439 (= lt!808073 Nil!25153)))

(declare-fun lt!808375 () Unit!38217)

(assert (=> b!2170439 (= lt!808375 lt!808365)))

(assert (=> b!2170439 false))

(declare-fun bm!130198 () Bool)

(declare-fun call!130207 () C!12162)

(assert (=> bm!130198 (= call!130207 (head!4645 lt!808073))))

(declare-fun b!2170440 () Bool)

(declare-fun e!1388085 () tuple2!24904)

(assert (=> b!2170440 (= e!1388081 e!1388085)))

(declare-fun c!343973 () Bool)

(assert (=> b!2170440 (= c!343973 (= 0 (sizeTr!111 lt!808073 0)))))

(declare-fun b!2170441 () Bool)

(declare-fun Unit!38222 () Unit!38217)

(assert (=> b!2170441 (= e!1388087 Unit!38222)))

(declare-fun bm!130200 () Bool)

(declare-fun lemmaIsPrefixRefl!1406 (List!25237 List!25237) Unit!38217)

(assert (=> bm!130200 (= call!130208 (lemmaIsPrefixRefl!1406 lt!808073 lt!808073))))

(declare-fun b!2170442 () Bool)

(declare-fun e!1388086 () Bool)

(declare-fun e!1388082 () Bool)

(assert (=> b!2170442 (= e!1388086 e!1388082)))

(declare-fun res!934137 () Bool)

(assert (=> b!2170442 (=> res!934137 e!1388082)))

(declare-fun lt!808377 () tuple2!24904)

(declare-fun isEmpty!14431 (List!25237) Bool)

(assert (=> b!2170442 (= res!934137 (isEmpty!14431 (_1!14822 lt!808377)))))

(declare-fun b!2170443 () Bool)

(assert (=> b!2170443 (= e!1388082 (>= (size!19656 (_1!14822 lt!808377)) (size!19656 Nil!25153)))))

(declare-fun b!2170444 () Bool)

(declare-fun e!1388084 () tuple2!24904)

(declare-fun lt!808357 () tuple2!24904)

(assert (=> b!2170444 (= e!1388084 lt!808357)))

(declare-fun bm!130201 () Bool)

(declare-fun call!130205 () Bool)

(assert (=> bm!130201 (= call!130205 (nullable!1694 r!12534))))

(declare-fun bm!130202 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!348 (List!25237 List!25237 List!25237) Unit!38217)

(assert (=> bm!130202 (= call!130202 (lemmaIsPrefixSameLengthThenSameList!348 lt!808073 Nil!25153 lt!808073))))

(declare-fun d!649994 () Bool)

(assert (=> d!649994 e!1388086))

(declare-fun res!934136 () Bool)

(assert (=> d!649994 (=> (not res!934136) (not e!1388086))))

(assert (=> d!649994 (= res!934136 (= (++!6367 (_1!14822 lt!808377) (_2!14822 lt!808377)) lt!808073))))

(assert (=> d!649994 (= lt!808377 e!1388081)))

(declare-fun c!343972 () Bool)

(declare-fun lostCause!666 (Regex!6008) Bool)

(assert (=> d!649994 (= c!343972 (lostCause!666 r!12534))))

(declare-fun lt!808363 () Unit!38217)

(declare-fun Unit!38223 () Unit!38217)

(assert (=> d!649994 (= lt!808363 Unit!38223)))

(declare-fun getSuffix!1031 (List!25237 List!25237) List!25237)

(assert (=> d!649994 (= (getSuffix!1031 lt!808073 Nil!25153) lt!808073)))

(declare-fun lt!808374 () Unit!38217)

(declare-fun lt!808364 () Unit!38217)

(assert (=> d!649994 (= lt!808374 lt!808364)))

(declare-fun lt!808372 () List!25237)

(assert (=> d!649994 (= lt!808073 lt!808372)))

(declare-fun lemmaSamePrefixThenSameSuffix!953 (List!25237 List!25237 List!25237 List!25237 List!25237) Unit!38217)

(assert (=> d!649994 (= lt!808364 (lemmaSamePrefixThenSameSuffix!953 Nil!25153 lt!808073 Nil!25153 lt!808372 lt!808073))))

(assert (=> d!649994 (= lt!808372 (getSuffix!1031 lt!808073 Nil!25153))))

(declare-fun lt!808355 () Unit!38217)

(declare-fun lt!808367 () Unit!38217)

(assert (=> d!649994 (= lt!808355 lt!808367)))

(assert (=> d!649994 (isPrefix!2124 Nil!25153 (++!6367 Nil!25153 lt!808073))))

(assert (=> d!649994 (= lt!808367 (lemmaConcatTwoListThenFirstIsPrefix!1407 Nil!25153 lt!808073))))

(assert (=> d!649994 (validRegex!2284 r!12534)))

(assert (=> d!649994 (= (findLongestMatchInner!637 r!12534 Nil!25153 0 lt!808073 lt!808073 (sizeTr!111 lt!808073 0)) lt!808377)))

(declare-fun lt!808376 () List!25237)

(declare-fun call!130204 () tuple2!24904)

(declare-fun bm!130199 () Bool)

(declare-fun call!130206 () Regex!6008)

(assert (=> bm!130199 (= call!130204 (findLongestMatchInner!637 call!130206 lt!808376 (+ 0 1) call!130209 lt!808073 (sizeTr!111 lt!808073 0)))))

(declare-fun b!2170445 () Bool)

(assert (=> b!2170445 (= e!1388084 (tuple2!24905 Nil!25153 lt!808073))))

(declare-fun bm!130203 () Bool)

(declare-fun derivativeStep!1437 (Regex!6008 C!12162) Regex!6008)

(assert (=> bm!130203 (= call!130206 (derivativeStep!1437 r!12534 call!130207))))

(declare-fun b!2170446 () Bool)

(declare-fun e!1388083 () tuple2!24904)

(assert (=> b!2170446 (= e!1388083 (tuple2!24905 Nil!25153 Nil!25153))))

(declare-fun b!2170447 () Bool)

(declare-fun c!343970 () Bool)

(assert (=> b!2170447 (= c!343970 call!130205)))

(declare-fun lt!808379 () Unit!38217)

(declare-fun lt!808378 () Unit!38217)

(assert (=> b!2170447 (= lt!808379 lt!808378)))

(assert (=> b!2170447 (= lt!808073 Nil!25153)))

(assert (=> b!2170447 (= lt!808378 call!130202)))

(declare-fun lt!808356 () Unit!38217)

(declare-fun lt!808373 () Unit!38217)

(assert (=> b!2170447 (= lt!808356 lt!808373)))

(assert (=> b!2170447 call!130203))

(assert (=> b!2170447 (= lt!808373 call!130208)))

(assert (=> b!2170447 (= e!1388085 e!1388083)))

(declare-fun b!2170448 () Bool)

(declare-fun e!1388088 () tuple2!24904)

(assert (=> b!2170448 (= e!1388088 call!130204)))

(declare-fun b!2170449 () Bool)

(assert (=> b!2170449 (= e!1388088 e!1388084)))

(assert (=> b!2170449 (= lt!808357 call!130204)))

(declare-fun c!343971 () Bool)

(assert (=> b!2170449 (= c!343971 (isEmpty!14431 (_1!14822 lt!808357)))))

(declare-fun b!2170450 () Bool)

(declare-fun c!343975 () Bool)

(assert (=> b!2170450 (= c!343975 call!130205)))

(declare-fun lt!808380 () Unit!38217)

(declare-fun lt!808371 () Unit!38217)

(assert (=> b!2170450 (= lt!808380 lt!808371)))

(declare-fun lt!808362 () C!12162)

(declare-fun lt!808381 () List!25237)

(assert (=> b!2170450 (= (++!6367 (++!6367 Nil!25153 (Cons!25153 lt!808362 Nil!25153)) lt!808381) lt!808073)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!504 (List!25237 C!12162 List!25237 List!25237) Unit!38217)

(assert (=> b!2170450 (= lt!808371 (lemmaMoveElementToOtherListKeepsConcatEq!504 Nil!25153 lt!808362 lt!808381 lt!808073))))

(assert (=> b!2170450 (= lt!808381 (tail!3117 lt!808073))))

(assert (=> b!2170450 (= lt!808362 (head!4645 lt!808073))))

(declare-fun lt!808368 () Unit!38217)

(declare-fun lt!808358 () Unit!38217)

(assert (=> b!2170450 (= lt!808368 lt!808358)))

(assert (=> b!2170450 (isPrefix!2124 (++!6367 Nil!25153 (Cons!25153 (head!4645 (getSuffix!1031 lt!808073 Nil!25153)) Nil!25153)) lt!808073)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!376 (List!25237 List!25237) Unit!38217)

(assert (=> b!2170450 (= lt!808358 (lemmaAddHeadSuffixToPrefixStillPrefix!376 Nil!25153 lt!808073))))

(declare-fun lt!808360 () Unit!38217)

(declare-fun lt!808359 () Unit!38217)

(assert (=> b!2170450 (= lt!808360 lt!808359)))

(assert (=> b!2170450 (= lt!808359 (lemmaAddHeadSuffixToPrefixStillPrefix!376 Nil!25153 lt!808073))))

(assert (=> b!2170450 (= lt!808376 (++!6367 Nil!25153 (Cons!25153 (head!4645 lt!808073) Nil!25153)))))

(declare-fun lt!808370 () Unit!38217)

(assert (=> b!2170450 (= lt!808370 e!1388087)))

(declare-fun c!343974 () Bool)

(assert (=> b!2170450 (= c!343974 (= (size!19656 Nil!25153) (size!19656 lt!808073)))))

(declare-fun lt!808366 () Unit!38217)

(declare-fun lt!808361 () Unit!38217)

(assert (=> b!2170450 (= lt!808366 lt!808361)))

(assert (=> b!2170450 (<= (size!19656 Nil!25153) (size!19656 lt!808073))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!179 (List!25237 List!25237) Unit!38217)

(assert (=> b!2170450 (= lt!808361 (lemmaIsPrefixThenSmallerEqSize!179 Nil!25153 lt!808073))))

(assert (=> b!2170450 (= e!1388085 e!1388088)))

(declare-fun bm!130204 () Bool)

(assert (=> bm!130204 (= call!130203 (isPrefix!2124 lt!808073 lt!808073))))

(declare-fun b!2170451 () Bool)

(assert (=> b!2170451 (= e!1388083 (tuple2!24905 Nil!25153 lt!808073))))

(assert (= (and d!649994 c!343972) b!2170438))

(assert (= (and d!649994 (not c!343972)) b!2170440))

(assert (= (and b!2170440 c!343973) b!2170447))

(assert (= (and b!2170440 (not c!343973)) b!2170450))

(assert (= (and b!2170447 c!343970) b!2170446))

(assert (= (and b!2170447 (not c!343970)) b!2170451))

(assert (= (and b!2170450 c!343974) b!2170439))

(assert (= (and b!2170450 (not c!343974)) b!2170441))

(assert (= (and b!2170450 c!343975) b!2170449))

(assert (= (and b!2170450 (not c!343975)) b!2170448))

(assert (= (and b!2170449 c!343971) b!2170445))

(assert (= (and b!2170449 (not c!343971)) b!2170444))

(assert (= (or b!2170449 b!2170448) bm!130198))

(assert (= (or b!2170449 b!2170448) bm!130197))

(assert (= (or b!2170449 b!2170448) bm!130203))

(assert (= (or b!2170449 b!2170448) bm!130199))

(assert (= (or b!2170447 b!2170439) bm!130204))

(assert (= (or b!2170447 b!2170439) bm!130200))

(assert (= (or b!2170447 b!2170439) bm!130202))

(assert (= (or b!2170447 b!2170450) bm!130201))

(assert (= (and d!649994 res!934136) b!2170442))

(assert (= (and b!2170442 (not res!934137)) b!2170443))

(declare-fun m!2611581 () Bool)

(assert (=> bm!130202 m!2611581))

(declare-fun m!2611583 () Bool)

(assert (=> b!2170449 m!2611583))

(declare-fun m!2611585 () Bool)

(assert (=> bm!130197 m!2611585))

(declare-fun m!2611587 () Bool)

(assert (=> bm!130203 m!2611587))

(declare-fun m!2611589 () Bool)

(assert (=> b!2170443 m!2611589))

(declare-fun m!2611591 () Bool)

(assert (=> b!2170443 m!2611591))

(assert (=> bm!130199 m!2611049))

(declare-fun m!2611593 () Bool)

(assert (=> bm!130199 m!2611593))

(declare-fun m!2611595 () Bool)

(assert (=> bm!130198 m!2611595))

(declare-fun m!2611597 () Bool)

(assert (=> b!2170442 m!2611597))

(declare-fun m!2611599 () Bool)

(assert (=> d!649994 m!2611599))

(declare-fun m!2611601 () Bool)

(assert (=> d!649994 m!2611601))

(declare-fun m!2611603 () Bool)

(assert (=> d!649994 m!2611603))

(declare-fun m!2611605 () Bool)

(assert (=> d!649994 m!2611605))

(assert (=> d!649994 m!2611605))

(declare-fun m!2611607 () Bool)

(assert (=> d!649994 m!2611607))

(assert (=> d!649994 m!2610837))

(declare-fun m!2611609 () Bool)

(assert (=> d!649994 m!2611609))

(declare-fun m!2611611 () Bool)

(assert (=> d!649994 m!2611611))

(declare-fun m!2611613 () Bool)

(assert (=> bm!130200 m!2611613))

(declare-fun m!2611615 () Bool)

(assert (=> b!2170450 m!2611615))

(assert (=> b!2170450 m!2611585))

(declare-fun m!2611617 () Bool)

(assert (=> b!2170450 m!2611617))

(assert (=> b!2170450 m!2611617))

(declare-fun m!2611619 () Bool)

(assert (=> b!2170450 m!2611619))

(declare-fun m!2611621 () Bool)

(assert (=> b!2170450 m!2611621))

(assert (=> b!2170450 m!2611603))

(declare-fun m!2611623 () Bool)

(assert (=> b!2170450 m!2611623))

(assert (=> b!2170450 m!2611603))

(assert (=> b!2170450 m!2611615))

(declare-fun m!2611625 () Bool)

(assert (=> b!2170450 m!2611625))

(assert (=> b!2170450 m!2611595))

(assert (=> b!2170450 m!2611591))

(declare-fun m!2611627 () Bool)

(assert (=> b!2170450 m!2611627))

(assert (=> b!2170450 m!2610917))

(declare-fun m!2611629 () Bool)

(assert (=> b!2170450 m!2611629))

(declare-fun m!2611631 () Bool)

(assert (=> b!2170450 m!2611631))

(declare-fun m!2611633 () Bool)

(assert (=> bm!130204 m!2611633))

(declare-fun m!2611635 () Bool)

(assert (=> bm!130201 m!2611635))

(assert (=> d!649788 d!649994))

(assert (=> d!649788 d!649886))

(declare-fun d!649996 () Bool)

(assert (=> d!649996 (= (sizeTr!111 lt!808184 lt!808179) (+ (size!19656 lt!808184) lt!808179))))

(declare-fun lt!808385 () Unit!38217)

(declare-fun choose!12787 (List!25237 Int) Unit!38217)

(assert (=> d!649996 (= lt!808385 (choose!12787 lt!808184 lt!808179))))

(assert (=> d!649996 (= (lemmaSizeTrEqualsSize!110 lt!808184 lt!808179) lt!808385)))

(declare-fun bs!446904 () Bool)

(assert (= bs!446904 d!649996))

(assert (=> bs!446904 m!2611061))

(assert (=> bs!446904 m!2611053))

(declare-fun m!2611637 () Bool)

(assert (=> bs!446904 m!2611637))

(assert (=> d!649788 d!649996))

(declare-fun b!2170452 () Bool)

(declare-fun e!1388089 () List!25237)

(assert (=> b!2170452 (= e!1388089 (_2!14822 lt!808183))))

(declare-fun b!2170455 () Bool)

(declare-fun e!1388090 () Bool)

(declare-fun lt!808386 () List!25237)

(assert (=> b!2170455 (= e!1388090 (or (not (= (_2!14822 lt!808183) Nil!25153)) (= lt!808386 (_1!14822 lt!808183))))))

(declare-fun d!649998 () Bool)

(assert (=> d!649998 e!1388090))

(declare-fun res!934138 () Bool)

(assert (=> d!649998 (=> (not res!934138) (not e!1388090))))

(assert (=> d!649998 (= res!934138 (= (content!3415 lt!808386) (set.union (content!3415 (_1!14822 lt!808183)) (content!3415 (_2!14822 lt!808183)))))))

(assert (=> d!649998 (= lt!808386 e!1388089)))

(declare-fun c!343976 () Bool)

(assert (=> d!649998 (= c!343976 (is-Nil!25153 (_1!14822 lt!808183)))))

(assert (=> d!649998 (= (++!6367 (_1!14822 lt!808183) (_2!14822 lt!808183)) lt!808386)))

(declare-fun b!2170453 () Bool)

(assert (=> b!2170453 (= e!1388089 (Cons!25153 (h!30554 (_1!14822 lt!808183)) (++!6367 (t!197799 (_1!14822 lt!808183)) (_2!14822 lt!808183))))))

(declare-fun b!2170454 () Bool)

(declare-fun res!934139 () Bool)

(assert (=> b!2170454 (=> (not res!934139) (not e!1388090))))

(assert (=> b!2170454 (= res!934139 (= (size!19656 lt!808386) (+ (size!19656 (_1!14822 lt!808183)) (size!19656 (_2!14822 lt!808183)))))))

(assert (= (and d!649998 c!343976) b!2170452))

(assert (= (and d!649998 (not c!343976)) b!2170453))

(assert (= (and d!649998 res!934138) b!2170454))

(assert (= (and b!2170454 res!934139) b!2170455))

(declare-fun m!2611639 () Bool)

(assert (=> d!649998 m!2611639))

(declare-fun m!2611641 () Bool)

(assert (=> d!649998 m!2611641))

(declare-fun m!2611643 () Bool)

(assert (=> d!649998 m!2611643))

(declare-fun m!2611645 () Bool)

(assert (=> b!2170453 m!2611645))

(declare-fun m!2611647 () Bool)

(assert (=> b!2170454 m!2611647))

(declare-fun m!2611649 () Bool)

(assert (=> b!2170454 m!2611649))

(declare-fun m!2611651 () Bool)

(assert (=> b!2170454 m!2611651))

(assert (=> d!649788 d!649998))

(declare-fun d!650000 () Bool)

(declare-fun lt!808387 () Int)

(assert (=> d!650000 (>= lt!808387 0)))

(declare-fun e!1388091 () Int)

(assert (=> d!650000 (= lt!808387 e!1388091)))

(declare-fun c!343977 () Bool)

(assert (=> d!650000 (= c!343977 (is-Nil!25153 lt!808184))))

(assert (=> d!650000 (= (size!19656 lt!808184) lt!808387)))

(declare-fun b!2170456 () Bool)

(assert (=> b!2170456 (= e!1388091 0)))

(declare-fun b!2170457 () Bool)

(assert (=> b!2170457 (= e!1388091 (+ 1 (size!19656 (t!197799 lt!808184))))))

(assert (= (and d!650000 c!343977) b!2170456))

(assert (= (and d!650000 (not c!343977)) b!2170457))

(declare-fun m!2611653 () Bool)

(assert (=> b!2170457 m!2611653))

(assert (=> d!649788 d!650000))

(assert (=> d!649788 d!649748))

(declare-fun d!650002 () Bool)

(declare-fun c!343978 () Bool)

(assert (=> d!650002 (= c!343978 (is-Nil!25153 lt!808073))))

(declare-fun e!1388092 () Int)

(assert (=> d!650002 (= (sizeTr!111 lt!808073 0) e!1388092)))

(declare-fun b!2170458 () Bool)

(assert (=> b!2170458 (= e!1388092 0)))

(declare-fun b!2170459 () Bool)

(assert (=> b!2170459 (= e!1388092 (sizeTr!111 (t!197799 lt!808073) (+ 0 1)))))

(assert (= (and d!650002 c!343978) b!2170458))

(assert (= (and d!650002 (not c!343978)) b!2170459))

(declare-fun m!2611655 () Bool)

(assert (=> b!2170459 m!2611655))

(assert (=> d!649788 d!650002))

(declare-fun d!650004 () Bool)

(assert (=> d!650004 (= (sizeTr!111 lt!808073 lt!808181) (+ (size!19656 lt!808073) lt!808181))))

(declare-fun lt!808388 () Unit!38217)

(assert (=> d!650004 (= lt!808388 (choose!12787 lt!808073 lt!808181))))

(assert (=> d!650004 (= (lemmaSizeTrEqualsSize!110 lt!808073 lt!808181) lt!808388)))

(declare-fun bs!446905 () Bool)

(assert (= bs!446905 d!650004))

(assert (=> bs!446905 m!2611055))

(assert (=> bs!446905 m!2610917))

(declare-fun m!2611657 () Bool)

(assert (=> bs!446905 m!2611657))

(assert (=> d!649788 d!650004))

(declare-fun d!650006 () Bool)

(declare-fun e!1388095 () Bool)

(assert (=> d!650006 e!1388095))

(declare-fun res!934144 () Bool)

(assert (=> d!650006 (=> (not res!934144) (not e!1388095))))

(declare-fun lt!808394 () tuple2!24902)

(assert (=> d!650006 (= res!934144 (isBalanced!2527 (c!343802 (_1!14821 lt!808394))))))

(declare-datatypes ((tuple2!24910 0))(
  ( (tuple2!24911 (_1!14825 Conc!8144) (_2!14825 Conc!8144)) )
))
(declare-fun lt!808393 () tuple2!24910)

(assert (=> d!650006 (= lt!808394 (tuple2!24903 (BalanceConc!16051 (_1!14825 lt!808393)) (BalanceConc!16051 (_2!14825 lt!808393))))))

(declare-fun splitAt!34 (Conc!8144 Int) tuple2!24910)

(assert (=> d!650006 (= lt!808393 (splitAt!34 (c!343802 input!5540) (ite c!343840 0 lt!808160)))))

(assert (=> d!650006 (isBalanced!2527 (c!343802 input!5540))))

(assert (=> d!650006 (= (splitAt!32 input!5540 (ite c!343840 0 lt!808160)) lt!808394)))

(declare-fun b!2170464 () Bool)

(declare-fun res!934145 () Bool)

(assert (=> b!2170464 (=> (not res!934145) (not e!1388095))))

(assert (=> b!2170464 (= res!934145 (isBalanced!2527 (c!343802 (_2!14821 lt!808394))))))

(declare-fun b!2170465 () Bool)

(declare-fun splitAtIndex!25 (List!25237 Int) tuple2!24904)

(assert (=> b!2170465 (= e!1388095 (= (tuple2!24905 (list!9641 (_1!14821 lt!808394)) (list!9641 (_2!14821 lt!808394))) (splitAtIndex!25 (list!9641 input!5540) (ite c!343840 0 lt!808160))))))

(assert (= (and d!650006 res!934144) b!2170464))

(assert (= (and b!2170464 res!934145) b!2170465))

(declare-fun m!2611659 () Bool)

(assert (=> d!650006 m!2611659))

(declare-fun m!2611661 () Bool)

(assert (=> d!650006 m!2611661))

(assert (=> d!650006 m!2610945))

(declare-fun m!2611663 () Bool)

(assert (=> b!2170464 m!2611663))

(declare-fun m!2611665 () Bool)

(assert (=> b!2170465 m!2611665))

(declare-fun m!2611667 () Bool)

(assert (=> b!2170465 m!2611667))

(assert (=> b!2170465 m!2610859))

(assert (=> b!2170465 m!2610859))

(declare-fun m!2611669 () Bool)

(assert (=> b!2170465 m!2611669))

(assert (=> bm!130159 d!650006))

(declare-fun b!2170468 () Bool)

(declare-fun e!1388096 () Bool)

(assert (=> b!2170468 (= e!1388096 (isPrefix!2124 (tail!3117 (_1!14822 lt!808066)) (tail!3117 (++!6367 (_1!14822 lt!808066) (_2!14822 lt!808066)))))))

(declare-fun b!2170467 () Bool)

(declare-fun res!934148 () Bool)

(assert (=> b!2170467 (=> (not res!934148) (not e!1388096))))

(assert (=> b!2170467 (= res!934148 (= (head!4645 (_1!14822 lt!808066)) (head!4645 (++!6367 (_1!14822 lt!808066) (_2!14822 lt!808066)))))))

(declare-fun d!650008 () Bool)

(declare-fun e!1388097 () Bool)

(assert (=> d!650008 e!1388097))

(declare-fun res!934146 () Bool)

(assert (=> d!650008 (=> res!934146 e!1388097)))

(declare-fun lt!808395 () Bool)

(assert (=> d!650008 (= res!934146 (not lt!808395))))

(declare-fun e!1388098 () Bool)

(assert (=> d!650008 (= lt!808395 e!1388098)))

(declare-fun res!934147 () Bool)

(assert (=> d!650008 (=> res!934147 e!1388098)))

(assert (=> d!650008 (= res!934147 (is-Nil!25153 (_1!14822 lt!808066)))))

(assert (=> d!650008 (= (isPrefix!2124 (_1!14822 lt!808066) (++!6367 (_1!14822 lt!808066) (_2!14822 lt!808066))) lt!808395)))

(declare-fun b!2170466 () Bool)

(assert (=> b!2170466 (= e!1388098 e!1388096)))

(declare-fun res!934149 () Bool)

(assert (=> b!2170466 (=> (not res!934149) (not e!1388096))))

(assert (=> b!2170466 (= res!934149 (not (is-Nil!25153 (++!6367 (_1!14822 lt!808066) (_2!14822 lt!808066)))))))

(declare-fun b!2170469 () Bool)

(assert (=> b!2170469 (= e!1388097 (>= (size!19656 (++!6367 (_1!14822 lt!808066) (_2!14822 lt!808066))) (size!19656 (_1!14822 lt!808066))))))

(assert (= (and d!650008 (not res!934147)) b!2170466))

(assert (= (and b!2170466 res!934149) b!2170467))

(assert (= (and b!2170467 res!934148) b!2170468))

(assert (= (and d!650008 (not res!934146)) b!2170469))

(assert (=> b!2170468 m!2611099))

(assert (=> b!2170468 m!2610843))

(declare-fun m!2611671 () Bool)

(assert (=> b!2170468 m!2611671))

(assert (=> b!2170468 m!2611099))

(assert (=> b!2170468 m!2611671))

(declare-fun m!2611673 () Bool)

(assert (=> b!2170468 m!2611673))

(assert (=> b!2170467 m!2611105))

(assert (=> b!2170467 m!2610843))

(declare-fun m!2611675 () Bool)

(assert (=> b!2170467 m!2611675))

(assert (=> b!2170469 m!2610843))

(declare-fun m!2611677 () Bool)

(assert (=> b!2170469 m!2611677))

(assert (=> b!2170469 m!2611003))

(assert (=> d!649806 d!650008))

(assert (=> d!649806 d!649774))

(declare-fun d!650010 () Bool)

(assert (=> d!650010 (isPrefix!2124 (_1!14822 lt!808066) (++!6367 (_1!14822 lt!808066) (_2!14822 lt!808066)))))

(assert (=> d!650010 true))

(declare-fun _$46!1257 () Unit!38217)

(assert (=> d!650010 (= (choose!12783 (_1!14822 lt!808066) (_2!14822 lt!808066)) _$46!1257)))

(declare-fun bs!446906 () Bool)

(assert (= bs!446906 d!650010))

(assert (=> bs!446906 m!2610843))

(assert (=> bs!446906 m!2610843))

(assert (=> bs!446906 m!2611113))

(assert (=> d!649806 d!650010))

(declare-fun b!2170470 () Bool)

(declare-fun e!1388099 () Bool)

(declare-fun call!130212 () Bool)

(assert (=> b!2170470 (= e!1388099 call!130212)))

(declare-fun bm!130205 () Bool)

(declare-fun c!343979 () Bool)

(declare-fun call!130210 () Bool)

(assert (=> bm!130205 (= call!130210 (validRegex!2284 (ite c!343979 (regOne!12529 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534))) (regTwo!12528 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534))))))))

(declare-fun b!2170471 () Bool)

(declare-fun e!1388104 () Bool)

(declare-fun e!1388103 () Bool)

(assert (=> b!2170471 (= e!1388104 e!1388103)))

(declare-fun c!343980 () Bool)

(assert (=> b!2170471 (= c!343980 (is-Star!6008 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534))))))

(declare-fun b!2170472 () Bool)

(declare-fun res!934153 () Bool)

(declare-fun e!1388105 () Bool)

(assert (=> b!2170472 (=> (not res!934153) (not e!1388105))))

(assert (=> b!2170472 (= res!934153 call!130210)))

(declare-fun e!1388102 () Bool)

(assert (=> b!2170472 (= e!1388102 e!1388105)))

(declare-fun b!2170473 () Bool)

(declare-fun e!1388101 () Bool)

(assert (=> b!2170473 (= e!1388101 call!130210)))

(declare-fun b!2170474 () Bool)

(declare-fun e!1388100 () Bool)

(assert (=> b!2170474 (= e!1388100 e!1388101)))

(declare-fun res!934154 () Bool)

(assert (=> b!2170474 (=> (not res!934154) (not e!1388101))))

(declare-fun call!130211 () Bool)

(assert (=> b!2170474 (= res!934154 call!130211)))

(declare-fun b!2170475 () Bool)

(declare-fun res!934150 () Bool)

(assert (=> b!2170475 (=> res!934150 e!1388100)))

(assert (=> b!2170475 (= res!934150 (not (is-Concat!10310 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534)))))))

(assert (=> b!2170475 (= e!1388102 e!1388100)))

(declare-fun bm!130206 () Bool)

(assert (=> bm!130206 (= call!130211 call!130212)))

(declare-fun d!650012 () Bool)

(declare-fun res!934152 () Bool)

(assert (=> d!650012 (=> res!934152 e!1388104)))

(assert (=> d!650012 (= res!934152 (is-ElementMatch!6008 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534))))))

(assert (=> d!650012 (= (validRegex!2284 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534))) e!1388104)))

(declare-fun b!2170476 () Bool)

(assert (=> b!2170476 (= e!1388103 e!1388099)))

(declare-fun res!934151 () Bool)

(assert (=> b!2170476 (= res!934151 (not (nullable!1694 (reg!6337 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534))))))))

(assert (=> b!2170476 (=> (not res!934151) (not e!1388099))))

(declare-fun b!2170477 () Bool)

(assert (=> b!2170477 (= e!1388103 e!1388102)))

(assert (=> b!2170477 (= c!343979 (is-Union!6008 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534))))))

(declare-fun b!2170478 () Bool)

(assert (=> b!2170478 (= e!1388105 call!130211)))

(declare-fun bm!130207 () Bool)

(assert (=> bm!130207 (= call!130212 (validRegex!2284 (ite c!343980 (reg!6337 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534))) (ite c!343979 (regTwo!12529 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534))) (regOne!12528 (ite c!343810 (regOne!12529 r!12534) (regTwo!12528 r!12534)))))))))

(assert (= (and d!650012 (not res!934152)) b!2170471))

(assert (= (and b!2170471 c!343980) b!2170476))

(assert (= (and b!2170471 (not c!343980)) b!2170477))

(assert (= (and b!2170476 res!934151) b!2170470))

(assert (= (and b!2170477 c!343979) b!2170472))

(assert (= (and b!2170477 (not c!343979)) b!2170475))

(assert (= (and b!2170472 res!934153) b!2170478))

(assert (= (and b!2170475 (not res!934150)) b!2170474))

(assert (= (and b!2170474 res!934154) b!2170473))

(assert (= (or b!2170478 b!2170474) bm!130206))

(assert (= (or b!2170472 b!2170473) bm!130205))

(assert (= (or b!2170470 bm!130206) bm!130207))

(declare-fun m!2611679 () Bool)

(assert (=> bm!130205 m!2611679))

(declare-fun m!2611681 () Bool)

(assert (=> b!2170476 m!2611681))

(declare-fun m!2611683 () Bool)

(assert (=> bm!130207 m!2611683))

(assert (=> bm!130154 d!650012))

(assert (=> d!649794 d!649798))

(assert (=> d!649794 d!649808))

(declare-fun d!650014 () Bool)

(assert (=> d!650014 (isPrefix!2124 (take!216 lt!808068 lt!808071) lt!808068)))

(assert (=> d!650014 true))

(declare-fun _$48!701 () Unit!38217)

(assert (=> d!650014 (= (choose!12782 lt!808068 lt!808071) _$48!701)))

(declare-fun bs!446907 () Bool)

(assert (= bs!446907 d!650014))

(assert (=> bs!446907 m!2610815))

(assert (=> bs!446907 m!2610815))

(assert (=> bs!446907 m!2610821))

(assert (=> d!649794 d!650014))

(declare-fun d!650016 () Bool)

(declare-fun c!343981 () Bool)

(assert (=> d!650016 (= c!343981 (is-Node!8144 (left!19331 (c!343802 input!5540))))))

(declare-fun e!1388106 () Bool)

(assert (=> d!650016 (= (inv!33372 (left!19331 (c!343802 input!5540))) e!1388106)))

(declare-fun b!2170479 () Bool)

(assert (=> b!2170479 (= e!1388106 (inv!33378 (left!19331 (c!343802 input!5540))))))

(declare-fun b!2170480 () Bool)

(declare-fun e!1388107 () Bool)

(assert (=> b!2170480 (= e!1388106 e!1388107)))

(declare-fun res!934155 () Bool)

(assert (=> b!2170480 (= res!934155 (not (is-Leaf!11916 (left!19331 (c!343802 input!5540)))))))

(assert (=> b!2170480 (=> res!934155 e!1388107)))

(declare-fun b!2170481 () Bool)

(assert (=> b!2170481 (= e!1388107 (inv!33379 (left!19331 (c!343802 input!5540))))))

(assert (= (and d!650016 c!343981) b!2170479))

(assert (= (and d!650016 (not c!343981)) b!2170480))

(assert (= (and b!2170480 (not res!934155)) b!2170481))

(declare-fun m!2611685 () Bool)

(assert (=> b!2170479 m!2611685))

(declare-fun m!2611687 () Bool)

(assert (=> b!2170481 m!2611687))

(assert (=> b!2169986 d!650016))

(declare-fun d!650018 () Bool)

(declare-fun c!343982 () Bool)

(assert (=> d!650018 (= c!343982 (is-Node!8144 (right!19661 (c!343802 input!5540))))))

(declare-fun e!1388108 () Bool)

(assert (=> d!650018 (= (inv!33372 (right!19661 (c!343802 input!5540))) e!1388108)))

(declare-fun b!2170482 () Bool)

(assert (=> b!2170482 (= e!1388108 (inv!33378 (right!19661 (c!343802 input!5540))))))

(declare-fun b!2170483 () Bool)

(declare-fun e!1388109 () Bool)

(assert (=> b!2170483 (= e!1388108 e!1388109)))

(declare-fun res!934156 () Bool)

(assert (=> b!2170483 (= res!934156 (not (is-Leaf!11916 (right!19661 (c!343802 input!5540)))))))

(assert (=> b!2170483 (=> res!934156 e!1388109)))

(declare-fun b!2170484 () Bool)

(assert (=> b!2170484 (= e!1388109 (inv!33379 (right!19661 (c!343802 input!5540))))))

(assert (= (and d!650018 c!343982) b!2170482))

(assert (= (and d!650018 (not c!343982)) b!2170483))

(assert (= (and b!2170483 (not res!934156)) b!2170484))

(declare-fun m!2611689 () Bool)

(assert (=> b!2170482 m!2611689))

(declare-fun m!2611691 () Bool)

(assert (=> b!2170484 m!2611691))

(assert (=> b!2169986 d!650018))

(declare-fun d!650020 () Bool)

(declare-fun res!934161 () Bool)

(declare-fun e!1388114 () Bool)

(assert (=> d!650020 (=> res!934161 e!1388114)))

(assert (=> d!650020 (= res!934161 (is-Nil!25155 lt!808127))))

(assert (=> d!650020 (= (noDuplicate!287 lt!808127) e!1388114)))

(declare-fun b!2170489 () Bool)

(declare-fun e!1388115 () Bool)

(assert (=> b!2170489 (= e!1388114 e!1388115)))

(declare-fun res!934162 () Bool)

(assert (=> b!2170489 (=> (not res!934162) (not e!1388115))))

(declare-fun contains!4266 (List!25239 Context!3156) Bool)

(assert (=> b!2170489 (= res!934162 (not (contains!4266 (t!197801 lt!808127) (h!30556 lt!808127))))))

(declare-fun b!2170490 () Bool)

(assert (=> b!2170490 (= e!1388115 (noDuplicate!287 (t!197801 lt!808127)))))

(assert (= (and d!650020 (not res!934161)) b!2170489))

(assert (= (and b!2170489 res!934162) b!2170490))

(declare-fun m!2611693 () Bool)

(assert (=> b!2170489 m!2611693))

(declare-fun m!2611695 () Bool)

(assert (=> b!2170490 m!2611695))

(assert (=> d!649746 d!650020))

(declare-fun d!650022 () Bool)

(declare-fun e!1388123 () Bool)

(assert (=> d!650022 e!1388123))

(declare-fun res!934168 () Bool)

(assert (=> d!650022 (=> (not res!934168) (not e!1388123))))

(declare-fun res!934167 () List!25239)

(assert (=> d!650022 (= res!934168 (noDuplicate!287 res!934167))))

(declare-fun e!1388124 () Bool)

(assert (=> d!650022 e!1388124))

(assert (=> d!650022 (= (choose!12781 z!4055) res!934167)))

(declare-fun b!2170498 () Bool)

(declare-fun e!1388122 () Bool)

(declare-fun tp!677424 () Bool)

(assert (=> b!2170498 (= e!1388122 tp!677424)))

(declare-fun tp!677423 () Bool)

(declare-fun b!2170497 () Bool)

(assert (=> b!2170497 (= e!1388124 (and (inv!33373 (h!30556 res!934167)) e!1388122 tp!677423))))

(declare-fun b!2170499 () Bool)

(assert (=> b!2170499 (= e!1388123 (= (content!3414 res!934167) z!4055))))

(assert (= b!2170497 b!2170498))

(assert (= (and d!650022 (is-Cons!25155 res!934167)) b!2170497))

(assert (= (and d!650022 res!934168) b!2170499))

(declare-fun m!2611697 () Bool)

(assert (=> d!650022 m!2611697))

(declare-fun m!2611699 () Bool)

(assert (=> b!2170497 m!2611699))

(declare-fun m!2611701 () Bool)

(assert (=> b!2170499 m!2611701))

(assert (=> d!649746 d!650022))

(declare-fun d!650024 () Bool)

(declare-fun lt!808398 () Bool)

(declare-fun exists!757 (List!25239 Int) Bool)

(assert (=> d!650024 (= lt!808398 (exists!757 (toList!1191 z!4055) lambda!81779))))

(declare-fun choose!12788 ((Set Context!3156) Int) Bool)

(assert (=> d!650024 (= lt!808398 (choose!12788 z!4055 lambda!81779))))

(assert (=> d!650024 (= (exists!755 z!4055 lambda!81779) lt!808398)))

(declare-fun bs!446908 () Bool)

(assert (= bs!446908 d!650024))

(assert (=> bs!446908 m!2610845))

(assert (=> bs!446908 m!2610845))

(declare-fun m!2611703 () Bool)

(assert (=> bs!446908 m!2611703))

(declare-fun m!2611705 () Bool)

(assert (=> bs!446908 m!2611705))

(assert (=> d!649804 d!650024))

(declare-fun b!2170501 () Bool)

(declare-fun e!1388125 () Bool)

(declare-fun tp!677425 () Bool)

(declare-fun tp!677426 () Bool)

(assert (=> b!2170501 (= e!1388125 (and tp!677425 tp!677426))))

(assert (=> b!2170004 (= tp!677353 e!1388125)))

(declare-fun b!2170500 () Bool)

(assert (=> b!2170500 (= e!1388125 tp_is_empty!9623)))

(declare-fun b!2170503 () Bool)

(declare-fun tp!677428 () Bool)

(declare-fun tp!677427 () Bool)

(assert (=> b!2170503 (= e!1388125 (and tp!677428 tp!677427))))

(declare-fun b!2170502 () Bool)

(declare-fun tp!677429 () Bool)

(assert (=> b!2170502 (= e!1388125 tp!677429)))

(assert (= (and b!2170004 (is-ElementMatch!6008 (regOne!12529 (regTwo!12528 r!12534)))) b!2170500))

(assert (= (and b!2170004 (is-Concat!10310 (regOne!12529 (regTwo!12528 r!12534)))) b!2170501))

(assert (= (and b!2170004 (is-Star!6008 (regOne!12529 (regTwo!12528 r!12534)))) b!2170502))

(assert (= (and b!2170004 (is-Union!6008 (regOne!12529 (regTwo!12528 r!12534)))) b!2170503))

(declare-fun b!2170505 () Bool)

(declare-fun e!1388126 () Bool)

(declare-fun tp!677430 () Bool)

(declare-fun tp!677431 () Bool)

(assert (=> b!2170505 (= e!1388126 (and tp!677430 tp!677431))))

(assert (=> b!2170004 (= tp!677352 e!1388126)))

(declare-fun b!2170504 () Bool)

(assert (=> b!2170504 (= e!1388126 tp_is_empty!9623)))

(declare-fun b!2170507 () Bool)

(declare-fun tp!677433 () Bool)

(declare-fun tp!677432 () Bool)

(assert (=> b!2170507 (= e!1388126 (and tp!677433 tp!677432))))

(declare-fun b!2170506 () Bool)

(declare-fun tp!677434 () Bool)

(assert (=> b!2170506 (= e!1388126 tp!677434)))

(assert (= (and b!2170004 (is-ElementMatch!6008 (regTwo!12529 (regTwo!12528 r!12534)))) b!2170504))

(assert (= (and b!2170004 (is-Concat!10310 (regTwo!12529 (regTwo!12528 r!12534)))) b!2170505))

(assert (= (and b!2170004 (is-Star!6008 (regTwo!12529 (regTwo!12528 r!12534)))) b!2170506))

(assert (= (and b!2170004 (is-Union!6008 (regTwo!12529 (regTwo!12528 r!12534)))) b!2170507))

(declare-fun b!2170509 () Bool)

(declare-fun e!1388127 () Bool)

(declare-fun tp!677435 () Bool)

(declare-fun tp!677436 () Bool)

(assert (=> b!2170509 (= e!1388127 (and tp!677435 tp!677436))))

(assert (=> b!2170003 (= tp!677354 e!1388127)))

(declare-fun b!2170508 () Bool)

(assert (=> b!2170508 (= e!1388127 tp_is_empty!9623)))

(declare-fun b!2170511 () Bool)

(declare-fun tp!677438 () Bool)

(declare-fun tp!677437 () Bool)

(assert (=> b!2170511 (= e!1388127 (and tp!677438 tp!677437))))

(declare-fun b!2170510 () Bool)

(declare-fun tp!677439 () Bool)

(assert (=> b!2170510 (= e!1388127 tp!677439)))

(assert (= (and b!2170003 (is-ElementMatch!6008 (reg!6337 (regTwo!12528 r!12534)))) b!2170508))

(assert (= (and b!2170003 (is-Concat!10310 (reg!6337 (regTwo!12528 r!12534)))) b!2170509))

(assert (= (and b!2170003 (is-Star!6008 (reg!6337 (regTwo!12528 r!12534)))) b!2170510))

(assert (= (and b!2170003 (is-Union!6008 (reg!6337 (regTwo!12528 r!12534)))) b!2170511))

(declare-fun b!2170513 () Bool)

(declare-fun e!1388128 () Bool)

(declare-fun tp!677440 () Bool)

(declare-fun tp!677441 () Bool)

(assert (=> b!2170513 (= e!1388128 (and tp!677440 tp!677441))))

(assert (=> b!2170002 (= tp!677350 e!1388128)))

(declare-fun b!2170512 () Bool)

(assert (=> b!2170512 (= e!1388128 tp_is_empty!9623)))

(declare-fun b!2170515 () Bool)

(declare-fun tp!677443 () Bool)

(declare-fun tp!677442 () Bool)

(assert (=> b!2170515 (= e!1388128 (and tp!677443 tp!677442))))

(declare-fun b!2170514 () Bool)

(declare-fun tp!677444 () Bool)

(assert (=> b!2170514 (= e!1388128 tp!677444)))

(assert (= (and b!2170002 (is-ElementMatch!6008 (regOne!12528 (regTwo!12528 r!12534)))) b!2170512))

(assert (= (and b!2170002 (is-Concat!10310 (regOne!12528 (regTwo!12528 r!12534)))) b!2170513))

(assert (= (and b!2170002 (is-Star!6008 (regOne!12528 (regTwo!12528 r!12534)))) b!2170514))

(assert (= (and b!2170002 (is-Union!6008 (regOne!12528 (regTwo!12528 r!12534)))) b!2170515))

(declare-fun b!2170517 () Bool)

(declare-fun e!1388129 () Bool)

(declare-fun tp!677445 () Bool)

(declare-fun tp!677446 () Bool)

(assert (=> b!2170517 (= e!1388129 (and tp!677445 tp!677446))))

(assert (=> b!2170002 (= tp!677351 e!1388129)))

(declare-fun b!2170516 () Bool)

(assert (=> b!2170516 (= e!1388129 tp_is_empty!9623)))

(declare-fun b!2170519 () Bool)

(declare-fun tp!677448 () Bool)

(declare-fun tp!677447 () Bool)

(assert (=> b!2170519 (= e!1388129 (and tp!677448 tp!677447))))

(declare-fun b!2170518 () Bool)

(declare-fun tp!677449 () Bool)

(assert (=> b!2170518 (= e!1388129 tp!677449)))

(assert (= (and b!2170002 (is-ElementMatch!6008 (regTwo!12528 (regTwo!12528 r!12534)))) b!2170516))

(assert (= (and b!2170002 (is-Concat!10310 (regTwo!12528 (regTwo!12528 r!12534)))) b!2170517))

(assert (= (and b!2170002 (is-Star!6008 (regTwo!12528 (regTwo!12528 r!12534)))) b!2170518))

(assert (= (and b!2170002 (is-Union!6008 (regTwo!12528 (regTwo!12528 r!12534)))) b!2170519))

(declare-fun b!2170521 () Bool)

(declare-fun e!1388130 () Bool)

(declare-fun tp!677450 () Bool)

(declare-fun tp!677451 () Bool)

(assert (=> b!2170521 (= e!1388130 (and tp!677450 tp!677451))))

(assert (=> b!2169977 (= tp!677325 e!1388130)))

(declare-fun b!2170520 () Bool)

(assert (=> b!2170520 (= e!1388130 tp_is_empty!9623)))

(declare-fun b!2170523 () Bool)

(declare-fun tp!677453 () Bool)

(declare-fun tp!677452 () Bool)

(assert (=> b!2170523 (= e!1388130 (and tp!677453 tp!677452))))

(declare-fun b!2170522 () Bool)

(declare-fun tp!677454 () Bool)

(assert (=> b!2170522 (= e!1388130 tp!677454)))

(assert (= (and b!2169977 (is-ElementMatch!6008 (regOne!12529 (regTwo!12529 r!12534)))) b!2170520))

(assert (= (and b!2169977 (is-Concat!10310 (regOne!12529 (regTwo!12529 r!12534)))) b!2170521))

(assert (= (and b!2169977 (is-Star!6008 (regOne!12529 (regTwo!12529 r!12534)))) b!2170522))

(assert (= (and b!2169977 (is-Union!6008 (regOne!12529 (regTwo!12529 r!12534)))) b!2170523))

(declare-fun b!2170525 () Bool)

(declare-fun e!1388131 () Bool)

(declare-fun tp!677455 () Bool)

(declare-fun tp!677456 () Bool)

(assert (=> b!2170525 (= e!1388131 (and tp!677455 tp!677456))))

(assert (=> b!2169977 (= tp!677324 e!1388131)))

(declare-fun b!2170524 () Bool)

(assert (=> b!2170524 (= e!1388131 tp_is_empty!9623)))

(declare-fun b!2170527 () Bool)

(declare-fun tp!677458 () Bool)

(declare-fun tp!677457 () Bool)

(assert (=> b!2170527 (= e!1388131 (and tp!677458 tp!677457))))

(declare-fun b!2170526 () Bool)

(declare-fun tp!677459 () Bool)

(assert (=> b!2170526 (= e!1388131 tp!677459)))

(assert (= (and b!2169977 (is-ElementMatch!6008 (regTwo!12529 (regTwo!12529 r!12534)))) b!2170524))

(assert (= (and b!2169977 (is-Concat!10310 (regTwo!12529 (regTwo!12529 r!12534)))) b!2170525))

(assert (= (and b!2169977 (is-Star!6008 (regTwo!12529 (regTwo!12529 r!12534)))) b!2170526))

(assert (= (and b!2169977 (is-Union!6008 (regTwo!12529 (regTwo!12529 r!12534)))) b!2170527))

(declare-fun b!2170529 () Bool)

(declare-fun e!1388132 () Bool)

(declare-fun tp!677460 () Bool)

(declare-fun tp!677461 () Bool)

(assert (=> b!2170529 (= e!1388132 (and tp!677460 tp!677461))))

(assert (=> b!2169976 (= tp!677326 e!1388132)))

(declare-fun b!2170528 () Bool)

(assert (=> b!2170528 (= e!1388132 tp_is_empty!9623)))

(declare-fun b!2170531 () Bool)

(declare-fun tp!677463 () Bool)

(declare-fun tp!677462 () Bool)

(assert (=> b!2170531 (= e!1388132 (and tp!677463 tp!677462))))

(declare-fun b!2170530 () Bool)

(declare-fun tp!677464 () Bool)

(assert (=> b!2170530 (= e!1388132 tp!677464)))

(assert (= (and b!2169976 (is-ElementMatch!6008 (reg!6337 (regTwo!12529 r!12534)))) b!2170528))

(assert (= (and b!2169976 (is-Concat!10310 (reg!6337 (regTwo!12529 r!12534)))) b!2170529))

(assert (= (and b!2169976 (is-Star!6008 (reg!6337 (regTwo!12529 r!12534)))) b!2170530))

(assert (= (and b!2169976 (is-Union!6008 (reg!6337 (regTwo!12529 r!12534)))) b!2170531))

(declare-fun b!2170536 () Bool)

(declare-fun e!1388135 () Bool)

(declare-fun tp!677467 () Bool)

(assert (=> b!2170536 (= e!1388135 (and tp_is_empty!9623 tp!677467))))

(assert (=> b!2169996 (= tp!677342 e!1388135)))

(assert (= (and b!2169996 (is-Cons!25153 (innerList!8204 (xs!11086 (c!343802 totalInput!977))))) b!2170536))

(declare-fun b!2170538 () Bool)

(declare-fun e!1388136 () Bool)

(declare-fun tp!677468 () Bool)

(declare-fun tp!677469 () Bool)

(assert (=> b!2170538 (= e!1388136 (and tp!677468 tp!677469))))

(assert (=> b!2169975 (= tp!677322 e!1388136)))

(declare-fun b!2170537 () Bool)

(assert (=> b!2170537 (= e!1388136 tp_is_empty!9623)))

(declare-fun b!2170540 () Bool)

(declare-fun tp!677471 () Bool)

(declare-fun tp!677470 () Bool)

(assert (=> b!2170540 (= e!1388136 (and tp!677471 tp!677470))))

(declare-fun b!2170539 () Bool)

(declare-fun tp!677472 () Bool)

(assert (=> b!2170539 (= e!1388136 tp!677472)))

(assert (= (and b!2169975 (is-ElementMatch!6008 (regOne!12528 (regTwo!12529 r!12534)))) b!2170537))

(assert (= (and b!2169975 (is-Concat!10310 (regOne!12528 (regTwo!12529 r!12534)))) b!2170538))

(assert (= (and b!2169975 (is-Star!6008 (regOne!12528 (regTwo!12529 r!12534)))) b!2170539))

(assert (= (and b!2169975 (is-Union!6008 (regOne!12528 (regTwo!12529 r!12534)))) b!2170540))

(declare-fun b!2170542 () Bool)

(declare-fun e!1388137 () Bool)

(declare-fun tp!677473 () Bool)

(declare-fun tp!677474 () Bool)

(assert (=> b!2170542 (= e!1388137 (and tp!677473 tp!677474))))

(assert (=> b!2169975 (= tp!677323 e!1388137)))

(declare-fun b!2170541 () Bool)

(assert (=> b!2170541 (= e!1388137 tp_is_empty!9623)))

(declare-fun b!2170544 () Bool)

(declare-fun tp!677476 () Bool)

(declare-fun tp!677475 () Bool)

(assert (=> b!2170544 (= e!1388137 (and tp!677476 tp!677475))))

(declare-fun b!2170543 () Bool)

(declare-fun tp!677477 () Bool)

(assert (=> b!2170543 (= e!1388137 tp!677477)))

(assert (= (and b!2169975 (is-ElementMatch!6008 (regTwo!12528 (regTwo!12529 r!12534)))) b!2170541))

(assert (= (and b!2169975 (is-Concat!10310 (regTwo!12528 (regTwo!12529 r!12534)))) b!2170542))

(assert (= (and b!2169975 (is-Star!6008 (regTwo!12528 (regTwo!12529 r!12534)))) b!2170543))

(assert (= (and b!2169975 (is-Union!6008 (regTwo!12528 (regTwo!12529 r!12534)))) b!2170544))

(declare-fun b!2170545 () Bool)

(declare-fun tp!677480 () Bool)

(declare-fun e!1388138 () Bool)

(declare-fun tp!677479 () Bool)

(assert (=> b!2170545 (= e!1388138 (and (inv!33372 (left!19331 (left!19331 (c!343802 totalInput!977)))) tp!677479 (inv!33372 (right!19661 (left!19331 (c!343802 totalInput!977)))) tp!677480))))

(declare-fun b!2170547 () Bool)

(declare-fun e!1388139 () Bool)

(declare-fun tp!677478 () Bool)

(assert (=> b!2170547 (= e!1388139 tp!677478)))

(declare-fun b!2170546 () Bool)

(assert (=> b!2170546 (= e!1388138 (and (inv!33380 (xs!11086 (left!19331 (c!343802 totalInput!977)))) e!1388139))))

(assert (=> b!2169994 (= tp!677343 (and (inv!33372 (left!19331 (c!343802 totalInput!977))) e!1388138))))

(assert (= (and b!2169994 (is-Node!8144 (left!19331 (c!343802 totalInput!977)))) b!2170545))

(assert (= b!2170546 b!2170547))

(assert (= (and b!2169994 (is-Leaf!11916 (left!19331 (c!343802 totalInput!977)))) b!2170546))

(declare-fun m!2611707 () Bool)

(assert (=> b!2170545 m!2611707))

(declare-fun m!2611709 () Bool)

(assert (=> b!2170545 m!2611709))

(declare-fun m!2611711 () Bool)

(assert (=> b!2170546 m!2611711))

(assert (=> b!2169994 m!2611133))

(declare-fun b!2170548 () Bool)

(declare-fun e!1388140 () Bool)

(declare-fun tp!677482 () Bool)

(declare-fun tp!677483 () Bool)

(assert (=> b!2170548 (= e!1388140 (and (inv!33372 (left!19331 (right!19661 (c!343802 totalInput!977)))) tp!677482 (inv!33372 (right!19661 (right!19661 (c!343802 totalInput!977)))) tp!677483))))

(declare-fun b!2170550 () Bool)

(declare-fun e!1388141 () Bool)

(declare-fun tp!677481 () Bool)

(assert (=> b!2170550 (= e!1388141 tp!677481)))

(declare-fun b!2170549 () Bool)

(assert (=> b!2170549 (= e!1388140 (and (inv!33380 (xs!11086 (right!19661 (c!343802 totalInput!977)))) e!1388141))))

(assert (=> b!2169994 (= tp!677344 (and (inv!33372 (right!19661 (c!343802 totalInput!977))) e!1388140))))

(assert (= (and b!2169994 (is-Node!8144 (right!19661 (c!343802 totalInput!977)))) b!2170548))

(assert (= b!2170549 b!2170550))

(assert (= (and b!2169994 (is-Leaf!11916 (right!19661 (c!343802 totalInput!977)))) b!2170549))

(declare-fun m!2611713 () Bool)

(assert (=> b!2170548 m!2611713))

(declare-fun m!2611715 () Bool)

(assert (=> b!2170548 m!2611715))

(declare-fun m!2611717 () Bool)

(assert (=> b!2170549 m!2611717))

(assert (=> b!2169994 m!2611135))

(declare-fun b!2170552 () Bool)

(declare-fun e!1388142 () Bool)

(declare-fun tp!677484 () Bool)

(declare-fun tp!677485 () Bool)

(assert (=> b!2170552 (= e!1388142 (and tp!677484 tp!677485))))

(assert (=> b!2170000 (= tp!677348 e!1388142)))

(declare-fun b!2170551 () Bool)

(assert (=> b!2170551 (= e!1388142 tp_is_empty!9623)))

(declare-fun b!2170554 () Bool)

(declare-fun tp!677487 () Bool)

(declare-fun tp!677486 () Bool)

(assert (=> b!2170554 (= e!1388142 (and tp!677487 tp!677486))))

(declare-fun b!2170553 () Bool)

(declare-fun tp!677488 () Bool)

(assert (=> b!2170553 (= e!1388142 tp!677488)))

(assert (= (and b!2170000 (is-ElementMatch!6008 (regOne!12529 (regOne!12528 r!12534)))) b!2170551))

(assert (= (and b!2170000 (is-Concat!10310 (regOne!12529 (regOne!12528 r!12534)))) b!2170552))

(assert (= (and b!2170000 (is-Star!6008 (regOne!12529 (regOne!12528 r!12534)))) b!2170553))

(assert (= (and b!2170000 (is-Union!6008 (regOne!12529 (regOne!12528 r!12534)))) b!2170554))

(declare-fun b!2170556 () Bool)

(declare-fun e!1388143 () Bool)

(declare-fun tp!677489 () Bool)

(declare-fun tp!677490 () Bool)

(assert (=> b!2170556 (= e!1388143 (and tp!677489 tp!677490))))

(assert (=> b!2170000 (= tp!677347 e!1388143)))

(declare-fun b!2170555 () Bool)

(assert (=> b!2170555 (= e!1388143 tp_is_empty!9623)))

(declare-fun b!2170558 () Bool)

(declare-fun tp!677492 () Bool)

(declare-fun tp!677491 () Bool)

(assert (=> b!2170558 (= e!1388143 (and tp!677492 tp!677491))))

(declare-fun b!2170557 () Bool)

(declare-fun tp!677493 () Bool)

(assert (=> b!2170557 (= e!1388143 tp!677493)))

(assert (= (and b!2170000 (is-ElementMatch!6008 (regTwo!12529 (regOne!12528 r!12534)))) b!2170555))

(assert (= (and b!2170000 (is-Concat!10310 (regTwo!12529 (regOne!12528 r!12534)))) b!2170556))

(assert (= (and b!2170000 (is-Star!6008 (regTwo!12529 (regOne!12528 r!12534)))) b!2170557))

(assert (= (and b!2170000 (is-Union!6008 (regTwo!12529 (regOne!12528 r!12534)))) b!2170558))

(declare-fun b!2170560 () Bool)

(declare-fun e!1388144 () Bool)

(declare-fun tp!677494 () Bool)

(declare-fun tp!677495 () Bool)

(assert (=> b!2170560 (= e!1388144 (and tp!677494 tp!677495))))

(assert (=> b!2169999 (= tp!677349 e!1388144)))

(declare-fun b!2170559 () Bool)

(assert (=> b!2170559 (= e!1388144 tp_is_empty!9623)))

(declare-fun b!2170562 () Bool)

(declare-fun tp!677497 () Bool)

(declare-fun tp!677496 () Bool)

(assert (=> b!2170562 (= e!1388144 (and tp!677497 tp!677496))))

(declare-fun b!2170561 () Bool)

(declare-fun tp!677498 () Bool)

(assert (=> b!2170561 (= e!1388144 tp!677498)))

(assert (= (and b!2169999 (is-ElementMatch!6008 (reg!6337 (regOne!12528 r!12534)))) b!2170559))

(assert (= (and b!2169999 (is-Concat!10310 (reg!6337 (regOne!12528 r!12534)))) b!2170560))

(assert (= (and b!2169999 (is-Star!6008 (reg!6337 (regOne!12528 r!12534)))) b!2170561))

(assert (= (and b!2169999 (is-Union!6008 (reg!6337 (regOne!12528 r!12534)))) b!2170562))

(declare-fun b!2170564 () Bool)

(declare-fun e!1388145 () Bool)

(declare-fun tp!677499 () Bool)

(declare-fun tp!677500 () Bool)

(assert (=> b!2170564 (= e!1388145 (and tp!677499 tp!677500))))

(assert (=> b!2170008 (= tp!677358 e!1388145)))

(declare-fun b!2170563 () Bool)

(assert (=> b!2170563 (= e!1388145 tp_is_empty!9623)))

(declare-fun b!2170566 () Bool)

(declare-fun tp!677502 () Bool)

(declare-fun tp!677501 () Bool)

(assert (=> b!2170566 (= e!1388145 (and tp!677502 tp!677501))))

(declare-fun b!2170565 () Bool)

(declare-fun tp!677503 () Bool)

(assert (=> b!2170565 (= e!1388145 tp!677503)))

(assert (= (and b!2170008 (is-ElementMatch!6008 (regOne!12529 (reg!6337 r!12534)))) b!2170563))

(assert (= (and b!2170008 (is-Concat!10310 (regOne!12529 (reg!6337 r!12534)))) b!2170564))

(assert (= (and b!2170008 (is-Star!6008 (regOne!12529 (reg!6337 r!12534)))) b!2170565))

(assert (= (and b!2170008 (is-Union!6008 (regOne!12529 (reg!6337 r!12534)))) b!2170566))

(declare-fun b!2170568 () Bool)

(declare-fun e!1388146 () Bool)

(declare-fun tp!677504 () Bool)

(declare-fun tp!677505 () Bool)

(assert (=> b!2170568 (= e!1388146 (and tp!677504 tp!677505))))

(assert (=> b!2170008 (= tp!677357 e!1388146)))

(declare-fun b!2170567 () Bool)

(assert (=> b!2170567 (= e!1388146 tp_is_empty!9623)))

(declare-fun b!2170570 () Bool)

(declare-fun tp!677507 () Bool)

(declare-fun tp!677506 () Bool)

(assert (=> b!2170570 (= e!1388146 (and tp!677507 tp!677506))))

(declare-fun b!2170569 () Bool)

(declare-fun tp!677508 () Bool)

(assert (=> b!2170569 (= e!1388146 tp!677508)))

(assert (= (and b!2170008 (is-ElementMatch!6008 (regTwo!12529 (reg!6337 r!12534)))) b!2170567))

(assert (= (and b!2170008 (is-Concat!10310 (regTwo!12529 (reg!6337 r!12534)))) b!2170568))

(assert (= (and b!2170008 (is-Star!6008 (regTwo!12529 (reg!6337 r!12534)))) b!2170569))

(assert (= (and b!2170008 (is-Union!6008 (regTwo!12529 (reg!6337 r!12534)))) b!2170570))

(declare-fun condSetEmpty!18183 () Bool)

(assert (=> setNonEmpty!18179 (= condSetEmpty!18183 (= setRest!18179 (as set.empty (Set Context!3156))))))

(declare-fun setRes!18183 () Bool)

(assert (=> setNonEmpty!18179 (= tp!677306 setRes!18183)))

(declare-fun setIsEmpty!18183 () Bool)

(assert (=> setIsEmpty!18183 setRes!18183))

(declare-fun e!1388147 () Bool)

(declare-fun tp!677510 () Bool)

(declare-fun setNonEmpty!18183 () Bool)

(declare-fun setElem!18183 () Context!3156)

(assert (=> setNonEmpty!18183 (= setRes!18183 (and tp!677510 (inv!33373 setElem!18183) e!1388147))))

(declare-fun setRest!18183 () (Set Context!3156))

(assert (=> setNonEmpty!18183 (= setRest!18179 (set.union (set.insert setElem!18183 (as set.empty (Set Context!3156))) setRest!18183))))

(declare-fun b!2170571 () Bool)

(declare-fun tp!677509 () Bool)

(assert (=> b!2170571 (= e!1388147 tp!677509)))

(assert (= (and setNonEmpty!18179 condSetEmpty!18183) setIsEmpty!18183))

(assert (= (and setNonEmpty!18179 (not condSetEmpty!18183)) setNonEmpty!18183))

(assert (= setNonEmpty!18183 b!2170571))

(declare-fun m!2611719 () Bool)

(assert (=> setNonEmpty!18183 m!2611719))

(declare-fun b!2170573 () Bool)

(declare-fun e!1388148 () Bool)

(declare-fun tp!677511 () Bool)

(declare-fun tp!677512 () Bool)

(assert (=> b!2170573 (= e!1388148 (and tp!677511 tp!677512))))

(assert (=> b!2169998 (= tp!677345 e!1388148)))

(declare-fun b!2170572 () Bool)

(assert (=> b!2170572 (= e!1388148 tp_is_empty!9623)))

(declare-fun b!2170575 () Bool)

(declare-fun tp!677514 () Bool)

(declare-fun tp!677513 () Bool)

(assert (=> b!2170575 (= e!1388148 (and tp!677514 tp!677513))))

(declare-fun b!2170574 () Bool)

(declare-fun tp!677515 () Bool)

(assert (=> b!2170574 (= e!1388148 tp!677515)))

(assert (= (and b!2169998 (is-ElementMatch!6008 (regOne!12528 (regOne!12528 r!12534)))) b!2170572))

(assert (= (and b!2169998 (is-Concat!10310 (regOne!12528 (regOne!12528 r!12534)))) b!2170573))

(assert (= (and b!2169998 (is-Star!6008 (regOne!12528 (regOne!12528 r!12534)))) b!2170574))

(assert (= (and b!2169998 (is-Union!6008 (regOne!12528 (regOne!12528 r!12534)))) b!2170575))

(declare-fun b!2170577 () Bool)

(declare-fun e!1388149 () Bool)

(declare-fun tp!677516 () Bool)

(declare-fun tp!677517 () Bool)

(assert (=> b!2170577 (= e!1388149 (and tp!677516 tp!677517))))

(assert (=> b!2169998 (= tp!677346 e!1388149)))

(declare-fun b!2170576 () Bool)

(assert (=> b!2170576 (= e!1388149 tp_is_empty!9623)))

(declare-fun b!2170579 () Bool)

(declare-fun tp!677519 () Bool)

(declare-fun tp!677518 () Bool)

(assert (=> b!2170579 (= e!1388149 (and tp!677519 tp!677518))))

(declare-fun b!2170578 () Bool)

(declare-fun tp!677520 () Bool)

(assert (=> b!2170578 (= e!1388149 tp!677520)))

(assert (= (and b!2169998 (is-ElementMatch!6008 (regTwo!12528 (regOne!12528 r!12534)))) b!2170576))

(assert (= (and b!2169998 (is-Concat!10310 (regTwo!12528 (regOne!12528 r!12534)))) b!2170577))

(assert (= (and b!2169998 (is-Star!6008 (regTwo!12528 (regOne!12528 r!12534)))) b!2170578))

(assert (= (and b!2169998 (is-Union!6008 (regTwo!12528 (regOne!12528 r!12534)))) b!2170579))

(declare-fun b!2170581 () Bool)

(declare-fun e!1388150 () Bool)

(declare-fun tp!677521 () Bool)

(declare-fun tp!677522 () Bool)

(assert (=> b!2170581 (= e!1388150 (and tp!677521 tp!677522))))

(assert (=> b!2170007 (= tp!677359 e!1388150)))

(declare-fun b!2170580 () Bool)

(assert (=> b!2170580 (= e!1388150 tp_is_empty!9623)))

(declare-fun b!2170583 () Bool)

(declare-fun tp!677524 () Bool)

(declare-fun tp!677523 () Bool)

(assert (=> b!2170583 (= e!1388150 (and tp!677524 tp!677523))))

(declare-fun b!2170582 () Bool)

(declare-fun tp!677525 () Bool)

(assert (=> b!2170582 (= e!1388150 tp!677525)))

(assert (= (and b!2170007 (is-ElementMatch!6008 (reg!6337 (reg!6337 r!12534)))) b!2170580))

(assert (= (and b!2170007 (is-Concat!10310 (reg!6337 (reg!6337 r!12534)))) b!2170581))

(assert (= (and b!2170007 (is-Star!6008 (reg!6337 (reg!6337 r!12534)))) b!2170582))

(assert (= (and b!2170007 (is-Union!6008 (reg!6337 (reg!6337 r!12534)))) b!2170583))

(declare-fun b!2170585 () Bool)

(declare-fun e!1388151 () Bool)

(declare-fun tp!677526 () Bool)

(declare-fun tp!677527 () Bool)

(assert (=> b!2170585 (= e!1388151 (and tp!677526 tp!677527))))

(assert (=> b!2169993 (= tp!677340 e!1388151)))

(declare-fun b!2170584 () Bool)

(assert (=> b!2170584 (= e!1388151 tp_is_empty!9623)))

(declare-fun b!2170587 () Bool)

(declare-fun tp!677529 () Bool)

(declare-fun tp!677528 () Bool)

(assert (=> b!2170587 (= e!1388151 (and tp!677529 tp!677528))))

(declare-fun b!2170586 () Bool)

(declare-fun tp!677530 () Bool)

(assert (=> b!2170586 (= e!1388151 tp!677530)))

(assert (= (and b!2169993 (is-ElementMatch!6008 (h!30555 (exprs!2078 setElem!18173)))) b!2170584))

(assert (= (and b!2169993 (is-Concat!10310 (h!30555 (exprs!2078 setElem!18173)))) b!2170585))

(assert (= (and b!2169993 (is-Star!6008 (h!30555 (exprs!2078 setElem!18173)))) b!2170586))

(assert (= (and b!2169993 (is-Union!6008 (h!30555 (exprs!2078 setElem!18173)))) b!2170587))

(declare-fun b!2170588 () Bool)

(declare-fun e!1388152 () Bool)

(declare-fun tp!677531 () Bool)

(declare-fun tp!677532 () Bool)

(assert (=> b!2170588 (= e!1388152 (and tp!677531 tp!677532))))

(assert (=> b!2169993 (= tp!677341 e!1388152)))

(assert (= (and b!2169993 (is-Cons!25154 (t!197800 (exprs!2078 setElem!18173)))) b!2170588))

(declare-fun b!2170590 () Bool)

(declare-fun e!1388153 () Bool)

(declare-fun tp!677533 () Bool)

(declare-fun tp!677534 () Bool)

(assert (=> b!2170590 (= e!1388153 (and tp!677533 tp!677534))))

(assert (=> b!2169973 (= tp!677320 e!1388153)))

(declare-fun b!2170589 () Bool)

(assert (=> b!2170589 (= e!1388153 tp_is_empty!9623)))

(declare-fun b!2170592 () Bool)

(declare-fun tp!677536 () Bool)

(declare-fun tp!677535 () Bool)

(assert (=> b!2170592 (= e!1388153 (and tp!677536 tp!677535))))

(declare-fun b!2170591 () Bool)

(declare-fun tp!677537 () Bool)

(assert (=> b!2170591 (= e!1388153 tp!677537)))

(assert (= (and b!2169973 (is-ElementMatch!6008 (regOne!12529 (regOne!12529 r!12534)))) b!2170589))

(assert (= (and b!2169973 (is-Concat!10310 (regOne!12529 (regOne!12529 r!12534)))) b!2170590))

(assert (= (and b!2169973 (is-Star!6008 (regOne!12529 (regOne!12529 r!12534)))) b!2170591))

(assert (= (and b!2169973 (is-Union!6008 (regOne!12529 (regOne!12529 r!12534)))) b!2170592))

(declare-fun b!2170594 () Bool)

(declare-fun e!1388154 () Bool)

(declare-fun tp!677538 () Bool)

(declare-fun tp!677539 () Bool)

(assert (=> b!2170594 (= e!1388154 (and tp!677538 tp!677539))))

(assert (=> b!2169973 (= tp!677319 e!1388154)))

(declare-fun b!2170593 () Bool)

(assert (=> b!2170593 (= e!1388154 tp_is_empty!9623)))

(declare-fun b!2170596 () Bool)

(declare-fun tp!677541 () Bool)

(declare-fun tp!677540 () Bool)

(assert (=> b!2170596 (= e!1388154 (and tp!677541 tp!677540))))

(declare-fun b!2170595 () Bool)

(declare-fun tp!677542 () Bool)

(assert (=> b!2170595 (= e!1388154 tp!677542)))

(assert (= (and b!2169973 (is-ElementMatch!6008 (regTwo!12529 (regOne!12529 r!12534)))) b!2170593))

(assert (= (and b!2169973 (is-Concat!10310 (regTwo!12529 (regOne!12529 r!12534)))) b!2170594))

(assert (= (and b!2169973 (is-Star!6008 (regTwo!12529 (regOne!12529 r!12534)))) b!2170595))

(assert (= (and b!2169973 (is-Union!6008 (regTwo!12529 (regOne!12529 r!12534)))) b!2170596))

(declare-fun b!2170597 () Bool)

(declare-fun e!1388155 () Bool)

(declare-fun tp!677543 () Bool)

(declare-fun tp!677544 () Bool)

(assert (=> b!2170597 (= e!1388155 (and tp!677543 tp!677544))))

(assert (=> b!2169959 (= tp!677305 e!1388155)))

(assert (= (and b!2169959 (is-Cons!25154 (exprs!2078 setElem!18179))) b!2170597))

(declare-fun b!2170599 () Bool)

(declare-fun e!1388156 () Bool)

(declare-fun tp!677545 () Bool)

(declare-fun tp!677546 () Bool)

(assert (=> b!2170599 (= e!1388156 (and tp!677545 tp!677546))))

(assert (=> b!2170006 (= tp!677355 e!1388156)))

(declare-fun b!2170598 () Bool)

(assert (=> b!2170598 (= e!1388156 tp_is_empty!9623)))

(declare-fun b!2170601 () Bool)

(declare-fun tp!677548 () Bool)

(declare-fun tp!677547 () Bool)

(assert (=> b!2170601 (= e!1388156 (and tp!677548 tp!677547))))

(declare-fun b!2170600 () Bool)

(declare-fun tp!677549 () Bool)

(assert (=> b!2170600 (= e!1388156 tp!677549)))

(assert (= (and b!2170006 (is-ElementMatch!6008 (regOne!12528 (reg!6337 r!12534)))) b!2170598))

(assert (= (and b!2170006 (is-Concat!10310 (regOne!12528 (reg!6337 r!12534)))) b!2170599))

(assert (= (and b!2170006 (is-Star!6008 (regOne!12528 (reg!6337 r!12534)))) b!2170600))

(assert (= (and b!2170006 (is-Union!6008 (regOne!12528 (reg!6337 r!12534)))) b!2170601))

(declare-fun b!2170603 () Bool)

(declare-fun e!1388157 () Bool)

(declare-fun tp!677550 () Bool)

(declare-fun tp!677551 () Bool)

(assert (=> b!2170603 (= e!1388157 (and tp!677550 tp!677551))))

(assert (=> b!2170006 (= tp!677356 e!1388157)))

(declare-fun b!2170602 () Bool)

(assert (=> b!2170602 (= e!1388157 tp_is_empty!9623)))

(declare-fun b!2170605 () Bool)

(declare-fun tp!677553 () Bool)

(declare-fun tp!677552 () Bool)

(assert (=> b!2170605 (= e!1388157 (and tp!677553 tp!677552))))

(declare-fun b!2170604 () Bool)

(declare-fun tp!677554 () Bool)

(assert (=> b!2170604 (= e!1388157 tp!677554)))

(assert (= (and b!2170006 (is-ElementMatch!6008 (regTwo!12528 (reg!6337 r!12534)))) b!2170602))

(assert (= (and b!2170006 (is-Concat!10310 (regTwo!12528 (reg!6337 r!12534)))) b!2170603))

(assert (= (and b!2170006 (is-Star!6008 (regTwo!12528 (reg!6337 r!12534)))) b!2170604))

(assert (= (and b!2170006 (is-Union!6008 (regTwo!12528 (reg!6337 r!12534)))) b!2170605))

(declare-fun b!2170607 () Bool)

(declare-fun e!1388158 () Bool)

(declare-fun tp!677555 () Bool)

(declare-fun tp!677556 () Bool)

(assert (=> b!2170607 (= e!1388158 (and tp!677555 tp!677556))))

(assert (=> b!2169972 (= tp!677321 e!1388158)))

(declare-fun b!2170606 () Bool)

(assert (=> b!2170606 (= e!1388158 tp_is_empty!9623)))

(declare-fun b!2170609 () Bool)

(declare-fun tp!677558 () Bool)

(declare-fun tp!677557 () Bool)

(assert (=> b!2170609 (= e!1388158 (and tp!677558 tp!677557))))

(declare-fun b!2170608 () Bool)

(declare-fun tp!677559 () Bool)

(assert (=> b!2170608 (= e!1388158 tp!677559)))

(assert (= (and b!2169972 (is-ElementMatch!6008 (reg!6337 (regOne!12529 r!12534)))) b!2170606))

(assert (= (and b!2169972 (is-Concat!10310 (reg!6337 (regOne!12529 r!12534)))) b!2170607))

(assert (= (and b!2169972 (is-Star!6008 (reg!6337 (regOne!12529 r!12534)))) b!2170608))

(assert (= (and b!2169972 (is-Union!6008 (reg!6337 (regOne!12529 r!12534)))) b!2170609))

(declare-fun b!2170611 () Bool)

(declare-fun e!1388159 () Bool)

(declare-fun tp!677560 () Bool)

(declare-fun tp!677561 () Bool)

(assert (=> b!2170611 (= e!1388159 (and tp!677560 tp!677561))))

(assert (=> b!2169971 (= tp!677317 e!1388159)))

(declare-fun b!2170610 () Bool)

(assert (=> b!2170610 (= e!1388159 tp_is_empty!9623)))

(declare-fun b!2170613 () Bool)

(declare-fun tp!677563 () Bool)

(declare-fun tp!677562 () Bool)

(assert (=> b!2170613 (= e!1388159 (and tp!677563 tp!677562))))

(declare-fun b!2170612 () Bool)

(declare-fun tp!677564 () Bool)

(assert (=> b!2170612 (= e!1388159 tp!677564)))

(assert (= (and b!2169971 (is-ElementMatch!6008 (regOne!12528 (regOne!12529 r!12534)))) b!2170610))

(assert (= (and b!2169971 (is-Concat!10310 (regOne!12528 (regOne!12529 r!12534)))) b!2170611))

(assert (= (and b!2169971 (is-Star!6008 (regOne!12528 (regOne!12529 r!12534)))) b!2170612))

(assert (= (and b!2169971 (is-Union!6008 (regOne!12528 (regOne!12529 r!12534)))) b!2170613))

(declare-fun b!2170617 () Bool)

(declare-fun e!1388160 () Bool)

(declare-fun tp!677565 () Bool)

(declare-fun tp!677566 () Bool)

(assert (=> b!2170617 (= e!1388160 (and tp!677565 tp!677566))))

(assert (=> b!2169971 (= tp!677318 e!1388160)))

(declare-fun b!2170616 () Bool)

(assert (=> b!2170616 (= e!1388160 tp_is_empty!9623)))

(declare-fun b!2170619 () Bool)

(declare-fun tp!677568 () Bool)

(declare-fun tp!677567 () Bool)

(assert (=> b!2170619 (= e!1388160 (and tp!677568 tp!677567))))

(declare-fun b!2170618 () Bool)

(declare-fun tp!677569 () Bool)

(assert (=> b!2170618 (= e!1388160 tp!677569)))

(assert (= (and b!2169971 (is-ElementMatch!6008 (regTwo!12528 (regOne!12529 r!12534)))) b!2170616))

(assert (= (and b!2169971 (is-Concat!10310 (regTwo!12528 (regOne!12529 r!12534)))) b!2170617))

(assert (= (and b!2169971 (is-Star!6008 (regTwo!12528 (regOne!12529 r!12534)))) b!2170618))

(assert (= (and b!2169971 (is-Union!6008 (regTwo!12528 (regOne!12529 r!12534)))) b!2170619))

(declare-fun b!2170622 () Bool)

(declare-fun e!1388163 () Bool)

(declare-fun tp!677570 () Bool)

(assert (=> b!2170622 (= e!1388163 (and tp_is_empty!9623 tp!677570))))

(assert (=> b!2169988 (= tp!677333 e!1388163)))

(assert (= (and b!2169988 (is-Cons!25153 (innerList!8204 (xs!11086 (c!343802 input!5540))))) b!2170622))

(declare-fun e!1388164 () Bool)

(declare-fun tp!677572 () Bool)

(declare-fun b!2170623 () Bool)

(declare-fun tp!677573 () Bool)

(assert (=> b!2170623 (= e!1388164 (and (inv!33372 (left!19331 (left!19331 (c!343802 input!5540)))) tp!677572 (inv!33372 (right!19661 (left!19331 (c!343802 input!5540)))) tp!677573))))

(declare-fun b!2170625 () Bool)

(declare-fun e!1388165 () Bool)

(declare-fun tp!677571 () Bool)

(assert (=> b!2170625 (= e!1388165 tp!677571)))

(declare-fun b!2170624 () Bool)

(assert (=> b!2170624 (= e!1388164 (and (inv!33380 (xs!11086 (left!19331 (c!343802 input!5540)))) e!1388165))))

(assert (=> b!2169986 (= tp!677334 (and (inv!33372 (left!19331 (c!343802 input!5540))) e!1388164))))

(assert (= (and b!2169986 (is-Node!8144 (left!19331 (c!343802 input!5540)))) b!2170623))

(assert (= b!2170624 b!2170625))

(assert (= (and b!2169986 (is-Leaf!11916 (left!19331 (c!343802 input!5540)))) b!2170624))

(declare-fun m!2611721 () Bool)

(assert (=> b!2170623 m!2611721))

(declare-fun m!2611723 () Bool)

(assert (=> b!2170623 m!2611723))

(declare-fun m!2611725 () Bool)

(assert (=> b!2170624 m!2611725))

(assert (=> b!2169986 m!2611127))

(declare-fun tp!677575 () Bool)

(declare-fun tp!677576 () Bool)

(declare-fun b!2170626 () Bool)

(declare-fun e!1388166 () Bool)

(assert (=> b!2170626 (= e!1388166 (and (inv!33372 (left!19331 (right!19661 (c!343802 input!5540)))) tp!677575 (inv!33372 (right!19661 (right!19661 (c!343802 input!5540)))) tp!677576))))

(declare-fun b!2170628 () Bool)

(declare-fun e!1388167 () Bool)

(declare-fun tp!677574 () Bool)

(assert (=> b!2170628 (= e!1388167 tp!677574)))

(declare-fun b!2170627 () Bool)

(assert (=> b!2170627 (= e!1388166 (and (inv!33380 (xs!11086 (right!19661 (c!343802 input!5540)))) e!1388167))))

(assert (=> b!2169986 (= tp!677335 (and (inv!33372 (right!19661 (c!343802 input!5540))) e!1388166))))

(assert (= (and b!2169986 (is-Node!8144 (right!19661 (c!343802 input!5540)))) b!2170626))

(assert (= b!2170627 b!2170628))

(assert (= (and b!2169986 (is-Leaf!11916 (right!19661 (c!343802 input!5540)))) b!2170627))

(declare-fun m!2611727 () Bool)

(assert (=> b!2170626 m!2611727))

(declare-fun m!2611729 () Bool)

(assert (=> b!2170626 m!2611729))

(declare-fun m!2611731 () Bool)

(assert (=> b!2170627 m!2611731))

(assert (=> b!2169986 m!2611129))

(declare-fun b_lambda!71087 () Bool)

(assert (= b_lambda!71085 (or d!649756 b_lambda!71087)))

(declare-fun bs!446909 () Bool)

(declare-fun d!650028 () Bool)

(assert (= bs!446909 (and d!650028 d!649756)))

(assert (=> bs!446909 (= (dynLambda!11430 lambda!81776 (h!30555 (exprs!2078 setElem!18173))) (validRegex!2284 (h!30555 (exprs!2078 setElem!18173))))))

(declare-fun m!2611733 () Bool)

(assert (=> bs!446909 m!2611733))

(assert (=> b!2170273 d!650028))

(push 1)

(assert (not b!2170394))

(assert (not d!649980))

(assert (not b!2170373))

(assert (not b!2170509))

(assert (not b!2170174))

(assert (not b!2170569))

(assert (not b!2170525))

(assert (not b!2170285))

(assert (not b!2170476))

(assert (not b!2170327))

(assert (not d!649904))

(assert (not b!2170320))

(assert (not bm!130177))

(assert (not b!2170482))

(assert (not b!2170382))

(assert (not d!649914))

(assert (not b!2170607))

(assert (not b!2170573))

(assert (not b!2170350))

(assert (not b!2170214))

(assert (not b!2170358))

(assert (not b!2170585))

(assert (not b!2170536))

(assert (not b!2170611))

(assert (not b!2170618))

(assert (not b!2170359))

(assert (not b!2170529))

(assert (not b!2170170))

(assert (not bm!130205))

(assert (not b!2170356))

(assert (not b!2170215))

(assert (not d!649998))

(assert (not b!2170613))

(assert (not b!2170566))

(assert (not b!2170582))

(assert (not b!2170489))

(assert (not b!2170282))

(assert (not b!2170546))

(assert (not b!2170538))

(assert (not b!2170623))

(assert (not b!2170163))

(assert (not b!2170321))

(assert (not b!2170464))

(assert (not b!2170409))

(assert (not b!2170481))

(assert (not b!2169986))

(assert (not b!2170172))

(assert (not b!2170605))

(assert (not b!2170513))

(assert (not b!2170139))

(assert (not b!2170290))

(assert (not d!649892))

(assert (not b!2170323))

(assert (not b!2170595))

(assert (not b!2170484))

(assert (not b!2170361))

(assert (not b!2170574))

(assert (not b!2170244))

(assert (not d!649882))

(assert (not b!2170278))

(assert (not b!2170392))

(assert (not d!649924))

(assert (not b!2170579))

(assert (not b!2170503))

(assert (not b!2170587))

(assert (not d!649896))

(assert (not b!2170608))

(assert (not b!2170628))

(assert (not b!2170442))

(assert (not b!2170571))

(assert (not b!2170288))

(assert (not b!2170401))

(assert (not d!649960))

(assert (not b!2170626))

(assert (not bm!130202))

(assert (not bm!130198))

(assert (not b!2170502))

(assert (not d!649912))

(assert (not b!2170550))

(assert (not b!2170597))

(assert (not b!2170379))

(assert (not b!2170542))

(assert (not b!2170230))

(assert (not d!649994))

(assert (not bs!446909))

(assert (not d!649864))

(assert (not b!2170583))

(assert (not b!2170209))

(assert (not b!2170449))

(assert (not b!2170390))

(assert (not bm!130197))

(assert (not b!2170468))

(assert (not b!2170149))

(assert (not d!649856))

(assert tp_is_empty!9623)

(assert (not b!2170343))

(assert (not b!2170267))

(assert (not b!2170286))

(assert (not b!2170201))

(assert (not b!2170264))

(assert (not b!2170581))

(assert (not b!2170391))

(assert (not b!2170617))

(assert (not b!2170565))

(assert (not b!2170591))

(assert (not b!2170197))

(assert (not b!2170397))

(assert (not b!2170159))

(assert (not b!2170253))

(assert (not b!2170362))

(assert (not b!2170162))

(assert (not bm!130204))

(assert (not b!2170511))

(assert (not bm!130207))

(assert (not b!2170596))

(assert (not b!2170505))

(assert (not b!2170251))

(assert (not b!2170155))

(assert (not d!649870))

(assert (not b!2170577))

(assert (not b!2170557))

(assert (not b!2170521))

(assert (not d!649854))

(assert (not b!2170531))

(assert (not b!2170549))

(assert (not b!2170467))

(assert (not d!650022))

(assert (not b!2170522))

(assert (not b!2170543))

(assert (not b!2170604))

(assert (not b!2170540))

(assert (not b!2170371))

(assert (not b!2170506))

(assert (not b!2170326))

(assert (not bm!130199))

(assert (not b!2170578))

(assert (not b!2170389))

(assert (not b!2170624))

(assert (not b!2170564))

(assert (not b!2170518))

(assert (not b!2170250))

(assert (not b!2170227))

(assert (not b!2170459))

(assert (not b!2170497))

(assert (not b!2170501))

(assert (not b!2170443))

(assert (not bm!130174))

(assert (not b!2170600))

(assert (not b!2170465))

(assert (not b!2170357))

(assert (not b!2170547))

(assert (not d!649906))

(assert (not b!2170514))

(assert (not b!2170603))

(assert (not b!2170158))

(assert (not b!2170594))

(assert (not b!2170552))

(assert (not b!2170510))

(assert (not b!2170369))

(assert (not b!2170586))

(assert (not bm!130178))

(assert (not b!2170212))

(assert (not d!650010))

(assert (not b!2170281))

(assert (not b!2170556))

(assert (not b!2170530))

(assert (not b!2170588))

(assert (not b!2170324))

(assert (not d!649852))

(assert (not b!2170619))

(assert (not b!2170248))

(assert (not b!2170341))

(assert (not d!649908))

(assert (not bm!130201))

(assert (not b!2170570))

(assert (not d!649888))

(assert (not b!2170137))

(assert (not b!2170375))

(assert (not b!2170453))

(assert (not b!2170246))

(assert (not b!2170354))

(assert (not b!2170523))

(assert (not b!2170297))

(assert (not b!2170622))

(assert (not b!2170377))

(assert (not b!2170399))

(assert (not b!2170160))

(assert (not b!2170245))

(assert (not b!2170548))

(assert (not d!650024))

(assert (not b!2170561))

(assert (not b!2170625))

(assert (not b!2170568))

(assert (not b!2170527))

(assert (not b!2170454))

(assert (not d!649952))

(assert (not b!2170383))

(assert (not b!2170457))

(assert (not b!2170560))

(assert (not b!2170590))

(assert (not b!2170612))

(assert (not b!2170507))

(assert (not d!650014))

(assert (not b!2170243))

(assert (not b!2170208))

(assert (not b!2170368))

(assert (not b!2170490))

(assert (not b!2170395))

(assert (not b!2170366))

(assert (not b!2170334))

(assert (not d!649996))

(assert (not b!2170365))

(assert (not bm!130175))

(assert (not b!2170204))

(assert (not b!2170328))

(assert (not b!2170545))

(assert (not b!2170553))

(assert (not b!2170599))

(assert (not b!2170274))

(assert (not bm!130203))

(assert (not b!2170575))

(assert (not b!2170284))

(assert (not b!2170544))

(assert (not d!649938))

(assert (not b!2170374))

(assert (not b!2170526))

(assert (not b!2170627))

(assert (not b!2170247))

(assert (not b!2170519))

(assert (not b!2170517))

(assert (not setNonEmpty!18183))

(assert (not b!2170450))

(assert (not b!2170228))

(assert (not b!2170337))

(assert (not b!2169994))

(assert (not b!2170554))

(assert (not b!2170407))

(assert (not b!2170498))

(assert (not b!2170515))

(assert (not bm!130200))

(assert (not b!2170141))

(assert (not b!2170562))

(assert (not b!2170339))

(assert (not d!650004))

(assert (not b!2170277))

(assert (not b!2170539))

(assert (not b!2170499))

(assert (not b!2170469))

(assert (not d!649880))

(assert (not b!2170558))

(assert (not b!2170609))

(assert (not bm!130180))

(assert (not b!2170479))

(assert (not b!2170601))

(assert (not b!2170592))

(assert (not b!2170393))

(assert (not d!649936))

(assert (not b_lambda!71087))

(assert (not b!2170206))

(assert (not d!650006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

