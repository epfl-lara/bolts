; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71740 () Bool)

(assert start!71740)

(declare-fun res!567037 () Bool)

(declare-fun e!465221 () Bool)

(assert (=> start!71740 (=> (not res!567037) (not e!465221))))

(declare-fun oldMask!5 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71740 (= res!567037 (validMask!0 oldMask!5))))

(assert (=> start!71740 e!465221))

(assert (=> start!71740 true))

(declare-fun m!52 () (_ BitVec 32))

(declare-fun b!833810 () Bool)

(declare-fun _vacant!10 () (_ BitVec 32))

(declare-fun _size!10 () (_ BitVec 32))

(assert (=> b!833810 (= e!465221 (and (bvsge _size!10 #b00000000000000000000000000000000) (bvsle _size!10 (bvadd #b00000000000000000000000000000001 oldMask!5)) (bvsge _vacant!10 #b00000000000000000000000000000000) (bvsgt m!52 #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 _size!10) m!52) (bvsge (bvadd #b00000000000000000000000000000001 (bvand (bvashr m!52 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) _size!10) (bvslt m!52 #b00000000000000000000000000000000)))))

(assert (= (and start!71740 res!567037) b!833810))

(declare-fun m!778858 () Bool)

(assert (=> start!71740 m!778858))

(push 1)

(assert (not start!71740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

