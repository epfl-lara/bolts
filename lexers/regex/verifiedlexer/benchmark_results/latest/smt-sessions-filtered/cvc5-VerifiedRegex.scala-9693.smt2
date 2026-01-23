; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!507884 () Bool)

(assert start!507884)

(declare-fun b!4860098 () Bool)

(declare-fun e!3038389 () Bool)

(declare-datatypes ((B!2955 0))(
  ( (B!2956 (val!22433 Int)) )
))
(declare-datatypes ((List!55901 0))(
  ( (Nil!55777) (Cons!55777 (h!62225 B!2955) (t!363521 List!55901)) )
))
(declare-fun lt!1992186 () List!55901)

(declare-fun l2!1268 () List!55901)

(declare-fun last!421 (List!55901) B!2955)

(assert (=> b!4860098 (= e!3038389 (not (= (last!421 lt!1992186) (last!421 l2!1268))))))

(declare-fun b!4860099 () Bool)

(declare-fun e!3038392 () Bool)

(declare-fun tp_is_empty!35573 () Bool)

(declare-fun tp!1367003 () Bool)

(assert (=> b!4860099 (= e!3038392 (and tp_is_empty!35573 tp!1367003))))

(declare-fun res!2074863 () Bool)

(declare-fun e!3038391 () Bool)

(assert (=> start!507884 (=> (not res!2074863) (not e!3038391))))

(declare-fun isEmpty!29866 (List!55901) Bool)

(assert (=> start!507884 (= res!2074863 (not (isEmpty!29866 lt!1992186)))))

(declare-fun l1!1299 () List!55901)

(declare-fun ++!12162 (List!55901 List!55901) List!55901)

(assert (=> start!507884 (= lt!1992186 (++!12162 l1!1299 l2!1268))))

(assert (=> start!507884 e!3038391))

(assert (=> start!507884 e!3038392))

(declare-fun e!3038394 () Bool)

(assert (=> start!507884 e!3038394))

(declare-fun b!4860100 () Bool)

(declare-fun e!3038393 () Bool)

(assert (=> b!4860100 (= e!3038393 e!3038389)))

(declare-fun res!2074867 () Bool)

(assert (=> b!4860100 (=> res!2074867 e!3038389)))

(declare-fun lt!1992187 () Bool)

(assert (=> b!4860100 (= res!2074867 lt!1992187)))

(declare-fun b!4860101 () Bool)

(declare-fun tp!1367002 () Bool)

(assert (=> b!4860101 (= e!3038394 (and tp_is_empty!35573 tp!1367002))))

(declare-fun b!4860102 () Bool)

(declare-fun e!3038390 () Bool)

(assert (=> b!4860102 (= e!3038390 (isEmpty!29866 (t!363521 l1!1299)))))

(declare-fun b!4860103 () Bool)

(assert (=> b!4860103 (= e!3038391 e!3038393)))

(declare-fun res!2074864 () Bool)

(assert (=> b!4860103 (=> (not res!2074864) (not e!3038393))))

(declare-fun e!3038395 () Bool)

(assert (=> b!4860103 (= res!2074864 e!3038395)))

(declare-fun res!2074866 () Bool)

(assert (=> b!4860103 (=> res!2074866 e!3038395)))

(assert (=> b!4860103 (= res!2074866 (not lt!1992187))))

(assert (=> b!4860103 (= lt!1992187 (isEmpty!29866 l2!1268))))

(declare-fun b!4860104 () Bool)

(declare-fun res!2074865 () Bool)

(assert (=> b!4860104 (=> (not res!2074865) (not e!3038391))))

(assert (=> b!4860104 (= res!2074865 e!3038390)))

(declare-fun res!2074862 () Bool)

(assert (=> b!4860104 (=> res!2074862 e!3038390)))

(assert (=> b!4860104 (= res!2074862 (not (is-Cons!55777 l1!1299)))))

(declare-fun b!4860105 () Bool)

(assert (=> b!4860105 (= e!3038395 (not (= (last!421 lt!1992186) (last!421 l1!1299))))))

(assert (= (and start!507884 res!2074863) b!4860104))

(assert (= (and b!4860104 (not res!2074862)) b!4860102))

(assert (= (and b!4860104 res!2074865) b!4860103))

(assert (= (and b!4860103 (not res!2074866)) b!4860105))

(assert (= (and b!4860103 res!2074864) b!4860100))

(assert (= (and b!4860100 (not res!2074867)) b!4860098))

(assert (= (and start!507884 (is-Cons!55777 l1!1299)) b!4860099))

(assert (= (and start!507884 (is-Cons!55777 l2!1268)) b!4860101))

(declare-fun m!5858290 () Bool)

(assert (=> b!4860103 m!5858290))

(declare-fun m!5858292 () Bool)

(assert (=> b!4860105 m!5858292))

(declare-fun m!5858294 () Bool)

(assert (=> b!4860105 m!5858294))

(declare-fun m!5858296 () Bool)

(assert (=> b!4860102 m!5858296))

(assert (=> b!4860098 m!5858292))

(declare-fun m!5858298 () Bool)

(assert (=> b!4860098 m!5858298))

(declare-fun m!5858300 () Bool)

(assert (=> start!507884 m!5858300))

(declare-fun m!5858302 () Bool)

(assert (=> start!507884 m!5858302))

(push 1)

(assert (not b!4860103))

(assert (not b!4860098))

(assert (not b!4860099))

(assert (not start!507884))

(assert (not b!4860105))

(assert (not b!4860102))

(assert tp_is_empty!35573)

(assert (not b!4860101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560086 () Bool)

(assert (=> d!1560086 (= (isEmpty!29866 l2!1268) (is-Nil!55777 l2!1268))))

(assert (=> b!4860103 d!1560086))

(declare-fun d!1560088 () Bool)

(declare-fun lt!1992196 () B!2955)

(declare-fun contains!19373 (List!55901 B!2955) Bool)

(assert (=> d!1560088 (contains!19373 lt!1992186 lt!1992196)))

(declare-fun e!3038419 () B!2955)

(assert (=> d!1560088 (= lt!1992196 e!3038419)))

(declare-fun c!826764 () Bool)

(assert (=> d!1560088 (= c!826764 (and (is-Cons!55777 lt!1992186) (is-Nil!55777 (t!363521 lt!1992186))))))

(assert (=> d!1560088 (not (isEmpty!29866 lt!1992186))))

(assert (=> d!1560088 (= (last!421 lt!1992186) lt!1992196)))

(declare-fun b!4860134 () Bool)

(assert (=> b!4860134 (= e!3038419 (h!62225 lt!1992186))))

(declare-fun b!4860135 () Bool)

(assert (=> b!4860135 (= e!3038419 (last!421 (t!363521 lt!1992186)))))

(assert (= (and d!1560088 c!826764) b!4860134))

(assert (= (and d!1560088 (not c!826764)) b!4860135))

(declare-fun m!5858318 () Bool)

(assert (=> d!1560088 m!5858318))

(assert (=> d!1560088 m!5858300))

(declare-fun m!5858320 () Bool)

(assert (=> b!4860135 m!5858320))

(assert (=> b!4860098 d!1560088))

(declare-fun d!1560092 () Bool)

(declare-fun lt!1992197 () B!2955)

(assert (=> d!1560092 (contains!19373 l2!1268 lt!1992197)))

(declare-fun e!3038420 () B!2955)

(assert (=> d!1560092 (= lt!1992197 e!3038420)))

(declare-fun c!826765 () Bool)

(assert (=> d!1560092 (= c!826765 (and (is-Cons!55777 l2!1268) (is-Nil!55777 (t!363521 l2!1268))))))

(assert (=> d!1560092 (not (isEmpty!29866 l2!1268))))

(assert (=> d!1560092 (= (last!421 l2!1268) lt!1992197)))

(declare-fun b!4860136 () Bool)

(assert (=> b!4860136 (= e!3038420 (h!62225 l2!1268))))

(declare-fun b!4860137 () Bool)

(assert (=> b!4860137 (= e!3038420 (last!421 (t!363521 l2!1268)))))

(assert (= (and d!1560092 c!826765) b!4860136))

(assert (= (and d!1560092 (not c!826765)) b!4860137))

(declare-fun m!5858322 () Bool)

(assert (=> d!1560092 m!5858322))

(assert (=> d!1560092 m!5858290))

(declare-fun m!5858324 () Bool)

(assert (=> b!4860137 m!5858324))

(assert (=> b!4860098 d!1560092))

(declare-fun d!1560096 () Bool)

(assert (=> d!1560096 (= (isEmpty!29866 lt!1992186) (is-Nil!55777 lt!1992186))))

(assert (=> start!507884 d!1560096))

(declare-fun d!1560098 () Bool)

(declare-fun e!3038428 () Bool)

(assert (=> d!1560098 e!3038428))

(declare-fun res!2074891 () Bool)

(assert (=> d!1560098 (=> (not res!2074891) (not e!3038428))))

(declare-fun lt!1992202 () List!55901)

(declare-fun content!9952 (List!55901) (Set B!2955))

(assert (=> d!1560098 (= res!2074891 (= (content!9952 lt!1992202) (set.union (content!9952 l1!1299) (content!9952 l2!1268))))))

(declare-fun e!3038427 () List!55901)

(assert (=> d!1560098 (= lt!1992202 e!3038427)))

(declare-fun c!826770 () Bool)

(assert (=> d!1560098 (= c!826770 (is-Nil!55777 l1!1299))))

(assert (=> d!1560098 (= (++!12162 l1!1299 l2!1268) lt!1992202)))

(declare-fun b!4860153 () Bool)

(assert (=> b!4860153 (= e!3038428 (or (not (= l2!1268 Nil!55777)) (= lt!1992202 l1!1299)))))

(declare-fun b!4860151 () Bool)

(assert (=> b!4860151 (= e!3038427 (Cons!55777 (h!62225 l1!1299) (++!12162 (t!363521 l1!1299) l2!1268)))))

(declare-fun b!4860152 () Bool)

(declare-fun res!2074890 () Bool)

(assert (=> b!4860152 (=> (not res!2074890) (not e!3038428))))

(declare-fun size!36755 (List!55901) Int)

(assert (=> b!4860152 (= res!2074890 (= (size!36755 lt!1992202) (+ (size!36755 l1!1299) (size!36755 l2!1268))))))

(declare-fun b!4860150 () Bool)

(assert (=> b!4860150 (= e!3038427 l2!1268)))

(assert (= (and d!1560098 c!826770) b!4860150))

(assert (= (and d!1560098 (not c!826770)) b!4860151))

(assert (= (and d!1560098 res!2074891) b!4860152))

(assert (= (and b!4860152 res!2074890) b!4860153))

(declare-fun m!5858326 () Bool)

(assert (=> d!1560098 m!5858326))

(declare-fun m!5858328 () Bool)

(assert (=> d!1560098 m!5858328))

(declare-fun m!5858330 () Bool)

(assert (=> d!1560098 m!5858330))

(declare-fun m!5858332 () Bool)

(assert (=> b!4860151 m!5858332))

(declare-fun m!5858334 () Bool)

(assert (=> b!4860152 m!5858334))

(declare-fun m!5858336 () Bool)

(assert (=> b!4860152 m!5858336))

(declare-fun m!5858338 () Bool)

(assert (=> b!4860152 m!5858338))

(assert (=> start!507884 d!1560098))

(declare-fun d!1560100 () Bool)

(assert (=> d!1560100 (= (isEmpty!29866 (t!363521 l1!1299)) (is-Nil!55777 (t!363521 l1!1299)))))

(assert (=> b!4860102 d!1560100))

(assert (=> b!4860105 d!1560088))

(declare-fun d!1560102 () Bool)

(declare-fun lt!1992203 () B!2955)

(assert (=> d!1560102 (contains!19373 l1!1299 lt!1992203)))

(declare-fun e!3038429 () B!2955)

(assert (=> d!1560102 (= lt!1992203 e!3038429)))

(declare-fun c!826771 () Bool)

(assert (=> d!1560102 (= c!826771 (and (is-Cons!55777 l1!1299) (is-Nil!55777 (t!363521 l1!1299))))))

(assert (=> d!1560102 (not (isEmpty!29866 l1!1299))))

(assert (=> d!1560102 (= (last!421 l1!1299) lt!1992203)))

(declare-fun b!4860154 () Bool)

(assert (=> b!4860154 (= e!3038429 (h!62225 l1!1299))))

(declare-fun b!4860155 () Bool)

(assert (=> b!4860155 (= e!3038429 (last!421 (t!363521 l1!1299)))))

(assert (= (and d!1560102 c!826771) b!4860154))

(assert (= (and d!1560102 (not c!826771)) b!4860155))

(declare-fun m!5858340 () Bool)

(assert (=> d!1560102 m!5858340))

(declare-fun m!5858342 () Bool)

(assert (=> d!1560102 m!5858342))

(declare-fun m!5858344 () Bool)

(assert (=> b!4860155 m!5858344))

(assert (=> b!4860105 d!1560102))

(declare-fun b!4860160 () Bool)

(declare-fun e!3038432 () Bool)

(declare-fun tp!1367012 () Bool)

(assert (=> b!4860160 (= e!3038432 (and tp_is_empty!35573 tp!1367012))))

(assert (=> b!4860099 (= tp!1367003 e!3038432)))

(assert (= (and b!4860099 (is-Cons!55777 (t!363521 l1!1299))) b!4860160))

(declare-fun b!4860161 () Bool)

(declare-fun e!3038433 () Bool)

(declare-fun tp!1367013 () Bool)

(assert (=> b!4860161 (= e!3038433 (and tp_is_empty!35573 tp!1367013))))

(assert (=> b!4860101 (= tp!1367002 e!3038433)))

(assert (= (and b!4860101 (is-Cons!55777 (t!363521 l2!1268))) b!4860161))

(push 1)

(assert (not d!1560092))

(assert (not d!1560098))

(assert (not b!4860161))

(assert (not b!4860135))

(assert (not b!4860160))

(assert (not b!4860137))

(assert tp_is_empty!35573)

(assert (not b!4860155))

(assert (not d!1560088))

(assert (not b!4860152))

(assert (not b!4860151))

(assert (not d!1560102))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560114 () Bool)

(declare-fun lt!1992210 () B!2955)

(assert (=> d!1560114 (contains!19373 (t!363521 lt!1992186) lt!1992210)))

(declare-fun e!3038447 () B!2955)

(assert (=> d!1560114 (= lt!1992210 e!3038447)))

(declare-fun c!826778 () Bool)

(assert (=> d!1560114 (= c!826778 (and (is-Cons!55777 (t!363521 lt!1992186)) (is-Nil!55777 (t!363521 (t!363521 lt!1992186)))))))

(assert (=> d!1560114 (not (isEmpty!29866 (t!363521 lt!1992186)))))

(assert (=> d!1560114 (= (last!421 (t!363521 lt!1992186)) lt!1992210)))

(declare-fun b!4860186 () Bool)

(assert (=> b!4860186 (= e!3038447 (h!62225 (t!363521 lt!1992186)))))

(declare-fun b!4860187 () Bool)

(assert (=> b!4860187 (= e!3038447 (last!421 (t!363521 (t!363521 lt!1992186))))))

(assert (= (and d!1560114 c!826778) b!4860186))

(assert (= (and d!1560114 (not c!826778)) b!4860187))

(declare-fun m!5858374 () Bool)

(assert (=> d!1560114 m!5858374))

(declare-fun m!5858376 () Bool)

(assert (=> d!1560114 m!5858376))

(declare-fun m!5858378 () Bool)

(assert (=> b!4860187 m!5858378))

(assert (=> b!4860135 d!1560114))

(declare-fun d!1560116 () Bool)

(declare-fun c!826781 () Bool)

(assert (=> d!1560116 (= c!826781 (is-Nil!55777 lt!1992202))))

(declare-fun e!3038450 () (Set B!2955))

(assert (=> d!1560116 (= (content!9952 lt!1992202) e!3038450)))

(declare-fun b!4860192 () Bool)

(assert (=> b!4860192 (= e!3038450 (as set.empty (Set B!2955)))))

(declare-fun b!4860193 () Bool)

(assert (=> b!4860193 (= e!3038450 (set.union (set.insert (h!62225 lt!1992202) (as set.empty (Set B!2955))) (content!9952 (t!363521 lt!1992202))))))

(assert (= (and d!1560116 c!826781) b!4860192))

(assert (= (and d!1560116 (not c!826781)) b!4860193))

(declare-fun m!5858380 () Bool)

(assert (=> b!4860193 m!5858380))

(declare-fun m!5858382 () Bool)

(assert (=> b!4860193 m!5858382))

(assert (=> d!1560098 d!1560116))

(declare-fun d!1560118 () Bool)

(declare-fun c!826782 () Bool)

(assert (=> d!1560118 (= c!826782 (is-Nil!55777 l1!1299))))

(declare-fun e!3038451 () (Set B!2955))

(assert (=> d!1560118 (= (content!9952 l1!1299) e!3038451)))

(declare-fun b!4860194 () Bool)

(assert (=> b!4860194 (= e!3038451 (as set.empty (Set B!2955)))))

(declare-fun b!4860195 () Bool)

(assert (=> b!4860195 (= e!3038451 (set.union (set.insert (h!62225 l1!1299) (as set.empty (Set B!2955))) (content!9952 (t!363521 l1!1299))))))

(assert (= (and d!1560118 c!826782) b!4860194))

(assert (= (and d!1560118 (not c!826782)) b!4860195))

(declare-fun m!5858384 () Bool)

(assert (=> b!4860195 m!5858384))

(declare-fun m!5858386 () Bool)

(assert (=> b!4860195 m!5858386))

(assert (=> d!1560098 d!1560118))

(declare-fun d!1560120 () Bool)

(declare-fun c!826783 () Bool)

(assert (=> d!1560120 (= c!826783 (is-Nil!55777 l2!1268))))

(declare-fun e!3038452 () (Set B!2955))

(assert (=> d!1560120 (= (content!9952 l2!1268) e!3038452)))

(declare-fun b!4860196 () Bool)

(assert (=> b!4860196 (= e!3038452 (as set.empty (Set B!2955)))))

(declare-fun b!4860197 () Bool)

(assert (=> b!4860197 (= e!3038452 (set.union (set.insert (h!62225 l2!1268) (as set.empty (Set B!2955))) (content!9952 (t!363521 l2!1268))))))

(assert (= (and d!1560120 c!826783) b!4860196))

(assert (= (and d!1560120 (not c!826783)) b!4860197))

(declare-fun m!5858388 () Bool)

(assert (=> b!4860197 m!5858388))

(declare-fun m!5858390 () Bool)

(assert (=> b!4860197 m!5858390))

(assert (=> d!1560098 d!1560120))

(declare-fun d!1560122 () Bool)

(declare-fun lt!1992213 () Bool)

(assert (=> d!1560122 (= lt!1992213 (set.member lt!1992203 (content!9952 l1!1299)))))

(declare-fun e!3038457 () Bool)

(assert (=> d!1560122 (= lt!1992213 e!3038457)))

(declare-fun res!2074903 () Bool)

(assert (=> d!1560122 (=> (not res!2074903) (not e!3038457))))

(assert (=> d!1560122 (= res!2074903 (is-Cons!55777 l1!1299))))

(assert (=> d!1560122 (= (contains!19373 l1!1299 lt!1992203) lt!1992213)))

(declare-fun b!4860202 () Bool)

(declare-fun e!3038458 () Bool)

(assert (=> b!4860202 (= e!3038457 e!3038458)))

(declare-fun res!2074902 () Bool)

(assert (=> b!4860202 (=> res!2074902 e!3038458)))

(assert (=> b!4860202 (= res!2074902 (= (h!62225 l1!1299) lt!1992203))))

(declare-fun b!4860203 () Bool)

(assert (=> b!4860203 (= e!3038458 (contains!19373 (t!363521 l1!1299) lt!1992203))))

(assert (= (and d!1560122 res!2074903) b!4860202))

(assert (= (and b!4860202 (not res!2074902)) b!4860203))

(assert (=> d!1560122 m!5858328))

(declare-fun m!5858392 () Bool)

(assert (=> d!1560122 m!5858392))

(declare-fun m!5858394 () Bool)

(assert (=> b!4860203 m!5858394))

(assert (=> d!1560102 d!1560122))

(declare-fun d!1560124 () Bool)

(assert (=> d!1560124 (= (isEmpty!29866 l1!1299) (is-Nil!55777 l1!1299))))

(assert (=> d!1560102 d!1560124))

(declare-fun d!1560126 () Bool)

(declare-fun lt!1992214 () Bool)

(assert (=> d!1560126 (= lt!1992214 (set.member lt!1992197 (content!9952 l2!1268)))))

(declare-fun e!3038459 () Bool)

(assert (=> d!1560126 (= lt!1992214 e!3038459)))

(declare-fun res!2074905 () Bool)

(assert (=> d!1560126 (=> (not res!2074905) (not e!3038459))))

(assert (=> d!1560126 (= res!2074905 (is-Cons!55777 l2!1268))))

(assert (=> d!1560126 (= (contains!19373 l2!1268 lt!1992197) lt!1992214)))

(declare-fun b!4860204 () Bool)

(declare-fun e!3038460 () Bool)

(assert (=> b!4860204 (= e!3038459 e!3038460)))

(declare-fun res!2074904 () Bool)

(assert (=> b!4860204 (=> res!2074904 e!3038460)))

(assert (=> b!4860204 (= res!2074904 (= (h!62225 l2!1268) lt!1992197))))

(declare-fun b!4860205 () Bool)

(assert (=> b!4860205 (= e!3038460 (contains!19373 (t!363521 l2!1268) lt!1992197))))

(assert (= (and d!1560126 res!2074905) b!4860204))

(assert (= (and b!4860204 (not res!2074904)) b!4860205))

(assert (=> d!1560126 m!5858330))

(declare-fun m!5858396 () Bool)

(assert (=> d!1560126 m!5858396))

(declare-fun m!5858398 () Bool)

(assert (=> b!4860205 m!5858398))

(assert (=> d!1560092 d!1560126))

(assert (=> d!1560092 d!1560086))

(declare-fun d!1560128 () Bool)

(declare-fun lt!1992215 () B!2955)

(assert (=> d!1560128 (contains!19373 (t!363521 l1!1299) lt!1992215)))

(declare-fun e!3038461 () B!2955)

(assert (=> d!1560128 (= lt!1992215 e!3038461)))

(declare-fun c!826784 () Bool)

(assert (=> d!1560128 (= c!826784 (and (is-Cons!55777 (t!363521 l1!1299)) (is-Nil!55777 (t!363521 (t!363521 l1!1299)))))))

(assert (=> d!1560128 (not (isEmpty!29866 (t!363521 l1!1299)))))

(assert (=> d!1560128 (= (last!421 (t!363521 l1!1299)) lt!1992215)))

(declare-fun b!4860206 () Bool)

(assert (=> b!4860206 (= e!3038461 (h!62225 (t!363521 l1!1299)))))

(declare-fun b!4860207 () Bool)

(assert (=> b!4860207 (= e!3038461 (last!421 (t!363521 (t!363521 l1!1299))))))

(assert (= (and d!1560128 c!826784) b!4860206))

(assert (= (and d!1560128 (not c!826784)) b!4860207))

(declare-fun m!5858400 () Bool)

(assert (=> d!1560128 m!5858400))

(assert (=> d!1560128 m!5858296))

(declare-fun m!5858402 () Bool)

(assert (=> b!4860207 m!5858402))

(assert (=> b!4860155 d!1560128))

(declare-fun d!1560130 () Bool)

(declare-fun lt!1992216 () B!2955)

(assert (=> d!1560130 (contains!19373 (t!363521 l2!1268) lt!1992216)))

(declare-fun e!3038462 () B!2955)

(assert (=> d!1560130 (= lt!1992216 e!3038462)))

(declare-fun c!826785 () Bool)

(assert (=> d!1560130 (= c!826785 (and (is-Cons!55777 (t!363521 l2!1268)) (is-Nil!55777 (t!363521 (t!363521 l2!1268)))))))

(assert (=> d!1560130 (not (isEmpty!29866 (t!363521 l2!1268)))))

(assert (=> d!1560130 (= (last!421 (t!363521 l2!1268)) lt!1992216)))

(declare-fun b!4860208 () Bool)

(assert (=> b!4860208 (= e!3038462 (h!62225 (t!363521 l2!1268)))))

(declare-fun b!4860209 () Bool)

(assert (=> b!4860209 (= e!3038462 (last!421 (t!363521 (t!363521 l2!1268))))))

(assert (= (and d!1560130 c!826785) b!4860208))

(assert (= (and d!1560130 (not c!826785)) b!4860209))

(declare-fun m!5858404 () Bool)

(assert (=> d!1560130 m!5858404))

(declare-fun m!5858406 () Bool)

(assert (=> d!1560130 m!5858406))

(declare-fun m!5858408 () Bool)

(assert (=> b!4860209 m!5858408))

(assert (=> b!4860137 d!1560130))

(declare-fun d!1560132 () Bool)

(declare-fun lt!1992217 () Bool)

(assert (=> d!1560132 (= lt!1992217 (set.member lt!1992196 (content!9952 lt!1992186)))))

(declare-fun e!3038463 () Bool)

(assert (=> d!1560132 (= lt!1992217 e!3038463)))

(declare-fun res!2074907 () Bool)

(assert (=> d!1560132 (=> (not res!2074907) (not e!3038463))))

(assert (=> d!1560132 (= res!2074907 (is-Cons!55777 lt!1992186))))

(assert (=> d!1560132 (= (contains!19373 lt!1992186 lt!1992196) lt!1992217)))

(declare-fun b!4860210 () Bool)

(declare-fun e!3038464 () Bool)

(assert (=> b!4860210 (= e!3038463 e!3038464)))

(declare-fun res!2074906 () Bool)

(assert (=> b!4860210 (=> res!2074906 e!3038464)))

(assert (=> b!4860210 (= res!2074906 (= (h!62225 lt!1992186) lt!1992196))))

(declare-fun b!4860211 () Bool)

(assert (=> b!4860211 (= e!3038464 (contains!19373 (t!363521 lt!1992186) lt!1992196))))

(assert (= (and d!1560132 res!2074907) b!4860210))

(assert (= (and b!4860210 (not res!2074906)) b!4860211))

(declare-fun m!5858410 () Bool)

(assert (=> d!1560132 m!5858410))

(declare-fun m!5858412 () Bool)

(assert (=> d!1560132 m!5858412))

(declare-fun m!5858414 () Bool)

(assert (=> b!4860211 m!5858414))

(assert (=> d!1560088 d!1560132))

(assert (=> d!1560088 d!1560096))

(declare-fun d!1560134 () Bool)

(declare-fun lt!1992220 () Int)

(assert (=> d!1560134 (>= lt!1992220 0)))

(declare-fun e!3038467 () Int)

(assert (=> d!1560134 (= lt!1992220 e!3038467)))

(declare-fun c!826788 () Bool)

(assert (=> d!1560134 (= c!826788 (is-Nil!55777 lt!1992202))))

(assert (=> d!1560134 (= (size!36755 lt!1992202) lt!1992220)))

(declare-fun b!4860216 () Bool)

(assert (=> b!4860216 (= e!3038467 0)))

(declare-fun b!4860217 () Bool)

(assert (=> b!4860217 (= e!3038467 (+ 1 (size!36755 (t!363521 lt!1992202))))))

(assert (= (and d!1560134 c!826788) b!4860216))

(assert (= (and d!1560134 (not c!826788)) b!4860217))

(declare-fun m!5858416 () Bool)

(assert (=> b!4860217 m!5858416))

(assert (=> b!4860152 d!1560134))

(declare-fun d!1560136 () Bool)

(declare-fun lt!1992221 () Int)

(assert (=> d!1560136 (>= lt!1992221 0)))

(declare-fun e!3038468 () Int)

(assert (=> d!1560136 (= lt!1992221 e!3038468)))

(declare-fun c!826789 () Bool)

(assert (=> d!1560136 (= c!826789 (is-Nil!55777 l1!1299))))

(assert (=> d!1560136 (= (size!36755 l1!1299) lt!1992221)))

(declare-fun b!4860218 () Bool)

(assert (=> b!4860218 (= e!3038468 0)))

(declare-fun b!4860219 () Bool)

(assert (=> b!4860219 (= e!3038468 (+ 1 (size!36755 (t!363521 l1!1299))))))

(assert (= (and d!1560136 c!826789) b!4860218))

(assert (= (and d!1560136 (not c!826789)) b!4860219))

(declare-fun m!5858418 () Bool)

(assert (=> b!4860219 m!5858418))

(assert (=> b!4860152 d!1560136))

(declare-fun d!1560138 () Bool)

(declare-fun lt!1992222 () Int)

(assert (=> d!1560138 (>= lt!1992222 0)))

(declare-fun e!3038469 () Int)

(assert (=> d!1560138 (= lt!1992222 e!3038469)))

(declare-fun c!826790 () Bool)

(assert (=> d!1560138 (= c!826790 (is-Nil!55777 l2!1268))))

(assert (=> d!1560138 (= (size!36755 l2!1268) lt!1992222)))

(declare-fun b!4860220 () Bool)

(assert (=> b!4860220 (= e!3038469 0)))

(declare-fun b!4860221 () Bool)

(assert (=> b!4860221 (= e!3038469 (+ 1 (size!36755 (t!363521 l2!1268))))))

(assert (= (and d!1560138 c!826790) b!4860220))

(assert (= (and d!1560138 (not c!826790)) b!4860221))

(declare-fun m!5858420 () Bool)

(assert (=> b!4860221 m!5858420))

(assert (=> b!4860152 d!1560138))

(declare-fun d!1560140 () Bool)

(declare-fun e!3038471 () Bool)

(assert (=> d!1560140 e!3038471))

(declare-fun res!2074909 () Bool)

(assert (=> d!1560140 (=> (not res!2074909) (not e!3038471))))

(declare-fun lt!1992223 () List!55901)

(assert (=> d!1560140 (= res!2074909 (= (content!9952 lt!1992223) (set.union (content!9952 (t!363521 l1!1299)) (content!9952 l2!1268))))))

(declare-fun e!3038470 () List!55901)

(assert (=> d!1560140 (= lt!1992223 e!3038470)))

(declare-fun c!826791 () Bool)

(assert (=> d!1560140 (= c!826791 (is-Nil!55777 (t!363521 l1!1299)))))

(assert (=> d!1560140 (= (++!12162 (t!363521 l1!1299) l2!1268) lt!1992223)))

(declare-fun b!4860225 () Bool)

(assert (=> b!4860225 (= e!3038471 (or (not (= l2!1268 Nil!55777)) (= lt!1992223 (t!363521 l1!1299))))))

(declare-fun b!4860223 () Bool)

(assert (=> b!4860223 (= e!3038470 (Cons!55777 (h!62225 (t!363521 l1!1299)) (++!12162 (t!363521 (t!363521 l1!1299)) l2!1268)))))

(declare-fun b!4860224 () Bool)

(declare-fun res!2074908 () Bool)

(assert (=> b!4860224 (=> (not res!2074908) (not e!3038471))))

(assert (=> b!4860224 (= res!2074908 (= (size!36755 lt!1992223) (+ (size!36755 (t!363521 l1!1299)) (size!36755 l2!1268))))))

(declare-fun b!4860222 () Bool)

(assert (=> b!4860222 (= e!3038470 l2!1268)))

(assert (= (and d!1560140 c!826791) b!4860222))

(assert (= (and d!1560140 (not c!826791)) b!4860223))

(assert (= (and d!1560140 res!2074909) b!4860224))

(assert (= (and b!4860224 res!2074908) b!4860225))

(declare-fun m!5858422 () Bool)

(assert (=> d!1560140 m!5858422))

(assert (=> d!1560140 m!5858386))

(assert (=> d!1560140 m!5858330))

(declare-fun m!5858424 () Bool)

(assert (=> b!4860223 m!5858424))

(declare-fun m!5858426 () Bool)

(assert (=> b!4860224 m!5858426))

(assert (=> b!4860224 m!5858418))

(assert (=> b!4860224 m!5858338))

(assert (=> b!4860151 d!1560140))

(declare-fun b!4860226 () Bool)

(declare-fun e!3038472 () Bool)

(declare-fun tp!1367018 () Bool)

(assert (=> b!4860226 (= e!3038472 (and tp_is_empty!35573 tp!1367018))))

(assert (=> b!4860160 (= tp!1367012 e!3038472)))

(assert (= (and b!4860160 (is-Cons!55777 (t!363521 (t!363521 l1!1299)))) b!4860226))

(declare-fun b!4860227 () Bool)

(declare-fun e!3038473 () Bool)

(declare-fun tp!1367019 () Bool)

(assert (=> b!4860227 (= e!3038473 (and tp_is_empty!35573 tp!1367019))))

(assert (=> b!4860161 (= tp!1367013 e!3038473)))

(assert (= (and b!4860161 (is-Cons!55777 (t!363521 (t!363521 l2!1268)))) b!4860227))

(push 1)

(assert (not b!4860211))

(assert (not b!4860221))

(assert (not b!4860207))

(assert (not d!1560128))

(assert (not b!4860195))

(assert (not d!1560122))

(assert (not d!1560126))

(assert (not b!4860193))

(assert (not b!4860203))

(assert (not b!4860227))

(assert tp_is_empty!35573)

(assert (not b!4860224))

(assert (not b!4860209))

(assert (not b!4860187))

(assert (not d!1560132))

(assert (not b!4860223))

(assert (not d!1560140))

(assert (not b!4860217))

(assert (not d!1560114))

(assert (not b!4860226))

(assert (not b!4860197))

(assert (not d!1560130))

(assert (not b!4860205))

(assert (not b!4860219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

