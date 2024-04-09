; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69692 () Bool)

(assert start!69692)

(declare-datatypes ((B!1170 0))(
  ( (B!1171 (val!7037 Int)) )
))
(declare-datatypes ((tuple2!9272 0))(
  ( (tuple2!9273 (_1!4646 (_ BitVec 64)) (_2!4646 B!1170)) )
))
(declare-datatypes ((List!15123 0))(
  ( (Nil!15120) (Cons!15119 (h!16248 tuple2!9272) (t!21446 List!15123)) )
))
(declare-datatypes ((ListLongMap!8109 0))(
  ( (ListLongMap!8110 (toList!4070 List!15123)) )
))
(declare-fun thiss!191 () ListLongMap!8109)

(declare-fun isStrictlySorted!436 (List!15123) Bool)

(assert (=> start!69692 (not (isStrictlySorted!436 (toList!4070 thiss!191)))))

(declare-fun e!449224 () Bool)

(declare-fun inv!25919 (ListLongMap!8109) Bool)

(assert (=> start!69692 (and (inv!25919 thiss!191) e!449224)))

(declare-fun b!811632 () Bool)

(declare-fun tp!43627 () Bool)

(assert (=> b!811632 (= e!449224 tp!43627)))

(assert (= start!69692 b!811632))

(declare-fun m!754209 () Bool)

(assert (=> start!69692 m!754209))

(declare-fun m!754211 () Bool)

(assert (=> start!69692 m!754211))

(push 1)

(assert (not start!69692))

(assert (not b!811632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!104131 () Bool)

(declare-fun res!554853 () Bool)

(declare-fun e!449244 () Bool)

(assert (=> d!104131 (=> res!554853 e!449244)))

(assert (=> d!104131 (= res!554853 (or (is-Nil!15120 (toList!4070 thiss!191)) (is-Nil!15120 (t!21446 (toList!4070 thiss!191)))))))

(assert (=> d!104131 (= (isStrictlySorted!436 (toList!4070 thiss!191)) e!449244)))

(declare-fun b!811654 () Bool)

(declare-fun e!449245 () Bool)

(assert (=> b!811654 (= e!449244 e!449245)))

(declare-fun res!554854 () Bool)

(assert (=> b!811654 (=> (not res!554854) (not e!449245))))

(assert (=> b!811654 (= res!554854 (bvslt (_1!4646 (h!16248 (toList!4070 thiss!191))) (_1!4646 (h!16248 (t!21446 (toList!4070 thiss!191))))))))

(declare-fun b!811655 () Bool)

(assert (=> b!811655 (= e!449245 (isStrictlySorted!436 (t!21446 (toList!4070 thiss!191))))))

(assert (= (and d!104131 (not res!554853)) b!811654))

(assert (= (and b!811654 res!554854) b!811655))

