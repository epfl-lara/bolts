; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!726556 () Bool)

(assert start!726556)

(declare-fun b!7505886 () Bool)

(declare-fun e!4475471 () Bool)

(declare-fun tp_is_empty!49757 () Bool)

(declare-fun tp!2178832 () Bool)

(assert (=> b!7505886 (= e!4475471 (and tp_is_empty!49757 tp!2178832))))

(declare-fun b!7505887 () Bool)

(declare-fun e!4475467 () Bool)

(declare-fun e!4475470 () Bool)

(assert (=> b!7505887 (= e!4475467 e!4475470)))

(declare-fun res!3011329 () Bool)

(assert (=> b!7505887 (=> (not res!3011329) (not e!4475470))))

(declare-fun testedPSize!164 () Int)

(declare-fun lt!2634873 () Int)

(assert (=> b!7505887 (= res!3011329 (= testedPSize!164 lt!2634873))))

(declare-datatypes ((C!39742 0))(
  ( (C!39743 (val!30269 Int)) )
))
(declare-datatypes ((List!72513 0))(
  ( (Nil!72389) (Cons!72389 (h!78837 C!39742) (t!387082 List!72513)) )
))
(declare-fun testedP!204 () List!72513)

(declare-fun size!42279 (List!72513) Int)

(assert (=> b!7505887 (= lt!2634873 (size!42279 testedP!204))))

(declare-fun b!7505888 () Bool)

(declare-fun res!3011331 () Bool)

(declare-fun e!4475472 () Bool)

(assert (=> b!7505888 (=> res!3011331 e!4475472)))

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7505888 (= res!3011331 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7505889 () Bool)

(declare-fun e!4475464 () Bool)

(assert (=> b!7505889 (= e!4475470 e!4475464)))

(declare-fun res!3011330 () Bool)

(assert (=> b!7505889 (=> (not res!3011330) (not e!4475464))))

(declare-fun lt!2634876 () Int)

(assert (=> b!7505889 (= res!3011330 (= totalInputSize!226 lt!2634876))))

(declare-fun totalInput!779 () List!72513)

(assert (=> b!7505889 (= lt!2634876 (size!42279 totalInput!779))))

(declare-fun b!7505890 () Bool)

(declare-datatypes ((Unit!166378 0))(
  ( (Unit!166379) )
))
(declare-fun e!4475463 () Unit!166378)

(declare-fun Unit!166380 () Unit!166378)

(assert (=> b!7505890 (= e!4475463 Unit!166380)))

(declare-fun res!3011335 () Bool)

(assert (=> start!726556 (=> (not res!3011335) (not e!4475467))))

(declare-fun lt!2634874 () List!72513)

(assert (=> start!726556 (= res!3011335 (= lt!2634874 totalInput!779))))

(declare-fun testedSuffix!164 () List!72513)

(declare-fun ++!17337 (List!72513 List!72513) List!72513)

(assert (=> start!726556 (= lt!2634874 (++!17337 testedP!204 testedSuffix!164))))

(assert (=> start!726556 e!4475467))

(declare-fun e!4475469 () Bool)

(assert (=> start!726556 e!4475469))

(assert (=> start!726556 true))

(assert (=> start!726556 e!4475471))

(declare-fun e!4475473 () Bool)

(assert (=> start!726556 e!4475473))

(declare-fun condSetEmpty!57009 () Bool)

(declare-datatypes ((Regex!19708 0))(
  ( (ElementMatch!19708 (c!1385686 C!39742)) (Concat!28553 (regOne!39928 Regex!19708) (regTwo!39928 Regex!19708)) (EmptyExpr!19708) (Star!19708 (reg!20037 Regex!19708)) (EmptyLang!19708) (Union!19708 (regOne!39929 Regex!19708) (regTwo!39929 Regex!19708)) )
))
(declare-datatypes ((List!72514 0))(
  ( (Nil!72390) (Cons!72390 (h!78838 Regex!19708) (t!387083 List!72514)) )
))
(declare-datatypes ((Context!16920 0))(
  ( (Context!16921 (exprs!8960 List!72514)) )
))
(declare-fun z!3716 () (Set Context!16920))

(assert (=> start!726556 (= condSetEmpty!57009 (= z!3716 (as set.empty (Set Context!16920))))))

(declare-fun setRes!57009 () Bool)

(assert (=> start!726556 setRes!57009))

(declare-fun b!7505891 () Bool)

(declare-fun tp!2178829 () Bool)

(assert (=> b!7505891 (= e!4475473 (and tp_is_empty!49757 tp!2178829))))

(declare-fun b!7505892 () Bool)

(declare-fun e!4475466 () Bool)

(assert (=> b!7505892 (= e!4475472 e!4475466)))

(declare-fun res!3011334 () Bool)

(assert (=> b!7505892 (=> res!3011334 e!4475466)))

(assert (=> b!7505892 (= res!3011334 (>= lt!2634873 lt!2634876))))

(declare-fun lt!2634877 () Unit!166378)

(assert (=> b!7505892 (= lt!2634877 e!4475463)))

(declare-fun c!1385685 () Bool)

(assert (=> b!7505892 (= c!1385685 (= lt!2634873 lt!2634876))))

(assert (=> b!7505892 (<= lt!2634873 lt!2634876)))

(declare-fun lt!2634871 () Unit!166378)

(declare-fun lemmaIsPrefixThenSmallerEqSize!989 (List!72513 List!72513) Unit!166378)

(assert (=> b!7505892 (= lt!2634871 (lemmaIsPrefixThenSmallerEqSize!989 testedP!204 totalInput!779))))

(declare-fun b!7505893 () Bool)

(declare-fun e!4475468 () Bool)

(assert (=> b!7505893 (= e!4475464 (not e!4475468))))

(declare-fun res!3011332 () Bool)

(assert (=> b!7505893 (=> res!3011332 e!4475468)))

(declare-fun isPrefix!6002 (List!72513 List!72513) Bool)

(assert (=> b!7505893 (= res!3011332 (not (isPrefix!6002 testedP!204 totalInput!779)))))

(assert (=> b!7505893 (isPrefix!6002 testedP!204 lt!2634874)))

(declare-fun lt!2634878 () Unit!166378)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3715 (List!72513 List!72513) Unit!166378)

(assert (=> b!7505893 (= lt!2634878 (lemmaConcatTwoListThenFirstIsPrefix!3715 testedP!204 testedSuffix!164))))

(declare-fun b!7505894 () Bool)

(declare-fun e!4475465 () Bool)

(declare-fun tp!2178830 () Bool)

(assert (=> b!7505894 (= e!4475465 tp!2178830)))

(declare-fun setIsEmpty!57009 () Bool)

(assert (=> setIsEmpty!57009 setRes!57009))

(declare-fun b!7505895 () Bool)

(declare-fun Unit!166381 () Unit!166378)

(assert (=> b!7505895 (= e!4475463 Unit!166381)))

(declare-fun lt!2634881 () Unit!166378)

(declare-fun lemmaIsPrefixRefl!3841 (List!72513 List!72513) Unit!166378)

(assert (=> b!7505895 (= lt!2634881 (lemmaIsPrefixRefl!3841 totalInput!779 totalInput!779))))

(assert (=> b!7505895 (isPrefix!6002 totalInput!779 totalInput!779)))

(declare-fun lt!2634869 () Unit!166378)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1491 (List!72513 List!72513 List!72513) Unit!166378)

(assert (=> b!7505895 (= lt!2634869 (lemmaIsPrefixSameLengthThenSameList!1491 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7505895 false))

(declare-fun lt!2634870 () C!39742)

(declare-fun b!7505896 () Bool)

(declare-fun tail!14992 (List!72513) List!72513)

(assert (=> b!7505896 (= e!4475466 (= (++!17337 testedP!204 (Cons!72389 lt!2634870 (tail!14992 testedSuffix!164))) totalInput!779))))

(declare-fun lt!2634880 () List!72513)

(declare-fun head!15425 (List!72513) C!39742)

(assert (=> b!7505896 (isPrefix!6002 (++!17337 testedP!204 (Cons!72389 (head!15425 lt!2634880) Nil!72389)) totalInput!779)))

(declare-fun lt!2634875 () Unit!166378)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1119 (List!72513 List!72513) Unit!166378)

(assert (=> b!7505896 (= lt!2634875 (lemmaAddHeadSuffixToPrefixStillPrefix!1119 testedP!204 totalInput!779))))

(declare-fun lt!2634879 () List!72513)

(assert (=> b!7505896 (= lt!2634879 (++!17337 testedP!204 (Cons!72389 lt!2634870 Nil!72389)))))

(assert (=> b!7505896 (= lt!2634870 (head!15425 testedSuffix!164))))

(declare-fun b!7505897 () Bool)

(declare-fun tp!2178828 () Bool)

(assert (=> b!7505897 (= e!4475469 (and tp_is_empty!49757 tp!2178828))))

(declare-fun b!7505898 () Bool)

(assert (=> b!7505898 (= e!4475468 e!4475472)))

(declare-fun res!3011333 () Bool)

(assert (=> b!7505898 (=> res!3011333 e!4475472)))

(declare-fun lostCauseZipper!1396 ((Set Context!16920)) Bool)

(assert (=> b!7505898 (= res!3011333 (lostCauseZipper!1396 z!3716))))

(assert (=> b!7505898 (and (= testedSuffix!164 lt!2634880) (= lt!2634880 testedSuffix!164))))

(declare-fun lt!2634872 () Unit!166378)

(declare-fun lemmaSamePrefixThenSameSuffix!2801 (List!72513 List!72513 List!72513 List!72513 List!72513) Unit!166378)

(assert (=> b!7505898 (= lt!2634872 (lemmaSamePrefixThenSameSuffix!2801 testedP!204 testedSuffix!164 testedP!204 lt!2634880 totalInput!779))))

(declare-fun getSuffix!3502 (List!72513 List!72513) List!72513)

(assert (=> b!7505898 (= lt!2634880 (getSuffix!3502 totalInput!779 testedP!204))))

(declare-fun setNonEmpty!57009 () Bool)

(declare-fun setElem!57009 () Context!16920)

(declare-fun tp!2178831 () Bool)

(declare-fun inv!92501 (Context!16920) Bool)

(assert (=> setNonEmpty!57009 (= setRes!57009 (and tp!2178831 (inv!92501 setElem!57009) e!4475465))))

(declare-fun setRest!57009 () (Set Context!16920))

(assert (=> setNonEmpty!57009 (= z!3716 (set.union (set.insert setElem!57009 (as set.empty (Set Context!16920))) setRest!57009))))

(assert (= (and start!726556 res!3011335) b!7505887))

(assert (= (and b!7505887 res!3011329) b!7505889))

(assert (= (and b!7505889 res!3011330) b!7505893))

(assert (= (and b!7505893 (not res!3011332)) b!7505898))

(assert (= (and b!7505898 (not res!3011333)) b!7505888))

(assert (= (and b!7505888 (not res!3011331)) b!7505892))

(assert (= (and b!7505892 c!1385685) b!7505895))

(assert (= (and b!7505892 (not c!1385685)) b!7505890))

(assert (= (and b!7505892 (not res!3011334)) b!7505896))

(assert (= (and start!726556 (is-Cons!72389 testedSuffix!164)) b!7505897))

(assert (= (and start!726556 (is-Cons!72389 totalInput!779)) b!7505886))

(assert (= (and start!726556 (is-Cons!72389 testedP!204)) b!7505891))

(assert (= (and start!726556 condSetEmpty!57009) setIsEmpty!57009))

(assert (= (and start!726556 (not condSetEmpty!57009)) setNonEmpty!57009))

(assert (= setNonEmpty!57009 b!7505894))

(declare-fun m!8088082 () Bool)

(assert (=> b!7505893 m!8088082))

(declare-fun m!8088084 () Bool)

(assert (=> b!7505893 m!8088084))

(declare-fun m!8088086 () Bool)

(assert (=> b!7505893 m!8088086))

(declare-fun m!8088088 () Bool)

(assert (=> b!7505887 m!8088088))

(declare-fun m!8088090 () Bool)

(assert (=> b!7505898 m!8088090))

(declare-fun m!8088092 () Bool)

(assert (=> b!7505898 m!8088092))

(declare-fun m!8088094 () Bool)

(assert (=> b!7505898 m!8088094))

(declare-fun m!8088096 () Bool)

(assert (=> b!7505889 m!8088096))

(declare-fun m!8088098 () Bool)

(assert (=> setNonEmpty!57009 m!8088098))

(declare-fun m!8088100 () Bool)

(assert (=> b!7505895 m!8088100))

(declare-fun m!8088102 () Bool)

(assert (=> b!7505895 m!8088102))

(declare-fun m!8088104 () Bool)

(assert (=> b!7505895 m!8088104))

(declare-fun m!8088106 () Bool)

(assert (=> b!7505892 m!8088106))

(declare-fun m!8088108 () Bool)

(assert (=> start!726556 m!8088108))

(declare-fun m!8088110 () Bool)

(assert (=> b!7505896 m!8088110))

(declare-fun m!8088112 () Bool)

(assert (=> b!7505896 m!8088112))

(assert (=> b!7505896 m!8088110))

(declare-fun m!8088114 () Bool)

(assert (=> b!7505896 m!8088114))

(declare-fun m!8088116 () Bool)

(assert (=> b!7505896 m!8088116))

(declare-fun m!8088118 () Bool)

(assert (=> b!7505896 m!8088118))

(declare-fun m!8088120 () Bool)

(assert (=> b!7505896 m!8088120))

(declare-fun m!8088122 () Bool)

(assert (=> b!7505896 m!8088122))

(declare-fun m!8088124 () Bool)

(assert (=> b!7505896 m!8088124))

(push 1)

(assert (not b!7505887))

(assert (not b!7505894))

(assert (not b!7505898))

(assert (not b!7505895))

(assert (not b!7505892))

(assert (not b!7505893))

(assert (not start!726556))

(assert tp_is_empty!49757)

(assert (not setNonEmpty!57009))

(assert (not b!7505886))

(assert (not b!7505891))

(assert (not b!7505897))

(assert (not b!7505896))

(assert (not b!7505889))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1938141 () Bool)

(declare-fun b!7505964 () Bool)

(declare-fun d!2303991 () Bool)

(assert (= bs!1938141 (and b!7505964 d!2303991)))

(declare-fun lambda!465363 () Int)

(declare-fun lambda!465362 () Int)

(assert (=> bs!1938141 (not (= lambda!465363 lambda!465362))))

(declare-fun bs!1938142 () Bool)

(declare-fun b!7505965 () Bool)

(assert (= bs!1938142 (and b!7505965 d!2303991)))

(declare-fun lambda!465364 () Int)

(assert (=> bs!1938142 (not (= lambda!465364 lambda!465362))))

(declare-fun bs!1938143 () Bool)

(assert (= bs!1938143 (and b!7505965 b!7505964)))

(assert (=> bs!1938143 (= lambda!465364 lambda!465363)))

(declare-fun bm!688704 () Bool)

(declare-datatypes ((List!72517 0))(
  ( (Nil!72393) (Cons!72393 (h!78841 Context!16920) (t!387086 List!72517)) )
))
(declare-fun call!688709 () List!72517)

(declare-fun toList!11829 ((Set Context!16920)) List!72517)

(assert (=> bm!688704 (= call!688709 (toList!11829 z!3716))))

(declare-fun call!688710 () Bool)

(declare-fun bm!688705 () Bool)

(declare-fun lt!2634959 () List!72517)

(declare-fun c!1385708 () Bool)

(declare-fun lt!2634958 () List!72517)

(declare-fun exists!4859 (List!72517 Int) Bool)

(assert (=> bm!688705 (= call!688710 (exists!4859 (ite c!1385708 lt!2634958 lt!2634959) (ite c!1385708 lambda!465363 lambda!465364)))))

(declare-fun e!4475527 () Unit!166378)

(declare-fun Unit!166386 () Unit!166378)

(assert (=> b!7505964 (= e!4475527 Unit!166386)))

(assert (=> b!7505964 (= lt!2634958 call!688709)))

(declare-fun lt!2634957 () Unit!166378)

(declare-fun lemmaNotForallThenExists!500 (List!72517 Int) Unit!166378)

(assert (=> b!7505964 (= lt!2634957 (lemmaNotForallThenExists!500 lt!2634958 lambda!465362))))

(assert (=> b!7505964 call!688710))

(declare-fun lt!2634960 () Unit!166378)

(assert (=> b!7505964 (= lt!2634960 lt!2634957)))

(declare-fun lt!2634956 () Bool)

(declare-datatypes ((Option!17225 0))(
  ( (None!17224) (Some!17224 (v!54353 List!72513)) )
))
(declare-fun isEmpty!41309 (Option!17225) Bool)

(declare-fun getLanguageWitness!1047 ((Set Context!16920)) Option!17225)

(assert (=> d!2303991 (= lt!2634956 (isEmpty!41309 (getLanguageWitness!1047 z!3716)))))

(declare-fun forall!18284 ((Set Context!16920) Int) Bool)

(assert (=> d!2303991 (= lt!2634956 (forall!18284 z!3716 lambda!465362))))

(declare-fun lt!2634961 () Unit!166378)

(assert (=> d!2303991 (= lt!2634961 e!4475527)))

(assert (=> d!2303991 (= c!1385708 (not (forall!18284 z!3716 lambda!465362)))))

(assert (=> d!2303991 (= (lostCauseZipper!1396 z!3716) lt!2634956)))

(declare-fun Unit!166387 () Unit!166378)

(assert (=> b!7505965 (= e!4475527 Unit!166387)))

(assert (=> b!7505965 (= lt!2634959 call!688709)))

(declare-fun lt!2634963 () Unit!166378)

(declare-fun lemmaForallThenNotExists!467 (List!72517 Int) Unit!166378)

(assert (=> b!7505965 (= lt!2634963 (lemmaForallThenNotExists!467 lt!2634959 lambda!465362))))

(assert (=> b!7505965 (not call!688710)))

(declare-fun lt!2634962 () Unit!166378)

(assert (=> b!7505965 (= lt!2634962 lt!2634963)))

(assert (= (and d!2303991 c!1385708) b!7505964))

(assert (= (and d!2303991 (not c!1385708)) b!7505965))

(assert (= (or b!7505964 b!7505965) bm!688704))

(assert (= (or b!7505964 b!7505965) bm!688705))

(declare-fun m!8088184 () Bool)

(assert (=> d!2303991 m!8088184))

(assert (=> d!2303991 m!8088184))

(declare-fun m!8088186 () Bool)

(assert (=> d!2303991 m!8088186))

(declare-fun m!8088188 () Bool)

(assert (=> d!2303991 m!8088188))

(assert (=> d!2303991 m!8088188))

(declare-fun m!8088190 () Bool)

(assert (=> b!7505965 m!8088190))

(declare-fun m!8088192 () Bool)

(assert (=> bm!688705 m!8088192))

(declare-fun m!8088194 () Bool)

(assert (=> b!7505964 m!8088194))

(declare-fun m!8088196 () Bool)

(assert (=> bm!688704 m!8088196))

(assert (=> b!7505898 d!2303991))

(declare-fun d!2303999 () Bool)

(assert (=> d!2303999 (= testedSuffix!164 lt!2634880)))

(declare-fun lt!2634966 () Unit!166378)

(declare-fun choose!58103 (List!72513 List!72513 List!72513 List!72513 List!72513) Unit!166378)

(assert (=> d!2303999 (= lt!2634966 (choose!58103 testedP!204 testedSuffix!164 testedP!204 lt!2634880 totalInput!779))))

(assert (=> d!2303999 (isPrefix!6002 testedP!204 totalInput!779)))

(assert (=> d!2303999 (= (lemmaSamePrefixThenSameSuffix!2801 testedP!204 testedSuffix!164 testedP!204 lt!2634880 totalInput!779) lt!2634966)))

(declare-fun bs!1938144 () Bool)

(assert (= bs!1938144 d!2303999))

(declare-fun m!8088198 () Bool)

(assert (=> bs!1938144 m!8088198))

(assert (=> bs!1938144 m!8088082))

(assert (=> b!7505898 d!2303999))

(declare-fun d!2304001 () Bool)

(declare-fun lt!2634969 () List!72513)

(assert (=> d!2304001 (= (++!17337 testedP!204 lt!2634969) totalInput!779)))

(declare-fun e!4475530 () List!72513)

(assert (=> d!2304001 (= lt!2634969 e!4475530)))

(declare-fun c!1385711 () Bool)

(assert (=> d!2304001 (= c!1385711 (is-Cons!72389 testedP!204))))

(assert (=> d!2304001 (>= (size!42279 totalInput!779) (size!42279 testedP!204))))

(assert (=> d!2304001 (= (getSuffix!3502 totalInput!779 testedP!204) lt!2634969)))

(declare-fun b!7505970 () Bool)

(assert (=> b!7505970 (= e!4475530 (getSuffix!3502 (tail!14992 totalInput!779) (t!387082 testedP!204)))))

(declare-fun b!7505971 () Bool)

(assert (=> b!7505971 (= e!4475530 totalInput!779)))

(assert (= (and d!2304001 c!1385711) b!7505970))

(assert (= (and d!2304001 (not c!1385711)) b!7505971))

(declare-fun m!8088200 () Bool)

(assert (=> d!2304001 m!8088200))

(assert (=> d!2304001 m!8088096))

(assert (=> d!2304001 m!8088088))

(declare-fun m!8088202 () Bool)

(assert (=> b!7505970 m!8088202))

(assert (=> b!7505970 m!8088202))

(declare-fun m!8088204 () Bool)

(assert (=> b!7505970 m!8088204))

(assert (=> b!7505898 d!2304001))

(declare-fun d!2304003 () Bool)

(declare-fun e!4475538 () Bool)

(assert (=> d!2304003 e!4475538))

(declare-fun res!3011379 () Bool)

(assert (=> d!2304003 (=> res!3011379 e!4475538)))

(declare-fun lt!2634972 () Bool)

(assert (=> d!2304003 (= res!3011379 (not lt!2634972))))

(declare-fun e!4475539 () Bool)

(assert (=> d!2304003 (= lt!2634972 e!4475539)))

(declare-fun res!3011377 () Bool)

(assert (=> d!2304003 (=> res!3011377 e!4475539)))

(assert (=> d!2304003 (= res!3011377 (is-Nil!72389 testedP!204))))

(assert (=> d!2304003 (= (isPrefix!6002 testedP!204 totalInput!779) lt!2634972)))

(declare-fun b!7505982 () Bool)

(declare-fun e!4475537 () Bool)

(assert (=> b!7505982 (= e!4475537 (isPrefix!6002 (tail!14992 testedP!204) (tail!14992 totalInput!779)))))

(declare-fun b!7505983 () Bool)

(assert (=> b!7505983 (= e!4475538 (>= (size!42279 totalInput!779) (size!42279 testedP!204)))))

(declare-fun b!7505981 () Bool)

(declare-fun res!3011380 () Bool)

(assert (=> b!7505981 (=> (not res!3011380) (not e!4475537))))

(assert (=> b!7505981 (= res!3011380 (= (head!15425 testedP!204) (head!15425 totalInput!779)))))

(declare-fun b!7505980 () Bool)

(assert (=> b!7505980 (= e!4475539 e!4475537)))

(declare-fun res!3011378 () Bool)

(assert (=> b!7505980 (=> (not res!3011378) (not e!4475537))))

(assert (=> b!7505980 (= res!3011378 (not (is-Nil!72389 totalInput!779)))))

(assert (= (and d!2304003 (not res!3011377)) b!7505980))

(assert (= (and b!7505980 res!3011378) b!7505981))

(assert (= (and b!7505981 res!3011380) b!7505982))

(assert (= (and d!2304003 (not res!3011379)) b!7505983))

(declare-fun m!8088206 () Bool)

(assert (=> b!7505982 m!8088206))

(assert (=> b!7505982 m!8088202))

(assert (=> b!7505982 m!8088206))

(assert (=> b!7505982 m!8088202))

(declare-fun m!8088208 () Bool)

(assert (=> b!7505982 m!8088208))

(assert (=> b!7505983 m!8088096))

(assert (=> b!7505983 m!8088088))

(declare-fun m!8088210 () Bool)

(assert (=> b!7505981 m!8088210))

(declare-fun m!8088212 () Bool)

(assert (=> b!7505981 m!8088212))

(assert (=> b!7505893 d!2304003))

(declare-fun d!2304005 () Bool)

(declare-fun e!4475541 () Bool)

(assert (=> d!2304005 e!4475541))

(declare-fun res!3011383 () Bool)

(assert (=> d!2304005 (=> res!3011383 e!4475541)))

(declare-fun lt!2634973 () Bool)

(assert (=> d!2304005 (= res!3011383 (not lt!2634973))))

(declare-fun e!4475542 () Bool)

(assert (=> d!2304005 (= lt!2634973 e!4475542)))

(declare-fun res!3011381 () Bool)

(assert (=> d!2304005 (=> res!3011381 e!4475542)))

(assert (=> d!2304005 (= res!3011381 (is-Nil!72389 testedP!204))))

(assert (=> d!2304005 (= (isPrefix!6002 testedP!204 lt!2634874) lt!2634973)))

(declare-fun b!7505986 () Bool)

(declare-fun e!4475540 () Bool)

(assert (=> b!7505986 (= e!4475540 (isPrefix!6002 (tail!14992 testedP!204) (tail!14992 lt!2634874)))))

(declare-fun b!7505987 () Bool)

(assert (=> b!7505987 (= e!4475541 (>= (size!42279 lt!2634874) (size!42279 testedP!204)))))

(declare-fun b!7505985 () Bool)

(declare-fun res!3011384 () Bool)

(assert (=> b!7505985 (=> (not res!3011384) (not e!4475540))))

(assert (=> b!7505985 (= res!3011384 (= (head!15425 testedP!204) (head!15425 lt!2634874)))))

(declare-fun b!7505984 () Bool)

(assert (=> b!7505984 (= e!4475542 e!4475540)))

(declare-fun res!3011382 () Bool)

(assert (=> b!7505984 (=> (not res!3011382) (not e!4475540))))

(assert (=> b!7505984 (= res!3011382 (not (is-Nil!72389 lt!2634874)))))

(assert (= (and d!2304005 (not res!3011381)) b!7505984))

(assert (= (and b!7505984 res!3011382) b!7505985))

(assert (= (and b!7505985 res!3011384) b!7505986))

(assert (= (and d!2304005 (not res!3011383)) b!7505987))

(assert (=> b!7505986 m!8088206))

(declare-fun m!8088214 () Bool)

(assert (=> b!7505986 m!8088214))

(assert (=> b!7505986 m!8088206))

(assert (=> b!7505986 m!8088214))

(declare-fun m!8088216 () Bool)

(assert (=> b!7505986 m!8088216))

(declare-fun m!8088218 () Bool)

(assert (=> b!7505987 m!8088218))

(assert (=> b!7505987 m!8088088))

(assert (=> b!7505985 m!8088210))

(declare-fun m!8088220 () Bool)

(assert (=> b!7505985 m!8088220))

(assert (=> b!7505893 d!2304005))

(declare-fun d!2304007 () Bool)

(assert (=> d!2304007 (isPrefix!6002 testedP!204 (++!17337 testedP!204 testedSuffix!164))))

(declare-fun lt!2634976 () Unit!166378)

(declare-fun choose!58104 (List!72513 List!72513) Unit!166378)

(assert (=> d!2304007 (= lt!2634976 (choose!58104 testedP!204 testedSuffix!164))))

(assert (=> d!2304007 (= (lemmaConcatTwoListThenFirstIsPrefix!3715 testedP!204 testedSuffix!164) lt!2634976)))

(declare-fun bs!1938145 () Bool)

(assert (= bs!1938145 d!2304007))

(assert (=> bs!1938145 m!8088108))

(assert (=> bs!1938145 m!8088108))

(declare-fun m!8088222 () Bool)

(assert (=> bs!1938145 m!8088222))

(declare-fun m!8088224 () Bool)

(assert (=> bs!1938145 m!8088224))

(assert (=> b!7505893 d!2304007))

(declare-fun d!2304009 () Bool)

(declare-fun lambda!465367 () Int)

(declare-fun forall!18285 (List!72514 Int) Bool)

(assert (=> d!2304009 (= (inv!92501 setElem!57009) (forall!18285 (exprs!8960 setElem!57009) lambda!465367))))

(declare-fun bs!1938146 () Bool)

(assert (= bs!1938146 d!2304009))

(declare-fun m!8088226 () Bool)

(assert (=> bs!1938146 m!8088226))

(assert (=> setNonEmpty!57009 d!2304009))

(declare-fun d!2304011 () Bool)

(declare-fun lt!2634979 () Int)

(assert (=> d!2304011 (>= lt!2634979 0)))

(declare-fun e!4475545 () Int)

(assert (=> d!2304011 (= lt!2634979 e!4475545)))

(declare-fun c!1385714 () Bool)

(assert (=> d!2304011 (= c!1385714 (is-Nil!72389 totalInput!779))))

(assert (=> d!2304011 (= (size!42279 totalInput!779) lt!2634979)))

(declare-fun b!7505992 () Bool)

(assert (=> b!7505992 (= e!4475545 0)))

(declare-fun b!7505993 () Bool)

(assert (=> b!7505993 (= e!4475545 (+ 1 (size!42279 (t!387082 totalInput!779))))))

(assert (= (and d!2304011 c!1385714) b!7505992))

(assert (= (and d!2304011 (not c!1385714)) b!7505993))

(declare-fun m!8088228 () Bool)

(assert (=> b!7505993 m!8088228))

(assert (=> b!7505889 d!2304011))

(declare-fun d!2304013 () Bool)

(assert (=> d!2304013 (isPrefix!6002 totalInput!779 totalInput!779)))

(declare-fun lt!2634982 () Unit!166378)

(declare-fun choose!58105 (List!72513 List!72513) Unit!166378)

(assert (=> d!2304013 (= lt!2634982 (choose!58105 totalInput!779 totalInput!779))))

(assert (=> d!2304013 (= (lemmaIsPrefixRefl!3841 totalInput!779 totalInput!779) lt!2634982)))

(declare-fun bs!1938147 () Bool)

(assert (= bs!1938147 d!2304013))

(assert (=> bs!1938147 m!8088102))

(declare-fun m!8088230 () Bool)

(assert (=> bs!1938147 m!8088230))

(assert (=> b!7505895 d!2304013))

(declare-fun d!2304015 () Bool)

(declare-fun e!4475547 () Bool)

(assert (=> d!2304015 e!4475547))

(declare-fun res!3011387 () Bool)

(assert (=> d!2304015 (=> res!3011387 e!4475547)))

(declare-fun lt!2634983 () Bool)

(assert (=> d!2304015 (= res!3011387 (not lt!2634983))))

(declare-fun e!4475548 () Bool)

(assert (=> d!2304015 (= lt!2634983 e!4475548)))

(declare-fun res!3011385 () Bool)

(assert (=> d!2304015 (=> res!3011385 e!4475548)))

(assert (=> d!2304015 (= res!3011385 (is-Nil!72389 totalInput!779))))

(assert (=> d!2304015 (= (isPrefix!6002 totalInput!779 totalInput!779) lt!2634983)))

(declare-fun b!7505996 () Bool)

(declare-fun e!4475546 () Bool)

(assert (=> b!7505996 (= e!4475546 (isPrefix!6002 (tail!14992 totalInput!779) (tail!14992 totalInput!779)))))

(declare-fun b!7505997 () Bool)

(assert (=> b!7505997 (= e!4475547 (>= (size!42279 totalInput!779) (size!42279 totalInput!779)))))

(declare-fun b!7505995 () Bool)

(declare-fun res!3011388 () Bool)

(assert (=> b!7505995 (=> (not res!3011388) (not e!4475546))))

(assert (=> b!7505995 (= res!3011388 (= (head!15425 totalInput!779) (head!15425 totalInput!779)))))

(declare-fun b!7505994 () Bool)

(assert (=> b!7505994 (= e!4475548 e!4475546)))

(declare-fun res!3011386 () Bool)

(assert (=> b!7505994 (=> (not res!3011386) (not e!4475546))))

(assert (=> b!7505994 (= res!3011386 (not (is-Nil!72389 totalInput!779)))))

(assert (= (and d!2304015 (not res!3011385)) b!7505994))

(assert (= (and b!7505994 res!3011386) b!7505995))

(assert (= (and b!7505995 res!3011388) b!7505996))

(assert (= (and d!2304015 (not res!3011387)) b!7505997))

(assert (=> b!7505996 m!8088202))

(assert (=> b!7505996 m!8088202))

(assert (=> b!7505996 m!8088202))

(assert (=> b!7505996 m!8088202))

(declare-fun m!8088232 () Bool)

(assert (=> b!7505996 m!8088232))

(assert (=> b!7505997 m!8088096))

(assert (=> b!7505997 m!8088096))

(assert (=> b!7505995 m!8088212))

(assert (=> b!7505995 m!8088212))

(assert (=> b!7505895 d!2304015))

(declare-fun d!2304017 () Bool)

(assert (=> d!2304017 (= totalInput!779 testedP!204)))

(declare-fun lt!2634986 () Unit!166378)

(declare-fun choose!58106 (List!72513 List!72513 List!72513) Unit!166378)

(assert (=> d!2304017 (= lt!2634986 (choose!58106 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2304017 (isPrefix!6002 totalInput!779 totalInput!779)))

(assert (=> d!2304017 (= (lemmaIsPrefixSameLengthThenSameList!1491 totalInput!779 testedP!204 totalInput!779) lt!2634986)))

(declare-fun bs!1938148 () Bool)

(assert (= bs!1938148 d!2304017))

(declare-fun m!8088234 () Bool)

(assert (=> bs!1938148 m!8088234))

(assert (=> bs!1938148 m!8088102))

(assert (=> b!7505895 d!2304017))

(declare-fun lt!2634989 () List!72513)

(declare-fun b!7506009 () Bool)

(declare-fun e!4475553 () Bool)

(assert (=> b!7506009 (= e!4475553 (or (not (= testedSuffix!164 Nil!72389)) (= lt!2634989 testedP!204)))))

(declare-fun b!7506007 () Bool)

(declare-fun e!4475554 () List!72513)

(assert (=> b!7506007 (= e!4475554 (Cons!72389 (h!78837 testedP!204) (++!17337 (t!387082 testedP!204) testedSuffix!164)))))

(declare-fun b!7506006 () Bool)

(assert (=> b!7506006 (= e!4475554 testedSuffix!164)))

(declare-fun b!7506008 () Bool)

(declare-fun res!3011393 () Bool)

(assert (=> b!7506008 (=> (not res!3011393) (not e!4475553))))

(assert (=> b!7506008 (= res!3011393 (= (size!42279 lt!2634989) (+ (size!42279 testedP!204) (size!42279 testedSuffix!164))))))

(declare-fun d!2304019 () Bool)

(assert (=> d!2304019 e!4475553))

(declare-fun res!3011394 () Bool)

(assert (=> d!2304019 (=> (not res!3011394) (not e!4475553))))

(declare-fun content!15302 (List!72513) (Set C!39742))

(assert (=> d!2304019 (= res!3011394 (= (content!15302 lt!2634989) (set.union (content!15302 testedP!204) (content!15302 testedSuffix!164))))))

(assert (=> d!2304019 (= lt!2634989 e!4475554)))

(declare-fun c!1385717 () Bool)

(assert (=> d!2304019 (= c!1385717 (is-Nil!72389 testedP!204))))

(assert (=> d!2304019 (= (++!17337 testedP!204 testedSuffix!164) lt!2634989)))

(assert (= (and d!2304019 c!1385717) b!7506006))

(assert (= (and d!2304019 (not c!1385717)) b!7506007))

(assert (= (and d!2304019 res!3011394) b!7506008))

(assert (= (and b!7506008 res!3011393) b!7506009))

(declare-fun m!8088236 () Bool)

(assert (=> b!7506007 m!8088236))

(declare-fun m!8088238 () Bool)

(assert (=> b!7506008 m!8088238))

(assert (=> b!7506008 m!8088088))

(declare-fun m!8088240 () Bool)

(assert (=> b!7506008 m!8088240))

(declare-fun m!8088242 () Bool)

(assert (=> d!2304019 m!8088242))

(declare-fun m!8088244 () Bool)

(assert (=> d!2304019 m!8088244))

(declare-fun m!8088246 () Bool)

(assert (=> d!2304019 m!8088246))

(assert (=> start!726556 d!2304019))

(declare-fun d!2304021 () Bool)

(assert (=> d!2304021 (<= (size!42279 testedP!204) (size!42279 totalInput!779))))

(declare-fun lt!2634992 () Unit!166378)

(declare-fun choose!58107 (List!72513 List!72513) Unit!166378)

(assert (=> d!2304021 (= lt!2634992 (choose!58107 testedP!204 totalInput!779))))

(assert (=> d!2304021 (isPrefix!6002 testedP!204 totalInput!779)))

(assert (=> d!2304021 (= (lemmaIsPrefixThenSmallerEqSize!989 testedP!204 totalInput!779) lt!2634992)))

(declare-fun bs!1938149 () Bool)

(assert (= bs!1938149 d!2304021))

(assert (=> bs!1938149 m!8088088))

(assert (=> bs!1938149 m!8088096))

(declare-fun m!8088248 () Bool)

(assert (=> bs!1938149 m!8088248))

(assert (=> bs!1938149 m!8088082))

(assert (=> b!7505892 d!2304021))

(declare-fun d!2304023 () Bool)

(declare-fun lt!2634993 () Int)

(assert (=> d!2304023 (>= lt!2634993 0)))

(declare-fun e!4475555 () Int)

(assert (=> d!2304023 (= lt!2634993 e!4475555)))

(declare-fun c!1385718 () Bool)

(assert (=> d!2304023 (= c!1385718 (is-Nil!72389 testedP!204))))

(assert (=> d!2304023 (= (size!42279 testedP!204) lt!2634993)))

(declare-fun b!7506010 () Bool)

(assert (=> b!7506010 (= e!4475555 0)))

(declare-fun b!7506011 () Bool)

(assert (=> b!7506011 (= e!4475555 (+ 1 (size!42279 (t!387082 testedP!204))))))

(assert (= (and d!2304023 c!1385718) b!7506010))

(assert (= (and d!2304023 (not c!1385718)) b!7506011))

(declare-fun m!8088250 () Bool)

(assert (=> b!7506011 m!8088250))

(assert (=> b!7505887 d!2304023))

(declare-fun d!2304025 () Bool)

(assert (=> d!2304025 (= (tail!14992 testedSuffix!164) (t!387082 testedSuffix!164))))

(assert (=> b!7505896 d!2304025))

(declare-fun d!2304027 () Bool)

(assert (=> d!2304027 (= (head!15425 lt!2634880) (h!78837 lt!2634880))))

(assert (=> b!7505896 d!2304027))

(declare-fun d!2304029 () Bool)

(assert (=> d!2304029 (isPrefix!6002 (++!17337 testedP!204 (Cons!72389 (head!15425 (getSuffix!3502 totalInput!779 testedP!204)) Nil!72389)) totalInput!779)))

(declare-fun lt!2634996 () Unit!166378)

(declare-fun choose!58108 (List!72513 List!72513) Unit!166378)

(assert (=> d!2304029 (= lt!2634996 (choose!58108 testedP!204 totalInput!779))))

(assert (=> d!2304029 (isPrefix!6002 testedP!204 totalInput!779)))

(assert (=> d!2304029 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1119 testedP!204 totalInput!779) lt!2634996)))

(declare-fun bs!1938150 () Bool)

(assert (= bs!1938150 d!2304029))

(declare-fun m!8088252 () Bool)

(assert (=> bs!1938150 m!8088252))

(declare-fun m!8088254 () Bool)

(assert (=> bs!1938150 m!8088254))

(declare-fun m!8088256 () Bool)

(assert (=> bs!1938150 m!8088256))

(assert (=> bs!1938150 m!8088094))

(assert (=> bs!1938150 m!8088082))

(assert (=> bs!1938150 m!8088252))

(assert (=> bs!1938150 m!8088094))

(declare-fun m!8088258 () Bool)

(assert (=> bs!1938150 m!8088258))

(assert (=> b!7505896 d!2304029))

(declare-fun b!7506015 () Bool)

(declare-fun e!4475556 () Bool)

(declare-fun lt!2634997 () List!72513)

(assert (=> b!7506015 (= e!4475556 (or (not (= (Cons!72389 (head!15425 lt!2634880) Nil!72389) Nil!72389)) (= lt!2634997 testedP!204)))))

(declare-fun b!7506013 () Bool)

(declare-fun e!4475557 () List!72513)

(assert (=> b!7506013 (= e!4475557 (Cons!72389 (h!78837 testedP!204) (++!17337 (t!387082 testedP!204) (Cons!72389 (head!15425 lt!2634880) Nil!72389))))))

(declare-fun b!7506012 () Bool)

(assert (=> b!7506012 (= e!4475557 (Cons!72389 (head!15425 lt!2634880) Nil!72389))))

(declare-fun b!7506014 () Bool)

(declare-fun res!3011395 () Bool)

(assert (=> b!7506014 (=> (not res!3011395) (not e!4475556))))

(assert (=> b!7506014 (= res!3011395 (= (size!42279 lt!2634997) (+ (size!42279 testedP!204) (size!42279 (Cons!72389 (head!15425 lt!2634880) Nil!72389)))))))

(declare-fun d!2304031 () Bool)

(assert (=> d!2304031 e!4475556))

(declare-fun res!3011396 () Bool)

(assert (=> d!2304031 (=> (not res!3011396) (not e!4475556))))

(assert (=> d!2304031 (= res!3011396 (= (content!15302 lt!2634997) (set.union (content!15302 testedP!204) (content!15302 (Cons!72389 (head!15425 lt!2634880) Nil!72389)))))))

(assert (=> d!2304031 (= lt!2634997 e!4475557)))

(declare-fun c!1385719 () Bool)

(assert (=> d!2304031 (= c!1385719 (is-Nil!72389 testedP!204))))

(assert (=> d!2304031 (= (++!17337 testedP!204 (Cons!72389 (head!15425 lt!2634880) Nil!72389)) lt!2634997)))

(assert (= (and d!2304031 c!1385719) b!7506012))

(assert (= (and d!2304031 (not c!1385719)) b!7506013))

(assert (= (and d!2304031 res!3011396) b!7506014))

(assert (= (and b!7506014 res!3011395) b!7506015))

(declare-fun m!8088260 () Bool)

(assert (=> b!7506013 m!8088260))

(declare-fun m!8088262 () Bool)

(assert (=> b!7506014 m!8088262))

(assert (=> b!7506014 m!8088088))

(declare-fun m!8088264 () Bool)

(assert (=> b!7506014 m!8088264))

(declare-fun m!8088266 () Bool)

(assert (=> d!2304031 m!8088266))

(assert (=> d!2304031 m!8088244))

(declare-fun m!8088268 () Bool)

(assert (=> d!2304031 m!8088268))

(assert (=> b!7505896 d!2304031))

(declare-fun lt!2634998 () List!72513)

(declare-fun e!4475558 () Bool)

(declare-fun b!7506019 () Bool)

(assert (=> b!7506019 (= e!4475558 (or (not (= (Cons!72389 lt!2634870 (tail!14992 testedSuffix!164)) Nil!72389)) (= lt!2634998 testedP!204)))))

(declare-fun e!4475559 () List!72513)

(declare-fun b!7506017 () Bool)

(assert (=> b!7506017 (= e!4475559 (Cons!72389 (h!78837 testedP!204) (++!17337 (t!387082 testedP!204) (Cons!72389 lt!2634870 (tail!14992 testedSuffix!164)))))))

(declare-fun b!7506016 () Bool)

(assert (=> b!7506016 (= e!4475559 (Cons!72389 lt!2634870 (tail!14992 testedSuffix!164)))))

(declare-fun b!7506018 () Bool)

(declare-fun res!3011397 () Bool)

(assert (=> b!7506018 (=> (not res!3011397) (not e!4475558))))

(assert (=> b!7506018 (= res!3011397 (= (size!42279 lt!2634998) (+ (size!42279 testedP!204) (size!42279 (Cons!72389 lt!2634870 (tail!14992 testedSuffix!164))))))))

(declare-fun d!2304033 () Bool)

(assert (=> d!2304033 e!4475558))

(declare-fun res!3011398 () Bool)

(assert (=> d!2304033 (=> (not res!3011398) (not e!4475558))))

(assert (=> d!2304033 (= res!3011398 (= (content!15302 lt!2634998) (set.union (content!15302 testedP!204) (content!15302 (Cons!72389 lt!2634870 (tail!14992 testedSuffix!164))))))))

(assert (=> d!2304033 (= lt!2634998 e!4475559)))

(declare-fun c!1385720 () Bool)

(assert (=> d!2304033 (= c!1385720 (is-Nil!72389 testedP!204))))

(assert (=> d!2304033 (= (++!17337 testedP!204 (Cons!72389 lt!2634870 (tail!14992 testedSuffix!164))) lt!2634998)))

(assert (= (and d!2304033 c!1385720) b!7506016))

(assert (= (and d!2304033 (not c!1385720)) b!7506017))

(assert (= (and d!2304033 res!3011398) b!7506018))

(assert (= (and b!7506018 res!3011397) b!7506019))

(declare-fun m!8088270 () Bool)

(assert (=> b!7506017 m!8088270))

(declare-fun m!8088272 () Bool)

(assert (=> b!7506018 m!8088272))

(assert (=> b!7506018 m!8088088))

(declare-fun m!8088274 () Bool)

(assert (=> b!7506018 m!8088274))

(declare-fun m!8088276 () Bool)

(assert (=> d!2304033 m!8088276))

(assert (=> d!2304033 m!8088244))

(declare-fun m!8088278 () Bool)

(assert (=> d!2304033 m!8088278))

(assert (=> b!7505896 d!2304033))

(declare-fun b!7506023 () Bool)

(declare-fun lt!2634999 () List!72513)

(declare-fun e!4475560 () Bool)

(assert (=> b!7506023 (= e!4475560 (or (not (= (Cons!72389 lt!2634870 Nil!72389) Nil!72389)) (= lt!2634999 testedP!204)))))

(declare-fun b!7506021 () Bool)

(declare-fun e!4475561 () List!72513)

(assert (=> b!7506021 (= e!4475561 (Cons!72389 (h!78837 testedP!204) (++!17337 (t!387082 testedP!204) (Cons!72389 lt!2634870 Nil!72389))))))

(declare-fun b!7506020 () Bool)

(assert (=> b!7506020 (= e!4475561 (Cons!72389 lt!2634870 Nil!72389))))

(declare-fun b!7506022 () Bool)

(declare-fun res!3011399 () Bool)

(assert (=> b!7506022 (=> (not res!3011399) (not e!4475560))))

(assert (=> b!7506022 (= res!3011399 (= (size!42279 lt!2634999) (+ (size!42279 testedP!204) (size!42279 (Cons!72389 lt!2634870 Nil!72389)))))))

(declare-fun d!2304035 () Bool)

(assert (=> d!2304035 e!4475560))

(declare-fun res!3011400 () Bool)

(assert (=> d!2304035 (=> (not res!3011400) (not e!4475560))))

(assert (=> d!2304035 (= res!3011400 (= (content!15302 lt!2634999) (set.union (content!15302 testedP!204) (content!15302 (Cons!72389 lt!2634870 Nil!72389)))))))

(assert (=> d!2304035 (= lt!2634999 e!4475561)))

(declare-fun c!1385721 () Bool)

(assert (=> d!2304035 (= c!1385721 (is-Nil!72389 testedP!204))))

(assert (=> d!2304035 (= (++!17337 testedP!204 (Cons!72389 lt!2634870 Nil!72389)) lt!2634999)))

(assert (= (and d!2304035 c!1385721) b!7506020))

(assert (= (and d!2304035 (not c!1385721)) b!7506021))

(assert (= (and d!2304035 res!3011400) b!7506022))

(assert (= (and b!7506022 res!3011399) b!7506023))

(declare-fun m!8088280 () Bool)

(assert (=> b!7506021 m!8088280))

(declare-fun m!8088282 () Bool)

(assert (=> b!7506022 m!8088282))

(assert (=> b!7506022 m!8088088))

(declare-fun m!8088284 () Bool)

(assert (=> b!7506022 m!8088284))

(declare-fun m!8088286 () Bool)

(assert (=> d!2304035 m!8088286))

(assert (=> d!2304035 m!8088244))

(declare-fun m!8088288 () Bool)

(assert (=> d!2304035 m!8088288))

(assert (=> b!7505896 d!2304035))

(declare-fun d!2304037 () Bool)

(assert (=> d!2304037 (= (head!15425 testedSuffix!164) (h!78837 testedSuffix!164))))

(assert (=> b!7505896 d!2304037))

(declare-fun d!2304039 () Bool)

(declare-fun e!4475563 () Bool)

(assert (=> d!2304039 e!4475563))

(declare-fun res!3011403 () Bool)

(assert (=> d!2304039 (=> res!3011403 e!4475563)))

(declare-fun lt!2635000 () Bool)

(assert (=> d!2304039 (= res!3011403 (not lt!2635000))))

(declare-fun e!4475564 () Bool)

(assert (=> d!2304039 (= lt!2635000 e!4475564)))

(declare-fun res!3011401 () Bool)

(assert (=> d!2304039 (=> res!3011401 e!4475564)))

(assert (=> d!2304039 (= res!3011401 (is-Nil!72389 (++!17337 testedP!204 (Cons!72389 (head!15425 lt!2634880) Nil!72389))))))

(assert (=> d!2304039 (= (isPrefix!6002 (++!17337 testedP!204 (Cons!72389 (head!15425 lt!2634880) Nil!72389)) totalInput!779) lt!2635000)))

(declare-fun b!7506026 () Bool)

(declare-fun e!4475562 () Bool)

(assert (=> b!7506026 (= e!4475562 (isPrefix!6002 (tail!14992 (++!17337 testedP!204 (Cons!72389 (head!15425 lt!2634880) Nil!72389))) (tail!14992 totalInput!779)))))

(declare-fun b!7506027 () Bool)

(assert (=> b!7506027 (= e!4475563 (>= (size!42279 totalInput!779) (size!42279 (++!17337 testedP!204 (Cons!72389 (head!15425 lt!2634880) Nil!72389)))))))

(declare-fun b!7506025 () Bool)

(declare-fun res!3011404 () Bool)

(assert (=> b!7506025 (=> (not res!3011404) (not e!4475562))))

(assert (=> b!7506025 (= res!3011404 (= (head!15425 (++!17337 testedP!204 (Cons!72389 (head!15425 lt!2634880) Nil!72389))) (head!15425 totalInput!779)))))

(declare-fun b!7506024 () Bool)

(assert (=> b!7506024 (= e!4475564 e!4475562)))

(declare-fun res!3011402 () Bool)

(assert (=> b!7506024 (=> (not res!3011402) (not e!4475562))))

(assert (=> b!7506024 (= res!3011402 (not (is-Nil!72389 totalInput!779)))))

(assert (= (and d!2304039 (not res!3011401)) b!7506024))

(assert (= (and b!7506024 res!3011402) b!7506025))

(assert (= (and b!7506025 res!3011404) b!7506026))

(assert (= (and d!2304039 (not res!3011403)) b!7506027))

(assert (=> b!7506026 m!8088110))

(declare-fun m!8088290 () Bool)

(assert (=> b!7506026 m!8088290))

(assert (=> b!7506026 m!8088202))

(assert (=> b!7506026 m!8088290))

(assert (=> b!7506026 m!8088202))

(declare-fun m!8088292 () Bool)

(assert (=> b!7506026 m!8088292))

(assert (=> b!7506027 m!8088096))

(assert (=> b!7506027 m!8088110))

(declare-fun m!8088294 () Bool)

(assert (=> b!7506027 m!8088294))

(assert (=> b!7506025 m!8088110))

(declare-fun m!8088296 () Bool)

(assert (=> b!7506025 m!8088296))

(assert (=> b!7506025 m!8088212))

(assert (=> b!7505896 d!2304039))

(declare-fun b!7506032 () Bool)

(declare-fun e!4475567 () Bool)

(declare-fun tp!2178850 () Bool)

(assert (=> b!7506032 (= e!4475567 (and tp_is_empty!49757 tp!2178850))))

(assert (=> b!7505897 (= tp!2178828 e!4475567)))

(assert (= (and b!7505897 (is-Cons!72389 (t!387082 testedSuffix!164))) b!7506032))

(declare-fun condSetEmpty!57015 () Bool)

(assert (=> setNonEmpty!57009 (= condSetEmpty!57015 (= setRest!57009 (as set.empty (Set Context!16920))))))

(declare-fun setRes!57015 () Bool)

(assert (=> setNonEmpty!57009 (= tp!2178831 setRes!57015)))

(declare-fun setIsEmpty!57015 () Bool)

(assert (=> setIsEmpty!57015 setRes!57015))

(declare-fun setElem!57015 () Context!16920)

(declare-fun tp!2178856 () Bool)

(declare-fun setNonEmpty!57015 () Bool)

(declare-fun e!4475570 () Bool)

(assert (=> setNonEmpty!57015 (= setRes!57015 (and tp!2178856 (inv!92501 setElem!57015) e!4475570))))

(declare-fun setRest!57015 () (Set Context!16920))

(assert (=> setNonEmpty!57015 (= setRest!57009 (set.union (set.insert setElem!57015 (as set.empty (Set Context!16920))) setRest!57015))))

(declare-fun b!7506037 () Bool)

(declare-fun tp!2178855 () Bool)

(assert (=> b!7506037 (= e!4475570 tp!2178855)))

(assert (= (and setNonEmpty!57009 condSetEmpty!57015) setIsEmpty!57015))

(assert (= (and setNonEmpty!57009 (not condSetEmpty!57015)) setNonEmpty!57015))

(assert (= setNonEmpty!57015 b!7506037))

(declare-fun m!8088298 () Bool)

(assert (=> setNonEmpty!57015 m!8088298))

(declare-fun b!7506042 () Bool)

(declare-fun e!4475573 () Bool)

(declare-fun tp!2178861 () Bool)

(declare-fun tp!2178862 () Bool)

(assert (=> b!7506042 (= e!4475573 (and tp!2178861 tp!2178862))))

(assert (=> b!7505894 (= tp!2178830 e!4475573)))

(assert (= (and b!7505894 (is-Cons!72390 (exprs!8960 setElem!57009))) b!7506042))

(declare-fun b!7506043 () Bool)

(declare-fun e!4475574 () Bool)

(declare-fun tp!2178863 () Bool)

(assert (=> b!7506043 (= e!4475574 (and tp_is_empty!49757 tp!2178863))))

(assert (=> b!7505891 (= tp!2178829 e!4475574)))

(assert (= (and b!7505891 (is-Cons!72389 (t!387082 testedP!204))) b!7506043))

(declare-fun b!7506044 () Bool)

(declare-fun e!4475575 () Bool)

(declare-fun tp!2178864 () Bool)

(assert (=> b!7506044 (= e!4475575 (and tp_is_empty!49757 tp!2178864))))

(assert (=> b!7505886 (= tp!2178832 e!4475575)))

(assert (= (and b!7505886 (is-Cons!72389 (t!387082 totalInput!779))) b!7506044))

(push 1)

(assert (not b!7505995))

(assert (not d!2304017))

(assert (not b!7505983))

(assert (not d!2304007))

(assert (not d!2304001))

(assert (not b!7506032))

(assert (not d!2304021))

(assert (not d!2304033))

(assert (not b!7505964))

(assert (not b!7506018))

(assert (not d!2304029))

(assert (not bm!688704))

(assert (not b!7506025))

(assert (not setNonEmpty!57015))

(assert (not d!2304031))

(assert (not b!7506042))

(assert (not b!7505982))

(assert (not d!2303991))

(assert (not b!7506037))

(assert (not b!7506014))

(assert (not b!7506026))

(assert (not b!7505993))

(assert (not b!7505987))

(assert (not bm!688705))

(assert (not b!7506027))

(assert (not b!7506013))

(assert (not d!2304035))

(assert (not d!2303999))

(assert (not b!7506043))

(assert (not b!7505981))

(assert (not b!7505997))

(assert (not b!7505985))

(assert (not b!7506044))

(assert (not b!7506008))

(assert (not b!7505970))

(assert (not b!7506007))

(assert (not d!2304019))

(assert (not b!7506021))

(assert (not b!7505996))

(assert (not d!2304009))

(assert (not b!7505965))

(assert (not b!7505986))

(assert (not d!2304013))

(assert (not b!7506022))

(assert (not b!7506017))

(assert (not b!7506011))

(assert tp_is_empty!49757)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

