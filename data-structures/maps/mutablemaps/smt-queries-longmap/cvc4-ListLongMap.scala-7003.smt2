; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88952 () Bool)

(assert start!88952)

(declare-fun res!683928 () Bool)

(declare-fun e!574290 () Bool)

(assert (=> start!88952 (=> (not res!683928) (not e!574290))))

(declare-datatypes ((B!1728 0))(
  ( (B!1729 (val!11948 Int)) )
))
(declare-datatypes ((tuple2!15532 0))(
  ( (tuple2!15533 (_1!7776 (_ BitVec 64)) (_2!7776 B!1728)) )
))
(declare-datatypes ((List!21750 0))(
  ( (Nil!21747) (Cons!21746 (h!22944 tuple2!15532) (t!30767 List!21750)) )
))
(declare-fun l!1367 () List!21750)

(declare-fun isStrictlySorted!697 (List!21750) Bool)

(assert (=> start!88952 (= res!683928 (isStrictlySorted!697 l!1367))))

(assert (=> start!88952 e!574290))

(declare-fun e!574291 () Bool)

(assert (=> start!88952 e!574291))

(assert (=> start!88952 true))

(declare-fun tp_is_empty!23795 () Bool)

(assert (=> start!88952 tp_is_empty!23795))

(declare-fun b!1020252 () Bool)

(declare-fun res!683927 () Bool)

(assert (=> b!1020252 (=> (not res!683927) (not e!574290))))

(declare-fun value!188 () B!1728)

(declare-fun key!393 () (_ BitVec 64))

(declare-fun contains!5941 (List!21750 tuple2!15532) Bool)

(assert (=> b!1020252 (= res!683927 (contains!5941 l!1367 (tuple2!15533 key!393 value!188)))))

(declare-fun b!1020253 () Bool)

(declare-fun ListPrimitiveSize!141 (List!21750) Int)

(assert (=> b!1020253 (= e!574290 (< (ListPrimitiveSize!141 l!1367) 0))))

(declare-fun b!1020254 () Bool)

(declare-fun tp!71243 () Bool)

(assert (=> b!1020254 (= e!574291 (and tp_is_empty!23795 tp!71243))))

(assert (= (and start!88952 res!683928) b!1020252))

(assert (= (and b!1020252 res!683927) b!1020253))

(assert (= (and start!88952 (is-Cons!21746 l!1367)) b!1020254))

(declare-fun m!940399 () Bool)

(assert (=> start!88952 m!940399))

(declare-fun m!940401 () Bool)

(assert (=> b!1020252 m!940401))

(declare-fun m!940403 () Bool)

(assert (=> b!1020253 m!940403))

(push 1)

(assert tp_is_empty!23795)

(assert (not b!1020252))

(assert (not start!88952))

(assert (not b!1020253))

(assert (not b!1020254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122284 () Bool)

(declare-fun res!683941 () Bool)

(declare-fun e!574304 () Bool)

(assert (=> d!122284 (=> res!683941 e!574304)))

(assert (=> d!122284 (= res!683941 (or (is-Nil!21747 l!1367) (is-Nil!21747 (t!30767 l!1367))))))

(assert (=> d!122284 (= (isStrictlySorted!697 l!1367) e!574304)))

(declare-fun b!1020267 () Bool)

(declare-fun e!574305 () Bool)

(assert (=> b!1020267 (= e!574304 e!574305)))

(declare-fun res!683942 () Bool)

(assert (=> b!1020267 (=> (not res!683942) (not e!574305))))

(assert (=> b!1020267 (= res!683942 (bvslt (_1!7776 (h!22944 l!1367)) (_1!7776 (h!22944 (t!30767 l!1367)))))))

(declare-fun b!1020268 () Bool)

(assert (=> b!1020268 (= e!574305 (isStrictlySorted!697 (t!30767 l!1367)))))

(assert (= (and d!122284 (not res!683941)) b!1020267))

(assert (= (and b!1020267 res!683942) b!1020268))

(declare-fun m!940405 () Bool)

(assert (=> b!1020268 m!940405))

(assert (=> start!88952 d!122284))

(declare-fun d!122289 () Bool)

(declare-fun lt!449820 () Int)

(assert (=> d!122289 (>= lt!449820 0)))

(declare-fun e!574314 () Int)

(assert (=> d!122289 (= lt!449820 e!574314)))

(declare-fun c!103442 () Bool)

(assert (=> d!122289 (= c!103442 (is-Nil!21747 l!1367))))

(assert (=> d!122289 (= (ListPrimitiveSize!141 l!1367) lt!449820)))

(declare-fun b!1020281 () Bool)

(assert (=> b!1020281 (= e!574314 0)))

(declare-fun b!1020282 () Bool)

(assert (=> b!1020282 (= e!574314 (+ 1 (ListPrimitiveSize!141 (t!30767 l!1367))))))

(assert (= (and d!122289 c!103442) b!1020281))

(assert (= (and d!122289 (not c!103442)) b!1020282))

(declare-fun m!940419 () Bool)

(assert (=> b!1020282 m!940419))

(assert (=> b!1020253 d!122289))

(declare-fun lt!449826 () Bool)

(declare-fun d!122295 () Bool)

(declare-fun content!499 (List!21750) (Set tuple2!15532))

(assert (=> d!122295 (= lt!449826 (member (tuple2!15533 key!393 value!188) (content!499 l!1367)))))

(declare-fun e!574332 () Bool)

(assert (=> d!122295 (= lt!449826 e!574332)))

(declare-fun res!683961 () Bool)

(assert (=> d!122295 (=> (not res!683961) (not e!574332))))

(assert (=> d!122295 (= res!683961 (is-Cons!21746 l!1367))))

(assert (=> d!122295 (= (contains!5941 l!1367 (tuple2!15533 key!393 value!188)) lt!449826)))

(declare-fun b!1020303 () Bool)

(declare-fun e!574333 () Bool)

(assert (=> b!1020303 (= e!574332 e!574333)))

(declare-fun res!683962 () Bool)

(assert (=> b!1020303 (=> res!683962 e!574333)))

(assert (=> b!1020303 (= res!683962 (= (h!22944 l!1367) (tuple2!15533 key!393 value!188)))))

(declare-fun b!1020304 () Bool)

(assert (=> b!1020304 (= e!574333 (contains!5941 (t!30767 l!1367) (tuple2!15533 key!393 value!188)))))

(assert (= (and d!122295 res!683961) b!1020303))

(assert (= (and b!1020303 (not res!683962)) b!1020304))

(declare-fun m!940425 () Bool)

(assert (=> d!122295 m!940425))

(declare-fun m!940427 () Bool)

(assert (=> d!122295 m!940427))

(declare-fun m!940429 () Bool)

(assert (=> b!1020304 m!940429))

(assert (=> b!1020252 d!122295))

(declare-fun b!1020321 () Bool)

(declare-fun e!574343 () Bool)

(declare-fun tp!71250 () Bool)

(assert (=> b!1020321 (= e!574343 (and tp_is_empty!23795 tp!71250))))

(assert (=> b!1020254 (= tp!71243 e!574343)))

(assert (= (and b!1020254 (is-Cons!21746 (t!30767 l!1367))) b!1020321))

