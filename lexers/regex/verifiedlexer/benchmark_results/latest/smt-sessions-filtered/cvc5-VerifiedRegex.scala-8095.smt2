; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417276 () Bool)

(assert start!417276)

(declare-fun res!1774874 () Bool)

(declare-fun e!2694547 () Bool)

(assert (=> start!417276 (=> (not res!1774874) (not e!2694547))))

(declare-datatypes ((K!9878 0))(
  ( (K!9879 (val!16173 Int)) )
))
(declare-datatypes ((V!10124 0))(
  ( (V!10125 (val!16174 Int)) )
))
(declare-datatypes ((tuple2!47666 0))(
  ( (tuple2!47667 (_1!27127 K!9878) (_2!27127 V!10124)) )
))
(declare-datatypes ((List!48661 0))(
  ( (Nil!48537) (Cons!48537 (h!54014 tuple2!47666) (t!355573 List!48661)) )
))
(declare-datatypes ((tuple2!47668 0))(
  ( (tuple2!47669 (_1!27128 (_ BitVec 64)) (_2!27128 List!48661)) )
))
(declare-datatypes ((List!48662 0))(
  ( (Nil!48538) (Cons!48538 (h!54015 tuple2!47668) (t!355574 List!48662)) )
))
(declare-datatypes ((ListLongMap!1281 0))(
  ( (ListLongMap!1282 (toList!2641 List!48662)) )
))
(declare-fun lm!2227 () ListLongMap!1281)

(declare-fun lambda!134525 () Int)

(declare-fun forall!8870 (List!48662 Int) Bool)

(assert (=> start!417276 (= res!1774874 (forall!8870 (toList!2641 lm!2227) lambda!134525))))

(assert (=> start!417276 e!2694547))

(declare-fun e!2694546 () Bool)

(declare-fun inv!64065 (ListLongMap!1281) Bool)

(assert (=> start!417276 (and (inv!64065 lm!2227) e!2694546)))

(assert (=> start!417276 true))

(declare-fun e!2694548 () Bool)

(assert (=> start!417276 e!2694548))

(declare-fun b!4330285 () Bool)

(declare-fun res!1774876 () Bool)

(assert (=> b!4330285 (=> (not res!1774876) (not e!2694547))))

(declare-fun hash!427 () (_ BitVec 64))

(declare-fun newBucket!230 () List!48661)

(declare-datatypes ((Hashable!4716 0))(
  ( (HashableExt!4715 (__x!30419 Int)) )
))
(declare-fun hashF!1461 () Hashable!4716)

(declare-fun allKeysSameHash!284 (List!48661 (_ BitVec 64) Hashable!4716) Bool)

(assert (=> b!4330285 (= res!1774876 (allKeysSameHash!284 newBucket!230 hash!427 hashF!1461))))

(declare-fun tp_is_empty!24533 () Bool)

(declare-fun b!4330286 () Bool)

(declare-fun tp!1328373 () Bool)

(declare-fun tp_is_empty!24535 () Bool)

(assert (=> b!4330286 (= e!2694548 (and tp_is_empty!24533 tp_is_empty!24535 tp!1328373))))

(declare-fun b!4330287 () Bool)

(declare-fun res!1774870 () Bool)

(assert (=> b!4330287 (=> (not res!1774870) (not e!2694547))))

(declare-fun noDuplicateKeys!336 (List!48661) Bool)

(assert (=> b!4330287 (= res!1774870 (noDuplicateKeys!336 newBucket!230))))

(declare-fun b!4330288 () Bool)

(declare-fun res!1774873 () Bool)

(assert (=> b!4330288 (=> (not res!1774873) (not e!2694547))))

(declare-fun allKeysSameHashInMap!428 (ListLongMap!1281 Hashable!4716) Bool)

(assert (=> b!4330288 (= res!1774873 (allKeysSameHashInMap!428 lm!2227 hashF!1461))))

(declare-fun b!4330289 () Bool)

(declare-fun tp!1328374 () Bool)

(assert (=> b!4330289 (= e!2694546 tp!1328374)))

(declare-fun b!4330290 () Bool)

(declare-fun size!35843 (List!48662) Int)

(assert (=> b!4330290 (= e!2694547 (>= (size!35843 (t!355574 (toList!2641 lm!2227))) (size!35843 (toList!2641 lm!2227))))))

(declare-fun b!4330291 () Bool)

(declare-fun res!1774871 () Bool)

(assert (=> b!4330291 (=> (not res!1774871) (not e!2694547))))

(assert (=> b!4330291 (= res!1774871 (is-Cons!48538 (toList!2641 lm!2227)))))

(declare-fun b!4330292 () Bool)

(declare-fun res!1774872 () Bool)

(assert (=> b!4330292 (=> (not res!1774872) (not e!2694547))))

(assert (=> b!4330292 (= res!1774872 (allKeysSameHashInMap!428 (ListLongMap!1282 (t!355574 (toList!2641 lm!2227))) hashF!1461))))

(declare-fun b!4330293 () Bool)

(declare-fun res!1774875 () Bool)

(assert (=> b!4330293 (=> (not res!1774875) (not e!2694547))))

(assert (=> b!4330293 (= res!1774875 (forall!8870 (t!355574 (toList!2641 lm!2227)) lambda!134525))))

(assert (= (and start!417276 res!1774874) b!4330288))

(assert (= (and b!4330288 res!1774873) b!4330287))

(assert (= (and b!4330287 res!1774870) b!4330285))

(assert (= (and b!4330285 res!1774876) b!4330291))

(assert (= (and b!4330291 res!1774871) b!4330293))

(assert (= (and b!4330293 res!1774875) b!4330292))

(assert (= (and b!4330292 res!1774872) b!4330290))

(assert (= start!417276 b!4330289))

(assert (= (and start!417276 (is-Cons!48537 newBucket!230)) b!4330286))

(declare-fun m!4924383 () Bool)

(assert (=> start!417276 m!4924383))

(declare-fun m!4924385 () Bool)

(assert (=> start!417276 m!4924385))

(declare-fun m!4924387 () Bool)

(assert (=> b!4330287 m!4924387))

(declare-fun m!4924389 () Bool)

(assert (=> b!4330290 m!4924389))

(declare-fun m!4924391 () Bool)

(assert (=> b!4330290 m!4924391))

(declare-fun m!4924393 () Bool)

(assert (=> b!4330292 m!4924393))

(declare-fun m!4924395 () Bool)

(assert (=> b!4330288 m!4924395))

(declare-fun m!4924397 () Bool)

(assert (=> b!4330293 m!4924397))

(declare-fun m!4924399 () Bool)

(assert (=> b!4330285 m!4924399))

(push 1)

(assert (not b!4330286))

(assert tp_is_empty!24533)

(assert (not b!4330285))

(assert (not b!4330287))

(assert (not b!4330293))

(assert (not start!417276))

(assert (not b!4330290))

(assert tp_is_empty!24535)

(assert (not b!4330289))

(assert (not b!4330292))

(assert (not b!4330288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272660 () Bool)

(declare-fun res!1774902 () Bool)

(declare-fun e!2694562 () Bool)

(assert (=> d!1272660 (=> res!1774902 e!2694562)))

(assert (=> d!1272660 (= res!1774902 (not (is-Cons!48537 newBucket!230)))))

(assert (=> d!1272660 (= (noDuplicateKeys!336 newBucket!230) e!2694562)))

(declare-fun b!4330325 () Bool)

(declare-fun e!2694563 () Bool)

(assert (=> b!4330325 (= e!2694562 e!2694563)))

(declare-fun res!1774903 () Bool)

(assert (=> b!4330325 (=> (not res!1774903) (not e!2694563))))

(declare-fun containsKey!475 (List!48661 K!9878) Bool)

(assert (=> b!4330325 (= res!1774903 (not (containsKey!475 (t!355573 newBucket!230) (_1!27127 (h!54014 newBucket!230)))))))

(declare-fun b!4330326 () Bool)

(assert (=> b!4330326 (= e!2694563 (noDuplicateKeys!336 (t!355573 newBucket!230)))))

(assert (= (and d!1272660 (not res!1774902)) b!4330325))

(assert (= (and b!4330325 res!1774903) b!4330326))

(declare-fun m!4924419 () Bool)

(assert (=> b!4330325 m!4924419))

(declare-fun m!4924421 () Bool)

(assert (=> b!4330326 m!4924421))

(assert (=> b!4330287 d!1272660))

(declare-fun bs!607709 () Bool)

(declare-fun d!1272662 () Bool)

(assert (= bs!607709 (and d!1272662 start!417276)))

(declare-fun lambda!134533 () Int)

(assert (=> bs!607709 (not (= lambda!134533 lambda!134525))))

(assert (=> d!1272662 true))

(assert (=> d!1272662 (= (allKeysSameHashInMap!428 (ListLongMap!1282 (t!355574 (toList!2641 lm!2227))) hashF!1461) (forall!8870 (toList!2641 (ListLongMap!1282 (t!355574 (toList!2641 lm!2227)))) lambda!134533))))

(declare-fun bs!607710 () Bool)

(assert (= bs!607710 d!1272662))

(declare-fun m!4924423 () Bool)

(assert (=> bs!607710 m!4924423))

(assert (=> b!4330292 d!1272662))

(declare-fun d!1272664 () Bool)

(declare-fun res!1774908 () Bool)

(declare-fun e!2694568 () Bool)

(assert (=> d!1272664 (=> res!1774908 e!2694568)))

(assert (=> d!1272664 (= res!1774908 (is-Nil!48538 (t!355574 (toList!2641 lm!2227))))))

(assert (=> d!1272664 (= (forall!8870 (t!355574 (toList!2641 lm!2227)) lambda!134525) e!2694568)))

(declare-fun b!4330333 () Bool)

(declare-fun e!2694569 () Bool)

(assert (=> b!4330333 (= e!2694568 e!2694569)))

(declare-fun res!1774909 () Bool)

(assert (=> b!4330333 (=> (not res!1774909) (not e!2694569))))

(declare-fun dynLambda!20540 (Int tuple2!47668) Bool)

(assert (=> b!4330333 (= res!1774909 (dynLambda!20540 lambda!134525 (h!54015 (t!355574 (toList!2641 lm!2227)))))))

(declare-fun b!4330334 () Bool)

(assert (=> b!4330334 (= e!2694569 (forall!8870 (t!355574 (t!355574 (toList!2641 lm!2227))) lambda!134525))))

(assert (= (and d!1272664 (not res!1774908)) b!4330333))

(assert (= (and b!4330333 res!1774909) b!4330334))

(declare-fun b_lambda!127667 () Bool)

(assert (=> (not b_lambda!127667) (not b!4330333)))

(declare-fun m!4924425 () Bool)

(assert (=> b!4330333 m!4924425))

(declare-fun m!4924427 () Bool)

(assert (=> b!4330334 m!4924427))

(assert (=> b!4330293 d!1272664))

(declare-fun bs!607711 () Bool)

(declare-fun d!1272668 () Bool)

(assert (= bs!607711 (and d!1272668 start!417276)))

(declare-fun lambda!134534 () Int)

(assert (=> bs!607711 (not (= lambda!134534 lambda!134525))))

(declare-fun bs!607712 () Bool)

(assert (= bs!607712 (and d!1272668 d!1272662)))

(assert (=> bs!607712 (= lambda!134534 lambda!134533)))

(assert (=> d!1272668 true))

(assert (=> d!1272668 (= (allKeysSameHashInMap!428 lm!2227 hashF!1461) (forall!8870 (toList!2641 lm!2227) lambda!134534))))

(declare-fun bs!607713 () Bool)

(assert (= bs!607713 d!1272668))

(declare-fun m!4924429 () Bool)

(assert (=> bs!607713 m!4924429))

(assert (=> b!4330288 d!1272668))

(declare-fun d!1272670 () Bool)

(declare-fun res!1774910 () Bool)

(declare-fun e!2694570 () Bool)

(assert (=> d!1272670 (=> res!1774910 e!2694570)))

(assert (=> d!1272670 (= res!1774910 (is-Nil!48538 (toList!2641 lm!2227)))))

(assert (=> d!1272670 (= (forall!8870 (toList!2641 lm!2227) lambda!134525) e!2694570)))

(declare-fun b!4330335 () Bool)

(declare-fun e!2694571 () Bool)

(assert (=> b!4330335 (= e!2694570 e!2694571)))

(declare-fun res!1774911 () Bool)

(assert (=> b!4330335 (=> (not res!1774911) (not e!2694571))))

(assert (=> b!4330335 (= res!1774911 (dynLambda!20540 lambda!134525 (h!54015 (toList!2641 lm!2227))))))

(declare-fun b!4330336 () Bool)

(assert (=> b!4330336 (= e!2694571 (forall!8870 (t!355574 (toList!2641 lm!2227)) lambda!134525))))

(assert (= (and d!1272670 (not res!1774910)) b!4330335))

(assert (= (and b!4330335 res!1774911) b!4330336))

(declare-fun b_lambda!127669 () Bool)

(assert (=> (not b_lambda!127669) (not b!4330335)))

(declare-fun m!4924431 () Bool)

(assert (=> b!4330335 m!4924431))

(assert (=> b!4330336 m!4924397))

(assert (=> start!417276 d!1272670))

(declare-fun d!1272672 () Bool)

(declare-fun isStrictlySorted!32 (List!48662) Bool)

(assert (=> d!1272672 (= (inv!64065 lm!2227) (isStrictlySorted!32 (toList!2641 lm!2227)))))

(declare-fun bs!607714 () Bool)

(assert (= bs!607714 d!1272672))

(declare-fun m!4924433 () Bool)

(assert (=> bs!607714 m!4924433))

(assert (=> start!417276 d!1272672))

(declare-fun d!1272674 () Bool)

(assert (=> d!1272674 true))

(assert (=> d!1272674 true))

(declare-fun lambda!134537 () Int)

(declare-fun forall!8872 (List!48661 Int) Bool)

(assert (=> d!1272674 (= (allKeysSameHash!284 newBucket!230 hash!427 hashF!1461) (forall!8872 newBucket!230 lambda!134537))))

(declare-fun bs!607715 () Bool)

(assert (= bs!607715 d!1272674))

(declare-fun m!4924437 () Bool)

(assert (=> bs!607715 m!4924437))

(assert (=> b!4330285 d!1272674))

(declare-fun d!1272676 () Bool)

(declare-fun lt!1545430 () Int)

(assert (=> d!1272676 (>= lt!1545430 0)))

(declare-fun e!2694580 () Int)

(assert (=> d!1272676 (= lt!1545430 e!2694580)))

(declare-fun c!736658 () Bool)

(assert (=> d!1272676 (= c!736658 (is-Nil!48538 (t!355574 (toList!2641 lm!2227))))))

(assert (=> d!1272676 (= (size!35843 (t!355574 (toList!2641 lm!2227))) lt!1545430)))

(declare-fun b!4330351 () Bool)

(assert (=> b!4330351 (= e!2694580 0)))

(declare-fun b!4330352 () Bool)

(assert (=> b!4330352 (= e!2694580 (+ 1 (size!35843 (t!355574 (t!355574 (toList!2641 lm!2227))))))))

(assert (= (and d!1272676 c!736658) b!4330351))

(assert (= (and d!1272676 (not c!736658)) b!4330352))

(declare-fun m!4924439 () Bool)

(assert (=> b!4330352 m!4924439))

(assert (=> b!4330290 d!1272676))

(declare-fun d!1272680 () Bool)

(declare-fun lt!1545431 () Int)

(assert (=> d!1272680 (>= lt!1545431 0)))

(declare-fun e!2694581 () Int)

(assert (=> d!1272680 (= lt!1545431 e!2694581)))

(declare-fun c!736659 () Bool)

(assert (=> d!1272680 (= c!736659 (is-Nil!48538 (toList!2641 lm!2227)))))

(assert (=> d!1272680 (= (size!35843 (toList!2641 lm!2227)) lt!1545431)))

(declare-fun b!4330353 () Bool)

(assert (=> b!4330353 (= e!2694581 0)))

(declare-fun b!4330354 () Bool)

(assert (=> b!4330354 (= e!2694581 (+ 1 (size!35843 (t!355574 (toList!2641 lm!2227)))))))

(assert (= (and d!1272680 c!736659) b!4330353))

(assert (= (and d!1272680 (not c!736659)) b!4330354))

(assert (=> b!4330354 m!4924389))

(assert (=> b!4330290 d!1272680))

(declare-fun e!2694584 () Bool)

(declare-fun tp!1328383 () Bool)

(declare-fun b!4330359 () Bool)

(assert (=> b!4330359 (= e!2694584 (and tp_is_empty!24533 tp_is_empty!24535 tp!1328383))))

(assert (=> b!4330286 (= tp!1328373 e!2694584)))

(assert (= (and b!4330286 (is-Cons!48537 (t!355573 newBucket!230))) b!4330359))

(declare-fun b!4330364 () Bool)

(declare-fun e!2694587 () Bool)

(declare-fun tp!1328388 () Bool)

(declare-fun tp!1328389 () Bool)

(assert (=> b!4330364 (= e!2694587 (and tp!1328388 tp!1328389))))

(assert (=> b!4330289 (= tp!1328374 e!2694587)))

(assert (= (and b!4330289 (is-Cons!48538 (toList!2641 lm!2227))) b!4330364))

(declare-fun b_lambda!127673 () Bool)

(assert (= b_lambda!127669 (or start!417276 b_lambda!127673)))

(declare-fun bs!607717 () Bool)

(declare-fun d!1272684 () Bool)

(assert (= bs!607717 (and d!1272684 start!417276)))

(assert (=> bs!607717 (= (dynLambda!20540 lambda!134525 (h!54015 (toList!2641 lm!2227))) (noDuplicateKeys!336 (_2!27128 (h!54015 (toList!2641 lm!2227)))))))

(declare-fun m!4924443 () Bool)

(assert (=> bs!607717 m!4924443))

(assert (=> b!4330335 d!1272684))

(declare-fun b_lambda!127675 () Bool)

(assert (= b_lambda!127667 (or start!417276 b_lambda!127675)))

(declare-fun bs!607718 () Bool)

(declare-fun d!1272686 () Bool)

(assert (= bs!607718 (and d!1272686 start!417276)))

(assert (=> bs!607718 (= (dynLambda!20540 lambda!134525 (h!54015 (t!355574 (toList!2641 lm!2227)))) (noDuplicateKeys!336 (_2!27128 (h!54015 (t!355574 (toList!2641 lm!2227))))))))

(declare-fun m!4924445 () Bool)

(assert (=> bs!607718 m!4924445))

(assert (=> b!4330333 d!1272686))

(push 1)

(assert (not b!4330336))

(assert (not b!4330352))

(assert (not b!4330334))

(assert (not d!1272668))

(assert (not d!1272672))

(assert tp_is_empty!24533)

(assert (not b_lambda!127675))

(assert (not b!4330359))

(assert (not b!4330326))

(assert (not bs!607717))

(assert (not b_lambda!127673))

(assert (not d!1272674))

(assert (not b!4330364))

(assert (not d!1272662))

(assert (not bs!607718))

(assert tp_is_empty!24535)

(assert (not b!4330325))

(assert (not b!4330354))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

