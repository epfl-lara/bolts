; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29140 () Bool)

(assert start!29140)

(declare-fun b!295462 () Bool)

(declare-fun res!155387 () Bool)

(declare-fun e!186764 () Bool)

(assert (=> b!295462 (=> (not res!155387) (not e!186764))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295462 (= res!155387 (validKeyInArray!0 k!2524))))

(declare-fun b!295463 () Bool)

(declare-fun res!155389 () Bool)

(declare-fun e!186760 () Bool)

(assert (=> b!295463 (=> (not res!155389) (not e!186760))))

(declare-datatypes ((array!14940 0))(
  ( (array!14941 (arr!7080 (Array (_ BitVec 32) (_ BitVec 64))) (size!7432 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14940)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14940 (_ BitVec 32)) Bool)

(assert (=> b!295463 (= res!155389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295464 () Bool)

(declare-fun res!155385 () Bool)

(assert (=> b!295464 (=> (not res!155385) (not e!186764))))

(declare-fun arrayContainsKey!0 (array!14940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295464 (= res!155385 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295465 () Bool)

(assert (=> b!295465 (= e!186764 e!186760)))

(declare-fun res!155386 () Bool)

(assert (=> b!295465 (=> (not res!155386) (not e!186760))))

(declare-fun lt!146574 () Bool)

(declare-datatypes ((SeekEntryResult!2240 0))(
  ( (MissingZero!2240 (index!11130 (_ BitVec 32))) (Found!2240 (index!11131 (_ BitVec 32))) (Intermediate!2240 (undefined!3052 Bool) (index!11132 (_ BitVec 32)) (x!29313 (_ BitVec 32))) (Undefined!2240) (MissingVacant!2240 (index!11133 (_ BitVec 32))) )
))
(declare-fun lt!146579 () SeekEntryResult!2240)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295465 (= res!155386 (or lt!146574 (= lt!146579 (MissingVacant!2240 i!1256))))))

(assert (=> b!295465 (= lt!146574 (= lt!146579 (MissingZero!2240 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14940 (_ BitVec 32)) SeekEntryResult!2240)

(assert (=> b!295465 (= lt!146579 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295466 () Bool)

(declare-fun e!186761 () Bool)

(declare-fun e!186762 () Bool)

(assert (=> b!295466 (= e!186761 e!186762)))

(declare-fun res!155388 () Bool)

(assert (=> b!295466 (=> (not res!155388) (not e!186762))))

(declare-fun lt!146575 () SeekEntryResult!2240)

(declare-fun lt!146576 () Bool)

(assert (=> b!295466 (= res!155388 (and (or lt!146576 (not (undefined!3052 lt!146575))) (or lt!146576 (not (= (select (arr!7080 a!3312) (index!11132 lt!146575)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146576 (not (= (select (arr!7080 a!3312) (index!11132 lt!146575)) k!2524))) (not lt!146576)))))

(assert (=> b!295466 (= lt!146576 (not (is-Intermediate!2240 lt!146575)))))

(declare-fun res!155390 () Bool)

(assert (=> start!29140 (=> (not res!155390) (not e!186764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29140 (= res!155390 (validMask!0 mask!3809))))

(assert (=> start!29140 e!186764))

(assert (=> start!29140 true))

(declare-fun array_inv!5034 (array!14940) Bool)

(assert (=> start!29140 (array_inv!5034 a!3312)))

(declare-fun b!295467 () Bool)

(assert (=> b!295467 (= e!186760 e!186761)))

(declare-fun res!155384 () Bool)

(assert (=> b!295467 (=> (not res!155384) (not e!186761))))

(assert (=> b!295467 (= res!155384 lt!146574)))

(declare-fun lt!146577 () SeekEntryResult!2240)

(declare-fun lt!146578 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14940 (_ BitVec 32)) SeekEntryResult!2240)

(assert (=> b!295467 (= lt!146577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146578 k!2524 (array!14941 (store (arr!7080 a!3312) i!1256 k!2524) (size!7432 a!3312)) mask!3809))))

(assert (=> b!295467 (= lt!146575 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146578 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295467 (= lt!146578 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295468 () Bool)

(declare-fun res!155391 () Bool)

(assert (=> b!295468 (=> (not res!155391) (not e!186764))))

(assert (=> b!295468 (= res!155391 (and (= (size!7432 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7432 a!3312))))))

(declare-fun b!295469 () Bool)

(assert (=> b!295469 (= e!186762 (not true))))

(assert (=> b!295469 (and (= (select (arr!7080 a!3312) (index!11132 lt!146575)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11132 lt!146575) i!1256))))

(assert (= (and start!29140 res!155390) b!295468))

(assert (= (and b!295468 res!155391) b!295462))

(assert (= (and b!295462 res!155387) b!295464))

(assert (= (and b!295464 res!155385) b!295465))

(assert (= (and b!295465 res!155386) b!295463))

(assert (= (and b!295463 res!155389) b!295467))

(assert (= (and b!295467 res!155384) b!295466))

(assert (= (and b!295466 res!155388) b!295469))

(declare-fun m!308593 () Bool)

(assert (=> start!29140 m!308593))

(declare-fun m!308595 () Bool)

(assert (=> start!29140 m!308595))

(declare-fun m!308597 () Bool)

(assert (=> b!295463 m!308597))

(declare-fun m!308599 () Bool)

(assert (=> b!295469 m!308599))

(declare-fun m!308601 () Bool)

(assert (=> b!295465 m!308601))

(declare-fun m!308603 () Bool)

(assert (=> b!295462 m!308603))

(declare-fun m!308605 () Bool)

(assert (=> b!295464 m!308605))

(assert (=> b!295466 m!308599))

(declare-fun m!308607 () Bool)

(assert (=> b!295467 m!308607))

(declare-fun m!308609 () Bool)

(assert (=> b!295467 m!308609))

(declare-fun m!308611 () Bool)

(assert (=> b!295467 m!308611))

(declare-fun m!308613 () Bool)

(assert (=> b!295467 m!308613))

(push 1)

