; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252282 () Bool)

(assert start!252282)

(declare-fun b!2598382 () Bool)

(declare-fun res!1094048 () Bool)

(declare-fun e!1640071 () Bool)

(assert (=> b!2598382 (=> (not res!1094048) (not e!1640071))))

(declare-datatypes ((B!2271 0))(
  ( (B!2272 (val!9603 Int)) )
))
(declare-datatypes ((List!30036 0))(
  ( (Nil!29936) (Cons!29936 (h!35356 B!2271) (t!213049 List!30036)) )
))
(declare-fun l!3796 () List!30036)

(declare-fun e!9468 () B!2271)

(declare-fun contains!5484 (List!30036 B!2271) Bool)

(assert (=> b!2598382 (= res!1094048 (contains!5484 l!3796 e!9468))))

(declare-fun b!2598383 () Bool)

(declare-fun e!1640070 () Bool)

(declare-fun tp_is_empty!13551 () Bool)

(declare-fun tp!823495 () Bool)

(assert (=> b!2598383 (= e!1640070 (and tp_is_empty!13551 tp!823495))))

(declare-fun b!2598384 () Bool)

(declare-fun res!1094046 () Bool)

(assert (=> b!2598384 (=> (not res!1094046) (not e!1640071))))

(declare-fun noDuplicate!484 (List!30036) Bool)

(assert (=> b!2598384 (= res!1094046 (noDuplicate!484 (t!213049 l!3796)))))

(declare-fun res!1094047 () Bool)

(assert (=> start!252282 (=> (not res!1094047) (not e!1640071))))

(assert (=> start!252282 (= res!1094047 (noDuplicate!484 l!3796))))

(assert (=> start!252282 e!1640071))

(assert (=> start!252282 e!1640070))

(assert (=> start!252282 tp_is_empty!13551))

(declare-fun b!2598385 () Bool)

(assert (=> b!2598385 (= e!1640071 (not (contains!5484 (t!213049 l!3796) e!9468)))))

(declare-fun b!2598386 () Bool)

(declare-fun res!1094049 () Bool)

(assert (=> b!2598386 (=> (not res!1094049) (not e!1640071))))

(assert (=> b!2598386 (= res!1094049 (and (is-Cons!29936 l!3796) (not (= (h!35356 l!3796) e!9468))))))

(assert (= (and start!252282 res!1094047) b!2598382))

(assert (= (and b!2598382 res!1094048) b!2598386))

(assert (= (and b!2598386 res!1094049) b!2598384))

(assert (= (and b!2598384 res!1094046) b!2598385))

(assert (= (and start!252282 (is-Cons!29936 l!3796)) b!2598383))

(declare-fun m!2934469 () Bool)

(assert (=> b!2598382 m!2934469))

(declare-fun m!2934471 () Bool)

(assert (=> b!2598384 m!2934471))

(declare-fun m!2934473 () Bool)

(assert (=> start!252282 m!2934473))

(declare-fun m!2934475 () Bool)

(assert (=> b!2598385 m!2934475))

(push 1)

(assert (not start!252282))

(assert (not b!2598382))

(assert (not b!2598383))

(assert tp_is_empty!13551)

(assert (not b!2598384))

(assert (not b!2598385))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736270 () Bool)

(declare-fun lt!914938 () Bool)

(declare-fun content!4220 (List!30036) (Set B!2271))

(assert (=> d!736270 (= lt!914938 (set.member e!9468 (content!4220 l!3796)))))

(declare-fun e!1640082 () Bool)

(assert (=> d!736270 (= lt!914938 e!1640082)))

(declare-fun res!1094066 () Bool)

(assert (=> d!736270 (=> (not res!1094066) (not e!1640082))))

(assert (=> d!736270 (= res!1094066 (is-Cons!29936 l!3796))))

(assert (=> d!736270 (= (contains!5484 l!3796 e!9468) lt!914938)))

(declare-fun b!2598406 () Bool)

(declare-fun e!1640083 () Bool)

(assert (=> b!2598406 (= e!1640082 e!1640083)))

(declare-fun res!1094067 () Bool)

(assert (=> b!2598406 (=> res!1094067 e!1640083)))

(assert (=> b!2598406 (= res!1094067 (= (h!35356 l!3796) e!9468))))

(declare-fun b!2598407 () Bool)

(assert (=> b!2598407 (= e!1640083 (contains!5484 (t!213049 l!3796) e!9468))))

(assert (= (and d!736270 res!1094066) b!2598406))

(assert (= (and b!2598406 (not res!1094067)) b!2598407))

(declare-fun m!2934485 () Bool)

(assert (=> d!736270 m!2934485))

(declare-fun m!2934487 () Bool)

(assert (=> d!736270 m!2934487))

(assert (=> b!2598407 m!2934475))

(assert (=> b!2598382 d!736270))

(declare-fun d!736272 () Bool)

(declare-fun res!1094076 () Bool)

(declare-fun e!1640092 () Bool)

(assert (=> d!736272 (=> res!1094076 e!1640092)))

(assert (=> d!736272 (= res!1094076 (is-Nil!29936 (t!213049 l!3796)))))

(assert (=> d!736272 (= (noDuplicate!484 (t!213049 l!3796)) e!1640092)))

(declare-fun b!2598416 () Bool)

(declare-fun e!1640093 () Bool)

(assert (=> b!2598416 (= e!1640092 e!1640093)))

(declare-fun res!1094077 () Bool)

(assert (=> b!2598416 (=> (not res!1094077) (not e!1640093))))

(assert (=> b!2598416 (= res!1094077 (not (contains!5484 (t!213049 (t!213049 l!3796)) (h!35356 (t!213049 l!3796)))))))

(declare-fun b!2598417 () Bool)

(assert (=> b!2598417 (= e!1640093 (noDuplicate!484 (t!213049 (t!213049 l!3796))))))

(assert (= (and d!736272 (not res!1094076)) b!2598416))

(assert (= (and b!2598416 res!1094077) b!2598417))

(declare-fun m!2934489 () Bool)

(assert (=> b!2598416 m!2934489))

(declare-fun m!2934491 () Bool)

(assert (=> b!2598417 m!2934491))

(assert (=> b!2598384 d!736272))

(declare-fun d!736274 () Bool)

(declare-fun lt!914941 () Bool)

(assert (=> d!736274 (= lt!914941 (set.member e!9468 (content!4220 (t!213049 l!3796))))))

(declare-fun e!1640094 () Bool)

(assert (=> d!736274 (= lt!914941 e!1640094)))

(declare-fun res!1094078 () Bool)

(assert (=> d!736274 (=> (not res!1094078) (not e!1640094))))

(assert (=> d!736274 (= res!1094078 (is-Cons!29936 (t!213049 l!3796)))))

(assert (=> d!736274 (= (contains!5484 (t!213049 l!3796) e!9468) lt!914941)))

(declare-fun b!2598418 () Bool)

(declare-fun e!1640095 () Bool)

(assert (=> b!2598418 (= e!1640094 e!1640095)))

(declare-fun res!1094079 () Bool)

(assert (=> b!2598418 (=> res!1094079 e!1640095)))

(assert (=> b!2598418 (= res!1094079 (= (h!35356 (t!213049 l!3796)) e!9468))))

(declare-fun b!2598419 () Bool)

(assert (=> b!2598419 (= e!1640095 (contains!5484 (t!213049 (t!213049 l!3796)) e!9468))))

(assert (= (and d!736274 res!1094078) b!2598418))

(assert (= (and b!2598418 (not res!1094079)) b!2598419))

(declare-fun m!2934493 () Bool)

(assert (=> d!736274 m!2934493))

(declare-fun m!2934495 () Bool)

(assert (=> d!736274 m!2934495))

(declare-fun m!2934497 () Bool)

(assert (=> b!2598419 m!2934497))

(assert (=> b!2598385 d!736274))

(declare-fun d!736276 () Bool)

(declare-fun res!1094080 () Bool)

(declare-fun e!1640096 () Bool)

(assert (=> d!736276 (=> res!1094080 e!1640096)))

(assert (=> d!736276 (= res!1094080 (is-Nil!29936 l!3796))))

(assert (=> d!736276 (= (noDuplicate!484 l!3796) e!1640096)))

(declare-fun b!2598420 () Bool)

(declare-fun e!1640097 () Bool)

(assert (=> b!2598420 (= e!1640096 e!1640097)))

(declare-fun res!1094081 () Bool)

(assert (=> b!2598420 (=> (not res!1094081) (not e!1640097))))

(assert (=> b!2598420 (= res!1094081 (not (contains!5484 (t!213049 l!3796) (h!35356 l!3796))))))

(declare-fun b!2598421 () Bool)

(assert (=> b!2598421 (= e!1640097 (noDuplicate!484 (t!213049 l!3796)))))

(assert (= (and d!736276 (not res!1094080)) b!2598420))

(assert (= (and b!2598420 res!1094081) b!2598421))

(declare-fun m!2934499 () Bool)

(assert (=> b!2598420 m!2934499))

(assert (=> b!2598421 m!2934471))

(assert (=> start!252282 d!736276))

(declare-fun b!2598428 () Bool)

(declare-fun e!1640102 () Bool)

(declare-fun tp!823501 () Bool)

(assert (=> b!2598428 (= e!1640102 (and tp_is_empty!13551 tp!823501))))

(assert (=> b!2598383 (= tp!823495 e!1640102)))

(assert (= (and b!2598383 (is-Cons!29936 (t!213049 l!3796))) b!2598428))

(push 1)

(assert (not b!2598417))

(assert tp_is_empty!13551)

(assert (not b!2598421))

(assert (not d!736274))

(assert (not b!2598416))

(assert (not b!2598420))

(assert (not d!736270))

(assert (not b!2598419))

(assert (not b!2598428))

(assert (not b!2598407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

