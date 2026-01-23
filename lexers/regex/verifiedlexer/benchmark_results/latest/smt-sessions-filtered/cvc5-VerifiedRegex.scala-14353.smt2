; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749404 () Bool)

(assert start!749404)

(declare-fun b!7939927 () Bool)

(declare-fun e!4684963 () Bool)

(declare-fun tp_is_empty!53315 () Bool)

(assert (=> b!7939927 (= e!4684963 tp_is_empty!53315)))

(declare-fun res!3149851 () Bool)

(declare-fun e!4684964 () Bool)

(assert (=> start!749404 (=> (not res!3149851) (not e!4684964))))

(declare-datatypes ((C!43118 0))(
  ( (C!43119 (val!32103 Int)) )
))
(declare-datatypes ((Regex!21390 0))(
  ( (ElementMatch!21390 (c!1458729 C!43118)) (Concat!30389 (regOne!43292 Regex!21390) (regTwo!43292 Regex!21390)) (EmptyExpr!21390) (Star!21390 (reg!21719 Regex!21390)) (EmptyLang!21390) (Union!21390 (regOne!43293 Regex!21390) (regTwo!43293 Regex!21390)) )
))
(declare-fun r!15416 () Regex!21390)

(declare-fun validRegex!11694 (Regex!21390) Bool)

(assert (=> start!749404 (= res!3149851 (validRegex!11694 r!15416))))

(assert (=> start!749404 e!4684964))

(assert (=> start!749404 e!4684963))

(declare-fun e!4684965 () Bool)

(assert (=> start!749404 e!4684965))

(declare-fun b!7939928 () Bool)

(declare-fun tp!2360739 () Bool)

(declare-fun tp!2360737 () Bool)

(assert (=> b!7939928 (= e!4684963 (and tp!2360739 tp!2360737))))

(declare-fun b!7939929 () Bool)

(declare-fun tp!2360740 () Bool)

(assert (=> b!7939929 (= e!4684963 tp!2360740)))

(declare-fun b!7939930 () Bool)

(declare-fun tp!2360735 () Bool)

(assert (=> b!7939930 (= e!4684965 (and tp_is_empty!53315 tp!2360735))))

(declare-fun b!7939931 () Bool)

(declare-datatypes ((List!74615 0))(
  ( (Nil!74491) (Cons!74491 (h!80939 C!43118) (t!390358 List!74615)) )
))
(declare-datatypes ((tuple2!70474 0))(
  ( (tuple2!70475 (_1!38540 List!74615) (_2!38540 List!74615)) )
))
(declare-fun lt!2695863 () tuple2!70474)

(declare-fun input!6707 () List!74615)

(declare-fun ++!18292 (List!74615 List!74615) List!74615)

(assert (=> b!7939931 (= e!4684964 (not (= (++!18292 (_1!38540 lt!2695863) (_2!38540 lt!2695863)) input!6707)))))

(declare-fun findLongestMatchInner!2187 (Regex!21390 List!74615 Int List!74615 List!74615 Int) tuple2!70474)

(declare-fun sizeTr!482 (List!74615 Int) Int)

(assert (=> b!7939931 (= lt!2695863 (findLongestMatchInner!2187 r!15416 Nil!74491 0 input!6707 input!6707 (sizeTr!482 input!6707 0)))))

(declare-fun size!43325 (List!74615) Int)

(assert (=> b!7939931 (= 0 (size!43325 Nil!74491))))

(declare-datatypes ((Unit!169599 0))(
  ( (Unit!169600) )
))
(declare-fun lt!2695865 () Unit!169599)

(declare-fun lemmaSizeTrEqualsSize!481 (List!74615 Int) Unit!169599)

(assert (=> b!7939931 (= lt!2695865 (lemmaSizeTrEqualsSize!481 Nil!74491 0))))

(assert (=> b!7939931 (= (sizeTr!482 input!6707 0) (size!43325 input!6707))))

(declare-fun lt!2695864 () Unit!169599)

(assert (=> b!7939931 (= lt!2695864 (lemmaSizeTrEqualsSize!481 input!6707 0))))

(declare-fun b!7939932 () Bool)

(declare-fun tp!2360736 () Bool)

(declare-fun tp!2360738 () Bool)

(assert (=> b!7939932 (= e!4684963 (and tp!2360736 tp!2360738))))

(assert (= (and start!749404 res!3149851) b!7939931))

(assert (= (and start!749404 (is-ElementMatch!21390 r!15416)) b!7939927))

(assert (= (and start!749404 (is-Concat!30389 r!15416)) b!7939928))

(assert (= (and start!749404 (is-Star!21390 r!15416)) b!7939929))

(assert (= (and start!749404 (is-Union!21390 r!15416)) b!7939932))

(assert (= (and start!749404 (is-Cons!74491 input!6707)) b!7939930))

(declare-fun m!8329316 () Bool)

(assert (=> start!749404 m!8329316))

(declare-fun m!8329318 () Bool)

(assert (=> b!7939931 m!8329318))

(declare-fun m!8329320 () Bool)

(assert (=> b!7939931 m!8329320))

(declare-fun m!8329322 () Bool)

(assert (=> b!7939931 m!8329322))

(declare-fun m!8329324 () Bool)

(assert (=> b!7939931 m!8329324))

(declare-fun m!8329326 () Bool)

(assert (=> b!7939931 m!8329326))

(declare-fun m!8329328 () Bool)

(assert (=> b!7939931 m!8329328))

(assert (=> b!7939931 m!8329320))

(declare-fun m!8329330 () Bool)

(assert (=> b!7939931 m!8329330))

(push 1)

(assert (not b!7939928))

(assert tp_is_empty!53315)

(assert (not b!7939931))

(assert (not b!7939929))

(assert (not start!749404))

(assert (not b!7939930))

(assert (not b!7939932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7939977 () Bool)

(declare-fun e!4684994 () List!74615)

(assert (=> b!7939977 (= e!4684994 (_2!38540 lt!2695863))))

(declare-fun b!7939978 () Bool)

(assert (=> b!7939978 (= e!4684994 (Cons!74491 (h!80939 (_1!38540 lt!2695863)) (++!18292 (t!390358 (_1!38540 lt!2695863)) (_2!38540 lt!2695863))))))

(declare-fun b!7939980 () Bool)

(declare-fun e!4684993 () Bool)

(declare-fun lt!2695877 () List!74615)

(assert (=> b!7939980 (= e!4684993 (or (not (= (_2!38540 lt!2695863) Nil!74491)) (= lt!2695877 (_1!38540 lt!2695863))))))

(declare-fun d!2374946 () Bool)

(assert (=> d!2374946 e!4684993))

(declare-fun res!3149870 () Bool)

(assert (=> d!2374946 (=> (not res!3149870) (not e!4684993))))

(declare-fun content!15810 (List!74615) (Set C!43118))

(assert (=> d!2374946 (= res!3149870 (= (content!15810 lt!2695877) (set.union (content!15810 (_1!38540 lt!2695863)) (content!15810 (_2!38540 lt!2695863)))))))

(assert (=> d!2374946 (= lt!2695877 e!4684994)))

(declare-fun c!1458737 () Bool)

(assert (=> d!2374946 (= c!1458737 (is-Nil!74491 (_1!38540 lt!2695863)))))

(assert (=> d!2374946 (= (++!18292 (_1!38540 lt!2695863) (_2!38540 lt!2695863)) lt!2695877)))

(declare-fun b!7939979 () Bool)

(declare-fun res!3149869 () Bool)

(assert (=> b!7939979 (=> (not res!3149869) (not e!4684993))))

(assert (=> b!7939979 (= res!3149869 (= (size!43325 lt!2695877) (+ (size!43325 (_1!38540 lt!2695863)) (size!43325 (_2!38540 lt!2695863)))))))

(assert (= (and d!2374946 c!1458737) b!7939977))

(assert (= (and d!2374946 (not c!1458737)) b!7939978))

(assert (= (and d!2374946 res!3149870) b!7939979))

(assert (= (and b!7939979 res!3149869) b!7939980))

(declare-fun m!8329348 () Bool)

(assert (=> b!7939978 m!8329348))

(declare-fun m!8329350 () Bool)

(assert (=> d!2374946 m!8329350))

(declare-fun m!8329352 () Bool)

(assert (=> d!2374946 m!8329352))

(declare-fun m!8329354 () Bool)

(assert (=> d!2374946 m!8329354))

(declare-fun m!8329356 () Bool)

(assert (=> b!7939979 m!8329356))

(declare-fun m!8329358 () Bool)

(assert (=> b!7939979 m!8329358))

(declare-fun m!8329360 () Bool)

(assert (=> b!7939979 m!8329360))

(assert (=> b!7939931 d!2374946))

(declare-fun b!7940018 () Bool)

(declare-fun e!4685021 () tuple2!70474)

(declare-fun call!735752 () tuple2!70474)

(assert (=> b!7940018 (= e!4685021 call!735752)))

(declare-fun b!7940019 () Bool)

(declare-fun e!4685024 () Bool)

(declare-fun lt!2695940 () tuple2!70474)

(assert (=> b!7940019 (= e!4685024 (>= (size!43325 (_1!38540 lt!2695940)) (size!43325 Nil!74491)))))

(declare-fun b!7940020 () Bool)

(declare-fun e!4685022 () Bool)

(assert (=> b!7940020 (= e!4685022 e!4685024)))

(declare-fun res!3149881 () Bool)

(assert (=> b!7940020 (=> res!3149881 e!4685024)))

(declare-fun isEmpty!42812 (List!74615) Bool)

(assert (=> b!7940020 (= res!3149881 (isEmpty!42812 (_1!38540 lt!2695940)))))

(declare-fun bm!735745 () Bool)

(declare-fun call!735755 () Unit!169599)

(declare-fun lemmaIsPrefixRefl!4001 (List!74615 List!74615) Unit!169599)

(assert (=> bm!735745 (= call!735755 (lemmaIsPrefixRefl!4001 input!6707 input!6707))))

(declare-fun bm!735746 () Bool)

(declare-fun call!735754 () Regex!21390)

(declare-fun call!735751 () C!43118)

(declare-fun derivativeStep!6461 (Regex!21390 C!43118) Regex!21390)

(assert (=> bm!735746 (= call!735754 (derivativeStep!6461 r!15416 call!735751))))

(declare-fun b!7940021 () Bool)

(declare-fun e!4685025 () tuple2!70474)

(assert (=> b!7940021 (= e!4685025 (tuple2!70475 Nil!74491 Nil!74491))))

(declare-fun b!7940022 () Bool)

(declare-fun e!4685020 () tuple2!70474)

(assert (=> b!7940022 (= e!4685021 e!4685020)))

(declare-fun lt!2695954 () tuple2!70474)

(assert (=> b!7940022 (= lt!2695954 call!735752)))

(declare-fun c!1458757 () Bool)

(assert (=> b!7940022 (= c!1458757 (isEmpty!42812 (_1!38540 lt!2695954)))))

(declare-fun b!7940023 () Bool)

(declare-fun e!4685018 () tuple2!70474)

(assert (=> b!7940023 (= e!4685018 (tuple2!70475 Nil!74491 input!6707))))

(declare-fun b!7940024 () Bool)

(assert (=> b!7940024 (= e!4685025 (tuple2!70475 Nil!74491 input!6707))))

(declare-fun d!2374948 () Bool)

(assert (=> d!2374948 e!4685022))

(declare-fun res!3149880 () Bool)

(assert (=> d!2374948 (=> (not res!3149880) (not e!4685022))))

(assert (=> d!2374948 (= res!3149880 (= (++!18292 (_1!38540 lt!2695940) (_2!38540 lt!2695940)) input!6707))))

(assert (=> d!2374948 (= lt!2695940 e!4685018)))

(declare-fun c!1458756 () Bool)

(declare-fun lostCause!1934 (Regex!21390) Bool)

(assert (=> d!2374948 (= c!1458756 (lostCause!1934 r!15416))))

(declare-fun lt!2695935 () Unit!169599)

(declare-fun Unit!169603 () Unit!169599)

(assert (=> d!2374948 (= lt!2695935 Unit!169603)))

(declare-fun getSuffix!3703 (List!74615 List!74615) List!74615)

(assert (=> d!2374948 (= (getSuffix!3703 input!6707 Nil!74491) input!6707)))

(declare-fun lt!2695934 () Unit!169599)

(declare-fun lt!2695961 () Unit!169599)

(assert (=> d!2374948 (= lt!2695934 lt!2695961)))

(declare-fun lt!2695939 () List!74615)

(assert (=> d!2374948 (= input!6707 lt!2695939)))

(declare-fun lemmaSamePrefixThenSameSuffix!2950 (List!74615 List!74615 List!74615 List!74615 List!74615) Unit!169599)

(assert (=> d!2374948 (= lt!2695961 (lemmaSamePrefixThenSameSuffix!2950 Nil!74491 input!6707 Nil!74491 lt!2695939 input!6707))))

(assert (=> d!2374948 (= lt!2695939 (getSuffix!3703 input!6707 Nil!74491))))

(declare-fun lt!2695946 () Unit!169599)

(declare-fun lt!2695951 () Unit!169599)

(assert (=> d!2374948 (= lt!2695946 lt!2695951)))

(declare-fun isPrefix!6490 (List!74615 List!74615) Bool)

(assert (=> d!2374948 (isPrefix!6490 Nil!74491 (++!18292 Nil!74491 input!6707))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3812 (List!74615 List!74615) Unit!169599)

(assert (=> d!2374948 (= lt!2695951 (lemmaConcatTwoListThenFirstIsPrefix!3812 Nil!74491 input!6707))))

(assert (=> d!2374948 (validRegex!11694 r!15416)))

(assert (=> d!2374948 (= (findLongestMatchInner!2187 r!15416 Nil!74491 0 input!6707 input!6707 (sizeTr!482 input!6707 0)) lt!2695940)))

(declare-fun b!7940025 () Bool)

(declare-fun c!1458754 () Bool)

(declare-fun call!735756 () Bool)

(assert (=> b!7940025 (= c!1458754 call!735756)))

(declare-fun lt!2695942 () Unit!169599)

(declare-fun lt!2695950 () Unit!169599)

(assert (=> b!7940025 (= lt!2695942 lt!2695950)))

(declare-fun lt!2695945 () C!43118)

(declare-fun lt!2695948 () List!74615)

(assert (=> b!7940025 (= (++!18292 (++!18292 Nil!74491 (Cons!74491 lt!2695945 Nil!74491)) lt!2695948) input!6707)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3490 (List!74615 C!43118 List!74615 List!74615) Unit!169599)

(assert (=> b!7940025 (= lt!2695950 (lemmaMoveElementToOtherListKeepsConcatEq!3490 Nil!74491 lt!2695945 lt!2695948 input!6707))))

(declare-fun tail!15725 (List!74615) List!74615)

(assert (=> b!7940025 (= lt!2695948 (tail!15725 input!6707))))

(declare-fun head!16182 (List!74615) C!43118)

(assert (=> b!7940025 (= lt!2695945 (head!16182 input!6707))))

(declare-fun lt!2695958 () Unit!169599)

(declare-fun lt!2695956 () Unit!169599)

(assert (=> b!7940025 (= lt!2695958 lt!2695956)))

(assert (=> b!7940025 (isPrefix!6490 (++!18292 Nil!74491 (Cons!74491 (head!16182 (getSuffix!3703 input!6707 Nil!74491)) Nil!74491)) input!6707)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1268 (List!74615 List!74615) Unit!169599)

(assert (=> b!7940025 (= lt!2695956 (lemmaAddHeadSuffixToPrefixStillPrefix!1268 Nil!74491 input!6707))))

(declare-fun lt!2695936 () Unit!169599)

(declare-fun lt!2695953 () Unit!169599)

(assert (=> b!7940025 (= lt!2695936 lt!2695953)))

(assert (=> b!7940025 (= lt!2695953 (lemmaAddHeadSuffixToPrefixStillPrefix!1268 Nil!74491 input!6707))))

(declare-fun lt!2695960 () List!74615)

(assert (=> b!7940025 (= lt!2695960 (++!18292 Nil!74491 (Cons!74491 (head!16182 input!6707) Nil!74491)))))

(declare-fun lt!2695943 () Unit!169599)

(declare-fun e!4685019 () Unit!169599)

(assert (=> b!7940025 (= lt!2695943 e!4685019)))

(declare-fun c!1458753 () Bool)

(assert (=> b!7940025 (= c!1458753 (= (size!43325 Nil!74491) (size!43325 input!6707)))))

(declare-fun lt!2695955 () Unit!169599)

(declare-fun lt!2695941 () Unit!169599)

(assert (=> b!7940025 (= lt!2695955 lt!2695941)))

(assert (=> b!7940025 (<= (size!43325 Nil!74491) (size!43325 input!6707))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1048 (List!74615 List!74615) Unit!169599)

(assert (=> b!7940025 (= lt!2695941 (lemmaIsPrefixThenSmallerEqSize!1048 Nil!74491 input!6707))))

(declare-fun e!4685023 () tuple2!70474)

(assert (=> b!7940025 (= e!4685023 e!4685021)))

(declare-fun b!7940026 () Bool)

(assert (=> b!7940026 (= e!4685018 e!4685023)))

(declare-fun c!1458752 () Bool)

(assert (=> b!7940026 (= c!1458752 (= 0 (sizeTr!482 input!6707 0)))))

(declare-fun bm!735747 () Bool)

(declare-fun call!735753 () Unit!169599)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1583 (List!74615 List!74615 List!74615) Unit!169599)

(assert (=> bm!735747 (= call!735753 (lemmaIsPrefixSameLengthThenSameList!1583 input!6707 Nil!74491 input!6707))))

(declare-fun b!7940027 () Bool)

(assert (=> b!7940027 (= e!4685020 (tuple2!70475 Nil!74491 input!6707))))

(declare-fun bm!735748 () Bool)

(declare-fun nullable!9523 (Regex!21390) Bool)

(assert (=> bm!735748 (= call!735756 (nullable!9523 r!15416))))

(declare-fun call!735750 () List!74615)

(declare-fun bm!735749 () Bool)

(assert (=> bm!735749 (= call!735752 (findLongestMatchInner!2187 call!735754 lt!2695960 (+ 0 1) call!735750 input!6707 (sizeTr!482 input!6707 0)))))

(declare-fun b!7940028 () Bool)

(declare-fun Unit!169604 () Unit!169599)

(assert (=> b!7940028 (= e!4685019 Unit!169604)))

(declare-fun bm!735750 () Bool)

(assert (=> bm!735750 (= call!735751 (head!16182 input!6707))))

(declare-fun bm!735751 () Bool)

(declare-fun call!735757 () Bool)

(assert (=> bm!735751 (= call!735757 (isPrefix!6490 input!6707 input!6707))))

(declare-fun bm!735752 () Bool)

(assert (=> bm!735752 (= call!735750 (tail!15725 input!6707))))

(declare-fun b!7940029 () Bool)

(declare-fun Unit!169605 () Unit!169599)

(assert (=> b!7940029 (= e!4685019 Unit!169605)))

(declare-fun lt!2695937 () Unit!169599)

(assert (=> b!7940029 (= lt!2695937 call!735755)))

(assert (=> b!7940029 call!735757))

(declare-fun lt!2695947 () Unit!169599)

(assert (=> b!7940029 (= lt!2695947 lt!2695937)))

(declare-fun lt!2695944 () Unit!169599)

(assert (=> b!7940029 (= lt!2695944 call!735753)))

(assert (=> b!7940029 (= input!6707 Nil!74491)))

(declare-fun lt!2695959 () Unit!169599)

(assert (=> b!7940029 (= lt!2695959 lt!2695944)))

(assert (=> b!7940029 false))

(declare-fun b!7940030 () Bool)

(declare-fun c!1458755 () Bool)

(assert (=> b!7940030 (= c!1458755 call!735756)))

(declare-fun lt!2695949 () Unit!169599)

(declare-fun lt!2695938 () Unit!169599)

(assert (=> b!7940030 (= lt!2695949 lt!2695938)))

(assert (=> b!7940030 (= input!6707 Nil!74491)))

(assert (=> b!7940030 (= lt!2695938 call!735753)))

(declare-fun lt!2695952 () Unit!169599)

(declare-fun lt!2695957 () Unit!169599)

(assert (=> b!7940030 (= lt!2695952 lt!2695957)))

(assert (=> b!7940030 call!735757))

(assert (=> b!7940030 (= lt!2695957 call!735755)))

(assert (=> b!7940030 (= e!4685023 e!4685025)))

(declare-fun b!7940031 () Bool)

(assert (=> b!7940031 (= e!4685020 lt!2695954)))

(assert (= (and d!2374948 c!1458756) b!7940023))

(assert (= (and d!2374948 (not c!1458756)) b!7940026))

(assert (= (and b!7940026 c!1458752) b!7940030))

(assert (= (and b!7940026 (not c!1458752)) b!7940025))

(assert (= (and b!7940030 c!1458755) b!7940021))

(assert (= (and b!7940030 (not c!1458755)) b!7940024))

(assert (= (and b!7940025 c!1458753) b!7940029))

(assert (= (and b!7940025 (not c!1458753)) b!7940028))

(assert (= (and b!7940025 c!1458754) b!7940022))

(assert (= (and b!7940025 (not c!1458754)) b!7940018))

(assert (= (and b!7940022 c!1458757) b!7940027))

(assert (= (and b!7940022 (not c!1458757)) b!7940031))

(assert (= (or b!7940022 b!7940018) bm!735752))

(assert (= (or b!7940022 b!7940018) bm!735750))

(assert (= (or b!7940022 b!7940018) bm!735746))

(assert (= (or b!7940022 b!7940018) bm!735749))

(assert (= (or b!7940030 b!7940029) bm!735747))

(assert (= (or b!7940030 b!7940029) bm!735751))

(assert (= (or b!7940030 b!7940025) bm!735748))

(assert (= (or b!7940030 b!7940029) bm!735745))

(assert (= (and d!2374948 res!3149880) b!7940020))

(assert (= (and b!7940020 (not res!3149881)) b!7940019))

(declare-fun m!8329368 () Bool)

(assert (=> bm!735752 m!8329368))

(declare-fun m!8329370 () Bool)

(assert (=> bm!735750 m!8329370))

(declare-fun m!8329372 () Bool)

(assert (=> bm!735748 m!8329372))

(declare-fun m!8329374 () Bool)

(assert (=> bm!735746 m!8329374))

(declare-fun m!8329376 () Bool)

(assert (=> bm!735747 m!8329376))

(declare-fun m!8329378 () Bool)

(assert (=> bm!735745 m!8329378))

(declare-fun m!8329380 () Bool)

(assert (=> b!7940020 m!8329380))

(declare-fun m!8329382 () Bool)

(assert (=> b!7940019 m!8329382))

(assert (=> b!7940019 m!8329324))

(declare-fun m!8329384 () Bool)

(assert (=> b!7940025 m!8329384))

(declare-fun m!8329386 () Bool)

(assert (=> b!7940025 m!8329386))

(assert (=> b!7940025 m!8329368))

(declare-fun m!8329388 () Bool)

(assert (=> b!7940025 m!8329388))

(declare-fun m!8329390 () Bool)

(assert (=> b!7940025 m!8329390))

(declare-fun m!8329392 () Bool)

(assert (=> b!7940025 m!8329392))

(assert (=> b!7940025 m!8329384))

(assert (=> b!7940025 m!8329370))

(assert (=> b!7940025 m!8329326))

(declare-fun m!8329394 () Bool)

(assert (=> b!7940025 m!8329394))

(declare-fun m!8329396 () Bool)

(assert (=> b!7940025 m!8329396))

(declare-fun m!8329398 () Bool)

(assert (=> b!7940025 m!8329398))

(assert (=> b!7940025 m!8329396))

(assert (=> b!7940025 m!8329324))

(declare-fun m!8329400 () Bool)

(assert (=> b!7940025 m!8329400))

(declare-fun m!8329402 () Bool)

(assert (=> b!7940025 m!8329402))

(assert (=> b!7940025 m!8329388))

(assert (=> d!2374948 m!8329316))

(declare-fun m!8329404 () Bool)

(assert (=> d!2374948 m!8329404))

(declare-fun m!8329406 () Bool)

(assert (=> d!2374948 m!8329406))

(declare-fun m!8329408 () Bool)

(assert (=> d!2374948 m!8329408))

(declare-fun m!8329410 () Bool)

(assert (=> d!2374948 m!8329410))

(assert (=> d!2374948 m!8329396))

(assert (=> d!2374948 m!8329410))

(declare-fun m!8329412 () Bool)

(assert (=> d!2374948 m!8329412))

(declare-fun m!8329414 () Bool)

(assert (=> d!2374948 m!8329414))

(declare-fun m!8329416 () Bool)

(assert (=> b!7940022 m!8329416))

(assert (=> bm!735749 m!8329320))

(declare-fun m!8329418 () Bool)

(assert (=> bm!735749 m!8329418))

(declare-fun m!8329420 () Bool)

(assert (=> bm!735751 m!8329420))

(assert (=> b!7939931 d!2374948))

(declare-fun d!2374952 () Bool)

(assert (=> d!2374952 (= (sizeTr!482 input!6707 0) (+ (size!43325 input!6707) 0))))

(declare-fun lt!2695978 () Unit!169599)

(declare-fun choose!59868 (List!74615 Int) Unit!169599)

(assert (=> d!2374952 (= lt!2695978 (choose!59868 input!6707 0))))

(assert (=> d!2374952 (= (lemmaSizeTrEqualsSize!481 input!6707 0) lt!2695978)))

(declare-fun bs!1969381 () Bool)

(assert (= bs!1969381 d!2374952))

(assert (=> bs!1969381 m!8329320))

(assert (=> bs!1969381 m!8329326))

(declare-fun m!8329422 () Bool)

(assert (=> bs!1969381 m!8329422))

(assert (=> b!7939931 d!2374952))

(declare-fun d!2374954 () Bool)

(declare-fun c!1458766 () Bool)

(assert (=> d!2374954 (= c!1458766 (is-Nil!74491 input!6707))))

(declare-fun e!4685034 () Int)

(assert (=> d!2374954 (= (sizeTr!482 input!6707 0) e!4685034)))

(declare-fun b!7940050 () Bool)

(assert (=> b!7940050 (= e!4685034 0)))

(declare-fun b!7940051 () Bool)

(assert (=> b!7940051 (= e!4685034 (sizeTr!482 (t!390358 input!6707) (+ 0 1)))))

(assert (= (and d!2374954 c!1458766) b!7940050))

(assert (= (and d!2374954 (not c!1458766)) b!7940051))

(declare-fun m!8329424 () Bool)

(assert (=> b!7940051 m!8329424))

(assert (=> b!7939931 d!2374954))

(declare-fun d!2374956 () Bool)

(declare-fun lt!2696023 () Int)

(assert (=> d!2374956 (>= lt!2696023 0)))

(declare-fun e!4685041 () Int)

(assert (=> d!2374956 (= lt!2696023 e!4685041)))

(declare-fun c!1458773 () Bool)

(assert (=> d!2374956 (= c!1458773 (is-Nil!74491 input!6707))))

(assert (=> d!2374956 (= (size!43325 input!6707) lt!2696023)))

(declare-fun b!7940062 () Bool)

(assert (=> b!7940062 (= e!4685041 0)))

(declare-fun b!7940063 () Bool)

(assert (=> b!7940063 (= e!4685041 (+ 1 (size!43325 (t!390358 input!6707))))))

(assert (= (and d!2374956 c!1458773) b!7940062))

(assert (= (and d!2374956 (not c!1458773)) b!7940063))

(declare-fun m!8329426 () Bool)

(assert (=> b!7940063 m!8329426))

(assert (=> b!7939931 d!2374956))

(declare-fun d!2374958 () Bool)

(assert (=> d!2374958 (= (sizeTr!482 Nil!74491 0) (+ (size!43325 Nil!74491) 0))))

(declare-fun lt!2696024 () Unit!169599)

(assert (=> d!2374958 (= lt!2696024 (choose!59868 Nil!74491 0))))

(assert (=> d!2374958 (= (lemmaSizeTrEqualsSize!481 Nil!74491 0) lt!2696024)))

(declare-fun bs!1969382 () Bool)

(assert (= bs!1969382 d!2374958))

(declare-fun m!8329428 () Bool)

(assert (=> bs!1969382 m!8329428))

(assert (=> bs!1969382 m!8329324))

(declare-fun m!8329430 () Bool)

(assert (=> bs!1969382 m!8329430))

(assert (=> b!7939931 d!2374958))

(declare-fun d!2374960 () Bool)

(declare-fun lt!2696025 () Int)

(assert (=> d!2374960 (>= lt!2696025 0)))

(declare-fun e!4685044 () Int)

(assert (=> d!2374960 (= lt!2696025 e!4685044)))

(declare-fun c!1458776 () Bool)

(assert (=> d!2374960 (= c!1458776 (is-Nil!74491 Nil!74491))))

(assert (=> d!2374960 (= (size!43325 Nil!74491) lt!2696025)))

(declare-fun b!7940068 () Bool)

(assert (=> b!7940068 (= e!4685044 0)))

(declare-fun b!7940069 () Bool)

(assert (=> b!7940069 (= e!4685044 (+ 1 (size!43325 (t!390358 Nil!74491))))))

(assert (= (and d!2374960 c!1458776) b!7940068))

(assert (= (and d!2374960 (not c!1458776)) b!7940069))

(declare-fun m!8329432 () Bool)

(assert (=> b!7940069 m!8329432))

(assert (=> b!7939931 d!2374960))

(declare-fun b!7940088 () Bool)

(declare-fun e!4685065 () Bool)

(declare-fun call!735780 () Bool)

(assert (=> b!7940088 (= e!4685065 call!735780)))

(declare-fun b!7940089 () Bool)

(declare-fun e!4685063 () Bool)

(declare-fun call!735778 () Bool)

(assert (=> b!7940089 (= e!4685063 call!735778)))

(declare-fun b!7940090 () Bool)

(declare-fun e!4685060 () Bool)

(assert (=> b!7940090 (= e!4685060 call!735778)))

(declare-fun b!7940091 () Bool)

(declare-fun res!3149892 () Bool)

(assert (=> b!7940091 (=> (not res!3149892) (not e!4685060))))

(declare-fun call!735779 () Bool)

(assert (=> b!7940091 (= res!3149892 call!735779)))

(declare-fun e!4685064 () Bool)

(assert (=> b!7940091 (= e!4685064 e!4685060)))

(declare-fun b!7940092 () Bool)

(declare-fun e!4685059 () Bool)

(assert (=> b!7940092 (= e!4685059 e!4685063)))

(declare-fun res!3149896 () Bool)

(assert (=> b!7940092 (=> (not res!3149896) (not e!4685063))))

(assert (=> b!7940092 (= res!3149896 call!735779)))

(declare-fun bm!735771 () Bool)

(declare-fun c!1458782 () Bool)

(assert (=> bm!735771 (= call!735779 (validRegex!11694 (ite c!1458782 (regOne!43293 r!15416) (regOne!43292 r!15416))))))

(declare-fun b!7940093 () Bool)

(declare-fun e!4685061 () Bool)

(declare-fun e!4685062 () Bool)

(assert (=> b!7940093 (= e!4685061 e!4685062)))

(declare-fun c!1458781 () Bool)

(assert (=> b!7940093 (= c!1458781 (is-Star!21390 r!15416))))

(declare-fun b!7940094 () Bool)

(assert (=> b!7940094 (= e!4685062 e!4685065)))

(declare-fun res!3149895 () Bool)

(assert (=> b!7940094 (= res!3149895 (not (nullable!9523 (reg!21719 r!15416))))))

(assert (=> b!7940094 (=> (not res!3149895) (not e!4685065))))

(declare-fun d!2374962 () Bool)

(declare-fun res!3149893 () Bool)

(assert (=> d!2374962 (=> res!3149893 e!4685061)))

(assert (=> d!2374962 (= res!3149893 (is-ElementMatch!21390 r!15416))))

(assert (=> d!2374962 (= (validRegex!11694 r!15416) e!4685061)))

(declare-fun b!7940095 () Bool)

(assert (=> b!7940095 (= e!4685062 e!4685064)))

(assert (=> b!7940095 (= c!1458782 (is-Union!21390 r!15416))))

(declare-fun bm!735772 () Bool)

(assert (=> bm!735772 (= call!735780 (validRegex!11694 (ite c!1458781 (reg!21719 r!15416) (ite c!1458782 (regTwo!43293 r!15416) (regTwo!43292 r!15416)))))))

(declare-fun bm!735773 () Bool)

(assert (=> bm!735773 (= call!735778 call!735780)))

(declare-fun b!7940096 () Bool)

(declare-fun res!3149894 () Bool)

(assert (=> b!7940096 (=> res!3149894 e!4685059)))

(assert (=> b!7940096 (= res!3149894 (not (is-Concat!30389 r!15416)))))

(assert (=> b!7940096 (= e!4685064 e!4685059)))

(assert (= (and d!2374962 (not res!3149893)) b!7940093))

(assert (= (and b!7940093 c!1458781) b!7940094))

(assert (= (and b!7940093 (not c!1458781)) b!7940095))

(assert (= (and b!7940094 res!3149895) b!7940088))

(assert (= (and b!7940095 c!1458782) b!7940091))

(assert (= (and b!7940095 (not c!1458782)) b!7940096))

(assert (= (and b!7940091 res!3149892) b!7940090))

(assert (= (and b!7940096 (not res!3149894)) b!7940092))

(assert (= (and b!7940092 res!3149896) b!7940089))

(assert (= (or b!7940091 b!7940092) bm!735771))

(assert (= (or b!7940090 b!7940089) bm!735773))

(assert (= (or b!7940088 bm!735773) bm!735772))

(declare-fun m!8329434 () Bool)

(assert (=> bm!735771 m!8329434))

(declare-fun m!8329436 () Bool)

(assert (=> b!7940094 m!8329436))

(declare-fun m!8329438 () Bool)

(assert (=> bm!735772 m!8329438))

(assert (=> start!749404 d!2374962))

(declare-fun b!7940109 () Bool)

(declare-fun e!4685068 () Bool)

(declare-fun tp!2360772 () Bool)

(assert (=> b!7940109 (= e!4685068 tp!2360772)))

(assert (=> b!7939932 (= tp!2360736 e!4685068)))

(declare-fun b!7940108 () Bool)

(declare-fun tp!2360770 () Bool)

(declare-fun tp!2360771 () Bool)

(assert (=> b!7940108 (= e!4685068 (and tp!2360770 tp!2360771))))

(declare-fun b!7940110 () Bool)

(declare-fun tp!2360773 () Bool)

(declare-fun tp!2360769 () Bool)

(assert (=> b!7940110 (= e!4685068 (and tp!2360773 tp!2360769))))

(declare-fun b!7940107 () Bool)

(assert (=> b!7940107 (= e!4685068 tp_is_empty!53315)))

(assert (= (and b!7939932 (is-ElementMatch!21390 (regOne!43293 r!15416))) b!7940107))

(assert (= (and b!7939932 (is-Concat!30389 (regOne!43293 r!15416))) b!7940108))

(assert (= (and b!7939932 (is-Star!21390 (regOne!43293 r!15416))) b!7940109))

(assert (= (and b!7939932 (is-Union!21390 (regOne!43293 r!15416))) b!7940110))

(declare-fun b!7940113 () Bool)

(declare-fun e!4685069 () Bool)

(declare-fun tp!2360777 () Bool)

(assert (=> b!7940113 (= e!4685069 tp!2360777)))

(assert (=> b!7939932 (= tp!2360738 e!4685069)))

(declare-fun b!7940112 () Bool)

(declare-fun tp!2360775 () Bool)

(declare-fun tp!2360776 () Bool)

(assert (=> b!7940112 (= e!4685069 (and tp!2360775 tp!2360776))))

(declare-fun b!7940114 () Bool)

(declare-fun tp!2360778 () Bool)

(declare-fun tp!2360774 () Bool)

(assert (=> b!7940114 (= e!4685069 (and tp!2360778 tp!2360774))))

(declare-fun b!7940111 () Bool)

(assert (=> b!7940111 (= e!4685069 tp_is_empty!53315)))

(assert (= (and b!7939932 (is-ElementMatch!21390 (regTwo!43293 r!15416))) b!7940111))

(assert (= (and b!7939932 (is-Concat!30389 (regTwo!43293 r!15416))) b!7940112))

(assert (= (and b!7939932 (is-Star!21390 (regTwo!43293 r!15416))) b!7940113))

(assert (= (and b!7939932 (is-Union!21390 (regTwo!43293 r!15416))) b!7940114))

(declare-fun b!7940117 () Bool)

(declare-fun e!4685070 () Bool)

(declare-fun tp!2360782 () Bool)

(assert (=> b!7940117 (= e!4685070 tp!2360782)))

(assert (=> b!7939928 (= tp!2360739 e!4685070)))

(declare-fun b!7940116 () Bool)

(declare-fun tp!2360780 () Bool)

(declare-fun tp!2360781 () Bool)

(assert (=> b!7940116 (= e!4685070 (and tp!2360780 tp!2360781))))

(declare-fun b!7940118 () Bool)

(declare-fun tp!2360783 () Bool)

(declare-fun tp!2360779 () Bool)

(assert (=> b!7940118 (= e!4685070 (and tp!2360783 tp!2360779))))

(declare-fun b!7940115 () Bool)

(assert (=> b!7940115 (= e!4685070 tp_is_empty!53315)))

(assert (= (and b!7939928 (is-ElementMatch!21390 (regOne!43292 r!15416))) b!7940115))

(assert (= (and b!7939928 (is-Concat!30389 (regOne!43292 r!15416))) b!7940116))

(assert (= (and b!7939928 (is-Star!21390 (regOne!43292 r!15416))) b!7940117))

(assert (= (and b!7939928 (is-Union!21390 (regOne!43292 r!15416))) b!7940118))

(declare-fun b!7940121 () Bool)

(declare-fun e!4685071 () Bool)

(declare-fun tp!2360787 () Bool)

(assert (=> b!7940121 (= e!4685071 tp!2360787)))

(assert (=> b!7939928 (= tp!2360737 e!4685071)))

(declare-fun b!7940120 () Bool)

(declare-fun tp!2360785 () Bool)

(declare-fun tp!2360786 () Bool)

(assert (=> b!7940120 (= e!4685071 (and tp!2360785 tp!2360786))))

(declare-fun b!7940122 () Bool)

(declare-fun tp!2360788 () Bool)

(declare-fun tp!2360784 () Bool)

(assert (=> b!7940122 (= e!4685071 (and tp!2360788 tp!2360784))))

(declare-fun b!7940119 () Bool)

(assert (=> b!7940119 (= e!4685071 tp_is_empty!53315)))

(assert (= (and b!7939928 (is-ElementMatch!21390 (regTwo!43292 r!15416))) b!7940119))

(assert (= (and b!7939928 (is-Concat!30389 (regTwo!43292 r!15416))) b!7940120))

(assert (= (and b!7939928 (is-Star!21390 (regTwo!43292 r!15416))) b!7940121))

(assert (= (and b!7939928 (is-Union!21390 (regTwo!43292 r!15416))) b!7940122))

(declare-fun b!7940125 () Bool)

(declare-fun e!4685072 () Bool)

(declare-fun tp!2360792 () Bool)

(assert (=> b!7940125 (= e!4685072 tp!2360792)))

(assert (=> b!7939929 (= tp!2360740 e!4685072)))

(declare-fun b!7940124 () Bool)

(declare-fun tp!2360790 () Bool)

(declare-fun tp!2360791 () Bool)

(assert (=> b!7940124 (= e!4685072 (and tp!2360790 tp!2360791))))

(declare-fun b!7940126 () Bool)

(declare-fun tp!2360793 () Bool)

(declare-fun tp!2360789 () Bool)

(assert (=> b!7940126 (= e!4685072 (and tp!2360793 tp!2360789))))

(declare-fun b!7940123 () Bool)

(assert (=> b!7940123 (= e!4685072 tp_is_empty!53315)))

(assert (= (and b!7939929 (is-ElementMatch!21390 (reg!21719 r!15416))) b!7940123))

(assert (= (and b!7939929 (is-Concat!30389 (reg!21719 r!15416))) b!7940124))

(assert (= (and b!7939929 (is-Star!21390 (reg!21719 r!15416))) b!7940125))

(assert (= (and b!7939929 (is-Union!21390 (reg!21719 r!15416))) b!7940126))

(declare-fun b!7940131 () Bool)

(declare-fun e!4685075 () Bool)

(declare-fun tp!2360796 () Bool)

(assert (=> b!7940131 (= e!4685075 (and tp_is_empty!53315 tp!2360796))))

(assert (=> b!7939930 (= tp!2360735 e!4685075)))

(assert (= (and b!7939930 (is-Cons!74491 (t!390358 input!6707))) b!7940131))

(push 1)

(assert (not bm!735751))

(assert (not b!7939979))

(assert (not b!7940121))

(assert (not b!7940112))

(assert (not b!7940019))

(assert (not d!2374958))

(assert (not b!7940063))

(assert (not b!7940131))

(assert (not b!7940110))

(assert (not b!7940116))

(assert (not d!2374946))

(assert (not bm!735752))

(assert (not bm!735745))

(assert (not b!7940117))

(assert (not b!7940124))

(assert (not b!7940118))

(assert (not bm!735746))

(assert (not b!7940113))

(assert tp_is_empty!53315)

(assert (not b!7940094))

(assert (not b!7940122))

(assert (not bm!735750))

(assert (not d!2374952))

(assert (not bm!735771))

(assert (not b!7940114))

(assert (not bm!735747))

(assert (not b!7940120))

(assert (not d!2374948))

(assert (not b!7940126))

(assert (not b!7940020))

(assert (not b!7940125))

(assert (not b!7940022))

(assert (not b!7940108))

(assert (not b!7940025))

(assert (not bm!735748))

(assert (not b!7940109))

(assert (not b!7939978))

(assert (not bm!735772))

(assert (not bm!735749))

(assert (not b!7940069))

(assert (not b!7940051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

