; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!753910 () Bool)

(assert start!753910)

(declare-fun b!8011803 () Bool)

(declare-fun res!3167969 () Bool)

(declare-fun e!4719546 () Bool)

(assert (=> b!8011803 (=> (not res!3167969) (not e!4719546))))

(declare-fun totalInputSize!629 () Int)

(declare-datatypes ((C!43682 0))(
  ( (C!43683 (val!32389 Int)) )
))
(declare-datatypes ((List!74901 0))(
  ( (Nil!74777) (Cons!74777 (h!81225 C!43682) (t!390644 List!74901)) )
))
(declare-fun totalInput!1349 () List!74901)

(declare-fun size!43574 (List!74901) Int)

(assert (=> b!8011803 (= res!3167969 (= totalInputSize!629 (size!43574 totalInput!1349)))))

(declare-fun b!8011804 () Bool)

(declare-fun e!4719539 () Bool)

(declare-fun tp!2397841 () Bool)

(assert (=> b!8011804 (= e!4719539 tp!2397841)))

(declare-fun res!3167972 () Bool)

(declare-fun e!4719543 () Bool)

(assert (=> start!753910 (=> (not res!3167972) (not e!4719543))))

(declare-datatypes ((Regex!21672 0))(
  ( (ElementMatch!21672 (c!1470547 C!43682)) (Concat!30671 (regOne!43856 Regex!21672) (regTwo!43856 Regex!21672)) (EmptyExpr!21672) (Star!21672 (reg!22001 Regex!21672)) (EmptyLang!21672) (Union!21672 (regOne!43857 Regex!21672) (regTwo!43857 Regex!21672)) )
))
(declare-fun r!15422 () Regex!21672)

(declare-fun validRegex!11976 (Regex!21672) Bool)

(assert (=> start!753910 (= res!3167972 (validRegex!11976 r!15422))))

(assert (=> start!753910 e!4719543))

(declare-fun e!4719542 () Bool)

(assert (=> start!753910 e!4719542))

(assert (=> start!753910 true))

(declare-fun e!4719541 () Bool)

(assert (=> start!753910 e!4719541))

(assert (=> start!753910 e!4719539))

(declare-fun e!4719540 () Bool)

(assert (=> start!753910 e!4719540))

(declare-fun b!8011805 () Bool)

(declare-fun tp_is_empty!53887 () Bool)

(declare-fun tp!2397835 () Bool)

(assert (=> b!8011805 (= e!4719541 (and tp_is_empty!53887 tp!2397835))))

(declare-fun b!8011806 () Bool)

(assert (=> b!8011806 (= e!4719543 e!4719546)))

(declare-fun res!3167965 () Bool)

(assert (=> b!8011806 (=> (not res!3167965) (not e!4719546))))

(declare-fun lt!2717037 () List!74901)

(assert (=> b!8011806 (= res!3167965 (= lt!2717037 totalInput!1349))))

(declare-fun testedP!353 () List!74901)

(declare-fun testedSuffix!271 () List!74901)

(declare-fun ++!18498 (List!74901 List!74901) List!74901)

(assert (=> b!8011806 (= lt!2717037 (++!18498 testedP!353 testedSuffix!271))))

(declare-fun b!8011807 () Bool)

(declare-fun res!3167973 () Bool)

(declare-fun e!4719538 () Bool)

(assert (=> b!8011807 (=> res!3167973 e!4719538)))

(declare-fun nullable!9718 (Regex!21672) Bool)

(assert (=> b!8011807 (= res!3167973 (not (nullable!9718 r!15422)))))

(declare-fun b!8011808 () Bool)

(declare-fun e!4719544 () Bool)

(declare-fun e!4719545 () Bool)

(assert (=> b!8011808 (= e!4719544 e!4719545)))

(declare-fun res!3167966 () Bool)

(assert (=> b!8011808 (=> res!3167966 e!4719545)))

(declare-fun lostCause!2059 (Regex!21672) Bool)

(assert (=> b!8011808 (= res!3167966 (lostCause!2059 r!15422))))

(declare-fun lt!2717035 () List!74901)

(assert (=> b!8011808 (and (= testedSuffix!271 lt!2717035) (= lt!2717035 testedSuffix!271))))

(declare-datatypes ((Unit!170810 0))(
  ( (Unit!170811) )
))
(declare-fun lt!2717032 () Unit!170810)

(declare-fun lemmaSamePrefixThenSameSuffix!3081 (List!74901 List!74901 List!74901 List!74901 List!74901) Unit!170810)

(assert (=> b!8011808 (= lt!2717032 (lemmaSamePrefixThenSameSuffix!3081 testedP!353 testedSuffix!271 testedP!353 lt!2717035 totalInput!1349))))

(declare-fun getSuffix!3919 (List!74901 List!74901) List!74901)

(assert (=> b!8011808 (= lt!2717035 (getSuffix!3919 totalInput!1349 testedP!353))))

(declare-fun b!8011809 () Bool)

(assert (=> b!8011809 (= e!4719546 (not e!4719544))))

(declare-fun res!3167968 () Bool)

(assert (=> b!8011809 (=> res!3167968 e!4719544)))

(declare-fun isPrefix!6724 (List!74901 List!74901) Bool)

(assert (=> b!8011809 (= res!3167968 (not (isPrefix!6724 testedP!353 totalInput!1349)))))

(assert (=> b!8011809 (isPrefix!6724 testedP!353 lt!2717037)))

(declare-fun lt!2717034 () Unit!170810)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3955 (List!74901 List!74901) Unit!170810)

(assert (=> b!8011809 (= lt!2717034 (lemmaConcatTwoListThenFirstIsPrefix!3955 testedP!353 testedSuffix!271))))

(declare-fun b!8011810 () Bool)

(declare-fun tp!2397842 () Bool)

(declare-fun tp!2397839 () Bool)

(assert (=> b!8011810 (= e!4719539 (and tp!2397842 tp!2397839))))

(declare-fun b!8011811 () Bool)

(declare-fun res!3167967 () Bool)

(assert (=> b!8011811 (=> (not res!3167967) (not e!4719546))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8011811 (= res!3167967 (= testedPSize!271 (size!43574 testedP!353)))))

(declare-fun b!8011812 () Bool)

(declare-fun tp!2397840 () Bool)

(declare-fun tp!2397838 () Bool)

(assert (=> b!8011812 (= e!4719539 (and tp!2397840 tp!2397838))))

(declare-fun b!8011813 () Bool)

(declare-fun res!3167971 () Bool)

(assert (=> b!8011813 (=> res!3167971 e!4719545)))

(assert (=> b!8011813 (= res!3167971 (not (= testedPSize!271 totalInputSize!629)))))

(declare-fun b!8011814 () Bool)

(declare-fun tp!2397837 () Bool)

(assert (=> b!8011814 (= e!4719540 (and tp_is_empty!53887 tp!2397837))))

(declare-fun b!8011815 () Bool)

(assert (=> b!8011815 (= e!4719538 (= (++!18498 testedP!353 Nil!74777) totalInput!1349))))

(declare-fun b!8011816 () Bool)

(assert (=> b!8011816 (= e!4719545 e!4719538)))

(declare-fun res!3167970 () Bool)

(assert (=> b!8011816 (=> res!3167970 e!4719538)))

(assert (=> b!8011816 (= res!3167970 (not (= testedP!353 totalInput!1349)))))

(assert (=> b!8011816 (= totalInput!1349 testedP!353)))

(declare-fun lt!2717033 () Unit!170810)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1738 (List!74901 List!74901 List!74901) Unit!170810)

(assert (=> b!8011816 (= lt!2717033 (lemmaIsPrefixSameLengthThenSameList!1738 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8011816 (isPrefix!6724 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717036 () Unit!170810)

(declare-fun lemmaIsPrefixRefl!4166 (List!74901 List!74901) Unit!170810)

(assert (=> b!8011816 (= lt!2717036 (lemmaIsPrefixRefl!4166 totalInput!1349 totalInput!1349))))

(declare-fun b!8011817 () Bool)

(declare-fun tp!2397836 () Bool)

(assert (=> b!8011817 (= e!4719542 (and tp_is_empty!53887 tp!2397836))))

(declare-fun b!8011818 () Bool)

(assert (=> b!8011818 (= e!4719539 tp_is_empty!53887)))

(assert (= (and start!753910 res!3167972) b!8011806))

(assert (= (and b!8011806 res!3167965) b!8011811))

(assert (= (and b!8011811 res!3167967) b!8011803))

(assert (= (and b!8011803 res!3167969) b!8011809))

(assert (= (and b!8011809 (not res!3167968)) b!8011808))

(assert (= (and b!8011808 (not res!3167966)) b!8011813))

(assert (= (and b!8011813 (not res!3167971)) b!8011816))

(assert (= (and b!8011816 (not res!3167970)) b!8011807))

(assert (= (and b!8011807 (not res!3167973)) b!8011815))

(assert (= (and start!753910 (is-Cons!74777 totalInput!1349)) b!8011817))

(assert (= (and start!753910 (is-Cons!74777 testedSuffix!271)) b!8011805))

(assert (= (and start!753910 (is-ElementMatch!21672 r!15422)) b!8011818))

(assert (= (and start!753910 (is-Concat!30671 r!15422)) b!8011812))

(assert (= (and start!753910 (is-Star!21672 r!15422)) b!8011804))

(assert (= (and start!753910 (is-Union!21672 r!15422)) b!8011810))

(assert (= (and start!753910 (is-Cons!74777 testedP!353)) b!8011814))

(declare-fun m!8375566 () Bool)

(assert (=> b!8011808 m!8375566))

(declare-fun m!8375568 () Bool)

(assert (=> b!8011808 m!8375568))

(declare-fun m!8375570 () Bool)

(assert (=> b!8011808 m!8375570))

(declare-fun m!8375572 () Bool)

(assert (=> b!8011803 m!8375572))

(declare-fun m!8375574 () Bool)

(assert (=> b!8011806 m!8375574))

(declare-fun m!8375576 () Bool)

(assert (=> b!8011815 m!8375576))

(declare-fun m!8375578 () Bool)

(assert (=> b!8011816 m!8375578))

(declare-fun m!8375580 () Bool)

(assert (=> b!8011816 m!8375580))

(declare-fun m!8375582 () Bool)

(assert (=> b!8011816 m!8375582))

(declare-fun m!8375584 () Bool)

(assert (=> b!8011811 m!8375584))

(declare-fun m!8375586 () Bool)

(assert (=> b!8011809 m!8375586))

(declare-fun m!8375588 () Bool)

(assert (=> b!8011809 m!8375588))

(declare-fun m!8375590 () Bool)

(assert (=> b!8011809 m!8375590))

(declare-fun m!8375592 () Bool)

(assert (=> b!8011807 m!8375592))

(declare-fun m!8375594 () Bool)

(assert (=> start!753910 m!8375594))

(push 1)

(assert (not b!8011808))

(assert (not b!8011805))

(assert (not b!8011809))

(assert (not b!8011814))

(assert (not start!753910))

(assert (not b!8011812))

(assert (not b!8011811))

(assert (not b!8011810))

(assert (not b!8011815))

(assert (not b!8011816))

(assert (not b!8011807))

(assert (not b!8011806))

(assert (not b!8011817))

(assert (not b!8011804))

(assert tp_is_empty!53887)

(assert (not b!8011803))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2388687 () Bool)

(declare-fun lt!2717064 () Int)

(assert (=> d!2388687 (>= lt!2717064 0)))

(declare-fun e!4719579 () Int)

(assert (=> d!2388687 (= lt!2717064 e!4719579)))

(declare-fun c!1470554 () Bool)

(assert (=> d!2388687 (= c!1470554 (is-Nil!74777 totalInput!1349))))

(assert (=> d!2388687 (= (size!43574 totalInput!1349) lt!2717064)))

(declare-fun b!8011877 () Bool)

(assert (=> b!8011877 (= e!4719579 0)))

(declare-fun b!8011878 () Bool)

(assert (=> b!8011878 (= e!4719579 (+ 1 (size!43574 (t!390644 totalInput!1349))))))

(assert (= (and d!2388687 c!1470554) b!8011877))

(assert (= (and d!2388687 (not c!1470554)) b!8011878))

(declare-fun m!8375636 () Bool)

(assert (=> b!8011878 m!8375636))

(assert (=> b!8011803 d!2388687))

(declare-fun d!2388691 () Bool)

(declare-fun lostCauseFct!607 (Regex!21672) Bool)

(assert (=> d!2388691 (= (lostCause!2059 r!15422) (lostCauseFct!607 r!15422))))

(declare-fun bs!1970877 () Bool)

(assert (= bs!1970877 d!2388691))

(declare-fun m!8375638 () Bool)

(assert (=> bs!1970877 m!8375638))

(assert (=> b!8011808 d!2388691))

(declare-fun d!2388693 () Bool)

(assert (=> d!2388693 (= testedSuffix!271 lt!2717035)))

(declare-fun lt!2717067 () Unit!170810)

(declare-fun choose!60346 (List!74901 List!74901 List!74901 List!74901 List!74901) Unit!170810)

(assert (=> d!2388693 (= lt!2717067 (choose!60346 testedP!353 testedSuffix!271 testedP!353 lt!2717035 totalInput!1349))))

(assert (=> d!2388693 (isPrefix!6724 testedP!353 totalInput!1349)))

(assert (=> d!2388693 (= (lemmaSamePrefixThenSameSuffix!3081 testedP!353 testedSuffix!271 testedP!353 lt!2717035 totalInput!1349) lt!2717067)))

(declare-fun bs!1970878 () Bool)

(assert (= bs!1970878 d!2388693))

(declare-fun m!8375640 () Bool)

(assert (=> bs!1970878 m!8375640))

(assert (=> bs!1970878 m!8375586))

(assert (=> b!8011808 d!2388693))

(declare-fun d!2388695 () Bool)

(declare-fun lt!2717072 () List!74901)

(assert (=> d!2388695 (= (++!18498 testedP!353 lt!2717072) totalInput!1349)))

(declare-fun e!4719586 () List!74901)

(assert (=> d!2388695 (= lt!2717072 e!4719586)))

(declare-fun c!1470559 () Bool)

(assert (=> d!2388695 (= c!1470559 (is-Cons!74777 testedP!353))))

(assert (=> d!2388695 (>= (size!43574 totalInput!1349) (size!43574 testedP!353))))

(assert (=> d!2388695 (= (getSuffix!3919 totalInput!1349 testedP!353) lt!2717072)))

(declare-fun b!8011891 () Bool)

(declare-fun tail!15873 (List!74901) List!74901)

(assert (=> b!8011891 (= e!4719586 (getSuffix!3919 (tail!15873 totalInput!1349) (t!390644 testedP!353)))))

(declare-fun b!8011892 () Bool)

(assert (=> b!8011892 (= e!4719586 totalInput!1349)))

(assert (= (and d!2388695 c!1470559) b!8011891))

(assert (= (and d!2388695 (not c!1470559)) b!8011892))

(declare-fun m!8375642 () Bool)

(assert (=> d!2388695 m!8375642))

(assert (=> d!2388695 m!8375572))

(assert (=> d!2388695 m!8375584))

(declare-fun m!8375644 () Bool)

(assert (=> b!8011891 m!8375644))

(assert (=> b!8011891 m!8375644))

(declare-fun m!8375646 () Bool)

(assert (=> b!8011891 m!8375646))

(assert (=> b!8011808 d!2388695))

(declare-fun b!8011907 () Bool)

(declare-fun e!4719595 () Bool)

(assert (=> b!8011907 (= e!4719595 (isPrefix!6724 (tail!15873 testedP!353) (tail!15873 totalInput!1349)))))

(declare-fun b!8011908 () Bool)

(declare-fun e!4719596 () Bool)

(assert (=> b!8011908 (= e!4719596 (>= (size!43574 totalInput!1349) (size!43574 testedP!353)))))

(declare-fun d!2388697 () Bool)

(assert (=> d!2388697 e!4719596))

(declare-fun res!3168018 () Bool)

(assert (=> d!2388697 (=> res!3168018 e!4719596)))

(declare-fun lt!2717076 () Bool)

(assert (=> d!2388697 (= res!3168018 (not lt!2717076))))

(declare-fun e!4719597 () Bool)

(assert (=> d!2388697 (= lt!2717076 e!4719597)))

(declare-fun res!3168016 () Bool)

(assert (=> d!2388697 (=> res!3168016 e!4719597)))

(assert (=> d!2388697 (= res!3168016 (is-Nil!74777 testedP!353))))

(assert (=> d!2388697 (= (isPrefix!6724 testedP!353 totalInput!1349) lt!2717076)))

(declare-fun b!8011905 () Bool)

(assert (=> b!8011905 (= e!4719597 e!4719595)))

(declare-fun res!3168017 () Bool)

(assert (=> b!8011905 (=> (not res!3168017) (not e!4719595))))

(assert (=> b!8011905 (= res!3168017 (not (is-Nil!74777 totalInput!1349)))))

(declare-fun b!8011906 () Bool)

(declare-fun res!3168015 () Bool)

(assert (=> b!8011906 (=> (not res!3168015) (not e!4719595))))

(declare-fun head!16350 (List!74901) C!43682)

(assert (=> b!8011906 (= res!3168015 (= (head!16350 testedP!353) (head!16350 totalInput!1349)))))

(assert (= (and d!2388697 (not res!3168016)) b!8011905))

(assert (= (and b!8011905 res!3168017) b!8011906))

(assert (= (and b!8011906 res!3168015) b!8011907))

(assert (= (and d!2388697 (not res!3168018)) b!8011908))

(declare-fun m!8375654 () Bool)

(assert (=> b!8011907 m!8375654))

(assert (=> b!8011907 m!8375644))

(assert (=> b!8011907 m!8375654))

(assert (=> b!8011907 m!8375644))

(declare-fun m!8375660 () Bool)

(assert (=> b!8011907 m!8375660))

(assert (=> b!8011908 m!8375572))

(assert (=> b!8011908 m!8375584))

(declare-fun m!8375664 () Bool)

(assert (=> b!8011906 m!8375664))

(declare-fun m!8375666 () Bool)

(assert (=> b!8011906 m!8375666))

(assert (=> b!8011809 d!2388697))

(declare-fun b!8011911 () Bool)

(declare-fun e!4719598 () Bool)

(assert (=> b!8011911 (= e!4719598 (isPrefix!6724 (tail!15873 testedP!353) (tail!15873 lt!2717037)))))

(declare-fun b!8011912 () Bool)

(declare-fun e!4719599 () Bool)

(assert (=> b!8011912 (= e!4719599 (>= (size!43574 lt!2717037) (size!43574 testedP!353)))))

(declare-fun d!2388701 () Bool)

(assert (=> d!2388701 e!4719599))

(declare-fun res!3168022 () Bool)

(assert (=> d!2388701 (=> res!3168022 e!4719599)))

(declare-fun lt!2717077 () Bool)

(assert (=> d!2388701 (= res!3168022 (not lt!2717077))))

(declare-fun e!4719600 () Bool)

(assert (=> d!2388701 (= lt!2717077 e!4719600)))

(declare-fun res!3168020 () Bool)

(assert (=> d!2388701 (=> res!3168020 e!4719600)))

(assert (=> d!2388701 (= res!3168020 (is-Nil!74777 testedP!353))))

(assert (=> d!2388701 (= (isPrefix!6724 testedP!353 lt!2717037) lt!2717077)))

(declare-fun b!8011909 () Bool)

(assert (=> b!8011909 (= e!4719600 e!4719598)))

(declare-fun res!3168021 () Bool)

(assert (=> b!8011909 (=> (not res!3168021) (not e!4719598))))

(assert (=> b!8011909 (= res!3168021 (not (is-Nil!74777 lt!2717037)))))

(declare-fun b!8011910 () Bool)

(declare-fun res!3168019 () Bool)

(assert (=> b!8011910 (=> (not res!3168019) (not e!4719598))))

(assert (=> b!8011910 (= res!3168019 (= (head!16350 testedP!353) (head!16350 lt!2717037)))))

(assert (= (and d!2388701 (not res!3168020)) b!8011909))

(assert (= (and b!8011909 res!3168021) b!8011910))

(assert (= (and b!8011910 res!3168019) b!8011911))

(assert (= (and d!2388701 (not res!3168022)) b!8011912))

(assert (=> b!8011911 m!8375654))

(declare-fun m!8375668 () Bool)

(assert (=> b!8011911 m!8375668))

(assert (=> b!8011911 m!8375654))

(assert (=> b!8011911 m!8375668))

(declare-fun m!8375670 () Bool)

(assert (=> b!8011911 m!8375670))

(declare-fun m!8375672 () Bool)

(assert (=> b!8011912 m!8375672))

(assert (=> b!8011912 m!8375584))

(assert (=> b!8011910 m!8375664))

(declare-fun m!8375674 () Bool)

(assert (=> b!8011910 m!8375674))

(assert (=> b!8011809 d!2388701))

(declare-fun d!2388703 () Bool)

(assert (=> d!2388703 (isPrefix!6724 testedP!353 (++!18498 testedP!353 testedSuffix!271))))

(declare-fun lt!2717082 () Unit!170810)

(declare-fun choose!60347 (List!74901 List!74901) Unit!170810)

(assert (=> d!2388703 (= lt!2717082 (choose!60347 testedP!353 testedSuffix!271))))

(assert (=> d!2388703 (= (lemmaConcatTwoListThenFirstIsPrefix!3955 testedP!353 testedSuffix!271) lt!2717082)))

(declare-fun bs!1970879 () Bool)

(assert (= bs!1970879 d!2388703))

(assert (=> bs!1970879 m!8375574))

(assert (=> bs!1970879 m!8375574))

(declare-fun m!8375676 () Bool)

(assert (=> bs!1970879 m!8375676))

(declare-fun m!8375678 () Bool)

(assert (=> bs!1970879 m!8375678))

(assert (=> b!8011809 d!2388703))

(declare-fun d!2388705 () Bool)

(declare-fun e!4719608 () Bool)

(assert (=> d!2388705 e!4719608))

(declare-fun res!3168028 () Bool)

(assert (=> d!2388705 (=> (not res!3168028) (not e!4719608))))

(declare-fun lt!2717086 () List!74901)

(declare-fun content!15909 (List!74901) (Set C!43682))

(assert (=> d!2388705 (= res!3168028 (= (content!15909 lt!2717086) (set.union (content!15909 testedP!353) (content!15909 Nil!74777))))))

(declare-fun e!4719609 () List!74901)

(assert (=> d!2388705 (= lt!2717086 e!4719609)))

(declare-fun c!1470566 () Bool)

(assert (=> d!2388705 (= c!1470566 (is-Nil!74777 testedP!353))))

(assert (=> d!2388705 (= (++!18498 testedP!353 Nil!74777) lt!2717086)))

(declare-fun b!8011927 () Bool)

(assert (=> b!8011927 (= e!4719609 Nil!74777)))

(declare-fun b!8011929 () Bool)

(declare-fun res!3168027 () Bool)

(assert (=> b!8011929 (=> (not res!3168027) (not e!4719608))))

(assert (=> b!8011929 (= res!3168027 (= (size!43574 lt!2717086) (+ (size!43574 testedP!353) (size!43574 Nil!74777))))))

(declare-fun b!8011928 () Bool)

(assert (=> b!8011928 (= e!4719609 (Cons!74777 (h!81225 testedP!353) (++!18498 (t!390644 testedP!353) Nil!74777)))))

(declare-fun b!8011930 () Bool)

(assert (=> b!8011930 (= e!4719608 (or (not (= Nil!74777 Nil!74777)) (= lt!2717086 testedP!353)))))

(assert (= (and d!2388705 c!1470566) b!8011927))

(assert (= (and d!2388705 (not c!1470566)) b!8011928))

(assert (= (and d!2388705 res!3168028) b!8011929))

(assert (= (and b!8011929 res!3168027) b!8011930))

(declare-fun m!8375682 () Bool)

(assert (=> d!2388705 m!8375682))

(declare-fun m!8375684 () Bool)

(assert (=> d!2388705 m!8375684))

(declare-fun m!8375686 () Bool)

(assert (=> d!2388705 m!8375686))

(declare-fun m!8375688 () Bool)

(assert (=> b!8011929 m!8375688))

(assert (=> b!8011929 m!8375584))

(declare-fun m!8375690 () Bool)

(assert (=> b!8011929 m!8375690))

(declare-fun m!8375692 () Bool)

(assert (=> b!8011928 m!8375692))

(assert (=> b!8011815 d!2388705))

(declare-fun d!2388709 () Bool)

(declare-fun lt!2717087 () Int)

(assert (=> d!2388709 (>= lt!2717087 0)))

(declare-fun e!4719610 () Int)

(assert (=> d!2388709 (= lt!2717087 e!4719610)))

(declare-fun c!1470567 () Bool)

(assert (=> d!2388709 (= c!1470567 (is-Nil!74777 testedP!353))))

(assert (=> d!2388709 (= (size!43574 testedP!353) lt!2717087)))

(declare-fun b!8011931 () Bool)

(assert (=> b!8011931 (= e!4719610 0)))

(declare-fun b!8011932 () Bool)

(assert (=> b!8011932 (= e!4719610 (+ 1 (size!43574 (t!390644 testedP!353))))))

(assert (= (and d!2388709 c!1470567) b!8011931))

(assert (= (and d!2388709 (not c!1470567)) b!8011932))

(declare-fun m!8375694 () Bool)

(assert (=> b!8011932 m!8375694))

(assert (=> b!8011811 d!2388709))

(declare-fun b!8011969 () Bool)

(declare-fun e!4719644 () Bool)

(declare-fun e!4719641 () Bool)

(assert (=> b!8011969 (= e!4719644 e!4719641)))

(declare-fun c!1470576 () Bool)

(assert (=> b!8011969 (= c!1470576 (is-Union!21672 r!15422))))

(declare-fun b!8011970 () Bool)

(declare-fun e!4719642 () Bool)

(declare-fun call!744225 () Bool)

(assert (=> b!8011970 (= e!4719642 call!744225)))

(declare-fun b!8011971 () Bool)

(assert (=> b!8011971 (= e!4719644 e!4719642)))

(declare-fun res!3168051 () Bool)

(assert (=> b!8011971 (= res!3168051 (not (nullable!9718 (reg!22001 r!15422))))))

(assert (=> b!8011971 (=> (not res!3168051) (not e!4719642))))

(declare-fun bm!744220 () Bool)

(declare-fun call!744226 () Bool)

(assert (=> bm!744220 (= call!744226 call!744225)))

(declare-fun d!2388711 () Bool)

(declare-fun res!3168052 () Bool)

(declare-fun e!4719643 () Bool)

(assert (=> d!2388711 (=> res!3168052 e!4719643)))

(assert (=> d!2388711 (= res!3168052 (is-ElementMatch!21672 r!15422))))

(assert (=> d!2388711 (= (validRegex!11976 r!15422) e!4719643)))

(declare-fun c!1470577 () Bool)

(declare-fun bm!744221 () Bool)

(assert (=> bm!744221 (= call!744225 (validRegex!11976 (ite c!1470577 (reg!22001 r!15422) (ite c!1470576 (regTwo!43857 r!15422) (regTwo!43856 r!15422)))))))

(declare-fun bm!744222 () Bool)

(declare-fun call!744227 () Bool)

(assert (=> bm!744222 (= call!744227 (validRegex!11976 (ite c!1470576 (regOne!43857 r!15422) (regOne!43856 r!15422))))))

(declare-fun b!8011972 () Bool)

(assert (=> b!8011972 (= e!4719643 e!4719644)))

(assert (=> b!8011972 (= c!1470577 (is-Star!21672 r!15422))))

(declare-fun b!8011973 () Bool)

(declare-fun e!4719639 () Bool)

(declare-fun e!4719640 () Bool)

(assert (=> b!8011973 (= e!4719639 e!4719640)))

(declare-fun res!3168049 () Bool)

(assert (=> b!8011973 (=> (not res!3168049) (not e!4719640))))

(assert (=> b!8011973 (= res!3168049 call!744227)))

(declare-fun b!8011974 () Bool)

(declare-fun res!3168050 () Bool)

(assert (=> b!8011974 (=> res!3168050 e!4719639)))

(assert (=> b!8011974 (= res!3168050 (not (is-Concat!30671 r!15422)))))

(assert (=> b!8011974 (= e!4719641 e!4719639)))

(declare-fun b!8011975 () Bool)

(declare-fun e!4719645 () Bool)

(assert (=> b!8011975 (= e!4719645 call!744226)))

(declare-fun b!8011976 () Bool)

(assert (=> b!8011976 (= e!4719640 call!744226)))

(declare-fun b!8011977 () Bool)

(declare-fun res!3168053 () Bool)

(assert (=> b!8011977 (=> (not res!3168053) (not e!4719645))))

(assert (=> b!8011977 (= res!3168053 call!744227)))

(assert (=> b!8011977 (= e!4719641 e!4719645)))

(assert (= (and d!2388711 (not res!3168052)) b!8011972))

(assert (= (and b!8011972 c!1470577) b!8011971))

(assert (= (and b!8011972 (not c!1470577)) b!8011969))

(assert (= (and b!8011971 res!3168051) b!8011970))

(assert (= (and b!8011969 c!1470576) b!8011977))

(assert (= (and b!8011969 (not c!1470576)) b!8011974))

(assert (= (and b!8011977 res!3168053) b!8011975))

(assert (= (and b!8011974 (not res!3168050)) b!8011973))

(assert (= (and b!8011973 res!3168049) b!8011976))

(assert (= (or b!8011975 b!8011976) bm!744220))

(assert (= (or b!8011977 b!8011973) bm!744222))

(assert (= (or b!8011970 bm!744220) bm!744221))

(declare-fun m!8375696 () Bool)

(assert (=> b!8011971 m!8375696))

(declare-fun m!8375698 () Bool)

(assert (=> bm!744221 m!8375698))

(declare-fun m!8375700 () Bool)

(assert (=> bm!744222 m!8375700))

(assert (=> start!753910 d!2388711))

(declare-fun d!2388713 () Bool)

(assert (=> d!2388713 (= totalInput!1349 testedP!353)))

(declare-fun lt!2717090 () Unit!170810)

(declare-fun choose!60349 (List!74901 List!74901 List!74901) Unit!170810)

(assert (=> d!2388713 (= lt!2717090 (choose!60349 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2388713 (isPrefix!6724 totalInput!1349 totalInput!1349)))

(assert (=> d!2388713 (= (lemmaIsPrefixSameLengthThenSameList!1738 totalInput!1349 testedP!353 totalInput!1349) lt!2717090)))

(declare-fun bs!1970880 () Bool)

(assert (= bs!1970880 d!2388713))

(declare-fun m!8375702 () Bool)

(assert (=> bs!1970880 m!8375702))

(assert (=> bs!1970880 m!8375580))

(assert (=> b!8011816 d!2388713))

(declare-fun b!8011980 () Bool)

(declare-fun e!4719646 () Bool)

(assert (=> b!8011980 (= e!4719646 (isPrefix!6724 (tail!15873 totalInput!1349) (tail!15873 totalInput!1349)))))

(declare-fun b!8011981 () Bool)

(declare-fun e!4719647 () Bool)

(assert (=> b!8011981 (= e!4719647 (>= (size!43574 totalInput!1349) (size!43574 totalInput!1349)))))

(declare-fun d!2388715 () Bool)

(assert (=> d!2388715 e!4719647))

(declare-fun res!3168057 () Bool)

(assert (=> d!2388715 (=> res!3168057 e!4719647)))

(declare-fun lt!2717091 () Bool)

(assert (=> d!2388715 (= res!3168057 (not lt!2717091))))

(declare-fun e!4719648 () Bool)

(assert (=> d!2388715 (= lt!2717091 e!4719648)))

(declare-fun res!3168055 () Bool)

(assert (=> d!2388715 (=> res!3168055 e!4719648)))

(assert (=> d!2388715 (= res!3168055 (is-Nil!74777 totalInput!1349))))

(assert (=> d!2388715 (= (isPrefix!6724 totalInput!1349 totalInput!1349) lt!2717091)))

(declare-fun b!8011978 () Bool)

(assert (=> b!8011978 (= e!4719648 e!4719646)))

(declare-fun res!3168056 () Bool)

(assert (=> b!8011978 (=> (not res!3168056) (not e!4719646))))

(assert (=> b!8011978 (= res!3168056 (not (is-Nil!74777 totalInput!1349)))))

(declare-fun b!8011979 () Bool)

(declare-fun res!3168054 () Bool)

(assert (=> b!8011979 (=> (not res!3168054) (not e!4719646))))

(assert (=> b!8011979 (= res!3168054 (= (head!16350 totalInput!1349) (head!16350 totalInput!1349)))))

(assert (= (and d!2388715 (not res!3168055)) b!8011978))

(assert (= (and b!8011978 res!3168056) b!8011979))

(assert (= (and b!8011979 res!3168054) b!8011980))

(assert (= (and d!2388715 (not res!3168057)) b!8011981))

(assert (=> b!8011980 m!8375644))

(assert (=> b!8011980 m!8375644))

(assert (=> b!8011980 m!8375644))

(assert (=> b!8011980 m!8375644))

(declare-fun m!8375704 () Bool)

(assert (=> b!8011980 m!8375704))

(assert (=> b!8011981 m!8375572))

(assert (=> b!8011981 m!8375572))

(assert (=> b!8011979 m!8375666))

(assert (=> b!8011979 m!8375666))

(assert (=> b!8011816 d!2388715))

(declare-fun d!2388717 () Bool)

(assert (=> d!2388717 (isPrefix!6724 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717094 () Unit!170810)

(declare-fun choose!60350 (List!74901 List!74901) Unit!170810)

(assert (=> d!2388717 (= lt!2717094 (choose!60350 totalInput!1349 totalInput!1349))))

(assert (=> d!2388717 (= (lemmaIsPrefixRefl!4166 totalInput!1349 totalInput!1349) lt!2717094)))

(declare-fun bs!1970881 () Bool)

(assert (= bs!1970881 d!2388717))

(assert (=> bs!1970881 m!8375580))

(declare-fun m!8375706 () Bool)

(assert (=> bs!1970881 m!8375706))

(assert (=> b!8011816 d!2388717))

(declare-fun d!2388719 () Bool)

(declare-fun e!4719649 () Bool)

(assert (=> d!2388719 e!4719649))

(declare-fun res!3168059 () Bool)

(assert (=> d!2388719 (=> (not res!3168059) (not e!4719649))))

(declare-fun lt!2717095 () List!74901)

(assert (=> d!2388719 (= res!3168059 (= (content!15909 lt!2717095) (set.union (content!15909 testedP!353) (content!15909 testedSuffix!271))))))

(declare-fun e!4719650 () List!74901)

(assert (=> d!2388719 (= lt!2717095 e!4719650)))

(declare-fun c!1470578 () Bool)

(assert (=> d!2388719 (= c!1470578 (is-Nil!74777 testedP!353))))

(assert (=> d!2388719 (= (++!18498 testedP!353 testedSuffix!271) lt!2717095)))

(declare-fun b!8011982 () Bool)

(assert (=> b!8011982 (= e!4719650 testedSuffix!271)))

(declare-fun b!8011984 () Bool)

(declare-fun res!3168058 () Bool)

(assert (=> b!8011984 (=> (not res!3168058) (not e!4719649))))

(assert (=> b!8011984 (= res!3168058 (= (size!43574 lt!2717095) (+ (size!43574 testedP!353) (size!43574 testedSuffix!271))))))

(declare-fun b!8011983 () Bool)

(assert (=> b!8011983 (= e!4719650 (Cons!74777 (h!81225 testedP!353) (++!18498 (t!390644 testedP!353) testedSuffix!271)))))

(declare-fun b!8011985 () Bool)

(assert (=> b!8011985 (= e!4719649 (or (not (= testedSuffix!271 Nil!74777)) (= lt!2717095 testedP!353)))))

(assert (= (and d!2388719 c!1470578) b!8011982))

(assert (= (and d!2388719 (not c!1470578)) b!8011983))

(assert (= (and d!2388719 res!3168059) b!8011984))

(assert (= (and b!8011984 res!3168058) b!8011985))

(declare-fun m!8375708 () Bool)

(assert (=> d!2388719 m!8375708))

(assert (=> d!2388719 m!8375684))

(declare-fun m!8375710 () Bool)

(assert (=> d!2388719 m!8375710))

(declare-fun m!8375712 () Bool)

(assert (=> b!8011984 m!8375712))

(assert (=> b!8011984 m!8375584))

(declare-fun m!8375714 () Bool)

(assert (=> b!8011984 m!8375714))

(declare-fun m!8375716 () Bool)

(assert (=> b!8011983 m!8375716))

(assert (=> b!8011806 d!2388719))

(declare-fun d!2388721 () Bool)

(declare-fun nullableFct!3838 (Regex!21672) Bool)

(assert (=> d!2388721 (= (nullable!9718 r!15422) (nullableFct!3838 r!15422))))

(declare-fun bs!1970882 () Bool)

(assert (= bs!1970882 d!2388721))

(declare-fun m!8375718 () Bool)

(assert (=> bs!1970882 m!8375718))

(assert (=> b!8011807 d!2388721))

(declare-fun b!8011999 () Bool)

(declare-fun e!4719660 () Bool)

(declare-fun tp!2397869 () Bool)

(assert (=> b!8011999 (= e!4719660 (and tp_is_empty!53887 tp!2397869))))

(assert (=> b!8011814 (= tp!2397837 e!4719660)))

(assert (= (and b!8011814 (is-Cons!74777 (t!390644 testedP!353))) b!8011999))

(declare-fun b!8012011 () Bool)

(declare-fun e!4719663 () Bool)

(declare-fun tp!2397883 () Bool)

(declare-fun tp!2397882 () Bool)

(assert (=> b!8012011 (= e!4719663 (and tp!2397883 tp!2397882))))

(declare-fun b!8012012 () Bool)

(declare-fun tp!2397880 () Bool)

(assert (=> b!8012012 (= e!4719663 tp!2397880)))

(declare-fun b!8012010 () Bool)

(assert (=> b!8012010 (= e!4719663 tp_is_empty!53887)))

(declare-fun b!8012013 () Bool)

(declare-fun tp!2397884 () Bool)

(declare-fun tp!2397881 () Bool)

(assert (=> b!8012013 (= e!4719663 (and tp!2397884 tp!2397881))))

(assert (=> b!8011804 (= tp!2397841 e!4719663)))

(assert (= (and b!8011804 (is-ElementMatch!21672 (reg!22001 r!15422))) b!8012010))

(assert (= (and b!8011804 (is-Concat!30671 (reg!22001 r!15422))) b!8012011))

(assert (= (and b!8011804 (is-Star!21672 (reg!22001 r!15422))) b!8012012))

(assert (= (and b!8011804 (is-Union!21672 (reg!22001 r!15422))) b!8012013))

(declare-fun b!8012014 () Bool)

(declare-fun e!4719664 () Bool)

(declare-fun tp!2397885 () Bool)

(assert (=> b!8012014 (= e!4719664 (and tp_is_empty!53887 tp!2397885))))

(assert (=> b!8011805 (= tp!2397835 e!4719664)))

(assert (= (and b!8011805 (is-Cons!74777 (t!390644 testedSuffix!271))) b!8012014))

(declare-fun b!8012016 () Bool)

(declare-fun e!4719665 () Bool)

(declare-fun tp!2397889 () Bool)

(declare-fun tp!2397888 () Bool)

(assert (=> b!8012016 (= e!4719665 (and tp!2397889 tp!2397888))))

(declare-fun b!8012017 () Bool)

(declare-fun tp!2397886 () Bool)

(assert (=> b!8012017 (= e!4719665 tp!2397886)))

(declare-fun b!8012015 () Bool)

(assert (=> b!8012015 (= e!4719665 tp_is_empty!53887)))

(declare-fun b!8012018 () Bool)

(declare-fun tp!2397890 () Bool)

(declare-fun tp!2397887 () Bool)

(assert (=> b!8012018 (= e!4719665 (and tp!2397890 tp!2397887))))

(assert (=> b!8011810 (= tp!2397842 e!4719665)))

(assert (= (and b!8011810 (is-ElementMatch!21672 (regOne!43857 r!15422))) b!8012015))

(assert (= (and b!8011810 (is-Concat!30671 (regOne!43857 r!15422))) b!8012016))

(assert (= (and b!8011810 (is-Star!21672 (regOne!43857 r!15422))) b!8012017))

(assert (= (and b!8011810 (is-Union!21672 (regOne!43857 r!15422))) b!8012018))

(declare-fun b!8012020 () Bool)

(declare-fun e!4719666 () Bool)

(declare-fun tp!2397894 () Bool)

(declare-fun tp!2397893 () Bool)

(assert (=> b!8012020 (= e!4719666 (and tp!2397894 tp!2397893))))

(declare-fun b!8012021 () Bool)

(declare-fun tp!2397891 () Bool)

(assert (=> b!8012021 (= e!4719666 tp!2397891)))

(declare-fun b!8012019 () Bool)

(assert (=> b!8012019 (= e!4719666 tp_is_empty!53887)))

(declare-fun b!8012022 () Bool)

(declare-fun tp!2397895 () Bool)

(declare-fun tp!2397892 () Bool)

(assert (=> b!8012022 (= e!4719666 (and tp!2397895 tp!2397892))))

(assert (=> b!8011810 (= tp!2397839 e!4719666)))

(assert (= (and b!8011810 (is-ElementMatch!21672 (regTwo!43857 r!15422))) b!8012019))

(assert (= (and b!8011810 (is-Concat!30671 (regTwo!43857 r!15422))) b!8012020))

(assert (= (and b!8011810 (is-Star!21672 (regTwo!43857 r!15422))) b!8012021))

(assert (= (and b!8011810 (is-Union!21672 (regTwo!43857 r!15422))) b!8012022))

(declare-fun b!8012023 () Bool)

(declare-fun e!4719667 () Bool)

(declare-fun tp!2397896 () Bool)

(assert (=> b!8012023 (= e!4719667 (and tp_is_empty!53887 tp!2397896))))

(assert (=> b!8011817 (= tp!2397836 e!4719667)))

(assert (= (and b!8011817 (is-Cons!74777 (t!390644 totalInput!1349))) b!8012023))

(declare-fun b!8012025 () Bool)

(declare-fun e!4719668 () Bool)

(declare-fun tp!2397900 () Bool)

(declare-fun tp!2397899 () Bool)

(assert (=> b!8012025 (= e!4719668 (and tp!2397900 tp!2397899))))

(declare-fun b!8012026 () Bool)

(declare-fun tp!2397897 () Bool)

(assert (=> b!8012026 (= e!4719668 tp!2397897)))

(declare-fun b!8012024 () Bool)

(assert (=> b!8012024 (= e!4719668 tp_is_empty!53887)))

(declare-fun b!8012027 () Bool)

(declare-fun tp!2397901 () Bool)

(declare-fun tp!2397898 () Bool)

(assert (=> b!8012027 (= e!4719668 (and tp!2397901 tp!2397898))))

(assert (=> b!8011812 (= tp!2397840 e!4719668)))

(assert (= (and b!8011812 (is-ElementMatch!21672 (regOne!43856 r!15422))) b!8012024))

(assert (= (and b!8011812 (is-Concat!30671 (regOne!43856 r!15422))) b!8012025))

(assert (= (and b!8011812 (is-Star!21672 (regOne!43856 r!15422))) b!8012026))

(assert (= (and b!8011812 (is-Union!21672 (regOne!43856 r!15422))) b!8012027))

(declare-fun b!8012029 () Bool)

(declare-fun e!4719669 () Bool)

(declare-fun tp!2397905 () Bool)

(declare-fun tp!2397904 () Bool)

(assert (=> b!8012029 (= e!4719669 (and tp!2397905 tp!2397904))))

(declare-fun b!8012030 () Bool)

(declare-fun tp!2397902 () Bool)

(assert (=> b!8012030 (= e!4719669 tp!2397902)))

(declare-fun b!8012028 () Bool)

(assert (=> b!8012028 (= e!4719669 tp_is_empty!53887)))

(declare-fun b!8012031 () Bool)

(declare-fun tp!2397906 () Bool)

(declare-fun tp!2397903 () Bool)

(assert (=> b!8012031 (= e!4719669 (and tp!2397906 tp!2397903))))

(assert (=> b!8011812 (= tp!2397838 e!4719669)))

(assert (= (and b!8011812 (is-ElementMatch!21672 (regTwo!43856 r!15422))) b!8012028))

(assert (= (and b!8011812 (is-Concat!30671 (regTwo!43856 r!15422))) b!8012029))

(assert (= (and b!8011812 (is-Star!21672 (regTwo!43856 r!15422))) b!8012030))

(assert (= (and b!8011812 (is-Union!21672 (regTwo!43856 r!15422))) b!8012031))

(push 1)

(assert (not b!8011928))

(assert (not b!8011983))

(assert (not d!2388713))

(assert (not d!2388691))

(assert (not b!8011979))

(assert (not b!8011984))

(assert (not b!8012013))

(assert (not d!2388705))

(assert (not b!8012026))

(assert (not b!8011906))

(assert (not b!8012016))

(assert (not b!8012031))

(assert (not d!2388719))

(assert (not b!8012023))

(assert (not b!8012022))

(assert (not bm!744222))

(assert (not b!8012014))

(assert (not b!8011929))

(assert (not b!8011908))

(assert (not b!8012012))

(assert (not b!8012020))

(assert (not b!8012027))

(assert (not d!2388695))

(assert (not b!8012017))

(assert (not b!8011999))

(assert (not b!8012018))

(assert (not b!8012021))

(assert (not b!8011911))

(assert (not b!8012011))

(assert (not d!2388721))

(assert (not b!8011932))

(assert tp_is_empty!53887)

(assert (not b!8011981))

(assert (not b!8012029))

(assert (not b!8011980))

(assert (not b!8011907))

(assert (not d!2388693))

(assert (not b!8011910))

(assert (not b!8011891))

(assert (not d!2388703))

(assert (not b!8011878))

(assert (not bm!744221))

(assert (not d!2388717))

(assert (not b!8012025))

(assert (not b!8011971))

(assert (not b!8012030))

(assert (not b!8011912))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

