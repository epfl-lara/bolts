; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27874 () Bool)

(assert start!27874)

(declare-fun b!286513 () Bool)

(declare-fun res!148635 () Bool)

(declare-fun e!181544 () Bool)

(assert (=> b!286513 (=> (not res!148635) (not e!181544))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286513 (= res!148635 (validKeyInArray!0 k!2524))))

(declare-fun b!286514 () Bool)

(declare-fun res!148633 () Bool)

(assert (=> b!286514 (=> (not res!148633) (not e!181544))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14351 0))(
  ( (array!14352 (arr!6808 (Array (_ BitVec 32) (_ BitVec 64))) (size!7160 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14351)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286514 (= res!148633 (and (= (size!7160 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7160 a!3312))))))

(declare-fun b!286515 () Bool)

(declare-fun e!181546 () Bool)

(assert (=> b!286515 (= e!181546 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun lt!141166 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286515 (= lt!141166 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!286516 () Bool)

(assert (=> b!286516 (= e!181544 e!181546)))

(declare-fun res!148634 () Bool)

(assert (=> b!286516 (=> (not res!148634) (not e!181546))))

(declare-datatypes ((SeekEntryResult!1968 0))(
  ( (MissingZero!1968 (index!10042 (_ BitVec 32))) (Found!1968 (index!10043 (_ BitVec 32))) (Intermediate!1968 (undefined!2780 Bool) (index!10044 (_ BitVec 32)) (x!28232 (_ BitVec 32))) (Undefined!1968) (MissingVacant!1968 (index!10045 (_ BitVec 32))) )
))
(declare-fun lt!141167 () SeekEntryResult!1968)

(assert (=> b!286516 (= res!148634 (or (= lt!141167 (MissingZero!1968 i!1256)) (= lt!141167 (MissingVacant!1968 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14351 (_ BitVec 32)) SeekEntryResult!1968)

(assert (=> b!286516 (= lt!141167 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!148630 () Bool)

(assert (=> start!27874 (=> (not res!148630) (not e!181544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27874 (= res!148630 (validMask!0 mask!3809))))

(assert (=> start!27874 e!181544))

(assert (=> start!27874 true))

(declare-fun array_inv!4762 (array!14351) Bool)

(assert (=> start!27874 (array_inv!4762 a!3312)))

(declare-fun b!286517 () Bool)

(declare-fun res!148631 () Bool)

(assert (=> b!286517 (=> (not res!148631) (not e!181546))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14351 (_ BitVec 32)) Bool)

(assert (=> b!286517 (= res!148631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286518 () Bool)

(declare-fun res!148632 () Bool)

(assert (=> b!286518 (=> (not res!148632) (not e!181544))))

(declare-fun arrayContainsKey!0 (array!14351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286518 (= res!148632 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27874 res!148630) b!286514))

(assert (= (and b!286514 res!148633) b!286513))

(assert (= (and b!286513 res!148635) b!286518))

(assert (= (and b!286518 res!148632) b!286516))

(assert (= (and b!286516 res!148634) b!286517))

(assert (= (and b!286517 res!148631) b!286515))

(declare-fun m!301201 () Bool)

(assert (=> b!286518 m!301201))

(declare-fun m!301203 () Bool)

(assert (=> b!286513 m!301203))

(declare-fun m!301205 () Bool)

(assert (=> b!286515 m!301205))

(declare-fun m!301207 () Bool)

(assert (=> start!27874 m!301207))

(declare-fun m!301209 () Bool)

(assert (=> start!27874 m!301209))

(declare-fun m!301211 () Bool)

(assert (=> b!286516 m!301211))

(declare-fun m!301213 () Bool)

(assert (=> b!286517 m!301213))

(push 1)

(assert (not b!286513))

(assert (not b!286515))

(assert (not b!286516))

(assert (not start!27874))

(assert (not b!286517))

(assert (not b!286518))

(check-sat)

(pop 1)

