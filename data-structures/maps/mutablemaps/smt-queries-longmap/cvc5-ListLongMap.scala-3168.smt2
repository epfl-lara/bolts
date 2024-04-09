; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44644 () Bool)

(assert start!44644)

(declare-fun b!489456 () Bool)

(declare-fun res!292546 () Bool)

(declare-fun e!287849 () Bool)

(assert (=> b!489456 (=> (not res!292546) (not e!287849))))

(declare-datatypes ((array!31663 0))(
  ( (array!31664 (arr!15216 (Array (_ BitVec 32) (_ BitVec 64))) (size!15580 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31663)

(declare-datatypes ((List!9427 0))(
  ( (Nil!9424) (Cons!9423 (h!10285 (_ BitVec 64)) (t!15663 List!9427)) )
))
(declare-fun arrayNoDuplicates!0 (array!31663 (_ BitVec 32) List!9427) Bool)

(assert (=> b!489456 (= res!292546 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9424))))

(declare-fun b!489457 () Bool)

(declare-fun res!292547 () Bool)

(declare-fun e!287848 () Bool)

(assert (=> b!489457 (=> (not res!292547) (not e!287848))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489457 (= res!292547 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489458 () Bool)

(assert (=> b!489458 (= e!287848 e!287849)))

(declare-fun res!292544 () Bool)

(assert (=> b!489458 (=> (not res!292544) (not e!287849))))

(declare-datatypes ((SeekEntryResult!3690 0))(
  ( (MissingZero!3690 (index!16939 (_ BitVec 32))) (Found!3690 (index!16940 (_ BitVec 32))) (Intermediate!3690 (undefined!4502 Bool) (index!16941 (_ BitVec 32)) (x!46079 (_ BitVec 32))) (Undefined!3690) (MissingVacant!3690 (index!16942 (_ BitVec 32))) )
))
(declare-fun lt!220934 () SeekEntryResult!3690)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489458 (= res!292544 (or (= lt!220934 (MissingZero!3690 i!1204)) (= lt!220934 (MissingVacant!3690 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31663 (_ BitVec 32)) SeekEntryResult!3690)

(assert (=> b!489458 (= lt!220934 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489459 () Bool)

(assert (=> b!489459 (= e!287849 (not true))))

(declare-fun lt!220929 () SeekEntryResult!3690)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!220933 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31663 (_ BitVec 32)) SeekEntryResult!3690)

(assert (=> b!489459 (= lt!220929 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220933 (select (store (arr!15216 a!3235) i!1204 k!2280) j!176) (array!31664 (store (arr!15216 a!3235) i!1204 k!2280) (size!15580 a!3235)) mask!3524))))

(declare-fun lt!220932 () SeekEntryResult!3690)

(declare-fun lt!220930 () (_ BitVec 32))

(assert (=> b!489459 (= lt!220932 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220930 (select (arr!15216 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489459 (= lt!220933 (toIndex!0 (select (store (arr!15216 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489459 (= lt!220930 (toIndex!0 (select (arr!15216 a!3235) j!176) mask!3524))))

(declare-fun e!287850 () Bool)

(assert (=> b!489459 e!287850))

(declare-fun res!292550 () Bool)

(assert (=> b!489459 (=> (not res!292550) (not e!287850))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31663 (_ BitVec 32)) Bool)

(assert (=> b!489459 (= res!292550 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14318 0))(
  ( (Unit!14319) )
))
(declare-fun lt!220931 () Unit!14318)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14318)

(assert (=> b!489459 (= lt!220931 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489460 () Bool)

(declare-fun res!292549 () Bool)

(assert (=> b!489460 (=> (not res!292549) (not e!287849))))

(assert (=> b!489460 (= res!292549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489461 () Bool)

(declare-fun res!292542 () Bool)

(assert (=> b!489461 (=> (not res!292542) (not e!287848))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489461 (= res!292542 (validKeyInArray!0 k!2280))))

(declare-fun b!489462 () Bool)

(declare-fun res!292548 () Bool)

(assert (=> b!489462 (=> (not res!292548) (not e!287848))))

(assert (=> b!489462 (= res!292548 (and (= (size!15580 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15580 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15580 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489463 () Bool)

(declare-fun res!292545 () Bool)

(assert (=> b!489463 (=> (not res!292545) (not e!287848))))

(assert (=> b!489463 (= res!292545 (validKeyInArray!0 (select (arr!15216 a!3235) j!176)))))

(declare-fun b!489464 () Bool)

(assert (=> b!489464 (= e!287850 (= (seekEntryOrOpen!0 (select (arr!15216 a!3235) j!176) a!3235 mask!3524) (Found!3690 j!176)))))

(declare-fun res!292543 () Bool)

(assert (=> start!44644 (=> (not res!292543) (not e!287848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44644 (= res!292543 (validMask!0 mask!3524))))

(assert (=> start!44644 e!287848))

(assert (=> start!44644 true))

(declare-fun array_inv!10990 (array!31663) Bool)

(assert (=> start!44644 (array_inv!10990 a!3235)))

(assert (= (and start!44644 res!292543) b!489462))

(assert (= (and b!489462 res!292548) b!489463))

(assert (= (and b!489463 res!292545) b!489461))

(assert (= (and b!489461 res!292542) b!489457))

(assert (= (and b!489457 res!292547) b!489458))

(assert (= (and b!489458 res!292544) b!489460))

(assert (= (and b!489460 res!292549) b!489456))

(assert (= (and b!489456 res!292546) b!489459))

(assert (= (and b!489459 res!292550) b!489464))

(declare-fun m!469339 () Bool)

(assert (=> b!489459 m!469339))

(declare-fun m!469341 () Bool)

(assert (=> b!489459 m!469341))

(declare-fun m!469343 () Bool)

(assert (=> b!489459 m!469343))

(declare-fun m!469345 () Bool)

(assert (=> b!489459 m!469345))

(assert (=> b!489459 m!469343))

(assert (=> b!489459 m!469343))

(declare-fun m!469347 () Bool)

(assert (=> b!489459 m!469347))

(declare-fun m!469349 () Bool)

(assert (=> b!489459 m!469349))

(assert (=> b!489459 m!469341))

(declare-fun m!469351 () Bool)

(assert (=> b!489459 m!469351))

(assert (=> b!489459 m!469341))

(declare-fun m!469353 () Bool)

(assert (=> b!489459 m!469353))

(declare-fun m!469355 () Bool)

(assert (=> b!489459 m!469355))

(declare-fun m!469357 () Bool)

(assert (=> b!489458 m!469357))

(declare-fun m!469359 () Bool)

(assert (=> b!489461 m!469359))

(declare-fun m!469361 () Bool)

(assert (=> b!489456 m!469361))

(assert (=> b!489464 m!469343))

(assert (=> b!489464 m!469343))

(declare-fun m!469363 () Bool)

(assert (=> b!489464 m!469363))

(declare-fun m!469365 () Bool)

(assert (=> b!489457 m!469365))

(assert (=> b!489463 m!469343))

(assert (=> b!489463 m!469343))

(declare-fun m!469367 () Bool)

(assert (=> b!489463 m!469367))

(declare-fun m!469369 () Bool)

(assert (=> start!44644 m!469369))

(declare-fun m!469371 () Bool)

(assert (=> start!44644 m!469371))

(declare-fun m!469373 () Bool)

(assert (=> b!489460 m!469373))

(push 1)

