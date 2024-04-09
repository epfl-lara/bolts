; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46036 () Bool)

(assert start!46036)

(declare-fun res!310449 () Bool)

(declare-fun e!297910 () Bool)

(assert (=> start!46036 (=> (not res!310449) (not e!297910))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46036 (= res!310449 (validMask!0 mask!3524))))

(assert (=> start!46036 e!297910))

(assert (=> start!46036 true))

(declare-datatypes ((array!32707 0))(
  ( (array!32708 (arr!15729 (Array (_ BitVec 32) (_ BitVec 64))) (size!16093 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32707)

(declare-fun array_inv!11503 (array!32707) Bool)

(assert (=> start!46036 (array_inv!11503 a!3235)))

(declare-fun b!509454 () Bool)

(declare-fun e!297907 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4203 0))(
  ( (MissingZero!4203 (index!19000 (_ BitVec 32))) (Found!4203 (index!19001 (_ BitVec 32))) (Intermediate!4203 (undefined!5015 Bool) (index!19002 (_ BitVec 32)) (x!47999 (_ BitVec 32))) (Undefined!4203) (MissingVacant!4203 (index!19003 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32707 (_ BitVec 32)) SeekEntryResult!4203)

(assert (=> b!509454 (= e!297907 (= (seekEntryOrOpen!0 (select (arr!15729 a!3235) j!176) a!3235 mask!3524) (Found!4203 j!176)))))

(declare-fun b!509455 () Bool)

(declare-fun res!310456 () Bool)

(assert (=> b!509455 (=> (not res!310456) (not e!297910))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509455 (= res!310456 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509456 () Bool)

(declare-fun e!297908 () Bool)

(assert (=> b!509456 (= e!297910 e!297908)))

(declare-fun res!310454 () Bool)

(assert (=> b!509456 (=> (not res!310454) (not e!297908))))

(declare-fun lt!232818 () SeekEntryResult!4203)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509456 (= res!310454 (or (= lt!232818 (MissingZero!4203 i!1204)) (= lt!232818 (MissingVacant!4203 i!1204))))))

(assert (=> b!509456 (= lt!232818 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509457 () Bool)

(declare-fun res!310452 () Bool)

(assert (=> b!509457 (=> (not res!310452) (not e!297908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32707 (_ BitVec 32)) Bool)

(assert (=> b!509457 (= res!310452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509458 () Bool)

(declare-fun res!310457 () Bool)

(assert (=> b!509458 (=> (not res!310457) (not e!297910))))

(assert (=> b!509458 (= res!310457 (and (= (size!16093 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16093 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16093 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509459 () Bool)

(declare-fun res!310455 () Bool)

(assert (=> b!509459 (=> (not res!310455) (not e!297910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509459 (= res!310455 (validKeyInArray!0 k!2280))))

(declare-fun b!509460 () Bool)

(declare-fun res!310451 () Bool)

(assert (=> b!509460 (=> (not res!310451) (not e!297908))))

(declare-datatypes ((List!9940 0))(
  ( (Nil!9937) (Cons!9936 (h!10813 (_ BitVec 64)) (t!16176 List!9940)) )
))
(declare-fun arrayNoDuplicates!0 (array!32707 (_ BitVec 32) List!9940) Bool)

(assert (=> b!509460 (= res!310451 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9937))))

(declare-fun b!509461 () Bool)

(assert (=> b!509461 (= e!297908 (not true))))

(declare-fun lt!232821 () SeekEntryResult!4203)

(declare-fun lt!232820 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32707 (_ BitVec 32)) SeekEntryResult!4203)

(assert (=> b!509461 (= lt!232821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232820 (select (store (arr!15729 a!3235) i!1204 k!2280) j!176) (array!32708 (store (arr!15729 a!3235) i!1204 k!2280) (size!16093 a!3235)) mask!3524))))

(declare-fun lt!232823 () SeekEntryResult!4203)

(declare-fun lt!232819 () (_ BitVec 32))

(assert (=> b!509461 (= lt!232823 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232819 (select (arr!15729 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509461 (= lt!232820 (toIndex!0 (select (store (arr!15729 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509461 (= lt!232819 (toIndex!0 (select (arr!15729 a!3235) j!176) mask!3524))))

(assert (=> b!509461 e!297907))

(declare-fun res!310450 () Bool)

(assert (=> b!509461 (=> (not res!310450) (not e!297907))))

(assert (=> b!509461 (= res!310450 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15656 0))(
  ( (Unit!15657) )
))
(declare-fun lt!232822 () Unit!15656)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15656)

(assert (=> b!509461 (= lt!232822 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509462 () Bool)

(declare-fun res!310453 () Bool)

(assert (=> b!509462 (=> (not res!310453) (not e!297910))))

(assert (=> b!509462 (= res!310453 (validKeyInArray!0 (select (arr!15729 a!3235) j!176)))))

(assert (= (and start!46036 res!310449) b!509458))

(assert (= (and b!509458 res!310457) b!509462))

(assert (= (and b!509462 res!310453) b!509459))

(assert (= (and b!509459 res!310455) b!509455))

(assert (= (and b!509455 res!310456) b!509456))

(assert (= (and b!509456 res!310454) b!509457))

(assert (= (and b!509457 res!310452) b!509460))

(assert (= (and b!509460 res!310451) b!509461))

(assert (= (and b!509461 res!310450) b!509454))

(declare-fun m!490447 () Bool)

(assert (=> start!46036 m!490447))

(declare-fun m!490449 () Bool)

(assert (=> start!46036 m!490449))

(declare-fun m!490451 () Bool)

(assert (=> b!509454 m!490451))

(assert (=> b!509454 m!490451))

(declare-fun m!490453 () Bool)

(assert (=> b!509454 m!490453))

(declare-fun m!490455 () Bool)

(assert (=> b!509455 m!490455))

(assert (=> b!509462 m!490451))

(assert (=> b!509462 m!490451))

(declare-fun m!490457 () Bool)

(assert (=> b!509462 m!490457))

(declare-fun m!490459 () Bool)

(assert (=> b!509460 m!490459))

(declare-fun m!490461 () Bool)

(assert (=> b!509459 m!490461))

(declare-fun m!490463 () Bool)

(assert (=> b!509457 m!490463))

(declare-fun m!490465 () Bool)

(assert (=> b!509461 m!490465))

(declare-fun m!490467 () Bool)

(assert (=> b!509461 m!490467))

(declare-fun m!490469 () Bool)

(assert (=> b!509461 m!490469))

(assert (=> b!509461 m!490451))

(declare-fun m!490471 () Bool)

(assert (=> b!509461 m!490471))

(declare-fun m!490473 () Bool)

(assert (=> b!509461 m!490473))

(assert (=> b!509461 m!490465))

(assert (=> b!509461 m!490451))

(declare-fun m!490475 () Bool)

(assert (=> b!509461 m!490475))

(assert (=> b!509461 m!490451))

(declare-fun m!490477 () Bool)

(assert (=> b!509461 m!490477))

(assert (=> b!509461 m!490465))

(declare-fun m!490479 () Bool)

(assert (=> b!509461 m!490479))

(declare-fun m!490481 () Bool)

(assert (=> b!509456 m!490481))

(push 1)

