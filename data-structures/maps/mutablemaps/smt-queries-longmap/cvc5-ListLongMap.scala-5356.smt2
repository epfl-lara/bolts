; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71746 () Bool)

(assert start!71746)

(declare-fun res!567046 () Bool)

(declare-fun e!465230 () Bool)

(assert (=> start!71746 (=> (not res!567046) (not e!465230))))

(declare-fun oldMask!5 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71746 (= res!567046 (validMask!0 oldMask!5))))

(assert (=> start!71746 e!465230))

(assert (=> start!71746 true))

(declare-fun b!833819 () Bool)

(declare-fun m!52 () (_ BitVec 32))

(declare-fun _vacant!10 () (_ BitVec 32))

(declare-fun _size!10 () (_ BitVec 32))

(assert (=> b!833819 (= e!465230 (and (bvsge _size!10 #b00000000000000000000000000000000) (bvsle _size!10 (bvadd #b00000000000000000000000000000001 oldMask!5)) (bvsge _vacant!10 #b00000000000000000000000000000000) (bvsgt m!52 #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 _size!10) m!52) (bvsge (bvadd #b00000000000000000000000000000001 (bvand (bvashr m!52 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) _size!10) (bvsgt (bvlshr m!52 #b00000000000000000000000000000001) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 _size!10) (bvlshr m!52 #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 (bvand (bvashr (bvlshr m!52 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) _size!10) (bvsge (bvlshr m!52 #b00000000000000000000000000000001) m!52)))))

(assert (= (and start!71746 res!567046) b!833819))

(declare-fun m!778864 () Bool)

(assert (=> start!71746 m!778864))

(push 1)

(assert (not start!71746))

(check-sat)

(pop 1)

(push 1)

(check-sat)

