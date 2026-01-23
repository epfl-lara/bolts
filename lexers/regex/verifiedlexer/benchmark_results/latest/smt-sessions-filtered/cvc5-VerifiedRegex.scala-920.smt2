; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47390 () Bool)

(assert start!47390)

(assert (=> start!47390 true))

(declare-fun bs!60420 () Bool)

(declare-fun b!519394 () Bool)

(assert (= bs!60420 (and b!519394 start!47390)))

(declare-datatypes ((B!1123 0))(
  ( (B!1124 (val!1849 Int)) )
))
(declare-datatypes ((List!4789 0))(
  ( (Nil!4779) (Cons!4779 (h!10180 B!1123) (t!73379 List!4789)) )
))
(declare-fun lt!216522 () List!4789)

(declare-fun lambda!14829 () Int)

(declare-fun lambda!14828 () Int)

(declare-fun l!3695 () List!4789)

(assert (=> bs!60420 (= (= lt!216522 l!3695) (= lambda!14829 lambda!14828))))

(assert (=> b!519394 true))

(declare-fun e!311120 () Bool)

(declare-fun lIn!3 () List!4789)

(declare-fun forall!1448 (List!4789 Int) Bool)

(assert (=> b!519394 (= e!311120 (not (forall!1448 (t!73379 lIn!3) lambda!14829)))))

(declare-datatypes ((Unit!8758 0))(
  ( (Unit!8759) )
))
(declare-fun lt!216521 () Unit!8758)

(declare-fun subsetContains!15 (List!4789 List!4789) Unit!8758)

(assert (=> b!519394 (= lt!216521 (subsetContains!15 (t!73379 lIn!3) lt!216522))))

(declare-fun b!519395 () Bool)

(declare-fun e!311121 () Bool)

(assert (=> b!519395 (= e!311121 e!311120)))

(declare-fun res!220426 () Bool)

(assert (=> b!519395 (=> (not res!220426) (not e!311120))))

(declare-fun lt!216520 () (Set B!1123))

(declare-fun content!862 (List!4789) (Set B!1123))

(assert (=> b!519395 (= res!220426 (= (content!862 lt!216522) (set.minus lt!216520 (set.insert (h!10180 lIn!3) (as set.empty (Set B!1123))))))))

(declare-fun -!65 (List!4789 B!1123) List!4789)

(assert (=> b!519395 (= lt!216522 (-!65 l!3695 (h!10180 lIn!3)))))

(declare-fun b!519396 () Bool)

(declare-fun res!220423 () Bool)

(assert (=> b!519396 (=> (not res!220423) (not e!311121))))

(declare-fun contains!1139 (List!4789 B!1123) Bool)

(assert (=> b!519396 (= res!220423 (not (contains!1139 (t!73379 lIn!3) (h!10180 lIn!3))))))

(declare-fun b!519397 () Bool)

(declare-fun res!220425 () Bool)

(declare-fun e!311119 () Bool)

(assert (=> b!519397 (=> (not res!220425) (not e!311119))))

(assert (=> b!519397 (= res!220425 (is-Cons!4779 lIn!3))))

(declare-fun b!519398 () Bool)

(declare-fun e!311122 () Bool)

(declare-fun tp_is_empty!2719 () Bool)

(declare-fun tp!161787 () Bool)

(assert (=> b!519398 (= e!311122 (and tp_is_empty!2719 tp!161787))))

(declare-fun b!519399 () Bool)

(assert (=> b!519399 (= e!311119 e!311121)))

(declare-fun res!220422 () Bool)

(assert (=> b!519399 (=> (not res!220422) (not e!311121))))

(assert (=> b!519399 (= res!220422 (set.subset (content!862 lIn!3) lt!216520))))

(assert (=> b!519399 (= lt!216520 (content!862 l!3695))))

(declare-fun lt!216523 () Unit!8758)

(declare-fun forallContainsSubset!23 (List!4789 List!4789) Unit!8758)

(assert (=> b!519399 (= lt!216523 (forallContainsSubset!23 lIn!3 l!3695))))

(declare-fun res!220421 () Bool)

(assert (=> start!47390 (=> (not res!220421) (not e!311119))))

(assert (=> start!47390 (= res!220421 (forall!1448 lIn!3 lambda!14828))))

(assert (=> start!47390 e!311119))

(assert (=> start!47390 e!311122))

(declare-fun e!311123 () Bool)

(assert (=> start!47390 e!311123))

(declare-fun b!519400 () Bool)

(declare-fun tp!161786 () Bool)

(assert (=> b!519400 (= e!311123 (and tp_is_empty!2719 tp!161786))))

(declare-fun b!519401 () Bool)

(declare-fun res!220424 () Bool)

(assert (=> b!519401 (=> (not res!220424) (not e!311119))))

(declare-fun noDuplicate!140 (List!4789) Bool)

(assert (=> b!519401 (= res!220424 (noDuplicate!140 lIn!3))))

(assert (= (and start!47390 res!220421) b!519401))

(assert (= (and b!519401 res!220424) b!519397))

(assert (= (and b!519397 res!220425) b!519399))

(assert (= (and b!519399 res!220422) b!519396))

(assert (= (and b!519396 res!220423) b!519395))

(assert (= (and b!519395 res!220426) b!519394))

(assert (= (and start!47390 (is-Cons!4779 lIn!3)) b!519398))

(assert (= (and start!47390 (is-Cons!4779 l!3695)) b!519400))

(declare-fun m!766191 () Bool)

(assert (=> b!519395 m!766191))

(declare-fun m!766193 () Bool)

(assert (=> b!519395 m!766193))

(declare-fun m!766195 () Bool)

(assert (=> b!519395 m!766195))

(declare-fun m!766197 () Bool)

(assert (=> b!519396 m!766197))

(declare-fun m!766199 () Bool)

(assert (=> b!519399 m!766199))

(declare-fun m!766201 () Bool)

(assert (=> b!519399 m!766201))

(declare-fun m!766203 () Bool)

(assert (=> b!519399 m!766203))

(declare-fun m!766205 () Bool)

(assert (=> start!47390 m!766205))

(declare-fun m!766207 () Bool)

(assert (=> b!519394 m!766207))

(declare-fun m!766209 () Bool)

(assert (=> b!519394 m!766209))

(declare-fun m!766211 () Bool)

(assert (=> b!519401 m!766211))

(push 1)

(assert (not b!519401))

(assert (not b!519394))

(assert (not b!519398))

(assert (not b!519399))

(assert (not start!47390))

(assert (not b!519396))

(assert (not b!519400))

(assert (not b!519395))

(assert tp_is_empty!2719)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185517 () Bool)

(declare-fun lt!216538 () Bool)

(assert (=> d!185517 (= lt!216538 (set.member (h!10180 lIn!3) (content!862 (t!73379 lIn!3))))))

(declare-fun e!311148 () Bool)

(assert (=> d!185517 (= lt!216538 e!311148)))

(declare-fun res!220450 () Bool)

(assert (=> d!185517 (=> (not res!220450) (not e!311148))))

(assert (=> d!185517 (= res!220450 (is-Cons!4779 (t!73379 lIn!3)))))

(assert (=> d!185517 (= (contains!1139 (t!73379 lIn!3) (h!10180 lIn!3)) lt!216538)))

(declare-fun b!519434 () Bool)

(declare-fun e!311147 () Bool)

(assert (=> b!519434 (= e!311148 e!311147)))

(declare-fun res!220449 () Bool)

(assert (=> b!519434 (=> res!220449 e!311147)))

(assert (=> b!519434 (= res!220449 (= (h!10180 (t!73379 lIn!3)) (h!10180 lIn!3)))))

(declare-fun b!519435 () Bool)

(assert (=> b!519435 (= e!311147 (contains!1139 (t!73379 (t!73379 lIn!3)) (h!10180 lIn!3)))))

(assert (= (and d!185517 res!220450) b!519434))

(assert (= (and b!519434 (not res!220449)) b!519435))

(declare-fun m!766235 () Bool)

(assert (=> d!185517 m!766235))

(declare-fun m!766237 () Bool)

(assert (=> d!185517 m!766237))

(declare-fun m!766239 () Bool)

(assert (=> b!519435 m!766239))

(assert (=> b!519396 d!185517))

(declare-fun d!185519 () Bool)

(declare-fun c!100464 () Bool)

(assert (=> d!185519 (= c!100464 (is-Nil!4779 lt!216522))))

(declare-fun e!311151 () (Set B!1123))

(assert (=> d!185519 (= (content!862 lt!216522) e!311151)))

(declare-fun b!519440 () Bool)

(assert (=> b!519440 (= e!311151 (as set.empty (Set B!1123)))))

(declare-fun b!519441 () Bool)

(assert (=> b!519441 (= e!311151 (set.union (set.insert (h!10180 lt!216522) (as set.empty (Set B!1123))) (content!862 (t!73379 lt!216522))))))

(assert (= (and d!185519 c!100464) b!519440))

(assert (= (and d!185519 (not c!100464)) b!519441))

(declare-fun m!766241 () Bool)

(assert (=> b!519441 m!766241))

(declare-fun m!766243 () Bool)

(assert (=> b!519441 m!766243))

(assert (=> b!519395 d!185519))

(declare-fun b!519452 () Bool)

(declare-fun e!311160 () List!4789)

(declare-fun e!311161 () List!4789)

(assert (=> b!519452 (= e!311160 e!311161)))

(declare-fun c!100469 () Bool)

(assert (=> b!519452 (= c!100469 (= (h!10180 lIn!3) (h!10180 l!3695)))))

(declare-fun b!519453 () Bool)

(declare-fun call!38015 () List!4789)

(assert (=> b!519453 (= e!311161 (Cons!4779 (h!10180 l!3695) call!38015))))

(declare-fun b!519454 () Bool)

(assert (=> b!519454 (= e!311161 call!38015)))

(declare-fun d!185521 () Bool)

(declare-fun e!311159 () Bool)

(assert (=> d!185521 e!311159))

(declare-fun res!220453 () Bool)

(assert (=> d!185521 (=> (not res!220453) (not e!311159))))

(declare-fun lt!216541 () List!4789)

(declare-fun size!3902 (List!4789) Int)

(assert (=> d!185521 (= res!220453 (<= (size!3902 lt!216541) (size!3902 l!3695)))))

(assert (=> d!185521 (= lt!216541 e!311160)))

(declare-fun c!100470 () Bool)

(assert (=> d!185521 (= c!100470 (is-Cons!4779 l!3695))))

(assert (=> d!185521 (= (-!65 l!3695 (h!10180 lIn!3)) lt!216541)))

(declare-fun b!519455 () Bool)

(assert (=> b!519455 (= e!311159 (= (content!862 lt!216541) (set.minus (content!862 l!3695) (set.insert (h!10180 lIn!3) (as set.empty (Set B!1123))))))))

(declare-fun b!519456 () Bool)

(assert (=> b!519456 (= e!311160 Nil!4779)))

(declare-fun bm!38010 () Bool)

(assert (=> bm!38010 (= call!38015 (-!65 (t!73379 l!3695) (h!10180 lIn!3)))))

(assert (= (and d!185521 c!100470) b!519452))

(assert (= (and d!185521 (not c!100470)) b!519456))

(assert (= (and b!519452 c!100469) b!519454))

(assert (= (and b!519452 (not c!100469)) b!519453))

(assert (= (or b!519454 b!519453) bm!38010))

(assert (= (and d!185521 res!220453) b!519455))

(declare-fun m!766245 () Bool)

(assert (=> d!185521 m!766245))

(declare-fun m!766247 () Bool)

(assert (=> d!185521 m!766247))

(declare-fun m!766249 () Bool)

(assert (=> b!519455 m!766249))

(assert (=> b!519455 m!766201))

(assert (=> b!519455 m!766193))

(declare-fun m!766251 () Bool)

(assert (=> bm!38010 m!766251))

(assert (=> b!519395 d!185521))

(declare-fun d!185523 () Bool)

(declare-fun res!220458 () Bool)

(declare-fun e!311166 () Bool)

(assert (=> d!185523 (=> res!220458 e!311166)))

(assert (=> d!185523 (= res!220458 (is-Nil!4779 lIn!3))))

(assert (=> d!185523 (= (forall!1448 lIn!3 lambda!14828) e!311166)))

(declare-fun b!519461 () Bool)

(declare-fun e!311167 () Bool)

(assert (=> b!519461 (= e!311166 e!311167)))

(declare-fun res!220459 () Bool)

(assert (=> b!519461 (=> (not res!220459) (not e!311167))))

(declare-fun dynLambda!3002 (Int B!1123) Bool)

(assert (=> b!519461 (= res!220459 (dynLambda!3002 lambda!14828 (h!10180 lIn!3)))))

(declare-fun b!519462 () Bool)

(assert (=> b!519462 (= e!311167 (forall!1448 (t!73379 lIn!3) lambda!14828))))

(assert (= (and d!185523 (not res!220458)) b!519461))

(assert (= (and b!519461 res!220459) b!519462))

(declare-fun b_lambda!20237 () Bool)

(assert (=> (not b_lambda!20237) (not b!519461)))

(declare-fun m!766253 () Bool)

(assert (=> b!519461 m!766253))

(declare-fun m!766255 () Bool)

(assert (=> b!519462 m!766255))

(assert (=> start!47390 d!185523))

(declare-fun d!185527 () Bool)

(declare-fun res!220468 () Bool)

(declare-fun e!311176 () Bool)

(assert (=> d!185527 (=> res!220468 e!311176)))

(assert (=> d!185527 (= res!220468 (is-Nil!4779 lIn!3))))

(assert (=> d!185527 (= (noDuplicate!140 lIn!3) e!311176)))

(declare-fun b!519471 () Bool)

(declare-fun e!311177 () Bool)

(assert (=> b!519471 (= e!311176 e!311177)))

(declare-fun res!220469 () Bool)

(assert (=> b!519471 (=> (not res!220469) (not e!311177))))

(assert (=> b!519471 (= res!220469 (not (contains!1139 (t!73379 lIn!3) (h!10180 lIn!3))))))

(declare-fun b!519472 () Bool)

(assert (=> b!519472 (= e!311177 (noDuplicate!140 (t!73379 lIn!3)))))

(assert (= (and d!185527 (not res!220468)) b!519471))

(assert (= (and b!519471 res!220469) b!519472))

(assert (=> b!519471 m!766197))

(declare-fun m!766257 () Bool)

(assert (=> b!519472 m!766257))

(assert (=> b!519401 d!185527))

(declare-fun d!185529 () Bool)

(declare-fun c!100471 () Bool)

(assert (=> d!185529 (= c!100471 (is-Nil!4779 lIn!3))))

(declare-fun e!311178 () (Set B!1123))

(assert (=> d!185529 (= (content!862 lIn!3) e!311178)))

(declare-fun b!519473 () Bool)

(assert (=> b!519473 (= e!311178 (as set.empty (Set B!1123)))))

(declare-fun b!519474 () Bool)

(assert (=> b!519474 (= e!311178 (set.union (set.insert (h!10180 lIn!3) (as set.empty (Set B!1123))) (content!862 (t!73379 lIn!3))))))

(assert (= (and d!185529 c!100471) b!519473))

(assert (= (and d!185529 (not c!100471)) b!519474))

(assert (=> b!519474 m!766193))

(assert (=> b!519474 m!766235))

(assert (=> b!519399 d!185529))

(declare-fun d!185531 () Bool)

(declare-fun c!100472 () Bool)

(assert (=> d!185531 (= c!100472 (is-Nil!4779 l!3695))))

(declare-fun e!311179 () (Set B!1123))

(assert (=> d!185531 (= (content!862 l!3695) e!311179)))

(declare-fun b!519475 () Bool)

(assert (=> b!519475 (= e!311179 (as set.empty (Set B!1123)))))

(declare-fun b!519476 () Bool)

(assert (=> b!519476 (= e!311179 (set.union (set.insert (h!10180 l!3695) (as set.empty (Set B!1123))) (content!862 (t!73379 l!3695))))))

(assert (= (and d!185531 c!100472) b!519475))

(assert (= (and d!185531 (not c!100472)) b!519476))

(declare-fun m!766259 () Bool)

(assert (=> b!519476 m!766259))

(declare-fun m!766261 () Bool)

(assert (=> b!519476 m!766261))

(assert (=> b!519399 d!185531))

(declare-fun bs!60422 () Bool)

(declare-fun d!185533 () Bool)

(assert (= bs!60422 (and d!185533 start!47390)))

(declare-fun lambda!14838 () Int)

(assert (=> bs!60422 (= lambda!14838 lambda!14828)))

(declare-fun bs!60423 () Bool)

(assert (= bs!60423 (and d!185533 b!519394)))

(assert (=> bs!60423 (= (= l!3695 lt!216522) (= lambda!14838 lambda!14829))))

(assert (=> d!185533 true))

(assert (=> d!185533 (set.subset (content!862 lIn!3) (content!862 l!3695))))

(declare-fun lt!216544 () Unit!8758)

(declare-fun choose!3716 (List!4789 List!4789) Unit!8758)

(assert (=> d!185533 (= lt!216544 (choose!3716 lIn!3 l!3695))))

(assert (=> d!185533 (forall!1448 lIn!3 lambda!14838)))

(assert (=> d!185533 (= (forallContainsSubset!23 lIn!3 l!3695) lt!216544)))

(declare-fun bs!60424 () Bool)

(assert (= bs!60424 d!185533))

(assert (=> bs!60424 m!766199))

(assert (=> bs!60424 m!766201))

(declare-fun m!766267 () Bool)

(assert (=> bs!60424 m!766267))

(declare-fun m!766269 () Bool)

(assert (=> bs!60424 m!766269))

(assert (=> b!519399 d!185533))

(declare-fun d!185537 () Bool)

(declare-fun res!220472 () Bool)

(declare-fun e!311182 () Bool)

(assert (=> d!185537 (=> res!220472 e!311182)))

(assert (=> d!185537 (= res!220472 (is-Nil!4779 (t!73379 lIn!3)))))

(assert (=> d!185537 (= (forall!1448 (t!73379 lIn!3) lambda!14829) e!311182)))

(declare-fun b!519479 () Bool)

(declare-fun e!311183 () Bool)

(assert (=> b!519479 (= e!311182 e!311183)))

(declare-fun res!220473 () Bool)

(assert (=> b!519479 (=> (not res!220473) (not e!311183))))

(assert (=> b!519479 (= res!220473 (dynLambda!3002 lambda!14829 (h!10180 (t!73379 lIn!3))))))

(declare-fun b!519480 () Bool)

(assert (=> b!519480 (= e!311183 (forall!1448 (t!73379 (t!73379 lIn!3)) lambda!14829))))

(assert (= (and d!185537 (not res!220472)) b!519479))

(assert (= (and b!519479 res!220473) b!519480))

(declare-fun b_lambda!20241 () Bool)

(assert (=> (not b_lambda!20241) (not b!519479)))

(declare-fun m!766271 () Bool)

(assert (=> b!519479 m!766271))

(declare-fun m!766273 () Bool)

(assert (=> b!519480 m!766273))

(assert (=> b!519394 d!185537))

(declare-fun bs!60425 () Bool)

(declare-fun d!185539 () Bool)

(assert (= bs!60425 (and d!185539 start!47390)))

(declare-fun lambda!14841 () Int)

(assert (=> bs!60425 (= (= lt!216522 l!3695) (= lambda!14841 lambda!14828))))

(declare-fun bs!60426 () Bool)

(assert (= bs!60426 (and d!185539 b!519394)))

(assert (=> bs!60426 (= lambda!14841 lambda!14829)))

(declare-fun bs!60427 () Bool)

(assert (= bs!60427 (and d!185539 d!185533)))

(assert (=> bs!60427 (= (= lt!216522 l!3695) (= lambda!14841 lambda!14838))))

(assert (=> d!185539 true))

(assert (=> d!185539 (forall!1448 (t!73379 lIn!3) lambda!14841)))

(declare-fun lt!216547 () Unit!8758)

(declare-fun choose!3717 (List!4789 List!4789) Unit!8758)

(assert (=> d!185539 (= lt!216547 (choose!3717 (t!73379 lIn!3) lt!216522))))

(assert (=> d!185539 (set.subset (content!862 (t!73379 lIn!3)) (content!862 lt!216522))))

(assert (=> d!185539 (= (subsetContains!15 (t!73379 lIn!3) lt!216522) lt!216547)))

(declare-fun bs!60428 () Bool)

(assert (= bs!60428 d!185539))

(declare-fun m!766275 () Bool)

(assert (=> bs!60428 m!766275))

(declare-fun m!766277 () Bool)

(assert (=> bs!60428 m!766277))

(assert (=> bs!60428 m!766235))

(assert (=> bs!60428 m!766191))

(assert (=> b!519394 d!185539))

(declare-fun b!519493 () Bool)

(declare-fun e!311190 () Bool)

(declare-fun tp!161796 () Bool)

(assert (=> b!519493 (= e!311190 (and tp_is_empty!2719 tp!161796))))

(assert (=> b!519400 (= tp!161786 e!311190)))

(assert (= (and b!519400 (is-Cons!4779 (t!73379 l!3695))) b!519493))

(declare-fun b!519494 () Bool)

(declare-fun e!311191 () Bool)

(declare-fun tp!161797 () Bool)

(assert (=> b!519494 (= e!311191 (and tp_is_empty!2719 tp!161797))))

(assert (=> b!519398 (= tp!161787 e!311191)))

(assert (= (and b!519398 (is-Cons!4779 (t!73379 lIn!3))) b!519494))

(declare-fun b_lambda!20243 () Bool)

(assert (= b_lambda!20237 (or start!47390 b_lambda!20243)))

(declare-fun bs!60429 () Bool)

(declare-fun d!185545 () Bool)

(assert (= bs!60429 (and d!185545 start!47390)))

(assert (=> bs!60429 (= (dynLambda!3002 lambda!14828 (h!10180 lIn!3)) (contains!1139 l!3695 (h!10180 lIn!3)))))

(declare-fun m!766285 () Bool)

(assert (=> bs!60429 m!766285))

(assert (=> b!519461 d!185545))

(declare-fun b_lambda!20245 () Bool)

(assert (= b_lambda!20241 (or b!519394 b_lambda!20245)))

(declare-fun bs!60430 () Bool)

(declare-fun d!185547 () Bool)

(assert (= bs!60430 (and d!185547 b!519394)))

(assert (=> bs!60430 (= (dynLambda!3002 lambda!14829 (h!10180 (t!73379 lIn!3))) (contains!1139 lt!216522 (h!10180 (t!73379 lIn!3))))))

(declare-fun m!766287 () Bool)

(assert (=> bs!60430 m!766287))

(assert (=> b!519479 d!185547))

(push 1)

(assert (not b!519455))

(assert tp_is_empty!2719)

(assert (not b!519474))

(assert (not b!519480))

(assert (not b!519462))

(assert (not d!185521))

(assert (not b!519471))

(assert (not b_lambda!20243))

(assert (not d!185539))

(assert (not b!519435))

(assert (not b_lambda!20245))

(assert (not b!519494))

(assert (not bs!60430))

(assert (not b!519493))

(assert (not d!185533))

(assert (not d!185517))

(assert (not bs!60429))

(assert (not b!519441))

(assert (not b!519472))

(assert (not b!519476))

(assert (not bm!38010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

