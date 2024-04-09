; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27824 () Bool)

(assert start!27824)

(declare-fun b!286279 () Bool)

(declare-fun e!181410 () Bool)

(declare-fun e!181411 () Bool)

(assert (=> b!286279 (= e!181410 e!181411)))

(declare-fun res!148468 () Bool)

(assert (=> b!286279 (=> (not res!148468) (not e!181411))))

(declare-datatypes ((SeekEntryResult!1961 0))(
  ( (MissingZero!1961 (index!10014 (_ BitVec 32))) (Found!1961 (index!10015 (_ BitVec 32))) (Intermediate!1961 (undefined!2773 Bool) (index!10016 (_ BitVec 32)) (x!28201 (_ BitVec 32))) (Undefined!1961) (MissingVacant!1961 (index!10017 (_ BitVec 32))) )
))
(declare-fun lt!141080 () SeekEntryResult!1961)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286279 (= res!148468 (or (= lt!141080 (MissingZero!1961 i!1256)) (= lt!141080 (MissingVacant!1961 i!1256))))))

(declare-datatypes ((array!14334 0))(
  ( (array!14335 (arr!6801 (Array (_ BitVec 32) (_ BitVec 64))) (size!7153 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14334)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14334 (_ BitVec 32)) SeekEntryResult!1961)

(assert (=> b!286279 (= lt!141080 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286280 () Bool)

(assert (=> b!286280 (= e!181411 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun res!148472 () Bool)

(assert (=> start!27824 (=> (not res!148472) (not e!181410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27824 (= res!148472 (validMask!0 mask!3809))))

(assert (=> start!27824 e!181410))

(assert (=> start!27824 true))

(declare-fun array_inv!4755 (array!14334) Bool)

(assert (=> start!27824 (array_inv!4755 a!3312)))

(declare-fun b!286281 () Bool)

(declare-fun res!148471 () Bool)

(assert (=> b!286281 (=> (not res!148471) (not e!181410))))

(declare-fun arrayContainsKey!0 (array!14334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286281 (= res!148471 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286282 () Bool)

(declare-fun res!148469 () Bool)

(assert (=> b!286282 (=> (not res!148469) (not e!181411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14334 (_ BitVec 32)) Bool)

(assert (=> b!286282 (= res!148469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286283 () Bool)

(declare-fun res!148470 () Bool)

(assert (=> b!286283 (=> (not res!148470) (not e!181410))))

(assert (=> b!286283 (= res!148470 (and (= (size!7153 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7153 a!3312))))))

(declare-fun b!286284 () Bool)

(declare-fun res!148473 () Bool)

(assert (=> b!286284 (=> (not res!148473) (not e!181410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286284 (= res!148473 (validKeyInArray!0 k!2524))))

(assert (= (and start!27824 res!148472) b!286283))

(assert (= (and b!286283 res!148470) b!286284))

(assert (= (and b!286284 res!148473) b!286281))

(assert (= (and b!286281 res!148471) b!286279))

(assert (= (and b!286279 res!148468) b!286282))

(assert (= (and b!286282 res!148469) b!286280))

(declare-fun m!301027 () Bool)

(assert (=> start!27824 m!301027))

(declare-fun m!301029 () Bool)

(assert (=> start!27824 m!301029))

(declare-fun m!301031 () Bool)

(assert (=> b!286279 m!301031))

(declare-fun m!301033 () Bool)

(assert (=> b!286282 m!301033))

(declare-fun m!301035 () Bool)

(assert (=> b!286281 m!301035))

(declare-fun m!301037 () Bool)

(assert (=> b!286284 m!301037))

(push 1)

(assert (not b!286282))

(assert (not b!286279))

(assert (not b!286284))

(assert (not start!27824))

(assert (not b!286281))

(check-sat)

(pop 1)

(push 1)

(check-sat)

