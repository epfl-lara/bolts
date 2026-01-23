; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749682 () Bool)

(assert start!749682)

(declare-fun b!7943069 () Bool)

(declare-fun res!3150823 () Bool)

(declare-fun e!4686568 () Bool)

(assert (=> b!7943069 (=> (not res!3150823) (not e!4686568))))

(declare-datatypes ((C!43174 0))(
  ( (C!43175 (val!32135 Int)) )
))
(declare-datatypes ((List!74647 0))(
  ( (Nil!74523) (Cons!74523 (h!80971 C!43174) (t!390390 List!74647)) )
))
(declare-fun testedP!447 () List!74647)

(declare-fun input!7927 () List!74647)

(declare-fun isPrefix!6518 (List!74647 List!74647) Bool)

(assert (=> b!7943069 (= res!3150823 (isPrefix!6518 testedP!447 input!7927))))

(declare-fun b!7943070 () Bool)

(declare-fun e!4686564 () Bool)

(declare-fun tp!2362101 () Bool)

(declare-fun tp!2362095 () Bool)

(assert (=> b!7943070 (= e!4686564 (and tp!2362101 tp!2362095))))

(declare-fun b!7943071 () Bool)

(declare-fun e!4686565 () Bool)

(declare-fun tp!2362103 () Bool)

(declare-fun tp!2362104 () Bool)

(assert (=> b!7943071 (= e!4686565 (and tp!2362103 tp!2362104))))

(declare-fun b!7943072 () Bool)

(declare-fun tp!2362099 () Bool)

(assert (=> b!7943072 (= e!4686565 tp!2362099)))

(declare-fun b!7943073 () Bool)

(declare-fun tp_is_empty!53379 () Bool)

(assert (=> b!7943073 (= e!4686565 tp_is_empty!53379)))

(declare-fun b!7943074 () Bool)

(declare-fun res!3150822 () Bool)

(assert (=> b!7943074 (=> (not res!3150822) (not e!4686568))))

(declare-datatypes ((Regex!21418 0))(
  ( (ElementMatch!21418 (c!1459245 C!43174)) (Concat!30417 (regOne!43348 Regex!21418) (regTwo!43348 Regex!21418)) (EmptyExpr!21418) (Star!21418 (reg!21747 Regex!21418)) (EmptyLang!21418) (Union!21418 (regOne!43349 Regex!21418) (regTwo!43349 Regex!21418)) )
))
(declare-fun baseR!116 () Regex!21418)

(declare-fun r!24602 () Regex!21418)

(declare-fun derivative!604 (Regex!21418 List!74647) Regex!21418)

(assert (=> b!7943074 (= res!3150822 (= (derivative!604 baseR!116 testedP!447) r!24602))))

(declare-fun b!7943075 () Bool)

(declare-fun e!4686567 () Bool)

(assert (=> b!7943075 (= e!4686568 e!4686567)))

(declare-fun res!3150821 () Bool)

(assert (=> b!7943075 (=> (not res!3150821) (not e!4686567))))

(declare-fun validRegex!11722 (Regex!21418) Bool)

(assert (=> b!7943075 (= res!3150821 (validRegex!11722 r!24602))))

(declare-fun lt!2697120 () Int)

(declare-fun size!43354 (List!74647) Int)

(assert (=> b!7943075 (= lt!2697120 (size!43354 input!7927))))

(declare-fun lt!2697118 () List!74647)

(declare-fun getSuffix!3721 (List!74647 List!74647) List!74647)

(assert (=> b!7943075 (= lt!2697118 (getSuffix!3721 input!7927 testedP!447))))

(declare-fun lt!2697119 () Int)

(assert (=> b!7943075 (= lt!2697119 (size!43354 testedP!447))))

(declare-fun b!7943076 () Bool)

(declare-fun e!4686569 () Bool)

(declare-fun tp!2362096 () Bool)

(assert (=> b!7943076 (= e!4686569 (and tp_is_empty!53379 tp!2362096))))

(declare-fun b!7943077 () Bool)

(declare-fun tp!2362097 () Bool)

(declare-fun tp!2362105 () Bool)

(assert (=> b!7943077 (= e!4686564 (and tp!2362097 tp!2362105))))

(declare-fun res!3150824 () Bool)

(assert (=> start!749682 (=> (not res!3150824) (not e!4686568))))

(assert (=> start!749682 (= res!3150824 (validRegex!11722 baseR!116))))

(assert (=> start!749682 e!4686568))

(assert (=> start!749682 e!4686564))

(assert (=> start!749682 e!4686569))

(declare-fun e!4686566 () Bool)

(assert (=> start!749682 e!4686566))

(assert (=> start!749682 e!4686565))

(declare-fun b!7943078 () Bool)

(declare-fun tp!2362106 () Bool)

(declare-fun tp!2362102 () Bool)

(assert (=> b!7943078 (= e!4686565 (and tp!2362106 tp!2362102))))

(declare-fun b!7943079 () Bool)

(declare-fun tp!2362098 () Bool)

(assert (=> b!7943079 (= e!4686566 (and tp_is_empty!53379 tp!2362098))))

(declare-fun b!7943080 () Bool)

(assert (=> b!7943080 (= e!4686564 tp_is_empty!53379)))

(declare-fun b!7943081 () Bool)

(declare-fun ++!18306 (List!74647 List!74647) List!74647)

(assert (=> b!7943081 (= e!4686567 (not (= (++!18306 testedP!447 lt!2697118) input!7927)))))

(declare-fun b!7943082 () Bool)

(declare-fun tp!2362100 () Bool)

(assert (=> b!7943082 (= e!4686564 tp!2362100)))

(assert (= (and start!749682 res!3150824) b!7943069))

(assert (= (and b!7943069 res!3150823) b!7943074))

(assert (= (and b!7943074 res!3150822) b!7943075))

(assert (= (and b!7943075 res!3150821) b!7943081))

(assert (= (and start!749682 (is-ElementMatch!21418 baseR!116)) b!7943080))

(assert (= (and start!749682 (is-Concat!30417 baseR!116)) b!7943070))

(assert (= (and start!749682 (is-Star!21418 baseR!116)) b!7943082))

(assert (= (and start!749682 (is-Union!21418 baseR!116)) b!7943077))

(assert (= (and start!749682 (is-Cons!74523 testedP!447)) b!7943076))

(assert (= (and start!749682 (is-Cons!74523 input!7927)) b!7943079))

(assert (= (and start!749682 (is-ElementMatch!21418 r!24602)) b!7943073))

(assert (= (and start!749682 (is-Concat!30417 r!24602)) b!7943071))

(assert (= (and start!749682 (is-Star!21418 r!24602)) b!7943072))

(assert (= (and start!749682 (is-Union!21418 r!24602)) b!7943078))

(declare-fun m!8330954 () Bool)

(assert (=> b!7943069 m!8330954))

(declare-fun m!8330956 () Bool)

(assert (=> b!7943075 m!8330956))

(declare-fun m!8330958 () Bool)

(assert (=> b!7943075 m!8330958))

(declare-fun m!8330960 () Bool)

(assert (=> b!7943075 m!8330960))

(declare-fun m!8330962 () Bool)

(assert (=> b!7943075 m!8330962))

(declare-fun m!8330964 () Bool)

(assert (=> b!7943074 m!8330964))

(declare-fun m!8330966 () Bool)

(assert (=> b!7943081 m!8330966))

(declare-fun m!8330968 () Bool)

(assert (=> start!749682 m!8330968))

(push 1)

(assert (not start!749682))

(assert (not b!7943070))

(assert (not b!7943074))

(assert (not b!7943077))

(assert (not b!7943079))

(assert (not b!7943081))

(assert (not b!7943082))

(assert (not b!7943075))

(assert (not b!7943072))

(assert (not b!7943076))

(assert (not b!7943078))

(assert (not b!7943071))

(assert tp_is_empty!53379)

(assert (not b!7943069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2375234 () Bool)

(declare-fun lt!2697132 () Regex!21418)

(assert (=> d!2375234 (validRegex!11722 lt!2697132)))

(declare-fun e!4686590 () Regex!21418)

(assert (=> d!2375234 (= lt!2697132 e!4686590)))

(declare-fun c!1459249 () Bool)

(assert (=> d!2375234 (= c!1459249 (is-Cons!74523 testedP!447))))

(assert (=> d!2375234 (validRegex!11722 baseR!116)))

(assert (=> d!2375234 (= (derivative!604 baseR!116 testedP!447) lt!2697132)))

(declare-fun b!7943129 () Bool)

(declare-fun derivativeStep!6474 (Regex!21418 C!43174) Regex!21418)

(assert (=> b!7943129 (= e!4686590 (derivative!604 (derivativeStep!6474 baseR!116 (h!80971 testedP!447)) (t!390390 testedP!447)))))

(declare-fun b!7943130 () Bool)

(assert (=> b!7943130 (= e!4686590 baseR!116)))

(assert (= (and d!2375234 c!1459249) b!7943129))

(assert (= (and d!2375234 (not c!1459249)) b!7943130))

(declare-fun m!8330986 () Bool)

(assert (=> d!2375234 m!8330986))

(assert (=> d!2375234 m!8330968))

(declare-fun m!8330988 () Bool)

(assert (=> b!7943129 m!8330988))

(assert (=> b!7943129 m!8330988))

(declare-fun m!8330990 () Bool)

(assert (=> b!7943129 m!8330990))

(assert (=> b!7943074 d!2375234))

(declare-fun b!7943153 () Bool)

(declare-fun e!4686607 () Bool)

(declare-fun e!4686611 () Bool)

(assert (=> b!7943153 (= e!4686607 e!4686611)))

(declare-fun res!3150849 () Bool)

(assert (=> b!7943153 (=> (not res!3150849) (not e!4686611))))

(declare-fun call!736125 () Bool)

(assert (=> b!7943153 (= res!3150849 call!736125)))

(declare-fun b!7943154 () Bool)

(declare-fun e!4686610 () Bool)

(declare-fun e!4686612 () Bool)

(assert (=> b!7943154 (= e!4686610 e!4686612)))

(declare-fun c!1459257 () Bool)

(assert (=> b!7943154 (= c!1459257 (is-Star!21418 baseR!116))))

(declare-fun d!2375238 () Bool)

(declare-fun res!3150850 () Bool)

(assert (=> d!2375238 (=> res!3150850 e!4686610)))

(assert (=> d!2375238 (= res!3150850 (is-ElementMatch!21418 baseR!116))))

(assert (=> d!2375238 (= (validRegex!11722 baseR!116) e!4686610)))

(declare-fun b!7943155 () Bool)

(declare-fun res!3150847 () Bool)

(assert (=> b!7943155 (=> res!3150847 e!4686607)))

(assert (=> b!7943155 (= res!3150847 (not (is-Concat!30417 baseR!116)))))

(declare-fun e!4686609 () Bool)

(assert (=> b!7943155 (= e!4686609 e!4686607)))

(declare-fun bm!736120 () Bool)

(declare-fun c!1459256 () Bool)

(declare-fun call!736127 () Bool)

(assert (=> bm!736120 (= call!736127 (validRegex!11722 (ite c!1459257 (reg!21747 baseR!116) (ite c!1459256 (regTwo!43349 baseR!116) (regTwo!43348 baseR!116)))))))

(declare-fun b!7943156 () Bool)

(declare-fun e!4686608 () Bool)

(assert (=> b!7943156 (= e!4686608 call!736127)))

(declare-fun b!7943157 () Bool)

(assert (=> b!7943157 (= e!4686612 e!4686608)))

(declare-fun res!3150851 () Bool)

(declare-fun nullable!9537 (Regex!21418) Bool)

(assert (=> b!7943157 (= res!3150851 (not (nullable!9537 (reg!21747 baseR!116))))))

(assert (=> b!7943157 (=> (not res!3150851) (not e!4686608))))

(declare-fun b!7943158 () Bool)

(declare-fun res!3150848 () Bool)

(declare-fun e!4686613 () Bool)

(assert (=> b!7943158 (=> (not res!3150848) (not e!4686613))))

(assert (=> b!7943158 (= res!3150848 call!736125)))

(assert (=> b!7943158 (= e!4686609 e!4686613)))

(declare-fun b!7943159 () Bool)

(declare-fun call!736126 () Bool)

(assert (=> b!7943159 (= e!4686613 call!736126)))

(declare-fun bm!736121 () Bool)

(assert (=> bm!736121 (= call!736126 call!736127)))

(declare-fun b!7943160 () Bool)

(assert (=> b!7943160 (= e!4686611 call!736126)))

(declare-fun bm!736122 () Bool)

(assert (=> bm!736122 (= call!736125 (validRegex!11722 (ite c!1459256 (regOne!43349 baseR!116) (regOne!43348 baseR!116))))))

(declare-fun b!7943161 () Bool)

(assert (=> b!7943161 (= e!4686612 e!4686609)))

(assert (=> b!7943161 (= c!1459256 (is-Union!21418 baseR!116))))

(assert (= (and d!2375238 (not res!3150850)) b!7943154))

(assert (= (and b!7943154 c!1459257) b!7943157))

(assert (= (and b!7943154 (not c!1459257)) b!7943161))

(assert (= (and b!7943157 res!3150851) b!7943156))

(assert (= (and b!7943161 c!1459256) b!7943158))

(assert (= (and b!7943161 (not c!1459256)) b!7943155))

(assert (= (and b!7943158 res!3150848) b!7943159))

(assert (= (and b!7943155 (not res!3150847)) b!7943153))

(assert (= (and b!7943153 res!3150849) b!7943160))

(assert (= (or b!7943159 b!7943160) bm!736121))

(assert (= (or b!7943158 b!7943153) bm!736122))

(assert (= (or b!7943156 bm!736121) bm!736120))

(declare-fun m!8330992 () Bool)

(assert (=> bm!736120 m!8330992))

(declare-fun m!8330994 () Bool)

(assert (=> b!7943157 m!8330994))

(declare-fun m!8330996 () Bool)

(assert (=> bm!736122 m!8330996))

(assert (=> start!749682 d!2375238))

(declare-fun b!7943162 () Bool)

(declare-fun e!4686614 () Bool)

(declare-fun e!4686618 () Bool)

(assert (=> b!7943162 (= e!4686614 e!4686618)))

(declare-fun res!3150854 () Bool)

(assert (=> b!7943162 (=> (not res!3150854) (not e!4686618))))

(declare-fun call!736128 () Bool)

(assert (=> b!7943162 (= res!3150854 call!736128)))

(declare-fun b!7943163 () Bool)

(declare-fun e!4686617 () Bool)

(declare-fun e!4686619 () Bool)

(assert (=> b!7943163 (= e!4686617 e!4686619)))

(declare-fun c!1459259 () Bool)

(assert (=> b!7943163 (= c!1459259 (is-Star!21418 r!24602))))

(declare-fun d!2375240 () Bool)

(declare-fun res!3150855 () Bool)

(assert (=> d!2375240 (=> res!3150855 e!4686617)))

(assert (=> d!2375240 (= res!3150855 (is-ElementMatch!21418 r!24602))))

(assert (=> d!2375240 (= (validRegex!11722 r!24602) e!4686617)))

(declare-fun b!7943164 () Bool)

(declare-fun res!3150852 () Bool)

(assert (=> b!7943164 (=> res!3150852 e!4686614)))

(assert (=> b!7943164 (= res!3150852 (not (is-Concat!30417 r!24602)))))

(declare-fun e!4686616 () Bool)

(assert (=> b!7943164 (= e!4686616 e!4686614)))

(declare-fun call!736130 () Bool)

(declare-fun c!1459258 () Bool)

(declare-fun bm!736123 () Bool)

(assert (=> bm!736123 (= call!736130 (validRegex!11722 (ite c!1459259 (reg!21747 r!24602) (ite c!1459258 (regTwo!43349 r!24602) (regTwo!43348 r!24602)))))))

(declare-fun b!7943165 () Bool)

(declare-fun e!4686615 () Bool)

(assert (=> b!7943165 (= e!4686615 call!736130)))

(declare-fun b!7943166 () Bool)

(assert (=> b!7943166 (= e!4686619 e!4686615)))

(declare-fun res!3150856 () Bool)

(assert (=> b!7943166 (= res!3150856 (not (nullable!9537 (reg!21747 r!24602))))))

(assert (=> b!7943166 (=> (not res!3150856) (not e!4686615))))

(declare-fun b!7943167 () Bool)

(declare-fun res!3150853 () Bool)

(declare-fun e!4686620 () Bool)

(assert (=> b!7943167 (=> (not res!3150853) (not e!4686620))))

(assert (=> b!7943167 (= res!3150853 call!736128)))

(assert (=> b!7943167 (= e!4686616 e!4686620)))

(declare-fun b!7943168 () Bool)

(declare-fun call!736129 () Bool)

(assert (=> b!7943168 (= e!4686620 call!736129)))

(declare-fun bm!736124 () Bool)

(assert (=> bm!736124 (= call!736129 call!736130)))

(declare-fun b!7943169 () Bool)

(assert (=> b!7943169 (= e!4686618 call!736129)))

(declare-fun bm!736125 () Bool)

(assert (=> bm!736125 (= call!736128 (validRegex!11722 (ite c!1459258 (regOne!43349 r!24602) (regOne!43348 r!24602))))))

(declare-fun b!7943170 () Bool)

(assert (=> b!7943170 (= e!4686619 e!4686616)))

(assert (=> b!7943170 (= c!1459258 (is-Union!21418 r!24602))))

(assert (= (and d!2375240 (not res!3150855)) b!7943163))

(assert (= (and b!7943163 c!1459259) b!7943166))

(assert (= (and b!7943163 (not c!1459259)) b!7943170))

(assert (= (and b!7943166 res!3150856) b!7943165))

(assert (= (and b!7943170 c!1459258) b!7943167))

(assert (= (and b!7943170 (not c!1459258)) b!7943164))

(assert (= (and b!7943167 res!3150853) b!7943168))

(assert (= (and b!7943164 (not res!3150852)) b!7943162))

(assert (= (and b!7943162 res!3150854) b!7943169))

(assert (= (or b!7943168 b!7943169) bm!736124))

(assert (= (or b!7943167 b!7943162) bm!736125))

(assert (= (or b!7943165 bm!736124) bm!736123))

(declare-fun m!8330998 () Bool)

(assert (=> bm!736123 m!8330998))

(declare-fun m!8331000 () Bool)

(assert (=> b!7943166 m!8331000))

(declare-fun m!8331002 () Bool)

(assert (=> bm!736125 m!8331002))

(assert (=> b!7943075 d!2375240))

(declare-fun d!2375242 () Bool)

(declare-fun lt!2697138 () Int)

(assert (=> d!2375242 (>= lt!2697138 0)))

(declare-fun e!4686624 () Int)

(assert (=> d!2375242 (= lt!2697138 e!4686624)))

(declare-fun c!1459263 () Bool)

(assert (=> d!2375242 (= c!1459263 (is-Nil!74523 input!7927))))

(assert (=> d!2375242 (= (size!43354 input!7927) lt!2697138)))

(declare-fun b!7943177 () Bool)

(assert (=> b!7943177 (= e!4686624 0)))

(declare-fun b!7943178 () Bool)

(assert (=> b!7943178 (= e!4686624 (+ 1 (size!43354 (t!390390 input!7927))))))

(assert (= (and d!2375242 c!1459263) b!7943177))

(assert (= (and d!2375242 (not c!1459263)) b!7943178))

(declare-fun m!8331010 () Bool)

(assert (=> b!7943178 m!8331010))

(assert (=> b!7943075 d!2375242))

(declare-fun d!2375246 () Bool)

(declare-fun lt!2697141 () List!74647)

(assert (=> d!2375246 (= (++!18306 testedP!447 lt!2697141) input!7927)))

(declare-fun e!4686627 () List!74647)

(assert (=> d!2375246 (= lt!2697141 e!4686627)))

(declare-fun c!1459266 () Bool)

(assert (=> d!2375246 (= c!1459266 (is-Cons!74523 testedP!447))))

(assert (=> d!2375246 (>= (size!43354 input!7927) (size!43354 testedP!447))))

(assert (=> d!2375246 (= (getSuffix!3721 input!7927 testedP!447) lt!2697141)))

(declare-fun b!7943183 () Bool)

(declare-fun tail!15739 (List!74647) List!74647)

(assert (=> b!7943183 (= e!4686627 (getSuffix!3721 (tail!15739 input!7927) (t!390390 testedP!447)))))

(declare-fun b!7943184 () Bool)

(assert (=> b!7943184 (= e!4686627 input!7927)))

(assert (= (and d!2375246 c!1459266) b!7943183))

(assert (= (and d!2375246 (not c!1459266)) b!7943184))

(declare-fun m!8331012 () Bool)

(assert (=> d!2375246 m!8331012))

(assert (=> d!2375246 m!8330958))

(assert (=> d!2375246 m!8330962))

(declare-fun m!8331014 () Bool)

(assert (=> b!7943183 m!8331014))

(assert (=> b!7943183 m!8331014))

(declare-fun m!8331016 () Bool)

(assert (=> b!7943183 m!8331016))

(assert (=> b!7943075 d!2375246))

(declare-fun d!2375248 () Bool)

(declare-fun lt!2697142 () Int)

(assert (=> d!2375248 (>= lt!2697142 0)))

(declare-fun e!4686628 () Int)

(assert (=> d!2375248 (= lt!2697142 e!4686628)))

(declare-fun c!1459267 () Bool)

(assert (=> d!2375248 (= c!1459267 (is-Nil!74523 testedP!447))))

(assert (=> d!2375248 (= (size!43354 testedP!447) lt!2697142)))

(declare-fun b!7943185 () Bool)

(assert (=> b!7943185 (= e!4686628 0)))

(declare-fun b!7943186 () Bool)

(assert (=> b!7943186 (= e!4686628 (+ 1 (size!43354 (t!390390 testedP!447))))))

(assert (= (and d!2375248 c!1459267) b!7943185))

(assert (= (and d!2375248 (not c!1459267)) b!7943186))

(declare-fun m!8331018 () Bool)

(assert (=> b!7943186 m!8331018))

(assert (=> b!7943075 d!2375248))

(declare-fun b!7943214 () Bool)

(declare-fun res!3150877 () Bool)

(declare-fun e!4686650 () Bool)

(assert (=> b!7943214 (=> (not res!3150877) (not e!4686650))))

(declare-fun head!16196 (List!74647) C!43174)

(assert (=> b!7943214 (= res!3150877 (= (head!16196 testedP!447) (head!16196 input!7927)))))

(declare-fun b!7943213 () Bool)

(declare-fun e!4686651 () Bool)

(assert (=> b!7943213 (= e!4686651 e!4686650)))

(declare-fun res!3150878 () Bool)

(assert (=> b!7943213 (=> (not res!3150878) (not e!4686650))))

(assert (=> b!7943213 (= res!3150878 (not (is-Nil!74523 input!7927)))))

(declare-fun d!2375250 () Bool)

(declare-fun e!4686649 () Bool)

(assert (=> d!2375250 e!4686649))

(declare-fun res!3150875 () Bool)

(assert (=> d!2375250 (=> res!3150875 e!4686649)))

(declare-fun lt!2697145 () Bool)

(assert (=> d!2375250 (= res!3150875 (not lt!2697145))))

(assert (=> d!2375250 (= lt!2697145 e!4686651)))

(declare-fun res!3150876 () Bool)

(assert (=> d!2375250 (=> res!3150876 e!4686651)))

(assert (=> d!2375250 (= res!3150876 (is-Nil!74523 testedP!447))))

(assert (=> d!2375250 (= (isPrefix!6518 testedP!447 input!7927) lt!2697145)))

(declare-fun b!7943216 () Bool)

(assert (=> b!7943216 (= e!4686649 (>= (size!43354 input!7927) (size!43354 testedP!447)))))

(declare-fun b!7943215 () Bool)

(assert (=> b!7943215 (= e!4686650 (isPrefix!6518 (tail!15739 testedP!447) (tail!15739 input!7927)))))

(assert (= (and d!2375250 (not res!3150876)) b!7943213))

(assert (= (and b!7943213 res!3150878) b!7943214))

(assert (= (and b!7943214 res!3150877) b!7943215))

(assert (= (and d!2375250 (not res!3150875)) b!7943216))

(declare-fun m!8331020 () Bool)

(assert (=> b!7943214 m!8331020))

(declare-fun m!8331022 () Bool)

(assert (=> b!7943214 m!8331022))

(assert (=> b!7943216 m!8330958))

(assert (=> b!7943216 m!8330962))

(declare-fun m!8331024 () Bool)

(assert (=> b!7943215 m!8331024))

(assert (=> b!7943215 m!8331014))

(assert (=> b!7943215 m!8331024))

(assert (=> b!7943215 m!8331014))

(declare-fun m!8331026 () Bool)

(assert (=> b!7943215 m!8331026))

(assert (=> b!7943069 d!2375250))

(declare-fun b!7943226 () Bool)

(declare-fun e!4686657 () List!74647)

(assert (=> b!7943226 (= e!4686657 (Cons!74523 (h!80971 testedP!447) (++!18306 (t!390390 testedP!447) lt!2697118)))))

(declare-fun b!7943228 () Bool)

(declare-fun e!4686656 () Bool)

(declare-fun lt!2697148 () List!74647)

(assert (=> b!7943228 (= e!4686656 (or (not (= lt!2697118 Nil!74523)) (= lt!2697148 testedP!447)))))

(declare-fun d!2375252 () Bool)

(assert (=> d!2375252 e!4686656))

(declare-fun res!3150884 () Bool)

(assert (=> d!2375252 (=> (not res!3150884) (not e!4686656))))

(declare-fun content!15815 (List!74647) (Set C!43174))

(assert (=> d!2375252 (= res!3150884 (= (content!15815 lt!2697148) (set.union (content!15815 testedP!447) (content!15815 lt!2697118))))))

(assert (=> d!2375252 (= lt!2697148 e!4686657)))

(declare-fun c!1459274 () Bool)

(assert (=> d!2375252 (= c!1459274 (is-Nil!74523 testedP!447))))

(assert (=> d!2375252 (= (++!18306 testedP!447 lt!2697118) lt!2697148)))

(declare-fun b!7943225 () Bool)

(assert (=> b!7943225 (= e!4686657 lt!2697118)))

(declare-fun b!7943227 () Bool)

(declare-fun res!3150883 () Bool)

(assert (=> b!7943227 (=> (not res!3150883) (not e!4686656))))

(assert (=> b!7943227 (= res!3150883 (= (size!43354 lt!2697148) (+ (size!43354 testedP!447) (size!43354 lt!2697118))))))

(assert (= (and d!2375252 c!1459274) b!7943225))

(assert (= (and d!2375252 (not c!1459274)) b!7943226))

(assert (= (and d!2375252 res!3150884) b!7943227))

(assert (= (and b!7943227 res!3150883) b!7943228))

(declare-fun m!8331028 () Bool)

(assert (=> b!7943226 m!8331028))

(declare-fun m!8331030 () Bool)

(assert (=> d!2375252 m!8331030))

(declare-fun m!8331032 () Bool)

(assert (=> d!2375252 m!8331032))

(declare-fun m!8331034 () Bool)

(assert (=> d!2375252 m!8331034))

(declare-fun m!8331036 () Bool)

(assert (=> b!7943227 m!8331036))

(assert (=> b!7943227 m!8330962))

(declare-fun m!8331038 () Bool)

(assert (=> b!7943227 m!8331038))

(assert (=> b!7943081 d!2375252))

(declare-fun b!7943250 () Bool)

(declare-fun e!4686667 () Bool)

(declare-fun tp!2362156 () Bool)

(assert (=> b!7943250 (= e!4686667 tp!2362156)))

(declare-fun b!7943251 () Bool)

(declare-fun tp!2362157 () Bool)

(declare-fun tp!2362154 () Bool)

(assert (=> b!7943251 (= e!4686667 (and tp!2362157 tp!2362154))))

(declare-fun b!7943249 () Bool)

(declare-fun tp!2362155 () Bool)

(declare-fun tp!2362153 () Bool)

(assert (=> b!7943249 (= e!4686667 (and tp!2362155 tp!2362153))))

(assert (=> b!7943078 (= tp!2362106 e!4686667)))

(declare-fun b!7943248 () Bool)

(assert (=> b!7943248 (= e!4686667 tp_is_empty!53379)))

(assert (= (and b!7943078 (is-ElementMatch!21418 (regOne!43349 r!24602))) b!7943248))

(assert (= (and b!7943078 (is-Concat!30417 (regOne!43349 r!24602))) b!7943249))

(assert (= (and b!7943078 (is-Star!21418 (regOne!43349 r!24602))) b!7943250))

(assert (= (and b!7943078 (is-Union!21418 (regOne!43349 r!24602))) b!7943251))

(declare-fun b!7943254 () Bool)

(declare-fun e!4686668 () Bool)

(declare-fun tp!2362161 () Bool)

(assert (=> b!7943254 (= e!4686668 tp!2362161)))

(declare-fun b!7943255 () Bool)

(declare-fun tp!2362162 () Bool)

(declare-fun tp!2362159 () Bool)

(assert (=> b!7943255 (= e!4686668 (and tp!2362162 tp!2362159))))

(declare-fun b!7943253 () Bool)

(declare-fun tp!2362160 () Bool)

(declare-fun tp!2362158 () Bool)

(assert (=> b!7943253 (= e!4686668 (and tp!2362160 tp!2362158))))

(assert (=> b!7943078 (= tp!2362102 e!4686668)))

(declare-fun b!7943252 () Bool)

(assert (=> b!7943252 (= e!4686668 tp_is_empty!53379)))

(assert (= (and b!7943078 (is-ElementMatch!21418 (regTwo!43349 r!24602))) b!7943252))

(assert (= (and b!7943078 (is-Concat!30417 (regTwo!43349 r!24602))) b!7943253))

(assert (= (and b!7943078 (is-Star!21418 (regTwo!43349 r!24602))) b!7943254))

(assert (= (and b!7943078 (is-Union!21418 (regTwo!43349 r!24602))) b!7943255))

(declare-fun b!7943258 () Bool)

(declare-fun e!4686669 () Bool)

(declare-fun tp!2362166 () Bool)

(assert (=> b!7943258 (= e!4686669 tp!2362166)))

(declare-fun b!7943259 () Bool)

(declare-fun tp!2362167 () Bool)

(declare-fun tp!2362164 () Bool)

(assert (=> b!7943259 (= e!4686669 (and tp!2362167 tp!2362164))))

(declare-fun b!7943257 () Bool)

(declare-fun tp!2362165 () Bool)

(declare-fun tp!2362163 () Bool)

(assert (=> b!7943257 (= e!4686669 (and tp!2362165 tp!2362163))))

(assert (=> b!7943077 (= tp!2362097 e!4686669)))

(declare-fun b!7943256 () Bool)

(assert (=> b!7943256 (= e!4686669 tp_is_empty!53379)))

(assert (= (and b!7943077 (is-ElementMatch!21418 (regOne!43349 baseR!116))) b!7943256))

(assert (= (and b!7943077 (is-Concat!30417 (regOne!43349 baseR!116))) b!7943257))

(assert (= (and b!7943077 (is-Star!21418 (regOne!43349 baseR!116))) b!7943258))

(assert (= (and b!7943077 (is-Union!21418 (regOne!43349 baseR!116))) b!7943259))

(declare-fun b!7943262 () Bool)

(declare-fun e!4686670 () Bool)

(declare-fun tp!2362171 () Bool)

(assert (=> b!7943262 (= e!4686670 tp!2362171)))

(declare-fun b!7943263 () Bool)

(declare-fun tp!2362172 () Bool)

(declare-fun tp!2362169 () Bool)

(assert (=> b!7943263 (= e!4686670 (and tp!2362172 tp!2362169))))

(declare-fun b!7943261 () Bool)

(declare-fun tp!2362170 () Bool)

(declare-fun tp!2362168 () Bool)

(assert (=> b!7943261 (= e!4686670 (and tp!2362170 tp!2362168))))

(assert (=> b!7943077 (= tp!2362105 e!4686670)))

(declare-fun b!7943260 () Bool)

(assert (=> b!7943260 (= e!4686670 tp_is_empty!53379)))

(assert (= (and b!7943077 (is-ElementMatch!21418 (regTwo!43349 baseR!116))) b!7943260))

(assert (= (and b!7943077 (is-Concat!30417 (regTwo!43349 baseR!116))) b!7943261))

(assert (= (and b!7943077 (is-Star!21418 (regTwo!43349 baseR!116))) b!7943262))

(assert (= (and b!7943077 (is-Union!21418 (regTwo!43349 baseR!116))) b!7943263))

(declare-fun b!7943266 () Bool)

(declare-fun e!4686671 () Bool)

(declare-fun tp!2362176 () Bool)

(assert (=> b!7943266 (= e!4686671 tp!2362176)))

(declare-fun b!7943267 () Bool)

(declare-fun tp!2362177 () Bool)

(declare-fun tp!2362174 () Bool)

(assert (=> b!7943267 (= e!4686671 (and tp!2362177 tp!2362174))))

(declare-fun b!7943265 () Bool)

(declare-fun tp!2362175 () Bool)

(declare-fun tp!2362173 () Bool)

(assert (=> b!7943265 (= e!4686671 (and tp!2362175 tp!2362173))))

(assert (=> b!7943072 (= tp!2362099 e!4686671)))

(declare-fun b!7943264 () Bool)

(assert (=> b!7943264 (= e!4686671 tp_is_empty!53379)))

(assert (= (and b!7943072 (is-ElementMatch!21418 (reg!21747 r!24602))) b!7943264))

(assert (= (and b!7943072 (is-Concat!30417 (reg!21747 r!24602))) b!7943265))

(assert (= (and b!7943072 (is-Star!21418 (reg!21747 r!24602))) b!7943266))

(assert (= (and b!7943072 (is-Union!21418 (reg!21747 r!24602))) b!7943267))

(declare-fun b!7943272 () Bool)

(declare-fun e!4686674 () Bool)

(declare-fun tp!2362180 () Bool)

(assert (=> b!7943272 (= e!4686674 (and tp_is_empty!53379 tp!2362180))))

(assert (=> b!7943079 (= tp!2362098 e!4686674)))

(assert (= (and b!7943079 (is-Cons!74523 (t!390390 input!7927))) b!7943272))

(declare-fun b!7943275 () Bool)

(declare-fun e!4686675 () Bool)

(declare-fun tp!2362184 () Bool)

(assert (=> b!7943275 (= e!4686675 tp!2362184)))

(declare-fun b!7943276 () Bool)

(declare-fun tp!2362185 () Bool)

(declare-fun tp!2362182 () Bool)

(assert (=> b!7943276 (= e!4686675 (and tp!2362185 tp!2362182))))

(declare-fun b!7943274 () Bool)

(declare-fun tp!2362183 () Bool)

(declare-fun tp!2362181 () Bool)

(assert (=> b!7943274 (= e!4686675 (and tp!2362183 tp!2362181))))

(assert (=> b!7943070 (= tp!2362101 e!4686675)))

(declare-fun b!7943273 () Bool)

(assert (=> b!7943273 (= e!4686675 tp_is_empty!53379)))

(assert (= (and b!7943070 (is-ElementMatch!21418 (regOne!43348 baseR!116))) b!7943273))

(assert (= (and b!7943070 (is-Concat!30417 (regOne!43348 baseR!116))) b!7943274))

(assert (= (and b!7943070 (is-Star!21418 (regOne!43348 baseR!116))) b!7943275))

(assert (= (and b!7943070 (is-Union!21418 (regOne!43348 baseR!116))) b!7943276))

(declare-fun b!7943279 () Bool)

(declare-fun e!4686676 () Bool)

(declare-fun tp!2362189 () Bool)

(assert (=> b!7943279 (= e!4686676 tp!2362189)))

(declare-fun b!7943280 () Bool)

(declare-fun tp!2362190 () Bool)

(declare-fun tp!2362187 () Bool)

(assert (=> b!7943280 (= e!4686676 (and tp!2362190 tp!2362187))))

(declare-fun b!7943278 () Bool)

(declare-fun tp!2362188 () Bool)

(declare-fun tp!2362186 () Bool)

(assert (=> b!7943278 (= e!4686676 (and tp!2362188 tp!2362186))))

(assert (=> b!7943070 (= tp!2362095 e!4686676)))

(declare-fun b!7943277 () Bool)

(assert (=> b!7943277 (= e!4686676 tp_is_empty!53379)))

(assert (= (and b!7943070 (is-ElementMatch!21418 (regTwo!43348 baseR!116))) b!7943277))

(assert (= (and b!7943070 (is-Concat!30417 (regTwo!43348 baseR!116))) b!7943278))

(assert (= (and b!7943070 (is-Star!21418 (regTwo!43348 baseR!116))) b!7943279))

(assert (= (and b!7943070 (is-Union!21418 (regTwo!43348 baseR!116))) b!7943280))

(declare-fun b!7943283 () Bool)

(declare-fun e!4686677 () Bool)

(declare-fun tp!2362194 () Bool)

(assert (=> b!7943283 (= e!4686677 tp!2362194)))

(declare-fun b!7943284 () Bool)

(declare-fun tp!2362195 () Bool)

(declare-fun tp!2362192 () Bool)

(assert (=> b!7943284 (= e!4686677 (and tp!2362195 tp!2362192))))

(declare-fun b!7943282 () Bool)

(declare-fun tp!2362193 () Bool)

(declare-fun tp!2362191 () Bool)

(assert (=> b!7943282 (= e!4686677 (and tp!2362193 tp!2362191))))

(assert (=> b!7943071 (= tp!2362103 e!4686677)))

(declare-fun b!7943281 () Bool)

(assert (=> b!7943281 (= e!4686677 tp_is_empty!53379)))

(assert (= (and b!7943071 (is-ElementMatch!21418 (regOne!43348 r!24602))) b!7943281))

(assert (= (and b!7943071 (is-Concat!30417 (regOne!43348 r!24602))) b!7943282))

(assert (= (and b!7943071 (is-Star!21418 (regOne!43348 r!24602))) b!7943283))

(assert (= (and b!7943071 (is-Union!21418 (regOne!43348 r!24602))) b!7943284))

(declare-fun b!7943287 () Bool)

(declare-fun e!4686678 () Bool)

(declare-fun tp!2362199 () Bool)

(assert (=> b!7943287 (= e!4686678 tp!2362199)))

(declare-fun b!7943288 () Bool)

(declare-fun tp!2362200 () Bool)

(declare-fun tp!2362197 () Bool)

(assert (=> b!7943288 (= e!4686678 (and tp!2362200 tp!2362197))))

(declare-fun b!7943286 () Bool)

(declare-fun tp!2362198 () Bool)

(declare-fun tp!2362196 () Bool)

(assert (=> b!7943286 (= e!4686678 (and tp!2362198 tp!2362196))))

(assert (=> b!7943071 (= tp!2362104 e!4686678)))

(declare-fun b!7943285 () Bool)

(assert (=> b!7943285 (= e!4686678 tp_is_empty!53379)))

(assert (= (and b!7943071 (is-ElementMatch!21418 (regTwo!43348 r!24602))) b!7943285))

(assert (= (and b!7943071 (is-Concat!30417 (regTwo!43348 r!24602))) b!7943286))

(assert (= (and b!7943071 (is-Star!21418 (regTwo!43348 r!24602))) b!7943287))

(assert (= (and b!7943071 (is-Union!21418 (regTwo!43348 r!24602))) b!7943288))

(declare-fun b!7943291 () Bool)

(declare-fun e!4686679 () Bool)

(declare-fun tp!2362204 () Bool)

(assert (=> b!7943291 (= e!4686679 tp!2362204)))

(declare-fun b!7943292 () Bool)

(declare-fun tp!2362205 () Bool)

(declare-fun tp!2362202 () Bool)

(assert (=> b!7943292 (= e!4686679 (and tp!2362205 tp!2362202))))

(declare-fun b!7943290 () Bool)

(declare-fun tp!2362203 () Bool)

(declare-fun tp!2362201 () Bool)

(assert (=> b!7943290 (= e!4686679 (and tp!2362203 tp!2362201))))

(assert (=> b!7943082 (= tp!2362100 e!4686679)))

(declare-fun b!7943289 () Bool)

(assert (=> b!7943289 (= e!4686679 tp_is_empty!53379)))

(assert (= (and b!7943082 (is-ElementMatch!21418 (reg!21747 baseR!116))) b!7943289))

(assert (= (and b!7943082 (is-Concat!30417 (reg!21747 baseR!116))) b!7943290))

(assert (= (and b!7943082 (is-Star!21418 (reg!21747 baseR!116))) b!7943291))

(assert (= (and b!7943082 (is-Union!21418 (reg!21747 baseR!116))) b!7943292))

(declare-fun b!7943293 () Bool)

(declare-fun e!4686680 () Bool)

(declare-fun tp!2362206 () Bool)

(assert (=> b!7943293 (= e!4686680 (and tp_is_empty!53379 tp!2362206))))

(assert (=> b!7943076 (= tp!2362096 e!4686680)))

(assert (= (and b!7943076 (is-Cons!74523 (t!390390 testedP!447))) b!7943293))

(push 1)

(assert (not b!7943262))

(assert (not b!7943178))

(assert (not b!7943183))

(assert (not b!7943283))

(assert (not b!7943259))

(assert (not d!2375252))

(assert (not b!7943275))

(assert (not b!7943263))

(assert (not b!7943276))

(assert (not b!7943282))

(assert (not b!7943272))

(assert (not b!7943166))

(assert (not b!7943254))

(assert (not d!2375246))

(assert (not bm!736122))

(assert (not b!7943261))

(assert (not b!7943258))

(assert (not bm!736120))

(assert (not bm!736125))

(assert (not b!7943253))

(assert (not b!7943157))

(assert (not b!7943186))

(assert (not d!2375234))

(assert (not b!7943267))

(assert (not b!7943250))

(assert (not b!7943129))

(assert (not b!7943290))

(assert (not b!7943249))

(assert (not b!7943278))

(assert (not b!7943284))

(assert (not b!7943265))

(assert (not b!7943288))

(assert (not b!7943215))

(assert (not b!7943280))

(assert (not b!7943216))

(assert (not b!7943287))

(assert tp_is_empty!53379)

(assert (not b!7943226))

(assert (not b!7943227))

(assert (not b!7943293))

(assert (not b!7943251))

(assert (not b!7943214))

(assert (not b!7943286))

(assert (not b!7943257))

(assert (not b!7943292))

(assert (not b!7943291))

(assert (not b!7943255))

(assert (not b!7943274))

(assert (not b!7943266))

(assert (not bm!736123))

(assert (not b!7943279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

