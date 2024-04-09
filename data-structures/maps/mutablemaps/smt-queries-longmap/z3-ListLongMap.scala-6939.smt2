; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87402 () Bool)

(assert start!87402)

(declare-fun res!680062 () Bool)

(declare-fun e!569521 () Bool)

(assert (=> start!87402 (=> (not res!680062) (not e!569521))))

(declare-datatypes ((B!1342 0))(
  ( (B!1343 (val!11755 Int)) )
))
(declare-datatypes ((tuple2!15146 0))(
  ( (tuple2!15147 (_1!7583 (_ BitVec 64)) (_2!7583 B!1342)) )
))
(declare-datatypes ((List!21473 0))(
  ( (Nil!21470) (Cons!21469 (h!22667 tuple2!15146) (t!30482 List!21473)) )
))
(declare-fun l!412 () List!21473)

(declare-fun isStrictlySorted!531 (List!21473) Bool)

(assert (=> start!87402 (= res!680062 (isStrictlySorted!531 l!412))))

(assert (=> start!87402 e!569521))

(declare-fun e!569522 () Bool)

(assert (=> start!87402 e!569522))

(declare-fun tp_is_empty!23409 () Bool)

(assert (=> start!87402 tp_is_empty!23409))

(declare-fun b!1012346 () Bool)

(declare-fun res!680061 () Bool)

(assert (=> b!1012346 (=> (not res!680061) (not e!569521))))

(declare-fun value!115 () B!1342)

(get-info :version)

(assert (=> b!1012346 (= res!680061 (and (not (= (_2!7583 (h!22667 l!412)) value!115)) ((_ is Cons!21469) l!412)))))

(declare-fun b!1012347 () Bool)

(assert (=> b!1012347 (= e!569521 (not (isStrictlySorted!531 (t!30482 l!412))))))

(declare-fun b!1012348 () Bool)

(declare-fun tp!70287 () Bool)

(assert (=> b!1012348 (= e!569522 (and tp_is_empty!23409 tp!70287))))

(assert (= (and start!87402 res!680062) b!1012346))

(assert (= (and b!1012346 res!680061) b!1012347))

(assert (= (and start!87402 ((_ is Cons!21469) l!412)) b!1012348))

(declare-fun m!936097 () Bool)

(assert (=> start!87402 m!936097))

(declare-fun m!936099 () Bool)

(assert (=> b!1012347 m!936099))

(check-sat (not b!1012347) (not start!87402) (not b!1012348) tp_is_empty!23409)
(check-sat)
(get-model)

(declare-fun d!120257 () Bool)

(declare-fun res!680077 () Bool)

(declare-fun e!569537 () Bool)

(assert (=> d!120257 (=> res!680077 e!569537)))

(assert (=> d!120257 (= res!680077 (or ((_ is Nil!21470) (t!30482 l!412)) ((_ is Nil!21470) (t!30482 (t!30482 l!412)))))))

(assert (=> d!120257 (= (isStrictlySorted!531 (t!30482 l!412)) e!569537)))

(declare-fun b!1012366 () Bool)

(declare-fun e!569538 () Bool)

(assert (=> b!1012366 (= e!569537 e!569538)))

(declare-fun res!680078 () Bool)

(assert (=> b!1012366 (=> (not res!680078) (not e!569538))))

(assert (=> b!1012366 (= res!680078 (bvslt (_1!7583 (h!22667 (t!30482 l!412))) (_1!7583 (h!22667 (t!30482 (t!30482 l!412))))))))

(declare-fun b!1012367 () Bool)

(assert (=> b!1012367 (= e!569538 (isStrictlySorted!531 (t!30482 (t!30482 l!412))))))

(assert (= (and d!120257 (not res!680077)) b!1012366))

(assert (= (and b!1012366 res!680078) b!1012367))

(declare-fun m!936105 () Bool)

(assert (=> b!1012367 m!936105))

(assert (=> b!1012347 d!120257))

(declare-fun d!120263 () Bool)

(declare-fun res!680083 () Bool)

(declare-fun e!569543 () Bool)

(assert (=> d!120263 (=> res!680083 e!569543)))

(assert (=> d!120263 (= res!680083 (or ((_ is Nil!21470) l!412) ((_ is Nil!21470) (t!30482 l!412))))))

(assert (=> d!120263 (= (isStrictlySorted!531 l!412) e!569543)))

(declare-fun b!1012372 () Bool)

(declare-fun e!569544 () Bool)

(assert (=> b!1012372 (= e!569543 e!569544)))

(declare-fun res!680084 () Bool)

(assert (=> b!1012372 (=> (not res!680084) (not e!569544))))

(assert (=> b!1012372 (= res!680084 (bvslt (_1!7583 (h!22667 l!412)) (_1!7583 (h!22667 (t!30482 l!412)))))))

(declare-fun b!1012373 () Bool)

(assert (=> b!1012373 (= e!569544 (isStrictlySorted!531 (t!30482 l!412)))))

(assert (= (and d!120263 (not res!680083)) b!1012372))

(assert (= (and b!1012372 res!680084) b!1012373))

(assert (=> b!1012373 m!936099))

(assert (=> start!87402 d!120263))

(declare-fun b!1012386 () Bool)

(declare-fun e!569553 () Bool)

(declare-fun tp!70295 () Bool)

(assert (=> b!1012386 (= e!569553 (and tp_is_empty!23409 tp!70295))))

(assert (=> b!1012348 (= tp!70287 e!569553)))

(assert (= (and b!1012348 ((_ is Cons!21469) (t!30482 l!412))) b!1012386))

(check-sat (not b!1012373) (not b!1012367) (not b!1012386) tp_is_empty!23409)
(check-sat)
