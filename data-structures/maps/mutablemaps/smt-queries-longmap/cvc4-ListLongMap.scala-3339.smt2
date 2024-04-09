; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46040 () Bool)

(assert start!46040)

(declare-fun b!509508 () Bool)

(declare-fun res!310511 () Bool)

(declare-fun e!297934 () Bool)

(assert (=> b!509508 (=> (not res!310511) (not e!297934))))

(declare-datatypes ((array!32711 0))(
  ( (array!32712 (arr!15731 (Array (_ BitVec 32) (_ BitVec 64))) (size!16095 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32711)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509508 (= res!310511 (validKeyInArray!0 (select (arr!15731 a!3235) j!176)))))

(declare-fun b!509509 () Bool)

(declare-fun res!310505 () Bool)

(declare-fun e!297932 () Bool)

(assert (=> b!509509 (=> (not res!310505) (not e!297932))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32711 (_ BitVec 32)) Bool)

(assert (=> b!509509 (= res!310505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509510 () Bool)

(declare-fun res!310504 () Bool)

(assert (=> b!509510 (=> (not res!310504) (not e!297934))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32711 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509510 (= res!310504 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509511 () Bool)

(declare-fun res!310503 () Bool)

(assert (=> b!509511 (=> (not res!310503) (not e!297934))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509511 (= res!310503 (and (= (size!16095 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16095 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16095 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509512 () Bool)

(declare-fun res!310509 () Bool)

(assert (=> b!509512 (=> (not res!310509) (not e!297932))))

(declare-datatypes ((List!9942 0))(
  ( (Nil!9939) (Cons!9938 (h!10815 (_ BitVec 64)) (t!16178 List!9942)) )
))
(declare-fun arrayNoDuplicates!0 (array!32711 (_ BitVec 32) List!9942) Bool)

(assert (=> b!509512 (= res!310509 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9939))))

(declare-fun b!509513 () Bool)

(declare-fun res!310507 () Bool)

(assert (=> b!509513 (=> (not res!310507) (not e!297934))))

(assert (=> b!509513 (= res!310507 (validKeyInArray!0 k!2280))))

(declare-fun res!310510 () Bool)

(assert (=> start!46040 (=> (not res!310510) (not e!297934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46040 (= res!310510 (validMask!0 mask!3524))))

(assert (=> start!46040 e!297934))

(assert (=> start!46040 true))

(declare-fun array_inv!11505 (array!32711) Bool)

(assert (=> start!46040 (array_inv!11505 a!3235)))

(declare-fun e!297933 () Bool)

(declare-fun b!509514 () Bool)

(declare-datatypes ((SeekEntryResult!4205 0))(
  ( (MissingZero!4205 (index!19008 (_ BitVec 32))) (Found!4205 (index!19009 (_ BitVec 32))) (Intermediate!4205 (undefined!5017 Bool) (index!19010 (_ BitVec 32)) (x!48001 (_ BitVec 32))) (Undefined!4205) (MissingVacant!4205 (index!19011 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32711 (_ BitVec 32)) SeekEntryResult!4205)

(assert (=> b!509514 (= e!297933 (= (seekEntryOrOpen!0 (select (arr!15731 a!3235) j!176) a!3235 mask!3524) (Found!4205 j!176)))))

(declare-fun b!509515 () Bool)

(assert (=> b!509515 (= e!297934 e!297932)))

(declare-fun res!310508 () Bool)

(assert (=> b!509515 (=> (not res!310508) (not e!297932))))

(declare-fun lt!232858 () SeekEntryResult!4205)

(assert (=> b!509515 (= res!310508 (or (= lt!232858 (MissingZero!4205 i!1204)) (= lt!232858 (MissingVacant!4205 i!1204))))))

(assert (=> b!509515 (= lt!232858 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509516 () Bool)

(assert (=> b!509516 (= e!297932 (not true))))

(declare-fun lt!232857 () (_ BitVec 32))

(declare-fun lt!232856 () SeekEntryResult!4205)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32711 (_ BitVec 32)) SeekEntryResult!4205)

(assert (=> b!509516 (= lt!232856 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232857 (select (store (arr!15731 a!3235) i!1204 k!2280) j!176) (array!32712 (store (arr!15731 a!3235) i!1204 k!2280) (size!16095 a!3235)) mask!3524))))

(declare-fun lt!232854 () (_ BitVec 32))

(declare-fun lt!232855 () SeekEntryResult!4205)

(assert (=> b!509516 (= lt!232855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232854 (select (arr!15731 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509516 (= lt!232857 (toIndex!0 (select (store (arr!15731 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509516 (= lt!232854 (toIndex!0 (select (arr!15731 a!3235) j!176) mask!3524))))

(assert (=> b!509516 e!297933))

(declare-fun res!310506 () Bool)

(assert (=> b!509516 (=> (not res!310506) (not e!297933))))

(assert (=> b!509516 (= res!310506 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15660 0))(
  ( (Unit!15661) )
))
(declare-fun lt!232859 () Unit!15660)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32711 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15660)

(assert (=> b!509516 (= lt!232859 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46040 res!310510) b!509511))

(assert (= (and b!509511 res!310503) b!509508))

(assert (= (and b!509508 res!310511) b!509513))

(assert (= (and b!509513 res!310507) b!509510))

(assert (= (and b!509510 res!310504) b!509515))

(assert (= (and b!509515 res!310508) b!509509))

(assert (= (and b!509509 res!310505) b!509512))

(assert (= (and b!509512 res!310509) b!509516))

(assert (= (and b!509516 res!310506) b!509514))

(declare-fun m!490519 () Bool)

(assert (=> b!509509 m!490519))

(declare-fun m!490521 () Bool)

(assert (=> b!509513 m!490521))

(declare-fun m!490523 () Bool)

(assert (=> b!509515 m!490523))

(declare-fun m!490525 () Bool)

(assert (=> b!509514 m!490525))

(assert (=> b!509514 m!490525))

(declare-fun m!490527 () Bool)

(assert (=> b!509514 m!490527))

(declare-fun m!490529 () Bool)

(assert (=> b!509512 m!490529))

(declare-fun m!490531 () Bool)

(assert (=> b!509516 m!490531))

(declare-fun m!490533 () Bool)

(assert (=> b!509516 m!490533))

(assert (=> b!509516 m!490525))

(declare-fun m!490535 () Bool)

(assert (=> b!509516 m!490535))

(assert (=> b!509516 m!490525))

(declare-fun m!490537 () Bool)

(assert (=> b!509516 m!490537))

(assert (=> b!509516 m!490533))

(declare-fun m!490539 () Bool)

(assert (=> b!509516 m!490539))

(assert (=> b!509516 m!490533))

(declare-fun m!490541 () Bool)

(assert (=> b!509516 m!490541))

(assert (=> b!509516 m!490525))

(declare-fun m!490543 () Bool)

(assert (=> b!509516 m!490543))

(declare-fun m!490545 () Bool)

(assert (=> b!509516 m!490545))

(declare-fun m!490547 () Bool)

(assert (=> start!46040 m!490547))

(declare-fun m!490549 () Bool)

(assert (=> start!46040 m!490549))

(assert (=> b!509508 m!490525))

(assert (=> b!509508 m!490525))

(declare-fun m!490551 () Bool)

(assert (=> b!509508 m!490551))

(declare-fun m!490553 () Bool)

(assert (=> b!509510 m!490553))

(push 1)

