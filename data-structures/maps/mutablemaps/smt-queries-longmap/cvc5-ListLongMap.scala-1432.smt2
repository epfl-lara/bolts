; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27766 () Bool)

(assert start!27766)

(declare-fun b!285907 () Bool)

(declare-fun res!148095 () Bool)

(declare-fun e!181228 () Bool)

(assert (=> b!285907 (=> (not res!148095) (not e!181228))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285907 (= res!148095 (validKeyInArray!0 k!2524))))

(declare-fun res!148096 () Bool)

(assert (=> start!27766 (=> (not res!148096) (not e!181228))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27766 (= res!148096 (validMask!0 mask!3809))))

(assert (=> start!27766 e!181228))

(assert (=> start!27766 true))

(declare-datatypes ((array!14276 0))(
  ( (array!14277 (arr!6772 (Array (_ BitVec 32) (_ BitVec 64))) (size!7124 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14276)

(declare-fun array_inv!4726 (array!14276) Bool)

(assert (=> start!27766 (array_inv!4726 a!3312)))

(declare-fun b!285908 () Bool)

(declare-fun res!148097 () Bool)

(assert (=> b!285908 (=> (not res!148097) (not e!181228))))

(declare-fun arrayContainsKey!0 (array!14276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285908 (= res!148097 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!285909 () Bool)

(assert (=> b!285909 (= e!181228 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun b!285906 () Bool)

(declare-fun res!148098 () Bool)

(assert (=> b!285906 (=> (not res!148098) (not e!181228))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!285906 (= res!148098 (and (= (size!7124 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7124 a!3312))))))

(assert (= (and start!27766 res!148096) b!285906))

(assert (= (and b!285906 res!148098) b!285907))

(assert (= (and b!285907 res!148095) b!285908))

(assert (= (and b!285908 res!148097) b!285909))

(declare-fun m!300739 () Bool)

(assert (=> b!285907 m!300739))

(declare-fun m!300741 () Bool)

(assert (=> start!27766 m!300741))

(declare-fun m!300743 () Bool)

(assert (=> start!27766 m!300743))

(declare-fun m!300745 () Bool)

(assert (=> b!285908 m!300745))

(push 1)

(assert (not b!285908))

(assert (not start!27766))

(assert (not b!285907))

(check-sat)

(pop 1)

