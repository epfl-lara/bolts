; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138286 () Bool)

(assert start!138286)

(declare-fun res!1082825 () Bool)

(declare-fun e!885168 () Bool)

(assert (=> start!138286 (=> (not res!1082825) (not e!885168))))

(declare-datatypes ((B!2984 0))(
  ( (B!2985 (val!19854 Int)) )
))
(declare-datatypes ((tuple2!26040 0))(
  ( (tuple2!26041 (_1!13030 (_ BitVec 64)) (_2!13030 B!2984)) )
))
(declare-datatypes ((List!37135 0))(
  ( (Nil!37132) (Cons!37131 (h!38675 tuple2!26040) (t!52062 List!37135)) )
))
(declare-fun l!556 () List!37135)

(declare-fun isStrictlySorted!1194 (List!37135) Bool)

(assert (=> start!138286 (= res!1082825 (isStrictlySorted!1194 l!556))))

(assert (=> start!138286 e!885168))

(declare-fun e!885167 () Bool)

(assert (=> start!138286 e!885167))

(assert (=> start!138286 true))

(declare-fun tp_is_empty!39517 () Bool)

(assert (=> start!138286 tp_is_empty!39517))

(declare-fun b!1585354 () Bool)

(declare-fun tp!115264 () Bool)

(assert (=> b!1585354 (= e!885167 (and tp_is_empty!39517 tp!115264))))

(declare-fun b!1585355 () Bool)

(declare-fun e!885166 () Bool)

(assert (=> b!1585355 (= e!885168 e!885166)))

(declare-fun res!1082824 () Bool)

(assert (=> b!1585355 (=> res!1082824 e!885166)))

(declare-fun lt!677305 () List!37135)

(assert (=> b!1585355 (= res!1082824 (not (isStrictlySorted!1194 lt!677305)))))

(declare-fun newValue!21 () B!2984)

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun $colon$colon!1040 (List!37135 tuple2!26040) List!37135)

(declare-fun insertStrictlySorted!634 (List!37135 (_ BitVec 64) B!2984) List!37135)

(assert (=> b!1585355 (= lt!677305 ($colon$colon!1040 (insertStrictlySorted!634 (t!52062 l!556) newKey!21 newValue!21) (h!38675 l!556)))))

(declare-fun b!1585356 () Bool)

(declare-fun res!1082822 () Bool)

(assert (=> b!1585356 (=> res!1082822 e!885166)))

(declare-fun containsKey!1007 (List!37135 (_ BitVec 64)) Bool)

(assert (=> b!1585356 (= res!1082822 (not (containsKey!1007 lt!677305 newKey!21)))))

(declare-fun b!1585357 () Bool)

(declare-fun res!1082823 () Bool)

(assert (=> b!1585357 (=> (not res!1082823) (not e!885168))))

(assert (=> b!1585357 (= res!1082823 (and (is-Cons!37131 l!556) (bvslt (_1!13030 (h!38675 l!556)) newKey!21)))))

(declare-fun b!1585358 () Bool)

(declare-fun contains!10549 (List!37135 tuple2!26040) Bool)

(assert (=> b!1585358 (= e!885166 (not (contains!10549 lt!677305 (tuple2!26041 newKey!21 newValue!21))))))

(assert (= (and start!138286 res!1082825) b!1585357))

(assert (= (and b!1585357 res!1082823) b!1585355))

(assert (= (and b!1585355 (not res!1082824)) b!1585356))

(assert (= (and b!1585356 (not res!1082822)) b!1585358))

(assert (= (and start!138286 (is-Cons!37131 l!556)) b!1585354))

(declare-fun m!1454223 () Bool)

(assert (=> start!138286 m!1454223))

(declare-fun m!1454225 () Bool)

(assert (=> b!1585355 m!1454225))

(declare-fun m!1454227 () Bool)

(assert (=> b!1585355 m!1454227))

(assert (=> b!1585355 m!1454227))

(declare-fun m!1454229 () Bool)

(assert (=> b!1585355 m!1454229))

(declare-fun m!1454231 () Bool)

(assert (=> b!1585356 m!1454231))

(declare-fun m!1454233 () Bool)

(assert (=> b!1585358 m!1454233))

(push 1)

(assert (not b!1585354))

(assert (not start!138286))

(assert tp_is_empty!39517)

(assert (not b!1585356))

(assert (not b!1585355))

(assert (not b!1585358))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!677314 () Bool)

(declare-fun d!167665 () Bool)

(declare-fun content!868 (List!37135) (Set tuple2!26040))

(assert (=> d!167665 (= lt!677314 (set.member (tuple2!26041 newKey!21 newValue!21) (content!868 lt!677305)))))

(declare-fun e!885198 () Bool)

(assert (=> d!167665 (= lt!677314 e!885198)))

(declare-fun res!1082860 () Bool)

(assert (=> d!167665 (=> (not res!1082860) (not e!885198))))

(assert (=> d!167665 (= res!1082860 (is-Cons!37131 lt!677305))))

(assert (=> d!167665 (= (contains!10549 lt!677305 (tuple2!26041 newKey!21 newValue!21)) lt!677314)))

(declare-fun b!1585399 () Bool)

(declare-fun e!885197 () Bool)

(assert (=> b!1585399 (= e!885198 e!885197)))

(declare-fun res!1082861 () Bool)

(assert (=> b!1585399 (=> res!1082861 e!885197)))

(assert (=> b!1585399 (= res!1082861 (= (h!38675 lt!677305) (tuple2!26041 newKey!21 newValue!21)))))

(declare-fun b!1585400 () Bool)

(assert (=> b!1585400 (= e!885197 (contains!10549 (t!52062 lt!677305) (tuple2!26041 newKey!21 newValue!21)))))

(assert (= (and d!167665 res!1082860) b!1585399))

(assert (= (and b!1585399 (not res!1082861)) b!1585400))

(declare-fun m!1454261 () Bool)

(assert (=> d!167665 m!1454261))

(declare-fun m!1454263 () Bool)

(assert (=> d!167665 m!1454263))

(declare-fun m!1454265 () Bool)

(assert (=> b!1585400 m!1454265))

(assert (=> b!1585358 d!167665))

(declare-fun d!167669 () Bool)

(declare-fun res!1082870 () Bool)

(declare-fun e!885207 () Bool)

(assert (=> d!167669 (=> res!1082870 e!885207)))

(assert (=> d!167669 (= res!1082870 (and (is-Cons!37131 lt!677305) (= (_1!13030 (h!38675 lt!677305)) newKey!21)))))

(assert (=> d!167669 (= (containsKey!1007 lt!677305 newKey!21) e!885207)))

(declare-fun b!1585409 () Bool)

(declare-fun e!885208 () Bool)

(assert (=> b!1585409 (= e!885207 e!885208)))

(declare-fun res!1082871 () Bool)

(assert (=> b!1585409 (=> (not res!1082871) (not e!885208))))

(assert (=> b!1585409 (= res!1082871 (and (or (not (is-Cons!37131 lt!677305)) (bvsle (_1!13030 (h!38675 lt!677305)) newKey!21)) (is-Cons!37131 lt!677305) (bvslt (_1!13030 (h!38675 lt!677305)) newKey!21)))))

(declare-fun b!1585410 () Bool)

(assert (=> b!1585410 (= e!885208 (containsKey!1007 (t!52062 lt!677305) newKey!21))))

(assert (= (and d!167669 (not res!1082870)) b!1585409))

(assert (= (and b!1585409 res!1082871) b!1585410))

(declare-fun m!1454267 () Bool)

(assert (=> b!1585410 m!1454267))

(assert (=> b!1585356 d!167669))

(declare-fun d!167673 () Bool)

(declare-fun res!1082878 () Bool)

(declare-fun e!885223 () Bool)

(assert (=> d!167673 (=> res!1082878 e!885223)))

(assert (=> d!167673 (= res!1082878 (or (is-Nil!37132 lt!677305) (is-Nil!37132 (t!52062 lt!677305))))))

(assert (=> d!167673 (= (isStrictlySorted!1194 lt!677305) e!885223)))

(declare-fun b!1585433 () Bool)

(declare-fun e!885224 () Bool)

(assert (=> b!1585433 (= e!885223 e!885224)))

(declare-fun res!1082879 () Bool)

(assert (=> b!1585433 (=> (not res!1082879) (not e!885224))))

(assert (=> b!1585433 (= res!1082879 (bvslt (_1!13030 (h!38675 lt!677305)) (_1!13030 (h!38675 (t!52062 lt!677305)))))))

(declare-fun b!1585434 () Bool)

(assert (=> b!1585434 (= e!885224 (isStrictlySorted!1194 (t!52062 lt!677305)))))

(assert (= (and d!167673 (not res!1082878)) b!1585433))

(assert (= (and b!1585433 res!1082879) b!1585434))

(declare-fun m!1454271 () Bool)

(assert (=> b!1585434 m!1454271))

(assert (=> b!1585355 d!167673))

(declare-fun d!167679 () Bool)

(assert (=> d!167679 (= ($colon$colon!1040 (insertStrictlySorted!634 (t!52062 l!556) newKey!21 newValue!21) (h!38675 l!556)) (Cons!37131 (h!38675 l!556) (insertStrictlySorted!634 (t!52062 l!556) newKey!21 newValue!21)))))

(assert (=> b!1585355 d!167679))

(declare-fun b!1585518 () Bool)

(declare-fun e!885277 () Bool)

(declare-fun lt!677326 () List!37135)

(assert (=> b!1585518 (= e!885277 (contains!10549 lt!677326 (tuple2!26041 newKey!21 newValue!21)))))

(declare-fun bm!72642 () Bool)

(declare-fun call!72647 () List!37135)

(declare-fun call!72645 () List!37135)

(assert (=> bm!72642 (= call!72647 call!72645)))

(declare-fun b!1585519 () Bool)

(declare-fun res!1082911 () Bool)

(assert (=> b!1585519 (=> (not res!1082911) (not e!885277))))

(assert (=> b!1585519 (= res!1082911 (containsKey!1007 lt!677326 newKey!21))))

(declare-fun b!1585520 () Bool)

(declare-fun e!885278 () List!37135)

(assert (=> b!1585520 (= e!885278 call!72647)))

(declare-fun b!1585522 () Bool)

(declare-fun e!885275 () List!37135)

(declare-fun e!885274 () List!37135)

(assert (=> b!1585522 (= e!885275 e!885274)))

(declare-fun c!146960 () Bool)

(assert (=> b!1585522 (= c!146960 (and (is-Cons!37131 (t!52062 l!556)) (= (_1!13030 (h!38675 (t!52062 l!556))) newKey!21)))))

(declare-fun b!1585523 () Bool)

(assert (=> b!1585523 (= e!885278 call!72647)))

(declare-fun b!1585524 () Bool)

(declare-fun call!72646 () List!37135)

(assert (=> b!1585524 (= e!885275 call!72646)))

(declare-fun b!1585525 () Bool)

(assert (=> b!1585525 (= e!885274 call!72645)))

(declare-fun bm!72643 () Bool)

(declare-fun e!885276 () List!37135)

(declare-fun c!146958 () Bool)

(assert (=> bm!72643 (= call!72646 ($colon$colon!1040 e!885276 (ite c!146958 (h!38675 (t!52062 l!556)) (tuple2!26041 newKey!21 newValue!21))))))

(declare-fun c!146959 () Bool)

(assert (=> bm!72643 (= c!146959 c!146958)))

(declare-fun b!1585526 () Bool)

(declare-fun c!146961 () Bool)

(assert (=> b!1585526 (= c!146961 (and (is-Cons!37131 (t!52062 l!556)) (bvsgt (_1!13030 (h!38675 (t!52062 l!556))) newKey!21)))))

(assert (=> b!1585526 (= e!885274 e!885278)))

(declare-fun bm!72644 () Bool)

(assert (=> bm!72644 (= call!72645 call!72646)))

(declare-fun b!1585527 () Bool)

(assert (=> b!1585527 (= e!885276 (ite c!146960 (t!52062 (t!52062 l!556)) (ite c!146961 (Cons!37131 (h!38675 (t!52062 l!556)) (t!52062 (t!52062 l!556))) Nil!37132)))))

(declare-fun b!1585521 () Bool)

(assert (=> b!1585521 (= e!885276 (insertStrictlySorted!634 (t!52062 (t!52062 l!556)) newKey!21 newValue!21))))

(declare-fun d!167681 () Bool)

(assert (=> d!167681 e!885277))

(declare-fun res!1082910 () Bool)

(assert (=> d!167681 (=> (not res!1082910) (not e!885277))))

(assert (=> d!167681 (= res!1082910 (isStrictlySorted!1194 lt!677326))))

(assert (=> d!167681 (= lt!677326 e!885275)))

(assert (=> d!167681 (= c!146958 (and (is-Cons!37131 (t!52062 l!556)) (bvslt (_1!13030 (h!38675 (t!52062 l!556))) newKey!21)))))

(assert (=> d!167681 (isStrictlySorted!1194 (t!52062 l!556))))

(assert (=> d!167681 (= (insertStrictlySorted!634 (t!52062 l!556) newKey!21 newValue!21) lt!677326)))

(assert (= (and d!167681 c!146958) b!1585524))

(assert (= (and d!167681 (not c!146958)) b!1585522))

(assert (= (and b!1585522 c!146960) b!1585525))

(assert (= (and b!1585522 (not c!146960)) b!1585526))

(assert (= (and b!1585526 c!146961) b!1585523))

(assert (= (and b!1585526 (not c!146961)) b!1585520))

(assert (= (or b!1585523 b!1585520) bm!72642))

(assert (= (or b!1585525 bm!72642) bm!72644))

(assert (= (or b!1585524 bm!72644) bm!72643))

(assert (= (and bm!72643 c!146959) b!1585521))

(assert (= (and bm!72643 (not c!146959)) b!1585527))

(assert (= (and d!167681 res!1082910) b!1585519))

(assert (= (and b!1585519 res!1082911) b!1585518))

(declare-fun m!1454305 () Bool)

(assert (=> b!1585521 m!1454305))

(declare-fun m!1454307 () Bool)

(assert (=> bm!72643 m!1454307))

(declare-fun m!1454309 () Bool)

(assert (=> b!1585519 m!1454309))

(declare-fun m!1454311 () Bool)

(assert (=> d!167681 m!1454311))

(declare-fun m!1454313 () Bool)

(assert (=> d!167681 m!1454313))

(declare-fun m!1454315 () Bool)

(assert (=> b!1585518 m!1454315))

(assert (=> b!1585355 d!167681))

(declare-fun d!167691 () Bool)

(declare-fun res!1082916 () Bool)

(declare-fun e!885283 () Bool)

(assert (=> d!167691 (=> res!1082916 e!885283)))

(assert (=> d!167691 (= res!1082916 (or (is-Nil!37132 l!556) (is-Nil!37132 (t!52062 l!556))))))

(assert (=> d!167691 (= (isStrictlySorted!1194 l!556) e!885283)))

(declare-fun b!1585532 () Bool)

(declare-fun e!885284 () Bool)

(assert (=> b!1585532 (= e!885283 e!885284)))

(declare-fun res!1082917 () Bool)

(assert (=> b!1585532 (=> (not res!1082917) (not e!885284))))

(assert (=> b!1585532 (= res!1082917 (bvslt (_1!13030 (h!38675 l!556)) (_1!13030 (h!38675 (t!52062 l!556)))))))

(declare-fun b!1585533 () Bool)

(assert (=> b!1585533 (= e!885284 (isStrictlySorted!1194 (t!52062 l!556)))))

(assert (= (and d!167691 (not res!1082916)) b!1585532))

(assert (= (and b!1585532 res!1082917) b!1585533))

(assert (=> b!1585533 m!1454313))

(assert (=> start!138286 d!167691))

(declare-fun b!1585542 () Bool)

(declare-fun e!885291 () Bool)

(declare-fun tp!115276 () Bool)

(assert (=> b!1585542 (= e!885291 (and tp_is_empty!39517 tp!115276))))

(assert (=> b!1585354 (= tp!115264 e!885291)))

(assert (= (and b!1585354 (is-Cons!37131 (t!52062 l!556))) b!1585542))

(push 1)

(assert (not b!1585434))

(assert (not b!1585410))

(assert (not bm!72643))

(assert (not b!1585542))

(assert tp_is_empty!39517)

(assert (not b!1585400))

(assert (not b!1585518))

(assert (not d!167681))

(assert (not d!167665))

(assert (not b!1585533))

(assert (not b!1585521))

(assert (not b!1585519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167701 () Bool)

(assert (=> d!167701 (= ($colon$colon!1040 e!885276 (ite c!146958 (h!38675 (t!52062 l!556)) (tuple2!26041 newKey!21 newValue!21))) (Cons!37131 (ite c!146958 (h!38675 (t!52062 l!556)) (tuple2!26041 newKey!21 newValue!21)) e!885276))))

(assert (=> bm!72643 d!167701))

(declare-fun e!885308 () Bool)

(declare-fun lt!677330 () List!37135)

(declare-fun b!1585558 () Bool)

(assert (=> b!1585558 (= e!885308 (contains!10549 lt!677330 (tuple2!26041 newKey!21 newValue!21)))))

(declare-fun bm!72645 () Bool)

(declare-fun call!72650 () List!37135)

(declare-fun call!72648 () List!37135)

(assert (=> bm!72645 (= call!72650 call!72648)))

(declare-fun b!1585559 () Bool)

(declare-fun res!1082933 () Bool)

(assert (=> b!1585559 (=> (not res!1082933) (not e!885308))))

(assert (=> b!1585559 (= res!1082933 (containsKey!1007 lt!677330 newKey!21))))

(declare-fun b!1585560 () Bool)

(declare-fun e!885309 () List!37135)

(assert (=> b!1585560 (= e!885309 call!72650)))

(declare-fun b!1585562 () Bool)

(declare-fun e!885306 () List!37135)

(declare-fun e!885305 () List!37135)

(assert (=> b!1585562 (= e!885306 e!885305)))

(declare-fun c!146964 () Bool)

(assert (=> b!1585562 (= c!146964 (and (is-Cons!37131 (t!52062 (t!52062 l!556))) (= (_1!13030 (h!38675 (t!52062 (t!52062 l!556)))) newKey!21)))))

(declare-fun b!1585563 () Bool)

(assert (=> b!1585563 (= e!885309 call!72650)))

(declare-fun b!1585564 () Bool)

(declare-fun call!72649 () List!37135)

(assert (=> b!1585564 (= e!885306 call!72649)))

(declare-fun b!1585565 () Bool)

(assert (=> b!1585565 (= e!885305 call!72648)))

(declare-fun c!146962 () Bool)

(declare-fun bm!72646 () Bool)

(declare-fun e!885307 () List!37135)

(assert (=> bm!72646 (= call!72649 ($colon$colon!1040 e!885307 (ite c!146962 (h!38675 (t!52062 (t!52062 l!556))) (tuple2!26041 newKey!21 newValue!21))))))

(declare-fun c!146963 () Bool)

(assert (=> bm!72646 (= c!146963 c!146962)))

(declare-fun b!1585566 () Bool)

(declare-fun c!146965 () Bool)

(assert (=> b!1585566 (= c!146965 (and (is-Cons!37131 (t!52062 (t!52062 l!556))) (bvsgt (_1!13030 (h!38675 (t!52062 (t!52062 l!556)))) newKey!21)))))

(assert (=> b!1585566 (= e!885305 e!885309)))

(declare-fun bm!72647 () Bool)

(assert (=> bm!72647 (= call!72648 call!72649)))

(declare-fun b!1585567 () Bool)

(assert (=> b!1585567 (= e!885307 (ite c!146964 (t!52062 (t!52062 (t!52062 l!556))) (ite c!146965 (Cons!37131 (h!38675 (t!52062 (t!52062 l!556))) (t!52062 (t!52062 (t!52062 l!556)))) Nil!37132)))))

(declare-fun b!1585561 () Bool)

(assert (=> b!1585561 (= e!885307 (insertStrictlySorted!634 (t!52062 (t!52062 (t!52062 l!556))) newKey!21 newValue!21))))

(declare-fun d!167703 () Bool)

(assert (=> d!167703 e!885308))

(declare-fun res!1082932 () Bool)

(assert (=> d!167703 (=> (not res!1082932) (not e!885308))))

(assert (=> d!167703 (= res!1082932 (isStrictlySorted!1194 lt!677330))))

(assert (=> d!167703 (= lt!677330 e!885306)))

(assert (=> d!167703 (= c!146962 (and (is-Cons!37131 (t!52062 (t!52062 l!556))) (bvslt (_1!13030 (h!38675 (t!52062 (t!52062 l!556)))) newKey!21)))))

(assert (=> d!167703 (isStrictlySorted!1194 (t!52062 (t!52062 l!556)))))

(assert (=> d!167703 (= (insertStrictlySorted!634 (t!52062 (t!52062 l!556)) newKey!21 newValue!21) lt!677330)))

(assert (= (and d!167703 c!146962) b!1585564))

(assert (= (and d!167703 (not c!146962)) b!1585562))

(assert (= (and b!1585562 c!146964) b!1585565))

(assert (= (and b!1585562 (not c!146964)) b!1585566))

(assert (= (and b!1585566 c!146965) b!1585563))

(assert (= (and b!1585566 (not c!146965)) b!1585560))

(assert (= (or b!1585563 b!1585560) bm!72645))

(assert (= (or b!1585565 bm!72645) bm!72647))

(assert (= (or b!1585564 bm!72647) bm!72646))

(assert (= (and bm!72646 c!146963) b!1585561))

(assert (= (and bm!72646 (not c!146963)) b!1585567))

(assert (= (and d!167703 res!1082932) b!1585559))

(assert (= (and b!1585559 res!1082933) b!1585558))

(declare-fun m!1454331 () Bool)

(assert (=> b!1585561 m!1454331))

(declare-fun m!1454333 () Bool)

(assert (=> bm!72646 m!1454333))

(declare-fun m!1454335 () Bool)

(assert (=> b!1585559 m!1454335))

(declare-fun m!1454337 () Bool)

(assert (=> d!167703 m!1454337))

(declare-fun m!1454339 () Bool)

(assert (=> d!167703 m!1454339))

(declare-fun m!1454341 () Bool)

(assert (=> b!1585558 m!1454341))

(assert (=> b!1585521 d!167703))

(declare-fun d!167711 () Bool)

(declare-fun res!1082936 () Bool)

(declare-fun e!885312 () Bool)

(assert (=> d!167711 (=> res!1082936 e!885312)))

(assert (=> d!167711 (= res!1082936 (or (is-Nil!37132 (t!52062 l!556)) (is-Nil!37132 (t!52062 (t!52062 l!556)))))))

(assert (=> d!167711 (= (isStrictlySorted!1194 (t!52062 l!556)) e!885312)))

(declare-fun b!1585570 () Bool)

(declare-fun e!885313 () Bool)

(assert (=> b!1585570 (= e!885312 e!885313)))

(declare-fun res!1082937 () Bool)

(assert (=> b!1585570 (=> (not res!1082937) (not e!885313))))

(assert (=> b!1585570 (= res!1082937 (bvslt (_1!13030 (h!38675 (t!52062 l!556))) (_1!13030 (h!38675 (t!52062 (t!52062 l!556))))))))

(declare-fun b!1585571 () Bool)

(assert (=> b!1585571 (= e!885313 (isStrictlySorted!1194 (t!52062 (t!52062 l!556))))))

(assert (= (and d!167711 (not res!1082936)) b!1585570))

(assert (= (and b!1585570 res!1082937) b!1585571))

(assert (=> b!1585571 m!1454339))

(assert (=> b!1585533 d!167711))

(declare-fun lt!677331 () Bool)

(declare-fun d!167713 () Bool)

(assert (=> d!167713 (= lt!677331 (set.member (tuple2!26041 newKey!21 newValue!21) (content!868 lt!677326)))))

(declare-fun e!885315 () Bool)

(assert (=> d!167713 (= lt!677331 e!885315)))

(declare-fun res!1082938 () Bool)

(assert (=> d!167713 (=> (not res!1082938) (not e!885315))))

(assert (=> d!167713 (= res!1082938 (is-Cons!37131 lt!677326))))

(assert (=> d!167713 (= (contains!10549 lt!677326 (tuple2!26041 newKey!21 newValue!21)) lt!677331)))

(declare-fun b!1585572 () Bool)

(declare-fun e!885314 () Bool)

(assert (=> b!1585572 (= e!885315 e!885314)))

(declare-fun res!1082939 () Bool)

(assert (=> b!1585572 (=> res!1082939 e!885314)))

(assert (=> b!1585572 (= res!1082939 (= (h!38675 lt!677326) (tuple2!26041 newKey!21 newValue!21)))))

(declare-fun b!1585573 () Bool)

(assert (=> b!1585573 (= e!885314 (contains!10549 (t!52062 lt!677326) (tuple2!26041 newKey!21 newValue!21)))))

(assert (= (and d!167713 res!1082938) b!1585572))

(assert (= (and b!1585572 (not res!1082939)) b!1585573))

(declare-fun m!1454343 () Bool)

(assert (=> d!167713 m!1454343))

(declare-fun m!1454345 () Bool)

(assert (=> d!167713 m!1454345))

(declare-fun m!1454347 () Bool)

(assert (=> b!1585573 m!1454347))

(assert (=> b!1585518 d!167713))

(declare-fun d!167715 () Bool)

(declare-fun res!1082940 () Bool)

(declare-fun e!885318 () Bool)

(assert (=> d!167715 (=> res!1082940 e!885318)))

(assert (=> d!167715 (= res!1082940 (and (is-Cons!37131 (t!52062 lt!677305)) (= (_1!13030 (h!38675 (t!52062 lt!677305))) newKey!21)))))

(assert (=> d!167715 (= (containsKey!1007 (t!52062 lt!677305) newKey!21) e!885318)))

(declare-fun b!1585578 () Bool)

(declare-fun e!885319 () Bool)

(assert (=> b!1585578 (= e!885318 e!885319)))

(declare-fun res!1082941 () Bool)

(assert (=> b!1585578 (=> (not res!1082941) (not e!885319))))

(assert (=> b!1585578 (= res!1082941 (and (or (not (is-Cons!37131 (t!52062 lt!677305))) (bvsle (_1!13030 (h!38675 (t!52062 lt!677305))) newKey!21)) (is-Cons!37131 (t!52062 lt!677305)) (bvslt (_1!13030 (h!38675 (t!52062 lt!677305))) newKey!21)))))

(declare-fun b!1585579 () Bool)

(assert (=> b!1585579 (= e!885319 (containsKey!1007 (t!52062 (t!52062 lt!677305)) newKey!21))))

(assert (= (and d!167715 (not res!1082940)) b!1585578))

(assert (= (and b!1585578 res!1082941) b!1585579))

(declare-fun m!1454349 () Bool)

(assert (=> b!1585579 m!1454349))

(assert (=> b!1585410 d!167715))

(declare-fun d!167717 () Bool)

(declare-fun res!1082942 () Bool)

(declare-fun e!885320 () Bool)

(assert (=> d!167717 (=> res!1082942 e!885320)))

(assert (=> d!167717 (= res!1082942 (or (is-Nil!37132 lt!677326) (is-Nil!37132 (t!52062 lt!677326))))))

(assert (=> d!167717 (= (isStrictlySorted!1194 lt!677326) e!885320)))

(declare-fun b!1585580 () Bool)

(declare-fun e!885321 () Bool)

(assert (=> b!1585580 (= e!885320 e!885321)))

(declare-fun res!1082943 () Bool)

(assert (=> b!1585580 (=> (not res!1082943) (not e!885321))))

(assert (=> b!1585580 (= res!1082943 (bvslt (_1!13030 (h!38675 lt!677326)) (_1!13030 (h!38675 (t!52062 lt!677326)))))))

(declare-fun b!1585581 () Bool)

(assert (=> b!1585581 (= e!885321 (isStrictlySorted!1194 (t!52062 lt!677326)))))

(assert (= (and d!167717 (not res!1082942)) b!1585580))

(assert (= (and b!1585580 res!1082943) b!1585581))

(declare-fun m!1454351 () Bool)

(assert (=> b!1585581 m!1454351))

(assert (=> d!167681 d!167717))

(assert (=> d!167681 d!167711))

(declare-fun d!167719 () Bool)

(declare-fun res!1082944 () Bool)

(declare-fun e!885322 () Bool)

(assert (=> d!167719 (=> res!1082944 e!885322)))

(assert (=> d!167719 (= res!1082944 (and (is-Cons!37131 lt!677326) (= (_1!13030 (h!38675 lt!677326)) newKey!21)))))

(assert (=> d!167719 (= (containsKey!1007 lt!677326 newKey!21) e!885322)))

(declare-fun b!1585582 () Bool)

(declare-fun e!885323 () Bool)

(assert (=> b!1585582 (= e!885322 e!885323)))

(declare-fun res!1082945 () Bool)

(assert (=> b!1585582 (=> (not res!1082945) (not e!885323))))

(assert (=> b!1585582 (= res!1082945 (and (or (not (is-Cons!37131 lt!677326)) (bvsle (_1!13030 (h!38675 lt!677326)) newKey!21)) (is-Cons!37131 lt!677326) (bvslt (_1!13030 (h!38675 lt!677326)) newKey!21)))))

(declare-fun b!1585583 () Bool)

(assert (=> b!1585583 (= e!885323 (containsKey!1007 (t!52062 lt!677326) newKey!21))))

(assert (= (and d!167719 (not res!1082944)) b!1585582))

(assert (= (and b!1585582 res!1082945) b!1585583))

(declare-fun m!1454353 () Bool)

(assert (=> b!1585583 m!1454353))

(assert (=> b!1585519 d!167719))

(declare-fun lt!677332 () Bool)

(declare-fun d!167721 () Bool)

(assert (=> d!167721 (= lt!677332 (set.member (tuple2!26041 newKey!21 newValue!21) (content!868 (t!52062 lt!677305))))))

(declare-fun e!885326 () Bool)

(assert (=> d!167721 (= lt!677332 e!885326)))

(declare-fun res!1082946 () Bool)

(assert (=> d!167721 (=> (not res!1082946) (not e!885326))))

(assert (=> d!167721 (= res!1082946 (is-Cons!37131 (t!52062 lt!677305)))))

(assert (=> d!167721 (= (contains!10549 (t!52062 lt!677305) (tuple2!26041 newKey!21 newValue!21)) lt!677332)))

(declare-fun b!1585586 () Bool)

(declare-fun e!885325 () Bool)

(assert (=> b!1585586 (= e!885326 e!885325)))

(declare-fun res!1082947 () Bool)

(assert (=> b!1585586 (=> res!1082947 e!885325)))

(assert (=> b!1585586 (= res!1082947 (= (h!38675 (t!52062 lt!677305)) (tuple2!26041 newKey!21 newValue!21)))))

(declare-fun b!1585587 () Bool)

(assert (=> b!1585587 (= e!885325 (contains!10549 (t!52062 (t!52062 lt!677305)) (tuple2!26041 newKey!21 newValue!21)))))

(assert (= (and d!167721 res!1082946) b!1585586))

(assert (= (and b!1585586 (not res!1082947)) b!1585587))

(declare-fun m!1454359 () Bool)

(assert (=> d!167721 m!1454359))

(declare-fun m!1454361 () Bool)

(assert (=> d!167721 m!1454361))

(declare-fun m!1454363 () Bool)

(assert (=> b!1585587 m!1454363))

(assert (=> b!1585400 d!167721))

(declare-fun d!167725 () Bool)

(declare-fun res!1082950 () Bool)

(declare-fun e!885329 () Bool)

(assert (=> d!167725 (=> res!1082950 e!885329)))

(assert (=> d!167725 (= res!1082950 (or (is-Nil!37132 (t!52062 lt!677305)) (is-Nil!37132 (t!52062 (t!52062 lt!677305)))))))

(assert (=> d!167725 (= (isStrictlySorted!1194 (t!52062 lt!677305)) e!885329)))

(declare-fun b!1585590 () Bool)

(declare-fun e!885330 () Bool)

(assert (=> b!1585590 (= e!885329 e!885330)))

(declare-fun res!1082951 () Bool)

(assert (=> b!1585590 (=> (not res!1082951) (not e!885330))))

(assert (=> b!1585590 (= res!1082951 (bvslt (_1!13030 (h!38675 (t!52062 lt!677305))) (_1!13030 (h!38675 (t!52062 (t!52062 lt!677305))))))))

(declare-fun b!1585591 () Bool)

(assert (=> b!1585591 (= e!885330 (isStrictlySorted!1194 (t!52062 (t!52062 lt!677305))))))

(assert (= (and d!167725 (not res!1082950)) b!1585590))

(assert (= (and b!1585590 res!1082951) b!1585591))

(declare-fun m!1454367 () Bool)

(assert (=> b!1585591 m!1454367))

(assert (=> b!1585434 d!167725))

(declare-fun d!167727 () Bool)

(declare-fun c!146975 () Bool)

(assert (=> d!167727 (= c!146975 (is-Nil!37132 lt!677305))))

(declare-fun e!885344 () (Set tuple2!26040))

(assert (=> d!167727 (= (content!868 lt!677305) e!885344)))

(declare-fun b!1585612 () Bool)

(assert (=> b!1585612 (= e!885344 (as set.empty (Set tuple2!26040)))))

(declare-fun b!1585613 () Bool)

(assert (=> b!1585613 (= e!885344 (set.union (set.insert (h!38675 lt!677305) (as set.empty (Set tuple2!26040))) (content!868 (t!52062 lt!677305))))))

(assert (= (and d!167727 c!146975) b!1585612))

(assert (= (and d!167727 (not c!146975)) b!1585613))

(declare-fun m!1454391 () Bool)

(assert (=> b!1585613 m!1454391))

(assert (=> b!1585613 m!1454359))

(assert (=> d!167665 d!167727))

(declare-fun b!1585615 () Bool)

(declare-fun e!885346 () Bool)

(declare-fun tp!115281 () Bool)

(assert (=> b!1585615 (= e!885346 (and tp_is_empty!39517 tp!115281))))

(assert (=> b!1585542 (= tp!115276 e!885346)))

(assert (= (and b!1585542 (is-Cons!37131 (t!52062 (t!52062 l!556)))) b!1585615))

(push 1)

(assert (not b!1585571))

(assert (not b!1585561))

(assert (not b!1585615))

(assert (not d!167703))

(assert (not b!1585581))

(assert (not b!1585587))

(assert (not d!167721))

(assert tp_is_empty!39517)

(assert (not b!1585583))

(assert (not d!167713))

(assert (not bm!72646))

(assert (not b!1585573))

(assert (not b!1585558))

(assert (not b!1585613))

(assert (not b!1585591))

(assert (not b!1585579))

(assert (not b!1585559))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

