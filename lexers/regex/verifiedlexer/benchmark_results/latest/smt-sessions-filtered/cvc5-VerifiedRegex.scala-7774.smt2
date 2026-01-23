; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!408616 () Bool)

(assert start!408616)

(declare-fun b!4264372 () Bool)

(declare-fun e!2647827 () Bool)

(declare-fun tp_is_empty!22911 () Bool)

(declare-fun tp!1307336 () Bool)

(assert (=> b!4264372 (= e!2647827 (and tp_is_empty!22911 tp!1307336))))

(declare-fun res!1752510 () Bool)

(declare-fun e!2647828 () Bool)

(assert (=> start!408616 (=> (not res!1752510) (not e!2647828))))

(declare-datatypes ((B!2843 0))(
  ( (B!2844 (val!15251 Int)) )
))
(declare-datatypes ((List!47380 0))(
  ( (Nil!47256) (Cons!47256 (h!52676 B!2843) (t!353447 List!47380)) )
))
(declare-fun l1!1529 () List!47380)

(declare-fun b!25415 () B!2843)

(declare-fun contains!9777 (List!47380 B!2843) Bool)

(assert (=> start!408616 (= res!1752510 (not (contains!9777 l1!1529 b!25415)))))

(assert (=> start!408616 e!2647828))

(declare-fun e!2647829 () Bool)

(assert (=> start!408616 e!2647829))

(assert (=> start!408616 tp_is_empty!22911))

(assert (=> start!408616 e!2647827))

(declare-fun b!4264369 () Bool)

(declare-fun res!1752511 () Bool)

(assert (=> b!4264369 (=> (not res!1752511) (not e!2647828))))

(declare-fun l2!1498 () List!47380)

(assert (=> b!4264369 (= res!1752511 (not (contains!9777 l2!1498 b!25415)))))

(declare-fun b!4264371 () Bool)

(declare-fun tp!1307335 () Bool)

(assert (=> b!4264371 (= e!2647829 (and tp_is_empty!22911 tp!1307335))))

(declare-fun b!4264370 () Bool)

(assert (=> b!4264370 (= e!2647828 (and (is-Cons!47256 l1!1529) (= (h!52676 l1!1529) b!25415)))))

(assert (= (and start!408616 res!1752510) b!4264369))

(assert (= (and b!4264369 res!1752511) b!4264370))

(assert (= (and start!408616 (is-Cons!47256 l1!1529)) b!4264371))

(assert (= (and start!408616 (is-Cons!47256 l2!1498)) b!4264372))

(declare-fun m!4854711 () Bool)

(assert (=> start!408616 m!4854711))

(declare-fun m!4854713 () Bool)

(assert (=> b!4264369 m!4854713))

(push 1)

(assert (not b!4264372))

(assert (not b!4264371))

(assert (not b!4264369))

(assert tp_is_empty!22911)

(assert (not start!408616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1256423 () Bool)

(declare-fun lt!1511393 () Bool)

(declare-fun content!7459 (List!47380) (Set B!2843))

(assert (=> d!1256423 (= lt!1511393 (set.member b!25415 (content!7459 l2!1498)))))

(declare-fun e!2647844 () Bool)

(assert (=> d!1256423 (= lt!1511393 e!2647844)))

(declare-fun res!1752522 () Bool)

(assert (=> d!1256423 (=> (not res!1752522) (not e!2647844))))

(assert (=> d!1256423 (= res!1752522 (is-Cons!47256 l2!1498))))

(assert (=> d!1256423 (= (contains!9777 l2!1498 b!25415) lt!1511393)))

(declare-fun b!4264389 () Bool)

(declare-fun e!2647843 () Bool)

(assert (=> b!4264389 (= e!2647844 e!2647843)))

(declare-fun res!1752523 () Bool)

(assert (=> b!4264389 (=> res!1752523 e!2647843)))

(assert (=> b!4264389 (= res!1752523 (= (h!52676 l2!1498) b!25415))))

(declare-fun b!4264390 () Bool)

(assert (=> b!4264390 (= e!2647843 (contains!9777 (t!353447 l2!1498) b!25415))))

(assert (= (and d!1256423 res!1752522) b!4264389))

(assert (= (and b!4264389 (not res!1752523)) b!4264390))

(declare-fun m!4854719 () Bool)

(assert (=> d!1256423 m!4854719))

(declare-fun m!4854721 () Bool)

(assert (=> d!1256423 m!4854721))

(declare-fun m!4854723 () Bool)

(assert (=> b!4264390 m!4854723))

(assert (=> b!4264369 d!1256423))

(declare-fun d!1256427 () Bool)

(declare-fun lt!1511394 () Bool)

(assert (=> d!1256427 (= lt!1511394 (set.member b!25415 (content!7459 l1!1529)))))

(declare-fun e!2647846 () Bool)

(assert (=> d!1256427 (= lt!1511394 e!2647846)))

(declare-fun res!1752524 () Bool)

(assert (=> d!1256427 (=> (not res!1752524) (not e!2647846))))

(assert (=> d!1256427 (= res!1752524 (is-Cons!47256 l1!1529))))

(assert (=> d!1256427 (= (contains!9777 l1!1529 b!25415) lt!1511394)))

(declare-fun b!4264391 () Bool)

(declare-fun e!2647845 () Bool)

(assert (=> b!4264391 (= e!2647846 e!2647845)))

(declare-fun res!1752525 () Bool)

(assert (=> b!4264391 (=> res!1752525 e!2647845)))

(assert (=> b!4264391 (= res!1752525 (= (h!52676 l1!1529) b!25415))))

(declare-fun b!4264392 () Bool)

(assert (=> b!4264392 (= e!2647845 (contains!9777 (t!353447 l1!1529) b!25415))))

(assert (= (and d!1256427 res!1752524) b!4264391))

(assert (= (and b!4264391 (not res!1752525)) b!4264392))

(declare-fun m!4854725 () Bool)

(assert (=> d!1256427 m!4854725))

(declare-fun m!4854727 () Bool)

(assert (=> d!1256427 m!4854727))

(declare-fun m!4854729 () Bool)

(assert (=> b!4264392 m!4854729))

(assert (=> start!408616 d!1256427))

(declare-fun b!4264397 () Bool)

(declare-fun e!2647849 () Bool)

(declare-fun tp!1307345 () Bool)

(assert (=> b!4264397 (= e!2647849 (and tp_is_empty!22911 tp!1307345))))

(assert (=> b!4264371 (= tp!1307335 e!2647849)))

(assert (= (and b!4264371 (is-Cons!47256 (t!353447 l1!1529))) b!4264397))

(declare-fun b!4264400 () Bool)

(declare-fun e!2647854 () Bool)

(declare-fun tp!1307346 () Bool)

(assert (=> b!4264400 (= e!2647854 (and tp_is_empty!22911 tp!1307346))))

(assert (=> b!4264372 (= tp!1307336 e!2647854)))

(assert (= (and b!4264372 (is-Cons!47256 (t!353447 l2!1498))) b!4264400))

(push 1)

(assert (not b!4264392))

(assert (not b!4264397))

(assert (not b!4264390))

(assert tp_is_empty!22911)

(assert (not d!1256427))

(assert (not b!4264400))

(assert (not d!1256423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

