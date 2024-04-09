; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27884 () Bool)

(assert start!27884)

(declare-fun b!286603 () Bool)

(declare-fun res!148725 () Bool)

(declare-fun e!181590 () Bool)

(assert (=> b!286603 (=> (not res!148725) (not e!181590))))

(declare-datatypes ((array!14361 0))(
  ( (array!14362 (arr!6813 (Array (_ BitVec 32) (_ BitVec 64))) (size!7165 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14361)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286603 (= res!148725 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!148721 () Bool)

(assert (=> start!27884 (=> (not res!148721) (not e!181590))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27884 (= res!148721 (validMask!0 mask!3809))))

(assert (=> start!27884 e!181590))

(assert (=> start!27884 true))

(declare-fun array_inv!4767 (array!14361) Bool)

(assert (=> start!27884 (array_inv!4767 a!3312)))

(declare-fun b!286604 () Bool)

(declare-fun res!148720 () Bool)

(assert (=> b!286604 (=> (not res!148720) (not e!181590))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286604 (= res!148720 (validKeyInArray!0 k!2524))))

(declare-fun b!286605 () Bool)

(declare-fun res!148722 () Bool)

(declare-fun e!181589 () Bool)

(assert (=> b!286605 (=> (not res!148722) (not e!181589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14361 (_ BitVec 32)) Bool)

(assert (=> b!286605 (= res!148722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286606 () Bool)

(declare-fun res!148723 () Bool)

(assert (=> b!286606 (=> (not res!148723) (not e!181590))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286606 (= res!148723 (and (= (size!7165 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7165 a!3312))))))

(declare-fun b!286607 () Bool)

(assert (=> b!286607 (= e!181590 e!181589)))

(declare-fun res!148724 () Bool)

(assert (=> b!286607 (=> (not res!148724) (not e!181589))))

(declare-datatypes ((SeekEntryResult!1973 0))(
  ( (MissingZero!1973 (index!10062 (_ BitVec 32))) (Found!1973 (index!10063 (_ BitVec 32))) (Intermediate!1973 (undefined!2785 Bool) (index!10064 (_ BitVec 32)) (x!28245 (_ BitVec 32))) (Undefined!1973) (MissingVacant!1973 (index!10065 (_ BitVec 32))) )
))
(declare-fun lt!141197 () SeekEntryResult!1973)

(assert (=> b!286607 (= res!148724 (or (= lt!141197 (MissingZero!1973 i!1256)) (= lt!141197 (MissingVacant!1973 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14361 (_ BitVec 32)) SeekEntryResult!1973)

(assert (=> b!286607 (= lt!141197 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286608 () Bool)

(assert (=> b!286608 (= e!181589 false)))

(declare-fun lt!141196 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286608 (= lt!141196 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!27884 res!148721) b!286606))

(assert (= (and b!286606 res!148723) b!286604))

(assert (= (and b!286604 res!148720) b!286603))

(assert (= (and b!286603 res!148725) b!286607))

(assert (= (and b!286607 res!148724) b!286605))

(assert (= (and b!286605 res!148722) b!286608))

(declare-fun m!301271 () Bool)

(assert (=> b!286605 m!301271))

(declare-fun m!301273 () Bool)

(assert (=> b!286604 m!301273))

(declare-fun m!301275 () Bool)

(assert (=> b!286603 m!301275))

(declare-fun m!301277 () Bool)

(assert (=> start!27884 m!301277))

(declare-fun m!301279 () Bool)

(assert (=> start!27884 m!301279))

(declare-fun m!301281 () Bool)

(assert (=> b!286607 m!301281))

(declare-fun m!301283 () Bool)

(assert (=> b!286608 m!301283))

(push 1)

(assert (not b!286603))

(assert (not b!286604))

(assert (not start!27884))

(assert (not b!286605))

(assert (not b!286607))

(assert (not b!286608))

(check-sat)

