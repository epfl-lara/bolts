; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29130 () Bool)

(assert start!29130)

(declare-fun b!295342 () Bool)

(declare-fun res!155268 () Bool)

(declare-fun e!186689 () Bool)

(assert (=> b!295342 (=> (not res!155268) (not e!186689))))

(declare-datatypes ((array!14930 0))(
  ( (array!14931 (arr!7075 (Array (_ BitVec 32) (_ BitVec 64))) (size!7427 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14930)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295342 (= res!155268 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295343 () Bool)

(declare-fun e!186686 () Bool)

(assert (=> b!295343 (= e!186689 e!186686)))

(declare-fun res!155266 () Bool)

(assert (=> b!295343 (=> (not res!155266) (not e!186686))))

(declare-datatypes ((SeekEntryResult!2235 0))(
  ( (MissingZero!2235 (index!11110 (_ BitVec 32))) (Found!2235 (index!11111 (_ BitVec 32))) (Intermediate!2235 (undefined!3047 Bool) (index!11112 (_ BitVec 32)) (x!29300 (_ BitVec 32))) (Undefined!2235) (MissingVacant!2235 (index!11113 (_ BitVec 32))) )
))
(declare-fun lt!146484 () SeekEntryResult!2235)

(declare-fun lt!146488 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295343 (= res!155266 (or lt!146488 (= lt!146484 (MissingVacant!2235 i!1256))))))

(assert (=> b!295343 (= lt!146488 (= lt!146484 (MissingZero!2235 i!1256)))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14930 (_ BitVec 32)) SeekEntryResult!2235)

(assert (=> b!295343 (= lt!146484 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295344 () Bool)

(declare-fun e!186685 () Bool)

(declare-fun e!186688 () Bool)

(assert (=> b!295344 (= e!186685 e!186688)))

(declare-fun res!155270 () Bool)

(assert (=> b!295344 (=> (not res!155270) (not e!186688))))

(declare-fun lt!146485 () Bool)

(declare-fun lt!146489 () SeekEntryResult!2235)

(assert (=> b!295344 (= res!155270 (and (or lt!146485 (not (undefined!3047 lt!146489))) (or lt!146485 (not (= (select (arr!7075 a!3312) (index!11112 lt!146489)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146485 (not (= (select (arr!7075 a!3312) (index!11112 lt!146489)) k!2524))) (not lt!146485)))))

(assert (=> b!295344 (= lt!146485 (not (is-Intermediate!2235 lt!146489)))))

(declare-fun res!155267 () Bool)

(assert (=> start!29130 (=> (not res!155267) (not e!186689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29130 (= res!155267 (validMask!0 mask!3809))))

(assert (=> start!29130 e!186689))

(assert (=> start!29130 true))

(declare-fun array_inv!5029 (array!14930) Bool)

(assert (=> start!29130 (array_inv!5029 a!3312)))

(declare-fun b!295345 () Bool)

(declare-fun res!155269 () Bool)

(assert (=> b!295345 (=> (not res!155269) (not e!186689))))

(assert (=> b!295345 (= res!155269 (and (= (size!7427 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7427 a!3312))))))

(declare-fun b!295346 () Bool)

(declare-fun res!155264 () Bool)

(assert (=> b!295346 (=> (not res!155264) (not e!186686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14930 (_ BitVec 32)) Bool)

(assert (=> b!295346 (= res!155264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295347 () Bool)

(assert (=> b!295347 (= e!186686 e!186685)))

(declare-fun res!155265 () Bool)

(assert (=> b!295347 (=> (not res!155265) (not e!186685))))

(assert (=> b!295347 (= res!155265 lt!146488)))

(declare-fun lt!146487 () (_ BitVec 32))

(declare-fun lt!146486 () SeekEntryResult!2235)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14930 (_ BitVec 32)) SeekEntryResult!2235)

(assert (=> b!295347 (= lt!146486 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146487 k!2524 (array!14931 (store (arr!7075 a!3312) i!1256 k!2524) (size!7427 a!3312)) mask!3809))))

(assert (=> b!295347 (= lt!146489 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146487 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295347 (= lt!146487 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295348 () Bool)

(assert (=> b!295348 (= e!186688 (not true))))

(assert (=> b!295348 (and (= (select (arr!7075 a!3312) (index!11112 lt!146489)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11112 lt!146489) i!1256))))

(declare-fun b!295349 () Bool)

(declare-fun res!155271 () Bool)

(assert (=> b!295349 (=> (not res!155271) (not e!186689))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295349 (= res!155271 (validKeyInArray!0 k!2524))))

(assert (= (and start!29130 res!155267) b!295345))

(assert (= (and b!295345 res!155269) b!295349))

(assert (= (and b!295349 res!155271) b!295342))

(assert (= (and b!295342 res!155268) b!295343))

(assert (= (and b!295343 res!155266) b!295346))

(assert (= (and b!295346 res!155264) b!295347))

(assert (= (and b!295347 res!155265) b!295344))

(assert (= (and b!295344 res!155270) b!295348))

(declare-fun m!308483 () Bool)

(assert (=> b!295349 m!308483))

(declare-fun m!308485 () Bool)

(assert (=> b!295343 m!308485))

(declare-fun m!308487 () Bool)

(assert (=> start!29130 m!308487))

(declare-fun m!308489 () Bool)

(assert (=> start!29130 m!308489))

(declare-fun m!308491 () Bool)

(assert (=> b!295346 m!308491))

(declare-fun m!308493 () Bool)

(assert (=> b!295344 m!308493))

(declare-fun m!308495 () Bool)

(assert (=> b!295342 m!308495))

(declare-fun m!308497 () Bool)

(assert (=> b!295347 m!308497))

(declare-fun m!308499 () Bool)

(assert (=> b!295347 m!308499))

(declare-fun m!308501 () Bool)

(assert (=> b!295347 m!308501))

(declare-fun m!308503 () Bool)

(assert (=> b!295347 m!308503))

(assert (=> b!295348 m!308493))

(push 1)

