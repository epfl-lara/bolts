; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27820 () Bool)

(assert start!27820)

(declare-fun b!286243 () Bool)

(declare-fun res!148432 () Bool)

(declare-fun e!181392 () Bool)

(assert (=> b!286243 (=> (not res!148432) (not e!181392))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286243 (= res!148432 (validKeyInArray!0 k!2524))))

(declare-fun b!286244 () Bool)

(declare-fun e!181391 () Bool)

(assert (=> b!286244 (= e!181392 e!181391)))

(declare-fun res!148435 () Bool)

(assert (=> b!286244 (=> (not res!148435) (not e!181391))))

(declare-datatypes ((SeekEntryResult!1959 0))(
  ( (MissingZero!1959 (index!10006 (_ BitVec 32))) (Found!1959 (index!10007 (_ BitVec 32))) (Intermediate!1959 (undefined!2771 Bool) (index!10008 (_ BitVec 32)) (x!28199 (_ BitVec 32))) (Undefined!1959) (MissingVacant!1959 (index!10009 (_ BitVec 32))) )
))
(declare-fun lt!141074 () SeekEntryResult!1959)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286244 (= res!148435 (or (= lt!141074 (MissingZero!1959 i!1256)) (= lt!141074 (MissingVacant!1959 i!1256))))))

(declare-datatypes ((array!14330 0))(
  ( (array!14331 (arr!6799 (Array (_ BitVec 32) (_ BitVec 64))) (size!7151 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14330)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14330 (_ BitVec 32)) SeekEntryResult!1959)

(assert (=> b!286244 (= lt!141074 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286245 () Bool)

(declare-fun res!148436 () Bool)

(assert (=> b!286245 (=> (not res!148436) (not e!181392))))

(assert (=> b!286245 (= res!148436 (and (= (size!7151 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7151 a!3312))))))

(declare-fun b!286246 () Bool)

(assert (=> b!286246 (= e!181391 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun b!286247 () Bool)

(declare-fun res!148433 () Bool)

(assert (=> b!286247 (=> (not res!148433) (not e!181392))))

(declare-fun arrayContainsKey!0 (array!14330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286247 (= res!148433 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!148437 () Bool)

(assert (=> start!27820 (=> (not res!148437) (not e!181392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27820 (= res!148437 (validMask!0 mask!3809))))

(assert (=> start!27820 e!181392))

(assert (=> start!27820 true))

(declare-fun array_inv!4753 (array!14330) Bool)

(assert (=> start!27820 (array_inv!4753 a!3312)))

(declare-fun b!286248 () Bool)

(declare-fun res!148434 () Bool)

(assert (=> b!286248 (=> (not res!148434) (not e!181391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14330 (_ BitVec 32)) Bool)

(assert (=> b!286248 (= res!148434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!27820 res!148437) b!286245))

(assert (= (and b!286245 res!148436) b!286243))

(assert (= (and b!286243 res!148432) b!286247))

(assert (= (and b!286247 res!148433) b!286244))

(assert (= (and b!286244 res!148435) b!286248))

(assert (= (and b!286248 res!148434) b!286246))

(declare-fun m!301003 () Bool)

(assert (=> b!286247 m!301003))

(declare-fun m!301005 () Bool)

(assert (=> b!286248 m!301005))

(declare-fun m!301007 () Bool)

(assert (=> b!286243 m!301007))

(declare-fun m!301009 () Bool)

(assert (=> b!286244 m!301009))

(declare-fun m!301011 () Bool)

(assert (=> start!27820 m!301011))

(declare-fun m!301013 () Bool)

(assert (=> start!27820 m!301013))

(push 1)

(assert (not b!286243))

(assert (not b!286244))

(assert (not b!286248))

