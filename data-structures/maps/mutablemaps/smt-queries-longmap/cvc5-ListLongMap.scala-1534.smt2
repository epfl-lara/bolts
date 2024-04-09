; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29136 () Bool)

(assert start!29136)

(declare-fun b!295414 () Bool)

(declare-fun e!186734 () Bool)

(declare-fun e!186731 () Bool)

(assert (=> b!295414 (= e!186734 e!186731)))

(declare-fun res!155337 () Bool)

(assert (=> b!295414 (=> (not res!155337) (not e!186731))))

(declare-fun lt!146541 () Bool)

(declare-datatypes ((SeekEntryResult!2238 0))(
  ( (MissingZero!2238 (index!11122 (_ BitVec 32))) (Found!2238 (index!11123 (_ BitVec 32))) (Intermediate!2238 (undefined!3050 Bool) (index!11124 (_ BitVec 32)) (x!29311 (_ BitVec 32))) (Undefined!2238) (MissingVacant!2238 (index!11125 (_ BitVec 32))) )
))
(declare-fun lt!146538 () SeekEntryResult!2238)

(declare-datatypes ((array!14936 0))(
  ( (array!14937 (arr!7078 (Array (_ BitVec 32) (_ BitVec 64))) (size!7430 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14936)

(declare-fun k!2524 () (_ BitVec 64))

(assert (=> b!295414 (= res!155337 (and (or lt!146541 (not (undefined!3050 lt!146538))) (or lt!146541 (not (= (select (arr!7078 a!3312) (index!11124 lt!146538)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146541 (not (= (select (arr!7078 a!3312) (index!11124 lt!146538)) k!2524))) (not lt!146541)))))

(assert (=> b!295414 (= lt!146541 (not (is-Intermediate!2238 lt!146538)))))

(declare-fun b!295415 () Bool)

(declare-fun res!155342 () Bool)

(declare-fun e!186730 () Bool)

(assert (=> b!295415 (=> (not res!155342) (not e!186730))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295415 (= res!155342 (validKeyInArray!0 k!2524))))

(declare-fun b!295416 () Bool)

(declare-fun res!155340 () Bool)

(assert (=> b!295416 (=> (not res!155340) (not e!186730))))

(declare-fun arrayContainsKey!0 (array!14936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295416 (= res!155340 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295417 () Bool)

(declare-fun res!155343 () Bool)

(assert (=> b!295417 (=> (not res!155343) (not e!186730))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!295417 (= res!155343 (and (= (size!7430 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7430 a!3312))))))

(declare-fun res!155341 () Bool)

(assert (=> start!29136 (=> (not res!155341) (not e!186730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29136 (= res!155341 (validMask!0 mask!3809))))

(assert (=> start!29136 e!186730))

(assert (=> start!29136 true))

(declare-fun array_inv!5032 (array!14936) Bool)

(assert (=> start!29136 (array_inv!5032 a!3312)))

(declare-fun b!295418 () Bool)

(assert (=> b!295418 (= e!186731 (not true))))

(assert (=> b!295418 (and (= (select (arr!7078 a!3312) (index!11124 lt!146538)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11124 lt!146538) i!1256))))

(declare-fun b!295419 () Bool)

(declare-fun e!186732 () Bool)

(assert (=> b!295419 (= e!186732 e!186734)))

(declare-fun res!155338 () Bool)

(assert (=> b!295419 (=> (not res!155338) (not e!186734))))

(declare-fun lt!146540 () Bool)

(assert (=> b!295419 (= res!155338 lt!146540)))

(declare-fun lt!146542 () SeekEntryResult!2238)

(declare-fun lt!146543 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14936 (_ BitVec 32)) SeekEntryResult!2238)

(assert (=> b!295419 (= lt!146542 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146543 k!2524 (array!14937 (store (arr!7078 a!3312) i!1256 k!2524) (size!7430 a!3312)) mask!3809))))

(assert (=> b!295419 (= lt!146538 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146543 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295419 (= lt!146543 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295420 () Bool)

(declare-fun res!155339 () Bool)

(assert (=> b!295420 (=> (not res!155339) (not e!186732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14936 (_ BitVec 32)) Bool)

(assert (=> b!295420 (= res!155339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295421 () Bool)

(assert (=> b!295421 (= e!186730 e!186732)))

(declare-fun res!155336 () Bool)

(assert (=> b!295421 (=> (not res!155336) (not e!186732))))

(declare-fun lt!146539 () SeekEntryResult!2238)

(assert (=> b!295421 (= res!155336 (or lt!146540 (= lt!146539 (MissingVacant!2238 i!1256))))))

(assert (=> b!295421 (= lt!146540 (= lt!146539 (MissingZero!2238 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14936 (_ BitVec 32)) SeekEntryResult!2238)

(assert (=> b!295421 (= lt!146539 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!29136 res!155341) b!295417))

(assert (= (and b!295417 res!155343) b!295415))

(assert (= (and b!295415 res!155342) b!295416))

(assert (= (and b!295416 res!155340) b!295421))

(assert (= (and b!295421 res!155336) b!295420))

(assert (= (and b!295420 res!155339) b!295419))

(assert (= (and b!295419 res!155338) b!295414))

(assert (= (and b!295414 res!155337) b!295418))

(declare-fun m!308549 () Bool)

(assert (=> b!295414 m!308549))

(assert (=> b!295418 m!308549))

(declare-fun m!308551 () Bool)

(assert (=> b!295420 m!308551))

(declare-fun m!308553 () Bool)

(assert (=> b!295415 m!308553))

(declare-fun m!308555 () Bool)

(assert (=> start!29136 m!308555))

(declare-fun m!308557 () Bool)

(assert (=> start!29136 m!308557))

(declare-fun m!308559 () Bool)

(assert (=> b!295419 m!308559))

(declare-fun m!308561 () Bool)

(assert (=> b!295419 m!308561))

(declare-fun m!308563 () Bool)

(assert (=> b!295419 m!308563))

(declare-fun m!308565 () Bool)

(assert (=> b!295419 m!308565))

(declare-fun m!308567 () Bool)

(assert (=> b!295416 m!308567))

(declare-fun m!308569 () Bool)

(assert (=> b!295421 m!308569))

(push 1)

