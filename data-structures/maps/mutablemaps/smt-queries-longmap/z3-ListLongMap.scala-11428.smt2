; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133326 () Bool)

(assert start!133326)

(declare-fun res!1066143 () Bool)

(declare-fun e!868418 () Bool)

(assert (=> start!133326 (=> (not res!1066143) (not e!868418))))

(declare-datatypes ((B!2446 0))(
  ( (B!2447 (val!19309 Int)) )
))
(declare-datatypes ((tuple2!25134 0))(
  ( (tuple2!25135 (_1!12577 (_ BitVec 64)) (_2!12577 B!2446)) )
))
(declare-datatypes ((List!36489 0))(
  ( (Nil!36486) (Cons!36485 (h!37932 tuple2!25134) (t!51226 List!36489)) )
))
(declare-fun l!1292 () List!36489)

(declare-fun isStrictlySorted!980 (List!36489) Bool)

(assert (=> start!133326 (= res!1066143 (isStrictlySorted!980 l!1292))))

(assert (=> start!133326 e!868418))

(declare-fun e!868419 () Bool)

(assert (=> start!133326 e!868419))

(assert (=> start!133326 true))

(declare-fun tp_is_empty!38451 () Bool)

(assert (=> start!133326 tp_is_empty!38451))

(declare-fun newValue!135 () B!2446)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun newKey!135 () (_ BitVec 64))

(declare-fun b!1558755 () Bool)

(declare-fun containsKey!844 (List!36489 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!573 (List!36489 (_ BitVec 64) B!2446) List!36489)

(assert (=> b!1558755 (= e!868418 (not (containsKey!844 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135) otherKey!62)))))

(declare-fun b!1558753 () Bool)

(declare-fun res!1066142 () Bool)

(assert (=> b!1558753 (=> (not res!1066142) (not e!868418))))

(assert (=> b!1558753 (= res!1066142 (containsKey!844 l!1292 otherKey!62))))

(declare-fun b!1558754 () Bool)

(declare-fun res!1066141 () Bool)

(assert (=> b!1558754 (=> (not res!1066141) (not e!868418))))

(get-info :version)

(assert (=> b!1558754 (= res!1066141 (and (not (= otherKey!62 newKey!135)) (or (not ((_ is Cons!36485) l!1292)) (= (_1!12577 (h!37932 l!1292)) otherKey!62))))))

(declare-fun b!1558756 () Bool)

(declare-fun tp!112681 () Bool)

(assert (=> b!1558756 (= e!868419 (and tp_is_empty!38451 tp!112681))))

(assert (= (and start!133326 res!1066143) b!1558753))

(assert (= (and b!1558753 res!1066142) b!1558754))

(assert (= (and b!1558754 res!1066141) b!1558755))

(assert (= (and start!133326 ((_ is Cons!36485) l!1292)) b!1558756))

(declare-fun m!1435277 () Bool)

(assert (=> start!133326 m!1435277))

(declare-fun m!1435279 () Bool)

(assert (=> b!1558755 m!1435279))

(assert (=> b!1558755 m!1435279))

(declare-fun m!1435281 () Bool)

(assert (=> b!1558755 m!1435281))

(declare-fun m!1435283 () Bool)

(assert (=> b!1558753 m!1435283))

(check-sat tp_is_empty!38451 (not b!1558755) (not b!1558756) (not start!133326) (not b!1558753))
(check-sat)
(get-model)

(declare-fun d!162737 () Bool)

(declare-fun res!1066157 () Bool)

(declare-fun e!868430 () Bool)

(assert (=> d!162737 (=> res!1066157 e!868430)))

(assert (=> d!162737 (= res!1066157 (and ((_ is Cons!36485) (insertStrictlySorted!573 l!1292 newKey!135 newValue!135)) (= (_1!12577 (h!37932 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162737 (= (containsKey!844 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135) otherKey!62) e!868430)))

(declare-fun b!1558773 () Bool)

(declare-fun e!868431 () Bool)

(assert (=> b!1558773 (= e!868430 e!868431)))

(declare-fun res!1066158 () Bool)

(assert (=> b!1558773 (=> (not res!1066158) (not e!868431))))

(assert (=> b!1558773 (= res!1066158 (and (or (not ((_ is Cons!36485) (insertStrictlySorted!573 l!1292 newKey!135 newValue!135))) (bvsle (_1!12577 (h!37932 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135))) otherKey!62)) ((_ is Cons!36485) (insertStrictlySorted!573 l!1292 newKey!135 newValue!135)) (bvslt (_1!12577 (h!37932 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1558774 () Bool)

(assert (=> b!1558774 (= e!868431 (containsKey!844 (t!51226 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162737 (not res!1066157)) b!1558773))

(assert (= (and b!1558773 res!1066158) b!1558774))

(declare-fun m!1435293 () Bool)

(assert (=> b!1558774 m!1435293))

(assert (=> b!1558755 d!162737))

(declare-fun b!1558845 () Bool)

(declare-fun e!868484 () List!36489)

(declare-fun call!71808 () List!36489)

(assert (=> b!1558845 (= e!868484 call!71808)))

(declare-fun bm!71801 () Bool)

(declare-fun call!71810 () List!36489)

(assert (=> bm!71801 (= call!71808 call!71810)))

(declare-fun lt!670758 () List!36489)

(declare-fun b!1558846 () Bool)

(declare-fun e!868483 () Bool)

(declare-fun contains!10221 (List!36489 tuple2!25134) Bool)

(assert (=> b!1558846 (= e!868483 (contains!10221 lt!670758 (tuple2!25135 newKey!135 newValue!135)))))

(declare-fun bm!71802 () Bool)

(declare-fun e!868480 () List!36489)

(declare-fun call!71809 () List!36489)

(declare-fun c!144122 () Bool)

(declare-fun $colon$colon!986 (List!36489 tuple2!25134) List!36489)

(assert (=> bm!71802 (= call!71809 ($colon$colon!986 e!868480 (ite c!144122 (h!37932 l!1292) (tuple2!25135 newKey!135 newValue!135))))))

(declare-fun c!144119 () Bool)

(assert (=> bm!71802 (= c!144119 c!144122)))

(declare-fun b!1558847 () Bool)

(declare-fun e!868482 () List!36489)

(assert (=> b!1558847 (= e!868482 call!71810)))

(declare-fun b!1558848 () Bool)

(declare-fun e!868481 () List!36489)

(assert (=> b!1558848 (= e!868481 call!71809)))

(declare-fun c!144121 () Bool)

(declare-fun b!1558849 () Bool)

(declare-fun c!144120 () Bool)

(assert (=> b!1558849 (= e!868480 (ite c!144121 (t!51226 l!1292) (ite c!144120 (Cons!36485 (h!37932 l!1292) (t!51226 l!1292)) Nil!36486)))))

(declare-fun b!1558850 () Bool)

(declare-fun res!1066190 () Bool)

(assert (=> b!1558850 (=> (not res!1066190) (not e!868483))))

(assert (=> b!1558850 (= res!1066190 (containsKey!844 lt!670758 newKey!135))))

(declare-fun b!1558851 () Bool)

(assert (=> b!1558851 (= c!144120 (and ((_ is Cons!36485) l!1292) (bvsgt (_1!12577 (h!37932 l!1292)) newKey!135)))))

(assert (=> b!1558851 (= e!868482 e!868484)))

(declare-fun b!1558852 () Bool)

(assert (=> b!1558852 (= e!868480 (insertStrictlySorted!573 (t!51226 l!1292) newKey!135 newValue!135))))

(declare-fun b!1558853 () Bool)

(assert (=> b!1558853 (= e!868484 call!71808)))

(declare-fun b!1558854 () Bool)

(assert (=> b!1558854 (= e!868481 e!868482)))

(assert (=> b!1558854 (= c!144121 (and ((_ is Cons!36485) l!1292) (= (_1!12577 (h!37932 l!1292)) newKey!135)))))

(declare-fun bm!71803 () Bool)

(assert (=> bm!71803 (= call!71810 call!71809)))

(declare-fun d!162743 () Bool)

(assert (=> d!162743 e!868483))

(declare-fun res!1066189 () Bool)

(assert (=> d!162743 (=> (not res!1066189) (not e!868483))))

(assert (=> d!162743 (= res!1066189 (isStrictlySorted!980 lt!670758))))

(assert (=> d!162743 (= lt!670758 e!868481)))

(assert (=> d!162743 (= c!144122 (and ((_ is Cons!36485) l!1292) (bvslt (_1!12577 (h!37932 l!1292)) newKey!135)))))

(assert (=> d!162743 (isStrictlySorted!980 l!1292)))

(assert (=> d!162743 (= (insertStrictlySorted!573 l!1292 newKey!135 newValue!135) lt!670758)))

(assert (= (and d!162743 c!144122) b!1558848))

(assert (= (and d!162743 (not c!144122)) b!1558854))

(assert (= (and b!1558854 c!144121) b!1558847))

(assert (= (and b!1558854 (not c!144121)) b!1558851))

(assert (= (and b!1558851 c!144120) b!1558853))

(assert (= (and b!1558851 (not c!144120)) b!1558845))

(assert (= (or b!1558853 b!1558845) bm!71801))

(assert (= (or b!1558847 bm!71801) bm!71803))

(assert (= (or b!1558848 bm!71803) bm!71802))

(assert (= (and bm!71802 c!144119) b!1558852))

(assert (= (and bm!71802 (not c!144119)) b!1558849))

(assert (= (and d!162743 res!1066189) b!1558850))

(assert (= (and b!1558850 res!1066190) b!1558846))

(declare-fun m!1435305 () Bool)

(assert (=> b!1558852 m!1435305))

(declare-fun m!1435307 () Bool)

(assert (=> d!162743 m!1435307))

(assert (=> d!162743 m!1435277))

(declare-fun m!1435309 () Bool)

(assert (=> b!1558850 m!1435309))

(declare-fun m!1435311 () Bool)

(assert (=> b!1558846 m!1435311))

(declare-fun m!1435313 () Bool)

(assert (=> bm!71802 m!1435313))

(assert (=> b!1558755 d!162743))

(declare-fun d!162755 () Bool)

(declare-fun res!1066203 () Bool)

(declare-fun e!868497 () Bool)

(assert (=> d!162755 (=> res!1066203 e!868497)))

(assert (=> d!162755 (= res!1066203 (or ((_ is Nil!36486) l!1292) ((_ is Nil!36486) (t!51226 l!1292))))))

(assert (=> d!162755 (= (isStrictlySorted!980 l!1292) e!868497)))

(declare-fun b!1558875 () Bool)

(declare-fun e!868498 () Bool)

(assert (=> b!1558875 (= e!868497 e!868498)))

(declare-fun res!1066204 () Bool)

(assert (=> b!1558875 (=> (not res!1066204) (not e!868498))))

(assert (=> b!1558875 (= res!1066204 (bvslt (_1!12577 (h!37932 l!1292)) (_1!12577 (h!37932 (t!51226 l!1292)))))))

(declare-fun b!1558876 () Bool)

(assert (=> b!1558876 (= e!868498 (isStrictlySorted!980 (t!51226 l!1292)))))

(assert (= (and d!162755 (not res!1066203)) b!1558875))

(assert (= (and b!1558875 res!1066204) b!1558876))

(declare-fun m!1435315 () Bool)

(assert (=> b!1558876 m!1435315))

(assert (=> start!133326 d!162755))

(declare-fun d!162757 () Bool)

(declare-fun res!1066205 () Bool)

(declare-fun e!868499 () Bool)

(assert (=> d!162757 (=> res!1066205 e!868499)))

(assert (=> d!162757 (= res!1066205 (and ((_ is Cons!36485) l!1292) (= (_1!12577 (h!37932 l!1292)) otherKey!62)))))

(assert (=> d!162757 (= (containsKey!844 l!1292 otherKey!62) e!868499)))

(declare-fun b!1558877 () Bool)

(declare-fun e!868500 () Bool)

(assert (=> b!1558877 (= e!868499 e!868500)))

(declare-fun res!1066206 () Bool)

(assert (=> b!1558877 (=> (not res!1066206) (not e!868500))))

(assert (=> b!1558877 (= res!1066206 (and (or (not ((_ is Cons!36485) l!1292)) (bvsle (_1!12577 (h!37932 l!1292)) otherKey!62)) ((_ is Cons!36485) l!1292) (bvslt (_1!12577 (h!37932 l!1292)) otherKey!62)))))

(declare-fun b!1558878 () Bool)

(assert (=> b!1558878 (= e!868500 (containsKey!844 (t!51226 l!1292) otherKey!62))))

(assert (= (and d!162757 (not res!1066205)) b!1558877))

(assert (= (and b!1558877 res!1066206) b!1558878))

(declare-fun m!1435317 () Bool)

(assert (=> b!1558878 m!1435317))

(assert (=> b!1558753 d!162757))

(declare-fun b!1558883 () Bool)

(declare-fun e!868503 () Bool)

(declare-fun tp!112687 () Bool)

(assert (=> b!1558883 (= e!868503 (and tp_is_empty!38451 tp!112687))))

(assert (=> b!1558756 (= tp!112681 e!868503)))

(assert (= (and b!1558756 ((_ is Cons!36485) (t!51226 l!1292))) b!1558883))

(check-sat tp_is_empty!38451 (not bm!71802) (not b!1558846) (not b!1558852) (not b!1558876) (not b!1558878) (not b!1558850) (not b!1558774) (not b!1558883) (not d!162743))
(check-sat)
(get-model)

(declare-fun d!162771 () Bool)

(assert (=> d!162771 (= ($colon$colon!986 e!868480 (ite c!144122 (h!37932 l!1292) (tuple2!25135 newKey!135 newValue!135))) (Cons!36485 (ite c!144122 (h!37932 l!1292) (tuple2!25135 newKey!135 newValue!135)) e!868480))))

(assert (=> bm!71802 d!162771))

(declare-fun b!1558942 () Bool)

(declare-fun e!868547 () List!36489)

(declare-fun call!71824 () List!36489)

(assert (=> b!1558942 (= e!868547 call!71824)))

(declare-fun bm!71821 () Bool)

(declare-fun call!71826 () List!36489)

(assert (=> bm!71821 (= call!71824 call!71826)))

(declare-fun lt!670765 () List!36489)

(declare-fun b!1558943 () Bool)

(declare-fun e!868546 () Bool)

(assert (=> b!1558943 (= e!868546 (contains!10221 lt!670765 (tuple2!25135 newKey!135 newValue!135)))))

(declare-fun bm!71822 () Bool)

(declare-fun call!71825 () List!36489)

(declare-fun c!144142 () Bool)

(declare-fun e!868543 () List!36489)

(assert (=> bm!71822 (= call!71825 ($colon$colon!986 e!868543 (ite c!144142 (h!37932 (t!51226 l!1292)) (tuple2!25135 newKey!135 newValue!135))))))

(declare-fun c!144139 () Bool)

(assert (=> bm!71822 (= c!144139 c!144142)))

(declare-fun b!1558944 () Bool)

(declare-fun e!868545 () List!36489)

(assert (=> b!1558944 (= e!868545 call!71826)))

(declare-fun b!1558945 () Bool)

(declare-fun e!868544 () List!36489)

(assert (=> b!1558945 (= e!868544 call!71825)))

(declare-fun b!1558946 () Bool)

(declare-fun c!144140 () Bool)

(declare-fun c!144141 () Bool)

(assert (=> b!1558946 (= e!868543 (ite c!144141 (t!51226 (t!51226 l!1292)) (ite c!144140 (Cons!36485 (h!37932 (t!51226 l!1292)) (t!51226 (t!51226 l!1292))) Nil!36486)))))

(declare-fun b!1558947 () Bool)

(declare-fun res!1066232 () Bool)

(assert (=> b!1558947 (=> (not res!1066232) (not e!868546))))

(assert (=> b!1558947 (= res!1066232 (containsKey!844 lt!670765 newKey!135))))

(declare-fun b!1558948 () Bool)

(assert (=> b!1558948 (= c!144140 (and ((_ is Cons!36485) (t!51226 l!1292)) (bvsgt (_1!12577 (h!37932 (t!51226 l!1292))) newKey!135)))))

(assert (=> b!1558948 (= e!868545 e!868547)))

(declare-fun b!1558949 () Bool)

(assert (=> b!1558949 (= e!868543 (insertStrictlySorted!573 (t!51226 (t!51226 l!1292)) newKey!135 newValue!135))))

(declare-fun b!1558950 () Bool)

(assert (=> b!1558950 (= e!868547 call!71824)))

(declare-fun b!1558951 () Bool)

(assert (=> b!1558951 (= e!868544 e!868545)))

(assert (=> b!1558951 (= c!144141 (and ((_ is Cons!36485) (t!51226 l!1292)) (= (_1!12577 (h!37932 (t!51226 l!1292))) newKey!135)))))

(declare-fun bm!71823 () Bool)

(assert (=> bm!71823 (= call!71826 call!71825)))

(declare-fun d!162779 () Bool)

(assert (=> d!162779 e!868546))

(declare-fun res!1066231 () Bool)

(assert (=> d!162779 (=> (not res!1066231) (not e!868546))))

(assert (=> d!162779 (= res!1066231 (isStrictlySorted!980 lt!670765))))

(assert (=> d!162779 (= lt!670765 e!868544)))

(assert (=> d!162779 (= c!144142 (and ((_ is Cons!36485) (t!51226 l!1292)) (bvslt (_1!12577 (h!37932 (t!51226 l!1292))) newKey!135)))))

(assert (=> d!162779 (isStrictlySorted!980 (t!51226 l!1292))))

(assert (=> d!162779 (= (insertStrictlySorted!573 (t!51226 l!1292) newKey!135 newValue!135) lt!670765)))

(assert (= (and d!162779 c!144142) b!1558945))

(assert (= (and d!162779 (not c!144142)) b!1558951))

(assert (= (and b!1558951 c!144141) b!1558944))

(assert (= (and b!1558951 (not c!144141)) b!1558948))

(assert (= (and b!1558948 c!144140) b!1558950))

(assert (= (and b!1558948 (not c!144140)) b!1558942))

(assert (= (or b!1558950 b!1558942) bm!71821))

(assert (= (or b!1558944 bm!71821) bm!71823))

(assert (= (or b!1558945 bm!71823) bm!71822))

(assert (= (and bm!71822 c!144139) b!1558949))

(assert (= (and bm!71822 (not c!144139)) b!1558946))

(assert (= (and d!162779 res!1066231) b!1558947))

(assert (= (and b!1558947 res!1066232) b!1558943))

(declare-fun m!1435367 () Bool)

(assert (=> b!1558949 m!1435367))

(declare-fun m!1435369 () Bool)

(assert (=> d!162779 m!1435369))

(assert (=> d!162779 m!1435315))

(declare-fun m!1435371 () Bool)

(assert (=> b!1558947 m!1435371))

(declare-fun m!1435373 () Bool)

(assert (=> b!1558943 m!1435373))

(declare-fun m!1435375 () Bool)

(assert (=> bm!71822 m!1435375))

(assert (=> b!1558852 d!162779))

(declare-fun d!162781 () Bool)

(declare-fun res!1066233 () Bool)

(declare-fun e!868549 () Bool)

(assert (=> d!162781 (=> res!1066233 e!868549)))

(assert (=> d!162781 (= res!1066233 (and ((_ is Cons!36485) lt!670758) (= (_1!12577 (h!37932 lt!670758)) newKey!135)))))

(assert (=> d!162781 (= (containsKey!844 lt!670758 newKey!135) e!868549)))

(declare-fun b!1558953 () Bool)

(declare-fun e!868550 () Bool)

(assert (=> b!1558953 (= e!868549 e!868550)))

(declare-fun res!1066234 () Bool)

(assert (=> b!1558953 (=> (not res!1066234) (not e!868550))))

(assert (=> b!1558953 (= res!1066234 (and (or (not ((_ is Cons!36485) lt!670758)) (bvsle (_1!12577 (h!37932 lt!670758)) newKey!135)) ((_ is Cons!36485) lt!670758) (bvslt (_1!12577 (h!37932 lt!670758)) newKey!135)))))

(declare-fun b!1558954 () Bool)

(assert (=> b!1558954 (= e!868550 (containsKey!844 (t!51226 lt!670758) newKey!135))))

(assert (= (and d!162781 (not res!1066233)) b!1558953))

(assert (= (and b!1558953 res!1066234) b!1558954))

(declare-fun m!1435377 () Bool)

(assert (=> b!1558954 m!1435377))

(assert (=> b!1558850 d!162781))

(declare-fun d!162783 () Bool)

(declare-fun res!1066235 () Bool)

(declare-fun e!868551 () Bool)

(assert (=> d!162783 (=> res!1066235 e!868551)))

(assert (=> d!162783 (= res!1066235 (and ((_ is Cons!36485) (t!51226 l!1292)) (= (_1!12577 (h!37932 (t!51226 l!1292))) otherKey!62)))))

(assert (=> d!162783 (= (containsKey!844 (t!51226 l!1292) otherKey!62) e!868551)))

(declare-fun b!1558955 () Bool)

(declare-fun e!868552 () Bool)

(assert (=> b!1558955 (= e!868551 e!868552)))

(declare-fun res!1066236 () Bool)

(assert (=> b!1558955 (=> (not res!1066236) (not e!868552))))

(assert (=> b!1558955 (= res!1066236 (and (or (not ((_ is Cons!36485) (t!51226 l!1292))) (bvsle (_1!12577 (h!37932 (t!51226 l!1292))) otherKey!62)) ((_ is Cons!36485) (t!51226 l!1292)) (bvslt (_1!12577 (h!37932 (t!51226 l!1292))) otherKey!62)))))

(declare-fun b!1558956 () Bool)

(assert (=> b!1558956 (= e!868552 (containsKey!844 (t!51226 (t!51226 l!1292)) otherKey!62))))

(assert (= (and d!162783 (not res!1066235)) b!1558955))

(assert (= (and b!1558955 res!1066236) b!1558956))

(declare-fun m!1435379 () Bool)

(assert (=> b!1558956 m!1435379))

(assert (=> b!1558878 d!162783))

(declare-fun d!162785 () Bool)

(declare-fun lt!670768 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!809 (List!36489) (InoxSet tuple2!25134))

(assert (=> d!162785 (= lt!670768 (select (content!809 lt!670758) (tuple2!25135 newKey!135 newValue!135)))))

(declare-fun e!868558 () Bool)

(assert (=> d!162785 (= lt!670768 e!868558)))

(declare-fun res!1066242 () Bool)

(assert (=> d!162785 (=> (not res!1066242) (not e!868558))))

(assert (=> d!162785 (= res!1066242 ((_ is Cons!36485) lt!670758))))

(assert (=> d!162785 (= (contains!10221 lt!670758 (tuple2!25135 newKey!135 newValue!135)) lt!670768)))

(declare-fun b!1558961 () Bool)

(declare-fun e!868557 () Bool)

(assert (=> b!1558961 (= e!868558 e!868557)))

(declare-fun res!1066241 () Bool)

(assert (=> b!1558961 (=> res!1066241 e!868557)))

(assert (=> b!1558961 (= res!1066241 (= (h!37932 lt!670758) (tuple2!25135 newKey!135 newValue!135)))))

(declare-fun b!1558962 () Bool)

(assert (=> b!1558962 (= e!868557 (contains!10221 (t!51226 lt!670758) (tuple2!25135 newKey!135 newValue!135)))))

(assert (= (and d!162785 res!1066242) b!1558961))

(assert (= (and b!1558961 (not res!1066241)) b!1558962))

(declare-fun m!1435381 () Bool)

(assert (=> d!162785 m!1435381))

(declare-fun m!1435383 () Bool)

(assert (=> d!162785 m!1435383))

(declare-fun m!1435385 () Bool)

(assert (=> b!1558962 m!1435385))

(assert (=> b!1558846 d!162785))

(declare-fun d!162787 () Bool)

(declare-fun res!1066243 () Bool)

(declare-fun e!868559 () Bool)

(assert (=> d!162787 (=> res!1066243 e!868559)))

(assert (=> d!162787 (= res!1066243 (or ((_ is Nil!36486) (t!51226 l!1292)) ((_ is Nil!36486) (t!51226 (t!51226 l!1292)))))))

(assert (=> d!162787 (= (isStrictlySorted!980 (t!51226 l!1292)) e!868559)))

(declare-fun b!1558963 () Bool)

(declare-fun e!868560 () Bool)

(assert (=> b!1558963 (= e!868559 e!868560)))

(declare-fun res!1066244 () Bool)

(assert (=> b!1558963 (=> (not res!1066244) (not e!868560))))

(assert (=> b!1558963 (= res!1066244 (bvslt (_1!12577 (h!37932 (t!51226 l!1292))) (_1!12577 (h!37932 (t!51226 (t!51226 l!1292))))))))

(declare-fun b!1558964 () Bool)

(assert (=> b!1558964 (= e!868560 (isStrictlySorted!980 (t!51226 (t!51226 l!1292))))))

(assert (= (and d!162787 (not res!1066243)) b!1558963))

(assert (= (and b!1558963 res!1066244) b!1558964))

(declare-fun m!1435387 () Bool)

(assert (=> b!1558964 m!1435387))

(assert (=> b!1558876 d!162787))

(declare-fun d!162789 () Bool)

(declare-fun res!1066245 () Bool)

(declare-fun e!868561 () Bool)

(assert (=> d!162789 (=> res!1066245 e!868561)))

(assert (=> d!162789 (= res!1066245 (or ((_ is Nil!36486) lt!670758) ((_ is Nil!36486) (t!51226 lt!670758))))))

(assert (=> d!162789 (= (isStrictlySorted!980 lt!670758) e!868561)))

(declare-fun b!1558965 () Bool)

(declare-fun e!868562 () Bool)

(assert (=> b!1558965 (= e!868561 e!868562)))

(declare-fun res!1066246 () Bool)

(assert (=> b!1558965 (=> (not res!1066246) (not e!868562))))

(assert (=> b!1558965 (= res!1066246 (bvslt (_1!12577 (h!37932 lt!670758)) (_1!12577 (h!37932 (t!51226 lt!670758)))))))

(declare-fun b!1558966 () Bool)

(assert (=> b!1558966 (= e!868562 (isStrictlySorted!980 (t!51226 lt!670758)))))

(assert (= (and d!162789 (not res!1066245)) b!1558965))

(assert (= (and b!1558965 res!1066246) b!1558966))

(declare-fun m!1435389 () Bool)

(assert (=> b!1558966 m!1435389))

(assert (=> d!162743 d!162789))

(assert (=> d!162743 d!162755))

(declare-fun d!162791 () Bool)

(declare-fun res!1066247 () Bool)

(declare-fun e!868563 () Bool)

(assert (=> d!162791 (=> res!1066247 e!868563)))

(assert (=> d!162791 (= res!1066247 (and ((_ is Cons!36485) (t!51226 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135))) (= (_1!12577 (h!37932 (t!51226 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135)))) otherKey!62)))))

(assert (=> d!162791 (= (containsKey!844 (t!51226 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135)) otherKey!62) e!868563)))

(declare-fun b!1558967 () Bool)

(declare-fun e!868564 () Bool)

(assert (=> b!1558967 (= e!868563 e!868564)))

(declare-fun res!1066248 () Bool)

(assert (=> b!1558967 (=> (not res!1066248) (not e!868564))))

(assert (=> b!1558967 (= res!1066248 (and (or (not ((_ is Cons!36485) (t!51226 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135)))) (bvsle (_1!12577 (h!37932 (t!51226 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135)))) otherKey!62)) ((_ is Cons!36485) (t!51226 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135))) (bvslt (_1!12577 (h!37932 (t!51226 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135)))) otherKey!62)))))

(declare-fun b!1558968 () Bool)

(assert (=> b!1558968 (= e!868564 (containsKey!844 (t!51226 (t!51226 (insertStrictlySorted!573 l!1292 newKey!135 newValue!135))) otherKey!62))))

(assert (= (and d!162791 (not res!1066247)) b!1558967))

(assert (= (and b!1558967 res!1066248) b!1558968))

(declare-fun m!1435391 () Bool)

(assert (=> b!1558968 m!1435391))

(assert (=> b!1558774 d!162791))

(declare-fun b!1558969 () Bool)

(declare-fun e!868565 () Bool)

(declare-fun tp!112695 () Bool)

(assert (=> b!1558969 (= e!868565 (and tp_is_empty!38451 tp!112695))))

(assert (=> b!1558883 (= tp!112687 e!868565)))

(assert (= (and b!1558883 ((_ is Cons!36485) (t!51226 (t!51226 l!1292)))) b!1558969))

(check-sat tp_is_empty!38451 (not b!1558947) (not b!1558964) (not b!1558969) (not b!1558962) (not b!1558949) (not b!1558943) (not d!162785) (not b!1558966) (not d!162779) (not b!1558956) (not b!1558968) (not b!1558954) (not bm!71822))
(check-sat)
