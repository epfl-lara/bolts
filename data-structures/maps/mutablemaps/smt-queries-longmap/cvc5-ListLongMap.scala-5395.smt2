; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71992 () Bool)

(assert start!71992)

(declare-datatypes ((B!1172 0))(
  ( (B!1173 (val!7668 Int)) )
))
(declare-datatypes ((tuple2!10214 0))(
  ( (tuple2!10215 (_1!5117 (_ BitVec 64)) (_2!5117 B!1172)) )
))
(declare-datatypes ((List!16027 0))(
  ( (Nil!16024) (Cons!16023 (h!17154 tuple2!10214) (t!22406 List!16027)) )
))
(declare-datatypes ((ListLongMap!9039 0))(
  ( (ListLongMap!9040 (toList!4535 List!16027)) )
))
(declare-fun thiss!193 () ListLongMap!9039)

(declare-fun isStrictlySorted!439 (List!16027) Bool)

(assert (=> start!71992 (not (isStrictlySorted!439 (toList!4535 thiss!193)))))

(declare-fun e!466427 () Bool)

(declare-fun inv!27240 (ListLongMap!9039) Bool)

(assert (=> start!71992 (and (inv!27240 thiss!193) e!466427)))

(declare-fun b!836051 () Bool)

(declare-fun tp!47387 () Bool)

(assert (=> b!836051 (= e!466427 tp!47387)))

(assert (= start!71992 b!836051))

(declare-fun m!781573 () Bool)

(assert (=> start!71992 m!781573))

(declare-fun m!781575 () Bool)

(assert (=> start!71992 m!781575))

(push 1)

(assert (not start!71992))

(assert (not b!836051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107456 () Bool)

(declare-fun res!568964 () Bool)

(declare-fun e!466446 () Bool)

(assert (=> d!107456 (=> res!568964 e!466446)))

(assert (=> d!107456 (= res!568964 (or (is-Nil!16024 (toList!4535 thiss!193)) (is-Nil!16024 (t!22406 (toList!4535 thiss!193)))))))

(assert (=> d!107456 (= (isStrictlySorted!439 (toList!4535 thiss!193)) e!466446)))

(declare-fun b!836070 () Bool)

(declare-fun e!466448 () Bool)

(assert (=> b!836070 (= e!466446 e!466448)))

(declare-fun res!568966 () Bool)

(assert (=> b!836070 (=> (not res!568966) (not e!466448))))

(assert (=> b!836070 (= res!568966 (bvslt (_1!5117 (h!17154 (toList!4535 thiss!193))) (_1!5117 (h!17154 (t!22406 (toList!4535 thiss!193))))))))

(declare-fun b!836072 () Bool)

(assert (=> b!836072 (= e!466448 (isStrictlySorted!439 (t!22406 (toList!4535 thiss!193))))))

(assert (= (and d!107456 (not res!568964)) b!836070))

(assert (= (and b!836070 res!568966) b!836072))

(declare-fun m!781587 () Bool)

(assert (=> b!836072 m!781587))

(assert (=> start!71992 d!107456))

(declare-fun d!107460 () Bool)

(assert (=> d!107460 (= (inv!27240 thiss!193) (isStrictlySorted!439 (toList!4535 thiss!193)))))

(declare-fun bs!23463 () Bool)

(assert (= bs!23463 d!107460))

(assert (=> bs!23463 m!781573))

(assert (=> start!71992 d!107460))

(declare-fun b!836089 () Bool)

(declare-fun e!466459 () Bool)

(declare-fun tp_is_empty!15243 () Bool)

(declare-fun tp!47401 () Bool)

(assert (=> b!836089 (= e!466459 (and tp_is_empty!15243 tp!47401))))

(assert (=> b!836051 (= tp!47387 e!466459)))

(assert (= (and b!836051 (is-Cons!16023 (toList!4535 thiss!193))) b!836089))

(push 1)

(assert (not d!107460))

(assert (not b!836072))

