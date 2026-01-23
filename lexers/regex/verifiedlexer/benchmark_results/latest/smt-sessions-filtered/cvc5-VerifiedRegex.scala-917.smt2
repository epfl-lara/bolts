; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47330 () Bool)

(assert start!47330)

(assert (=> start!47330 true))

(declare-fun b!519076 () Bool)

(declare-fun e!310891 () Bool)

(declare-fun e!310892 () Bool)

(assert (=> b!519076 (= e!310891 e!310892)))

(declare-fun res!220254 () Bool)

(assert (=> b!519076 (=> (not res!220254) (not e!310892))))

(declare-datatypes ((B!1111 0))(
  ( (B!1112 (val!1843 Int)) )
))
(declare-datatypes ((List!4783 0))(
  ( (Nil!4773) (Cons!4773 (h!10174 B!1111) (t!73373 List!4783)) )
))
(declare-fun lt!216391 () List!4783)

(declare-fun lt!216387 () (Set B!1111))

(declare-fun lIn!3 () List!4783)

(declare-fun content!858 (List!4783) (Set B!1111))

(assert (=> b!519076 (= res!220254 (= (content!858 lt!216391) (set.minus lt!216387 (set.insert (h!10174 lIn!3) (as set.empty (Set B!1111))))))))

(declare-fun l!3695 () List!4783)

(declare-fun -!61 (List!4783 B!1111) List!4783)

(assert (=> b!519076 (= lt!216391 (-!61 l!3695 (h!10174 lIn!3)))))

(declare-fun b!519078 () Bool)

(declare-fun e!310888 () Bool)

(declare-fun tp_is_empty!2707 () Bool)

(declare-fun tp!161734 () Bool)

(assert (=> b!519078 (= e!310888 (and tp_is_empty!2707 tp!161734))))

(declare-fun b!519079 () Bool)

(declare-fun e!310889 () Bool)

(declare-fun contains!1133 (List!4783 B!1111) Bool)

(assert (=> b!519079 (= e!310889 (contains!1133 l!3695 (h!10174 lIn!3)))))

(declare-fun b!519080 () Bool)

(declare-fun e!310890 () Bool)

(assert (=> b!519080 (= e!310890 e!310891)))

(declare-fun res!220256 () Bool)

(assert (=> b!519080 (=> (not res!220256) (not e!310891))))

(assert (=> b!519080 (= res!220256 (set.subset (content!858 lIn!3) lt!216387))))

(assert (=> b!519080 (= lt!216387 (content!858 l!3695))))

(declare-datatypes ((Unit!8750 0))(
  ( (Unit!8751) )
))
(declare-fun lt!216386 () Unit!8750)

(declare-fun forallContainsSubset!19 (List!4783 List!4783) Unit!8750)

(assert (=> b!519080 (= lt!216386 (forallContainsSubset!19 lIn!3 l!3695))))

(declare-fun b!519081 () Bool)

(declare-fun res!220251 () Bool)

(assert (=> b!519081 (=> (not res!220251) (not e!310891))))

(assert (=> b!519081 (= res!220251 (not (contains!1133 (t!73373 lIn!3) (h!10174 lIn!3))))))

(declare-fun b!519082 () Bool)

(declare-fun e!310887 () Bool)

(declare-fun tp!161735 () Bool)

(assert (=> b!519082 (= e!310887 (and tp_is_empty!2707 tp!161735))))

(declare-fun b!519077 () Bool)

(assert (=> b!519077 (= e!310892 (not e!310889))))

(declare-fun res!220253 () Bool)

(assert (=> b!519077 (=> res!220253 e!310889)))

(declare-fun lt!216388 () Int)

(declare-fun size!3896 (List!4783) Int)

(assert (=> b!519077 (= res!220253 (not (= (+ 1 lt!216388) (size!3896 lIn!3))))))

(assert (=> b!519077 (<= lt!216388 (size!3896 lt!216391))))

(assert (=> b!519077 (= lt!216388 (size!3896 (t!73373 lIn!3)))))

(declare-fun lt!216390 () Unit!8750)

(declare-fun lemmaForallContainsAndNoDuplicateThenSmallerList!7 (List!4783 List!4783) Unit!8750)

(assert (=> b!519077 (= lt!216390 (lemmaForallContainsAndNoDuplicateThenSmallerList!7 lt!216391 (t!73373 lIn!3)))))

(declare-fun lt!216389 () Unit!8750)

(declare-fun subsetContains!11 (List!4783 List!4783) Unit!8750)

(assert (=> b!519077 (= lt!216389 (subsetContains!11 (t!73373 lIn!3) lt!216391))))

(declare-fun res!220255 () Bool)

(assert (=> start!47330 (=> (not res!220255) (not e!310890))))

(declare-fun lambda!14790 () Int)

(declare-fun forall!1442 (List!4783 Int) Bool)

(assert (=> start!47330 (= res!220255 (forall!1442 lIn!3 lambda!14790))))

(assert (=> start!47330 e!310890))

(assert (=> start!47330 e!310887))

(assert (=> start!47330 e!310888))

(declare-fun b!519083 () Bool)

(declare-fun res!220252 () Bool)

(assert (=> b!519083 (=> (not res!220252) (not e!310890))))

(assert (=> b!519083 (= res!220252 (is-Cons!4773 lIn!3))))

(declare-fun b!519084 () Bool)

(declare-fun res!220257 () Bool)

(assert (=> b!519084 (=> (not res!220257) (not e!310890))))

(declare-fun noDuplicate!134 (List!4783) Bool)

(assert (=> b!519084 (= res!220257 (noDuplicate!134 lIn!3))))

(assert (= (and start!47330 res!220255) b!519084))

(assert (= (and b!519084 res!220257) b!519083))

(assert (= (and b!519083 res!220252) b!519080))

(assert (= (and b!519080 res!220256) b!519081))

(assert (= (and b!519081 res!220251) b!519076))

(assert (= (and b!519076 res!220254) b!519077))

(assert (= (and b!519077 (not res!220253)) b!519079))

(assert (= (and start!47330 (is-Cons!4773 lIn!3)) b!519082))

(assert (= (and start!47330 (is-Cons!4773 l!3695)) b!519078))

(declare-fun m!765931 () Bool)

(assert (=> start!47330 m!765931))

(declare-fun m!765933 () Bool)

(assert (=> b!519080 m!765933))

(declare-fun m!765935 () Bool)

(assert (=> b!519080 m!765935))

(declare-fun m!765937 () Bool)

(assert (=> b!519080 m!765937))

(declare-fun m!765939 () Bool)

(assert (=> b!519077 m!765939))

(declare-fun m!765941 () Bool)

(assert (=> b!519077 m!765941))

(declare-fun m!765943 () Bool)

(assert (=> b!519077 m!765943))

(declare-fun m!765945 () Bool)

(assert (=> b!519077 m!765945))

(declare-fun m!765947 () Bool)

(assert (=> b!519077 m!765947))

(declare-fun m!765949 () Bool)

(assert (=> b!519076 m!765949))

(declare-fun m!765951 () Bool)

(assert (=> b!519076 m!765951))

(declare-fun m!765953 () Bool)

(assert (=> b!519076 m!765953))

(declare-fun m!765955 () Bool)

(assert (=> b!519079 m!765955))

(declare-fun m!765957 () Bool)

(assert (=> b!519081 m!765957))

(declare-fun m!765959 () Bool)

(assert (=> b!519084 m!765959))

(push 1)

(assert (not b!519084))

(assert tp_is_empty!2707)

(assert (not b!519080))

(assert (not b!519077))

(assert (not start!47330))

(assert (not b!519082))

(assert (not b!519081))

(assert (not b!519078))

(assert (not b!519076))

(assert (not b!519079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!60392 () Bool)

(declare-fun d!185442 () Bool)

(assert (= bs!60392 (and d!185442 start!47330)))

(declare-fun lambda!14796 () Int)

(assert (=> bs!60392 (= (= lt!216391 l!3695) (= lambda!14796 lambda!14790))))

(assert (=> d!185442 true))

(assert (=> d!185442 (<= (size!3896 (t!73373 lIn!3)) (size!3896 lt!216391))))

(declare-fun lt!216412 () Unit!8750)

(declare-fun choose!3710 (List!4783 List!4783) Unit!8750)

(assert (=> d!185442 (= lt!216412 (choose!3710 lt!216391 (t!73373 lIn!3)))))

(assert (=> d!185442 (forall!1442 (t!73373 lIn!3) lambda!14796)))

(assert (=> d!185442 (= (lemmaForallContainsAndNoDuplicateThenSmallerList!7 lt!216391 (t!73373 lIn!3)) lt!216412)))

(declare-fun bs!60393 () Bool)

(assert (= bs!60393 d!185442))

(assert (=> bs!60393 m!765943))

(assert (=> bs!60393 m!765945))

(declare-fun m!766001 () Bool)

(assert (=> bs!60393 m!766001))

(declare-fun m!766003 () Bool)

(assert (=> bs!60393 m!766003))

(assert (=> b!519077 d!185442))

(declare-fun d!185448 () Bool)

(declare-fun lt!216415 () Int)

(assert (=> d!185448 (>= lt!216415 0)))

(declare-fun e!310927 () Int)

(assert (=> d!185448 (= lt!216415 e!310927)))

(declare-fun c!100430 () Bool)

(assert (=> d!185448 (= c!100430 (is-Nil!4773 lt!216391))))

(assert (=> d!185448 (= (size!3896 lt!216391) lt!216415)))

(declare-fun b!519134 () Bool)

(assert (=> b!519134 (= e!310927 0)))

(declare-fun b!519135 () Bool)

(assert (=> b!519135 (= e!310927 (+ 1 (size!3896 (t!73373 lt!216391))))))

(assert (= (and d!185448 c!100430) b!519134))

(assert (= (and d!185448 (not c!100430)) b!519135))

(declare-fun m!766005 () Bool)

(assert (=> b!519135 m!766005))

(assert (=> b!519077 d!185448))

(declare-fun bs!60394 () Bool)

(declare-fun d!185450 () Bool)

(assert (= bs!60394 (and d!185450 start!47330)))

(declare-fun lambda!14801 () Int)

(assert (=> bs!60394 (= (= lt!216391 l!3695) (= lambda!14801 lambda!14790))))

(declare-fun bs!60395 () Bool)

(assert (= bs!60395 (and d!185450 d!185442)))

(assert (=> bs!60395 (= lambda!14801 lambda!14796)))

(assert (=> d!185450 true))

(assert (=> d!185450 (forall!1442 (t!73373 lIn!3) lambda!14801)))

(declare-fun lt!216420 () Unit!8750)

(declare-fun choose!3711 (List!4783 List!4783) Unit!8750)

(assert (=> d!185450 (= lt!216420 (choose!3711 (t!73373 lIn!3) lt!216391))))

(assert (=> d!185450 (set.subset (content!858 (t!73373 lIn!3)) (content!858 lt!216391))))

(assert (=> d!185450 (= (subsetContains!11 (t!73373 lIn!3) lt!216391) lt!216420)))

(declare-fun bs!60396 () Bool)

(assert (= bs!60396 d!185450))

(declare-fun m!766007 () Bool)

(assert (=> bs!60396 m!766007))

(declare-fun m!766009 () Bool)

(assert (=> bs!60396 m!766009))

(declare-fun m!766011 () Bool)

(assert (=> bs!60396 m!766011))

(assert (=> bs!60396 m!765949))

(assert (=> b!519077 d!185450))

(declare-fun d!185452 () Bool)

(declare-fun lt!216421 () Int)

(assert (=> d!185452 (>= lt!216421 0)))

(declare-fun e!310928 () Int)

(assert (=> d!185452 (= lt!216421 e!310928)))

(declare-fun c!100431 () Bool)

(assert (=> d!185452 (= c!100431 (is-Nil!4773 (t!73373 lIn!3)))))

(assert (=> d!185452 (= (size!3896 (t!73373 lIn!3)) lt!216421)))

(declare-fun b!519136 () Bool)

(assert (=> b!519136 (= e!310928 0)))

(declare-fun b!519137 () Bool)

(assert (=> b!519137 (= e!310928 (+ 1 (size!3896 (t!73373 (t!73373 lIn!3)))))))

(assert (= (and d!185452 c!100431) b!519136))

(assert (= (and d!185452 (not c!100431)) b!519137))

(declare-fun m!766013 () Bool)

(assert (=> b!519137 m!766013))

(assert (=> b!519077 d!185452))

(declare-fun d!185454 () Bool)

(declare-fun lt!216423 () Int)

(assert (=> d!185454 (>= lt!216423 0)))

(declare-fun e!310929 () Int)

(assert (=> d!185454 (= lt!216423 e!310929)))

(declare-fun c!100432 () Bool)

(assert (=> d!185454 (= c!100432 (is-Nil!4773 lIn!3))))

(assert (=> d!185454 (= (size!3896 lIn!3) lt!216423)))

(declare-fun b!519138 () Bool)

(assert (=> b!519138 (= e!310929 0)))

(declare-fun b!519139 () Bool)

(assert (=> b!519139 (= e!310929 (+ 1 (size!3896 (t!73373 lIn!3))))))

(assert (= (and d!185454 c!100432) b!519138))

(assert (= (and d!185454 (not c!100432)) b!519139))

(assert (=> b!519139 m!765943))

(assert (=> b!519077 d!185454))

(declare-fun d!185456 () Bool)

(declare-fun lt!216426 () Bool)

(assert (=> d!185456 (= lt!216426 (set.member (h!10174 lIn!3) (content!858 (t!73373 lIn!3))))))

(declare-fun e!310935 () Bool)

(assert (=> d!185456 (= lt!216426 e!310935)))

(declare-fun res!220289 () Bool)

(assert (=> d!185456 (=> (not res!220289) (not e!310935))))

(assert (=> d!185456 (= res!220289 (is-Cons!4773 (t!73373 lIn!3)))))

(assert (=> d!185456 (= (contains!1133 (t!73373 lIn!3) (h!10174 lIn!3)) lt!216426)))

(declare-fun b!519144 () Bool)

(declare-fun e!310934 () Bool)

(assert (=> b!519144 (= e!310935 e!310934)))

(declare-fun res!220290 () Bool)

(assert (=> b!519144 (=> res!220290 e!310934)))

(assert (=> b!519144 (= res!220290 (= (h!10174 (t!73373 lIn!3)) (h!10174 lIn!3)))))

(declare-fun b!519145 () Bool)

(assert (=> b!519145 (= e!310934 (contains!1133 (t!73373 (t!73373 lIn!3)) (h!10174 lIn!3)))))

(assert (= (and d!185456 res!220289) b!519144))

(assert (= (and b!519144 (not res!220290)) b!519145))

(assert (=> d!185456 m!766011))

(declare-fun m!766019 () Bool)

(assert (=> d!185456 m!766019))

(declare-fun m!766021 () Bool)

(assert (=> b!519145 m!766021))

(assert (=> b!519081 d!185456))

(declare-fun d!185460 () Bool)

(declare-fun c!100435 () Bool)

(assert (=> d!185460 (= c!100435 (is-Nil!4773 lt!216391))))

(declare-fun e!310942 () (Set B!1111))

(assert (=> d!185460 (= (content!858 lt!216391) e!310942)))

(declare-fun b!519154 () Bool)

(assert (=> b!519154 (= e!310942 (as set.empty (Set B!1111)))))

(declare-fun b!519155 () Bool)

(assert (=> b!519155 (= e!310942 (set.union (set.insert (h!10174 lt!216391) (as set.empty (Set B!1111))) (content!858 (t!73373 lt!216391))))))

(assert (= (and d!185460 c!100435) b!519154))

(assert (= (and d!185460 (not c!100435)) b!519155))

(declare-fun m!766023 () Bool)

(assert (=> b!519155 m!766023))

(declare-fun m!766025 () Bool)

(assert (=> b!519155 m!766025))

(assert (=> b!519076 d!185460))

(declare-fun b!519168 () Bool)

(declare-fun e!310952 () List!4783)

(declare-fun call!38009 () List!4783)

(assert (=> b!519168 (= e!310952 call!38009)))

(declare-fun bm!38004 () Bool)

(assert (=> bm!38004 (= call!38009 (-!61 (t!73373 l!3695) (h!10174 lIn!3)))))

(declare-fun lt!216429 () List!4783)

(declare-fun e!310953 () Bool)

(declare-fun b!519170 () Bool)

(assert (=> b!519170 (= e!310953 (= (content!858 lt!216429) (set.minus (content!858 l!3695) (set.insert (h!10174 lIn!3) (as set.empty (Set B!1111))))))))

(declare-fun b!519171 () Bool)

(declare-fun e!310954 () List!4783)

(assert (=> b!519171 (= e!310954 Nil!4773)))

(declare-fun b!519172 () Bool)

(assert (=> b!519172 (= e!310952 (Cons!4773 (h!10174 l!3695) call!38009))))

(declare-fun b!519169 () Bool)

(assert (=> b!519169 (= e!310954 e!310952)))

(declare-fun c!100440 () Bool)

(assert (=> b!519169 (= c!100440 (= (h!10174 lIn!3) (h!10174 l!3695)))))

(declare-fun d!185462 () Bool)

(assert (=> d!185462 e!310953))

(declare-fun res!220299 () Bool)

(assert (=> d!185462 (=> (not res!220299) (not e!310953))))

(assert (=> d!185462 (= res!220299 (<= (size!3896 lt!216429) (size!3896 l!3695)))))

(assert (=> d!185462 (= lt!216429 e!310954)))

(declare-fun c!100441 () Bool)

(assert (=> d!185462 (= c!100441 (is-Cons!4773 l!3695))))

(assert (=> d!185462 (= (-!61 l!3695 (h!10174 lIn!3)) lt!216429)))

(assert (= (and d!185462 c!100441) b!519169))

(assert (= (and d!185462 (not c!100441)) b!519171))

(assert (= (and b!519169 c!100440) b!519168))

(assert (= (and b!519169 (not c!100440)) b!519172))

(assert (= (or b!519168 b!519172) bm!38004))

(assert (= (and d!185462 res!220299) b!519170))

(declare-fun m!766029 () Bool)

(assert (=> bm!38004 m!766029))

(declare-fun m!766031 () Bool)

(assert (=> b!519170 m!766031))

(assert (=> b!519170 m!765935))

(assert (=> b!519170 m!765951))

(declare-fun m!766033 () Bool)

(assert (=> d!185462 m!766033))

(declare-fun m!766035 () Bool)

(assert (=> d!185462 m!766035))

(assert (=> b!519076 d!185462))

(declare-fun d!185466 () Bool)

(declare-fun c!100442 () Bool)

(assert (=> d!185466 (= c!100442 (is-Nil!4773 lIn!3))))

(declare-fun e!310957 () (Set B!1111))

(assert (=> d!185466 (= (content!858 lIn!3) e!310957)))

(declare-fun b!519175 () Bool)

(assert (=> b!519175 (= e!310957 (as set.empty (Set B!1111)))))

(declare-fun b!519176 () Bool)

(assert (=> b!519176 (= e!310957 (set.union (set.insert (h!10174 lIn!3) (as set.empty (Set B!1111))) (content!858 (t!73373 lIn!3))))))

(assert (= (and d!185466 c!100442) b!519175))

(assert (= (and d!185466 (not c!100442)) b!519176))

(assert (=> b!519176 m!765951))

(assert (=> b!519176 m!766011))

(assert (=> b!519080 d!185466))

(declare-fun d!185468 () Bool)

(declare-fun c!100443 () Bool)

(assert (=> d!185468 (= c!100443 (is-Nil!4773 l!3695))))

(declare-fun e!310960 () (Set B!1111))

(assert (=> d!185468 (= (content!858 l!3695) e!310960)))

(declare-fun b!519179 () Bool)

(assert (=> b!519179 (= e!310960 (as set.empty (Set B!1111)))))

(declare-fun b!519180 () Bool)

(assert (=> b!519180 (= e!310960 (set.union (set.insert (h!10174 l!3695) (as set.empty (Set B!1111))) (content!858 (t!73373 l!3695))))))

(assert (= (and d!185468 c!100443) b!519179))

(assert (= (and d!185468 (not c!100443)) b!519180))

(declare-fun m!766037 () Bool)

(assert (=> b!519180 m!766037))

(declare-fun m!766039 () Bool)

(assert (=> b!519180 m!766039))

(assert (=> b!519080 d!185468))

(declare-fun bs!60399 () Bool)

(declare-fun d!185470 () Bool)

(assert (= bs!60399 (and d!185470 start!47330)))

(declare-fun lambda!14805 () Int)

(assert (=> bs!60399 (= lambda!14805 lambda!14790)))

(declare-fun bs!60400 () Bool)

(assert (= bs!60400 (and d!185470 d!185442)))

(assert (=> bs!60400 (= (= l!3695 lt!216391) (= lambda!14805 lambda!14796))))

(declare-fun bs!60401 () Bool)

(assert (= bs!60401 (and d!185470 d!185450)))

(assert (=> bs!60401 (= (= l!3695 lt!216391) (= lambda!14805 lambda!14801))))

(assert (=> d!185470 true))

(assert (=> d!185470 (set.subset (content!858 lIn!3) (content!858 l!3695))))

(declare-fun lt!216435 () Unit!8750)

(declare-fun choose!3712 (List!4783 List!4783) Unit!8750)

(assert (=> d!185470 (= lt!216435 (choose!3712 lIn!3 l!3695))))

(assert (=> d!185470 (forall!1442 lIn!3 lambda!14805)))

(assert (=> d!185470 (= (forallContainsSubset!19 lIn!3 l!3695) lt!216435)))

(declare-fun bs!60402 () Bool)

(assert (= bs!60402 d!185470))

(assert (=> bs!60402 m!765933))

(assert (=> bs!60402 m!765935))

(declare-fun m!766045 () Bool)

(assert (=> bs!60402 m!766045))

(declare-fun m!766047 () Bool)

(assert (=> bs!60402 m!766047))

(assert (=> b!519080 d!185470))

(declare-fun d!185474 () Bool)

(declare-fun res!220310 () Bool)

(declare-fun e!310968 () Bool)

(assert (=> d!185474 (=> res!220310 e!310968)))

(assert (=> d!185474 (= res!220310 (is-Nil!4773 lIn!3))))

(assert (=> d!185474 (= (forall!1442 lIn!3 lambda!14790) e!310968)))

(declare-fun b!519189 () Bool)

(declare-fun e!310969 () Bool)

(assert (=> b!519189 (= e!310968 e!310969)))

(declare-fun res!220311 () Bool)

(assert (=> b!519189 (=> (not res!220311) (not e!310969))))

(declare-fun dynLambda!2999 (Int B!1111) Bool)

(assert (=> b!519189 (= res!220311 (dynLambda!2999 lambda!14790 (h!10174 lIn!3)))))

(declare-fun b!519190 () Bool)

(assert (=> b!519190 (= e!310969 (forall!1442 (t!73373 lIn!3) lambda!14790))))

(assert (= (and d!185474 (not res!220310)) b!519189))

(assert (= (and b!519189 res!220311) b!519190))

(declare-fun b_lambda!20223 () Bool)

(assert (=> (not b_lambda!20223) (not b!519189)))

(declare-fun m!766053 () Bool)

(assert (=> b!519189 m!766053))

(declare-fun m!766055 () Bool)

(assert (=> b!519190 m!766055))

(assert (=> start!47330 d!185474))

(declare-fun d!185478 () Bool)

(declare-fun lt!216436 () Bool)

(assert (=> d!185478 (= lt!216436 (set.member (h!10174 lIn!3) (content!858 l!3695)))))

(declare-fun e!310971 () Bool)

(assert (=> d!185478 (= lt!216436 e!310971)))

(declare-fun res!220312 () Bool)

(assert (=> d!185478 (=> (not res!220312) (not e!310971))))

(assert (=> d!185478 (= res!220312 (is-Cons!4773 l!3695))))

(assert (=> d!185478 (= (contains!1133 l!3695 (h!10174 lIn!3)) lt!216436)))

(declare-fun b!519191 () Bool)

(declare-fun e!310970 () Bool)

(assert (=> b!519191 (= e!310971 e!310970)))

(declare-fun res!220313 () Bool)

(assert (=> b!519191 (=> res!220313 e!310970)))

(assert (=> b!519191 (= res!220313 (= (h!10174 l!3695) (h!10174 lIn!3)))))

(declare-fun b!519192 () Bool)

(assert (=> b!519192 (= e!310970 (contains!1133 (t!73373 l!3695) (h!10174 lIn!3)))))

(assert (= (and d!185478 res!220312) b!519191))

(assert (= (and b!519191 (not res!220313)) b!519192))

(assert (=> d!185478 m!765935))

(declare-fun m!766057 () Bool)

(assert (=> d!185478 m!766057))

(declare-fun m!766059 () Bool)

(assert (=> b!519192 m!766059))

(assert (=> b!519079 d!185478))

(declare-fun d!185480 () Bool)

(declare-fun res!220318 () Bool)

(declare-fun e!310976 () Bool)

(assert (=> d!185480 (=> res!220318 e!310976)))

(assert (=> d!185480 (= res!220318 (is-Nil!4773 lIn!3))))

(assert (=> d!185480 (= (noDuplicate!134 lIn!3) e!310976)))

(declare-fun b!519197 () Bool)

(declare-fun e!310977 () Bool)

(assert (=> b!519197 (= e!310976 e!310977)))

(declare-fun res!220319 () Bool)

(assert (=> b!519197 (=> (not res!220319) (not e!310977))))

(assert (=> b!519197 (= res!220319 (not (contains!1133 (t!73373 lIn!3) (h!10174 lIn!3))))))

(declare-fun b!519198 () Bool)

(assert (=> b!519198 (= e!310977 (noDuplicate!134 (t!73373 lIn!3)))))

(assert (= (and d!185480 (not res!220318)) b!519197))

(assert (= (and b!519197 res!220319) b!519198))

(assert (=> b!519197 m!765957))

(declare-fun m!766061 () Bool)

(assert (=> b!519198 m!766061))

(assert (=> b!519084 d!185480))

(declare-fun b!519203 () Bool)

(declare-fun e!310980 () Bool)

(declare-fun tp!161744 () Bool)

(assert (=> b!519203 (= e!310980 (and tp_is_empty!2707 tp!161744))))

(assert (=> b!519082 (= tp!161735 e!310980)))

(assert (= (and b!519082 (is-Cons!4773 (t!73373 lIn!3))) b!519203))

(declare-fun b!519204 () Bool)

(declare-fun e!310981 () Bool)

(declare-fun tp!161745 () Bool)

(assert (=> b!519204 (= e!310981 (and tp_is_empty!2707 tp!161745))))

(assert (=> b!519078 (= tp!161734 e!310981)))

(assert (= (and b!519078 (is-Cons!4773 (t!73373 l!3695))) b!519204))

(declare-fun b_lambda!20225 () Bool)

(assert (= b_lambda!20223 (or start!47330 b_lambda!20225)))

(declare-fun bs!60403 () Bool)

(declare-fun d!185482 () Bool)

(assert (= bs!60403 (and d!185482 start!47330)))

(assert (=> bs!60403 (= (dynLambda!2999 lambda!14790 (h!10174 lIn!3)) (contains!1133 l!3695 (h!10174 lIn!3)))))

(assert (=> bs!60403 m!765955))

(assert (=> b!519189 d!185482))

(push 1)

(assert (not bm!38004))

(assert (not b!519137))

(assert (not d!185478))

(assert tp_is_empty!2707)

(assert (not d!185442))

(assert (not b!519204))

(assert (not d!185450))

(assert (not b!519192))

(assert (not b!519145))

(assert (not b!519190))

(assert (not b!519197))

(assert (not b!519180))

(assert (not d!185470))

(assert (not d!185462))

(assert (not b!519135))

(assert (not d!185456))

(assert (not b!519203))

(assert (not b!519155))

(assert (not b!519139))

(assert (not b!519198))

(assert (not b!519176))

(assert (not b!519170))

(assert (not bs!60403))

(assert (not b_lambda!20225))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

