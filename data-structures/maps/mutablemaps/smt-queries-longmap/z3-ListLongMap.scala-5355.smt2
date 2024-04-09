; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71742 () Bool)

(assert start!71742)

(declare-fun res!567040 () Bool)

(declare-fun e!465224 () Bool)

(assert (=> start!71742 (=> (not res!567040) (not e!465224))))

(declare-fun oldMask!5 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71742 (= res!567040 (validMask!0 oldMask!5))))

(assert (=> start!71742 e!465224))

(assert (=> start!71742 true))

(declare-fun b!833813 () Bool)

(declare-fun m!52 () (_ BitVec 32))

(declare-fun _vacant!10 () (_ BitVec 32))

(declare-fun _size!10 () (_ BitVec 32))

(assert (=> b!833813 (= e!465224 (and (bvsge _size!10 #b00000000000000000000000000000000) (bvsle _size!10 (bvadd #b00000000000000000000000000000001 oldMask!5)) (bvsge _vacant!10 #b00000000000000000000000000000000) (bvsgt m!52 #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 _size!10) m!52) (bvsge (bvadd #b00000000000000000000000000000001 (bvand (bvashr m!52 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) _size!10) (bvslt m!52 #b00000000000000000000000000000000)))))

(assert (= (and start!71742 res!567040) b!833813))

(declare-fun m!778860 () Bool)

(assert (=> start!71742 m!778860))

(check-sat (not start!71742))
(check-sat)
