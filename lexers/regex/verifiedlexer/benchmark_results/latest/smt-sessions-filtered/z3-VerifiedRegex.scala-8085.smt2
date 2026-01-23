; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417090 () Bool)

(assert start!417090)

(declare-fun b!4329332 () Bool)

(declare-fun res!1774267 () Bool)

(declare-fun e!2693972 () Bool)

(assert (=> b!4329332 (=> (not res!1774267) (not e!2693972))))

(declare-datatypes ((K!9830 0))(
  ( (K!9831 (val!16135 Int)) )
))
(declare-datatypes ((V!10076 0))(
  ( (V!10077 (val!16136 Int)) )
))
(declare-datatypes ((tuple2!47600 0))(
  ( (tuple2!47601 (_1!27094 K!9830) (_2!27094 V!10076)) )
))
(declare-datatypes ((List!48628 0))(
  ( (Nil!48504) (Cons!48504 (h!53973 tuple2!47600) (t!355540 List!48628)) )
))
(declare-fun l!13918 () List!48628)

(get-info :version)

(assert (=> b!4329332 (= res!1774267 ((_ is Nil!48504) l!13918))))

(declare-fun res!1774264 () Bool)

(assert (=> start!417090 (=> (not res!1774264) (not e!2693972))))

(declare-fun noDuplicateKeys!317 (List!48628) Bool)

(assert (=> start!417090 (= res!1774264 (noDuplicateKeys!317 l!13918))))

(assert (=> start!417090 e!2693972))

(declare-fun e!2693973 () Bool)

(assert (=> start!417090 e!2693973))

(declare-fun tp_is_empty!24457 () Bool)

(assert (=> start!417090 tp_is_empty!24457))

(declare-fun tp!1328166 () Bool)

(declare-fun b!4329333 () Bool)

(declare-fun tp_is_empty!24459 () Bool)

(assert (=> b!4329333 (= e!2693973 (and tp_is_empty!24457 tp_is_empty!24459 tp!1328166))))

(declare-fun b!4329334 () Bool)

(declare-fun res!1774265 () Bool)

(assert (=> b!4329334 (=> (not res!1774265) (not e!2693972))))

(declare-fun otherK!9 () K!9830)

(declare-fun key!5304 () K!9830)

(assert (=> b!4329334 (= res!1774265 (not (= otherK!9 key!5304)))))

(declare-fun b!4329335 () Bool)

(declare-fun res!1774266 () Bool)

(assert (=> b!4329335 (=> (not res!1774266) (not e!2693972))))

(declare-fun containsKey!463 (List!48628 K!9830) Bool)

(assert (=> b!4329335 (= res!1774266 (not (containsKey!463 l!13918 otherK!9)))))

(declare-fun b!4329336 () Bool)

(declare-fun removePairForKey!313 (List!48628 K!9830) List!48628)

(assert (=> b!4329336 (= e!2693972 (containsKey!463 (removePairForKey!313 l!13918 key!5304) otherK!9))))

(assert (= (and start!417090 res!1774264) b!4329334))

(assert (= (and b!4329334 res!1774265) b!4329335))

(assert (= (and b!4329335 res!1774266) b!4329332))

(assert (= (and b!4329332 res!1774267) b!4329336))

(assert (= (and start!417090 ((_ is Cons!48504) l!13918)) b!4329333))

(declare-fun m!4923789 () Bool)

(assert (=> start!417090 m!4923789))

(declare-fun m!4923791 () Bool)

(assert (=> b!4329335 m!4923791))

(declare-fun m!4923793 () Bool)

(assert (=> b!4329336 m!4923793))

(assert (=> b!4329336 m!4923793))

(declare-fun m!4923795 () Bool)

(assert (=> b!4329336 m!4923795))

(check-sat tp_is_empty!24457 (not b!4329336) (not start!417090) tp_is_empty!24459 (not b!4329335) (not b!4329333))
(check-sat)
(get-model)

(declare-fun d!1272386 () Bool)

(declare-fun res!1774278 () Bool)

(declare-fun e!2693984 () Bool)

(assert (=> d!1272386 (=> res!1774278 e!2693984)))

(assert (=> d!1272386 (= res!1774278 (not ((_ is Cons!48504) l!13918)))))

(assert (=> d!1272386 (= (noDuplicateKeys!317 l!13918) e!2693984)))

(declare-fun b!4329347 () Bool)

(declare-fun e!2693985 () Bool)

(assert (=> b!4329347 (= e!2693984 e!2693985)))

(declare-fun res!1774279 () Bool)

(assert (=> b!4329347 (=> (not res!1774279) (not e!2693985))))

(assert (=> b!4329347 (= res!1774279 (not (containsKey!463 (t!355540 l!13918) (_1!27094 (h!53973 l!13918)))))))

(declare-fun b!4329348 () Bool)

(assert (=> b!4329348 (= e!2693985 (noDuplicateKeys!317 (t!355540 l!13918)))))

(assert (= (and d!1272386 (not res!1774278)) b!4329347))

(assert (= (and b!4329347 res!1774279) b!4329348))

(declare-fun m!4923799 () Bool)

(assert (=> b!4329347 m!4923799))

(declare-fun m!4923801 () Bool)

(assert (=> b!4329348 m!4923801))

(assert (=> start!417090 d!1272386))

(declare-fun d!1272390 () Bool)

(declare-fun res!1774284 () Bool)

(declare-fun e!2693994 () Bool)

(assert (=> d!1272390 (=> res!1774284 e!2693994)))

(assert (=> d!1272390 (= res!1774284 (and ((_ is Cons!48504) (removePairForKey!313 l!13918 key!5304)) (= (_1!27094 (h!53973 (removePairForKey!313 l!13918 key!5304))) otherK!9)))))

(assert (=> d!1272390 (= (containsKey!463 (removePairForKey!313 l!13918 key!5304) otherK!9) e!2693994)))

(declare-fun b!4329361 () Bool)

(declare-fun e!2693995 () Bool)

(assert (=> b!4329361 (= e!2693994 e!2693995)))

(declare-fun res!1774285 () Bool)

(assert (=> b!4329361 (=> (not res!1774285) (not e!2693995))))

(assert (=> b!4329361 (= res!1774285 ((_ is Cons!48504) (removePairForKey!313 l!13918 key!5304)))))

(declare-fun b!4329362 () Bool)

(assert (=> b!4329362 (= e!2693995 (containsKey!463 (t!355540 (removePairForKey!313 l!13918 key!5304)) otherK!9))))

(assert (= (and d!1272390 (not res!1774284)) b!4329361))

(assert (= (and b!4329361 res!1774285) b!4329362))

(declare-fun m!4923803 () Bool)

(assert (=> b!4329362 m!4923803))

(assert (=> b!4329336 d!1272390))

(declare-fun b!4329391 () Bool)

(declare-fun e!2694013 () List!48628)

(assert (=> b!4329391 (= e!2694013 Nil!48504)))

(declare-fun b!4329390 () Bool)

(assert (=> b!4329390 (= e!2694013 (Cons!48504 (h!53973 l!13918) (removePairForKey!313 (t!355540 l!13918) key!5304)))))

(declare-fun b!4329389 () Bool)

(declare-fun e!2694014 () List!48628)

(assert (=> b!4329389 (= e!2694014 e!2694013)))

(declare-fun c!736628 () Bool)

(assert (=> b!4329389 (= c!736628 ((_ is Cons!48504) l!13918))))

(declare-fun d!1272392 () Bool)

(declare-fun lt!1545389 () List!48628)

(assert (=> d!1272392 (not (containsKey!463 lt!1545389 key!5304))))

(assert (=> d!1272392 (= lt!1545389 e!2694014)))

(declare-fun c!736629 () Bool)

(assert (=> d!1272392 (= c!736629 (and ((_ is Cons!48504) l!13918) (= (_1!27094 (h!53973 l!13918)) key!5304)))))

(assert (=> d!1272392 (noDuplicateKeys!317 l!13918)))

(assert (=> d!1272392 (= (removePairForKey!313 l!13918 key!5304) lt!1545389)))

(declare-fun b!4329388 () Bool)

(assert (=> b!4329388 (= e!2694014 (t!355540 l!13918))))

(assert (= (and d!1272392 c!736629) b!4329388))

(assert (= (and d!1272392 (not c!736629)) b!4329389))

(assert (= (and b!4329389 c!736628) b!4329390))

(assert (= (and b!4329389 (not c!736628)) b!4329391))

(declare-fun m!4923815 () Bool)

(assert (=> b!4329390 m!4923815))

(declare-fun m!4923817 () Bool)

(assert (=> d!1272392 m!4923817))

(assert (=> d!1272392 m!4923789))

(assert (=> b!4329336 d!1272392))

(declare-fun d!1272398 () Bool)

(declare-fun res!1774294 () Bool)

(declare-fun e!2694015 () Bool)

(assert (=> d!1272398 (=> res!1774294 e!2694015)))

(assert (=> d!1272398 (= res!1774294 (and ((_ is Cons!48504) l!13918) (= (_1!27094 (h!53973 l!13918)) otherK!9)))))

(assert (=> d!1272398 (= (containsKey!463 l!13918 otherK!9) e!2694015)))

(declare-fun b!4329392 () Bool)

(declare-fun e!2694016 () Bool)

(assert (=> b!4329392 (= e!2694015 e!2694016)))

(declare-fun res!1774295 () Bool)

(assert (=> b!4329392 (=> (not res!1774295) (not e!2694016))))

(assert (=> b!4329392 (= res!1774295 ((_ is Cons!48504) l!13918))))

(declare-fun b!4329393 () Bool)

(assert (=> b!4329393 (= e!2694016 (containsKey!463 (t!355540 l!13918) otherK!9))))

(assert (= (and d!1272398 (not res!1774294)) b!4329392))

(assert (= (and b!4329392 res!1774295) b!4329393))

(declare-fun m!4923819 () Bool)

(assert (=> b!4329393 m!4923819))

(assert (=> b!4329335 d!1272398))

(declare-fun tp!1328172 () Bool)

(declare-fun e!2694019 () Bool)

(declare-fun b!4329398 () Bool)

(assert (=> b!4329398 (= e!2694019 (and tp_is_empty!24457 tp_is_empty!24459 tp!1328172))))

(assert (=> b!4329333 (= tp!1328166 e!2694019)))

(assert (= (and b!4329333 ((_ is Cons!48504) (t!355540 l!13918))) b!4329398))

(check-sat (not b!4329393) (not b!4329347) tp_is_empty!24457 (not b!4329362) (not d!1272392) (not b!4329390) tp_is_empty!24459 (not b!4329348) (not b!4329398))
(check-sat)
