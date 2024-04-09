; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72044 () Bool)

(assert start!72044)

(declare-fun res!569056 () Bool)

(declare-fun e!466583 () Bool)

(assert (=> start!72044 (=> (not res!569056) (not e!466583))))

(declare-datatypes ((B!1194 0))(
  ( (B!1195 (val!7679 Int)) )
))
(declare-datatypes ((tuple2!10236 0))(
  ( (tuple2!10237 (_1!5128 (_ BitVec 64)) (_2!5128 B!1194)) )
))
(declare-datatypes ((List!16038 0))(
  ( (Nil!16035) (Cons!16034 (h!17165 tuple2!10236) (t!22417 List!16038)) )
))
(declare-fun l!390 () List!16038)

(declare-fun isStrictlySorted!450 (List!16038) Bool)

(assert (=> start!72044 (= res!569056 (isStrictlySorted!450 l!390))))

(assert (=> start!72044 e!466583))

(declare-fun e!466582 () Bool)

(assert (=> start!72044 e!466582))

(declare-fun b!836250 () Bool)

(declare-fun res!569055 () Bool)

(assert (=> b!836250 (=> (not res!569055) (not e!466583))))

(assert (=> b!836250 (= res!569055 (is-Cons!16034 l!390))))

(declare-fun b!836251 () Bool)

(declare-fun ListPrimitiveSize!72 (List!16038) Int)

(assert (=> b!836251 (= e!466583 (>= (ListPrimitiveSize!72 (t!22417 l!390)) (ListPrimitiveSize!72 l!390)))))

(declare-fun b!836252 () Bool)

(declare-fun tp_is_empty!15263 () Bool)

(declare-fun tp!47447 () Bool)

(assert (=> b!836252 (= e!466582 (and tp_is_empty!15263 tp!47447))))

(assert (= (and start!72044 res!569056) b!836250))

(assert (= (and b!836250 res!569055) b!836251))

(assert (= (and start!72044 (is-Cons!16034 l!390)) b!836252))

(declare-fun m!781645 () Bool)

(assert (=> start!72044 m!781645))

(declare-fun m!781647 () Bool)

(assert (=> b!836251 m!781647))

(declare-fun m!781649 () Bool)

(assert (=> b!836251 m!781649))

(push 1)

(assert (not start!72044))

(assert (not b!836251))

(assert (not b!836252))

(assert tp_is_empty!15263)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107499 () Bool)

(declare-fun res!569073 () Bool)

(declare-fun e!466602 () Bool)

(assert (=> d!107499 (=> res!569073 e!466602)))

(assert (=> d!107499 (= res!569073 (or (is-Nil!16035 l!390) (is-Nil!16035 (t!22417 l!390))))))

(assert (=> d!107499 (= (isStrictlySorted!450 l!390) e!466602)))

(declare-fun b!836273 () Bool)

(declare-fun e!466603 () Bool)

(assert (=> b!836273 (= e!466602 e!466603)))

(declare-fun res!569074 () Bool)

(assert (=> b!836273 (=> (not res!569074) (not e!466603))))

(assert (=> b!836273 (= res!569074 (bvslt (_1!5128 (h!17165 l!390)) (_1!5128 (h!17165 (t!22417 l!390)))))))

(declare-fun b!836274 () Bool)

(assert (=> b!836274 (= e!466603 (isStrictlySorted!450 (t!22417 l!390)))))

(assert (= (and d!107499 (not res!569073)) b!836273))

(assert (= (and b!836273 res!569074) b!836274))

(declare-fun m!781655 () Bool)

(assert (=> b!836274 m!781655))

(assert (=> start!72044 d!107499))

(declare-fun d!107505 () Bool)

(declare-fun lt!380348 () Int)

(assert (=> d!107505 (>= lt!380348 0)))

(declare-fun e!466615 () Int)

(assert (=> d!107505 (= lt!380348 e!466615)))

(declare-fun c!90963 () Bool)

(assert (=> d!107505 (= c!90963 (is-Nil!16035 (t!22417 l!390)))))

(assert (=> d!107505 (= (ListPrimitiveSize!72 (t!22417 l!390)) lt!380348)))

(declare-fun b!836296 () Bool)

(assert (=> b!836296 (= e!466615 0)))

(declare-fun b!836297 () Bool)

