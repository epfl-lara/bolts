; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29830 () Bool)

(assert start!29830)

(declare-fun b!300028 () Bool)

(declare-fun e!189484 () Bool)

(declare-fun e!189482 () Bool)

(assert (=> b!300028 (= e!189484 e!189482)))

(declare-fun res!158222 () Bool)

(assert (=> b!300028 (=> (not res!158222) (not e!189482))))

(declare-datatypes ((SeekEntryResult!2333 0))(
  ( (MissingZero!2333 (index!11508 (_ BitVec 32))) (Found!2333 (index!11509 (_ BitVec 32))) (Intermediate!2333 (undefined!3145 Bool) (index!11510 (_ BitVec 32)) (x!29724 (_ BitVec 32))) (Undefined!2333) (MissingVacant!2333 (index!11511 (_ BitVec 32))) )
))
(declare-fun lt!149297 () SeekEntryResult!2333)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!300028 (= res!158222 (or (= lt!149297 (MissingZero!2333 i!1256)) (= lt!149297 (MissingVacant!2333 i!1256))))))

(declare-datatypes ((array!15156 0))(
  ( (array!15157 (arr!7173 (Array (_ BitVec 32) (_ BitVec 64))) (size!7525 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15156)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15156 (_ BitVec 32)) SeekEntryResult!2333)

(assert (=> b!300028 (= lt!149297 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!300029 () Bool)

(assert (=> b!300029 (= e!189482 false)))

(declare-fun lt!149295 () SeekEntryResult!2333)

(declare-fun lt!149294 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15156 (_ BitVec 32)) SeekEntryResult!2333)

(assert (=> b!300029 (= lt!149295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149294 k!2524 (array!15157 (store (arr!7173 a!3312) i!1256 k!2524) (size!7525 a!3312)) mask!3809))))

(declare-fun lt!149296 () SeekEntryResult!2333)

(assert (=> b!300029 (= lt!149296 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149294 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300029 (= lt!149294 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!300030 () Bool)

(declare-fun res!158220 () Bool)

(assert (=> b!300030 (=> (not res!158220) (not e!189484))))

(declare-fun arrayContainsKey!0 (array!15156 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300030 (= res!158220 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300031 () Bool)

(declare-fun res!158221 () Bool)

(assert (=> b!300031 (=> (not res!158221) (not e!189484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300031 (= res!158221 (validKeyInArray!0 k!2524))))

(declare-fun res!158218 () Bool)

(assert (=> start!29830 (=> (not res!158218) (not e!189484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29830 (= res!158218 (validMask!0 mask!3809))))

(assert (=> start!29830 e!189484))

(assert (=> start!29830 true))

(declare-fun array_inv!5127 (array!15156) Bool)

(assert (=> start!29830 (array_inv!5127 a!3312)))

(declare-fun b!300032 () Bool)

(declare-fun res!158223 () Bool)

(assert (=> b!300032 (=> (not res!158223) (not e!189484))))

(assert (=> b!300032 (= res!158223 (and (= (size!7525 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7525 a!3312))))))

(declare-fun b!300033 () Bool)

(declare-fun res!158219 () Bool)

(assert (=> b!300033 (=> (not res!158219) (not e!189482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15156 (_ BitVec 32)) Bool)

(assert (=> b!300033 (= res!158219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29830 res!158218) b!300032))

(assert (= (and b!300032 res!158223) b!300031))

(assert (= (and b!300031 res!158221) b!300030))

(assert (= (and b!300030 res!158220) b!300028))

(assert (= (and b!300028 res!158222) b!300033))

(assert (= (and b!300033 res!158219) b!300029))

(declare-fun m!312113 () Bool)

(assert (=> b!300028 m!312113))

(declare-fun m!312115 () Bool)

(assert (=> b!300030 m!312115))

(declare-fun m!312117 () Bool)

(assert (=> start!29830 m!312117))

(declare-fun m!312119 () Bool)

(assert (=> start!29830 m!312119))

(declare-fun m!312121 () Bool)

(assert (=> b!300033 m!312121))

(declare-fun m!312123 () Bool)

(assert (=> b!300029 m!312123))

(declare-fun m!312125 () Bool)

(assert (=> b!300029 m!312125))

(declare-fun m!312127 () Bool)

(assert (=> b!300029 m!312127))

(declare-fun m!312129 () Bool)

(assert (=> b!300029 m!312129))

(declare-fun m!312131 () Bool)

(assert (=> b!300031 m!312131))

(push 1)

