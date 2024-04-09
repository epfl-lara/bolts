; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44654 () Bool)

(assert start!44654)

(declare-fun res!292679 () Bool)

(declare-fun e!287910 () Bool)

(assert (=> start!44654 (=> (not res!292679) (not e!287910))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44654 (= res!292679 (validMask!0 mask!3524))))

(assert (=> start!44654 e!287910))

(assert (=> start!44654 true))

(declare-datatypes ((array!31673 0))(
  ( (array!31674 (arr!15221 (Array (_ BitVec 32) (_ BitVec 64))) (size!15585 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31673)

(declare-fun array_inv!10995 (array!31673) Bool)

(assert (=> start!44654 (array_inv!10995 a!3235)))

(declare-fun b!489591 () Bool)

(declare-fun res!292680 () Bool)

(declare-fun e!287911 () Bool)

(assert (=> b!489591 (=> (not res!292680) (not e!287911))))

(declare-datatypes ((List!9432 0))(
  ( (Nil!9429) (Cons!9428 (h!10290 (_ BitVec 64)) (t!15668 List!9432)) )
))
(declare-fun arrayNoDuplicates!0 (array!31673 (_ BitVec 32) List!9432) Bool)

(assert (=> b!489591 (= res!292680 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9429))))

(declare-fun b!489592 () Bool)

(declare-fun res!292681 () Bool)

(assert (=> b!489592 (=> (not res!292681) (not e!287911))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31673 (_ BitVec 32)) Bool)

(assert (=> b!489592 (= res!292681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489593 () Bool)

(declare-fun res!292678 () Bool)

(assert (=> b!489593 (=> (not res!292678) (not e!287910))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489593 (= res!292678 (validKeyInArray!0 (select (arr!15221 a!3235) j!176)))))

(declare-fun b!489594 () Bool)

(declare-fun res!292677 () Bool)

(assert (=> b!489594 (=> (not res!292677) (not e!287910))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489594 (= res!292677 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489595 () Bool)

(assert (=> b!489595 (= e!287911 (not true))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!221021 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3695 0))(
  ( (MissingZero!3695 (index!16959 (_ BitVec 32))) (Found!3695 (index!16960 (_ BitVec 32))) (Intermediate!3695 (undefined!4507 Bool) (index!16961 (_ BitVec 32)) (x!46092 (_ BitVec 32))) (Undefined!3695) (MissingVacant!3695 (index!16962 (_ BitVec 32))) )
))
(declare-fun lt!221024 () SeekEntryResult!3695)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31673 (_ BitVec 32)) SeekEntryResult!3695)

(assert (=> b!489595 (= lt!221024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221021 (select (store (arr!15221 a!3235) i!1204 k!2280) j!176) (array!31674 (store (arr!15221 a!3235) i!1204 k!2280) (size!15585 a!3235)) mask!3524))))

(declare-fun lt!221023 () SeekEntryResult!3695)

(declare-fun lt!221020 () (_ BitVec 32))

(assert (=> b!489595 (= lt!221023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221020 (select (arr!15221 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489595 (= lt!221021 (toIndex!0 (select (store (arr!15221 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489595 (= lt!221020 (toIndex!0 (select (arr!15221 a!3235) j!176) mask!3524))))

(declare-fun e!287908 () Bool)

(assert (=> b!489595 e!287908))

(declare-fun res!292685 () Bool)

(assert (=> b!489595 (=> (not res!292685) (not e!287908))))

(assert (=> b!489595 (= res!292685 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14328 0))(
  ( (Unit!14329) )
))
(declare-fun lt!221019 () Unit!14328)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14328)

(assert (=> b!489595 (= lt!221019 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489596 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31673 (_ BitVec 32)) SeekEntryResult!3695)

(assert (=> b!489596 (= e!287908 (= (seekEntryOrOpen!0 (select (arr!15221 a!3235) j!176) a!3235 mask!3524) (Found!3695 j!176)))))

(declare-fun b!489597 () Bool)

(declare-fun res!292682 () Bool)

(assert (=> b!489597 (=> (not res!292682) (not e!287910))))

(assert (=> b!489597 (= res!292682 (and (= (size!15585 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15585 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15585 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489598 () Bool)

(declare-fun res!292683 () Bool)

(assert (=> b!489598 (=> (not res!292683) (not e!287910))))

(assert (=> b!489598 (= res!292683 (validKeyInArray!0 k!2280))))

(declare-fun b!489599 () Bool)

(assert (=> b!489599 (= e!287910 e!287911)))

(declare-fun res!292684 () Bool)

(assert (=> b!489599 (=> (not res!292684) (not e!287911))))

(declare-fun lt!221022 () SeekEntryResult!3695)

(assert (=> b!489599 (= res!292684 (or (= lt!221022 (MissingZero!3695 i!1204)) (= lt!221022 (MissingVacant!3695 i!1204))))))

(assert (=> b!489599 (= lt!221022 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44654 res!292679) b!489597))

(assert (= (and b!489597 res!292682) b!489593))

(assert (= (and b!489593 res!292678) b!489598))

(assert (= (and b!489598 res!292683) b!489594))

(assert (= (and b!489594 res!292677) b!489599))

(assert (= (and b!489599 res!292684) b!489592))

(assert (= (and b!489592 res!292681) b!489591))

(assert (= (and b!489591 res!292680) b!489595))

(assert (= (and b!489595 res!292685) b!489596))

(declare-fun m!469519 () Bool)

(assert (=> b!489599 m!469519))

(declare-fun m!469521 () Bool)

(assert (=> b!489593 m!469521))

(assert (=> b!489593 m!469521))

(declare-fun m!469523 () Bool)

(assert (=> b!489593 m!469523))

(assert (=> b!489596 m!469521))

(assert (=> b!489596 m!469521))

(declare-fun m!469525 () Bool)

(assert (=> b!489596 m!469525))

(declare-fun m!469527 () Bool)

(assert (=> b!489591 m!469527))

(declare-fun m!469529 () Bool)

(assert (=> start!44654 m!469529))

(declare-fun m!469531 () Bool)

(assert (=> start!44654 m!469531))

(declare-fun m!469533 () Bool)

(assert (=> b!489594 m!469533))

(declare-fun m!469535 () Bool)

(assert (=> b!489592 m!469535))

(declare-fun m!469537 () Bool)

(assert (=> b!489595 m!469537))

(declare-fun m!469539 () Bool)

(assert (=> b!489595 m!469539))

(declare-fun m!469541 () Bool)

(assert (=> b!489595 m!469541))

(declare-fun m!469543 () Bool)

(assert (=> b!489595 m!469543))

(assert (=> b!489595 m!469539))

(assert (=> b!489595 m!469521))

(declare-fun m!469545 () Bool)

(assert (=> b!489595 m!469545))

(declare-fun m!469547 () Bool)

(assert (=> b!489595 m!469547))

(assert (=> b!489595 m!469539))

(declare-fun m!469549 () Bool)

(assert (=> b!489595 m!469549))

(assert (=> b!489595 m!469521))

(declare-fun m!469551 () Bool)

(assert (=> b!489595 m!469551))

(assert (=> b!489595 m!469521))

(declare-fun m!469553 () Bool)

(assert (=> b!489598 m!469553))

(push 1)

