; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27868 () Bool)

(assert start!27868)

(declare-fun b!286459 () Bool)

(declare-fun res!148580 () Bool)

(declare-fun e!181517 () Bool)

(assert (=> b!286459 (=> (not res!148580) (not e!181517))))

(declare-datatypes ((array!14345 0))(
  ( (array!14346 (arr!6805 (Array (_ BitVec 32) (_ BitVec 64))) (size!7157 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14345)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14345 (_ BitVec 32)) Bool)

(assert (=> b!286459 (= res!148580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286461 () Bool)

(declare-fun res!148578 () Bool)

(declare-fun e!181518 () Bool)

(assert (=> b!286461 (=> (not res!148578) (not e!181518))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286461 (= res!148578 (validKeyInArray!0 k!2524))))

(declare-fun b!286462 () Bool)

(declare-fun res!148576 () Bool)

(assert (=> b!286462 (=> (not res!148576) (not e!181518))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286462 (= res!148576 (and (= (size!7157 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7157 a!3312))))))

(declare-fun b!286463 () Bool)

(assert (=> b!286463 (= e!181518 e!181517)))

(declare-fun res!148577 () Bool)

(assert (=> b!286463 (=> (not res!148577) (not e!181517))))

(declare-datatypes ((SeekEntryResult!1965 0))(
  ( (MissingZero!1965 (index!10030 (_ BitVec 32))) (Found!1965 (index!10031 (_ BitVec 32))) (Intermediate!1965 (undefined!2777 Bool) (index!10032 (_ BitVec 32)) (x!28221 (_ BitVec 32))) (Undefined!1965) (MissingVacant!1965 (index!10033 (_ BitVec 32))) )
))
(declare-fun lt!141149 () SeekEntryResult!1965)

(assert (=> b!286463 (= res!148577 (or (= lt!141149 (MissingZero!1965 i!1256)) (= lt!141149 (MissingVacant!1965 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14345 (_ BitVec 32)) SeekEntryResult!1965)

(assert (=> b!286463 (= lt!141149 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286464 () Bool)

(declare-fun res!148579 () Bool)

(assert (=> b!286464 (=> (not res!148579) (not e!181518))))

(declare-fun arrayContainsKey!0 (array!14345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286464 (= res!148579 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286460 () Bool)

(assert (=> b!286460 (= e!181517 false)))

(declare-fun lt!141148 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286460 (= lt!141148 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!148581 () Bool)

(assert (=> start!27868 (=> (not res!148581) (not e!181518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27868 (= res!148581 (validMask!0 mask!3809))))

(assert (=> start!27868 e!181518))

(assert (=> start!27868 true))

(declare-fun array_inv!4759 (array!14345) Bool)

(assert (=> start!27868 (array_inv!4759 a!3312)))

(assert (= (and start!27868 res!148581) b!286462))

(assert (= (and b!286462 res!148576) b!286461))

(assert (= (and b!286461 res!148578) b!286464))

(assert (= (and b!286464 res!148579) b!286463))

(assert (= (and b!286463 res!148577) b!286459))

(assert (= (and b!286459 res!148580) b!286460))

(declare-fun m!301159 () Bool)

(assert (=> b!286463 m!301159))

(declare-fun m!301161 () Bool)

(assert (=> b!286459 m!301161))

(declare-fun m!301163 () Bool)

(assert (=> b!286464 m!301163))

(declare-fun m!301165 () Bool)

(assert (=> start!27868 m!301165))

(declare-fun m!301167 () Bool)

(assert (=> start!27868 m!301167))

(declare-fun m!301169 () Bool)

(assert (=> b!286461 m!301169))

(declare-fun m!301171 () Bool)

(assert (=> b!286460 m!301171))

(push 1)

(assert (not b!286463))

(assert (not b!286460))

(assert (not b!286464))

(assert (not start!27868))

(assert (not b!286459))

(assert (not b!286461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

