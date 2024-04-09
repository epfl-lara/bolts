; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87518 () Bool)

(assert start!87518)

(declare-fun res!680362 () Bool)

(declare-fun e!569947 () Bool)

(assert (=> start!87518 (=> (not res!680362) (not e!569947))))

(declare-datatypes ((B!1392 0))(
  ( (B!1393 (val!11780 Int)) )
))
(declare-datatypes ((tuple2!15196 0))(
  ( (tuple2!15197 (_1!7608 (_ BitVec 64)) (_2!7608 B!1392)) )
))
(declare-datatypes ((List!21513 0))(
  ( (Nil!21510) (Cons!21509 (h!22707 tuple2!15196) (t!30522 List!21513)) )
))
(declare-fun l!412 () List!21513)

(declare-fun isStrictlySorted!550 (List!21513) Bool)

(assert (=> start!87518 (= res!680362 (isStrictlySorted!550 l!412))))

(assert (=> start!87518 e!569947))

(declare-fun e!569948 () Bool)

(assert (=> start!87518 e!569948))

(declare-fun b!1013112 () Bool)

(declare-fun ListPrimitiveSize!99 (List!21513) Int)

(assert (=> b!1013112 (= e!569947 (< (ListPrimitiveSize!99 l!412) 0))))

(declare-fun b!1013113 () Bool)

(declare-fun tp_is_empty!23459 () Bool)

(declare-fun tp!70398 () Bool)

(assert (=> b!1013113 (= e!569948 (and tp_is_empty!23459 tp!70398))))

(assert (= (and start!87518 res!680362) b!1013112))

(assert (= (and start!87518 (is-Cons!21509 l!412)) b!1013113))

(declare-fun m!936425 () Bool)

(assert (=> start!87518 m!936425))

(declare-fun m!936427 () Bool)

(assert (=> b!1013112 m!936427))

(push 1)

(assert (not start!87518))

(assert (not b!1013112))

(assert (not b!1013113))

(assert tp_is_empty!23459)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120373 () Bool)

(declare-fun res!680373 () Bool)

(declare-fun e!569962 () Bool)

(assert (=> d!120373 (=> res!680373 e!569962)))

(assert (=> d!120373 (= res!680373 (or (is-Nil!21510 l!412) (is-Nil!21510 (t!30522 l!412))))))

(assert (=> d!120373 (= (isStrictlySorted!550 l!412) e!569962)))

(declare-fun b!1013130 () Bool)

(declare-fun e!569963 () Bool)

(assert (=> b!1013130 (= e!569962 e!569963)))

(declare-fun res!680374 () Bool)

(assert (=> b!1013130 (=> (not res!680374) (not e!569963))))

(assert (=> b!1013130 (= res!680374 (bvslt (_1!7608 (h!22707 l!412)) (_1!7608 (h!22707 (t!30522 l!412)))))))

(declare-fun b!1013131 () Bool)

(assert (=> b!1013131 (= e!569963 (isStrictlySorted!550 (t!30522 l!412)))))

(assert (= (and d!120373 (not res!680373)) b!1013130))

(assert (= (and b!1013130 res!680374) b!1013131))

(declare-fun m!936433 () Bool)

(assert (=> b!1013131 m!936433))

(assert (=> start!87518 d!120373))

(declare-fun d!120379 () Bool)

(declare-fun lt!447864 () Int)

(assert (=> d!120379 (>= lt!447864 0)))

(declare-fun e!569977 () Int)

(assert (=> d!120379 (= lt!447864 e!569977)))

(declare-fun c!102363 () Bool)

(assert (=> d!120379 (= c!102363 (is-Nil!21510 l!412))))

(assert (=> d!120379 (= (ListPrimitiveSize!99 l!412) lt!447864)))

(declare-fun b!1013154 () Bool)

(assert (=> b!1013154 (= e!569977 0)))

(declare-fun b!1013155 () Bool)

(assert (=> b!1013155 (= e!569977 (+ 1 (ListPrimitiveSize!99 (t!30522 l!412))))))

(assert (= (and d!120379 c!102363) b!1013154))

(assert (= (and d!120379 (not c!102363)) b!1013155))

(declare-fun m!936439 () Bool)

(assert (=> b!1013155 m!936439))

(assert (=> b!1013112 d!120379))

(declare-fun b!1013164 () Bool)

(declare-fun e!569984 () Bool)

(declare-fun tp!70407 () Bool)

(assert (=> b!1013164 (= e!569984 (and tp_is_empty!23459 tp!70407))))

(assert (=> b!1013113 (= tp!70398 e!569984)))

