; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546144 () Bool)

(assert start!546144)

(declare-fun res!2195115 () Bool)

(declare-fun e!3216987 () Bool)

(assert (=> start!546144 (=> (not res!2195115) (not e!3216987))))

(declare-datatypes ((C!29338 0))(
  ( (C!29339 (val!24371 Int)) )
))
(declare-datatypes ((List!60025 0))(
  ( (Nil!59901) (Cons!59901 (h!66349 C!29338) (t!373178 List!60025)) )
))
(declare-fun input!5707 () List!60025)

(declare-fun isPrefix!5667 (List!60025 List!60025) Bool)

(assert (=> start!546144 (= res!2195115 (isPrefix!5667 Nil!59901 input!5707))))

(assert (=> start!546144 e!3216987))

(declare-fun e!3216988 () Bool)

(assert (=> start!546144 e!3216988))

(declare-fun condSetEmpty!31391 () Bool)

(declare-datatypes ((Regex!14536 0))(
  ( (ElementMatch!14536 (c!888233 C!29338)) (Concat!23381 (regOne!29584 Regex!14536) (regTwo!29584 Regex!14536)) (EmptyExpr!14536) (Star!14536 (reg!14865 Regex!14536)) (EmptyLang!14536) (Union!14536 (regOne!29585 Regex!14536) (regTwo!29585 Regex!14536)) )
))
(declare-datatypes ((List!60026 0))(
  ( (Nil!59902) (Cons!59902 (h!66350 Regex!14536) (t!373179 List!60026)) )
))
(declare-datatypes ((Context!7840 0))(
  ( (Context!7841 (exprs!4420 List!60026)) )
))
(declare-fun z!4413 () (Set Context!7840))

(assert (=> start!546144 (= condSetEmpty!31391 (= z!4413 (as set.empty (Set Context!7840))))))

(declare-fun setRes!31391 () Bool)

(assert (=> start!546144 setRes!31391))

(declare-fun b!5163080 () Bool)

(declare-fun ++!13085 (List!60025 List!60025) List!60025)

(assert (=> b!5163080 (= e!3216987 (not (= (++!13085 Nil!59901 input!5707) input!5707)))))

(declare-fun e!3216985 () Bool)

(assert (=> b!5163080 e!3216985))

(declare-fun res!2195117 () Bool)

(assert (=> b!5163080 (=> res!2195117 e!3216985)))

(declare-datatypes ((tuple2!63646 0))(
  ( (tuple2!63647 (_1!35126 List!60025) (_2!35126 List!60025)) )
))
(declare-fun lt!2122798 () tuple2!63646)

(declare-fun isEmpty!32086 (List!60025) Bool)

(assert (=> b!5163080 (= res!2195117 (isEmpty!32086 (_1!35126 lt!2122798)))))

(declare-fun findLongestMatchInnerZipper!204 ((Set Context!7840) List!60025 Int List!60025 List!60025 Int) tuple2!63646)

(declare-fun size!39572 (List!60025) Int)

(declare-fun getSuffix!3325 (List!60025 List!60025) List!60025)

(assert (=> b!5163080 (= lt!2122798 (findLongestMatchInnerZipper!204 z!4413 Nil!59901 (size!39572 Nil!59901) (getSuffix!3325 input!5707 Nil!59901) input!5707 (size!39572 input!5707)))))

(declare-datatypes ((Unit!151337 0))(
  ( (Unit!151338) )
))
(declare-fun lt!2122799 () Unit!151337)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!2 ((Set Context!7840) (Set Context!7840) List!60025 List!60025) Unit!151337)

(assert (=> b!5163080 (= lt!2122799 (longestMatchIsAcceptedByMatchOrIsEmptyRec!2 z!4413 z!4413 Nil!59901 input!5707))))

(declare-fun setIsEmpty!31391 () Bool)

(assert (=> setIsEmpty!31391 setRes!31391))

(declare-fun b!5163081 () Bool)

(declare-fun tp_is_empty!38321 () Bool)

(declare-fun tp!1448130 () Bool)

(assert (=> b!5163081 (= e!3216988 (and tp_is_empty!38321 tp!1448130))))

(declare-fun b!5163082 () Bool)

(declare-fun matchZipper!938 ((Set Context!7840) List!60025) Bool)

(assert (=> b!5163082 (= e!3216985 (matchZipper!938 z!4413 (_1!35126 lt!2122798)))))

(declare-fun b!5163083 () Bool)

(declare-fun res!2195116 () Bool)

(assert (=> b!5163083 (=> (not res!2195116) (not e!3216987))))

(declare-fun derivationZipper!159 ((Set Context!7840) List!60025) (Set Context!7840))

(assert (=> b!5163083 (= res!2195116 (= (derivationZipper!159 z!4413 Nil!59901) z!4413))))

(declare-fun b!5163084 () Bool)

(declare-fun e!3216986 () Bool)

(declare-fun tp!1448131 () Bool)

(assert (=> b!5163084 (= e!3216986 tp!1448131)))

(declare-fun tp!1448132 () Bool)

(declare-fun setNonEmpty!31391 () Bool)

(declare-fun setElem!31391 () Context!7840)

(declare-fun inv!79585 (Context!7840) Bool)

(assert (=> setNonEmpty!31391 (= setRes!31391 (and tp!1448132 (inv!79585 setElem!31391) e!3216986))))

(declare-fun setRest!31391 () (Set Context!7840))

(assert (=> setNonEmpty!31391 (= z!4413 (set.union (set.insert setElem!31391 (as set.empty (Set Context!7840))) setRest!31391))))

(assert (= (and start!546144 res!2195115) b!5163083))

(assert (= (and b!5163083 res!2195116) b!5163080))

(assert (= (and b!5163080 (not res!2195117)) b!5163082))

(assert (= (and start!546144 (is-Cons!59901 input!5707)) b!5163081))

(assert (= (and start!546144 condSetEmpty!31391) setIsEmpty!31391))

(assert (= (and start!546144 (not condSetEmpty!31391)) setNonEmpty!31391))

(assert (= setNonEmpty!31391 b!5163084))

(declare-fun m!6213716 () Bool)

(assert (=> b!5163083 m!6213716))

(declare-fun m!6213718 () Bool)

(assert (=> b!5163082 m!6213718))

(declare-fun m!6213720 () Bool)

(assert (=> b!5163080 m!6213720))

(declare-fun m!6213722 () Bool)

(assert (=> b!5163080 m!6213722))

(declare-fun m!6213724 () Bool)

(assert (=> b!5163080 m!6213724))

(declare-fun m!6213726 () Bool)

(assert (=> b!5163080 m!6213726))

(assert (=> b!5163080 m!6213726))

(assert (=> b!5163080 m!6213724))

(declare-fun m!6213728 () Bool)

(assert (=> b!5163080 m!6213728))

(declare-fun m!6213730 () Bool)

(assert (=> b!5163080 m!6213730))

(declare-fun m!6213732 () Bool)

(assert (=> b!5163080 m!6213732))

(assert (=> b!5163080 m!6213728))

(declare-fun m!6213734 () Bool)

(assert (=> start!546144 m!6213734))

(declare-fun m!6213736 () Bool)

(assert (=> setNonEmpty!31391 m!6213736))

(push 1)

(assert (not b!5163083))

(assert (not b!5163082))

(assert (not b!5163081))

(assert (not setNonEmpty!31391))

(assert (not start!546144))

(assert tp_is_empty!38321)

(assert (not b!5163084))

(assert (not b!5163080))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1666117 () Bool)

(declare-fun lambda!257704 () Int)

(declare-fun forall!14090 (List!60026 Int) Bool)

(assert (=> d!1666117 (= (inv!79585 setElem!31391) (forall!14090 (exprs!4420 setElem!31391) lambda!257704))))

(declare-fun bs!1202719 () Bool)

(assert (= bs!1202719 d!1666117))

(declare-fun m!6213764 () Bool)

(assert (=> bs!1202719 m!6213764))

(assert (=> setNonEmpty!31391 d!1666117))

(declare-fun b!5163134 () Bool)

(declare-fun e!3217022 () tuple2!63646)

(assert (=> b!5163134 (= e!3217022 (tuple2!63647 Nil!59901 Nil!59901))))

(declare-fun b!5163135 () Bool)

(declare-fun e!3217024 () tuple2!63646)

(declare-fun e!3217021 () tuple2!63646)

(assert (=> b!5163135 (= e!3217024 e!3217021)))

(declare-fun lt!2122878 () tuple2!63646)

(declare-fun call!362031 () tuple2!63646)

(assert (=> b!5163135 (= lt!2122878 call!362031)))

(declare-fun c!888253 () Bool)

(assert (=> b!5163135 (= c!888253 (isEmpty!32086 (_1!35126 lt!2122878)))))

(declare-fun b!5163136 () Bool)

(assert (=> b!5163136 (= e!3217022 (tuple2!63647 Nil!59901 input!5707))))

(declare-fun b!5163137 () Bool)

(assert (=> b!5163137 (= e!3217021 lt!2122878)))

(declare-fun b!5163138 () Bool)

(declare-fun c!888251 () Bool)

(declare-fun call!362032 () Bool)

(assert (=> b!5163138 (= c!888251 call!362032)))

(declare-fun lt!2122873 () Unit!151337)

(declare-fun lt!2122880 () Unit!151337)

(assert (=> b!5163138 (= lt!2122873 lt!2122880)))

(assert (=> b!5163138 (= input!5707 Nil!59901)))

(declare-fun call!362035 () Unit!151337)

(assert (=> b!5163138 (= lt!2122880 call!362035)))

(declare-fun lt!2122864 () Unit!151337)

(declare-fun lt!2122870 () Unit!151337)

(assert (=> b!5163138 (= lt!2122864 lt!2122870)))

(declare-fun call!362029 () Bool)

(assert (=> b!5163138 call!362029))

(declare-fun call!362030 () Unit!151337)

(assert (=> b!5163138 (= lt!2122870 call!362030)))

(declare-fun e!3217025 () tuple2!63646)

(assert (=> b!5163138 (= e!3217025 e!3217022)))

(declare-fun bm!362023 () Bool)

(declare-fun call!362028 () (Set Context!7840))

(declare-fun call!362033 () C!29338)

(declare-fun derivationStepZipper!929 ((Set Context!7840) C!29338) (Set Context!7840))

(assert (=> bm!362023 (= call!362028 (derivationStepZipper!929 z!4413 call!362033))))

(declare-fun b!5163139 () Bool)

(declare-fun e!3217023 () Unit!151337)

(declare-fun Unit!151341 () Unit!151337)

(assert (=> b!5163139 (= e!3217023 Unit!151341)))

(declare-fun bm!362024 () Bool)

(declare-fun head!10994 (List!60025) C!29338)

(assert (=> bm!362024 (= call!362033 (head!10994 (getSuffix!3325 input!5707 Nil!59901)))))

(declare-fun bm!362025 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1353 (List!60025 List!60025 List!60025) Unit!151337)

(assert (=> bm!362025 (= call!362035 (lemmaIsPrefixSameLengthThenSameList!1353 input!5707 Nil!59901 input!5707))))

(declare-fun b!5163140 () Bool)

(declare-fun Unit!151342 () Unit!151337)

(assert (=> b!5163140 (= e!3217023 Unit!151342)))

(declare-fun lt!2122859 () Unit!151337)

(assert (=> b!5163140 (= lt!2122859 call!362030)))

(assert (=> b!5163140 call!362029))

(declare-fun lt!2122863 () Unit!151337)

(assert (=> b!5163140 (= lt!2122863 lt!2122859)))

(declare-fun lt!2122862 () Unit!151337)

(assert (=> b!5163140 (= lt!2122862 call!362035)))

(assert (=> b!5163140 (= input!5707 Nil!59901)))

(declare-fun lt!2122860 () Unit!151337)

(assert (=> b!5163140 (= lt!2122860 lt!2122862)))

(assert (=> b!5163140 false))

(declare-fun d!1666123 () Bool)

(declare-fun e!3217020 () Bool)

(assert (=> d!1666123 e!3217020))

(declare-fun res!2195131 () Bool)

(assert (=> d!1666123 (=> (not res!2195131) (not e!3217020))))

(declare-fun lt!2122879 () tuple2!63646)

(assert (=> d!1666123 (= res!2195131 (= (++!13085 (_1!35126 lt!2122879) (_2!35126 lt!2122879)) input!5707))))

(declare-fun e!3217027 () tuple2!63646)

(assert (=> d!1666123 (= lt!2122879 e!3217027)))

(declare-fun c!888254 () Bool)

(declare-fun lostCauseZipper!1300 ((Set Context!7840)) Bool)

(assert (=> d!1666123 (= c!888254 (lostCauseZipper!1300 z!4413))))

(declare-fun lt!2122858 () Unit!151337)

(declare-fun Unit!151343 () Unit!151337)

(assert (=> d!1666123 (= lt!2122858 Unit!151343)))

(assert (=> d!1666123 (= (getSuffix!3325 input!5707 Nil!59901) (getSuffix!3325 input!5707 Nil!59901))))

(declare-fun lt!2122883 () Unit!151337)

(declare-fun lt!2122861 () Unit!151337)

(assert (=> d!1666123 (= lt!2122883 lt!2122861)))

(declare-fun lt!2122877 () List!60025)

(assert (=> d!1666123 (= (getSuffix!3325 input!5707 Nil!59901) lt!2122877)))

(declare-fun lemmaSamePrefixThenSameSuffix!2667 (List!60025 List!60025 List!60025 List!60025 List!60025) Unit!151337)

(assert (=> d!1666123 (= lt!2122861 (lemmaSamePrefixThenSameSuffix!2667 Nil!59901 (getSuffix!3325 input!5707 Nil!59901) Nil!59901 lt!2122877 input!5707))))

(assert (=> d!1666123 (= lt!2122877 (getSuffix!3325 input!5707 Nil!59901))))

(declare-fun lt!2122872 () Unit!151337)

(declare-fun lt!2122881 () Unit!151337)

(assert (=> d!1666123 (= lt!2122872 lt!2122881)))

(assert (=> d!1666123 (isPrefix!5667 Nil!59901 (++!13085 Nil!59901 (getSuffix!3325 input!5707 Nil!59901)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3561 (List!60025 List!60025) Unit!151337)

(assert (=> d!1666123 (= lt!2122881 (lemmaConcatTwoListThenFirstIsPrefix!3561 Nil!59901 (getSuffix!3325 input!5707 Nil!59901)))))

(assert (=> d!1666123 (= (++!13085 Nil!59901 (getSuffix!3325 input!5707 Nil!59901)) input!5707)))

(assert (=> d!1666123 (= (findLongestMatchInnerZipper!204 z!4413 Nil!59901 (size!39572 Nil!59901) (getSuffix!3325 input!5707 Nil!59901) input!5707 (size!39572 input!5707)) lt!2122879)))

(declare-fun bm!362026 () Bool)

(declare-fun lemmaIsPrefixRefl!3709 (List!60025 List!60025) Unit!151337)

(assert (=> bm!362026 (= call!362030 (lemmaIsPrefixRefl!3709 input!5707 input!5707))))

(declare-fun b!5163141 () Bool)

(assert (=> b!5163141 (= e!3217027 (tuple2!63647 Nil!59901 input!5707))))

(declare-fun b!5163142 () Bool)

(assert (=> b!5163142 (= e!3217021 (tuple2!63647 Nil!59901 (getSuffix!3325 input!5707 Nil!59901)))))

(declare-fun b!5163143 () Bool)

(declare-fun c!888255 () Bool)

(assert (=> b!5163143 (= c!888255 call!362032)))

(declare-fun lt!2122866 () Unit!151337)

(declare-fun lt!2122869 () Unit!151337)

(assert (=> b!5163143 (= lt!2122866 lt!2122869)))

(declare-fun lt!2122871 () C!29338)

(declare-fun lt!2122874 () List!60025)

(assert (=> b!5163143 (= (++!13085 (++!13085 Nil!59901 (Cons!59901 lt!2122871 Nil!59901)) lt!2122874) input!5707)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1548 (List!60025 C!29338 List!60025 List!60025) Unit!151337)

(assert (=> b!5163143 (= lt!2122869 (lemmaMoveElementToOtherListKeepsConcatEq!1548 Nil!59901 lt!2122871 lt!2122874 input!5707))))

(declare-fun tail!10105 (List!60025) List!60025)

(assert (=> b!5163143 (= lt!2122874 (tail!10105 (getSuffix!3325 input!5707 Nil!59901)))))

(assert (=> b!5163143 (= lt!2122871 (head!10994 (getSuffix!3325 input!5707 Nil!59901)))))

(declare-fun lt!2122865 () Unit!151337)

(declare-fun lt!2122875 () Unit!151337)

(assert (=> b!5163143 (= lt!2122865 lt!2122875)))

(assert (=> b!5163143 (isPrefix!5667 (++!13085 Nil!59901 (Cons!59901 (head!10994 (getSuffix!3325 input!5707 Nil!59901)) Nil!59901)) input!5707)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1023 (List!60025 List!60025) Unit!151337)

(assert (=> b!5163143 (= lt!2122875 (lemmaAddHeadSuffixToPrefixStillPrefix!1023 Nil!59901 input!5707))))

(declare-fun lt!2122868 () List!60025)

(assert (=> b!5163143 (= lt!2122868 (++!13085 Nil!59901 (Cons!59901 (head!10994 (getSuffix!3325 input!5707 Nil!59901)) Nil!59901)))))

(declare-fun lt!2122876 () Unit!151337)

(assert (=> b!5163143 (= lt!2122876 e!3217023)))

(declare-fun c!888250 () Bool)

(assert (=> b!5163143 (= c!888250 (= (size!39572 Nil!59901) (size!39572 input!5707)))))

(declare-fun lt!2122867 () Unit!151337)

(declare-fun lt!2122882 () Unit!151337)

(assert (=> b!5163143 (= lt!2122867 lt!2122882)))

(assert (=> b!5163143 (<= (size!39572 Nil!59901) (size!39572 input!5707))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!863 (List!60025 List!60025) Unit!151337)

(assert (=> b!5163143 (= lt!2122882 (lemmaIsPrefixThenSmallerEqSize!863 Nil!59901 input!5707))))

(assert (=> b!5163143 (= e!3217025 e!3217024)))

(declare-fun b!5163144 () Bool)

(declare-fun e!3217026 () Bool)

(assert (=> b!5163144 (= e!3217026 (>= (size!39572 (_1!35126 lt!2122879)) (size!39572 Nil!59901)))))

(declare-fun bm!362027 () Bool)

(declare-fun nullableZipper!1111 ((Set Context!7840)) Bool)

(assert (=> bm!362027 (= call!362032 (nullableZipper!1111 z!4413))))

(declare-fun bm!362028 () Bool)

(declare-fun call!362034 () List!60025)

(assert (=> bm!362028 (= call!362034 (tail!10105 (getSuffix!3325 input!5707 Nil!59901)))))

(declare-fun b!5163145 () Bool)

(assert (=> b!5163145 (= e!3217020 e!3217026)))

(declare-fun res!2195132 () Bool)

(assert (=> b!5163145 (=> res!2195132 e!3217026)))

(assert (=> b!5163145 (= res!2195132 (isEmpty!32086 (_1!35126 lt!2122879)))))

(declare-fun b!5163146 () Bool)

(assert (=> b!5163146 (= e!3217027 e!3217025)))

(declare-fun c!888252 () Bool)

(assert (=> b!5163146 (= c!888252 (= (size!39572 Nil!59901) (size!39572 input!5707)))))

(declare-fun bm!362029 () Bool)

(assert (=> bm!362029 (= call!362031 (findLongestMatchInnerZipper!204 call!362028 lt!2122868 (+ (size!39572 Nil!59901) 1) call!362034 input!5707 (size!39572 input!5707)))))

(declare-fun bm!362030 () Bool)

(assert (=> bm!362030 (= call!362029 (isPrefix!5667 input!5707 input!5707))))

(declare-fun b!5163147 () Bool)

(assert (=> b!5163147 (= e!3217024 call!362031)))

(assert (= (and d!1666123 c!888254) b!5163141))

(assert (= (and d!1666123 (not c!888254)) b!5163146))

(assert (= (and b!5163146 c!888252) b!5163138))

(assert (= (and b!5163146 (not c!888252)) b!5163143))

(assert (= (and b!5163138 c!888251) b!5163134))

(assert (= (and b!5163138 (not c!888251)) b!5163136))

(assert (= (and b!5163143 c!888250) b!5163140))

(assert (= (and b!5163143 (not c!888250)) b!5163139))

(assert (= (and b!5163143 c!888255) b!5163135))

(assert (= (and b!5163143 (not c!888255)) b!5163147))

(assert (= (and b!5163135 c!888253) b!5163142))

(assert (= (and b!5163135 (not c!888253)) b!5163137))

(assert (= (or b!5163135 b!5163147) bm!362024))

(assert (= (or b!5163135 b!5163147) bm!362028))

(assert (= (or b!5163135 b!5163147) bm!362023))

(assert (= (or b!5163135 b!5163147) bm!362029))

(assert (= (or b!5163138 b!5163140) bm!362030))

(assert (= (or b!5163138 b!5163140) bm!362026))

(assert (= (or b!5163138 b!5163143) bm!362027))

(assert (= (or b!5163138 b!5163140) bm!362025))

(assert (= (and d!1666123 res!2195131) b!5163145))

(assert (= (and b!5163145 (not res!2195132)) b!5163144))

(assert (=> bm!362029 m!6213728))

(declare-fun m!6213766 () Bool)

(assert (=> bm!362029 m!6213766))

(declare-fun m!6213768 () Bool)

(assert (=> b!5163144 m!6213768))

(assert (=> b!5163144 m!6213726))

(declare-fun m!6213770 () Bool)

(assert (=> b!5163135 m!6213770))

(declare-fun m!6213772 () Bool)

(assert (=> b!5163143 m!6213772))

(declare-fun m!6213774 () Bool)

(assert (=> b!5163143 m!6213774))

(declare-fun m!6213776 () Bool)

(assert (=> b!5163143 m!6213776))

(declare-fun m!6213778 () Bool)

(assert (=> b!5163143 m!6213778))

(assert (=> b!5163143 m!6213724))

(declare-fun m!6213780 () Bool)

(assert (=> b!5163143 m!6213780))

(declare-fun m!6213782 () Bool)

(assert (=> b!5163143 m!6213782))

(assert (=> b!5163143 m!6213778))

(assert (=> b!5163143 m!6213778))

(declare-fun m!6213784 () Bool)

(assert (=> b!5163143 m!6213784))

(assert (=> b!5163143 m!6213724))

(declare-fun m!6213786 () Bool)

(assert (=> b!5163143 m!6213786))

(assert (=> b!5163143 m!6213726))

(declare-fun m!6213788 () Bool)

(assert (=> b!5163143 m!6213788))

(assert (=> b!5163143 m!6213728))

(assert (=> b!5163143 m!6213724))

(assert (=> b!5163143 m!6213786))

(assert (=> b!5163143 m!6213724))

(assert (=> b!5163143 m!6213774))

(declare-fun m!6213790 () Bool)

(assert (=> bm!362023 m!6213790))

(declare-fun m!6213792 () Bool)

(assert (=> bm!362025 m!6213792))

(assert (=> d!1666123 m!6213724))

(declare-fun m!6213794 () Bool)

(assert (=> d!1666123 m!6213794))

(declare-fun m!6213796 () Bool)

(assert (=> d!1666123 m!6213796))

(declare-fun m!6213798 () Bool)

(assert (=> d!1666123 m!6213798))

(assert (=> d!1666123 m!6213724))

(assert (=> d!1666123 m!6213724))

(assert (=> d!1666123 m!6213796))

(assert (=> d!1666123 m!6213724))

(declare-fun m!6213800 () Bool)

(assert (=> d!1666123 m!6213800))

(declare-fun m!6213802 () Bool)

(assert (=> d!1666123 m!6213802))

(declare-fun m!6213804 () Bool)

(assert (=> d!1666123 m!6213804))

(declare-fun m!6213806 () Bool)

(assert (=> bm!362027 m!6213806))

(declare-fun m!6213808 () Bool)

(assert (=> bm!362026 m!6213808))

(declare-fun m!6213810 () Bool)

(assert (=> bm!362030 m!6213810))

(assert (=> bm!362024 m!6213724))

(assert (=> bm!362024 m!6213786))

(declare-fun m!6213812 () Bool)

(assert (=> b!5163145 m!6213812))

(assert (=> bm!362028 m!6213724))

(assert (=> bm!362028 m!6213780))

(assert (=> b!5163080 d!1666123))

(declare-fun d!1666125 () Bool)

(declare-fun lt!2122886 () Int)

(assert (=> d!1666125 (>= lt!2122886 0)))

(declare-fun e!3217030 () Int)

(assert (=> d!1666125 (= lt!2122886 e!3217030)))

(declare-fun c!888258 () Bool)

(assert (=> d!1666125 (= c!888258 (is-Nil!59901 input!5707))))

(assert (=> d!1666125 (= (size!39572 input!5707) lt!2122886)))

(declare-fun b!5163152 () Bool)

(assert (=> b!5163152 (= e!3217030 0)))

(declare-fun b!5163153 () Bool)

(assert (=> b!5163153 (= e!3217030 (+ 1 (size!39572 (t!373178 input!5707))))))

(assert (= (and d!1666125 c!888258) b!5163152))

(assert (= (and d!1666125 (not c!888258)) b!5163153))

(declare-fun m!6213814 () Bool)

(assert (=> b!5163153 m!6213814))

(assert (=> b!5163080 d!1666125))

(declare-fun d!1666127 () Bool)

(declare-fun lt!2122889 () List!60025)

(assert (=> d!1666127 (= (++!13085 Nil!59901 lt!2122889) input!5707)))

(declare-fun e!3217033 () List!60025)

(assert (=> d!1666127 (= lt!2122889 e!3217033)))

(declare-fun c!888261 () Bool)

(assert (=> d!1666127 (= c!888261 (is-Cons!59901 Nil!59901))))

(assert (=> d!1666127 (>= (size!39572 input!5707) (size!39572 Nil!59901))))

(assert (=> d!1666127 (= (getSuffix!3325 input!5707 Nil!59901) lt!2122889)))

(declare-fun b!5163158 () Bool)

(assert (=> b!5163158 (= e!3217033 (getSuffix!3325 (tail!10105 input!5707) (t!373178 Nil!59901)))))

(declare-fun b!5163159 () Bool)

(assert (=> b!5163159 (= e!3217033 input!5707)))

(assert (= (and d!1666127 c!888261) b!5163158))

(assert (= (and d!1666127 (not c!888261)) b!5163159))

(declare-fun m!6213816 () Bool)

(assert (=> d!1666127 m!6213816))

(assert (=> d!1666127 m!6213728))

(assert (=> d!1666127 m!6213726))

(declare-fun m!6213818 () Bool)

(assert (=> b!5163158 m!6213818))

(assert (=> b!5163158 m!6213818))

(declare-fun m!6213820 () Bool)

(assert (=> b!5163158 m!6213820))

(assert (=> b!5163080 d!1666127))

(declare-fun d!1666129 () Bool)

(declare-fun e!3217036 () Bool)

(assert (=> d!1666129 e!3217036))

(declare-fun res!2195135 () Bool)

(assert (=> d!1666129 (=> res!2195135 e!3217036)))

(assert (=> d!1666129 (= res!2195135 (isEmpty!32086 (_1!35126 (findLongestMatchInnerZipper!204 z!4413 Nil!59901 (size!39572 Nil!59901) (getSuffix!3325 input!5707 Nil!59901) input!5707 (size!39572 input!5707)))))))

(declare-fun lt!2122892 () Unit!151337)

(declare-fun choose!38196 ((Set Context!7840) (Set Context!7840) List!60025 List!60025) Unit!151337)

(assert (=> d!1666129 (= lt!2122892 (choose!38196 z!4413 z!4413 Nil!59901 input!5707))))

(assert (=> d!1666129 (isPrefix!5667 Nil!59901 input!5707)))

(assert (=> d!1666129 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!2 z!4413 z!4413 Nil!59901 input!5707) lt!2122892)))

(declare-fun b!5163162 () Bool)

(assert (=> b!5163162 (= e!3217036 (matchZipper!938 z!4413 (_1!35126 (findLongestMatchInnerZipper!204 z!4413 Nil!59901 (size!39572 Nil!59901) (getSuffix!3325 input!5707 Nil!59901) input!5707 (size!39572 input!5707)))))))

(assert (= (and d!1666129 (not res!2195135)) b!5163162))

(declare-fun m!6213822 () Bool)

(assert (=> d!1666129 m!6213822))

(assert (=> d!1666129 m!6213726))

(assert (=> d!1666129 m!6213724))

(assert (=> d!1666129 m!6213728))

(assert (=> d!1666129 m!6213730))

(declare-fun m!6213824 () Bool)

(assert (=> d!1666129 m!6213824))

(assert (=> d!1666129 m!6213724))

(assert (=> d!1666129 m!6213726))

(assert (=> d!1666129 m!6213734))

(assert (=> d!1666129 m!6213728))

(assert (=> b!5163162 m!6213726))

(assert (=> b!5163162 m!6213724))

(assert (=> b!5163162 m!6213728))

(assert (=> b!5163162 m!6213730))

(assert (=> b!5163162 m!6213724))

(assert (=> b!5163162 m!6213726))

(declare-fun m!6213826 () Bool)

(assert (=> b!5163162 m!6213826))

(assert (=> b!5163162 m!6213728))

(assert (=> b!5163080 d!1666129))

(declare-fun d!1666131 () Bool)

(declare-fun e!3217042 () Bool)

(assert (=> d!1666131 e!3217042))

(declare-fun res!2195140 () Bool)

(assert (=> d!1666131 (=> (not res!2195140) (not e!3217042))))

(declare-fun lt!2122895 () List!60025)

(declare-fun content!10620 (List!60025) (Set C!29338))

(assert (=> d!1666131 (= res!2195140 (= (content!10620 lt!2122895) (set.union (content!10620 Nil!59901) (content!10620 input!5707))))))

(declare-fun e!3217041 () List!60025)

(assert (=> d!1666131 (= lt!2122895 e!3217041)))

(declare-fun c!888264 () Bool)

(assert (=> d!1666131 (= c!888264 (is-Nil!59901 Nil!59901))))

(assert (=> d!1666131 (= (++!13085 Nil!59901 input!5707) lt!2122895)))

(declare-fun b!5163172 () Bool)

(assert (=> b!5163172 (= e!3217041 (Cons!59901 (h!66349 Nil!59901) (++!13085 (t!373178 Nil!59901) input!5707)))))

(declare-fun b!5163171 () Bool)

(assert (=> b!5163171 (= e!3217041 input!5707)))

(declare-fun b!5163174 () Bool)

(assert (=> b!5163174 (= e!3217042 (or (not (= input!5707 Nil!59901)) (= lt!2122895 Nil!59901)))))

(declare-fun b!5163173 () Bool)

(declare-fun res!2195141 () Bool)

(assert (=> b!5163173 (=> (not res!2195141) (not e!3217042))))

(assert (=> b!5163173 (= res!2195141 (= (size!39572 lt!2122895) (+ (size!39572 Nil!59901) (size!39572 input!5707))))))

(assert (= (and d!1666131 c!888264) b!5163171))

(assert (= (and d!1666131 (not c!888264)) b!5163172))

(assert (= (and d!1666131 res!2195140) b!5163173))

(assert (= (and b!5163173 res!2195141) b!5163174))

(declare-fun m!6213828 () Bool)

(assert (=> d!1666131 m!6213828))

(declare-fun m!6213830 () Bool)

(assert (=> d!1666131 m!6213830))

(declare-fun m!6213832 () Bool)

(assert (=> d!1666131 m!6213832))

(declare-fun m!6213834 () Bool)

(assert (=> b!5163172 m!6213834))

(declare-fun m!6213836 () Bool)

(assert (=> b!5163173 m!6213836))

(assert (=> b!5163173 m!6213726))

(assert (=> b!5163173 m!6213728))

(assert (=> b!5163080 d!1666131))

(declare-fun d!1666133 () Bool)

(assert (=> d!1666133 (= (isEmpty!32086 (_1!35126 lt!2122798)) (is-Nil!59901 (_1!35126 lt!2122798)))))

(assert (=> b!5163080 d!1666133))

(declare-fun d!1666135 () Bool)

(declare-fun lt!2122896 () Int)

(assert (=> d!1666135 (>= lt!2122896 0)))

(declare-fun e!3217043 () Int)

(assert (=> d!1666135 (= lt!2122896 e!3217043)))

(declare-fun c!888265 () Bool)

(assert (=> d!1666135 (= c!888265 (is-Nil!59901 Nil!59901))))

(assert (=> d!1666135 (= (size!39572 Nil!59901) lt!2122896)))

(declare-fun b!5163175 () Bool)

(assert (=> b!5163175 (= e!3217043 0)))

(declare-fun b!5163176 () Bool)

(assert (=> b!5163176 (= e!3217043 (+ 1 (size!39572 (t!373178 Nil!59901))))))

(assert (= (and d!1666135 c!888265) b!5163175))

(assert (= (and d!1666135 (not c!888265)) b!5163176))

(declare-fun m!6213838 () Bool)

(assert (=> b!5163176 m!6213838))

(assert (=> b!5163080 d!1666135))

(declare-fun d!1666137 () Bool)

(declare-fun c!888268 () Bool)

(assert (=> d!1666137 (= c!888268 (is-Cons!59901 Nil!59901))))

(declare-fun e!3217046 () (Set Context!7840))

(assert (=> d!1666137 (= (derivationZipper!159 z!4413 Nil!59901) e!3217046)))

(declare-fun b!5163181 () Bool)

(assert (=> b!5163181 (= e!3217046 (derivationZipper!159 (derivationStepZipper!929 z!4413 (h!66349 Nil!59901)) (t!373178 Nil!59901)))))

(declare-fun b!5163182 () Bool)

(assert (=> b!5163182 (= e!3217046 z!4413)))

(assert (= (and d!1666137 c!888268) b!5163181))

(assert (= (and d!1666137 (not c!888268)) b!5163182))

(declare-fun m!6213840 () Bool)

(assert (=> b!5163181 m!6213840))

(assert (=> b!5163181 m!6213840))

(declare-fun m!6213842 () Bool)

(assert (=> b!5163181 m!6213842))

(assert (=> b!5163083 d!1666137))

(declare-fun b!5163191 () Bool)

(declare-fun e!3217053 () Bool)

(declare-fun e!3217055 () Bool)

(assert (=> b!5163191 (= e!3217053 e!3217055)))

(declare-fun res!2195152 () Bool)

(assert (=> b!5163191 (=> (not res!2195152) (not e!3217055))))

(assert (=> b!5163191 (= res!2195152 (not (is-Nil!59901 input!5707)))))

(declare-fun b!5163192 () Bool)

(declare-fun res!2195153 () Bool)

(assert (=> b!5163192 (=> (not res!2195153) (not e!3217055))))

(assert (=> b!5163192 (= res!2195153 (= (head!10994 Nil!59901) (head!10994 input!5707)))))

(declare-fun b!5163194 () Bool)

(declare-fun e!3217054 () Bool)

(assert (=> b!5163194 (= e!3217054 (>= (size!39572 input!5707) (size!39572 Nil!59901)))))

(declare-fun b!5163193 () Bool)

(assert (=> b!5163193 (= e!3217055 (isPrefix!5667 (tail!10105 Nil!59901) (tail!10105 input!5707)))))

(declare-fun d!1666139 () Bool)

(assert (=> d!1666139 e!3217054))

(declare-fun res!2195151 () Bool)

(assert (=> d!1666139 (=> res!2195151 e!3217054)))

(declare-fun lt!2122899 () Bool)

(assert (=> d!1666139 (= res!2195151 (not lt!2122899))))

(assert (=> d!1666139 (= lt!2122899 e!3217053)))

(declare-fun res!2195150 () Bool)

(assert (=> d!1666139 (=> res!2195150 e!3217053)))

(assert (=> d!1666139 (= res!2195150 (is-Nil!59901 Nil!59901))))

(assert (=> d!1666139 (= (isPrefix!5667 Nil!59901 input!5707) lt!2122899)))

(assert (= (and d!1666139 (not res!2195150)) b!5163191))

(assert (= (and b!5163191 res!2195152) b!5163192))

(assert (= (and b!5163192 res!2195153) b!5163193))

(assert (= (and d!1666139 (not res!2195151)) b!5163194))

(declare-fun m!6213846 () Bool)

(assert (=> b!5163192 m!6213846))

(declare-fun m!6213848 () Bool)

(assert (=> b!5163192 m!6213848))

(assert (=> b!5163194 m!6213728))

(assert (=> b!5163194 m!6213726))

(declare-fun m!6213850 () Bool)

(assert (=> b!5163193 m!6213850))

(assert (=> b!5163193 m!6213818))

(assert (=> b!5163193 m!6213850))

(assert (=> b!5163193 m!6213818))

(declare-fun m!6213852 () Bool)

(assert (=> b!5163193 m!6213852))

(assert (=> start!546144 d!1666139))

(declare-fun d!1666143 () Bool)

(declare-fun c!888271 () Bool)

(assert (=> d!1666143 (= c!888271 (isEmpty!32086 (_1!35126 lt!2122798)))))

(declare-fun e!3217064 () Bool)

(assert (=> d!1666143 (= (matchZipper!938 z!4413 (_1!35126 lt!2122798)) e!3217064)))

(declare-fun b!5163207 () Bool)

(assert (=> b!5163207 (= e!3217064 (nullableZipper!1111 z!4413))))

(declare-fun b!5163208 () Bool)

(assert (=> b!5163208 (= e!3217064 (matchZipper!938 (derivationStepZipper!929 z!4413 (head!10994 (_1!35126 lt!2122798))) (tail!10105 (_1!35126 lt!2122798))))))

(assert (= (and d!1666143 c!888271) b!5163207))

(assert (= (and d!1666143 (not c!888271)) b!5163208))

(assert (=> d!1666143 m!6213720))

(assert (=> b!5163207 m!6213806))

(declare-fun m!6213854 () Bool)

(assert (=> b!5163208 m!6213854))

(assert (=> b!5163208 m!6213854))

(declare-fun m!6213856 () Bool)

(assert (=> b!5163208 m!6213856))

(declare-fun m!6213858 () Bool)

(assert (=> b!5163208 m!6213858))

(assert (=> b!5163208 m!6213856))

(assert (=> b!5163208 m!6213858))

(declare-fun m!6213860 () Bool)

(assert (=> b!5163208 m!6213860))

(assert (=> b!5163082 d!1666143))

(declare-fun condSetEmpty!31397 () Bool)

(assert (=> setNonEmpty!31391 (= condSetEmpty!31397 (= setRest!31391 (as set.empty (Set Context!7840))))))

(declare-fun setRes!31397 () Bool)

(assert (=> setNonEmpty!31391 (= tp!1448132 setRes!31397)))

(declare-fun setIsEmpty!31397 () Bool)

(assert (=> setIsEmpty!31397 setRes!31397))

(declare-fun setNonEmpty!31397 () Bool)

(declare-fun e!3217070 () Bool)

(declare-fun tp!1448146 () Bool)

(declare-fun setElem!31397 () Context!7840)

(assert (=> setNonEmpty!31397 (= setRes!31397 (and tp!1448146 (inv!79585 setElem!31397) e!3217070))))

(declare-fun setRest!31397 () (Set Context!7840))

(assert (=> setNonEmpty!31397 (= setRest!31391 (set.union (set.insert setElem!31397 (as set.empty (Set Context!7840))) setRest!31397))))

(declare-fun b!5163217 () Bool)

(declare-fun tp!1448147 () Bool)

(assert (=> b!5163217 (= e!3217070 tp!1448147)))

(assert (= (and setNonEmpty!31391 condSetEmpty!31397) setIsEmpty!31397))

(assert (= (and setNonEmpty!31391 (not condSetEmpty!31397)) setNonEmpty!31397))

(assert (= setNonEmpty!31397 b!5163217))

(declare-fun m!6213872 () Bool)

(assert (=> setNonEmpty!31397 m!6213872))

(declare-fun b!5163222 () Bool)

(declare-fun e!3217073 () Bool)

(declare-fun tp!1448152 () Bool)

(declare-fun tp!1448153 () Bool)

(assert (=> b!5163222 (= e!3217073 (and tp!1448152 tp!1448153))))

(assert (=> b!5163084 (= tp!1448131 e!3217073)))

(assert (= (and b!5163084 (is-Cons!59902 (exprs!4420 setElem!31391))) b!5163222))

(declare-fun b!5163227 () Bool)

(declare-fun e!3217076 () Bool)

(declare-fun tp!1448156 () Bool)

(assert (=> b!5163227 (= e!3217076 (and tp_is_empty!38321 tp!1448156))))

(assert (=> b!5163081 (= tp!1448130 e!3217076)))

(assert (= (and b!5163081 (is-Cons!59901 (t!373178 input!5707))) b!5163227))

(push 1)

(assert (not bm!362027))

(assert (not bm!362029))

(assert (not b!5163207))

(assert (not bm!362025))

(assert (not b!5163227))

(assert (not b!5163181))

(assert (not bm!362028))

(assert (not b!5163145))

(assert (not b!5163153))

(assert (not setNonEmpty!31397))

(assert (not b!5163135))

(assert (not d!1666131))

(assert (not d!1666129))

(assert (not b!5163158))

(assert (not d!1666123))

(assert (not b!5163217))

(assert (not b!5163222))

(assert (not bm!362030))

(assert (not bm!362024))

(assert (not d!1666127))

(assert (not bm!362026))

(assert (not b!5163162))

(assert (not b!5163173))

(assert (not b!5163172))

(assert (not b!5163144))

(assert (not b!5163193))

(assert (not d!1666143))

(assert (not bm!362023))

(assert (not b!5163192))

(assert (not b!5163194))

(assert (not b!5163176))

(assert (not b!5163143))

(assert (not d!1666117))

(assert tp_is_empty!38321)

(assert (not b!5163208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

