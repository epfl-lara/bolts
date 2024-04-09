; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71996 () Bool)

(assert start!71996)

(declare-datatypes ((B!1176 0))(
  ( (B!1177 (val!7670 Int)) )
))
(declare-datatypes ((tuple2!10218 0))(
  ( (tuple2!10219 (_1!5119 (_ BitVec 64)) (_2!5119 B!1176)) )
))
(declare-datatypes ((List!16029 0))(
  ( (Nil!16026) (Cons!16025 (h!17156 tuple2!10218) (t!22408 List!16029)) )
))
(declare-datatypes ((ListLongMap!9043 0))(
  ( (ListLongMap!9044 (toList!4537 List!16029)) )
))
(declare-fun thiss!193 () ListLongMap!9043)

(declare-fun isStrictlySorted!441 (List!16029) Bool)

(assert (=> start!71996 (not (isStrictlySorted!441 (toList!4537 thiss!193)))))

(declare-fun e!466433 () Bool)

(declare-fun inv!27242 (ListLongMap!9043) Bool)

(assert (=> start!71996 (and (inv!27242 thiss!193) e!466433)))

(declare-fun b!836057 () Bool)

(declare-fun tp!47393 () Bool)

(assert (=> b!836057 (= e!466433 tp!47393)))

(assert (= start!71996 b!836057))

(declare-fun m!781581 () Bool)

(assert (=> start!71996 m!781581))

(declare-fun m!781583 () Bool)

(assert (=> start!71996 m!781583))

(push 1)

(assert (not start!71996))

(assert (not b!836057))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107454 () Bool)

(declare-fun res!568968 () Bool)

(declare-fun e!466450 () Bool)

(assert (=> d!107454 (=> res!568968 e!466450)))

(assert (=> d!107454 (= res!568968 (or (is-Nil!16026 (toList!4537 thiss!193)) (is-Nil!16026 (t!22408 (toList!4537 thiss!193)))))))

(assert (=> d!107454 (= (isStrictlySorted!441 (toList!4537 thiss!193)) e!466450)))

(declare-fun b!836074 () Bool)

(declare-fun e!466451 () Bool)

(assert (=> b!836074 (= e!466450 e!466451)))

(declare-fun res!568969 () Bool)

(assert (=> b!836074 (=> (not res!568969) (not e!466451))))

(assert (=> b!836074 (= res!568969 (bvslt (_1!5119 (h!17156 (toList!4537 thiss!193))) (_1!5119 (h!17156 (t!22408 (toList!4537 thiss!193))))))))

(declare-fun b!836075 () Bool)

(assert (=> b!836075 (= e!466451 (isStrictlySorted!441 (t!22408 (toList!4537 thiss!193))))))

(assert (= (and d!107454 (not res!568968)) b!836074))

(assert (= (and b!836074 res!568969) b!836075))

(declare-fun m!781589 () Bool)

(assert (=> b!836075 m!781589))

(assert (=> start!71996 d!107454))

(declare-fun d!107463 () Bool)

(assert (=> d!107463 (= (inv!27242 thiss!193) (isStrictlySorted!441 (toList!4537 thiss!193)))))

(declare-fun bs!23464 () Bool)

(assert (= bs!23464 d!107463))

(assert (=> bs!23464 m!781581))

(assert (=> start!71996 d!107463))

(declare-fun b!836090 () Bool)

