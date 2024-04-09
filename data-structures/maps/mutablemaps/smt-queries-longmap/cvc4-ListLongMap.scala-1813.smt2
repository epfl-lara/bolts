; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32698 () Bool)

(assert start!32698)

(declare-fun b!326448 () Bool)

(declare-fun e!200979 () Bool)

(assert (=> b!326448 (= e!200979 false)))

(declare-datatypes ((array!16731 0))(
  ( (array!16732 (arr!7917 (Array (_ BitVec 32) (_ BitVec 64))) (size!8269 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16731)

(declare-datatypes ((Unit!10127 0))(
  ( (Unit!10128) )
))
(declare-fun lt!157327 () Unit!10127)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16731 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10127)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326448 (= lt!157327 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun res!179641 () Bool)

(declare-fun e!200978 () Bool)

(assert (=> start!32698 (=> (not res!179641) (not e!200978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32698 (= res!179641 (validMask!0 mask!3777))))

(assert (=> start!32698 e!200978))

(declare-fun array_inv!5871 (array!16731) Bool)

(assert (=> start!32698 (array_inv!5871 a!3305)))

(assert (=> start!32698 true))

(declare-fun b!326449 () Bool)

(declare-fun res!179639 () Bool)

(assert (=> b!326449 (=> (not res!179639) (not e!200978))))

(declare-fun arrayContainsKey!0 (array!16731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326449 (= res!179639 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326450 () Bool)

(declare-fun res!179640 () Bool)

(assert (=> b!326450 (=> (not res!179640) (not e!200979))))

(assert (=> b!326450 (= res!179640 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7917 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326451 () Bool)

(declare-fun res!179646 () Bool)

(assert (=> b!326451 (=> (not res!179646) (not e!200978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326451 (= res!179646 (validKeyInArray!0 k!2497))))

(declare-fun b!326452 () Bool)

(declare-fun res!179643 () Bool)

(assert (=> b!326452 (=> (not res!179643) (not e!200978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16731 (_ BitVec 32)) Bool)

(assert (=> b!326452 (= res!179643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326453 () Bool)

(declare-fun res!179637 () Bool)

(assert (=> b!326453 (=> (not res!179637) (not e!200979))))

(assert (=> b!326453 (= res!179637 (and (= (select (arr!7917 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8269 a!3305))))))

(declare-fun b!326454 () Bool)

(assert (=> b!326454 (= e!200978 e!200979)))

(declare-fun res!179638 () Bool)

(assert (=> b!326454 (=> (not res!179638) (not e!200979))))

(declare-datatypes ((SeekEntryResult!3059 0))(
  ( (MissingZero!3059 (index!14412 (_ BitVec 32))) (Found!3059 (index!14413 (_ BitVec 32))) (Intermediate!3059 (undefined!3871 Bool) (index!14414 (_ BitVec 32)) (x!32620 (_ BitVec 32))) (Undefined!3059) (MissingVacant!3059 (index!14415 (_ BitVec 32))) )
))
(declare-fun lt!157328 () SeekEntryResult!3059)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16731 (_ BitVec 32)) SeekEntryResult!3059)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326454 (= res!179638 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157328))))

(assert (=> b!326454 (= lt!157328 (Intermediate!3059 false resIndex!58 resX!58))))

(declare-fun b!326455 () Bool)

(declare-fun res!179642 () Bool)

(assert (=> b!326455 (=> (not res!179642) (not e!200978))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16731 (_ BitVec 32)) SeekEntryResult!3059)

(assert (=> b!326455 (= res!179642 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3059 i!1250)))))

(declare-fun b!326456 () Bool)

(declare-fun res!179644 () Bool)

(assert (=> b!326456 (=> (not res!179644) (not e!200978))))

(assert (=> b!326456 (= res!179644 (and (= (size!8269 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8269 a!3305))))))

(declare-fun b!326457 () Bool)

(declare-fun res!179645 () Bool)

(assert (=> b!326457 (=> (not res!179645) (not e!200979))))

(assert (=> b!326457 (= res!179645 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157328))))

(assert (= (and start!32698 res!179641) b!326456))

(assert (= (and b!326456 res!179644) b!326451))

(assert (= (and b!326451 res!179646) b!326449))

(assert (= (and b!326449 res!179639) b!326455))

(assert (= (and b!326455 res!179642) b!326452))

(assert (= (and b!326452 res!179643) b!326454))

(assert (= (and b!326454 res!179638) b!326453))

(assert (= (and b!326453 res!179637) b!326457))

(assert (= (and b!326457 res!179645) b!326450))

(assert (= (and b!326450 res!179640) b!326448))

(declare-fun m!333011 () Bool)

(assert (=> b!326454 m!333011))

(assert (=> b!326454 m!333011))

(declare-fun m!333013 () Bool)

(assert (=> b!326454 m!333013))

(declare-fun m!333015 () Bool)

(assert (=> b!326450 m!333015))

(declare-fun m!333017 () Bool)

(assert (=> b!326453 m!333017))

(declare-fun m!333019 () Bool)

(assert (=> b!326457 m!333019))

(declare-fun m!333021 () Bool)

(assert (=> b!326452 m!333021))

(declare-fun m!333023 () Bool)

(assert (=> start!32698 m!333023))

(declare-fun m!333025 () Bool)

(assert (=> start!32698 m!333025))

(declare-fun m!333027 () Bool)

(assert (=> b!326449 m!333027))

(declare-fun m!333029 () Bool)

(assert (=> b!326448 m!333029))

(assert (=> b!326448 m!333029))

(declare-fun m!333031 () Bool)

(assert (=> b!326448 m!333031))

(declare-fun m!333033 () Bool)

(assert (=> b!326451 m!333033))

(declare-fun m!333035 () Bool)

(assert (=> b!326455 m!333035))

(push 1)

(assert (not start!32698))

(assert (not b!326449))

(assert (not b!326455))

(assert (not b!326457))

(assert (not b!326454))

(assert (not b!326451))

