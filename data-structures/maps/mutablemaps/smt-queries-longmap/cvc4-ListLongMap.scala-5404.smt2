; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72170 () Bool)

(assert start!72170)

(declare-fun res!569227 () Bool)

(declare-fun e!466874 () Bool)

(assert (=> start!72170 (=> (not res!569227) (not e!466874))))

(declare-datatypes ((List!16062 0))(
  ( (Nil!16059) (Cons!16058 (h!17189 (_ BitVec 64)) (t!22441 List!16062)) )
))
(declare-fun l!632 () List!16062)

(assert (=> start!72170 (= res!569227 (and (not (is-Nil!16059 l!632)) (not (is-Nil!16059 (t!22441 l!632))) (bvslt (h!17189 l!632) (h!17189 (t!22441 l!632)))))))

(assert (=> start!72170 e!466874))

(assert (=> start!72170 true))

(declare-fun b!836648 () Bool)

(declare-fun ListPrimitiveSize!78 (List!16062) Int)

(assert (=> b!836648 (= e!466874 (>= (ListPrimitiveSize!78 (t!22441 l!632)) (ListPrimitiveSize!78 l!632)))))

(assert (= (and start!72170 res!569227) b!836648))

(declare-fun m!781875 () Bool)

(assert (=> b!836648 m!781875))

(declare-fun m!781877 () Bool)

(assert (=> b!836648 m!781877))

(push 1)

(assert (not b!836648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

