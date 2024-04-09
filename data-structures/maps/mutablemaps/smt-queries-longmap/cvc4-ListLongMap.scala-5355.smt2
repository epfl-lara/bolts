; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71744 () Bool)

(assert start!71744)

(declare-fun res!567043 () Bool)

(declare-fun e!465227 () Bool)

(assert (=> start!71744 (=> (not res!567043) (not e!465227))))

(declare-fun oldMask!5 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71744 (= res!567043 (validMask!0 oldMask!5))))

(assert (=> start!71744 e!465227))

(assert (=> start!71744 true))

(declare-fun b!833816 () Bool)

(declare-fun m!52 () (_ BitVec 32))

(declare-fun _vacant!10 () (_ BitVec 32))

(declare-fun _size!10 () (_ BitVec 32))

(assert (=> b!833816 (= e!465227 (and (bvsge _size!10 #b00000000000000000000000000000000) (bvsle _size!10 (bvadd #b00000000000000000000000000000001 oldMask!5)) (bvsge _vacant!10 #b00000000000000000000000000000000) (bvsgt m!52 #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 _size!10) m!52) (bvsge (bvadd #b00000000000000000000000000000001 (bvand (bvashr m!52 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) _size!10) (bvslt m!52 #b00000000000000000000000000000000)))))

(assert (= (and start!71744 res!567043) b!833816))

(declare-fun m!778862 () Bool)

(assert (=> start!71744 m!778862))

(push 1)

(assert (not start!71744))

(check-sat)

(pop 1)

(push 1)

(check-sat)

