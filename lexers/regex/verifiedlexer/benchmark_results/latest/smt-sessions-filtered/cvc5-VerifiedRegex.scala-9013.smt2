; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!485186 () Bool)

(assert start!485186)

(declare-fun res!2013576 () Bool)

(declare-fun e!2962420 () Bool)

(assert (=> start!485186 (=> (not res!2013576) (not e!2962420))))

(declare-datatypes ((K!14468 0))(
  ( (K!14469 (val!19845 Int)) )
))
(declare-datatypes ((V!14714 0))(
  ( (V!14715 (val!19846 Int)) )
))
(declare-datatypes ((tuple2!54814 0))(
  ( (tuple2!54815 (_1!30701 K!14468) (_2!30701 V!14714)) )
))
(declare-datatypes ((List!53185 0))(
  ( (Nil!53061) (Cons!53061 (h!59458 tuple2!54814) (t!360509 List!53185)) )
))
(declare-fun l!14304 () List!53185)

(declare-fun noDuplicateKeys!2127 (List!53185) Bool)

(assert (=> start!485186 (= res!2013576 (noDuplicateKeys!2127 l!14304))))

(assert (=> start!485186 e!2962420))

(declare-fun e!2962419 () Bool)

(assert (=> start!485186 e!2962419))

(declare-fun tp_is_empty!31801 () Bool)

(declare-fun tp_is_empty!31803 () Bool)

(assert (=> start!485186 (and tp_is_empty!31801 tp_is_empty!31803)))

(declare-fun b!4749198 () Bool)

(declare-fun res!2013577 () Bool)

(assert (=> b!4749198 (=> (not res!2013577) (not e!2962420))))

(declare-fun t!14174 () tuple2!54814)

(assert (=> b!4749198 (= res!2013577 (noDuplicateKeys!2127 (Cons!53061 t!14174 l!14304)))))

(declare-fun b!4749199 () Bool)

(declare-fun ListPrimitiveSize!334 (List!53185) Int)

(assert (=> b!4749199 (= e!2962420 (< (ListPrimitiveSize!334 l!14304) 0))))

(declare-fun tp!1349984 () Bool)

(declare-fun b!4749200 () Bool)

(assert (=> b!4749200 (= e!2962419 (and tp_is_empty!31801 tp_is_empty!31803 tp!1349984))))

(assert (= (and start!485186 res!2013576) b!4749198))

(assert (= (and b!4749198 res!2013577) b!4749199))

(assert (= (and start!485186 (is-Cons!53061 l!14304)) b!4749200))

(declare-fun m!5709355 () Bool)

(assert (=> start!485186 m!5709355))

(declare-fun m!5709357 () Bool)

(assert (=> b!4749198 m!5709357))

(declare-fun m!5709359 () Bool)

(assert (=> b!4749199 m!5709359))

(push 1)

(assert tp_is_empty!31803)

(assert (not b!4749199))

(assert (not start!485186))

(assert tp_is_empty!31801)

(assert (not b!4749200))

(assert (not b!4749198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1517778 () Bool)

(declare-fun res!2013588 () Bool)

(declare-fun e!2962431 () Bool)

(assert (=> d!1517778 (=> res!2013588 e!2962431)))

(assert (=> d!1517778 (= res!2013588 (not (is-Cons!53061 l!14304)))))

(assert (=> d!1517778 (= (noDuplicateKeys!2127 l!14304) e!2962431)))

(declare-fun b!4749214 () Bool)

(declare-fun e!2962432 () Bool)

(assert (=> b!4749214 (= e!2962431 e!2962432)))

(declare-fun res!2013589 () Bool)

(assert (=> b!4749214 (=> (not res!2013589) (not e!2962432))))

(declare-fun containsKey!3536 (List!53185 K!14468) Bool)

(assert (=> b!4749214 (= res!2013589 (not (containsKey!3536 (t!360509 l!14304) (_1!30701 (h!59458 l!14304)))))))

(declare-fun b!4749215 () Bool)

(assert (=> b!4749215 (= e!2962432 (noDuplicateKeys!2127 (t!360509 l!14304)))))

(assert (= (and d!1517778 (not res!2013588)) b!4749214))

(assert (= (and b!4749214 res!2013589) b!4749215))

(declare-fun m!5709367 () Bool)

(assert (=> b!4749214 m!5709367))

(declare-fun m!5709369 () Bool)

(assert (=> b!4749215 m!5709369))

(assert (=> start!485186 d!1517778))

(declare-fun d!1517780 () Bool)

(declare-fun lt!1912734 () Int)

(assert (=> d!1517780 (>= lt!1912734 0)))

(declare-fun e!2962435 () Int)

(assert (=> d!1517780 (= lt!1912734 e!2962435)))

(declare-fun c!810922 () Bool)

(assert (=> d!1517780 (= c!810922 (is-Nil!53061 l!14304))))

(assert (=> d!1517780 (= (ListPrimitiveSize!334 l!14304) lt!1912734)))

(declare-fun b!4749220 () Bool)

(assert (=> b!4749220 (= e!2962435 0)))

(declare-fun b!4749221 () Bool)

(assert (=> b!4749221 (= e!2962435 (+ 1 (ListPrimitiveSize!334 (t!360509 l!14304))))))

(assert (= (and d!1517780 c!810922) b!4749220))

(assert (= (and d!1517780 (not c!810922)) b!4749221))

(declare-fun m!5709371 () Bool)

(assert (=> b!4749221 m!5709371))

(assert (=> b!4749199 d!1517780))

(declare-fun d!1517782 () Bool)

(declare-fun res!2013590 () Bool)

(declare-fun e!2962436 () Bool)

(assert (=> d!1517782 (=> res!2013590 e!2962436)))

(assert (=> d!1517782 (= res!2013590 (not (is-Cons!53061 (Cons!53061 t!14174 l!14304))))))

(assert (=> d!1517782 (= (noDuplicateKeys!2127 (Cons!53061 t!14174 l!14304)) e!2962436)))

(declare-fun b!4749222 () Bool)

(declare-fun e!2962437 () Bool)

(assert (=> b!4749222 (= e!2962436 e!2962437)))

(declare-fun res!2013591 () Bool)

(assert (=> b!4749222 (=> (not res!2013591) (not e!2962437))))

(assert (=> b!4749222 (= res!2013591 (not (containsKey!3536 (t!360509 (Cons!53061 t!14174 l!14304)) (_1!30701 (h!59458 (Cons!53061 t!14174 l!14304))))))))

(declare-fun b!4749223 () Bool)

(assert (=> b!4749223 (= e!2962437 (noDuplicateKeys!2127 (t!360509 (Cons!53061 t!14174 l!14304))))))

(assert (= (and d!1517782 (not res!2013590)) b!4749222))

(assert (= (and b!4749222 res!2013591) b!4749223))

(declare-fun m!5709373 () Bool)

(assert (=> b!4749222 m!5709373))

(declare-fun m!5709375 () Bool)

(assert (=> b!4749223 m!5709375))

(assert (=> b!4749198 d!1517782))

(declare-fun tp!1349990 () Bool)

(declare-fun e!2962440 () Bool)

(declare-fun b!4749228 () Bool)

(assert (=> b!4749228 (= e!2962440 (and tp_is_empty!31801 tp_is_empty!31803 tp!1349990))))

(assert (=> b!4749200 (= tp!1349984 e!2962440)))

(assert (= (and b!4749200 (is-Cons!53061 (t!360509 l!14304))) b!4749228))

(push 1)

(assert tp_is_empty!31803)

(assert (not b!4749223))

(assert (not b!4749215))

(assert tp_is_empty!31801)

(assert (not b!4749228))

(assert (not b!4749214))

(assert (not b!4749221))

(assert (not b!4749222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

