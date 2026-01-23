; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92508 () Bool)

(assert start!92508)

(declare-fun bs!256685 () Bool)

(declare-fun b!1086032 () Bool)

(declare-fun b!1086025 () Bool)

(assert (= bs!256685 (and b!1086032 b!1086025)))

(declare-fun lambda!40042 () Int)

(declare-fun lambda!40041 () Int)

(assert (=> bs!256685 (not (= lambda!40042 lambda!40041))))

(assert (=> b!1086032 true))

(declare-fun b!1086024 () Bool)

(declare-fun e!686871 () Bool)

(declare-fun tp!325193 () Bool)

(assert (=> b!1086024 (= e!686871 tp!325193)))

(declare-fun res!482992 () Bool)

(declare-fun e!686870 () Bool)

(assert (=> b!1086025 (=> (not res!482992) (not e!686870))))

(declare-datatypes ((C!6582 0))(
  ( (C!6583 (val!3539 Int)) )
))
(declare-datatypes ((Regex!3006 0))(
  ( (ElementMatch!3006 (c!183614 C!6582)) (Concat!4839 (regOne!6524 Regex!3006) (regTwo!6524 Regex!3006)) (EmptyExpr!3006) (Star!3006 (reg!3335 Regex!3006)) (EmptyLang!3006) (Union!3006 (regOne!6525 Regex!3006) (regTwo!6525 Regex!3006)) )
))
(declare-datatypes ((List!10321 0))(
  ( (Nil!10305) (Cons!10305 (h!15706 Regex!3006) (t!101367 List!10321)) )
))
(declare-datatypes ((Context!972 0))(
  ( (Context!973 (exprs!986 List!10321)) )
))
(declare-fun z!1122 () (Set Context!972))

(declare-datatypes ((List!10322 0))(
  ( (Nil!10306) (Cons!10306 (h!15707 C!6582) (t!101368 List!10322)) )
))
(declare-fun s!2287 () List!10322)

(declare-fun matchZipper!54 ((Set Context!972) List!10322) Bool)

(declare-fun filter!168 ((Set Context!972) Int) (Set Context!972))

(assert (=> b!1086025 (= res!482992 (matchZipper!54 (filter!168 z!1122 lambda!40041) s!2287))))

(declare-fun b!1086026 () Bool)

(declare-fun e!686873 () Bool)

(declare-fun e!686868 () Bool)

(assert (=> b!1086026 (= e!686873 e!686868)))

(declare-fun res!482996 () Bool)

(assert (=> b!1086026 (=> res!482996 e!686868)))

(declare-fun lt!363323 () Context!972)

(assert (=> b!1086026 (= res!482996 (not (set.member lt!363323 (filter!168 z!1122 lambda!40041))))))

(declare-fun getWitness!75 ((Set Context!972) Int) Context!972)

(assert (=> b!1086026 (= lt!363323 (getWitness!75 (filter!168 z!1122 lambda!40041) lambda!40042))))

(declare-fun setIsEmpty!7575 () Bool)

(declare-fun setRes!7575 () Bool)

(assert (=> setIsEmpty!7575 setRes!7575))

(declare-fun b!1086027 () Bool)

(declare-fun e!686869 () Bool)

(declare-fun tp_is_empty!5643 () Bool)

(declare-fun tp!325195 () Bool)

(assert (=> b!1086027 (= e!686869 (and tp_is_empty!5643 tp!325195))))

(declare-fun b!1086028 () Bool)

(assert (=> b!1086028 (= e!686868 (matchZipper!54 (set.insert lt!363323 (as set.empty (Set Context!972))) s!2287))))

(declare-fun setElem!7575 () Context!972)

(declare-fun e!686867 () Bool)

(declare-fun tp!325196 () Bool)

(declare-fun setNonEmpty!7575 () Bool)

(declare-fun inv!13229 (Context!972) Bool)

(assert (=> setNonEmpty!7575 (= setRes!7575 (and tp!325196 (inv!13229 setElem!7575) e!686867))))

(declare-fun setRest!7575 () (Set Context!972))

(assert (=> setNonEmpty!7575 (= z!1122 (set.union (set.insert setElem!7575 (as set.empty (Set Context!972))) setRest!7575))))

(declare-fun b!1086029 () Bool)

(declare-fun tp!325197 () Bool)

(assert (=> b!1086029 (= e!686867 tp!325197)))

(declare-fun b!1086030 () Bool)

(declare-fun res!482994 () Bool)

(assert (=> b!1086030 (=> (not res!482994) (not e!686870))))

(assert (=> b!1086030 (= res!482994 (not (matchZipper!54 z!1122 s!2287)))))

(declare-fun e!686872 () Bool)

(declare-fun b!1086031 () Bool)

(declare-datatypes ((List!10323 0))(
  ( (Nil!10307) (Cons!10307 (h!15708 Context!972) (t!101369 List!10323)) )
))
(declare-fun zl!316 () List!10323)

(declare-fun tp!325194 () Bool)

(assert (=> b!1086031 (= e!686872 (and (inv!13229 (h!15708 zl!316)) e!686871 tp!325194))))

(declare-fun res!482995 () Bool)

(assert (=> start!92508 (=> (not res!482995) (not e!686870))))

(declare-fun toList!624 ((Set Context!972)) List!10323)

(assert (=> start!92508 (= res!482995 (= (toList!624 z!1122) zl!316))))

(assert (=> start!92508 e!686870))

(declare-fun condSetEmpty!7575 () Bool)

(assert (=> start!92508 (= condSetEmpty!7575 (= z!1122 (as set.empty (Set Context!972))))))

(assert (=> start!92508 setRes!7575))

(assert (=> start!92508 e!686872))

(assert (=> start!92508 e!686869))

(assert (=> b!1086032 (= e!686870 (not e!686873))))

(declare-fun res!482993 () Bool)

(assert (=> b!1086032 (=> res!482993 e!686873)))

(declare-fun exists!155 ((Set Context!972) Int) Bool)

(assert (=> b!1086032 (= res!482993 (not (exists!155 (filter!168 z!1122 lambda!40041) lambda!40042)))))

(declare-fun lt!363324 () List!10323)

(declare-fun exists!156 (List!10323 Int) Bool)

(assert (=> b!1086032 (exists!156 lt!363324 lambda!40042)))

(declare-datatypes ((Unit!15703 0))(
  ( (Unit!15704) )
))
(declare-fun lt!363322 () Unit!15703)

(declare-fun lemmaZipperMatchesExistsMatchingContext!33 (List!10323 List!10322) Unit!15703)

(assert (=> b!1086032 (= lt!363322 (lemmaZipperMatchesExistsMatchingContext!33 lt!363324 s!2287))))

(assert (=> b!1086032 (= lt!363324 (toList!624 (filter!168 z!1122 lambda!40041)))))

(assert (= (and start!92508 res!482995) b!1086030))

(assert (= (and b!1086030 res!482994) b!1086025))

(assert (= (and b!1086025 res!482992) b!1086032))

(assert (= (and b!1086032 (not res!482993)) b!1086026))

(assert (= (and b!1086026 (not res!482996)) b!1086028))

(assert (= (and start!92508 condSetEmpty!7575) setIsEmpty!7575))

(assert (= (and start!92508 (not condSetEmpty!7575)) setNonEmpty!7575))

(assert (= setNonEmpty!7575 b!1086029))

(assert (= b!1086031 b!1086024))

(assert (= (and start!92508 (is-Cons!10307 zl!316)) b!1086031))

(assert (= (and start!92508 (is-Cons!10306 s!2287)) b!1086027))

(declare-fun m!1235843 () Bool)

(assert (=> b!1086031 m!1235843))

(declare-fun m!1235845 () Bool)

(assert (=> setNonEmpty!7575 m!1235845))

(declare-fun m!1235847 () Bool)

(assert (=> b!1086032 m!1235847))

(declare-fun m!1235849 () Bool)

(assert (=> b!1086032 m!1235849))

(declare-fun m!1235851 () Bool)

(assert (=> b!1086032 m!1235851))

(assert (=> b!1086032 m!1235849))

(assert (=> b!1086032 m!1235849))

(declare-fun m!1235853 () Bool)

(assert (=> b!1086032 m!1235853))

(declare-fun m!1235855 () Bool)

(assert (=> b!1086032 m!1235855))

(assert (=> b!1086032 m!1235849))

(assert (=> b!1086026 m!1235849))

(declare-fun m!1235857 () Bool)

(assert (=> b!1086026 m!1235857))

(assert (=> b!1086026 m!1235849))

(assert (=> b!1086026 m!1235849))

(declare-fun m!1235859 () Bool)

(assert (=> b!1086026 m!1235859))

(declare-fun m!1235861 () Bool)

(assert (=> start!92508 m!1235861))

(declare-fun m!1235863 () Bool)

(assert (=> b!1086030 m!1235863))

(assert (=> b!1086025 m!1235849))

(assert (=> b!1086025 m!1235849))

(declare-fun m!1235865 () Bool)

(assert (=> b!1086025 m!1235865))

(declare-fun m!1235867 () Bool)

(assert (=> b!1086028 m!1235867))

(assert (=> b!1086028 m!1235867))

(declare-fun m!1235869 () Bool)

(assert (=> b!1086028 m!1235869))

(push 1)

(assert (not b!1086024))

(assert (not b!1086029))

(assert (not b!1086026))

(assert (not start!92508))

(assert (not b!1086025))

(assert (not b!1086027))

(assert (not b!1086032))

(assert tp_is_empty!5643)

(assert (not setNonEmpty!7575))

(assert (not b!1086030))

(assert (not b!1086028))

(assert (not b!1086031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!305117 () Bool)

(declare-fun choose!6925 ((Set Context!972) Int) (Set Context!972))

(assert (=> d!305117 (= (filter!168 z!1122 lambda!40041) (choose!6925 z!1122 lambda!40041))))

(declare-fun bs!256687 () Bool)

(assert (= bs!256687 d!305117))

(declare-fun m!1235899 () Bool)

(assert (=> bs!256687 m!1235899))

(assert (=> b!1086032 d!305117))

(declare-fun bs!256688 () Bool)

(declare-fun d!305119 () Bool)

(assert (= bs!256688 (and d!305119 b!1086025)))

(declare-fun lambda!40063 () Int)

(assert (=> bs!256688 (not (= lambda!40063 lambda!40041))))

(declare-fun bs!256689 () Bool)

(assert (= bs!256689 (and d!305119 b!1086032)))

(assert (=> bs!256689 (not (= lambda!40063 lambda!40042))))

(assert (=> d!305119 true))

(declare-fun order!6209 () Int)

(declare-fun dynLambda!4517 (Int Int) Int)

(assert (=> d!305119 (< (dynLambda!4517 order!6209 lambda!40042) (dynLambda!4517 order!6209 lambda!40063))))

(declare-fun forall!2265 (List!10323 Int) Bool)

(assert (=> d!305119 (= (exists!156 lt!363324 lambda!40042) (not (forall!2265 lt!363324 lambda!40063)))))

(declare-fun bs!256690 () Bool)

(assert (= bs!256690 d!305119))

(declare-fun m!1235901 () Bool)

(assert (=> bs!256690 m!1235901))

(assert (=> b!1086032 d!305119))

(declare-fun d!305121 () Bool)

(declare-fun lt!363336 () Bool)

(assert (=> d!305121 (= lt!363336 (exists!156 (toList!624 (filter!168 z!1122 lambda!40041)) lambda!40042))))

(declare-fun choose!6926 ((Set Context!972) Int) Bool)

(assert (=> d!305121 (= lt!363336 (choose!6926 (filter!168 z!1122 lambda!40041) lambda!40042))))

(assert (=> d!305121 (= (exists!155 (filter!168 z!1122 lambda!40041) lambda!40042) lt!363336)))

(declare-fun bs!256691 () Bool)

(assert (= bs!256691 d!305121))

(assert (=> bs!256691 m!1235849))

(assert (=> bs!256691 m!1235851))

(assert (=> bs!256691 m!1235851))

(declare-fun m!1235903 () Bool)

(assert (=> bs!256691 m!1235903))

(assert (=> bs!256691 m!1235849))

(declare-fun m!1235905 () Bool)

(assert (=> bs!256691 m!1235905))

(assert (=> b!1086032 d!305121))

(declare-fun bs!256692 () Bool)

(declare-fun d!305125 () Bool)

(assert (= bs!256692 (and d!305125 b!1086025)))

(declare-fun lambda!40066 () Int)

(assert (=> bs!256692 (not (= lambda!40066 lambda!40041))))

(declare-fun bs!256693 () Bool)

(assert (= bs!256693 (and d!305125 b!1086032)))

(assert (=> bs!256693 (= lambda!40066 lambda!40042)))

(declare-fun bs!256694 () Bool)

(assert (= bs!256694 (and d!305125 d!305119)))

(assert (=> bs!256694 (not (= lambda!40066 lambda!40063))))

(assert (=> d!305125 true))

(assert (=> d!305125 (exists!156 lt!363324 lambda!40066)))

(declare-fun lt!363339 () Unit!15703)

(declare-fun choose!6927 (List!10323 List!10322) Unit!15703)

(assert (=> d!305125 (= lt!363339 (choose!6927 lt!363324 s!2287))))

(declare-fun content!1478 (List!10323) (Set Context!972))

(assert (=> d!305125 (matchZipper!54 (content!1478 lt!363324) s!2287)))

(assert (=> d!305125 (= (lemmaZipperMatchesExistsMatchingContext!33 lt!363324 s!2287) lt!363339)))

(declare-fun bs!256695 () Bool)

(assert (= bs!256695 d!305125))

(declare-fun m!1235907 () Bool)

(assert (=> bs!256695 m!1235907))

(declare-fun m!1235909 () Bool)

(assert (=> bs!256695 m!1235909))

(declare-fun m!1235911 () Bool)

(assert (=> bs!256695 m!1235911))

(assert (=> bs!256695 m!1235911))

(declare-fun m!1235913 () Bool)

(assert (=> bs!256695 m!1235913))

(assert (=> b!1086032 d!305125))

(declare-fun d!305127 () Bool)

(declare-fun e!686899 () Bool)

(assert (=> d!305127 e!686899))

(declare-fun res!483014 () Bool)

(assert (=> d!305127 (=> (not res!483014) (not e!686899))))

(declare-fun lt!363342 () List!10323)

(declare-fun noDuplicate!186 (List!10323) Bool)

(assert (=> d!305127 (= res!483014 (noDuplicate!186 lt!363342))))

(declare-fun choose!6928 ((Set Context!972)) List!10323)

(assert (=> d!305127 (= lt!363342 (choose!6928 (filter!168 z!1122 lambda!40041)))))

(assert (=> d!305127 (= (toList!624 (filter!168 z!1122 lambda!40041)) lt!363342)))

(declare-fun b!1086072 () Bool)

(assert (=> b!1086072 (= e!686899 (= (content!1478 lt!363342) (filter!168 z!1122 lambda!40041)))))

(assert (= (and d!305127 res!483014) b!1086072))

(declare-fun m!1235915 () Bool)

(assert (=> d!305127 m!1235915))

(assert (=> d!305127 m!1235849))

(declare-fun m!1235917 () Bool)

(assert (=> d!305127 m!1235917))

(declare-fun m!1235919 () Bool)

(assert (=> b!1086072 m!1235919))

(assert (=> b!1086032 d!305127))

(declare-fun d!305129 () Bool)

(declare-fun e!686900 () Bool)

(assert (=> d!305129 e!686900))

(declare-fun res!483015 () Bool)

(assert (=> d!305129 (=> (not res!483015) (not e!686900))))

(declare-fun lt!363343 () List!10323)

(assert (=> d!305129 (= res!483015 (noDuplicate!186 lt!363343))))

(assert (=> d!305129 (= lt!363343 (choose!6928 z!1122))))

(assert (=> d!305129 (= (toList!624 z!1122) lt!363343)))

(declare-fun b!1086073 () Bool)

(assert (=> b!1086073 (= e!686900 (= (content!1478 lt!363343) z!1122))))

(assert (= (and d!305129 res!483015) b!1086073))

(declare-fun m!1235921 () Bool)

(assert (=> d!305129 m!1235921))

(declare-fun m!1235923 () Bool)

(assert (=> d!305129 m!1235923))

(declare-fun m!1235925 () Bool)

(assert (=> b!1086073 m!1235925))

(assert (=> start!92508 d!305129))

(declare-fun d!305131 () Bool)

(declare-fun c!183639 () Bool)

(declare-fun isEmpty!6624 (List!10322) Bool)

(assert (=> d!305131 (= c!183639 (isEmpty!6624 s!2287))))

(declare-fun e!686904 () Bool)

(assert (=> d!305131 (= (matchZipper!54 (set.insert lt!363323 (as set.empty (Set Context!972))) s!2287) e!686904)))

(declare-fun b!1086080 () Bool)

(declare-fun nullableZipper!23 ((Set Context!972)) Bool)

(assert (=> b!1086080 (= e!686904 (nullableZipper!23 (set.insert lt!363323 (as set.empty (Set Context!972)))))))

(declare-fun b!1086081 () Bool)

(declare-fun derivationStepZipper!21 ((Set Context!972) C!6582) (Set Context!972))

(declare-fun head!2009 (List!10322) C!6582)

(declare-fun tail!1571 (List!10322) List!10322)

(assert (=> b!1086081 (= e!686904 (matchZipper!54 (derivationStepZipper!21 (set.insert lt!363323 (as set.empty (Set Context!972))) (head!2009 s!2287)) (tail!1571 s!2287)))))

(assert (= (and d!305131 c!183639) b!1086080))

(assert (= (and d!305131 (not c!183639)) b!1086081))

(declare-fun m!1235941 () Bool)

(assert (=> d!305131 m!1235941))

(assert (=> b!1086080 m!1235867))

(declare-fun m!1235943 () Bool)

(assert (=> b!1086080 m!1235943))

(declare-fun m!1235945 () Bool)

(assert (=> b!1086081 m!1235945))

(assert (=> b!1086081 m!1235867))

(assert (=> b!1086081 m!1235945))

(declare-fun m!1235947 () Bool)

(assert (=> b!1086081 m!1235947))

(declare-fun m!1235949 () Bool)

(assert (=> b!1086081 m!1235949))

(assert (=> b!1086081 m!1235947))

(assert (=> b!1086081 m!1235949))

(declare-fun m!1235951 () Bool)

(assert (=> b!1086081 m!1235951))

(assert (=> b!1086028 d!305131))

(declare-fun d!305137 () Bool)

(declare-fun lambda!40069 () Int)

(declare-fun forall!2266 (List!10321 Int) Bool)

(assert (=> d!305137 (= (inv!13229 setElem!7575) (forall!2266 (exprs!986 setElem!7575) lambda!40069))))

(declare-fun bs!256697 () Bool)

(assert (= bs!256697 d!305137))

(declare-fun m!1235959 () Bool)

(assert (=> bs!256697 m!1235959))

(assert (=> setNonEmpty!7575 d!305137))

(declare-fun d!305141 () Bool)

(declare-fun c!183641 () Bool)

(assert (=> d!305141 (= c!183641 (isEmpty!6624 s!2287))))

(declare-fun e!686908 () Bool)

(assert (=> d!305141 (= (matchZipper!54 (filter!168 z!1122 lambda!40041) s!2287) e!686908)))

(declare-fun b!1086086 () Bool)

(assert (=> b!1086086 (= e!686908 (nullableZipper!23 (filter!168 z!1122 lambda!40041)))))

(declare-fun b!1086087 () Bool)

(assert (=> b!1086087 (= e!686908 (matchZipper!54 (derivationStepZipper!21 (filter!168 z!1122 lambda!40041) (head!2009 s!2287)) (tail!1571 s!2287)))))

(assert (= (and d!305141 c!183641) b!1086086))

(assert (= (and d!305141 (not c!183641)) b!1086087))

(assert (=> d!305141 m!1235941))

(assert (=> b!1086086 m!1235849))

(declare-fun m!1235961 () Bool)

(assert (=> b!1086086 m!1235961))

(assert (=> b!1086087 m!1235945))

(assert (=> b!1086087 m!1235849))

(assert (=> b!1086087 m!1235945))

(declare-fun m!1235963 () Bool)

(assert (=> b!1086087 m!1235963))

(assert (=> b!1086087 m!1235949))

(assert (=> b!1086087 m!1235963))

(assert (=> b!1086087 m!1235949))

(declare-fun m!1235965 () Bool)

(assert (=> b!1086087 m!1235965))

(assert (=> b!1086025 d!305141))

(assert (=> b!1086025 d!305117))

(assert (=> b!1086026 d!305117))

(declare-fun d!305143 () Bool)

(declare-fun e!686912 () Bool)

(assert (=> d!305143 e!686912))

(declare-fun res!483021 () Bool)

(assert (=> d!305143 (=> (not res!483021) (not e!686912))))

(declare-fun lt!363349 () Context!972)

(declare-fun dynLambda!4518 (Int Context!972) Bool)

(assert (=> d!305143 (= res!483021 (dynLambda!4518 lambda!40042 lt!363349))))

(declare-fun getWitness!77 (List!10323 Int) Context!972)

(assert (=> d!305143 (= lt!363349 (getWitness!77 (toList!624 (filter!168 z!1122 lambda!40041)) lambda!40042))))

(assert (=> d!305143 (exists!155 (filter!168 z!1122 lambda!40041) lambda!40042)))

(assert (=> d!305143 (= (getWitness!75 (filter!168 z!1122 lambda!40041) lambda!40042) lt!363349)))

(declare-fun b!1086091 () Bool)

(assert (=> b!1086091 (= e!686912 (set.member lt!363349 (filter!168 z!1122 lambda!40041)))))

(assert (= (and d!305143 res!483021) b!1086091))

(declare-fun b_lambda!30039 () Bool)

(assert (=> (not b_lambda!30039) (not d!305143)))

(declare-fun m!1235973 () Bool)

(assert (=> d!305143 m!1235973))

(assert (=> d!305143 m!1235849))

(assert (=> d!305143 m!1235851))

(assert (=> d!305143 m!1235851))

(declare-fun m!1235975 () Bool)

(assert (=> d!305143 m!1235975))

(assert (=> d!305143 m!1235849))

(assert (=> d!305143 m!1235853))

(declare-fun m!1235977 () Bool)

(assert (=> b!1086091 m!1235977))

(assert (=> b!1086026 d!305143))

(declare-fun d!305147 () Bool)

(declare-fun c!183642 () Bool)

(assert (=> d!305147 (= c!183642 (isEmpty!6624 s!2287))))

(declare-fun e!686913 () Bool)

(assert (=> d!305147 (= (matchZipper!54 z!1122 s!2287) e!686913)))

(declare-fun b!1086092 () Bool)

(assert (=> b!1086092 (= e!686913 (nullableZipper!23 z!1122))))

(declare-fun b!1086093 () Bool)

(assert (=> b!1086093 (= e!686913 (matchZipper!54 (derivationStepZipper!21 z!1122 (head!2009 s!2287)) (tail!1571 s!2287)))))

(assert (= (and d!305147 c!183642) b!1086092))

(assert (= (and d!305147 (not c!183642)) b!1086093))

(assert (=> d!305147 m!1235941))

(declare-fun m!1235979 () Bool)

(assert (=> b!1086092 m!1235979))

(assert (=> b!1086093 m!1235945))

(assert (=> b!1086093 m!1235945))

(declare-fun m!1235981 () Bool)

(assert (=> b!1086093 m!1235981))

(assert (=> b!1086093 m!1235949))

(assert (=> b!1086093 m!1235981))

(assert (=> b!1086093 m!1235949))

(declare-fun m!1235983 () Bool)

(assert (=> b!1086093 m!1235983))

(assert (=> b!1086030 d!305147))

(declare-fun bs!256698 () Bool)

(declare-fun d!305149 () Bool)

(assert (= bs!256698 (and d!305149 d!305137)))

(declare-fun lambda!40070 () Int)

(assert (=> bs!256698 (= lambda!40070 lambda!40069)))

(assert (=> d!305149 (= (inv!13229 (h!15708 zl!316)) (forall!2266 (exprs!986 (h!15708 zl!316)) lambda!40070))))

(declare-fun bs!256699 () Bool)

(assert (= bs!256699 d!305149))

(declare-fun m!1235985 () Bool)

(assert (=> bs!256699 m!1235985))

(assert (=> b!1086031 d!305149))

(declare-fun b!1086098 () Bool)

(declare-fun e!686916 () Bool)

(declare-fun tp!325215 () Bool)

(assert (=> b!1086098 (= e!686916 (and tp_is_empty!5643 tp!325215))))

(assert (=> b!1086027 (= tp!325195 e!686916)))

(assert (= (and b!1086027 (is-Cons!10306 (t!101368 s!2287))) b!1086098))

(declare-fun b!1086103 () Bool)

(declare-fun e!686919 () Bool)

(declare-fun tp!325220 () Bool)

(declare-fun tp!325221 () Bool)

(assert (=> b!1086103 (= e!686919 (and tp!325220 tp!325221))))

(assert (=> b!1086024 (= tp!325193 e!686919)))

(assert (= (and b!1086024 (is-Cons!10305 (exprs!986 (h!15708 zl!316)))) b!1086103))

(declare-fun condSetEmpty!7581 () Bool)

(assert (=> setNonEmpty!7575 (= condSetEmpty!7581 (= setRest!7575 (as set.empty (Set Context!972))))))

(declare-fun setRes!7581 () Bool)

(assert (=> setNonEmpty!7575 (= tp!325196 setRes!7581)))

(declare-fun setIsEmpty!7581 () Bool)

(assert (=> setIsEmpty!7581 setRes!7581))

(declare-fun setNonEmpty!7581 () Bool)

(declare-fun e!686922 () Bool)

(declare-fun tp!325226 () Bool)

(declare-fun setElem!7581 () Context!972)

(assert (=> setNonEmpty!7581 (= setRes!7581 (and tp!325226 (inv!13229 setElem!7581) e!686922))))

(declare-fun setRest!7581 () (Set Context!972))

(assert (=> setNonEmpty!7581 (= setRest!7575 (set.union (set.insert setElem!7581 (as set.empty (Set Context!972))) setRest!7581))))

(declare-fun b!1086108 () Bool)

(declare-fun tp!325227 () Bool)

(assert (=> b!1086108 (= e!686922 tp!325227)))

(assert (= (and setNonEmpty!7575 condSetEmpty!7581) setIsEmpty!7581))

(assert (= (and setNonEmpty!7575 (not condSetEmpty!7581)) setNonEmpty!7581))

(assert (= setNonEmpty!7581 b!1086108))

(declare-fun m!1235991 () Bool)

(assert (=> setNonEmpty!7581 m!1235991))

(declare-fun b!1086109 () Bool)

(declare-fun e!686923 () Bool)

(declare-fun tp!325228 () Bool)

(declare-fun tp!325229 () Bool)

(assert (=> b!1086109 (= e!686923 (and tp!325228 tp!325229))))

(assert (=> b!1086029 (= tp!325197 e!686923)))

(assert (= (and b!1086029 (is-Cons!10305 (exprs!986 setElem!7575))) b!1086109))

(declare-fun b!1086117 () Bool)

(declare-fun e!686929 () Bool)

(declare-fun tp!325234 () Bool)

(assert (=> b!1086117 (= e!686929 tp!325234)))

(declare-fun b!1086116 () Bool)

(declare-fun e!686928 () Bool)

(declare-fun tp!325235 () Bool)

(assert (=> b!1086116 (= e!686928 (and (inv!13229 (h!15708 (t!101369 zl!316))) e!686929 tp!325235))))

(assert (=> b!1086031 (= tp!325194 e!686928)))

(assert (= b!1086116 b!1086117))

(assert (= (and b!1086031 (is-Cons!10307 (t!101369 zl!316))) b!1086116))

(declare-fun m!1235993 () Bool)

(assert (=> b!1086116 m!1235993))

(declare-fun b_lambda!30041 () Bool)

(assert (= b_lambda!30039 (or b!1086032 b_lambda!30041)))

(declare-fun bs!256701 () Bool)

(declare-fun d!305153 () Bool)

(assert (= bs!256701 (and d!305153 b!1086032)))

(assert (=> bs!256701 (= (dynLambda!4518 lambda!40042 lt!363349) (matchZipper!54 (set.insert lt!363349 (as set.empty (Set Context!972))) s!2287))))

(declare-fun m!1235995 () Bool)

(assert (=> bs!256701 m!1235995))

(assert (=> bs!256701 m!1235995))

(declare-fun m!1235997 () Bool)

(assert (=> bs!256701 m!1235997))

(assert (=> d!305143 d!305153))

(push 1)

(assert (not b!1086081))

(assert (not b!1086108))

(assert (not b!1086098))

(assert (not b!1086086))

(assert (not b!1086103))

(assert (not b!1086093))

(assert (not d!305131))

(assert (not b!1086080))

(assert (not b!1086072))

(assert (not b!1086087))

(assert (not d!305127))

(assert (not d!305137))

(assert (not b!1086116))

(assert (not b!1086117))

(assert (not d!305143))

(assert (not d!305149))

(assert (not b_lambda!30041))

(assert (not d!305121))

(assert (not b!1086073))

(assert (not d!305119))

(assert (not d!305125))

(assert (not bs!256701))

(assert (not d!305129))

(assert (not d!305147))

(assert (not d!305141))

(assert tp_is_empty!5643)

(assert (not d!305117))

(assert (not b!1086092))

(assert (not b!1086109))

(assert (not setNonEmpty!7581))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

