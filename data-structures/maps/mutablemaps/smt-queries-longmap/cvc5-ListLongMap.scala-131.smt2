; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2308 () Bool)

(assert start!2308)

(declare-fun res!11524 () Bool)

(declare-fun e!9159 () Bool)

(assert (=> start!2308 (=> (not res!11524) (not e!9159))))

(declare-datatypes ((B!584 0))(
  ( (B!585 (val!390 Int)) )
))
(declare-datatypes ((tuple2!562 0))(
  ( (tuple2!563 (_1!281 (_ BitVec 64)) (_2!281 B!584)) )
))
(declare-datatypes ((List!443 0))(
  ( (Nil!440) (Cons!439 (h!1005 tuple2!562) (t!2845 List!443)) )
))
(declare-datatypes ((ListLongMap!393 0))(
  ( (ListLongMap!394 (toList!212 List!443)) )
))
(declare-fun thiss!169 () ListLongMap!393)

(declare-fun isEmpty!111 (ListLongMap!393) Bool)

(assert (=> start!2308 (= res!11524 (not (isEmpty!111 thiss!169)))))

(assert (=> start!2308 e!9159))

(declare-fun e!9160 () Bool)

(declare-fun inv!752 (ListLongMap!393) Bool)

(assert (=> start!2308 (and (inv!752 thiss!169) e!9160)))

(declare-fun b!15157 () Bool)

(assert (=> b!15157 (= e!9159 (= (toList!212 thiss!169) Nil!440))))

(declare-fun b!15158 () Bool)

(declare-fun tp!2447 () Bool)

(assert (=> b!15158 (= e!9160 tp!2447)))

(assert (= (and start!2308 res!11524) b!15157))

(assert (= start!2308 b!15158))

(declare-fun m!10087 () Bool)

(assert (=> start!2308 m!10087))

(declare-fun m!10089 () Bool)

(assert (=> start!2308 m!10089))

(push 1)

(assert (not start!2308))

(assert (not b!15158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2523 () Bool)

(declare-fun isEmpty!115 (List!443) Bool)

(assert (=> d!2523 (= (isEmpty!111 thiss!169) (isEmpty!115 (toList!212 thiss!169)))))

(declare-fun bs!632 () Bool)

(assert (= bs!632 d!2523))

(declare-fun m!10101 () Bool)

(assert (=> bs!632 m!10101))

(assert (=> start!2308 d!2523))

(declare-fun d!2526 () Bool)

(declare-fun isStrictlySorted!132 (List!443) Bool)

(assert (=> d!2526 (= (inv!752 thiss!169) (isStrictlySorted!132 (toList!212 thiss!169)))))

(declare-fun bs!634 () Bool)

(assert (= bs!634 d!2526))

(declare-fun m!10103 () Bool)

(assert (=> bs!634 m!10103))

(assert (=> start!2308 d!2526))

(declare-fun b!15179 () Bool)

(declare-fun e!9177 () Bool)

(declare-fun tp_is_empty!764 () Bool)

(declare-fun tp!2458 () Bool)

(assert (=> b!15179 (= e!9177 (and tp_is_empty!764 tp!2458))))

(assert (=> b!15158 (= tp!2447 e!9177)))

(assert (= (and b!15158 (is-Cons!439 (toList!212 thiss!169))) b!15179))

(push 1)

(assert (not d!2526))

(assert (not d!2523))

(assert (not b!15179))

(assert tp_is_empty!764)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2535 () Bool)

(declare-fun res!11539 () Bool)

(declare-fun e!9190 () Bool)

(assert (=> d!2535 (=> res!11539 e!9190)))

(assert (=> d!2535 (= res!11539 (or (is-Nil!440 (toList!212 thiss!169)) (is-Nil!440 (t!2845 (toList!212 thiss!169)))))))

(assert (=> d!2535 (= (isStrictlySorted!132 (toList!212 thiss!169)) e!9190)))

(declare-fun b!15194 () Bool)

(declare-fun e!9191 () Bool)

(assert (=> b!15194 (= e!9190 e!9191)))

(declare-fun res!11540 () Bool)

(assert (=> b!15194 (=> (not res!11540) (not e!9191))))

(assert (=> b!15194 (= res!11540 (bvslt (_1!281 (h!1005 (toList!212 thiss!169))) (_1!281 (h!1005 (t!2845 (toList!212 thiss!169))))))))

(declare-fun b!15195 () Bool)

(assert (=> b!15195 (= e!9191 (isStrictlySorted!132 (t!2845 (toList!212 thiss!169))))))

(assert (= (and d!2535 (not res!11539)) b!15194))

(assert (= (and b!15194 res!11540) b!15195))

(declare-fun m!10111 () Bool)

(assert (=> b!15195 m!10111))

(assert (=> d!2526 d!2535))

(declare-fun d!2539 () Bool)

(assert (=> d!2539 (= (isEmpty!115 (toList!212 thiss!169)) (is-Nil!440 (toList!212 thiss!169)))))

(assert (=> d!2523 d!2539))

(declare-fun b!15199 () Bool)

(declare-fun e!9195 () Bool)

(declare-fun tp!2464 () Bool)

(assert (=> b!15199 (= e!9195 (and tp_is_empty!764 tp!2464))))

(assert (=> b!15179 (= tp!2458 e!9195)))

(assert (= (and b!15179 (is-Cons!439 (t!2845 (toList!212 thiss!169)))) b!15199))

(push 1)

(assert (not b!15195))

(assert (not b!15199))

(assert tp_is_empty!764)

(check-sat)

(pop 1)

