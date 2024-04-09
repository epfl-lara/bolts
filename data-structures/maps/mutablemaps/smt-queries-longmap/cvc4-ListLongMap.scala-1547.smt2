; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29314 () Bool)

(assert start!29314)

(declare-fun b!296830 () Bool)

(declare-fun res!156470 () Bool)

(declare-fun e!187611 () Bool)

(assert (=> b!296830 (=> (not res!156470) (not e!187611))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15024 0))(
  ( (array!15025 (arr!7119 (Array (_ BitVec 32) (_ BitVec 64))) (size!7471 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15024)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!296830 (= res!156470 (and (= (size!7471 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7471 a!3312))))))

(declare-fun b!296831 () Bool)

(declare-fun e!187612 () Bool)

(assert (=> b!296831 (= e!187611 e!187612)))

(declare-fun res!156475 () Bool)

(assert (=> b!296831 (=> (not res!156475) (not e!187612))))

(declare-fun lt!147470 () Bool)

(declare-datatypes ((SeekEntryResult!2279 0))(
  ( (MissingZero!2279 (index!11286 (_ BitVec 32))) (Found!2279 (index!11287 (_ BitVec 32))) (Intermediate!2279 (undefined!3091 Bool) (index!11288 (_ BitVec 32)) (x!29468 (_ BitVec 32))) (Undefined!2279) (MissingVacant!2279 (index!11289 (_ BitVec 32))) )
))
(declare-fun lt!147473 () SeekEntryResult!2279)

(assert (=> b!296831 (= res!156475 (or lt!147470 (= lt!147473 (MissingVacant!2279 i!1256))))))

(assert (=> b!296831 (= lt!147470 (= lt!147473 (MissingZero!2279 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15024 (_ BitVec 32)) SeekEntryResult!2279)

(assert (=> b!296831 (= lt!147473 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296832 () Bool)

(declare-fun e!187613 () Bool)

(assert (=> b!296832 (= e!187613 (not true))))

(declare-fun lt!147469 () SeekEntryResult!2279)

(assert (=> b!296832 (and (= (select (arr!7119 a!3312) (index!11288 lt!147469)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11288 lt!147469) i!1256))))

(declare-fun b!296833 () Bool)

(declare-fun e!187610 () Bool)

(assert (=> b!296833 (= e!187612 e!187610)))

(declare-fun res!156473 () Bool)

(assert (=> b!296833 (=> (not res!156473) (not e!187610))))

(assert (=> b!296833 (= res!156473 lt!147470)))

(declare-fun lt!147472 () SeekEntryResult!2279)

(declare-fun lt!147471 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15024 (_ BitVec 32)) SeekEntryResult!2279)

(assert (=> b!296833 (= lt!147472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147471 k!2524 (array!15025 (store (arr!7119 a!3312) i!1256 k!2524) (size!7471 a!3312)) mask!3809))))

(assert (=> b!296833 (= lt!147469 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147471 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296833 (= lt!147471 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296834 () Bool)

(assert (=> b!296834 (= e!187610 e!187613)))

(declare-fun res!156476 () Bool)

(assert (=> b!296834 (=> (not res!156476) (not e!187613))))

(declare-fun lt!147468 () Bool)

(assert (=> b!296834 (= res!156476 (and (or lt!147468 (not (undefined!3091 lt!147469))) (or lt!147468 (not (= (select (arr!7119 a!3312) (index!11288 lt!147469)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147468 (not (= (select (arr!7119 a!3312) (index!11288 lt!147469)) k!2524))) (not lt!147468)))))

(assert (=> b!296834 (= lt!147468 (not (is-Intermediate!2279 lt!147469)))))

(declare-fun b!296835 () Bool)

(declare-fun res!156474 () Bool)

(assert (=> b!296835 (=> (not res!156474) (not e!187611))))

(declare-fun arrayContainsKey!0 (array!15024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296835 (= res!156474 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296836 () Bool)

(declare-fun res!156472 () Bool)

(assert (=> b!296836 (=> (not res!156472) (not e!187612))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15024 (_ BitVec 32)) Bool)

(assert (=> b!296836 (= res!156472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!156477 () Bool)

(assert (=> start!29314 (=> (not res!156477) (not e!187611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29314 (= res!156477 (validMask!0 mask!3809))))

(assert (=> start!29314 e!187611))

(assert (=> start!29314 true))

(declare-fun array_inv!5073 (array!15024) Bool)

(assert (=> start!29314 (array_inv!5073 a!3312)))

(declare-fun b!296837 () Bool)

(declare-fun res!156471 () Bool)

(assert (=> b!296837 (=> (not res!156471) (not e!187611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296837 (= res!156471 (validKeyInArray!0 k!2524))))

(assert (= (and start!29314 res!156477) b!296830))

(assert (= (and b!296830 res!156470) b!296837))

(assert (= (and b!296837 res!156471) b!296835))

(assert (= (and b!296835 res!156474) b!296831))

(assert (= (and b!296831 res!156475) b!296836))

(assert (= (and b!296836 res!156472) b!296833))

(assert (= (and b!296833 res!156473) b!296834))

(assert (= (and b!296834 res!156476) b!296832))

(declare-fun m!309691 () Bool)

(assert (=> b!296832 m!309691))

(declare-fun m!309693 () Bool)

(assert (=> start!29314 m!309693))

(declare-fun m!309695 () Bool)

(assert (=> start!29314 m!309695))

(assert (=> b!296834 m!309691))

(declare-fun m!309697 () Bool)

(assert (=> b!296835 m!309697))

(declare-fun m!309699 () Bool)

(assert (=> b!296833 m!309699))

(declare-fun m!309701 () Bool)

(assert (=> b!296833 m!309701))

(declare-fun m!309703 () Bool)

(assert (=> b!296833 m!309703))

(declare-fun m!309705 () Bool)

(assert (=> b!296833 m!309705))

(declare-fun m!309707 () Bool)

(assert (=> b!296837 m!309707))

(declare-fun m!309709 () Bool)

(assert (=> b!296831 m!309709))

(declare-fun m!309711 () Bool)

(assert (=> b!296836 m!309711))

(push 1)

