; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88950 () Bool)

(assert start!88950)

(declare-fun res!683921 () Bool)

(declare-fun e!574285 () Bool)

(assert (=> start!88950 (=> (not res!683921) (not e!574285))))

(declare-datatypes ((B!1726 0))(
  ( (B!1727 (val!11947 Int)) )
))
(declare-datatypes ((tuple2!15530 0))(
  ( (tuple2!15531 (_1!7775 (_ BitVec 64)) (_2!7775 B!1726)) )
))
(declare-datatypes ((List!21749 0))(
  ( (Nil!21746) (Cons!21745 (h!22943 tuple2!15530) (t!30766 List!21749)) )
))
(declare-fun l!1367 () List!21749)

(declare-fun isStrictlySorted!696 (List!21749) Bool)

(assert (=> start!88950 (= res!683921 (isStrictlySorted!696 l!1367))))

(assert (=> start!88950 e!574285))

(declare-fun e!574284 () Bool)

(assert (=> start!88950 e!574284))

(assert (=> start!88950 true))

(declare-fun tp_is_empty!23793 () Bool)

(assert (=> start!88950 tp_is_empty!23793))

(declare-fun b!1020243 () Bool)

(declare-fun res!683922 () Bool)

(assert (=> b!1020243 (=> (not res!683922) (not e!574285))))

(declare-fun value!188 () B!1726)

(declare-fun key!393 () (_ BitVec 64))

(declare-fun contains!5940 (List!21749 tuple2!15530) Bool)

(assert (=> b!1020243 (= res!683922 (contains!5940 l!1367 (tuple2!15531 key!393 value!188)))))

(declare-fun b!1020244 () Bool)

(declare-fun ListPrimitiveSize!140 (List!21749) Int)

(assert (=> b!1020244 (= e!574285 (< (ListPrimitiveSize!140 l!1367) 0))))

(declare-fun b!1020245 () Bool)

(declare-fun tp!71240 () Bool)

(assert (=> b!1020245 (= e!574284 (and tp_is_empty!23793 tp!71240))))

(assert (= (and start!88950 res!683921) b!1020243))

(assert (= (and b!1020243 res!683922) b!1020244))

(get-info :version)

(assert (= (and start!88950 ((_ is Cons!21745) l!1367)) b!1020245))

(declare-fun m!940393 () Bool)

(assert (=> start!88950 m!940393))

(declare-fun m!940395 () Bool)

(assert (=> b!1020243 m!940395))

(declare-fun m!940397 () Bool)

(assert (=> b!1020244 m!940397))

(check-sat (not b!1020243) (not b!1020245) (not start!88950) (not b!1020244) tp_is_empty!23793)
(check-sat)
(get-model)

(declare-fun lt!449814 () Bool)

(declare-fun d!122285 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!497 (List!21749) (InoxSet tuple2!15530))

(assert (=> d!122285 (= lt!449814 (select (content!497 l!1367) (tuple2!15531 key!393 value!188)))))

(declare-fun e!574307 () Bool)

(assert (=> d!122285 (= lt!449814 e!574307)))

(declare-fun res!683943 () Bool)

(assert (=> d!122285 (=> (not res!683943) (not e!574307))))

(assert (=> d!122285 (= res!683943 ((_ is Cons!21745) l!1367))))

(assert (=> d!122285 (= (contains!5940 l!1367 (tuple2!15531 key!393 value!188)) lt!449814)))

(declare-fun b!1020269 () Bool)

(declare-fun e!574306 () Bool)

(assert (=> b!1020269 (= e!574307 e!574306)))

(declare-fun res!683944 () Bool)

(assert (=> b!1020269 (=> res!683944 e!574306)))

(assert (=> b!1020269 (= res!683944 (= (h!22943 l!1367) (tuple2!15531 key!393 value!188)))))

(declare-fun b!1020270 () Bool)

(assert (=> b!1020270 (= e!574306 (contains!5940 (t!30766 l!1367) (tuple2!15531 key!393 value!188)))))

(assert (= (and d!122285 res!683943) b!1020269))

(assert (= (and b!1020269 (not res!683944)) b!1020270))

(declare-fun m!940407 () Bool)

(assert (=> d!122285 m!940407))

(declare-fun m!940411 () Bool)

(assert (=> d!122285 m!940411))

(declare-fun m!940415 () Bool)

(assert (=> b!1020270 m!940415))

(assert (=> b!1020243 d!122285))

(declare-fun d!122291 () Bool)

(declare-fun res!683951 () Bool)

(declare-fun e!574320 () Bool)

(assert (=> d!122291 (=> res!683951 e!574320)))

(assert (=> d!122291 (= res!683951 (or ((_ is Nil!21746) l!1367) ((_ is Nil!21746) (t!30766 l!1367))))))

(assert (=> d!122291 (= (isStrictlySorted!696 l!1367) e!574320)))

(declare-fun b!1020289 () Bool)

(declare-fun e!574321 () Bool)

(assert (=> b!1020289 (= e!574320 e!574321)))

(declare-fun res!683952 () Bool)

(assert (=> b!1020289 (=> (not res!683952) (not e!574321))))

(assert (=> b!1020289 (= res!683952 (bvslt (_1!7775 (h!22943 l!1367)) (_1!7775 (h!22943 (t!30766 l!1367)))))))

(declare-fun b!1020290 () Bool)

(assert (=> b!1020290 (= e!574321 (isStrictlySorted!696 (t!30766 l!1367)))))

(assert (= (and d!122291 (not res!683951)) b!1020289))

(assert (= (and b!1020289 res!683952) b!1020290))

(declare-fun m!940423 () Bool)

(assert (=> b!1020290 m!940423))

(assert (=> start!88950 d!122291))

(declare-fun d!122299 () Bool)

(declare-fun lt!449827 () Int)

(assert (=> d!122299 (>= lt!449827 0)))

(declare-fun e!574335 () Int)

(assert (=> d!122299 (= lt!449827 e!574335)))

(declare-fun c!103446 () Bool)

(assert (=> d!122299 (= c!103446 ((_ is Nil!21746) l!1367))))

(assert (=> d!122299 (= (ListPrimitiveSize!140 l!1367) lt!449827)))

(declare-fun b!1020305 () Bool)

(assert (=> b!1020305 (= e!574335 0)))

(declare-fun b!1020307 () Bool)

(assert (=> b!1020307 (= e!574335 (+ 1 (ListPrimitiveSize!140 (t!30766 l!1367))))))

(assert (= (and d!122299 c!103446) b!1020305))

(assert (= (and d!122299 (not c!103446)) b!1020307))

(declare-fun m!940431 () Bool)

(assert (=> b!1020307 m!940431))

(assert (=> b!1020244 d!122299))

(declare-fun b!1020322 () Bool)

(declare-fun e!574344 () Bool)

(declare-fun tp!71251 () Bool)

(assert (=> b!1020322 (= e!574344 (and tp_is_empty!23793 tp!71251))))

(assert (=> b!1020245 (= tp!71240 e!574344)))

(assert (= (and b!1020245 ((_ is Cons!21745) (t!30766 l!1367))) b!1020322))

(check-sat (not b!1020290) (not b!1020307) (not b!1020322) tp_is_empty!23793 (not d!122285) (not b!1020270))
(check-sat)
