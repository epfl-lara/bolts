; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106434 () Bool)

(assert start!106434)

(declare-datatypes ((B!1966 0))(
  ( (B!1967 (val!16318 Int)) )
))
(declare-datatypes ((tuple2!21304 0))(
  ( (tuple2!21305 (_1!10662 (_ BitVec 64)) (_2!10662 B!1966)) )
))
(declare-datatypes ((List!28485 0))(
  ( (Nil!28482) (Cons!28481 (h!29690 tuple2!21304) (t!42013 List!28485)) )
))
(declare-fun l!706 () List!28485)

(declare-fun v1!26 () B!1966)

(declare-fun e!720564 () Bool)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun b!1265251 () Bool)

(declare-fun isStrictlySorted!781 (List!28485) Bool)

(declare-fun insertStrictlySorted!463 (List!28485 (_ BitVec 64) B!1966) List!28485)

(assert (=> b!1265251 (= e!720564 (not (isStrictlySorted!781 (insertStrictlySorted!463 l!706 key1!31 v1!26))))))

(declare-fun b!1265252 () Bool)

(declare-fun e!720565 () Bool)

(declare-fun tp_is_empty!32499 () Bool)

(declare-fun tp!96324 () Bool)

(assert (=> b!1265252 (= e!720565 (and tp_is_empty!32499 tp!96324))))

(declare-fun b!1265249 () Bool)

(declare-fun res!842541 () Bool)

(assert (=> b!1265249 (=> (not res!842541) (not e!720564))))

(declare-fun containsKey!642 (List!28485 (_ BitVec 64)) Bool)

(assert (=> b!1265249 (= res!842541 (not (containsKey!642 l!706 key1!31)))))

(declare-fun b!1265250 () Bool)

(declare-fun res!842540 () Bool)

(assert (=> b!1265250 (=> (not res!842540) (not e!720564))))

(get-info :version)

(assert (=> b!1265250 (= res!842540 (not ((_ is Cons!28481) l!706)))))

(declare-fun res!842542 () Bool)

(assert (=> start!106434 (=> (not res!842542) (not e!720564))))

(assert (=> start!106434 (= res!842542 (isStrictlySorted!781 l!706))))

(assert (=> start!106434 e!720564))

(assert (=> start!106434 e!720565))

(assert (=> start!106434 true))

(assert (=> start!106434 tp_is_empty!32499))

(assert (= (and start!106434 res!842542) b!1265249))

(assert (= (and b!1265249 res!842541) b!1265250))

(assert (= (and b!1265250 res!842540) b!1265251))

(assert (= (and start!106434 ((_ is Cons!28481) l!706)) b!1265252))

(declare-fun m!1165529 () Bool)

(assert (=> b!1265251 m!1165529))

(assert (=> b!1265251 m!1165529))

(declare-fun m!1165531 () Bool)

(assert (=> b!1265251 m!1165531))

(declare-fun m!1165533 () Bool)

(assert (=> b!1265249 m!1165533))

(declare-fun m!1165535 () Bool)

(assert (=> start!106434 m!1165535))

(check-sat (not b!1265251) tp_is_empty!32499 (not b!1265252) (not start!106434) (not b!1265249))
(check-sat)
(get-model)

(declare-fun d!138821 () Bool)

(declare-fun res!842566 () Bool)

(declare-fun e!720586 () Bool)

(assert (=> d!138821 (=> res!842566 e!720586)))

(assert (=> d!138821 (= res!842566 (or ((_ is Nil!28482) (insertStrictlySorted!463 l!706 key1!31 v1!26)) ((_ is Nil!28482) (t!42013 (insertStrictlySorted!463 l!706 key1!31 v1!26)))))))

(assert (=> d!138821 (= (isStrictlySorted!781 (insertStrictlySorted!463 l!706 key1!31 v1!26)) e!720586)))

(declare-fun b!1265279 () Bool)

(declare-fun e!720587 () Bool)

(assert (=> b!1265279 (= e!720586 e!720587)))

(declare-fun res!842567 () Bool)

(assert (=> b!1265279 (=> (not res!842567) (not e!720587))))

(assert (=> b!1265279 (= res!842567 (bvslt (_1!10662 (h!29690 (insertStrictlySorted!463 l!706 key1!31 v1!26))) (_1!10662 (h!29690 (t!42013 (insertStrictlySorted!463 l!706 key1!31 v1!26))))))))

(declare-fun b!1265280 () Bool)

(assert (=> b!1265280 (= e!720587 (isStrictlySorted!781 (t!42013 (insertStrictlySorted!463 l!706 key1!31 v1!26))))))

(assert (= (and d!138821 (not res!842566)) b!1265279))

(assert (= (and b!1265279 res!842567) b!1265280))

(declare-fun m!1165547 () Bool)

(assert (=> b!1265280 m!1165547))

(assert (=> b!1265251 d!138821))

(declare-fun c!123251 () Bool)

(declare-fun e!720634 () List!28485)

(declare-fun call!62410 () List!28485)

(declare-fun bm!62408 () Bool)

(declare-fun $colon$colon!639 (List!28485 tuple2!21304) List!28485)

(assert (=> bm!62408 (= call!62410 ($colon$colon!639 e!720634 (ite c!123251 (h!29690 l!706) (tuple2!21305 key1!31 v1!26))))))

(declare-fun c!123252 () Bool)

(assert (=> bm!62408 (= c!123252 c!123251)))

(declare-fun b!1265357 () Bool)

(assert (=> b!1265357 (= e!720634 (insertStrictlySorted!463 (t!42013 l!706) key1!31 v1!26))))

(declare-fun c!123253 () Bool)

(declare-fun c!123254 () Bool)

(declare-fun b!1265358 () Bool)

(assert (=> b!1265358 (= e!720634 (ite c!123253 (t!42013 l!706) (ite c!123254 (Cons!28481 (h!29690 l!706) (t!42013 l!706)) Nil!28482)))))

(declare-fun b!1265359 () Bool)

(declare-fun e!720637 () List!28485)

(declare-fun e!720635 () List!28485)

(assert (=> b!1265359 (= e!720637 e!720635)))

(assert (=> b!1265359 (= c!123253 (and ((_ is Cons!28481) l!706) (= (_1!10662 (h!29690 l!706)) key1!31)))))

(declare-fun bm!62409 () Bool)

(declare-fun call!62412 () List!28485)

(declare-fun call!62411 () List!28485)

(assert (=> bm!62409 (= call!62412 call!62411)))

(declare-fun b!1265360 () Bool)

(assert (=> b!1265360 (= e!720635 call!62411)))

(declare-fun b!1265361 () Bool)

(declare-fun e!720638 () List!28485)

(assert (=> b!1265361 (= e!720638 call!62412)))

(declare-fun b!1265362 () Bool)

(assert (=> b!1265362 (= e!720637 call!62410)))

(declare-fun b!1265363 () Bool)

(declare-fun res!842596 () Bool)

(declare-fun e!720636 () Bool)

(assert (=> b!1265363 (=> (not res!842596) (not e!720636))))

(declare-fun lt!573984 () List!28485)

(assert (=> b!1265363 (= res!842596 (containsKey!642 lt!573984 key1!31))))

(declare-fun b!1265364 () Bool)

(assert (=> b!1265364 (= e!720638 call!62412)))

(declare-fun bm!62407 () Bool)

(assert (=> bm!62407 (= call!62411 call!62410)))

(declare-fun d!138827 () Bool)

(assert (=> d!138827 e!720636))

(declare-fun res!842597 () Bool)

(assert (=> d!138827 (=> (not res!842597) (not e!720636))))

(assert (=> d!138827 (= res!842597 (isStrictlySorted!781 lt!573984))))

(assert (=> d!138827 (= lt!573984 e!720637)))

(assert (=> d!138827 (= c!123251 (and ((_ is Cons!28481) l!706) (bvslt (_1!10662 (h!29690 l!706)) key1!31)))))

(assert (=> d!138827 (isStrictlySorted!781 l!706)))

(assert (=> d!138827 (= (insertStrictlySorted!463 l!706 key1!31 v1!26) lt!573984)))

(declare-fun b!1265365 () Bool)

(assert (=> b!1265365 (= c!123254 (and ((_ is Cons!28481) l!706) (bvsgt (_1!10662 (h!29690 l!706)) key1!31)))))

(assert (=> b!1265365 (= e!720635 e!720638)))

(declare-fun b!1265366 () Bool)

(declare-fun contains!7655 (List!28485 tuple2!21304) Bool)

(assert (=> b!1265366 (= e!720636 (contains!7655 lt!573984 (tuple2!21305 key1!31 v1!26)))))

(assert (= (and d!138827 c!123251) b!1265362))

(assert (= (and d!138827 (not c!123251)) b!1265359))

(assert (= (and b!1265359 c!123253) b!1265360))

(assert (= (and b!1265359 (not c!123253)) b!1265365))

(assert (= (and b!1265365 c!123254) b!1265364))

(assert (= (and b!1265365 (not c!123254)) b!1265361))

(assert (= (or b!1265364 b!1265361) bm!62409))

(assert (= (or b!1265360 bm!62409) bm!62407))

(assert (= (or b!1265362 bm!62407) bm!62408))

(assert (= (and bm!62408 c!123252) b!1265357))

(assert (= (and bm!62408 (not c!123252)) b!1265358))

(assert (= (and d!138827 res!842597) b!1265363))

(assert (= (and b!1265363 res!842596) b!1265366))

(declare-fun m!1165557 () Bool)

(assert (=> b!1265357 m!1165557))

(declare-fun m!1165559 () Bool)

(assert (=> b!1265363 m!1165559))

(declare-fun m!1165561 () Bool)

(assert (=> d!138827 m!1165561))

(assert (=> d!138827 m!1165535))

(declare-fun m!1165563 () Bool)

(assert (=> b!1265366 m!1165563))

(declare-fun m!1165565 () Bool)

(assert (=> bm!62408 m!1165565))

(assert (=> b!1265251 d!138827))

(declare-fun d!138837 () Bool)

(declare-fun res!842598 () Bool)

(declare-fun e!720639 () Bool)

(assert (=> d!138837 (=> res!842598 e!720639)))

(assert (=> d!138837 (= res!842598 (or ((_ is Nil!28482) l!706) ((_ is Nil!28482) (t!42013 l!706))))))

(assert (=> d!138837 (= (isStrictlySorted!781 l!706) e!720639)))

(declare-fun b!1265367 () Bool)

(declare-fun e!720640 () Bool)

(assert (=> b!1265367 (= e!720639 e!720640)))

(declare-fun res!842599 () Bool)

(assert (=> b!1265367 (=> (not res!842599) (not e!720640))))

(assert (=> b!1265367 (= res!842599 (bvslt (_1!10662 (h!29690 l!706)) (_1!10662 (h!29690 (t!42013 l!706)))))))

(declare-fun b!1265368 () Bool)

(assert (=> b!1265368 (= e!720640 (isStrictlySorted!781 (t!42013 l!706)))))

(assert (= (and d!138837 (not res!842598)) b!1265367))

(assert (= (and b!1265367 res!842599) b!1265368))

(declare-fun m!1165567 () Bool)

(assert (=> b!1265368 m!1165567))

(assert (=> start!106434 d!138837))

(declare-fun d!138839 () Bool)

(declare-fun res!842610 () Bool)

(declare-fun e!720659 () Bool)

(assert (=> d!138839 (=> res!842610 e!720659)))

(assert (=> d!138839 (= res!842610 (and ((_ is Cons!28481) l!706) (= (_1!10662 (h!29690 l!706)) key1!31)))))

(assert (=> d!138839 (= (containsKey!642 l!706 key1!31) e!720659)))

(declare-fun b!1265399 () Bool)

(declare-fun e!720660 () Bool)

(assert (=> b!1265399 (= e!720659 e!720660)))

(declare-fun res!842611 () Bool)

(assert (=> b!1265399 (=> (not res!842611) (not e!720660))))

(assert (=> b!1265399 (= res!842611 (and (or (not ((_ is Cons!28481) l!706)) (bvsle (_1!10662 (h!29690 l!706)) key1!31)) ((_ is Cons!28481) l!706) (bvslt (_1!10662 (h!29690 l!706)) key1!31)))))

(declare-fun b!1265400 () Bool)

(assert (=> b!1265400 (= e!720660 (containsKey!642 (t!42013 l!706) key1!31))))

(assert (= (and d!138839 (not res!842610)) b!1265399))

(assert (= (and b!1265399 res!842611) b!1265400))

(declare-fun m!1165591 () Bool)

(assert (=> b!1265400 m!1165591))

(assert (=> b!1265249 d!138839))

(declare-fun b!1265411 () Bool)

(declare-fun e!720667 () Bool)

(declare-fun tp!96336 () Bool)

(assert (=> b!1265411 (= e!720667 (and tp_is_empty!32499 tp!96336))))

(assert (=> b!1265252 (= tp!96324 e!720667)))

(assert (= (and b!1265252 ((_ is Cons!28481) (t!42013 l!706))) b!1265411))

(check-sat (not b!1265357) tp_is_empty!32499 (not b!1265368) (not b!1265411) (not d!138827) (not b!1265363) (not b!1265280) (not bm!62408) (not b!1265400) (not b!1265366))
(check-sat)
