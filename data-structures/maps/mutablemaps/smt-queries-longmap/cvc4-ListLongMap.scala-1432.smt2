; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27770 () Bool)

(assert start!27770)

(declare-fun b!285932 () Bool)

(declare-fun res!148120 () Bool)

(declare-fun e!181239 () Bool)

(assert (=> b!285932 (=> (not res!148120) (not e!181239))))

(declare-datatypes ((array!14280 0))(
  ( (array!14281 (arr!6774 (Array (_ BitVec 32) (_ BitVec 64))) (size!7126 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14280)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285932 (= res!148120 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!148122 () Bool)

(assert (=> start!27770 (=> (not res!148122) (not e!181239))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27770 (= res!148122 (validMask!0 mask!3809))))

(assert (=> start!27770 e!181239))

(assert (=> start!27770 true))

(declare-fun array_inv!4728 (array!14280) Bool)

(assert (=> start!27770 (array_inv!4728 a!3312)))

(declare-fun b!285930 () Bool)

(declare-fun res!148119 () Bool)

(assert (=> b!285930 (=> (not res!148119) (not e!181239))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!285930 (= res!148119 (and (= (size!7126 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7126 a!3312))))))

(declare-fun b!285933 () Bool)

(assert (=> b!285933 (= e!181239 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun b!285931 () Bool)

(declare-fun res!148121 () Bool)

(assert (=> b!285931 (=> (not res!148121) (not e!181239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285931 (= res!148121 (validKeyInArray!0 k!2524))))

(assert (= (and start!27770 res!148122) b!285930))

(assert (= (and b!285930 res!148119) b!285931))

(assert (= (and b!285931 res!148121) b!285932))

(assert (= (and b!285932 res!148120) b!285933))

(declare-fun m!300755 () Bool)

(assert (=> b!285932 m!300755))

(declare-fun m!300757 () Bool)

(assert (=> start!27770 m!300757))

(declare-fun m!300759 () Bool)

(assert (=> start!27770 m!300759))

(declare-fun m!300761 () Bool)

(assert (=> b!285931 m!300761))

(push 1)

(assert (not start!27770))

(assert (not b!285932))

(assert (not b!285931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

