; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27796 () Bool)

(assert start!27796)

(declare-fun b!286097 () Bool)

(declare-fun res!148284 () Bool)

(declare-fun e!181318 () Bool)

(assert (=> b!286097 (=> (not res!148284) (not e!181318))))

(declare-datatypes ((array!14306 0))(
  ( (array!14307 (arr!6787 (Array (_ BitVec 32) (_ BitVec 64))) (size!7139 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14306)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286097 (= res!148284 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286096 () Bool)

(declare-fun res!148286 () Bool)

(assert (=> b!286096 (=> (not res!148286) (not e!181318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286096 (= res!148286 (validKeyInArray!0 k!2524))))

(declare-fun b!286095 () Bool)

(declare-fun res!148285 () Bool)

(assert (=> b!286095 (=> (not res!148285) (not e!181318))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286095 (= res!148285 (and (= (size!7139 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7139 a!3312))))))

(declare-fun res!148287 () Bool)

(assert (=> start!27796 (=> (not res!148287) (not e!181318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27796 (= res!148287 (validMask!0 mask!3809))))

(assert (=> start!27796 e!181318))

(assert (=> start!27796 true))

(declare-fun array_inv!4741 (array!14306) Bool)

(assert (=> start!27796 (array_inv!4741 a!3312)))

(declare-fun b!286098 () Bool)

(assert (=> b!286098 (= e!181318 false)))

(declare-datatypes ((SeekEntryResult!1947 0))(
  ( (MissingZero!1947 (index!9958 (_ BitVec 32))) (Found!1947 (index!9959 (_ BitVec 32))) (Intermediate!1947 (undefined!2759 Bool) (index!9960 (_ BitVec 32)) (x!28155 (_ BitVec 32))) (Undefined!1947) (MissingVacant!1947 (index!9961 (_ BitVec 32))) )
))
(declare-fun lt!141038 () SeekEntryResult!1947)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14306 (_ BitVec 32)) SeekEntryResult!1947)

(assert (=> b!286098 (= lt!141038 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!27796 res!148287) b!286095))

(assert (= (and b!286095 res!148285) b!286096))

(assert (= (and b!286096 res!148286) b!286097))

(assert (= (and b!286097 res!148284) b!286098))

(declare-fun m!300883 () Bool)

(assert (=> b!286097 m!300883))

(declare-fun m!300885 () Bool)

(assert (=> b!286096 m!300885))

(declare-fun m!300887 () Bool)

(assert (=> start!27796 m!300887))

(declare-fun m!300889 () Bool)

(assert (=> start!27796 m!300889))

(declare-fun m!300891 () Bool)

(assert (=> b!286098 m!300891))

(push 1)

(assert (not b!286096))

(assert (not start!27796))

(assert (not b!286097))

(assert (not b!286098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

