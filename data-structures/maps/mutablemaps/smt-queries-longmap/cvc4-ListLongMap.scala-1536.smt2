; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29152 () Bool)

(assert start!29152)

(declare-fun b!295606 () Bool)

(declare-fun res!155534 () Bool)

(declare-fun e!186851 () Bool)

(assert (=> b!295606 (=> (not res!155534) (not e!186851))))

(declare-datatypes ((array!14952 0))(
  ( (array!14953 (arr!7086 (Array (_ BitVec 32) (_ BitVec 64))) (size!7438 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14952)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295606 (= res!155534 (and (= (size!7438 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7438 a!3312))))))

(declare-fun b!295607 () Bool)

(declare-fun e!186850 () Bool)

(assert (=> b!295607 (= e!186851 e!186850)))

(declare-fun res!155530 () Bool)

(assert (=> b!295607 (=> (not res!155530) (not e!186850))))

(declare-datatypes ((SeekEntryResult!2246 0))(
  ( (MissingZero!2246 (index!11154 (_ BitVec 32))) (Found!2246 (index!11155 (_ BitVec 32))) (Intermediate!2246 (undefined!3058 Bool) (index!11156 (_ BitVec 32)) (x!29335 (_ BitVec 32))) (Undefined!2246) (MissingVacant!2246 (index!11157 (_ BitVec 32))) )
))
(declare-fun lt!146682 () SeekEntryResult!2246)

(declare-fun lt!146685 () Bool)

(assert (=> b!295607 (= res!155530 (or lt!146685 (= lt!146682 (MissingVacant!2246 i!1256))))))

(assert (=> b!295607 (= lt!146685 (= lt!146682 (MissingZero!2246 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14952 (_ BitVec 32)) SeekEntryResult!2246)

(assert (=> b!295607 (= lt!146682 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295608 () Bool)

(declare-fun res!155531 () Bool)

(assert (=> b!295608 (=> (not res!155531) (not e!186851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295608 (= res!155531 (validKeyInArray!0 k!2524))))

(declare-fun b!295609 () Bool)

(declare-fun e!186852 () Bool)

(assert (=> b!295609 (= e!186852 (not true))))

(declare-fun lt!146687 () SeekEntryResult!2246)

(assert (=> b!295609 (and (= (select (arr!7086 a!3312) (index!11156 lt!146687)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11156 lt!146687) i!1256))))

(declare-fun b!295610 () Bool)

(declare-fun e!186853 () Bool)

(assert (=> b!295610 (= e!186850 e!186853)))

(declare-fun res!155535 () Bool)

(assert (=> b!295610 (=> (not res!155535) (not e!186853))))

(assert (=> b!295610 (= res!155535 lt!146685)))

(declare-fun lt!146683 () (_ BitVec 32))

(declare-fun lt!146684 () SeekEntryResult!2246)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14952 (_ BitVec 32)) SeekEntryResult!2246)

(assert (=> b!295610 (= lt!146684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146683 k!2524 (array!14953 (store (arr!7086 a!3312) i!1256 k!2524) (size!7438 a!3312)) mask!3809))))

(assert (=> b!295610 (= lt!146687 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146683 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295610 (= lt!146683 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295612 () Bool)

(assert (=> b!295612 (= e!186853 e!186852)))

(declare-fun res!155532 () Bool)

(assert (=> b!295612 (=> (not res!155532) (not e!186852))))

(declare-fun lt!146686 () Bool)

(assert (=> b!295612 (= res!155532 (and (or lt!146686 (not (undefined!3058 lt!146687))) (or lt!146686 (not (= (select (arr!7086 a!3312) (index!11156 lt!146687)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146686 (not (= (select (arr!7086 a!3312) (index!11156 lt!146687)) k!2524))) (not lt!146686)))))

(assert (=> b!295612 (= lt!146686 (not (is-Intermediate!2246 lt!146687)))))

(declare-fun b!295613 () Bool)

(declare-fun res!155528 () Bool)

(assert (=> b!295613 (=> (not res!155528) (not e!186851))))

(declare-fun arrayContainsKey!0 (array!14952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295613 (= res!155528 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!155533 () Bool)

(assert (=> start!29152 (=> (not res!155533) (not e!186851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29152 (= res!155533 (validMask!0 mask!3809))))

(assert (=> start!29152 e!186851))

(assert (=> start!29152 true))

(declare-fun array_inv!5040 (array!14952) Bool)

(assert (=> start!29152 (array_inv!5040 a!3312)))

(declare-fun b!295611 () Bool)

(declare-fun res!155529 () Bool)

(assert (=> b!295611 (=> (not res!155529) (not e!186850))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14952 (_ BitVec 32)) Bool)

(assert (=> b!295611 (= res!155529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29152 res!155533) b!295606))

(assert (= (and b!295606 res!155534) b!295608))

(assert (= (and b!295608 res!155531) b!295613))

(assert (= (and b!295613 res!155528) b!295607))

(assert (= (and b!295607 res!155530) b!295611))

(assert (= (and b!295611 res!155529) b!295610))

(assert (= (and b!295610 res!155535) b!295612))

(assert (= (and b!295612 res!155532) b!295609))

(declare-fun m!308725 () Bool)

(assert (=> b!295608 m!308725))

(declare-fun m!308727 () Bool)

(assert (=> b!295612 m!308727))

(declare-fun m!308729 () Bool)

(assert (=> start!29152 m!308729))

(declare-fun m!308731 () Bool)

(assert (=> start!29152 m!308731))

(declare-fun m!308733 () Bool)

(assert (=> b!295610 m!308733))

(declare-fun m!308735 () Bool)

(assert (=> b!295610 m!308735))

(declare-fun m!308737 () Bool)

(assert (=> b!295610 m!308737))

(declare-fun m!308739 () Bool)

(assert (=> b!295610 m!308739))

(assert (=> b!295609 m!308727))

(declare-fun m!308741 () Bool)

(assert (=> b!295607 m!308741))

(declare-fun m!308743 () Bool)

(assert (=> b!295611 m!308743))

(declare-fun m!308745 () Bool)

(assert (=> b!295613 m!308745))

(push 1)

