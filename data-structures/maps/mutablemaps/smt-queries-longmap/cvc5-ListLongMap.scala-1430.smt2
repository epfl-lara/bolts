; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27736 () Bool)

(assert start!27736)

(declare-fun res!148041 () Bool)

(declare-fun e!181191 () Bool)

(assert (=> start!27736 (=> (not res!148041) (not e!181191))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27736 (= res!148041 (validMask!0 mask!3809))))

(assert (=> start!27736 e!181191))

(assert (=> start!27736 true))

(declare-datatypes ((array!14261 0))(
  ( (array!14262 (arr!6766 (Array (_ BitVec 32) (_ BitVec 64))) (size!7118 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14261)

(declare-fun array_inv!4720 (array!14261) Bool)

(assert (=> start!27736 (array_inv!4720 a!3312)))

(declare-fun b!285850 () Bool)

(declare-fun res!148040 () Bool)

(assert (=> b!285850 (=> (not res!148040) (not e!181191))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!285850 (= res!148040 (and (= (size!7118 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7118 a!3312))))))

(declare-fun b!285851 () Bool)

(declare-fun res!148039 () Bool)

(assert (=> b!285851 (=> (not res!148039) (not e!181191))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285851 (= res!148039 (validKeyInArray!0 k!2524))))

(declare-fun b!285852 () Bool)

(assert (=> b!285852 (= e!181191 (bvsge #b00000000000000000000000000000000 (size!7118 a!3312)))))

(assert (= (and start!27736 res!148041) b!285850))

(assert (= (and b!285850 res!148040) b!285851))

(assert (= (and b!285851 res!148039) b!285852))

(declare-fun m!300703 () Bool)

(assert (=> start!27736 m!300703))

(declare-fun m!300705 () Bool)

(assert (=> start!27736 m!300705))

(declare-fun m!300707 () Bool)

(assert (=> b!285851 m!300707))

(push 1)

(assert (not b!285851))

(assert (not start!27736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

