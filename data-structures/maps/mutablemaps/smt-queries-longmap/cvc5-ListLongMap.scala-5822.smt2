; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75122 () Bool)

(assert start!75122)

(declare-fun key1!49 () (_ BitVec 64))

(declare-fun b!885153 () Bool)

(declare-datatypes ((B!1250 0))(
  ( (B!1251 (val!8931 Int)) )
))
(declare-fun v1!38 () B!1250)

(declare-fun e!492656 () Bool)

(declare-datatypes ((tuple2!11882 0))(
  ( (tuple2!11883 (_1!5951 (_ BitVec 64)) (_2!5951 B!1250)) )
))
(declare-datatypes ((List!17731 0))(
  ( (Nil!17728) (Cons!17727 (h!18858 tuple2!11882) (t!25016 List!17731)) )
))
(declare-fun l!906 () List!17731)

(declare-fun isStrictlySorted!467 (List!17731) Bool)

(declare-fun insertStrictlySorted!288 (List!17731 (_ BitVec 64) B!1250) List!17731)

(assert (=> b!885153 (= e!492656 (not (isStrictlySorted!467 (insertStrictlySorted!288 l!906 key1!49 v1!38))))))

(declare-fun v2!16 () B!1250)

(assert (=> b!885153 (= (insertStrictlySorted!288 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!288 (t!25016 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30193 0))(
  ( (Unit!30194) )
))
(declare-fun lt!400938 () Unit!30193)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!7 (List!17731 (_ BitVec 64) B!1250 B!1250) Unit!30193)

(assert (=> b!885153 (= lt!400938 (lemmaInsertStrictlySortedErasesIfSameKey!7 (t!25016 l!906) key1!49 v1!38 v2!16))))

(declare-fun res!601309 () Bool)

(assert (=> start!75122 (=> (not res!601309) (not e!492656))))

(assert (=> start!75122 (= res!601309 (isStrictlySorted!467 l!906))))

(assert (=> start!75122 e!492656))

(declare-fun e!492655 () Bool)

(assert (=> start!75122 e!492655))

(assert (=> start!75122 true))

(declare-fun tp_is_empty!17761 () Bool)

(assert (=> start!75122 tp_is_empty!17761))

(declare-fun b!885151 () Bool)

(declare-fun res!601308 () Bool)

(assert (=> b!885151 (=> (not res!601308) (not e!492656))))

(assert (=> b!885151 (= res!601308 (and (is-Cons!17727 l!906) (bvslt (_1!5951 (h!18858 l!906)) key1!49)))))

(declare-fun b!885154 () Bool)

(declare-fun tp!54249 () Bool)

(assert (=> b!885154 (= e!492655 (and tp_is_empty!17761 tp!54249))))

(declare-fun b!885152 () Bool)

(declare-fun res!601310 () Bool)

(assert (=> b!885152 (=> (not res!601310) (not e!492656))))

(assert (=> b!885152 (= res!601310 (isStrictlySorted!467 (t!25016 l!906)))))

(assert (= (and start!75122 res!601309) b!885151))

(assert (= (and b!885151 res!601308) b!885152))

(assert (= (and b!885152 res!601310) b!885153))

(assert (= (and start!75122 (is-Cons!17727 l!906)) b!885154))

(declare-fun m!825515 () Bool)

(assert (=> b!885153 m!825515))

(declare-fun m!825517 () Bool)

(assert (=> b!885153 m!825517))

(declare-fun m!825519 () Bool)

(assert (=> b!885153 m!825519))

(declare-fun m!825521 () Bool)

(assert (=> b!885153 m!825521))

(declare-fun m!825523 () Bool)

(assert (=> b!885153 m!825523))

(assert (=> b!885153 m!825521))

(declare-fun m!825525 () Bool)

(assert (=> b!885153 m!825525))

(assert (=> b!885153 m!825515))

(declare-fun m!825527 () Bool)

(assert (=> start!75122 m!825527))

(declare-fun m!825529 () Bool)

(assert (=> b!885152 m!825529))

(push 1)

(assert (not b!885154))

(assert tp_is_empty!17761)

(assert (not b!885152))

(assert (not start!75122))

(assert (not b!885153))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109291 () Bool)

(declare-fun res!601333 () Bool)

(declare-fun e!492673 () Bool)

(assert (=> d!109291 (=> res!601333 e!492673)))

(assert (=> d!109291 (= res!601333 (or (is-Nil!17728 l!906) (is-Nil!17728 (t!25016 l!906))))))

(assert (=> d!109291 (= (isStrictlySorted!467 l!906) e!492673)))

(declare-fun b!885183 () Bool)

(declare-fun e!492674 () Bool)

(assert (=> b!885183 (= e!492673 e!492674)))

(declare-fun res!601334 () Bool)

(assert (=> b!885183 (=> (not res!601334) (not e!492674))))

(assert (=> b!885183 (= res!601334 (bvslt (_1!5951 (h!18858 l!906)) (_1!5951 (h!18858 (t!25016 l!906)))))))

(declare-fun b!885184 () Bool)

(assert (=> b!885184 (= e!492674 (isStrictlySorted!467 (t!25016 l!906)))))

(assert (= (and d!109291 (not res!601333)) b!885183))

(assert (= (and b!885183 res!601334) b!885184))

(assert (=> b!885184 m!825529))

(assert (=> start!75122 d!109291))

(declare-fun d!109297 () Bool)

(assert (=> d!109297 (= (insertStrictlySorted!288 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!288 (t!25016 l!906) key1!49 v2!16))))

(declare-fun lt!400953 () Unit!30193)

(declare-fun choose!1457 (List!17731 (_ BitVec 64) B!1250 B!1250) Unit!30193)

(assert (=> d!109297 (= lt!400953 (choose!1457 (t!25016 l!906) key1!49 v1!38 v2!16))))

(assert (=> d!109297 (isStrictlySorted!467 (t!25016 l!906))))

(assert (=> d!109297 (= (lemmaInsertStrictlySortedErasesIfSameKey!7 (t!25016 l!906) key1!49 v1!38 v2!16) lt!400953)))

(declare-fun bs!24816 () Bool)

(assert (= bs!24816 d!109297))

(assert (=> bs!24816 m!825529))

(assert (=> bs!24816 m!825515))

(assert (=> bs!24816 m!825517))

(assert (=> bs!24816 m!825525))

(declare-fun m!825567 () Bool)

(assert (=> bs!24816 m!825567))

(assert (=> bs!24816 m!825515))

(assert (=> b!885153 d!109297))

(declare-fun b!885315 () Bool)

(declare-fun e!492744 () List!17731)

(declare-fun e!492742 () List!17731)

(assert (=> b!885315 (= e!492744 e!492742)))

(declare-fun c!93219 () Bool)

(assert (=> b!885315 (= c!93219 (and (is-Cons!17727 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38)) (= (_1!5951 (h!18858 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38))) key1!49)))))

(declare-fun bm!39104 () Bool)

(declare-fun call!39109 () List!17731)

(declare-fun call!39107 () List!17731)

(assert (=> bm!39104 (= call!39109 call!39107)))

(declare-fun e!492743 () Bool)

(declare-fun b!885316 () Bool)

(declare-fun lt!400967 () List!17731)

(declare-fun contains!4287 (List!17731 tuple2!11882) Bool)

(assert (=> b!885316 (= e!492743 (contains!4287 lt!400967 (tuple2!11883 key1!49 v2!16)))))

(declare-fun e!492741 () List!17731)

(declare-fun b!885317 () Bool)

(declare-fun c!93217 () Bool)

(assert (=> b!885317 (= e!492741 (ite c!93219 (t!25016 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38)) (ite c!93217 (Cons!17727 (h!18858 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38)) (t!25016 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38))) Nil!17728)))))

(declare-fun b!885318 () Bool)

(assert (=> b!885318 (= e!492741 (insertStrictlySorted!288 (t!25016 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38)) key1!49 v2!16))))

(declare-fun b!885319 () Bool)

(declare-fun e!492740 () List!17731)

(declare-fun call!39108 () List!17731)

(assert (=> b!885319 (= e!492740 call!39108)))

(declare-fun b!885321 () Bool)

(assert (=> b!885321 (= e!492744 call!39107)))

(declare-fun c!93216 () Bool)

(declare-fun bm!39105 () Bool)

(declare-fun $colon$colon!542 (List!17731 tuple2!11882) List!17731)

(assert (=> bm!39105 (= call!39107 ($colon$colon!542 e!492741 (ite c!93216 (h!18858 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38)) (tuple2!11883 key1!49 v2!16))))))

(declare-fun c!93218 () Bool)

(assert (=> bm!39105 (= c!93218 c!93216)))

(declare-fun b!885322 () Bool)

(assert (=> b!885322 (= c!93217 (and (is-Cons!17727 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38)) (bvsgt (_1!5951 (h!18858 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38))) key1!49)))))

(assert (=> b!885322 (= e!492742 e!492740)))

(declare-fun bm!39106 () Bool)

(assert (=> bm!39106 (= call!39108 call!39109)))

(declare-fun b!885323 () Bool)

(assert (=> b!885323 (= e!492742 call!39109)))

(declare-fun b!885324 () Bool)

(assert (=> b!885324 (= e!492740 call!39108)))

(declare-fun b!885320 () Bool)

(declare-fun res!601362 () Bool)

(assert (=> b!885320 (=> (not res!601362) (not e!492743))))

(declare-fun containsKey!408 (List!17731 (_ BitVec 64)) Bool)

(assert (=> b!885320 (= res!601362 (containsKey!408 lt!400967 key1!49))))

(declare-fun d!109301 () Bool)

(assert (=> d!109301 e!492743))

(declare-fun res!601361 () Bool)

(assert (=> d!109301 (=> (not res!601361) (not e!492743))))

(assert (=> d!109301 (= res!601361 (isStrictlySorted!467 lt!400967))))

(assert (=> d!109301 (= lt!400967 e!492744)))

(assert (=> d!109301 (= c!93216 (and (is-Cons!17727 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38)) (bvslt (_1!5951 (h!18858 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38))) key1!49)))))

(assert (=> d!109301 (isStrictlySorted!467 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38))))

(assert (=> d!109301 (= (insertStrictlySorted!288 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38) key1!49 v2!16) lt!400967)))

(assert (= (and d!109301 c!93216) b!885321))

(assert (= (and d!109301 (not c!93216)) b!885315))

(assert (= (and b!885315 c!93219) b!885323))

(assert (= (and b!885315 (not c!93219)) b!885322))

(assert (= (and b!885322 c!93217) b!885319))

(assert (= (and b!885322 (not c!93217)) b!885324))

(assert (= (or b!885319 b!885324) bm!39106))

(assert (= (or b!885323 bm!39106) bm!39104))

(assert (= (or b!885321 bm!39104) bm!39105))

(assert (= (and bm!39105 c!93218) b!885318))

(assert (= (and bm!39105 (not c!93218)) b!885317))

(assert (= (and d!109301 res!601361) b!885320))

(assert (= (and b!885320 res!601362) b!885316))

(declare-fun m!825641 () Bool)

(assert (=> d!109301 m!825641))

(assert (=> d!109301 m!825515))

(declare-fun m!825643 () Bool)

(assert (=> d!109301 m!825643))

(declare-fun m!825645 () Bool)

(assert (=> b!885320 m!825645))

(declare-fun m!825647 () Bool)

(assert (=> b!885318 m!825647))

(declare-fun m!825649 () Bool)

(assert (=> b!885316 m!825649))

(declare-fun m!825651 () Bool)

(assert (=> bm!39105 m!825651))

(assert (=> b!885153 d!109301))

(declare-fun b!885339 () Bool)

(declare-fun e!492758 () List!17731)

(declare-fun e!492756 () List!17731)

(assert (=> b!885339 (= e!492758 e!492756)))

(declare-fun c!93227 () Bool)

(assert (=> b!885339 (= c!93227 (and (is-Cons!17727 (t!25016 l!906)) (= (_1!5951 (h!18858 (t!25016 l!906))) key1!49)))))

(declare-fun bm!39110 () Bool)

(declare-fun call!39115 () List!17731)

(declare-fun call!39113 () List!17731)

(assert (=> bm!39110 (= call!39115 call!39113)))

(declare-fun lt!400969 () List!17731)

(declare-fun b!885340 () Bool)

(declare-fun e!492757 () Bool)

(assert (=> b!885340 (= e!492757 (contains!4287 lt!400969 (tuple2!11883 key1!49 v2!16)))))

(declare-fun e!492755 () List!17731)

(declare-fun b!885341 () Bool)

(declare-fun c!93225 () Bool)

(assert (=> b!885341 (= e!492755 (ite c!93227 (t!25016 (t!25016 l!906)) (ite c!93225 (Cons!17727 (h!18858 (t!25016 l!906)) (t!25016 (t!25016 l!906))) Nil!17728)))))

(declare-fun b!885342 () Bool)

(assert (=> b!885342 (= e!492755 (insertStrictlySorted!288 (t!25016 (t!25016 l!906)) key1!49 v2!16))))

(declare-fun b!885343 () Bool)

(declare-fun e!492754 () List!17731)

(declare-fun call!39114 () List!17731)

(assert (=> b!885343 (= e!492754 call!39114)))

(declare-fun b!885345 () Bool)

(assert (=> b!885345 (= e!492758 call!39113)))

(declare-fun bm!39111 () Bool)

(declare-fun c!93224 () Bool)

(assert (=> bm!39111 (= call!39113 ($colon$colon!542 e!492755 (ite c!93224 (h!18858 (t!25016 l!906)) (tuple2!11883 key1!49 v2!16))))))

(declare-fun c!93226 () Bool)

(assert (=> bm!39111 (= c!93226 c!93224)))

(declare-fun b!885346 () Bool)

(assert (=> b!885346 (= c!93225 (and (is-Cons!17727 (t!25016 l!906)) (bvsgt (_1!5951 (h!18858 (t!25016 l!906))) key1!49)))))

(assert (=> b!885346 (= e!492756 e!492754)))

(declare-fun bm!39112 () Bool)

(assert (=> bm!39112 (= call!39114 call!39115)))

(declare-fun b!885347 () Bool)

(assert (=> b!885347 (= e!492756 call!39115)))

(declare-fun b!885348 () Bool)

(assert (=> b!885348 (= e!492754 call!39114)))

(declare-fun b!885344 () Bool)

(declare-fun res!601370 () Bool)

(assert (=> b!885344 (=> (not res!601370) (not e!492757))))

(assert (=> b!885344 (= res!601370 (containsKey!408 lt!400969 key1!49))))

(declare-fun d!109317 () Bool)

(assert (=> d!109317 e!492757))

(declare-fun res!601369 () Bool)

(assert (=> d!109317 (=> (not res!601369) (not e!492757))))

(assert (=> d!109317 (= res!601369 (isStrictlySorted!467 lt!400969))))

(assert (=> d!109317 (= lt!400969 e!492758)))

(assert (=> d!109317 (= c!93224 (and (is-Cons!17727 (t!25016 l!906)) (bvslt (_1!5951 (h!18858 (t!25016 l!906))) key1!49)))))

(assert (=> d!109317 (isStrictlySorted!467 (t!25016 l!906))))

(assert (=> d!109317 (= (insertStrictlySorted!288 (t!25016 l!906) key1!49 v2!16) lt!400969)))

(assert (= (and d!109317 c!93224) b!885345))

(assert (= (and d!109317 (not c!93224)) b!885339))

(assert (= (and b!885339 c!93227) b!885347))

(assert (= (and b!885339 (not c!93227)) b!885346))

(assert (= (and b!885346 c!93225) b!885343))

(assert (= (and b!885346 (not c!93225)) b!885348))

(assert (= (or b!885343 b!885348) bm!39112))

(assert (= (or b!885347 bm!39112) bm!39110))

(assert (= (or b!885345 bm!39110) bm!39111))

(assert (= (and bm!39111 c!93226) b!885342))

(assert (= (and bm!39111 (not c!93226)) b!885341))

(assert (= (and d!109317 res!601369) b!885344))

(assert (= (and b!885344 res!601370) b!885340))

(declare-fun m!825661 () Bool)

(assert (=> d!109317 m!825661))

(assert (=> d!109317 m!825529))

(declare-fun m!825663 () Bool)

(assert (=> b!885344 m!825663))

(declare-fun m!825665 () Bool)

(assert (=> b!885342 m!825665))

(declare-fun m!825667 () Bool)

(assert (=> b!885340 m!825667))

(declare-fun m!825669 () Bool)

(assert (=> bm!39111 m!825669))

(assert (=> b!885153 d!109317))

(declare-fun b!885353 () Bool)

(declare-fun e!492767 () List!17731)

(declare-fun e!492763 () List!17731)

(assert (=> b!885353 (= e!492767 e!492763)))

(declare-fun c!93231 () Bool)

(assert (=> b!885353 (= c!93231 (and (is-Cons!17727 (t!25016 l!906)) (= (_1!5951 (h!18858 (t!25016 l!906))) key1!49)))))

(declare-fun bm!39113 () Bool)

(declare-fun call!39118 () List!17731)

(declare-fun call!39116 () List!17731)

(assert (=> bm!39113 (= call!39118 call!39116)))

(declare-fun e!492765 () Bool)

(declare-fun lt!400970 () List!17731)

(declare-fun b!885354 () Bool)

(assert (=> b!885354 (= e!492765 (contains!4287 lt!400970 (tuple2!11883 key1!49 v1!38)))))

(declare-fun b!885355 () Bool)

(declare-fun c!93229 () Bool)

(declare-fun e!492762 () List!17731)

(assert (=> b!885355 (= e!492762 (ite c!93231 (t!25016 (t!25016 l!906)) (ite c!93229 (Cons!17727 (h!18858 (t!25016 l!906)) (t!25016 (t!25016 l!906))) Nil!17728)))))

(declare-fun b!885356 () Bool)

(assert (=> b!885356 (= e!492762 (insertStrictlySorted!288 (t!25016 (t!25016 l!906)) key1!49 v1!38))))

(declare-fun b!885357 () Bool)

(declare-fun e!492761 () List!17731)

(declare-fun call!39117 () List!17731)

(assert (=> b!885357 (= e!492761 call!39117)))

(declare-fun b!885359 () Bool)

(assert (=> b!885359 (= e!492767 call!39116)))

(declare-fun c!93228 () Bool)

(declare-fun bm!39114 () Bool)

(assert (=> bm!39114 (= call!39116 ($colon$colon!542 e!492762 (ite c!93228 (h!18858 (t!25016 l!906)) (tuple2!11883 key1!49 v1!38))))))

(declare-fun c!93230 () Bool)

(assert (=> bm!39114 (= c!93230 c!93228)))

(declare-fun b!885360 () Bool)

(assert (=> b!885360 (= c!93229 (and (is-Cons!17727 (t!25016 l!906)) (bvsgt (_1!5951 (h!18858 (t!25016 l!906))) key1!49)))))

(assert (=> b!885360 (= e!492763 e!492761)))

(declare-fun bm!39115 () Bool)

(assert (=> bm!39115 (= call!39117 call!39118)))

(declare-fun b!885361 () Bool)

(assert (=> b!885361 (= e!492763 call!39118)))

(declare-fun b!885362 () Bool)

(assert (=> b!885362 (= e!492761 call!39117)))

(declare-fun b!885358 () Bool)

(declare-fun res!601376 () Bool)

(assert (=> b!885358 (=> (not res!601376) (not e!492765))))

(assert (=> b!885358 (= res!601376 (containsKey!408 lt!400970 key1!49))))

(declare-fun d!109321 () Bool)

(assert (=> d!109321 e!492765))

(declare-fun res!601373 () Bool)

(assert (=> d!109321 (=> (not res!601373) (not e!492765))))

(assert (=> d!109321 (= res!601373 (isStrictlySorted!467 lt!400970))))

(assert (=> d!109321 (= lt!400970 e!492767)))

(assert (=> d!109321 (= c!93228 (and (is-Cons!17727 (t!25016 l!906)) (bvslt (_1!5951 (h!18858 (t!25016 l!906))) key1!49)))))

(assert (=> d!109321 (isStrictlySorted!467 (t!25016 l!906))))

(assert (=> d!109321 (= (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38) lt!400970)))

(assert (= (and d!109321 c!93228) b!885359))

(assert (= (and d!109321 (not c!93228)) b!885353))

(assert (= (and b!885353 c!93231) b!885361))

(assert (= (and b!885353 (not c!93231)) b!885360))

(assert (= (and b!885360 c!93229) b!885357))

(assert (= (and b!885360 (not c!93229)) b!885362))

(assert (= (or b!885357 b!885362) bm!39115))

(assert (= (or b!885361 bm!39115) bm!39113))

(assert (= (or b!885359 bm!39113) bm!39114))

(assert (= (and bm!39114 c!93230) b!885356))

(assert (= (and bm!39114 (not c!93230)) b!885355))

(assert (= (and d!109321 res!601373) b!885358))

(assert (= (and b!885358 res!601376) b!885354))

(declare-fun m!825675 () Bool)

(assert (=> d!109321 m!825675))

(assert (=> d!109321 m!825529))

(declare-fun m!825677 () Bool)

(assert (=> b!885358 m!825677))

(declare-fun m!825679 () Bool)

(assert (=> b!885356 m!825679))

(declare-fun m!825681 () Bool)

(assert (=> b!885354 m!825681))

(declare-fun m!825683 () Bool)

(assert (=> bm!39114 m!825683))

(assert (=> b!885153 d!109321))

(declare-fun b!885373 () Bool)

(declare-fun e!492780 () List!17731)

(declare-fun e!492778 () List!17731)

(assert (=> b!885373 (= e!492780 e!492778)))

(declare-fun c!93235 () Bool)

(assert (=> b!885373 (= c!93235 (and (is-Cons!17727 l!906) (= (_1!5951 (h!18858 l!906)) key1!49)))))

(declare-fun bm!39116 () Bool)

(declare-fun call!39121 () List!17731)

(declare-fun call!39119 () List!17731)

(assert (=> bm!39116 (= call!39121 call!39119)))

(declare-fun lt!400971 () List!17731)

(declare-fun e!492779 () Bool)

(declare-fun b!885374 () Bool)

(assert (=> b!885374 (= e!492779 (contains!4287 lt!400971 (tuple2!11883 key1!49 v1!38)))))

(declare-fun c!93233 () Bool)

(declare-fun b!885375 () Bool)

(declare-fun e!492777 () List!17731)

(assert (=> b!885375 (= e!492777 (ite c!93235 (t!25016 l!906) (ite c!93233 (Cons!17727 (h!18858 l!906) (t!25016 l!906)) Nil!17728)))))

(declare-fun b!885376 () Bool)

(assert (=> b!885376 (= e!492777 (insertStrictlySorted!288 (t!25016 l!906) key1!49 v1!38))))

(declare-fun b!885377 () Bool)

(declare-fun e!492776 () List!17731)

(declare-fun call!39120 () List!17731)

(assert (=> b!885377 (= e!492776 call!39120)))

(declare-fun b!885379 () Bool)

(assert (=> b!885379 (= e!492780 call!39119)))

(declare-fun c!93232 () Bool)

(declare-fun bm!39117 () Bool)

(assert (=> bm!39117 (= call!39119 ($colon$colon!542 e!492777 (ite c!93232 (h!18858 l!906) (tuple2!11883 key1!49 v1!38))))))

(declare-fun c!93234 () Bool)

(assert (=> bm!39117 (= c!93234 c!93232)))

(declare-fun b!885380 () Bool)

(assert (=> b!885380 (= c!93233 (and (is-Cons!17727 l!906) (bvsgt (_1!5951 (h!18858 l!906)) key1!49)))))

(assert (=> b!885380 (= e!492778 e!492776)))

(declare-fun bm!39118 () Bool)

(assert (=> bm!39118 (= call!39120 call!39121)))

(declare-fun b!885381 () Bool)

(assert (=> b!885381 (= e!492778 call!39121)))

(declare-fun b!885382 () Bool)

(assert (=> b!885382 (= e!492776 call!39120)))

(declare-fun b!885378 () Bool)

(declare-fun res!601384 () Bool)

(assert (=> b!885378 (=> (not res!601384) (not e!492779))))

(assert (=> b!885378 (= res!601384 (containsKey!408 lt!400971 key1!49))))

(declare-fun d!109327 () Bool)

(assert (=> d!109327 e!492779))

(declare-fun res!601383 () Bool)

(assert (=> d!109327 (=> (not res!601383) (not e!492779))))

(assert (=> d!109327 (= res!601383 (isStrictlySorted!467 lt!400971))))

(assert (=> d!109327 (= lt!400971 e!492780)))

(assert (=> d!109327 (= c!93232 (and (is-Cons!17727 l!906) (bvslt (_1!5951 (h!18858 l!906)) key1!49)))))

(assert (=> d!109327 (isStrictlySorted!467 l!906)))

(assert (=> d!109327 (= (insertStrictlySorted!288 l!906 key1!49 v1!38) lt!400971)))

(assert (= (and d!109327 c!93232) b!885379))

(assert (= (and d!109327 (not c!93232)) b!885373))

(assert (= (and b!885373 c!93235) b!885381))

(assert (= (and b!885373 (not c!93235)) b!885380))

(assert (= (and b!885380 c!93233) b!885377))

(assert (= (and b!885380 (not c!93233)) b!885382))

(assert (= (or b!885377 b!885382) bm!39118))

(assert (= (or b!885381 bm!39118) bm!39116))

(assert (= (or b!885379 bm!39116) bm!39117))

(assert (= (and bm!39117 c!93234) b!885376))

(assert (= (and bm!39117 (not c!93234)) b!885375))

(assert (= (and d!109327 res!601383) b!885378))

(assert (= (and b!885378 res!601384) b!885374))

(declare-fun m!825685 () Bool)

(assert (=> d!109327 m!825685))

(assert (=> d!109327 m!825527))

(declare-fun m!825689 () Bool)

(assert (=> b!885378 m!825689))

(assert (=> b!885376 m!825515))

(declare-fun m!825691 () Bool)

(assert (=> b!885374 m!825691))

(declare-fun m!825693 () Bool)

(assert (=> bm!39117 m!825693))

(assert (=> b!885153 d!109327))

(declare-fun d!109331 () Bool)

(declare-fun res!601389 () Bool)

(declare-fun e!492786 () Bool)

(assert (=> d!109331 (=> res!601389 e!492786)))

(assert (=> d!109331 (= res!601389 (or (is-Nil!17728 (insertStrictlySorted!288 l!906 key1!49 v1!38)) (is-Nil!17728 (t!25016 (insertStrictlySorted!288 l!906 key1!49 v1!38)))))))

(assert (=> d!109331 (= (isStrictlySorted!467 (insertStrictlySorted!288 l!906 key1!49 v1!38)) e!492786)))

(declare-fun b!885388 () Bool)

(declare-fun e!492787 () Bool)

(assert (=> b!885388 (= e!492786 e!492787)))

(declare-fun res!601390 () Bool)

(assert (=> b!885388 (=> (not res!601390) (not e!492787))))

(assert (=> b!885388 (= res!601390 (bvslt (_1!5951 (h!18858 (insertStrictlySorted!288 l!906 key1!49 v1!38))) (_1!5951 (h!18858 (t!25016 (insertStrictlySorted!288 l!906 key1!49 v1!38))))))))

(declare-fun b!885389 () Bool)

(assert (=> b!885389 (= e!492787 (isStrictlySorted!467 (t!25016 (insertStrictlySorted!288 l!906 key1!49 v1!38))))))

(assert (= (and d!109331 (not res!601389)) b!885388))

(assert (= (and b!885388 res!601390) b!885389))

(declare-fun m!825697 () Bool)

(assert (=> b!885389 m!825697))

(assert (=> b!885153 d!109331))

(declare-fun d!109335 () Bool)

(declare-fun res!601393 () Bool)

