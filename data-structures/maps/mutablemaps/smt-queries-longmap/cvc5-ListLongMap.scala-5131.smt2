; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69688 () Bool)

(assert start!69688)

(declare-datatypes ((B!1166 0))(
  ( (B!1167 (val!7035 Int)) )
))
(declare-datatypes ((tuple2!9268 0))(
  ( (tuple2!9269 (_1!4644 (_ BitVec 64)) (_2!4644 B!1166)) )
))
(declare-datatypes ((List!15121 0))(
  ( (Nil!15118) (Cons!15117 (h!16246 tuple2!9268) (t!21444 List!15121)) )
))
(declare-datatypes ((ListLongMap!8105 0))(
  ( (ListLongMap!8106 (toList!4068 List!15121)) )
))
(declare-fun thiss!191 () ListLongMap!8105)

(declare-fun isStrictlySorted!434 (List!15121) Bool)

(assert (=> start!69688 (not (isStrictlySorted!434 (toList!4068 thiss!191)))))

(declare-fun e!449218 () Bool)

(declare-fun inv!25917 (ListLongMap!8105) Bool)

(assert (=> start!69688 (and (inv!25917 thiss!191) e!449218)))

(declare-fun b!811626 () Bool)

(declare-fun tp!43621 () Bool)

(assert (=> b!811626 (= e!449218 tp!43621)))

(assert (= start!69688 b!811626))

(declare-fun m!754201 () Bool)

(assert (=> start!69688 m!754201))

(declare-fun m!754203 () Bool)

(assert (=> start!69688 m!754203))

(push 1)

(assert (not start!69688))

(assert (not b!811626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!104127 () Bool)

(declare-fun res!554845 () Bool)

(declare-fun e!449233 () Bool)

(assert (=> d!104127 (=> res!554845 e!449233)))

(assert (=> d!104127 (= res!554845 (or (is-Nil!15118 (toList!4068 thiss!191)) (is-Nil!15118 (t!21444 (toList!4068 thiss!191)))))))

(assert (=> d!104127 (= (isStrictlySorted!434 (toList!4068 thiss!191)) e!449233)))

(declare-fun b!811641 () Bool)

(declare-fun e!449234 () Bool)

(assert (=> b!811641 (= e!449233 e!449234)))

(declare-fun res!554846 () Bool)

(assert (=> b!811641 (=> (not res!554846) (not e!449234))))

(assert (=> b!811641 (= res!554846 (bvslt (_1!4644 (h!16246 (toList!4068 thiss!191))) (_1!4644 (h!16246 (t!21444 (toList!4068 thiss!191))))))))

(declare-fun b!811642 () Bool)

(assert (=> b!811642 (= e!449234 (isStrictlySorted!434 (t!21444 (toList!4068 thiss!191))))))

(assert (= (and d!104127 (not res!554845)) b!811641))

(assert (= (and b!811641 res!554846) b!811642))

(declare-fun m!754213 () Bool)

(assert (=> b!811642 m!754213))

(assert (=> start!69688 d!104127))

(declare-fun d!104133 () Bool)

(assert (=> d!104133 (= (inv!25917 thiss!191) (isStrictlySorted!434 (toList!4068 thiss!191)))))

(declare-fun bs!22462 () Bool)

(assert (= bs!22462 d!104133))

(assert (=> bs!22462 m!754201))

(assert (=> start!69688 d!104133))

(declare-fun b!811653 () Bool)

(declare-fun e!449243 () Bool)

(declare-fun tp_is_empty!13975 () Bool)

(declare-fun tp!43630 () Bool)

(assert (=> b!811653 (= e!449243 (and tp_is_empty!13975 tp!43630))))

(assert (=> b!811626 (= tp!43621 e!449243)))

(assert (= (and b!811626 (is-Cons!15117 (toList!4068 thiss!191))) b!811653))

(push 1)

(assert (not b!811642))

(assert (not d!104133))

(assert (not b!811653))

(assert tp_is_empty!13975)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

