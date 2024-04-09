; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72022 () Bool)

(assert start!72022)

(declare-fun res!569014 () Bool)

(declare-fun e!466516 () Bool)

(assert (=> start!72022 (=> (not res!569014) (not e!466516))))

(declare-datatypes ((B!1184 0))(
  ( (B!1185 (val!7674 Int)) )
))
(declare-datatypes ((tuple2!10226 0))(
  ( (tuple2!10227 (_1!5123 (_ BitVec 64)) (_2!5123 B!1184)) )
))
(declare-datatypes ((List!16033 0))(
  ( (Nil!16030) (Cons!16029 (h!17160 tuple2!10226) (t!22412 List!16033)) )
))
(declare-fun l!390 () List!16033)

(declare-fun isStrictlySorted!445 (List!16033) Bool)

(assert (=> start!72022 (= res!569014 (isStrictlySorted!445 l!390))))

(assert (=> start!72022 e!466516))

(declare-fun e!466517 () Bool)

(assert (=> start!72022 e!466517))

(declare-fun b!836161 () Bool)

(declare-fun ListPrimitiveSize!67 (List!16033) Int)

(assert (=> b!836161 (= e!466516 (< (ListPrimitiveSize!67 l!390) 0))))

(declare-fun b!836162 () Bool)

(declare-fun tp_is_empty!15253 () Bool)

(declare-fun tp!47423 () Bool)

(assert (=> b!836162 (= e!466517 (and tp_is_empty!15253 tp!47423))))

(assert (= (and start!72022 res!569014) b!836161))

(assert (= (and start!72022 (is-Cons!16029 l!390)) b!836162))

(declare-fun m!781609 () Bool)

(assert (=> start!72022 m!781609))

(declare-fun m!781611 () Bool)

(assert (=> b!836161 m!781611))

(push 1)

(assert (not start!72022))

(assert (not b!836161))

(assert (not b!836162))

(assert tp_is_empty!15253)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107483 () Bool)

(declare-fun res!569029 () Bool)

(declare-fun e!466541 () Bool)

(assert (=> d!107483 (=> res!569029 e!466541)))

(assert (=> d!107483 (= res!569029 (or (is-Nil!16030 l!390) (is-Nil!16030 (t!22412 l!390))))))

(assert (=> d!107483 (= (isStrictlySorted!445 l!390) e!466541)))

(declare-fun b!836189 () Bool)

(declare-fun e!466542 () Bool)

(assert (=> b!836189 (= e!466541 e!466542)))

(declare-fun res!569030 () Bool)

(assert (=> b!836189 (=> (not res!569030) (not e!466542))))

(assert (=> b!836189 (= res!569030 (bvslt (_1!5123 (h!17160 l!390)) (_1!5123 (h!17160 (t!22412 l!390)))))))

(declare-fun b!836190 () Bool)

(assert (=> b!836190 (= e!466542 (isStrictlySorted!445 (t!22412 l!390)))))

(assert (= (and d!107483 (not res!569029)) b!836189))

(assert (= (and b!836189 res!569030) b!836190))

(declare-fun m!781623 () Bool)

(assert (=> b!836190 m!781623))

(assert (=> start!72022 d!107483))

(declare-fun d!107489 () Bool)

(declare-fun lt!380336 () Int)

(assert (=> d!107489 (>= lt!380336 0)))

(declare-fun e!466555 () Int)

(assert (=> d!107489 (= lt!380336 e!466555)))

(declare-fun c!90951 () Bool)

(assert (=> d!107489 (= c!90951 (is-Nil!16030 l!390))))

(assert (=> d!107489 (= (ListPrimitiveSize!67 l!390) lt!380336)))

(declare-fun b!836207 () Bool)

(assert (=> b!836207 (= e!466555 0)))

(declare-fun b!836208 () Bool)

(assert (=> b!836208 (= e!466555 (+ 1 (ListPrimitiveSize!67 (t!22412 l!390))))))

(assert (= (and d!107489 c!90951) b!836207))

(assert (= (and d!107489 (not c!90951)) b!836208))

(declare-fun m!781627 () Bool)

(assert (=> b!836208 m!781627))

(assert (=> b!836161 d!107489))

(declare-fun b!836223 () Bool)

(declare-fun e!466563 () Bool)

(declare-fun tp!47436 () Bool)

(assert (=> b!836223 (= e!466563 (and tp_is_empty!15253 tp!47436))))

(assert (=> b!836162 (= tp!47423 e!466563)))

(assert (= (and b!836162 (is-Cons!16029 (t!22412 l!390))) b!836223))

(push 1)

(assert (not b!836190))

(assert (not b!836208))

(assert (not b!836223))

(assert tp_is_empty!15253)

(check-sat)

