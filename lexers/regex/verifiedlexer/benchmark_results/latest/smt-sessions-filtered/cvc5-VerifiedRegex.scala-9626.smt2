; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506254 () Bool)

(assert start!506254)

(declare-fun res!2070686 () Bool)

(declare-fun e!3032697 () Bool)

(assert (=> start!506254 (=> (not res!2070686) (not e!3032697))))

(declare-datatypes ((K!17417 0))(
  ( (K!17418 (val!22239 Int)) )
))
(declare-datatypes ((V!17663 0))(
  ( (V!17664 (val!22240 Int)) )
))
(declare-datatypes ((tuple2!59346 0))(
  ( (tuple2!59347 (_1!32967 K!17417) (_2!32967 V!17663)) )
))
(declare-datatypes ((List!55730 0))(
  ( (Nil!55606) (Cons!55606 (h!62043 tuple2!59346) (t!363226 List!55730)) )
))
(declare-fun l!15167 () List!55730)

(declare-fun noDuplicateKeys!2607 (List!55730) Bool)

(assert (=> start!506254 (= res!2070686 (noDuplicateKeys!2607 l!15167))))

(assert (=> start!506254 e!3032697))

(declare-fun e!3032698 () Bool)

(assert (=> start!506254 e!3032698))

(declare-fun tp_is_empty!35269 () Bool)

(assert (=> start!506254 tp_is_empty!35269))

(declare-fun b!4851234 () Bool)

(declare-fun res!2070687 () Bool)

(assert (=> b!4851234 (=> (not res!2070687) (not e!3032697))))

(declare-fun key!6935 () K!17417)

(declare-datatypes ((Option!13712 0))(
  ( (None!13711) (Some!13711 (v!49505 tuple2!59346)) )
))
(declare-fun isDefined!10802 (Option!13712) Bool)

(declare-fun getPair!1115 (List!55730 K!17417) Option!13712)

(assert (=> b!4851234 (= res!2070687 (isDefined!10802 (getPair!1115 l!15167 key!6935)))))

(declare-fun b!4851235 () Bool)

(declare-fun ListPrimitiveSize!358 (List!55730) Int)

(assert (=> b!4851235 (= e!3032697 (< (ListPrimitiveSize!358 l!15167) 0))))

(declare-fun b!4851236 () Bool)

(declare-fun tp!1364887 () Bool)

(declare-fun tp_is_empty!35271 () Bool)

(assert (=> b!4851236 (= e!3032698 (and tp_is_empty!35269 tp_is_empty!35271 tp!1364887))))

(assert (= (and start!506254 res!2070686) b!4851234))

(assert (= (and b!4851234 res!2070687) b!4851235))

(assert (= (and start!506254 (is-Cons!55606 l!15167)) b!4851236))

(declare-fun m!5849848 () Bool)

(assert (=> start!506254 m!5849848))

(declare-fun m!5849850 () Bool)

(assert (=> b!4851234 m!5849850))

(assert (=> b!4851234 m!5849850))

(declare-fun m!5849852 () Bool)

(assert (=> b!4851234 m!5849852))

(declare-fun m!5849854 () Bool)

(assert (=> b!4851235 m!5849854))

(push 1)

(assert (not start!506254))

(assert (not b!4851234))

(assert (not b!4851236))

(assert (not b!4851235))

(assert tp_is_empty!35269)

(assert tp_is_empty!35271)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1557371 () Bool)

(declare-fun lt!1990043 () Int)

(assert (=> d!1557371 (>= lt!1990043 0)))

(declare-fun e!3032707 () Int)

(assert (=> d!1557371 (= lt!1990043 e!3032707)))

(declare-fun c!825551 () Bool)

(assert (=> d!1557371 (= c!825551 (is-Nil!55606 l!15167))))

(assert (=> d!1557371 (= (ListPrimitiveSize!358 l!15167) lt!1990043)))

(declare-fun b!4851250 () Bool)

(assert (=> b!4851250 (= e!3032707 0)))

(declare-fun b!4851251 () Bool)

(assert (=> b!4851251 (= e!3032707 (+ 1 (ListPrimitiveSize!358 (t!363226 l!15167))))))

(assert (= (and d!1557371 c!825551) b!4851250))

(assert (= (and d!1557371 (not c!825551)) b!4851251))

(declare-fun m!5849864 () Bool)

(assert (=> b!4851251 m!5849864))

(assert (=> b!4851235 d!1557371))

(declare-fun d!1557373 () Bool)

(declare-fun res!2070698 () Bool)

(declare-fun e!3032712 () Bool)

(assert (=> d!1557373 (=> res!2070698 e!3032712)))

(assert (=> d!1557373 (= res!2070698 (not (is-Cons!55606 l!15167)))))

(assert (=> d!1557373 (= (noDuplicateKeys!2607 l!15167) e!3032712)))

(declare-fun b!4851256 () Bool)

(declare-fun e!3032713 () Bool)

(assert (=> b!4851256 (= e!3032712 e!3032713)))

(declare-fun res!2070699 () Bool)

(assert (=> b!4851256 (=> (not res!2070699) (not e!3032713))))

(declare-fun containsKey!4717 (List!55730 K!17417) Bool)

(assert (=> b!4851256 (= res!2070699 (not (containsKey!4717 (t!363226 l!15167) (_1!32967 (h!62043 l!15167)))))))

(declare-fun b!4851257 () Bool)

(assert (=> b!4851257 (= e!3032713 (noDuplicateKeys!2607 (t!363226 l!15167)))))

(assert (= (and d!1557373 (not res!2070698)) b!4851256))

(assert (= (and b!4851256 res!2070699) b!4851257))

(declare-fun m!5849866 () Bool)

(assert (=> b!4851256 m!5849866))

(declare-fun m!5849868 () Bool)

(assert (=> b!4851257 m!5849868))

(assert (=> start!506254 d!1557373))

(declare-fun d!1557377 () Bool)

(declare-fun isEmpty!29757 (Option!13712) Bool)

(assert (=> d!1557377 (= (isDefined!10802 (getPair!1115 l!15167 key!6935)) (not (isEmpty!29757 (getPair!1115 l!15167 key!6935))))))

(declare-fun bs!1172979 () Bool)

(assert (= bs!1172979 d!1557377))

(assert (=> bs!1172979 m!5849850))

(declare-fun m!5849870 () Bool)

(assert (=> bs!1172979 m!5849870))

(assert (=> b!4851234 d!1557377))

(declare-fun b!4851281 () Bool)

(declare-fun e!3032728 () Bool)

(assert (=> b!4851281 (= e!3032728 (not (containsKey!4717 l!15167 key!6935)))))

(declare-fun b!4851282 () Bool)

(declare-fun e!3032730 () Bool)

(declare-fun lt!1990049 () Option!13712)

(declare-fun contains!19275 (List!55730 tuple2!59346) Bool)

(declare-fun get!19078 (Option!13712) tuple2!59346)

(assert (=> b!4851282 (= e!3032730 (contains!19275 l!15167 (get!19078 lt!1990049)))))

(declare-fun b!4851283 () Bool)

(declare-fun res!2070708 () Bool)

(assert (=> b!4851283 (=> (not res!2070708) (not e!3032730))))

(assert (=> b!4851283 (= res!2070708 (= (_1!32967 (get!19078 lt!1990049)) key!6935))))

(declare-fun b!4851284 () Bool)

(declare-fun e!3032727 () Option!13712)

(assert (=> b!4851284 (= e!3032727 (Some!13711 (h!62043 l!15167)))))

(declare-fun b!4851285 () Bool)

(declare-fun e!3032729 () Option!13712)

(assert (=> b!4851285 (= e!3032729 None!13711)))

(declare-fun b!4851286 () Bool)

(declare-fun e!3032731 () Bool)

(assert (=> b!4851286 (= e!3032731 e!3032730)))

(declare-fun res!2070711 () Bool)

(assert (=> b!4851286 (=> (not res!2070711) (not e!3032730))))

(assert (=> b!4851286 (= res!2070711 (isDefined!10802 lt!1990049))))

(declare-fun b!4851287 () Bool)

(assert (=> b!4851287 (= e!3032729 (getPair!1115 (t!363226 l!15167) key!6935))))

(declare-fun d!1557379 () Bool)

(assert (=> d!1557379 e!3032731))

(declare-fun res!2070709 () Bool)

(assert (=> d!1557379 (=> res!2070709 e!3032731)))

(assert (=> d!1557379 (= res!2070709 e!3032728)))

(declare-fun res!2070710 () Bool)

(assert (=> d!1557379 (=> (not res!2070710) (not e!3032728))))

(assert (=> d!1557379 (= res!2070710 (isEmpty!29757 lt!1990049))))

(assert (=> d!1557379 (= lt!1990049 e!3032727)))

(declare-fun c!825559 () Bool)

(assert (=> d!1557379 (= c!825559 (and (is-Cons!55606 l!15167) (= (_1!32967 (h!62043 l!15167)) key!6935)))))

(assert (=> d!1557379 (noDuplicateKeys!2607 l!15167)))

(assert (=> d!1557379 (= (getPair!1115 l!15167 key!6935) lt!1990049)))

(declare-fun b!4851280 () Bool)

(assert (=> b!4851280 (= e!3032727 e!3032729)))

(declare-fun c!825560 () Bool)

(assert (=> b!4851280 (= c!825560 (is-Cons!55606 l!15167))))

(assert (= (and d!1557379 c!825559) b!4851284))

(assert (= (and d!1557379 (not c!825559)) b!4851280))

(assert (= (and b!4851280 c!825560) b!4851287))

(assert (= (and b!4851280 (not c!825560)) b!4851285))

(assert (= (and d!1557379 res!2070710) b!4851281))

(assert (= (and d!1557379 (not res!2070709)) b!4851286))

(assert (= (and b!4851286 res!2070711) b!4851283))

(assert (= (and b!4851283 res!2070708) b!4851282))

(declare-fun m!5849874 () Bool)

(assert (=> b!4851283 m!5849874))

(assert (=> b!4851282 m!5849874))

(assert (=> b!4851282 m!5849874))

(declare-fun m!5849876 () Bool)

(assert (=> b!4851282 m!5849876))

(declare-fun m!5849878 () Bool)

(assert (=> b!4851286 m!5849878))

(declare-fun m!5849880 () Bool)

(assert (=> b!4851281 m!5849880))

(declare-fun m!5849882 () Bool)

(assert (=> b!4851287 m!5849882))

(declare-fun m!5849884 () Bool)

(assert (=> d!1557379 m!5849884))

(assert (=> d!1557379 m!5849848))

(assert (=> b!4851234 d!1557379))

(declare-fun tp!1364893 () Bool)

(declare-fun b!4851296 () Bool)

(declare-fun e!3032738 () Bool)

(assert (=> b!4851296 (= e!3032738 (and tp_is_empty!35269 tp_is_empty!35271 tp!1364893))))

(assert (=> b!4851236 (= tp!1364887 e!3032738)))

(assert (= (and b!4851236 (is-Cons!55606 (t!363226 l!15167))) b!4851296))

(push 1)

(assert (not d!1557377))

(assert (not b!4851282))

(assert (not d!1557379))

(assert (not b!4851281))

(assert (not b!4851256))

(assert (not b!4851251))

(assert (not b!4851296))

(assert tp_is_empty!35269)

(assert (not b!4851257))

(assert tp_is_empty!35271)

(assert (not b!4851287))

(assert (not b!4851286))

(assert (not b!4851283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

