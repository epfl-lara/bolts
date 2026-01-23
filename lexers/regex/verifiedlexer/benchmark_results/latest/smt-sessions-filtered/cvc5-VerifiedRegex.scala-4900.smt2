; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251014 () Bool)

(assert start!251014)

(declare-fun b!2591076 () Bool)

(assert (=> b!2591076 true))

(declare-fun b!2591074 () Bool)

(declare-fun res!1089536 () Bool)

(declare-fun e!1634507 () Bool)

(assert (=> b!2591074 (=> res!1089536 e!1634507)))

(declare-datatypes ((B!2019 0))(
  ( (B!2020 (val!9477 Int)) )
))
(declare-datatypes ((List!29910 0))(
  ( (Nil!29810) (Cons!29810 (h!35230 B!2019) (t!212923 List!29910)) )
))
(declare-fun l!3230 () List!29910)

(declare-fun contains!5360 (List!29910 B!2019) Bool)

(assert (=> b!2591074 (= res!1089536 (contains!5360 (t!212923 l!3230) (h!35230 l!3230)))))

(declare-fun b!2591075 () Bool)

(declare-fun e!1634508 () Bool)

(assert (=> b!2591075 (= e!1634507 e!1634508)))

(declare-fun res!1089541 () Bool)

(assert (=> b!2591075 (=> res!1089541 e!1634508)))

(declare-fun lt!911239 () Int)

(declare-fun size!23123 (List!29910) Int)

(assert (=> b!2591075 (= res!1089541 (not (= (size!23123 l!3230) lt!911239)))))

(declare-fun lt!911234 () Int)

(assert (=> b!2591075 (= lt!911239 (+ 1 lt!911234))))

(declare-fun res!1089538 () Bool)

(declare-fun e!1634510 () Bool)

(assert (=> start!251014 (=> (not res!1089538) (not e!1634510))))

(declare-fun noDuplicate!358 (List!29910) Bool)

(assert (=> start!251014 (= res!1089538 (noDuplicate!358 l!3230))))

(assert (=> start!251014 e!1634510))

(declare-fun e!1634509 () Bool)

(assert (=> start!251014 e!1634509))

(declare-fun e!1634511 () Bool)

(declare-fun e!1634512 () Bool)

(assert (=> b!2591076 (= e!1634511 e!1634512)))

(declare-fun res!1089542 () Bool)

(assert (=> b!2591076 (=> res!1089542 e!1634512)))

(declare-fun lambda!95991 () Int)

(declare-fun exists!897 (List!29910 Int) Bool)

(assert (=> b!2591076 (= res!1089542 (not (exists!897 l!3230 lambda!95991)))))

(assert (=> b!2591076 (exists!897 l!3230 lambda!95991)))

(declare-datatypes ((Unit!43726 0))(
  ( (Unit!43727) )
))
(declare-fun lt!911237 () Unit!43726)

(declare-fun lt!911241 () List!29910)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!13 (List!29910 List!29910) Unit!43726)

(assert (=> b!2591076 (= lt!911237 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!13 l!3230 lt!911241))))

(declare-fun lt!911240 () Unit!43726)

(declare-fun subsetContains!39 (List!29910 List!29910) Unit!43726)

(assert (=> b!2591076 (= lt!911240 (subsetContains!39 lt!911241 l!3230))))

(declare-fun b!2591077 () Bool)

(declare-fun tp_is_empty!13299 () Bool)

(declare-fun tp!822677 () Bool)

(assert (=> b!2591077 (= e!1634509 (and tp_is_empty!13299 tp!822677))))

(declare-fun b!2591078 () Bool)

(declare-fun e!1634506 () Bool)

(assert (=> b!2591078 (= e!1634508 e!1634506)))

(declare-fun res!1089539 () Bool)

(assert (=> b!2591078 (=> res!1089539 e!1634506)))

(declare-fun lt!911238 () (Set B!2019))

(declare-fun content!4151 (List!29910) (Set B!2019))

(assert (=> b!2591078 (= res!1089539 (not (= (content!4151 l!3230) lt!911238)))))

(declare-fun lt!911235 () (Set B!2019))

(assert (=> b!2591078 (= lt!911238 (set.union lt!911235 (set.insert (h!35230 l!3230) (as set.empty (Set B!2019)))))))

(declare-fun b!2591079 () Bool)

(declare-fun res!1089537 () Bool)

(assert (=> b!2591079 (=> (not res!1089537) (not e!1634510))))

(assert (=> b!2591079 (= res!1089537 (is-Cons!29810 l!3230))))

(declare-fun b!2591080 () Bool)

(assert (=> b!2591080 (= e!1634510 (not e!1634507))))

(declare-fun res!1089535 () Bool)

(assert (=> b!2591080 (=> res!1089535 e!1634507)))

(declare-fun lt!911236 () Int)

(assert (=> b!2591080 (= res!1089535 (>= lt!911236 (size!23123 l!3230)))))

(assert (=> b!2591080 (= lt!911236 lt!911234)))

(assert (=> b!2591080 (= lt!911234 (size!23123 (t!212923 l!3230)))))

(declare-fun toList!1761 ((Set B!2019)) List!29910)

(assert (=> b!2591080 (= lt!911236 (size!23123 (toList!1761 lt!911235)))))

(assert (=> b!2591080 (= lt!911235 (content!4151 (t!212923 l!3230)))))

(declare-fun lt!911242 () Unit!43726)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!51 (List!29910) Unit!43726)

(assert (=> b!2591080 (= lt!911242 (lemmaNoDuplicateThenContentToListSameSize!51 (t!212923 l!3230)))))

(declare-fun b!2591081 () Bool)

(declare-fun res!1089534 () Bool)

(assert (=> b!2591081 (=> res!1089534 e!1634511)))

(assert (=> b!2591081 (= res!1089534 (not (= lt!911238 (content!4151 l!3230))))))

(declare-fun b!2591082 () Bool)

(declare-fun res!1089540 () Bool)

(assert (=> b!2591082 (=> res!1089540 e!1634507)))

(assert (=> b!2591082 (= res!1089540 (set.member (h!35230 l!3230) lt!911235))))

(declare-fun b!2591083 () Bool)

(assert (=> b!2591083 (= e!1634506 e!1634511)))

(declare-fun res!1089543 () Bool)

(assert (=> b!2591083 (=> res!1089543 e!1634511)))

(assert (=> b!2591083 (= res!1089543 (>= (size!23123 lt!911241) lt!911239))))

(assert (=> b!2591083 (= lt!911241 (toList!1761 lt!911238))))

(declare-fun b!2591084 () Bool)

(declare-fun getWitness!523 (List!29910 Int) B!2019)

(assert (=> b!2591084 (= e!1634512 (contains!5360 l!3230 (getWitness!523 l!3230 lambda!95991)))))

(assert (= (and start!251014 res!1089538) b!2591079))

(assert (= (and b!2591079 res!1089537) b!2591080))

(assert (= (and b!2591080 (not res!1089535)) b!2591082))

(assert (= (and b!2591082 (not res!1089540)) b!2591074))

(assert (= (and b!2591074 (not res!1089536)) b!2591075))

(assert (= (and b!2591075 (not res!1089541)) b!2591078))

(assert (= (and b!2591078 (not res!1089539)) b!2591083))

(assert (= (and b!2591083 (not res!1089543)) b!2591081))

(assert (= (and b!2591081 (not res!1089534)) b!2591076))

(assert (= (and b!2591076 (not res!1089542)) b!2591084))

(assert (= (and start!251014 (is-Cons!29810 l!3230)) b!2591077))

(declare-fun m!2927093 () Bool)

(assert (=> b!2591082 m!2927093))

(declare-fun m!2927095 () Bool)

(assert (=> b!2591078 m!2927095))

(declare-fun m!2927097 () Bool)

(assert (=> b!2591078 m!2927097))

(declare-fun m!2927099 () Bool)

(assert (=> b!2591084 m!2927099))

(assert (=> b!2591084 m!2927099))

(declare-fun m!2927101 () Bool)

(assert (=> b!2591084 m!2927101))

(declare-fun m!2927103 () Bool)

(assert (=> b!2591083 m!2927103))

(declare-fun m!2927105 () Bool)

(assert (=> b!2591083 m!2927105))

(declare-fun m!2927107 () Bool)

(assert (=> b!2591074 m!2927107))

(declare-fun m!2927109 () Bool)

(assert (=> start!251014 m!2927109))

(assert (=> b!2591081 m!2927095))

(declare-fun m!2927111 () Bool)

(assert (=> b!2591076 m!2927111))

(assert (=> b!2591076 m!2927111))

(declare-fun m!2927113 () Bool)

(assert (=> b!2591076 m!2927113))

(declare-fun m!2927115 () Bool)

(assert (=> b!2591076 m!2927115))

(declare-fun m!2927117 () Bool)

(assert (=> b!2591075 m!2927117))

(assert (=> b!2591080 m!2927117))

(declare-fun m!2927119 () Bool)

(assert (=> b!2591080 m!2927119))

(declare-fun m!2927121 () Bool)

(assert (=> b!2591080 m!2927121))

(assert (=> b!2591080 m!2927119))

(declare-fun m!2927123 () Bool)

(assert (=> b!2591080 m!2927123))

(declare-fun m!2927125 () Bool)

(assert (=> b!2591080 m!2927125))

(declare-fun m!2927127 () Bool)

(assert (=> b!2591080 m!2927127))

(push 1)

(assert (not b!2591078))

(assert (not b!2591083))

(assert (not b!2591076))

(assert (not b!2591081))

(assert (not b!2591080))

(assert tp_is_empty!13299)

(assert (not b!2591074))

(assert (not start!251014))

(assert (not b!2591084))

(assert (not b!2591075))

(assert (not b!2591077))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!733995 () Bool)

(declare-fun lt!911275 () Bool)

(assert (=> d!733995 (= lt!911275 (set.member (h!35230 l!3230) (content!4151 (t!212923 l!3230))))))

(declare-fun e!1634551 () Bool)

(assert (=> d!733995 (= lt!911275 e!1634551)))

(declare-fun res!1089584 () Bool)

(assert (=> d!733995 (=> (not res!1089584) (not e!1634551))))

(assert (=> d!733995 (= res!1089584 (is-Cons!29810 (t!212923 l!3230)))))

(assert (=> d!733995 (= (contains!5360 (t!212923 l!3230) (h!35230 l!3230)) lt!911275)))

(declare-fun b!2591132 () Bool)

(declare-fun e!1634550 () Bool)

(assert (=> b!2591132 (= e!1634551 e!1634550)))

(declare-fun res!1089585 () Bool)

(assert (=> b!2591132 (=> res!1089585 e!1634550)))

(assert (=> b!2591132 (= res!1089585 (= (h!35230 (t!212923 l!3230)) (h!35230 l!3230)))))

(declare-fun b!2591133 () Bool)

(assert (=> b!2591133 (= e!1634550 (contains!5360 (t!212923 (t!212923 l!3230)) (h!35230 l!3230)))))

(assert (= (and d!733995 res!1089584) b!2591132))

(assert (= (and b!2591132 (not res!1089585)) b!2591133))

(assert (=> d!733995 m!2927125))

(declare-fun m!2927169 () Bool)

(assert (=> d!733995 m!2927169))

(declare-fun m!2927171 () Bool)

(assert (=> b!2591133 m!2927171))

(assert (=> b!2591074 d!733995))

(declare-fun d!733999 () Bool)

(declare-fun lt!911278 () Int)

(assert (=> d!733999 (>= lt!911278 0)))

(declare-fun e!1634554 () Int)

(assert (=> d!733999 (= lt!911278 e!1634554)))

(declare-fun c!417705 () Bool)

(assert (=> d!733999 (= c!417705 (is-Nil!29810 l!3230))))

(assert (=> d!733999 (= (size!23123 l!3230) lt!911278)))

(declare-fun b!2591138 () Bool)

(assert (=> b!2591138 (= e!1634554 0)))

(declare-fun b!2591139 () Bool)

(assert (=> b!2591139 (= e!1634554 (+ 1 (size!23123 (t!212923 l!3230))))))

(assert (= (and d!733999 c!417705) b!2591138))

(assert (= (and d!733999 (not c!417705)) b!2591139))

(assert (=> b!2591139 m!2927123))

(assert (=> b!2591080 d!733999))

(declare-fun d!734001 () Bool)

(declare-fun lt!911279 () Int)

(assert (=> d!734001 (>= lt!911279 0)))

(declare-fun e!1634555 () Int)

(assert (=> d!734001 (= lt!911279 e!1634555)))

(declare-fun c!417706 () Bool)

(assert (=> d!734001 (= c!417706 (is-Nil!29810 (t!212923 l!3230)))))

(assert (=> d!734001 (= (size!23123 (t!212923 l!3230)) lt!911279)))

(declare-fun b!2591140 () Bool)

(assert (=> b!2591140 (= e!1634555 0)))

(declare-fun b!2591141 () Bool)

(assert (=> b!2591141 (= e!1634555 (+ 1 (size!23123 (t!212923 (t!212923 l!3230)))))))

(assert (= (and d!734001 c!417706) b!2591140))

(assert (= (and d!734001 (not c!417706)) b!2591141))

(declare-fun m!2927173 () Bool)

(assert (=> b!2591141 m!2927173))

(assert (=> b!2591080 d!734001))

(declare-fun d!734003 () Bool)

(declare-fun c!417709 () Bool)

(assert (=> d!734003 (= c!417709 (is-Nil!29810 (t!212923 l!3230)))))

(declare-fun e!1634558 () (Set B!2019))

(assert (=> d!734003 (= (content!4151 (t!212923 l!3230)) e!1634558)))

(declare-fun b!2591146 () Bool)

(assert (=> b!2591146 (= e!1634558 (as set.empty (Set B!2019)))))

(declare-fun b!2591147 () Bool)

(assert (=> b!2591147 (= e!1634558 (set.union (set.insert (h!35230 (t!212923 l!3230)) (as set.empty (Set B!2019))) (content!4151 (t!212923 (t!212923 l!3230)))))))

(assert (= (and d!734003 c!417709) b!2591146))

(assert (= (and d!734003 (not c!417709)) b!2591147))

(declare-fun m!2927175 () Bool)

(assert (=> b!2591147 m!2927175))

(declare-fun m!2927177 () Bool)

(assert (=> b!2591147 m!2927177))

(assert (=> b!2591080 d!734003))

(declare-fun d!734005 () Bool)

(declare-fun e!1634561 () Bool)

(assert (=> d!734005 e!1634561))

(declare-fun res!1089588 () Bool)

(assert (=> d!734005 (=> (not res!1089588) (not e!1634561))))

(declare-fun lt!911282 () List!29910)

(assert (=> d!734005 (= res!1089588 (noDuplicate!358 lt!911282))))

(declare-fun choose!15300 ((Set B!2019)) List!29910)

(assert (=> d!734005 (= lt!911282 (choose!15300 lt!911235))))

(assert (=> d!734005 (= (toList!1761 lt!911235) lt!911282)))

(declare-fun b!2591150 () Bool)

(assert (=> b!2591150 (= e!1634561 (= (content!4151 lt!911282) lt!911235))))

(assert (= (and d!734005 res!1089588) b!2591150))

(declare-fun m!2927179 () Bool)

(assert (=> d!734005 m!2927179))

(declare-fun m!2927181 () Bool)

(assert (=> d!734005 m!2927181))

(declare-fun m!2927183 () Bool)

(assert (=> b!2591150 m!2927183))

(assert (=> b!2591080 d!734005))

(declare-fun d!734007 () Bool)

(assert (=> d!734007 (= (size!23123 (toList!1761 (content!4151 (t!212923 l!3230)))) (size!23123 (t!212923 l!3230)))))

(declare-fun lt!911289 () Unit!43726)

(declare-fun choose!15301 (List!29910) Unit!43726)

(assert (=> d!734007 (= lt!911289 (choose!15301 (t!212923 l!3230)))))

(assert (=> d!734007 (noDuplicate!358 (t!212923 l!3230))))

(assert (=> d!734007 (= (lemmaNoDuplicateThenContentToListSameSize!51 (t!212923 l!3230)) lt!911289)))

(declare-fun bs!472143 () Bool)

(assert (= bs!472143 d!734007))

(declare-fun m!2927185 () Bool)

(assert (=> bs!472143 m!2927185))

(declare-fun m!2927187 () Bool)

(assert (=> bs!472143 m!2927187))

(declare-fun m!2927189 () Bool)

(assert (=> bs!472143 m!2927189))

(assert (=> bs!472143 m!2927125))

(assert (=> bs!472143 m!2927185))

(declare-fun m!2927191 () Bool)

(assert (=> bs!472143 m!2927191))

(assert (=> bs!472143 m!2927123))

(assert (=> bs!472143 m!2927125))

(assert (=> b!2591080 d!734007))

(declare-fun d!734009 () Bool)

(declare-fun lt!911290 () Int)

(assert (=> d!734009 (>= lt!911290 0)))

(declare-fun e!1634570 () Int)

(assert (=> d!734009 (= lt!911290 e!1634570)))

(declare-fun c!417714 () Bool)

(assert (=> d!734009 (= c!417714 (is-Nil!29810 (toList!1761 lt!911235)))))

(assert (=> d!734009 (= (size!23123 (toList!1761 lt!911235)) lt!911290)))

(declare-fun b!2591163 () Bool)

(assert (=> b!2591163 (= e!1634570 0)))

(declare-fun b!2591164 () Bool)

(assert (=> b!2591164 (= e!1634570 (+ 1 (size!23123 (t!212923 (toList!1761 lt!911235)))))))

(assert (= (and d!734009 c!417714) b!2591163))

(assert (= (and d!734009 (not c!417714)) b!2591164))

(declare-fun m!2927193 () Bool)

(assert (=> b!2591164 m!2927193))

(assert (=> b!2591080 d!734009))

(declare-fun d!734011 () Bool)

(declare-fun lt!911291 () Int)

(assert (=> d!734011 (>= lt!911291 0)))

(declare-fun e!1634571 () Int)

(assert (=> d!734011 (= lt!911291 e!1634571)))

(declare-fun c!417715 () Bool)

(assert (=> d!734011 (= c!417715 (is-Nil!29810 lt!911241))))

(assert (=> d!734011 (= (size!23123 lt!911241) lt!911291)))

(declare-fun b!2591165 () Bool)

(assert (=> b!2591165 (= e!1634571 0)))

(declare-fun b!2591166 () Bool)

(assert (=> b!2591166 (= e!1634571 (+ 1 (size!23123 (t!212923 lt!911241))))))

(assert (= (and d!734011 c!417715) b!2591165))

(assert (= (and d!734011 (not c!417715)) b!2591166))

(declare-fun m!2927195 () Bool)

(assert (=> b!2591166 m!2927195))

(assert (=> b!2591083 d!734011))

(declare-fun d!734013 () Bool)

(declare-fun e!1634572 () Bool)

(assert (=> d!734013 e!1634572))

(declare-fun res!1089593 () Bool)

(assert (=> d!734013 (=> (not res!1089593) (not e!1634572))))

(declare-fun lt!911292 () List!29910)

(assert (=> d!734013 (= res!1089593 (noDuplicate!358 lt!911292))))

(assert (=> d!734013 (= lt!911292 (choose!15300 lt!911238))))

(assert (=> d!734013 (= (toList!1761 lt!911238) lt!911292)))

(declare-fun b!2591167 () Bool)

(assert (=> b!2591167 (= e!1634572 (= (content!4151 lt!911292) lt!911238))))

(assert (= (and d!734013 res!1089593) b!2591167))

(declare-fun m!2927197 () Bool)

(assert (=> d!734013 m!2927197))

(declare-fun m!2927199 () Bool)

(assert (=> d!734013 m!2927199))

(declare-fun m!2927201 () Bool)

(assert (=> b!2591167 m!2927201))

(assert (=> b!2591083 d!734013))

(declare-fun d!734015 () Bool)

(declare-fun c!417716 () Bool)

(assert (=> d!734015 (= c!417716 (is-Nil!29810 l!3230))))

(declare-fun e!1634573 () (Set B!2019))

(assert (=> d!734015 (= (content!4151 l!3230) e!1634573)))

(declare-fun b!2591168 () Bool)

(assert (=> b!2591168 (= e!1634573 (as set.empty (Set B!2019)))))

(declare-fun b!2591169 () Bool)

(assert (=> b!2591169 (= e!1634573 (set.union (set.insert (h!35230 l!3230) (as set.empty (Set B!2019))) (content!4151 (t!212923 l!3230))))))

(assert (= (and d!734015 c!417716) b!2591168))

(assert (= (and d!734015 (not c!417716)) b!2591169))

(assert (=> b!2591169 m!2927097))

(assert (=> b!2591169 m!2927125))

(assert (=> b!2591078 d!734015))

(declare-fun d!734017 () Bool)

(declare-fun lt!911293 () Bool)

(assert (=> d!734017 (= lt!911293 (set.member (getWitness!523 l!3230 lambda!95991) (content!4151 l!3230)))))

(declare-fun e!1634575 () Bool)

(assert (=> d!734017 (= lt!911293 e!1634575)))

(declare-fun res!1089594 () Bool)

(assert (=> d!734017 (=> (not res!1089594) (not e!1634575))))

(assert (=> d!734017 (= res!1089594 (is-Cons!29810 l!3230))))

(assert (=> d!734017 (= (contains!5360 l!3230 (getWitness!523 l!3230 lambda!95991)) lt!911293)))

(declare-fun b!2591170 () Bool)

(declare-fun e!1634574 () Bool)

(assert (=> b!2591170 (= e!1634575 e!1634574)))

(declare-fun res!1089595 () Bool)

(assert (=> b!2591170 (=> res!1089595 e!1634574)))

(assert (=> b!2591170 (= res!1089595 (= (h!35230 l!3230) (getWitness!523 l!3230 lambda!95991)))))

(declare-fun b!2591171 () Bool)

(assert (=> b!2591171 (= e!1634574 (contains!5360 (t!212923 l!3230) (getWitness!523 l!3230 lambda!95991)))))

(assert (= (and d!734017 res!1089594) b!2591170))

(assert (= (and b!2591170 (not res!1089595)) b!2591171))

(assert (=> d!734017 m!2927095))

(assert (=> d!734017 m!2927099))

(declare-fun m!2927203 () Bool)

(assert (=> d!734017 m!2927203))

(assert (=> b!2591171 m!2927099))

(declare-fun m!2927205 () Bool)

(assert (=> b!2591171 m!2927205))

(assert (=> b!2591084 d!734017))

(declare-fun b!2591190 () Bool)

(declare-fun e!1634591 () B!2019)

(assert (=> b!2591190 (= e!1634591 (getWitness!523 (t!212923 l!3230) lambda!95991))))

(declare-fun b!2591191 () Bool)

(declare-fun lt!911301 () Unit!43726)

(declare-fun Unit!43730 () Unit!43726)

(assert (=> b!2591191 (= lt!911301 Unit!43730)))

(assert (=> b!2591191 false))

(declare-fun head!5865 (List!29910) B!2019)

(assert (=> b!2591191 (= e!1634591 (head!5865 l!3230))))

(declare-fun d!734019 () Bool)

(declare-fun e!1634588 () Bool)

(assert (=> d!734019 e!1634588))

(declare-fun res!1089603 () Bool)

(assert (=> d!734019 (=> (not res!1089603) (not e!1634588))))

(declare-fun lt!911300 () B!2019)

(declare-fun dynLambda!12604 (Int B!2019) Bool)

(assert (=> d!734019 (= res!1089603 (dynLambda!12604 lambda!95991 lt!911300))))

(declare-fun e!1634590 () B!2019)

(assert (=> d!734019 (= lt!911300 e!1634590)))

(declare-fun c!417724 () Bool)

(declare-fun e!1634589 () Bool)

(assert (=> d!734019 (= c!417724 e!1634589)))

(declare-fun res!1089602 () Bool)

(assert (=> d!734019 (=> (not res!1089602) (not e!1634589))))

(assert (=> d!734019 (= res!1089602 (is-Cons!29810 l!3230))))

(assert (=> d!734019 (exists!897 l!3230 lambda!95991)))

(assert (=> d!734019 (= (getWitness!523 l!3230 lambda!95991) lt!911300)))

(declare-fun b!2591192 () Bool)

(assert (=> b!2591192 (= e!1634590 e!1634591)))

(declare-fun c!417723 () Bool)

(assert (=> b!2591192 (= c!417723 (is-Cons!29810 l!3230))))

(declare-fun b!2591193 () Bool)

(assert (=> b!2591193 (= e!1634588 (contains!5360 l!3230 lt!911300))))

(declare-fun b!2591194 () Bool)

(assert (=> b!2591194 (= e!1634590 (h!35230 l!3230))))

(declare-fun b!2591195 () Bool)

(assert (=> b!2591195 (= e!1634589 (dynLambda!12604 lambda!95991 (h!35230 l!3230)))))

(assert (= (and d!734019 res!1089602) b!2591195))

(assert (= (and d!734019 c!417724) b!2591194))

(assert (= (and d!734019 (not c!417724)) b!2591192))

(assert (= (and b!2591192 c!417723) b!2591190))

(assert (= (and b!2591192 (not c!417723)) b!2591191))

(assert (= (and d!734019 res!1089603) b!2591193))

(declare-fun b_lambda!77103 () Bool)

(assert (=> (not b_lambda!77103) (not d!734019)))

(declare-fun b_lambda!77105 () Bool)

(assert (=> (not b_lambda!77105) (not b!2591195)))

(declare-fun m!2927217 () Bool)

(assert (=> b!2591193 m!2927217))

(declare-fun m!2927219 () Bool)

(assert (=> b!2591190 m!2927219))

(declare-fun m!2927221 () Bool)

(assert (=> b!2591195 m!2927221))

(declare-fun m!2927223 () Bool)

(assert (=> b!2591191 m!2927223))

(declare-fun m!2927225 () Bool)

(assert (=> d!734019 m!2927225))

(assert (=> d!734019 m!2927111))

(assert (=> b!2591084 d!734019))

(declare-fun d!734023 () Bool)

(declare-fun res!1089608 () Bool)

(declare-fun e!1634598 () Bool)

(assert (=> d!734023 (=> res!1089608 e!1634598)))

(assert (=> d!734023 (= res!1089608 (is-Nil!29810 l!3230))))

(assert (=> d!734023 (= (noDuplicate!358 l!3230) e!1634598)))

(declare-fun b!2591204 () Bool)

(declare-fun e!1634599 () Bool)

(assert (=> b!2591204 (= e!1634598 e!1634599)))

(declare-fun res!1089609 () Bool)

(assert (=> b!2591204 (=> (not res!1089609) (not e!1634599))))

(assert (=> b!2591204 (= res!1089609 (not (contains!5360 (t!212923 l!3230) (h!35230 l!3230))))))

(declare-fun b!2591205 () Bool)

(assert (=> b!2591205 (= e!1634599 (noDuplicate!358 (t!212923 l!3230)))))

(assert (= (and d!734023 (not res!1089608)) b!2591204))

(assert (= (and b!2591204 res!1089609) b!2591205))

(assert (=> b!2591204 m!2927107))

(assert (=> b!2591205 m!2927189))

(assert (=> start!251014 d!734023))

(assert (=> b!2591075 d!733999))

(assert (=> b!2591081 d!734015))

(declare-fun bs!472144 () Bool)

(declare-fun d!734025 () Bool)

(assert (= bs!472144 (and d!734025 b!2591076)))

(declare-fun lambda!96001 () Int)

(assert (=> bs!472144 (not (= lambda!96001 lambda!95991))))

(assert (=> d!734025 true))

(declare-fun order!15861 () Int)

(declare-fun dynLambda!12605 (Int Int) Int)

(assert (=> d!734025 (< (dynLambda!12605 order!15861 lambda!95991) (dynLambda!12605 order!15861 lambda!96001))))

(declare-fun forall!6074 (List!29910 Int) Bool)

(assert (=> d!734025 (= (exists!897 l!3230 lambda!95991) (not (forall!6074 l!3230 lambda!96001)))))

(declare-fun bs!472145 () Bool)

(assert (= bs!472145 d!734025))

(declare-fun m!2927227 () Bool)

(assert (=> bs!472145 m!2927227))

(assert (=> b!2591076 d!734025))

(declare-fun bs!472146 () Bool)

(declare-fun d!734029 () Bool)

(assert (= bs!472146 (and d!734029 b!2591076)))

(declare-fun lambda!96004 () Int)

(assert (=> bs!472146 (= lambda!96004 lambda!95991)))

(declare-fun bs!472147 () Bool)

(assert (= bs!472147 (and d!734029 d!734025)))

(assert (=> bs!472147 (not (= lambda!96004 lambda!96001))))

(assert (=> d!734029 true))

(assert (=> d!734029 (exists!897 l!3230 lambda!96004)))

(declare-fun lt!911306 () Unit!43726)

(declare-fun choose!15302 (List!29910 List!29910) Unit!43726)

(assert (=> d!734029 (= lt!911306 (choose!15302 l!3230 lt!911241))))

(assert (=> d!734029 (noDuplicate!358 l!3230)))

(assert (=> d!734029 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!13 l!3230 lt!911241) lt!911306)))

(declare-fun bs!472148 () Bool)

(assert (= bs!472148 d!734029))

(declare-fun m!2927229 () Bool)

(assert (=> bs!472148 m!2927229))

(declare-fun m!2927231 () Bool)

(assert (=> bs!472148 m!2927231))

(assert (=> bs!472148 m!2927109))

(assert (=> b!2591076 d!734029))

(declare-fun bs!472149 () Bool)

(declare-fun d!734031 () Bool)

(assert (= bs!472149 (and d!734031 b!2591076)))

(declare-fun lambda!96007 () Int)

(assert (=> bs!472149 (not (= lambda!96007 lambda!95991))))

(declare-fun bs!472150 () Bool)

(assert (= bs!472150 (and d!734031 d!734025)))

(assert (=> bs!472150 (not (= lambda!96007 lambda!96001))))

(declare-fun bs!472151 () Bool)

(assert (= bs!472151 (and d!734031 d!734029)))

(assert (=> bs!472151 (not (= lambda!96007 lambda!96004))))

(assert (=> d!734031 true))

(assert (=> d!734031 (forall!6074 lt!911241 lambda!96007)))

(declare-fun lt!911311 () Unit!43726)

(declare-fun choose!15303 (List!29910 List!29910) Unit!43726)

(assert (=> d!734031 (= lt!911311 (choose!15303 lt!911241 l!3230))))

(assert (=> d!734031 (set.subset (content!4151 lt!911241) (content!4151 l!3230))))

(assert (=> d!734031 (= (subsetContains!39 lt!911241 l!3230) lt!911311)))

(declare-fun bs!472152 () Bool)

(assert (= bs!472152 d!734031))

(declare-fun m!2927239 () Bool)

(assert (=> bs!472152 m!2927239))

(declare-fun m!2927241 () Bool)

(assert (=> bs!472152 m!2927241))

(declare-fun m!2927243 () Bool)

(assert (=> bs!472152 m!2927243))

(assert (=> bs!472152 m!2927095))

(assert (=> b!2591076 d!734031))

(declare-fun b!2591224 () Bool)

(declare-fun e!1634610 () Bool)

(declare-fun tp!822683 () Bool)

(assert (=> b!2591224 (= e!1634610 (and tp_is_empty!13299 tp!822683))))

(assert (=> b!2591077 (= tp!822677 e!1634610)))

(assert (= (and b!2591077 (is-Cons!29810 (t!212923 l!3230))) b!2591224))

(declare-fun b_lambda!77107 () Bool)

(assert (= b_lambda!77105 (or b!2591076 b_lambda!77107)))

(declare-fun bs!472153 () Bool)

(declare-fun d!734039 () Bool)

(assert (= bs!472153 (and d!734039 b!2591076)))

(assert (=> bs!472153 (= (dynLambda!12604 lambda!95991 (h!35230 l!3230)) (not (contains!5360 lt!911241 (h!35230 l!3230))))))

(declare-fun m!2927245 () Bool)

(assert (=> bs!472153 m!2927245))

(assert (=> b!2591195 d!734039))

(declare-fun b_lambda!77109 () Bool)

(assert (= b_lambda!77103 (or b!2591076 b_lambda!77109)))

(declare-fun bs!472154 () Bool)

(declare-fun d!734041 () Bool)

(assert (= bs!472154 (and d!734041 b!2591076)))

(assert (=> bs!472154 (= (dynLambda!12604 lambda!95991 lt!911300) (not (contains!5360 lt!911241 lt!911300)))))

(declare-fun m!2927247 () Bool)

(assert (=> bs!472154 m!2927247))

(assert (=> d!734019 d!734041))

(push 1)

(assert (not b!2591193))

(assert (not d!734029))

(assert (not d!734007))

(assert (not d!734017))

(assert (not b!2591164))

(assert (not b!2591191))

(assert (not b!2591190))

(assert (not b_lambda!77107))

(assert (not b!2591171))

(assert (not b!2591224))

(assert (not b!2591167))

(assert (not bs!472154))

(assert (not b!2591147))

(assert (not b!2591166))

(assert (not d!734031))

(assert (not d!734013))

(assert (not d!734025))

(assert (not d!734005))

(assert (not b!2591169))

(assert (not b!2591139))

(assert (not b!2591204))

(assert (not d!734019))

(assert (not b!2591133))

(assert (not bs!472153))

(assert tp_is_empty!13299)

(assert (not b_lambda!77109))

(assert (not d!733995))

(assert (not b!2591205))

(assert (not b!2591150))

(assert (not b!2591141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

