; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251354 () Bool)

(assert start!251354)

(declare-fun b!2592959 () Bool)

(assert (=> b!2592959 true))

(declare-fun b!2592950 () Bool)

(declare-fun e!1635874 () Bool)

(declare-fun e!1635877 () Bool)

(assert (=> b!2592950 (= e!1635874 e!1635877)))

(declare-fun res!1090648 () Bool)

(assert (=> b!2592950 (=> res!1090648 e!1635877)))

(declare-datatypes ((B!2079 0))(
  ( (B!2080 (val!9507 Int)) )
))
(declare-datatypes ((List!29940 0))(
  ( (Nil!29840) (Cons!29840 (h!35260 B!2079) (t!212953 List!29940)) )
))
(declare-fun l!3230 () List!29940)

(declare-fun lt!912468 () (Set B!2079))

(declare-fun content!4175 (List!29940) (Set B!2079))

(assert (=> b!2592950 (= res!1090648 (not (= (content!4175 l!3230) lt!912468)))))

(declare-fun lt!912462 () (Set B!2079))

(assert (=> b!2592950 (= lt!912468 (set.union lt!912462 (set.insert (h!35260 l!3230) (as set.empty (Set B!2079)))))))

(declare-fun b!2592951 () Bool)

(declare-fun e!1635876 () Bool)

(assert (=> b!2592951 (= e!1635876 e!1635874)))

(declare-fun res!1090644 () Bool)

(assert (=> b!2592951 (=> res!1090644 e!1635874)))

(declare-fun lt!912467 () Int)

(declare-fun size!23147 (List!29940) Int)

(assert (=> b!2592951 (= res!1090644 (not (= (size!23147 l!3230) lt!912467)))))

(declare-fun lt!912460 () Int)

(assert (=> b!2592951 (= lt!912467 (+ 1 lt!912460))))

(declare-fun b!2592952 () Bool)

(declare-datatypes ((Unit!43811 0))(
  ( (Unit!43812) )
))
(declare-fun e!1635875 () Unit!43811)

(declare-fun Unit!43813 () Unit!43811)

(assert (=> b!2592952 (= e!1635875 Unit!43813)))

(declare-fun b!2592953 () Bool)

(declare-fun res!1090642 () Bool)

(declare-fun e!1635878 () Bool)

(assert (=> b!2592953 (=> res!1090642 e!1635878)))

(assert (=> b!2592953 (= res!1090642 (not (= lt!912468 (content!4175 l!3230))))))

(declare-fun b!2592954 () Bool)

(assert (=> b!2592954 (= e!1635877 e!1635878)))

(declare-fun res!1090647 () Bool)

(assert (=> b!2592954 (=> res!1090647 e!1635878)))

(declare-fun lt!912470 () Int)

(assert (=> b!2592954 (= res!1090647 (<= lt!912470 lt!912467))))

(declare-fun lt!912472 () Unit!43811)

(assert (=> b!2592954 (= lt!912472 e!1635875)))

(declare-fun c!417963 () Bool)

(assert (=> b!2592954 (= c!417963 (< lt!912470 lt!912467))))

(declare-fun lt!912465 () List!29940)

(assert (=> b!2592954 (= lt!912470 (size!23147 lt!912465))))

(declare-fun toList!1785 ((Set B!2079)) List!29940)

(assert (=> b!2592954 (= lt!912465 (toList!1785 lt!912468))))

(declare-fun b!2592955 () Bool)

(declare-fun noDuplicate!388 (List!29940) Bool)

(assert (=> b!2592955 (= e!1635878 (noDuplicate!388 lt!912465))))

(declare-fun lt!912463 () Unit!43811)

(declare-fun subsetContains!63 (List!29940 List!29940) Unit!43811)

(assert (=> b!2592955 (= lt!912463 (subsetContains!63 l!3230 lt!912465))))

(declare-fun res!1090641 () Bool)

(declare-fun e!1635872 () Bool)

(assert (=> start!251354 (=> (not res!1090641) (not e!1635872))))

(assert (=> start!251354 (= res!1090641 (noDuplicate!388 l!3230))))

(assert (=> start!251354 e!1635872))

(declare-fun e!1635873 () Bool)

(assert (=> start!251354 e!1635873))

(declare-fun b!2592956 () Bool)

(declare-fun res!1090640 () Bool)

(assert (=> b!2592956 (=> res!1090640 e!1635876)))

(declare-fun contains!5390 (List!29940 B!2079) Bool)

(assert (=> b!2592956 (= res!1090640 (contains!5390 (t!212953 l!3230) (h!35260 l!3230)))))

(declare-fun b!2592957 () Bool)

(declare-fun res!1090646 () Bool)

(assert (=> b!2592957 (=> (not res!1090646) (not e!1635872))))

(assert (=> b!2592957 (= res!1090646 (is-Cons!29840 l!3230))))

(declare-fun b!2592958 () Bool)

(assert (=> b!2592958 (= e!1635872 (not e!1635876))))

(declare-fun res!1090643 () Bool)

(assert (=> b!2592958 (=> res!1090643 e!1635876)))

(declare-fun lt!912464 () Int)

(assert (=> b!2592958 (= res!1090643 (>= lt!912464 (size!23147 l!3230)))))

(assert (=> b!2592958 (= lt!912464 lt!912460)))

(assert (=> b!2592958 (= lt!912460 (size!23147 (t!212953 l!3230)))))

(assert (=> b!2592958 (= lt!912464 (size!23147 (toList!1785 lt!912462)))))

(assert (=> b!2592958 (= lt!912462 (content!4175 (t!212953 l!3230)))))

(declare-fun lt!912466 () Unit!43811)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!75 (List!29940) Unit!43811)

(assert (=> b!2592958 (= lt!912466 (lemmaNoDuplicateThenContentToListSameSize!75 (t!212953 l!3230)))))

(declare-fun Unit!43814 () Unit!43811)

(assert (=> b!2592959 (= e!1635875 Unit!43814)))

(declare-fun lt!912471 () Unit!43811)

(assert (=> b!2592959 (= lt!912471 (subsetContains!63 lt!912465 l!3230))))

(declare-fun lt!912469 () Unit!43811)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!29 (List!29940 List!29940) Unit!43811)

(assert (=> b!2592959 (= lt!912469 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!29 l!3230 lt!912465))))

(declare-fun lambda!96249 () Int)

(declare-fun exists!913 (List!29940 Int) Bool)

(assert (=> b!2592959 (exists!913 l!3230 lambda!96249)))

(declare-fun lt!912461 () B!2079)

(declare-fun getWitness!539 (List!29940 Int) B!2079)

(assert (=> b!2592959 (= lt!912461 (getWitness!539 l!3230 lambda!96249))))

(assert (=> b!2592959 false))

(declare-fun b!2592960 () Bool)

(declare-fun res!1090645 () Bool)

(assert (=> b!2592960 (=> res!1090645 e!1635876)))

(assert (=> b!2592960 (= res!1090645 (set.member (h!35260 l!3230) lt!912462))))

(declare-fun b!2592961 () Bool)

(declare-fun tp_is_empty!13359 () Bool)

(declare-fun tp!822827 () Bool)

(assert (=> b!2592961 (= e!1635873 (and tp_is_empty!13359 tp!822827))))

(assert (= (and start!251354 res!1090641) b!2592957))

(assert (= (and b!2592957 res!1090646) b!2592958))

(assert (= (and b!2592958 (not res!1090643)) b!2592960))

(assert (= (and b!2592960 (not res!1090645)) b!2592956))

(assert (= (and b!2592956 (not res!1090640)) b!2592951))

(assert (= (and b!2592951 (not res!1090644)) b!2592950))

(assert (= (and b!2592950 (not res!1090648)) b!2592954))

(assert (= (and b!2592954 c!417963) b!2592959))

(assert (= (and b!2592954 (not c!417963)) b!2592952))

(assert (= (and b!2592954 (not res!1090647)) b!2592953))

(assert (= (and b!2592953 (not res!1090642)) b!2592955))

(assert (= (and start!251354 (is-Cons!29840 l!3230)) b!2592961))

(declare-fun m!2928997 () Bool)

(assert (=> b!2592954 m!2928997))

(declare-fun m!2928999 () Bool)

(assert (=> b!2592954 m!2928999))

(declare-fun m!2929001 () Bool)

(assert (=> b!2592950 m!2929001))

(declare-fun m!2929003 () Bool)

(assert (=> b!2592950 m!2929003))

(declare-fun m!2929005 () Bool)

(assert (=> b!2592958 m!2929005))

(declare-fun m!2929007 () Bool)

(assert (=> b!2592958 m!2929007))

(declare-fun m!2929009 () Bool)

(assert (=> b!2592958 m!2929009))

(declare-fun m!2929011 () Bool)

(assert (=> b!2592958 m!2929011))

(declare-fun m!2929013 () Bool)

(assert (=> b!2592958 m!2929013))

(assert (=> b!2592958 m!2929013))

(declare-fun m!2929015 () Bool)

(assert (=> b!2592958 m!2929015))

(declare-fun m!2929017 () Bool)

(assert (=> b!2592956 m!2929017))

(declare-fun m!2929019 () Bool)

(assert (=> b!2592960 m!2929019))

(assert (=> b!2592951 m!2929005))

(declare-fun m!2929021 () Bool)

(assert (=> b!2592959 m!2929021))

(declare-fun m!2929023 () Bool)

(assert (=> b!2592959 m!2929023))

(declare-fun m!2929025 () Bool)

(assert (=> b!2592959 m!2929025))

(declare-fun m!2929027 () Bool)

(assert (=> b!2592959 m!2929027))

(declare-fun m!2929029 () Bool)

(assert (=> b!2592955 m!2929029))

(declare-fun m!2929031 () Bool)

(assert (=> b!2592955 m!2929031))

(declare-fun m!2929033 () Bool)

(assert (=> start!251354 m!2929033))

(assert (=> b!2592953 m!2929001))

(push 1)

(assert (not b!2592956))

(assert (not b!2592953))

(assert (not b!2592961))

(assert tp_is_empty!13359)

(assert (not start!251354))

(assert (not b!2592951))

(assert (not b!2592950))

(assert (not b!2592955))

(assert (not b!2592959))

(assert (not b!2592954))

(assert (not b!2592958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734572 () Bool)

(declare-fun lt!912514 () Int)

(assert (=> d!734572 (>= lt!912514 0)))

(declare-fun e!1635906 () Int)

(assert (=> d!734572 (= lt!912514 e!1635906)))

(declare-fun c!417969 () Bool)

(assert (=> d!734572 (= c!417969 (is-Nil!29840 lt!912465))))

(assert (=> d!734572 (= (size!23147 lt!912465) lt!912514)))

(declare-fun b!2593006 () Bool)

(assert (=> b!2593006 (= e!1635906 0)))

(declare-fun b!2593007 () Bool)

(assert (=> b!2593007 (= e!1635906 (+ 1 (size!23147 (t!212953 lt!912465))))))

(assert (= (and d!734572 c!417969) b!2593006))

(assert (= (and d!734572 (not c!417969)) b!2593007))

(declare-fun m!2929073 () Bool)

(assert (=> b!2593007 m!2929073))

(assert (=> b!2592954 d!734572))

(declare-fun d!734574 () Bool)

(declare-fun e!1635909 () Bool)

(assert (=> d!734574 e!1635909))

(declare-fun res!1090678 () Bool)

(assert (=> d!734574 (=> (not res!1090678) (not e!1635909))))

(declare-fun lt!912517 () List!29940)

(assert (=> d!734574 (= res!1090678 (noDuplicate!388 lt!912517))))

(declare-fun choose!15347 ((Set B!2079)) List!29940)

(assert (=> d!734574 (= lt!912517 (choose!15347 lt!912468))))

(assert (=> d!734574 (= (toList!1785 lt!912468) lt!912517)))

(declare-fun b!2593010 () Bool)

(assert (=> b!2593010 (= e!1635909 (= (content!4175 lt!912517) lt!912468))))

(assert (= (and d!734574 res!1090678) b!2593010))

(declare-fun m!2929075 () Bool)

(assert (=> d!734574 m!2929075))

(declare-fun m!2929077 () Bool)

(assert (=> d!734574 m!2929077))

(declare-fun m!2929079 () Bool)

(assert (=> b!2593010 m!2929079))

(assert (=> b!2592954 d!734574))

(declare-fun bs!472417 () Bool)

(declare-fun d!734576 () Bool)

(assert (= bs!472417 (and d!734576 b!2592959)))

(declare-fun lambda!96257 () Int)

(assert (=> bs!472417 (not (= lambda!96257 lambda!96249))))

(assert (=> d!734576 true))

(declare-fun forall!6087 (List!29940 Int) Bool)

(assert (=> d!734576 (forall!6087 lt!912465 lambda!96257)))

(declare-fun lt!912520 () Unit!43811)

(declare-fun choose!15348 (List!29940 List!29940) Unit!43811)

(assert (=> d!734576 (= lt!912520 (choose!15348 lt!912465 l!3230))))

(assert (=> d!734576 (set.subset (content!4175 lt!912465) (content!4175 l!3230))))

(assert (=> d!734576 (= (subsetContains!63 lt!912465 l!3230) lt!912520)))

(declare-fun bs!472418 () Bool)

(assert (= bs!472418 d!734576))

(declare-fun m!2929081 () Bool)

(assert (=> bs!472418 m!2929081))

(declare-fun m!2929083 () Bool)

(assert (=> bs!472418 m!2929083))

(declare-fun m!2929085 () Bool)

(assert (=> bs!472418 m!2929085))

(assert (=> bs!472418 m!2929001))

(assert (=> b!2592959 d!734576))

(declare-fun bs!472419 () Bool)

(declare-fun d!734578 () Bool)

(assert (= bs!472419 (and d!734578 b!2592959)))

(declare-fun lambda!96260 () Int)

(assert (=> bs!472419 (= lambda!96260 lambda!96249)))

(declare-fun bs!472420 () Bool)

(assert (= bs!472420 (and d!734578 d!734576)))

(assert (=> bs!472420 (not (= lambda!96260 lambda!96257))))

(assert (=> d!734578 true))

(assert (=> d!734578 (exists!913 l!3230 lambda!96260)))

(declare-fun lt!912523 () Unit!43811)

(declare-fun choose!15349 (List!29940 List!29940) Unit!43811)

(assert (=> d!734578 (= lt!912523 (choose!15349 l!3230 lt!912465))))

(assert (=> d!734578 (noDuplicate!388 l!3230)))

(assert (=> d!734578 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!29 l!3230 lt!912465) lt!912523)))

(declare-fun bs!472421 () Bool)

(assert (= bs!472421 d!734578))

(declare-fun m!2929087 () Bool)

(assert (=> bs!472421 m!2929087))

(declare-fun m!2929089 () Bool)

(assert (=> bs!472421 m!2929089))

(assert (=> bs!472421 m!2929033))

(assert (=> b!2592959 d!734578))

(declare-fun bs!472422 () Bool)

(declare-fun d!734582 () Bool)

(assert (= bs!472422 (and d!734582 b!2592959)))

(declare-fun lambda!96263 () Int)

(assert (=> bs!472422 (not (= lambda!96263 lambda!96249))))

(declare-fun bs!472423 () Bool)

(assert (= bs!472423 (and d!734582 d!734576)))

(assert (=> bs!472423 (not (= lambda!96263 lambda!96257))))

(declare-fun bs!472424 () Bool)

(assert (= bs!472424 (and d!734582 d!734578)))

(assert (=> bs!472424 (not (= lambda!96263 lambda!96260))))

(assert (=> d!734582 true))

(declare-fun order!15881 () Int)

(declare-fun dynLambda!12623 (Int Int) Int)

(assert (=> d!734582 (< (dynLambda!12623 order!15881 lambda!96249) (dynLambda!12623 order!15881 lambda!96263))))

(assert (=> d!734582 (= (exists!913 l!3230 lambda!96249) (not (forall!6087 l!3230 lambda!96263)))))

(declare-fun bs!472425 () Bool)

(assert (= bs!472425 d!734582))

(declare-fun m!2929091 () Bool)

(assert (=> bs!472425 m!2929091))

(assert (=> b!2592959 d!734582))

(declare-fun b!2593031 () Bool)

(declare-fun e!1635929 () B!2079)

(assert (=> b!2593031 (= e!1635929 (getWitness!539 (t!212953 l!3230) lambda!96249))))

(declare-fun b!2593032 () Bool)

(declare-fun e!1635927 () Bool)

(declare-fun dynLambda!12624 (Int B!2079) Bool)

(assert (=> b!2593032 (= e!1635927 (dynLambda!12624 lambda!96249 (h!35260 l!3230)))))

(declare-fun b!2593033 () Bool)

(declare-fun e!1635928 () B!2079)

(assert (=> b!2593033 (= e!1635928 e!1635929)))

(declare-fun c!417975 () Bool)

(assert (=> b!2593033 (= c!417975 (is-Cons!29840 l!3230))))

(declare-fun b!2593034 () Bool)

(assert (=> b!2593034 (= e!1635928 (h!35260 l!3230))))

(declare-fun d!734584 () Bool)

(declare-fun e!1635926 () Bool)

(assert (=> d!734584 e!1635926))

(declare-fun res!1090690 () Bool)

(assert (=> d!734584 (=> (not res!1090690) (not e!1635926))))

(declare-fun lt!912529 () B!2079)

(assert (=> d!734584 (= res!1090690 (dynLambda!12624 lambda!96249 lt!912529))))

(assert (=> d!734584 (= lt!912529 e!1635928)))

(declare-fun c!417974 () Bool)

(assert (=> d!734584 (= c!417974 e!1635927)))

(declare-fun res!1090689 () Bool)

(assert (=> d!734584 (=> (not res!1090689) (not e!1635927))))

(assert (=> d!734584 (= res!1090689 (is-Cons!29840 l!3230))))

(assert (=> d!734584 (exists!913 l!3230 lambda!96249)))

(assert (=> d!734584 (= (getWitness!539 l!3230 lambda!96249) lt!912529)))

(declare-fun b!2593035 () Bool)

(declare-fun lt!912528 () Unit!43811)

(declare-fun Unit!43819 () Unit!43811)

(assert (=> b!2593035 (= lt!912528 Unit!43819)))

(assert (=> b!2593035 false))

(declare-fun head!5874 (List!29940) B!2079)

(assert (=> b!2593035 (= e!1635929 (head!5874 l!3230))))

(declare-fun b!2593036 () Bool)

(assert (=> b!2593036 (= e!1635926 (contains!5390 l!3230 lt!912529))))

(assert (= (and d!734584 res!1090689) b!2593032))

(assert (= (and d!734584 c!417974) b!2593034))

(assert (= (and d!734584 (not c!417974)) b!2593033))

(assert (= (and b!2593033 c!417975) b!2593031))

(assert (= (and b!2593033 (not c!417975)) b!2593035))

(assert (= (and d!734584 res!1090690) b!2593036))

(declare-fun b_lambda!77219 () Bool)

(assert (=> (not b_lambda!77219) (not b!2593032)))

(declare-fun b_lambda!77221 () Bool)

(assert (=> (not b_lambda!77221) (not d!734584)))

(declare-fun m!2929095 () Bool)

(assert (=> b!2593035 m!2929095))

(declare-fun m!2929097 () Bool)

(assert (=> b!2593032 m!2929097))

(declare-fun m!2929099 () Bool)

(assert (=> b!2593031 m!2929099))

(declare-fun m!2929101 () Bool)

(assert (=> b!2593036 m!2929101))

(declare-fun m!2929103 () Bool)

(assert (=> d!734584 m!2929103))

(assert (=> d!734584 m!2929025))

(assert (=> b!2592959 d!734584))

(declare-fun d!734588 () Bool)

(declare-fun res!1090699 () Bool)

(declare-fun e!1635938 () Bool)

(assert (=> d!734588 (=> res!1090699 e!1635938)))

(assert (=> d!734588 (= res!1090699 (is-Nil!29840 l!3230))))

(assert (=> d!734588 (= (noDuplicate!388 l!3230) e!1635938)))

(declare-fun b!2593045 () Bool)

(declare-fun e!1635939 () Bool)

(assert (=> b!2593045 (= e!1635938 e!1635939)))

(declare-fun res!1090700 () Bool)

(assert (=> b!2593045 (=> (not res!1090700) (not e!1635939))))

(assert (=> b!2593045 (= res!1090700 (not (contains!5390 (t!212953 l!3230) (h!35260 l!3230))))))

(declare-fun b!2593046 () Bool)

(assert (=> b!2593046 (= e!1635939 (noDuplicate!388 (t!212953 l!3230)))))

(assert (= (and d!734588 (not res!1090699)) b!2593045))

(assert (= (and b!2593045 res!1090700) b!2593046))

(assert (=> b!2593045 m!2929017))

(declare-fun m!2929105 () Bool)

(assert (=> b!2593046 m!2929105))

(assert (=> start!251354 d!734588))

(declare-fun d!734590 () Bool)

(declare-fun c!417978 () Bool)

(assert (=> d!734590 (= c!417978 (is-Nil!29840 l!3230))))

(declare-fun e!1635944 () (Set B!2079))

(assert (=> d!734590 (= (content!4175 l!3230) e!1635944)))

(declare-fun b!2593053 () Bool)

(assert (=> b!2593053 (= e!1635944 (as set.empty (Set B!2079)))))

(declare-fun b!2593054 () Bool)

(assert (=> b!2593054 (= e!1635944 (set.union (set.insert (h!35260 l!3230) (as set.empty (Set B!2079))) (content!4175 (t!212953 l!3230))))))

(assert (= (and d!734590 c!417978) b!2593053))

(assert (= (and d!734590 (not c!417978)) b!2593054))

(assert (=> b!2593054 m!2929003))

(assert (=> b!2593054 m!2929009))

(assert (=> b!2592950 d!734590))

(declare-fun d!734594 () Bool)

(declare-fun res!1090703 () Bool)

(declare-fun e!1635945 () Bool)

(assert (=> d!734594 (=> res!1090703 e!1635945)))

(assert (=> d!734594 (= res!1090703 (is-Nil!29840 lt!912465))))

(assert (=> d!734594 (= (noDuplicate!388 lt!912465) e!1635945)))

(declare-fun b!2593055 () Bool)

(declare-fun e!1635946 () Bool)

(assert (=> b!2593055 (= e!1635945 e!1635946)))

(declare-fun res!1090704 () Bool)

(assert (=> b!2593055 (=> (not res!1090704) (not e!1635946))))

(assert (=> b!2593055 (= res!1090704 (not (contains!5390 (t!212953 lt!912465) (h!35260 lt!912465))))))

(declare-fun b!2593056 () Bool)

(assert (=> b!2593056 (= e!1635946 (noDuplicate!388 (t!212953 lt!912465)))))

(assert (= (and d!734594 (not res!1090703)) b!2593055))

(assert (= (and b!2593055 res!1090704) b!2593056))

(declare-fun m!2929111 () Bool)

(assert (=> b!2593055 m!2929111))

(declare-fun m!2929113 () Bool)

(assert (=> b!2593056 m!2929113))

(assert (=> b!2592955 d!734594))

(declare-fun bs!472426 () Bool)

(declare-fun d!734596 () Bool)

(assert (= bs!472426 (and d!734596 b!2592959)))

(declare-fun lambda!96264 () Int)

(assert (=> bs!472426 (not (= lambda!96264 lambda!96249))))

(declare-fun bs!472427 () Bool)

(assert (= bs!472427 (and d!734596 d!734576)))

(assert (=> bs!472427 (= (= lt!912465 l!3230) (= lambda!96264 lambda!96257))))

(declare-fun bs!472428 () Bool)

(assert (= bs!472428 (and d!734596 d!734578)))

(assert (=> bs!472428 (not (= lambda!96264 lambda!96260))))

(declare-fun bs!472429 () Bool)

(assert (= bs!472429 (and d!734596 d!734582)))

(assert (=> bs!472429 (not (= lambda!96264 lambda!96263))))

(assert (=> d!734596 true))

(assert (=> d!734596 (forall!6087 l!3230 lambda!96264)))

(declare-fun lt!912533 () Unit!43811)

(assert (=> d!734596 (= lt!912533 (choose!15348 l!3230 lt!912465))))

(assert (=> d!734596 (set.subset (content!4175 l!3230) (content!4175 lt!912465))))

(assert (=> d!734596 (= (subsetContains!63 l!3230 lt!912465) lt!912533)))

(declare-fun bs!472430 () Bool)

(assert (= bs!472430 d!734596))

(declare-fun m!2929115 () Bool)

(assert (=> bs!472430 m!2929115))

(declare-fun m!2929117 () Bool)

(assert (=> bs!472430 m!2929117))

(assert (=> bs!472430 m!2929001))

(assert (=> bs!472430 m!2929085))

(assert (=> b!2592955 d!734596))

(declare-fun d!734598 () Bool)

(declare-fun lt!912538 () Bool)

(assert (=> d!734598 (= lt!912538 (set.member (h!35260 l!3230) (content!4175 (t!212953 l!3230))))))

(declare-fun e!1635954 () Bool)

(assert (=> d!734598 (= lt!912538 e!1635954)))

(declare-fun res!1090710 () Bool)

(assert (=> d!734598 (=> (not res!1090710) (not e!1635954))))

(assert (=> d!734598 (= res!1090710 (is-Cons!29840 (t!212953 l!3230)))))

(assert (=> d!734598 (= (contains!5390 (t!212953 l!3230) (h!35260 l!3230)) lt!912538)))

(declare-fun b!2593065 () Bool)

(declare-fun e!1635953 () Bool)

(assert (=> b!2593065 (= e!1635954 e!1635953)))

(declare-fun res!1090709 () Bool)

(assert (=> b!2593065 (=> res!1090709 e!1635953)))

(assert (=> b!2593065 (= res!1090709 (= (h!35260 (t!212953 l!3230)) (h!35260 l!3230)))))

(declare-fun b!2593066 () Bool)

(assert (=> b!2593066 (= e!1635953 (contains!5390 (t!212953 (t!212953 l!3230)) (h!35260 l!3230)))))

(assert (= (and d!734598 res!1090710) b!2593065))

(assert (= (and b!2593065 (not res!1090709)) b!2593066))

(assert (=> d!734598 m!2929009))

(declare-fun m!2929119 () Bool)

(assert (=> d!734598 m!2929119))

(declare-fun m!2929121 () Bool)

(assert (=> b!2593066 m!2929121))

(assert (=> b!2592956 d!734598))

(declare-fun d!734600 () Bool)

(declare-fun lt!912539 () Int)

(assert (=> d!734600 (>= lt!912539 0)))

(declare-fun e!1635955 () Int)

(assert (=> d!734600 (= lt!912539 e!1635955)))

(declare-fun c!417981 () Bool)

(assert (=> d!734600 (= c!417981 (is-Nil!29840 l!3230))))

(assert (=> d!734600 (= (size!23147 l!3230) lt!912539)))

(declare-fun b!2593067 () Bool)

(assert (=> b!2593067 (= e!1635955 0)))

(declare-fun b!2593068 () Bool)

(assert (=> b!2593068 (= e!1635955 (+ 1 (size!23147 (t!212953 l!3230))))))

(assert (= (and d!734600 c!417981) b!2593067))

(assert (= (and d!734600 (not c!417981)) b!2593068))

(assert (=> b!2593068 m!2929007))

(assert (=> b!2592951 d!734600))

(declare-fun d!734602 () Bool)

(declare-fun lt!912541 () Int)

(assert (=> d!734602 (>= lt!912541 0)))

(declare-fun e!1635957 () Int)

(assert (=> d!734602 (= lt!912541 e!1635957)))

(declare-fun c!417983 () Bool)

(assert (=> d!734602 (= c!417983 (is-Nil!29840 (toList!1785 lt!912462)))))

(assert (=> d!734602 (= (size!23147 (toList!1785 lt!912462)) lt!912541)))

(declare-fun b!2593071 () Bool)

(assert (=> b!2593071 (= e!1635957 0)))

(declare-fun b!2593072 () Bool)

(assert (=> b!2593072 (= e!1635957 (+ 1 (size!23147 (t!212953 (toList!1785 lt!912462)))))))

(assert (= (and d!734602 c!417983) b!2593071))

(assert (= (and d!734602 (not c!417983)) b!2593072))

(declare-fun m!2929123 () Bool)

(assert (=> b!2593072 m!2929123))

(assert (=> b!2592958 d!734602))

(assert (=> b!2592958 d!734600))

(declare-fun d!734604 () Bool)

(declare-fun e!1635958 () Bool)

(assert (=> d!734604 e!1635958))

(declare-fun res!1090711 () Bool)

(assert (=> d!734604 (=> (not res!1090711) (not e!1635958))))

(declare-fun lt!912542 () List!29940)

(assert (=> d!734604 (= res!1090711 (noDuplicate!388 lt!912542))))

(assert (=> d!734604 (= lt!912542 (choose!15347 lt!912462))))

(assert (=> d!734604 (= (toList!1785 lt!912462) lt!912542)))

(declare-fun b!2593073 () Bool)

(assert (=> b!2593073 (= e!1635958 (= (content!4175 lt!912542) lt!912462))))

(assert (= (and d!734604 res!1090711) b!2593073))

(declare-fun m!2929125 () Bool)

(assert (=> d!734604 m!2929125))

(declare-fun m!2929127 () Bool)

(assert (=> d!734604 m!2929127))

(declare-fun m!2929129 () Bool)

(assert (=> b!2593073 m!2929129))

(assert (=> b!2592958 d!734604))

(declare-fun d!734608 () Bool)

(declare-fun lt!912544 () Int)

(assert (=> d!734608 (>= lt!912544 0)))

(declare-fun e!1635960 () Int)

(assert (=> d!734608 (= lt!912544 e!1635960)))

(declare-fun c!417985 () Bool)

(assert (=> d!734608 (= c!417985 (is-Nil!29840 (t!212953 l!3230)))))

(assert (=> d!734608 (= (size!23147 (t!212953 l!3230)) lt!912544)))

(declare-fun b!2593076 () Bool)

(assert (=> b!2593076 (= e!1635960 0)))

(declare-fun b!2593077 () Bool)

(assert (=> b!2593077 (= e!1635960 (+ 1 (size!23147 (t!212953 (t!212953 l!3230)))))))

(assert (= (and d!734608 c!417985) b!2593076))

(assert (= (and d!734608 (not c!417985)) b!2593077))

(declare-fun m!2929131 () Bool)

(assert (=> b!2593077 m!2929131))

(assert (=> b!2592958 d!734608))

(declare-fun d!734610 () Bool)

(declare-fun c!417986 () Bool)

(assert (=> d!734610 (= c!417986 (is-Nil!29840 (t!212953 l!3230)))))

(declare-fun e!1635961 () (Set B!2079))

(assert (=> d!734610 (= (content!4175 (t!212953 l!3230)) e!1635961)))

(declare-fun b!2593078 () Bool)

(assert (=> b!2593078 (= e!1635961 (as set.empty (Set B!2079)))))

(declare-fun b!2593079 () Bool)

(assert (=> b!2593079 (= e!1635961 (set.union (set.insert (h!35260 (t!212953 l!3230)) (as set.empty (Set B!2079))) (content!4175 (t!212953 (t!212953 l!3230)))))))

(assert (= (and d!734610 c!417986) b!2593078))

(assert (= (and d!734610 (not c!417986)) b!2593079))

(declare-fun m!2929135 () Bool)

(assert (=> b!2593079 m!2929135))

(declare-fun m!2929137 () Bool)

(assert (=> b!2593079 m!2929137))

(assert (=> b!2592958 d!734610))

(declare-fun d!734614 () Bool)

(assert (=> d!734614 (= (size!23147 (toList!1785 (content!4175 (t!212953 l!3230)))) (size!23147 (t!212953 l!3230)))))

(declare-fun lt!912548 () Unit!43811)

(declare-fun choose!15350 (List!29940) Unit!43811)

(assert (=> d!734614 (= lt!912548 (choose!15350 (t!212953 l!3230)))))

(assert (=> d!734614 (noDuplicate!388 (t!212953 l!3230))))

(assert (=> d!734614 (= (lemmaNoDuplicateThenContentToListSameSize!75 (t!212953 l!3230)) lt!912548)))

(declare-fun bs!472431 () Bool)

(assert (= bs!472431 d!734614))

(assert (=> bs!472431 m!2929009))

(assert (=> bs!472431 m!2929007))

(assert (=> bs!472431 m!2929009))

(declare-fun m!2929141 () Bool)

(assert (=> bs!472431 m!2929141))

(declare-fun m!2929143 () Bool)

(assert (=> bs!472431 m!2929143))

(assert (=> bs!472431 m!2929141))

(declare-fun m!2929145 () Bool)

(assert (=> bs!472431 m!2929145))

(assert (=> bs!472431 m!2929105))

(assert (=> b!2592958 d!734614))

(assert (=> b!2592953 d!734590))

(declare-fun b!2593090 () Bool)

(declare-fun e!1635967 () Bool)

(declare-fun tp!822833 () Bool)

(assert (=> b!2593090 (= e!1635967 (and tp_is_empty!13359 tp!822833))))

(assert (=> b!2592961 (= tp!822827 e!1635967)))

(assert (= (and b!2592961 (is-Cons!29840 (t!212953 l!3230))) b!2593090))

(declare-fun b_lambda!77223 () Bool)

(assert (= b_lambda!77219 (or b!2592959 b_lambda!77223)))

(declare-fun bs!472432 () Bool)

(declare-fun d!734618 () Bool)

(assert (= bs!472432 (and d!734618 b!2592959)))

(assert (=> bs!472432 (= (dynLambda!12624 lambda!96249 (h!35260 l!3230)) (not (contains!5390 lt!912465 (h!35260 l!3230))))))

(declare-fun m!2929147 () Bool)

(assert (=> bs!472432 m!2929147))

(assert (=> b!2593032 d!734618))

(declare-fun b_lambda!77225 () Bool)

(assert (= b_lambda!77221 (or b!2592959 b_lambda!77225)))

(declare-fun bs!472433 () Bool)

(declare-fun d!734620 () Bool)

(assert (= bs!472433 (and d!734620 b!2592959)))

(assert (=> bs!472433 (= (dynLambda!12624 lambda!96249 lt!912529) (not (contains!5390 lt!912465 lt!912529)))))

(declare-fun m!2929149 () Bool)

(assert (=> bs!472433 m!2929149))

(assert (=> d!734584 d!734620))

(push 1)

(assert (not b!2593077))

(assert (not b!2593079))

(assert (not b!2593055))

(assert (not b!2593031))

(assert (not d!734598))

(assert (not b!2593036))

(assert (not b_lambda!77223))

(assert (not bs!472432))

(assert (not b!2593072))

(assert (not b!2593056))

(assert (not b!2593045))

(assert (not b!2593010))

(assert (not b!2593066))

(assert (not b!2593073))

(assert (not b!2593046))

(assert (not bs!472433))

(assert (not b!2593068))

(assert tp_is_empty!13359)

(assert (not b!2593054))

(assert (not b!2593035))

(assert (not d!734614))

(assert (not b_lambda!77225))

(assert (not d!734604))

(assert (not b!2593090))

(assert (not d!734576))

(assert (not d!734584))

(assert (not d!734574))

(assert (not d!734582))

(assert (not b!2593007))

(assert (not d!734578))

(assert (not d!734596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

