; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27784 () Bool)

(assert start!27784)

(declare-fun b!286025 () Bool)

(declare-fun res!148215 () Bool)

(declare-fun e!181282 () Bool)

(assert (=> b!286025 (=> (not res!148215) (not e!181282))))

(declare-datatypes ((array!14294 0))(
  ( (array!14295 (arr!6781 (Array (_ BitVec 32) (_ BitVec 64))) (size!7133 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14294)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286025 (= res!148215 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286024 () Bool)

(declare-fun res!148213 () Bool)

(assert (=> b!286024 (=> (not res!148213) (not e!181282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286024 (= res!148213 (validKeyInArray!0 k!2524))))

(declare-fun b!286026 () Bool)

(assert (=> b!286026 (= e!181282 false)))

(declare-datatypes ((SeekEntryResult!1941 0))(
  ( (MissingZero!1941 (index!9934 (_ BitVec 32))) (Found!1941 (index!9935 (_ BitVec 32))) (Intermediate!1941 (undefined!2753 Bool) (index!9936 (_ BitVec 32)) (x!28133 (_ BitVec 32))) (Undefined!1941) (MissingVacant!1941 (index!9937 (_ BitVec 32))) )
))
(declare-fun lt!141020 () SeekEntryResult!1941)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14294 (_ BitVec 32)) SeekEntryResult!1941)

(assert (=> b!286026 (= lt!141020 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286023 () Bool)

(declare-fun res!148214 () Bool)

(assert (=> b!286023 (=> (not res!148214) (not e!181282))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286023 (= res!148214 (and (= (size!7133 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7133 a!3312))))))

(declare-fun res!148212 () Bool)

(assert (=> start!27784 (=> (not res!148212) (not e!181282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27784 (= res!148212 (validMask!0 mask!3809))))

(assert (=> start!27784 e!181282))

(assert (=> start!27784 true))

(declare-fun array_inv!4735 (array!14294) Bool)

(assert (=> start!27784 (array_inv!4735 a!3312)))

(assert (= (and start!27784 res!148212) b!286023))

(assert (= (and b!286023 res!148214) b!286024))

(assert (= (and b!286024 res!148213) b!286025))

(assert (= (and b!286025 res!148215) b!286026))

(declare-fun m!300823 () Bool)

(assert (=> b!286025 m!300823))

(declare-fun m!300825 () Bool)

(assert (=> b!286024 m!300825))

(declare-fun m!300827 () Bool)

(assert (=> b!286026 m!300827))

(declare-fun m!300829 () Bool)

(assert (=> start!27784 m!300829))

(declare-fun m!300831 () Bool)

(assert (=> start!27784 m!300831))

(push 1)

(assert (not b!286024))

(assert (not start!27784))

(assert (not b!286025))

(assert (not b!286026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

