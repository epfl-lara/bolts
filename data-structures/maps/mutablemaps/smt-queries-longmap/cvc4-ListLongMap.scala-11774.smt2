; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138290 () Bool)

(assert start!138290)

(declare-fun b!1585384 () Bool)

(declare-fun e!885184 () Bool)

(declare-fun tp_is_empty!39521 () Bool)

(declare-fun tp!115270 () Bool)

(assert (=> b!1585384 (= e!885184 (and tp_is_empty!39521 tp!115270))))

(declare-fun b!1585385 () Bool)

(declare-fun res!1082849 () Bool)

(declare-fun e!885186 () Bool)

(assert (=> b!1585385 (=> (not res!1082849) (not e!885186))))

(declare-datatypes ((B!2988 0))(
  ( (B!2989 (val!19856 Int)) )
))
(declare-datatypes ((tuple2!26044 0))(
  ( (tuple2!26045 (_1!13032 (_ BitVec 64)) (_2!13032 B!2988)) )
))
(declare-datatypes ((List!37137 0))(
  ( (Nil!37134) (Cons!37133 (h!38677 tuple2!26044) (t!52064 List!37137)) )
))
(declare-fun l!556 () List!37137)

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585385 (= res!1082849 (and (is-Cons!37133 l!556) (bvslt (_1!13032 (h!38677 l!556)) newKey!21)))))

(declare-fun res!1082848 () Bool)

(assert (=> start!138290 (=> (not res!1082848) (not e!885186))))

(declare-fun isStrictlySorted!1196 (List!37137) Bool)

(assert (=> start!138290 (= res!1082848 (isStrictlySorted!1196 l!556))))

(assert (=> start!138290 e!885186))

(assert (=> start!138290 e!885184))

(assert (=> start!138290 true))

(assert (=> start!138290 tp_is_empty!39521))

(declare-fun newValue!21 () B!2988)

(declare-fun b!1585386 () Bool)

(declare-fun lt!677311 () List!37137)

(declare-fun e!885185 () Bool)

(declare-fun contains!10551 (List!37137 tuple2!26044) Bool)

(assert (=> b!1585386 (= e!885185 (not (contains!10551 lt!677311 (tuple2!26045 newKey!21 newValue!21))))))

(declare-fun b!1585387 () Bool)

(declare-fun res!1082846 () Bool)

(assert (=> b!1585387 (=> res!1082846 e!885185)))

(declare-fun containsKey!1009 (List!37137 (_ BitVec 64)) Bool)

(assert (=> b!1585387 (= res!1082846 (not (containsKey!1009 lt!677311 newKey!21)))))

(declare-fun b!1585388 () Bool)

(assert (=> b!1585388 (= e!885186 e!885185)))

(declare-fun res!1082847 () Bool)

(assert (=> b!1585388 (=> res!1082847 e!885185)))

(assert (=> b!1585388 (= res!1082847 (not (isStrictlySorted!1196 lt!677311)))))

(declare-fun $colon$colon!1042 (List!37137 tuple2!26044) List!37137)

(declare-fun insertStrictlySorted!636 (List!37137 (_ BitVec 64) B!2988) List!37137)

(assert (=> b!1585388 (= lt!677311 ($colon$colon!1042 (insertStrictlySorted!636 (t!52064 l!556) newKey!21 newValue!21) (h!38677 l!556)))))

(assert (= (and start!138290 res!1082848) b!1585385))

(assert (= (and b!1585385 res!1082849) b!1585388))

(assert (= (and b!1585388 (not res!1082847)) b!1585387))

(assert (= (and b!1585387 (not res!1082846)) b!1585386))

(assert (= (and start!138290 (is-Cons!37133 l!556)) b!1585384))

(declare-fun m!1454247 () Bool)

(assert (=> start!138290 m!1454247))

(declare-fun m!1454249 () Bool)

(assert (=> b!1585386 m!1454249))

(declare-fun m!1454251 () Bool)

(assert (=> b!1585387 m!1454251))

(declare-fun m!1454253 () Bool)

(assert (=> b!1585388 m!1454253))

(declare-fun m!1454255 () Bool)

(assert (=> b!1585388 m!1454255))

(assert (=> b!1585388 m!1454255))

(declare-fun m!1454257 () Bool)

(assert (=> b!1585388 m!1454257))

(push 1)

(assert (not b!1585386))

(assert (not b!1585384))

(assert (not start!138290))

(assert (not b!1585388))

(assert tp_is_empty!39521)

(assert (not b!1585387))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167671 () Bool)

(declare-fun res!1082872 () Bool)

(declare-fun e!885210 () Bool)

(assert (=> d!167671 (=> res!1082872 e!885210)))

(assert (=> d!167671 (= res!1082872 (or (is-Nil!37134 lt!677311) (is-Nil!37134 (t!52064 lt!677311))))))

(assert (=> d!167671 (= (isStrictlySorted!1196 lt!677311) e!885210)))

(declare-fun b!1585415 () Bool)

(declare-fun e!885211 () Bool)

(assert (=> b!1585415 (= e!885210 e!885211)))

(declare-fun res!1082873 () Bool)

(assert (=> b!1585415 (=> (not res!1082873) (not e!885211))))

(assert (=> b!1585415 (= res!1082873 (bvslt (_1!13032 (h!38677 lt!677311)) (_1!13032 (h!38677 (t!52064 lt!677311)))))))

(declare-fun b!1585416 () Bool)

(assert (=> b!1585416 (= e!885211 (isStrictlySorted!1196 (t!52064 lt!677311)))))

(assert (= (and d!167671 (not res!1082872)) b!1585415))

(assert (= (and b!1585415 res!1082873) b!1585416))

(declare-fun m!1454269 () Bool)

(assert (=> b!1585416 m!1454269))

(assert (=> b!1585388 d!167671))

(declare-fun d!167675 () Bool)

(assert (=> d!167675 (= ($colon$colon!1042 (insertStrictlySorted!636 (t!52064 l!556) newKey!21 newValue!21) (h!38677 l!556)) (Cons!37133 (h!38677 l!556) (insertStrictlySorted!636 (t!52064 l!556) newKey!21 newValue!21)))))

(assert (=> b!1585388 d!167675))

(declare-fun bm!72639 () Bool)

(declare-fun call!72643 () List!37137)

(declare-fun call!72642 () List!37137)

(assert (=> bm!72639 (= call!72643 call!72642)))

(declare-fun b!1585502 () Bool)

(declare-fun e!885270 () List!37137)

(declare-fun call!72644 () List!37137)

(assert (=> b!1585502 (= e!885270 call!72644)))

(declare-fun b!1585504 () Bool)

(declare-fun e!885264 () List!37137)

(assert (=> b!1585504 (= e!885264 call!72643)))

(declare-fun b!1585505 () Bool)

(declare-fun c!146956 () Bool)

(assert (=> b!1585505 (= c!146956 (and (is-Cons!37133 (t!52064 l!556)) (bvsgt (_1!13032 (h!38677 (t!52064 l!556))) newKey!21)))))

(declare-fun e!885265 () List!37137)

(assert (=> b!1585505 (= e!885265 e!885264)))

(declare-fun e!885267 () List!37137)

(declare-fun bm!72640 () Bool)

(declare-fun c!146955 () Bool)

(assert (=> bm!72640 (= call!72644 ($colon$colon!1042 e!885267 (ite c!146955 (h!38677 (t!52064 l!556)) (tuple2!26045 newKey!21 newValue!21))))))

(declare-fun c!146954 () Bool)

(assert (=> bm!72640 (= c!146954 c!146955)))

(declare-fun b!1585506 () Bool)

(assert (=> b!1585506 (= e!885270 e!885265)))

(declare-fun c!146957 () Bool)

(assert (=> b!1585506 (= c!146957 (and (is-Cons!37133 (t!52064 l!556)) (= (_1!13032 (h!38677 (t!52064 l!556))) newKey!21)))))

(declare-fun d!167677 () Bool)

(declare-fun e!885269 () Bool)

(assert (=> d!167677 e!885269))

(declare-fun res!1082906 () Bool)

(assert (=> d!167677 (=> (not res!1082906) (not e!885269))))

(declare-fun lt!677324 () List!37137)

(assert (=> d!167677 (= res!1082906 (isStrictlySorted!1196 lt!677324))))

(assert (=> d!167677 (= lt!677324 e!885270)))

(assert (=> d!167677 (= c!146955 (and (is-Cons!37133 (t!52064 l!556)) (bvslt (_1!13032 (h!38677 (t!52064 l!556))) newKey!21)))))

(assert (=> d!167677 (isStrictlySorted!1196 (t!52064 l!556))))

(assert (=> d!167677 (= (insertStrictlySorted!636 (t!52064 l!556) newKey!21 newValue!21) lt!677324)))

(declare-fun b!1585507 () Bool)

(declare-fun res!1082907 () Bool)

(assert (=> b!1585507 (=> (not res!1082907) (not e!885269))))

(assert (=> b!1585507 (= res!1082907 (containsKey!1009 lt!677324 newKey!21))))

(declare-fun b!1585508 () Bool)

(assert (=> b!1585508 (= e!885269 (contains!10551 lt!677324 (tuple2!26045 newKey!21 newValue!21)))))

(declare-fun bm!72641 () Bool)

(assert (=> bm!72641 (= call!72642 call!72644)))

(declare-fun b!1585509 () Bool)

(assert (=> b!1585509 (= e!885267 (ite c!146957 (t!52064 (t!52064 l!556)) (ite c!146956 (Cons!37133 (h!38677 (t!52064 l!556)) (t!52064 (t!52064 l!556))) Nil!37134)))))

(declare-fun b!1585510 () Bool)

(assert (=> b!1585510 (= e!885264 call!72643)))

(declare-fun b!1585511 () Bool)

(assert (=> b!1585511 (= e!885265 call!72642)))

(declare-fun b!1585512 () Bool)

(assert (=> b!1585512 (= e!885267 (insertStrictlySorted!636 (t!52064 (t!52064 l!556)) newKey!21 newValue!21))))

(assert (= (and d!167677 c!146955) b!1585502))

(assert (= (and d!167677 (not c!146955)) b!1585506))

(assert (= (and b!1585506 c!146957) b!1585511))

(assert (= (and b!1585506 (not c!146957)) b!1585505))

(assert (= (and b!1585505 c!146956) b!1585510))

(assert (= (and b!1585505 (not c!146956)) b!1585504))

(assert (= (or b!1585510 b!1585504) bm!72639))

(assert (= (or b!1585511 bm!72639) bm!72641))

(assert (= (or b!1585502 bm!72641) bm!72640))

(assert (= (and bm!72640 c!146954) b!1585512))

(assert (= (and bm!72640 (not c!146954)) b!1585509))

(assert (= (and d!167677 res!1082906) b!1585507))

(assert (= (and b!1585507 res!1082907) b!1585508))

(declare-fun m!1454293 () Bool)

(assert (=> d!167677 m!1454293))

(declare-fun m!1454295 () Bool)

(assert (=> d!167677 m!1454295))

(declare-fun m!1454297 () Bool)

(assert (=> b!1585512 m!1454297))

(declare-fun m!1454299 () Bool)

(assert (=> b!1585507 m!1454299))

(declare-fun m!1454301 () Bool)

(assert (=> b!1585508 m!1454301))

(declare-fun m!1454303 () Bool)

(assert (=> bm!72640 m!1454303))

(assert (=> b!1585388 d!167677))

(declare-fun d!167689 () Bool)

(declare-fun res!1082918 () Bool)

(declare-fun e!885285 () Bool)

(assert (=> d!167689 (=> res!1082918 e!885285)))

(assert (=> d!167689 (= res!1082918 (and (is-Cons!37133 lt!677311) (= (_1!13032 (h!38677 lt!677311)) newKey!21)))))

(assert (=> d!167689 (= (containsKey!1009 lt!677311 newKey!21) e!885285)))

(declare-fun b!1585534 () Bool)

(declare-fun e!885286 () Bool)

(assert (=> b!1585534 (= e!885285 e!885286)))

(declare-fun res!1082919 () Bool)

(assert (=> b!1585534 (=> (not res!1082919) (not e!885286))))

(assert (=> b!1585534 (= res!1082919 (and (or (not (is-Cons!37133 lt!677311)) (bvsle (_1!13032 (h!38677 lt!677311)) newKey!21)) (is-Cons!37133 lt!677311) (bvslt (_1!13032 (h!38677 lt!677311)) newKey!21)))))

(declare-fun b!1585535 () Bool)

(assert (=> b!1585535 (= e!885286 (containsKey!1009 (t!52064 lt!677311) newKey!21))))

(assert (= (and d!167689 (not res!1082918)) b!1585534))

(assert (= (and b!1585534 res!1082919) b!1585535))

(declare-fun m!1454317 () Bool)

(assert (=> b!1585535 m!1454317))

(assert (=> b!1585387 d!167689))

(declare-fun d!167693 () Bool)

(declare-fun res!1082920 () Bool)

(declare-fun e!885289 () Bool)

(assert (=> d!167693 (=> res!1082920 e!885289)))

(assert (=> d!167693 (= res!1082920 (or (is-Nil!37134 l!556) (is-Nil!37134 (t!52064 l!556))))))

(assert (=> d!167693 (= (isStrictlySorted!1196 l!556) e!885289)))

(declare-fun b!1585540 () Bool)

(declare-fun e!885290 () Bool)

(assert (=> b!1585540 (= e!885289 e!885290)))

(declare-fun res!1082921 () Bool)

(assert (=> b!1585540 (=> (not res!1082921) (not e!885290))))

(assert (=> b!1585540 (= res!1082921 (bvslt (_1!13032 (h!38677 l!556)) (_1!13032 (h!38677 (t!52064 l!556)))))))

(declare-fun b!1585541 () Bool)

(assert (=> b!1585541 (= e!885290 (isStrictlySorted!1196 (t!52064 l!556)))))

(assert (= (and d!167693 (not res!1082920)) b!1585540))

(assert (= (and b!1585540 res!1082921) b!1585541))

(assert (=> b!1585541 m!1454295))

(assert (=> start!138290 d!167693))

(declare-fun d!167695 () Bool)

(declare-fun lt!677329 () Bool)

(declare-fun content!870 (List!37137) (Set tuple2!26044))

(assert (=> d!167695 (= lt!677329 (member (tuple2!26045 newKey!21 newValue!21) (content!870 lt!677311)))))

(declare-fun e!885296 () Bool)

(assert (=> d!167695 (= lt!677329 e!885296)))

(declare-fun res!1082927 () Bool)

(assert (=> d!167695 (=> (not res!1082927) (not e!885296))))

(assert (=> d!167695 (= res!1082927 (is-Cons!37133 lt!677311))))

(assert (=> d!167695 (= (contains!10551 lt!677311 (tuple2!26045 newKey!21 newValue!21)) lt!677329)))

(declare-fun b!1585547 () Bool)

(declare-fun e!885297 () Bool)

(assert (=> b!1585547 (= e!885296 e!885297)))

(declare-fun res!1082926 () Bool)

(assert (=> b!1585547 (=> res!1082926 e!885297)))

(assert (=> b!1585547 (= res!1082926 (= (h!38677 lt!677311) (tuple2!26045 newKey!21 newValue!21)))))

(declare-fun b!1585548 () Bool)

(assert (=> b!1585548 (= e!885297 (contains!10551 (t!52064 lt!677311) (tuple2!26045 newKey!21 newValue!21)))))

(assert (= (and d!167695 res!1082927) b!1585547))

(assert (= (and b!1585547 (not res!1082926)) b!1585548))

(declare-fun m!1454319 () Bool)

(assert (=> d!167695 m!1454319))

(declare-fun m!1454321 () Bool)

(assert (=> d!167695 m!1454321))

(declare-fun m!1454323 () Bool)

(assert (=> b!1585548 m!1454323))

(assert (=> b!1585386 d!167695))

(declare-fun b!1585553 () Bool)

(declare-fun e!885300 () Bool)

(declare-fun tp!115279 () Bool)

(assert (=> b!1585553 (= e!885300 (and tp_is_empty!39521 tp!115279))))

(assert (=> b!1585384 (= tp!115270 e!885300)))

(assert (= (and b!1585384 (is-Cons!37133 (t!52064 l!556))) b!1585553))

(push 1)

(assert (not b!1585541))

(assert (not b!1585548))

(assert (not b!1585507))

(assert (not b!1585416))

(assert (not b!1585508))

(assert (not b!1585553))

(assert (not d!167677))

(assert (not b!1585512))

(assert (not d!167695))

(assert (not bm!72640))

(assert tp_is_empty!39521)

(assert (not b!1585535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167737 () Bool)

(declare-fun res!1082960 () Bool)

(declare-fun e!885347 () Bool)

(assert (=> d!167737 (=> res!1082960 e!885347)))

(assert (=> d!167737 (= res!1082960 (or (is-Nil!37134 lt!677324) (is-Nil!37134 (t!52064 lt!677324))))))

(assert (=> d!167737 (= (isStrictlySorted!1196 lt!677324) e!885347)))

(declare-fun b!1585616 () Bool)

(declare-fun e!885348 () Bool)

(assert (=> b!1585616 (= e!885347 e!885348)))

(declare-fun res!1082961 () Bool)

(assert (=> b!1585616 (=> (not res!1082961) (not e!885348))))

(assert (=> b!1585616 (= res!1082961 (bvslt (_1!13032 (h!38677 lt!677324)) (_1!13032 (h!38677 (t!52064 lt!677324)))))))

(declare-fun b!1585617 () Bool)

(assert (=> b!1585617 (= e!885348 (isStrictlySorted!1196 (t!52064 lt!677324)))))

(assert (= (and d!167737 (not res!1082960)) b!1585616))

(assert (= (and b!1585616 res!1082961) b!1585617))

(declare-fun m!1454393 () Bool)

(assert (=> b!1585617 m!1454393))

(assert (=> d!167677 d!167737))

(declare-fun d!167739 () Bool)

(declare-fun res!1082962 () Bool)

(declare-fun e!885349 () Bool)

(assert (=> d!167739 (=> res!1082962 e!885349)))

(assert (=> d!167739 (= res!1082962 (or (is-Nil!37134 (t!52064 l!556)) (is-Nil!37134 (t!52064 (t!52064 l!556)))))))

(assert (=> d!167739 (= (isStrictlySorted!1196 (t!52064 l!556)) e!885349)))

(declare-fun b!1585618 () Bool)

(declare-fun e!885350 () Bool)

(assert (=> b!1585618 (= e!885349 e!885350)))

(declare-fun res!1082963 () Bool)

(assert (=> b!1585618 (=> (not res!1082963) (not e!885350))))

(assert (=> b!1585618 (= res!1082963 (bvslt (_1!13032 (h!38677 (t!52064 l!556))) (_1!13032 (h!38677 (t!52064 (t!52064 l!556))))))))

(declare-fun b!1585619 () Bool)

(assert (=> b!1585619 (= e!885350 (isStrictlySorted!1196 (t!52064 (t!52064 l!556))))))

(assert (= (and d!167739 (not res!1082962)) b!1585618))

(assert (= (and b!1585618 res!1082963) b!1585619))

(declare-fun m!1454395 () Bool)

(assert (=> b!1585619 m!1454395))

(assert (=> d!167677 d!167739))

(declare-fun d!167741 () Bool)

(declare-fun res!1082964 () Bool)

(declare-fun e!885351 () Bool)

(assert (=> d!167741 (=> res!1082964 e!885351)))

(assert (=> d!167741 (= res!1082964 (or (is-Nil!37134 (t!52064 lt!677311)) (is-Nil!37134 (t!52064 (t!52064 lt!677311)))))))

(assert (=> d!167741 (= (isStrictlySorted!1196 (t!52064 lt!677311)) e!885351)))

(declare-fun b!1585620 () Bool)

(declare-fun e!885352 () Bool)

(assert (=> b!1585620 (= e!885351 e!885352)))

(declare-fun res!1082965 () Bool)

(assert (=> b!1585620 (=> (not res!1082965) (not e!885352))))

(assert (=> b!1585620 (= res!1082965 (bvslt (_1!13032 (h!38677 (t!52064 lt!677311))) (_1!13032 (h!38677 (t!52064 (t!52064 lt!677311))))))))

(declare-fun b!1585621 () Bool)

(assert (=> b!1585621 (= e!885352 (isStrictlySorted!1196 (t!52064 (t!52064 lt!677311))))))

(assert (= (and d!167741 (not res!1082964)) b!1585620))

(assert (= (and b!1585620 res!1082965) b!1585621))

(declare-fun m!1454397 () Bool)

(assert (=> b!1585621 m!1454397))

(assert (=> b!1585416 d!167741))

(declare-fun d!167743 () Bool)

(declare-fun res!1082966 () Bool)

(declare-fun e!885353 () Bool)

(assert (=> d!167743 (=> res!1082966 e!885353)))

(assert (=> d!167743 (= res!1082966 (and (is-Cons!37133 (t!52064 lt!677311)) (= (_1!13032 (h!38677 (t!52064 lt!677311))) newKey!21)))))

(assert (=> d!167743 (= (containsKey!1009 (t!52064 lt!677311) newKey!21) e!885353)))

(declare-fun b!1585622 () Bool)

(declare-fun e!885354 () Bool)

(assert (=> b!1585622 (= e!885353 e!885354)))

(declare-fun res!1082967 () Bool)

(assert (=> b!1585622 (=> (not res!1082967) (not e!885354))))

(assert (=> b!1585622 (= res!1082967 (and (or (not (is-Cons!37133 (t!52064 lt!677311))) (bvsle (_1!13032 (h!38677 (t!52064 lt!677311))) newKey!21)) (is-Cons!37133 (t!52064 lt!677311)) (bvslt (_1!13032 (h!38677 (t!52064 lt!677311))) newKey!21)))))

(declare-fun b!1585623 () Bool)

(assert (=> b!1585623 (= e!885354 (containsKey!1009 (t!52064 (t!52064 lt!677311)) newKey!21))))

(assert (= (and d!167743 (not res!1082966)) b!1585622))

(assert (= (and b!1585622 res!1082967) b!1585623))

(declare-fun m!1454399 () Bool)

(assert (=> b!1585623 m!1454399))

(assert (=> b!1585535 d!167743))

(declare-fun d!167745 () Bool)

(assert (=> d!167745 (= ($colon$colon!1042 e!885267 (ite c!146955 (h!38677 (t!52064 l!556)) (tuple2!26045 newKey!21 newValue!21))) (Cons!37133 (ite c!146955 (h!38677 (t!52064 l!556)) (tuple2!26045 newKey!21 newValue!21)) e!885267))))

(assert (=> bm!72640 d!167745))

(declare-fun d!167747 () Bool)

(declare-fun lt!677336 () Bool)

(assert (=> d!167747 (= lt!677336 (member (tuple2!26045 newKey!21 newValue!21) (content!870 (t!52064 lt!677311))))))

(declare-fun e!885355 () Bool)

(assert (=> d!167747 (= lt!677336 e!885355)))

(declare-fun res!1082969 () Bool)

(assert (=> d!167747 (=> (not res!1082969) (not e!885355))))

(assert (=> d!167747 (= res!1082969 (is-Cons!37133 (t!52064 lt!677311)))))

(assert (=> d!167747 (= (contains!10551 (t!52064 lt!677311) (tuple2!26045 newKey!21 newValue!21)) lt!677336)))

(declare-fun b!1585624 () Bool)

(declare-fun e!885356 () Bool)

(assert (=> b!1585624 (= e!885355 e!885356)))

(declare-fun res!1082968 () Bool)

(assert (=> b!1585624 (=> res!1082968 e!885356)))

(assert (=> b!1585624 (= res!1082968 (= (h!38677 (t!52064 lt!677311)) (tuple2!26045 newKey!21 newValue!21)))))

(declare-fun b!1585625 () Bool)

(assert (=> b!1585625 (= e!885356 (contains!10551 (t!52064 (t!52064 lt!677311)) (tuple2!26045 newKey!21 newValue!21)))))

(assert (= (and d!167747 res!1082969) b!1585624))

(assert (= (and b!1585624 (not res!1082968)) b!1585625))

(declare-fun m!1454401 () Bool)

(assert (=> d!167747 m!1454401))

(declare-fun m!1454403 () Bool)

(assert (=> d!167747 m!1454403))

(declare-fun m!1454405 () Bool)

(assert (=> b!1585625 m!1454405))

(assert (=> b!1585548 d!167747))

(declare-fun d!167749 () Bool)

(declare-fun res!1082970 () Bool)

(declare-fun e!885357 () Bool)

(assert (=> d!167749 (=> res!1082970 e!885357)))

(assert (=> d!167749 (= res!1082970 (and (is-Cons!37133 lt!677324) (= (_1!13032 (h!38677 lt!677324)) newKey!21)))))

(assert (=> d!167749 (= (containsKey!1009 lt!677324 newKey!21) e!885357)))

(declare-fun b!1585626 () Bool)

(declare-fun e!885358 () Bool)

(assert (=> b!1585626 (= e!885357 e!885358)))

(declare-fun res!1082971 () Bool)

(assert (=> b!1585626 (=> (not res!1082971) (not e!885358))))

(assert (=> b!1585626 (= res!1082971 (and (or (not (is-Cons!37133 lt!677324)) (bvsle (_1!13032 (h!38677 lt!677324)) newKey!21)) (is-Cons!37133 lt!677324) (bvslt (_1!13032 (h!38677 lt!677324)) newKey!21)))))

(declare-fun b!1585627 () Bool)

(assert (=> b!1585627 (= e!885358 (containsKey!1009 (t!52064 lt!677324) newKey!21))))

(assert (= (and d!167749 (not res!1082970)) b!1585626))

(assert (= (and b!1585626 res!1082971) b!1585627))

(declare-fun m!1454407 () Bool)

(assert (=> b!1585627 m!1454407))

(assert (=> b!1585507 d!167749))

(assert (=> b!1585541 d!167739))

(declare-fun d!167751 () Bool)

(declare-fun c!146978 () Bool)

(assert (=> d!167751 (= c!146978 (is-Nil!37134 lt!677311))))

(declare-fun e!885361 () (Set tuple2!26044))

(assert (=> d!167751 (= (content!870 lt!677311) e!885361)))

(declare-fun b!1585632 () Bool)

(assert (=> b!1585632 (= e!885361 (as emptyset (Set tuple2!26044)))))

(declare-fun b!1585633 () Bool)

(assert (=> b!1585633 (= e!885361 (union (insert (h!38677 lt!677311) (as emptyset (Set tuple2!26044))) (content!870 (t!52064 lt!677311))))))

(assert (= (and d!167751 c!146978) b!1585632))

(assert (= (and d!167751 (not c!146978)) b!1585633))

(declare-fun m!1454409 () Bool)

(assert (=> b!1585633 m!1454409))

(assert (=> b!1585633 m!1454401))

(assert (=> d!167695 d!167751))

(declare-fun bm!72651 () Bool)

(declare-fun call!72655 () List!37137)

(declare-fun call!72654 () List!37137)

(assert (=> bm!72651 (= call!72655 call!72654)))

(declare-fun b!1585634 () Bool)

(declare-fun e!885366 () List!37137)

(declare-fun call!72656 () List!37137)

(assert (=> b!1585634 (= e!885366 call!72656)))

(declare-fun b!1585635 () Bool)

(declare-fun e!885362 () List!37137)

(assert (=> b!1585635 (= e!885362 call!72655)))

(declare-fun b!1585636 () Bool)

(declare-fun c!146981 () Bool)

(assert (=> b!1585636 (= c!146981 (and (is-Cons!37133 (t!52064 (t!52064 l!556))) (bvsgt (_1!13032 (h!38677 (t!52064 (t!52064 l!556)))) newKey!21)))))

(declare-fun e!885363 () List!37137)

(assert (=> b!1585636 (= e!885363 e!885362)))

(declare-fun c!146980 () Bool)

(declare-fun bm!72652 () Bool)

(declare-fun e!885364 () List!37137)

(assert (=> bm!72652 (= call!72656 ($colon$colon!1042 e!885364 (ite c!146980 (h!38677 (t!52064 (t!52064 l!556))) (tuple2!26045 newKey!21 newValue!21))))))

(declare-fun c!146979 () Bool)

(assert (=> bm!72652 (= c!146979 c!146980)))

(declare-fun b!1585637 () Bool)

(assert (=> b!1585637 (= e!885366 e!885363)))

(declare-fun c!146982 () Bool)

(assert (=> b!1585637 (= c!146982 (and (is-Cons!37133 (t!52064 (t!52064 l!556))) (= (_1!13032 (h!38677 (t!52064 (t!52064 l!556)))) newKey!21)))))

(declare-fun d!167753 () Bool)

(declare-fun e!885365 () Bool)

(assert (=> d!167753 e!885365))

(declare-fun res!1082972 () Bool)

(assert (=> d!167753 (=> (not res!1082972) (not e!885365))))

(declare-fun lt!677337 () List!37137)

(assert (=> d!167753 (= res!1082972 (isStrictlySorted!1196 lt!677337))))

(assert (=> d!167753 (= lt!677337 e!885366)))

(assert (=> d!167753 (= c!146980 (and (is-Cons!37133 (t!52064 (t!52064 l!556))) (bvslt (_1!13032 (h!38677 (t!52064 (t!52064 l!556)))) newKey!21)))))

(assert (=> d!167753 (isStrictlySorted!1196 (t!52064 (t!52064 l!556)))))

(assert (=> d!167753 (= (insertStrictlySorted!636 (t!52064 (t!52064 l!556)) newKey!21 newValue!21) lt!677337)))

(declare-fun b!1585638 () Bool)

(declare-fun res!1082973 () Bool)

(assert (=> b!1585638 (=> (not res!1082973) (not e!885365))))

(assert (=> b!1585638 (= res!1082973 (containsKey!1009 lt!677337 newKey!21))))

(declare-fun b!1585639 () Bool)

(assert (=> b!1585639 (= e!885365 (contains!10551 lt!677337 (tuple2!26045 newKey!21 newValue!21)))))

(declare-fun bm!72653 () Bool)

(assert (=> bm!72653 (= call!72654 call!72656)))

(declare-fun b!1585640 () Bool)

(assert (=> b!1585640 (= e!885364 (ite c!146982 (t!52064 (t!52064 (t!52064 l!556))) (ite c!146981 (Cons!37133 (h!38677 (t!52064 (t!52064 l!556))) (t!52064 (t!52064 (t!52064 l!556)))) Nil!37134)))))

(declare-fun b!1585641 () Bool)

(assert (=> b!1585641 (= e!885362 call!72655)))

(declare-fun b!1585642 () Bool)

(assert (=> b!1585642 (= e!885363 call!72654)))

(declare-fun b!1585643 () Bool)

(assert (=> b!1585643 (= e!885364 (insertStrictlySorted!636 (t!52064 (t!52064 (t!52064 l!556))) newKey!21 newValue!21))))

(assert (= (and d!167753 c!146980) b!1585634))

(assert (= (and d!167753 (not c!146980)) b!1585637))

(assert (= (and b!1585637 c!146982) b!1585642))

(assert (= (and b!1585637 (not c!146982)) b!1585636))

(assert (= (and b!1585636 c!146981) b!1585641))

(assert (= (and b!1585636 (not c!146981)) b!1585635))

(assert (= (or b!1585641 b!1585635) bm!72651))

(assert (= (or b!1585642 bm!72651) bm!72653))

(assert (= (or b!1585634 bm!72653) bm!72652))

(assert (= (and bm!72652 c!146979) b!1585643))

(assert (= (and bm!72652 (not c!146979)) b!1585640))

(assert (= (and d!167753 res!1082972) b!1585638))

(assert (= (and b!1585638 res!1082973) b!1585639))

(declare-fun m!1454411 () Bool)

(assert (=> d!167753 m!1454411))

(assert (=> d!167753 m!1454395))

(declare-fun m!1454413 () Bool)

(assert (=> b!1585643 m!1454413))

(declare-fun m!1454415 () Bool)

(assert (=> b!1585638 m!1454415))

(declare-fun m!1454417 () Bool)

(assert (=> b!1585639 m!1454417))

(declare-fun m!1454419 () Bool)

(assert (=> bm!72652 m!1454419))

(assert (=> b!1585512 d!167753))

(declare-fun lt!677338 () Bool)

(declare-fun d!167755 () Bool)

(assert (=> d!167755 (= lt!677338 (member (tuple2!26045 newKey!21 newValue!21) (content!870 lt!677324)))))

(declare-fun e!885367 () Bool)

(assert (=> d!167755 (= lt!677338 e!885367)))

(declare-fun res!1082975 () Bool)

(assert (=> d!167755 (=> (not res!1082975) (not e!885367))))

(assert (=> d!167755 (= res!1082975 (is-Cons!37133 lt!677324))))

(assert (=> d!167755 (= (contains!10551 lt!677324 (tuple2!26045 newKey!21 newValue!21)) lt!677338)))

(declare-fun b!1585644 () Bool)

(declare-fun e!885368 () Bool)

(assert (=> b!1585644 (= e!885367 e!885368)))

(declare-fun res!1082974 () Bool)

(assert (=> b!1585644 (=> res!1082974 e!885368)))

(assert (=> b!1585644 (= res!1082974 (= (h!38677 lt!677324) (tuple2!26045 newKey!21 newValue!21)))))

(declare-fun b!1585645 () Bool)

(assert (=> b!1585645 (= e!885368 (contains!10551 (t!52064 lt!677324) (tuple2!26045 newKey!21 newValue!21)))))

(assert (= (and d!167755 res!1082975) b!1585644))

(assert (= (and b!1585644 (not res!1082974)) b!1585645))

(declare-fun m!1454421 () Bool)

(assert (=> d!167755 m!1454421))

(declare-fun m!1454423 () Bool)

(assert (=> d!167755 m!1454423))

(declare-fun m!1454425 () Bool)

(assert (=> b!1585645 m!1454425))

(assert (=> b!1585508 d!167755))

(declare-fun b!1585646 () Bool)

(declare-fun e!885369 () Bool)

(declare-fun tp!115282 () Bool)

(assert (=> b!1585646 (= e!885369 (and tp_is_empty!39521 tp!115282))))

(assert (=> b!1585553 (= tp!115279 e!885369)))

(assert (= (and b!1585553 (is-Cons!37133 (t!52064 (t!52064 l!556)))) b!1585646))

(push 1)

(assert (not b!1585645))

(assert (not bm!72652))

(assert (not d!167747))

(assert (not b!1585625))

(assert (not b!1585619))

(assert (not b!1585639))

(assert (not b!1585643))

(assert (not b!1585638))

(assert (not b!1585646))

(assert (not d!167755))

(assert (not b!1585623))

(assert (not b!1585617))

(assert tp_is_empty!39521)

(assert (not d!167753))

(assert (not b!1585633))

(assert (not b!1585627))

(assert (not b!1585621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

