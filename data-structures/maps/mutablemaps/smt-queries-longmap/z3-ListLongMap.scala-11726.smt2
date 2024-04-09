; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137460 () Bool)

(assert start!137460)

(declare-fun b!1581368 () Bool)

(declare-fun res!1080472 () Bool)

(declare-fun e!882408 () Bool)

(assert (=> b!1581368 (=> (not res!1080472) (not e!882408))))

(declare-datatypes ((B!2698 0))(
  ( (B!2699 (val!19711 Int)) )
))
(declare-datatypes ((tuple2!25744 0))(
  ( (tuple2!25745 (_1!12882 (_ BitVec 64)) (_2!12882 B!2698)) )
))
(declare-datatypes ((List!36992 0))(
  ( (Nil!36989) (Cons!36988 (h!38532 tuple2!25744) (t!51913 List!36992)) )
))
(declare-fun l!1390 () List!36992)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!933 (List!36992 (_ BitVec 64)) Bool)

(assert (=> b!1581368 (= res!1080472 (containsKey!933 l!1390 key!405))))

(declare-fun b!1581369 () Bool)

(declare-fun e!882405 () Bool)

(declare-fun e!882407 () Bool)

(assert (=> b!1581369 (= e!882405 e!882407)))

(declare-fun res!1080474 () Bool)

(assert (=> b!1581369 (=> (not res!1080474) (not e!882407))))

(declare-fun e!882406 () Bool)

(assert (=> b!1581369 (= res!1080474 e!882406)))

(declare-fun res!1080471 () Bool)

(assert (=> b!1581369 (=> res!1080471 e!882406)))

(declare-datatypes ((tuple2!25746 0))(
  ( (tuple2!25747 (_1!12883 tuple2!25744) (_2!12883 List!36992)) )
))
(declare-datatypes ((Option!926 0))(
  ( (Some!925 (v!22437 tuple2!25746)) (None!924) )
))
(declare-fun lt!676885 () Option!926)

(declare-fun isEmpty!1184 (Option!926) Bool)

(assert (=> b!1581369 (= res!1080471 (isEmpty!1184 lt!676885))))

(declare-fun unapply!98 (List!36992) Option!926)

(assert (=> b!1581369 (= lt!676885 (unapply!98 l!1390))))

(declare-fun b!1581370 () Bool)

(declare-fun res!1080477 () Bool)

(assert (=> b!1581370 (=> (not res!1080477) (not e!882407))))

(declare-fun lt!676888 () tuple2!25744)

(declare-fun contains!10520 (List!36992 tuple2!25744) Bool)

(assert (=> b!1581370 (= res!1080477 (contains!10520 (t!51913 l!1390) lt!676888))))

(declare-fun b!1581371 () Bool)

(declare-fun res!1080475 () Bool)

(assert (=> b!1581371 (=> (not res!1080475) (not e!882407))))

(declare-fun isStrictlySorted!1087 (List!36992) Bool)

(assert (=> b!1581371 (= res!1080475 (isStrictlySorted!1087 (t!51913 l!1390)))))

(declare-fun b!1581372 () Bool)

(declare-fun res!1080479 () Bool)

(assert (=> b!1581372 (=> (not res!1080479) (not e!882407))))

(assert (=> b!1581372 (= res!1080479 (containsKey!933 (t!51913 l!1390) key!405))))

(declare-fun res!1080478 () Bool)

(assert (=> start!137460 (=> (not res!1080478) (not e!882408))))

(assert (=> start!137460 (= res!1080478 (isStrictlySorted!1087 l!1390))))

(assert (=> start!137460 e!882408))

(declare-fun e!882404 () Bool)

(assert (=> start!137460 e!882404))

(assert (=> start!137460 true))

(declare-fun tp_is_empty!39243 () Bool)

(assert (=> start!137460 tp_is_empty!39243))

(declare-fun b!1581373 () Bool)

(declare-fun tp!114583 () Bool)

(assert (=> b!1581373 (= e!882404 (and tp_is_empty!39243 tp!114583))))

(declare-fun b!1581374 () Bool)

(declare-fun res!1080473 () Bool)

(assert (=> b!1581374 (=> (not res!1080473) (not e!882407))))

(get-info :version)

(assert (=> b!1581374 (= res!1080473 (and (or (not ((_ is Cons!36988) l!1390)) (not (= (_1!12882 (h!38532 l!1390)) key!405))) ((_ is Cons!36988) l!1390)))))

(declare-fun b!1581375 () Bool)

(declare-fun get!26847 (Option!926) tuple2!25746)

(assert (=> b!1581375 (= e!882406 (not ((_ is Nil!36989) (_2!12883 (get!26847 lt!676885)))))))

(declare-fun b!1581376 () Bool)

(assert (=> b!1581376 (= e!882408 e!882405)))

(declare-fun res!1080476 () Bool)

(assert (=> b!1581376 (=> (not res!1080476) (not e!882405))))

(assert (=> b!1581376 (= res!1080476 (contains!10520 l!1390 lt!676888))))

(declare-fun value!194 () B!2698)

(assert (=> b!1581376 (= lt!676888 (tuple2!25745 key!405 value!194))))

(declare-fun b!1581377 () Bool)

(declare-datatypes ((Option!927 0))(
  ( (Some!926 (v!22438 B!2698)) (None!925) )
))
(declare-fun lt!676886 () Option!927)

(declare-fun getValueByKey!823 (List!36992 (_ BitVec 64)) Option!927)

(assert (=> b!1581377 (= e!882407 (not (= (getValueByKey!823 l!1390 key!405) lt!676886)))))

(assert (=> b!1581377 (= (getValueByKey!823 (t!51913 l!1390) key!405) lt!676886)))

(assert (=> b!1581377 (= lt!676886 (Some!926 value!194))))

(declare-datatypes ((Unit!52192 0))(
  ( (Unit!52193) )
))
(declare-fun lt!676887 () Unit!52192)

(declare-fun lemmaContainsTupThenGetReturnValue!400 (List!36992 (_ BitVec 64) B!2698) Unit!52192)

(assert (=> b!1581377 (= lt!676887 (lemmaContainsTupThenGetReturnValue!400 (t!51913 l!1390) key!405 value!194))))

(assert (= (and start!137460 res!1080478) b!1581368))

(assert (= (and b!1581368 res!1080472) b!1581376))

(assert (= (and b!1581376 res!1080476) b!1581369))

(assert (= (and b!1581369 (not res!1080471)) b!1581375))

(assert (= (and b!1581369 res!1080474) b!1581374))

(assert (= (and b!1581374 res!1080473) b!1581371))

(assert (= (and b!1581371 res!1080475) b!1581372))

(assert (= (and b!1581372 res!1080479) b!1581370))

(assert (= (and b!1581370 res!1080477) b!1581377))

(assert (= (and start!137460 ((_ is Cons!36988) l!1390)) b!1581373))

(declare-fun m!1452365 () Bool)

(assert (=> b!1581371 m!1452365))

(declare-fun m!1452367 () Bool)

(assert (=> b!1581372 m!1452367))

(declare-fun m!1452369 () Bool)

(assert (=> b!1581377 m!1452369))

(declare-fun m!1452371 () Bool)

(assert (=> b!1581377 m!1452371))

(declare-fun m!1452373 () Bool)

(assert (=> b!1581377 m!1452373))

(declare-fun m!1452375 () Bool)

(assert (=> b!1581376 m!1452375))

(declare-fun m!1452377 () Bool)

(assert (=> b!1581368 m!1452377))

(declare-fun m!1452379 () Bool)

(assert (=> b!1581369 m!1452379))

(declare-fun m!1452381 () Bool)

(assert (=> b!1581369 m!1452381))

(declare-fun m!1452383 () Bool)

(assert (=> start!137460 m!1452383))

(declare-fun m!1452385 () Bool)

(assert (=> b!1581375 m!1452385))

(declare-fun m!1452387 () Bool)

(assert (=> b!1581370 m!1452387))

(check-sat (not b!1581369) (not b!1581377) tp_is_empty!39243 (not b!1581370) (not start!137460) (not b!1581376) (not b!1581368) (not b!1581372) (not b!1581373) (not b!1581371) (not b!1581375))
(check-sat)
(get-model)

(declare-fun d!166683 () Bool)

(declare-fun res!1080511 () Bool)

(declare-fun e!882428 () Bool)

(assert (=> d!166683 (=> res!1080511 e!882428)))

(assert (=> d!166683 (= res!1080511 (or ((_ is Nil!36989) l!1390) ((_ is Nil!36989) (t!51913 l!1390))))))

(assert (=> d!166683 (= (isStrictlySorted!1087 l!1390) e!882428)))

(declare-fun b!1581412 () Bool)

(declare-fun e!882429 () Bool)

(assert (=> b!1581412 (= e!882428 e!882429)))

(declare-fun res!1080512 () Bool)

(assert (=> b!1581412 (=> (not res!1080512) (not e!882429))))

(assert (=> b!1581412 (= res!1080512 (bvslt (_1!12882 (h!38532 l!1390)) (_1!12882 (h!38532 (t!51913 l!1390)))))))

(declare-fun b!1581413 () Bool)

(assert (=> b!1581413 (= e!882429 (isStrictlySorted!1087 (t!51913 l!1390)))))

(assert (= (and d!166683 (not res!1080511)) b!1581412))

(assert (= (and b!1581412 res!1080512) b!1581413))

(assert (=> b!1581413 m!1452365))

(assert (=> start!137460 d!166683))

(declare-fun d!166689 () Bool)

(declare-fun res!1080529 () Bool)

(declare-fun e!882446 () Bool)

(assert (=> d!166689 (=> res!1080529 e!882446)))

(assert (=> d!166689 (= res!1080529 (and ((_ is Cons!36988) l!1390) (= (_1!12882 (h!38532 l!1390)) key!405)))))

(assert (=> d!166689 (= (containsKey!933 l!1390 key!405) e!882446)))

(declare-fun b!1581430 () Bool)

(declare-fun e!882447 () Bool)

(assert (=> b!1581430 (= e!882446 e!882447)))

(declare-fun res!1080530 () Bool)

(assert (=> b!1581430 (=> (not res!1080530) (not e!882447))))

(assert (=> b!1581430 (= res!1080530 (and (or (not ((_ is Cons!36988) l!1390)) (bvsle (_1!12882 (h!38532 l!1390)) key!405)) ((_ is Cons!36988) l!1390) (bvslt (_1!12882 (h!38532 l!1390)) key!405)))))

(declare-fun b!1581431 () Bool)

(assert (=> b!1581431 (= e!882447 (containsKey!933 (t!51913 l!1390) key!405))))

(assert (= (and d!166689 (not res!1080529)) b!1581430))

(assert (= (and b!1581430 res!1080530) b!1581431))

(assert (=> b!1581431 m!1452367))

(assert (=> b!1581368 d!166689))

(declare-fun d!166699 () Bool)

(assert (=> d!166699 (= (isEmpty!1184 lt!676885) (not ((_ is Some!925) lt!676885)))))

(assert (=> b!1581369 d!166699))

(declare-fun d!166701 () Bool)

(assert (=> d!166701 (= (unapply!98 l!1390) (ite ((_ is Nil!36989) l!1390) None!924 (Some!925 (tuple2!25747 (h!38532 l!1390) (t!51913 l!1390)))))))

(assert (=> b!1581369 d!166701))

(declare-fun d!166703 () Bool)

(assert (=> d!166703 (= (get!26847 lt!676885) (v!22437 lt!676885))))

(assert (=> b!1581375 d!166703))

(declare-fun d!166709 () Bool)

(declare-fun lt!676909 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!855 (List!36992) (InoxSet tuple2!25744))

(assert (=> d!166709 (= lt!676909 (select (content!855 (t!51913 l!1390)) lt!676888))))

(declare-fun e!882480 () Bool)

(assert (=> d!166709 (= lt!676909 e!882480)))

(declare-fun res!1080555 () Bool)

(assert (=> d!166709 (=> (not res!1080555) (not e!882480))))

(assert (=> d!166709 (= res!1080555 ((_ is Cons!36988) (t!51913 l!1390)))))

(assert (=> d!166709 (= (contains!10520 (t!51913 l!1390) lt!676888) lt!676909)))

(declare-fun b!1581472 () Bool)

(declare-fun e!882481 () Bool)

(assert (=> b!1581472 (= e!882480 e!882481)))

(declare-fun res!1080556 () Bool)

(assert (=> b!1581472 (=> res!1080556 e!882481)))

(assert (=> b!1581472 (= res!1080556 (= (h!38532 (t!51913 l!1390)) lt!676888))))

(declare-fun b!1581473 () Bool)

(assert (=> b!1581473 (= e!882481 (contains!10520 (t!51913 (t!51913 l!1390)) lt!676888))))

(assert (= (and d!166709 res!1080555) b!1581472))

(assert (= (and b!1581472 (not res!1080556)) b!1581473))

(declare-fun m!1452425 () Bool)

(assert (=> d!166709 m!1452425))

(declare-fun m!1452427 () Bool)

(assert (=> d!166709 m!1452427))

(declare-fun m!1452429 () Bool)

(assert (=> b!1581473 m!1452429))

(assert (=> b!1581370 d!166709))

(declare-fun d!166715 () Bool)

(declare-fun res!1080557 () Bool)

(declare-fun e!882482 () Bool)

(assert (=> d!166715 (=> res!1080557 e!882482)))

(assert (=> d!166715 (= res!1080557 (or ((_ is Nil!36989) (t!51913 l!1390)) ((_ is Nil!36989) (t!51913 (t!51913 l!1390)))))))

(assert (=> d!166715 (= (isStrictlySorted!1087 (t!51913 l!1390)) e!882482)))

(declare-fun b!1581474 () Bool)

(declare-fun e!882483 () Bool)

(assert (=> b!1581474 (= e!882482 e!882483)))

(declare-fun res!1080558 () Bool)

(assert (=> b!1581474 (=> (not res!1080558) (not e!882483))))

(assert (=> b!1581474 (= res!1080558 (bvslt (_1!12882 (h!38532 (t!51913 l!1390))) (_1!12882 (h!38532 (t!51913 (t!51913 l!1390))))))))

(declare-fun b!1581475 () Bool)

(assert (=> b!1581475 (= e!882483 (isStrictlySorted!1087 (t!51913 (t!51913 l!1390))))))

(assert (= (and d!166715 (not res!1080557)) b!1581474))

(assert (= (and b!1581474 res!1080558) b!1581475))

(declare-fun m!1452431 () Bool)

(assert (=> b!1581475 m!1452431))

(assert (=> b!1581371 d!166715))

(declare-fun d!166717 () Bool)

(declare-fun lt!676910 () Bool)

(assert (=> d!166717 (= lt!676910 (select (content!855 l!1390) lt!676888))))

(declare-fun e!882484 () Bool)

(assert (=> d!166717 (= lt!676910 e!882484)))

(declare-fun res!1080559 () Bool)

(assert (=> d!166717 (=> (not res!1080559) (not e!882484))))

(assert (=> d!166717 (= res!1080559 ((_ is Cons!36988) l!1390))))

(assert (=> d!166717 (= (contains!10520 l!1390 lt!676888) lt!676910)))

(declare-fun b!1581476 () Bool)

(declare-fun e!882485 () Bool)

(assert (=> b!1581476 (= e!882484 e!882485)))

(declare-fun res!1080560 () Bool)

(assert (=> b!1581476 (=> res!1080560 e!882485)))

(assert (=> b!1581476 (= res!1080560 (= (h!38532 l!1390) lt!676888))))

(declare-fun b!1581477 () Bool)

(assert (=> b!1581477 (= e!882485 (contains!10520 (t!51913 l!1390) lt!676888))))

(assert (= (and d!166717 res!1080559) b!1581476))

(assert (= (and b!1581476 (not res!1080560)) b!1581477))

(declare-fun m!1452433 () Bool)

(assert (=> d!166717 m!1452433))

(declare-fun m!1452435 () Bool)

(assert (=> d!166717 m!1452435))

(assert (=> b!1581477 m!1452387))

(assert (=> b!1581376 d!166717))

(declare-fun b!1581517 () Bool)

(declare-fun e!882506 () Option!927)

(assert (=> b!1581517 (= e!882506 None!925)))

(declare-fun b!1581514 () Bool)

(declare-fun e!882505 () Option!927)

(assert (=> b!1581514 (= e!882505 (Some!926 (_2!12882 (h!38532 l!1390))))))

(declare-fun b!1581516 () Bool)

(assert (=> b!1581516 (= e!882506 (getValueByKey!823 (t!51913 l!1390) key!405))))

(declare-fun d!166719 () Bool)

(declare-fun c!146550 () Bool)

(assert (=> d!166719 (= c!146550 (and ((_ is Cons!36988) l!1390) (= (_1!12882 (h!38532 l!1390)) key!405)))))

(assert (=> d!166719 (= (getValueByKey!823 l!1390 key!405) e!882505)))

(declare-fun b!1581515 () Bool)

(assert (=> b!1581515 (= e!882505 e!882506)))

(declare-fun c!146551 () Bool)

(assert (=> b!1581515 (= c!146551 (and ((_ is Cons!36988) l!1390) (not (= (_1!12882 (h!38532 l!1390)) key!405))))))

(assert (= (and d!166719 c!146550) b!1581514))

(assert (= (and d!166719 (not c!146550)) b!1581515))

(assert (= (and b!1581515 c!146551) b!1581516))

(assert (= (and b!1581515 (not c!146551)) b!1581517))

(assert (=> b!1581516 m!1452371))

(assert (=> b!1581377 d!166719))

(declare-fun b!1581523 () Bool)

(declare-fun e!882510 () Option!927)

(assert (=> b!1581523 (= e!882510 None!925)))

(declare-fun b!1581520 () Bool)

(declare-fun e!882509 () Option!927)

(assert (=> b!1581520 (= e!882509 (Some!926 (_2!12882 (h!38532 (t!51913 l!1390)))))))

(declare-fun b!1581522 () Bool)

(assert (=> b!1581522 (= e!882510 (getValueByKey!823 (t!51913 (t!51913 l!1390)) key!405))))

(declare-fun d!166735 () Bool)

(declare-fun c!146552 () Bool)

(assert (=> d!166735 (= c!146552 (and ((_ is Cons!36988) (t!51913 l!1390)) (= (_1!12882 (h!38532 (t!51913 l!1390))) key!405)))))

(assert (=> d!166735 (= (getValueByKey!823 (t!51913 l!1390) key!405) e!882509)))

(declare-fun b!1581521 () Bool)

(assert (=> b!1581521 (= e!882509 e!882510)))

(declare-fun c!146553 () Bool)

(assert (=> b!1581521 (= c!146553 (and ((_ is Cons!36988) (t!51913 l!1390)) (not (= (_1!12882 (h!38532 (t!51913 l!1390))) key!405))))))

(assert (= (and d!166735 c!146552) b!1581520))

(assert (= (and d!166735 (not c!146552)) b!1581521))

(assert (= (and b!1581521 c!146553) b!1581522))

(assert (= (and b!1581521 (not c!146553)) b!1581523))

(declare-fun m!1452451 () Bool)

(assert (=> b!1581522 m!1452451))

(assert (=> b!1581377 d!166735))

(declare-fun d!166737 () Bool)

(assert (=> d!166737 (= (getValueByKey!823 (t!51913 l!1390) key!405) (Some!926 value!194))))

(declare-fun lt!676920 () Unit!52192)

(declare-fun choose!2104 (List!36992 (_ BitVec 64) B!2698) Unit!52192)

(assert (=> d!166737 (= lt!676920 (choose!2104 (t!51913 l!1390) key!405 value!194))))

(declare-fun e!882523 () Bool)

(assert (=> d!166737 e!882523))

(declare-fun res!1080587 () Bool)

(assert (=> d!166737 (=> (not res!1080587) (not e!882523))))

(assert (=> d!166737 (= res!1080587 (isStrictlySorted!1087 (t!51913 l!1390)))))

(assert (=> d!166737 (= (lemmaContainsTupThenGetReturnValue!400 (t!51913 l!1390) key!405 value!194) lt!676920)))

(declare-fun b!1581541 () Bool)

(declare-fun res!1080588 () Bool)

(assert (=> b!1581541 (=> (not res!1080588) (not e!882523))))

(assert (=> b!1581541 (= res!1080588 (containsKey!933 (t!51913 l!1390) key!405))))

(declare-fun b!1581542 () Bool)

(assert (=> b!1581542 (= e!882523 (contains!10520 (t!51913 l!1390) (tuple2!25745 key!405 value!194)))))

(assert (= (and d!166737 res!1080587) b!1581541))

(assert (= (and b!1581541 res!1080588) b!1581542))

(assert (=> d!166737 m!1452371))

(declare-fun m!1452459 () Bool)

(assert (=> d!166737 m!1452459))

(assert (=> d!166737 m!1452365))

(assert (=> b!1581541 m!1452367))

(declare-fun m!1452461 () Bool)

(assert (=> b!1581542 m!1452461))

(assert (=> b!1581377 d!166737))

(declare-fun d!166743 () Bool)

(declare-fun res!1080591 () Bool)

(declare-fun e!882526 () Bool)

(assert (=> d!166743 (=> res!1080591 e!882526)))

(assert (=> d!166743 (= res!1080591 (and ((_ is Cons!36988) (t!51913 l!1390)) (= (_1!12882 (h!38532 (t!51913 l!1390))) key!405)))))

(assert (=> d!166743 (= (containsKey!933 (t!51913 l!1390) key!405) e!882526)))

(declare-fun b!1581545 () Bool)

(declare-fun e!882527 () Bool)

(assert (=> b!1581545 (= e!882526 e!882527)))

(declare-fun res!1080592 () Bool)

(assert (=> b!1581545 (=> (not res!1080592) (not e!882527))))

(assert (=> b!1581545 (= res!1080592 (and (or (not ((_ is Cons!36988) (t!51913 l!1390))) (bvsle (_1!12882 (h!38532 (t!51913 l!1390))) key!405)) ((_ is Cons!36988) (t!51913 l!1390)) (bvslt (_1!12882 (h!38532 (t!51913 l!1390))) key!405)))))

(declare-fun b!1581546 () Bool)

(assert (=> b!1581546 (= e!882527 (containsKey!933 (t!51913 (t!51913 l!1390)) key!405))))

(assert (= (and d!166743 (not res!1080591)) b!1581545))

(assert (= (and b!1581545 res!1080592) b!1581546))

(declare-fun m!1452465 () Bool)

(assert (=> b!1581546 m!1452465))

