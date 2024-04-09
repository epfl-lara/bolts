; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46254 () Bool)

(assert start!46254)

(declare-fun b!511955 () Bool)

(declare-fun res!312769 () Bool)

(declare-fun e!299041 () Bool)

(assert (=> b!511955 (=> (not res!312769) (not e!299041))))

(declare-datatypes ((array!32868 0))(
  ( (array!32869 (arr!15808 (Array (_ BitVec 32) (_ BitVec 64))) (size!16172 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32868)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32868 (_ BitVec 32)) Bool)

(assert (=> b!511955 (= res!312769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511956 () Bool)

(declare-fun e!299043 () Bool)

(assert (=> b!511956 (= e!299043 e!299041)))

(declare-fun res!312773 () Bool)

(assert (=> b!511956 (=> (not res!312773) (not e!299041))))

(declare-datatypes ((SeekEntryResult!4282 0))(
  ( (MissingZero!4282 (index!19316 (_ BitVec 32))) (Found!4282 (index!19317 (_ BitVec 32))) (Intermediate!4282 (undefined!5094 Bool) (index!19318 (_ BitVec 32)) (x!48292 (_ BitVec 32))) (Undefined!4282) (MissingVacant!4282 (index!19319 (_ BitVec 32))) )
))
(declare-fun lt!234372 () SeekEntryResult!4282)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511956 (= res!312773 (or (= lt!234372 (MissingZero!4282 i!1204)) (= lt!234372 (MissingVacant!4282 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32868 (_ BitVec 32)) SeekEntryResult!4282)

(assert (=> b!511956 (= lt!234372 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!511957 () Bool)

(declare-fun e!299042 () Bool)

(assert (=> b!511957 (= e!299042 true)))

(declare-fun lt!234374 () SeekEntryResult!4282)

(assert (=> b!511957 (= lt!234374 Undefined!4282)))

(declare-fun b!511958 () Bool)

(declare-fun res!312770 () Bool)

(assert (=> b!511958 (=> (not res!312770) (not e!299043))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!511958 (= res!312770 (and (= (size!16172 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16172 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16172 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!312771 () Bool)

(assert (=> start!46254 (=> (not res!312771) (not e!299043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46254 (= res!312771 (validMask!0 mask!3524))))

(assert (=> start!46254 e!299043))

(assert (=> start!46254 true))

(declare-fun array_inv!11582 (array!32868) Bool)

(assert (=> start!46254 (array_inv!11582 a!3235)))

(declare-fun b!511959 () Bool)

(declare-fun res!312776 () Bool)

(assert (=> b!511959 (=> (not res!312776) (not e!299043))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511959 (= res!312776 (validKeyInArray!0 (select (arr!15808 a!3235) j!176)))))

(declare-fun b!511960 () Bool)

(declare-fun res!312767 () Bool)

(assert (=> b!511960 (=> res!312767 e!299042)))

(declare-fun lt!234373 () SeekEntryResult!4282)

(get-info :version)

(assert (=> b!511960 (= res!312767 (or (not ((_ is Intermediate!4282) lt!234373)) (not (undefined!5094 lt!234373))))))

(declare-fun b!511961 () Bool)

(declare-fun res!312768 () Bool)

(assert (=> b!511961 (=> (not res!312768) (not e!299043))))

(declare-fun arrayContainsKey!0 (array!32868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511961 (= res!312768 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511962 () Bool)

(declare-fun res!312774 () Bool)

(assert (=> b!511962 (=> (not res!312774) (not e!299041))))

(declare-datatypes ((List!10019 0))(
  ( (Nil!10016) (Cons!10015 (h!10895 (_ BitVec 64)) (t!16255 List!10019)) )
))
(declare-fun arrayNoDuplicates!0 (array!32868 (_ BitVec 32) List!10019) Bool)

(assert (=> b!511962 (= res!312774 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10016))))

(declare-fun b!511963 () Bool)

(assert (=> b!511963 (= e!299041 (not e!299042))))

(declare-fun res!312772 () Bool)

(assert (=> b!511963 (=> res!312772 e!299042)))

(declare-fun lt!234370 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32868 (_ BitVec 32)) SeekEntryResult!4282)

(assert (=> b!511963 (= res!312772 (= lt!234373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234370 (select (store (arr!15808 a!3235) i!1204 k0!2280) j!176) (array!32869 (store (arr!15808 a!3235) i!1204 k0!2280) (size!16172 a!3235)) mask!3524)))))

(declare-fun lt!234371 () (_ BitVec 32))

(assert (=> b!511963 (= lt!234373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234371 (select (arr!15808 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511963 (= lt!234370 (toIndex!0 (select (store (arr!15808 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!511963 (= lt!234371 (toIndex!0 (select (arr!15808 a!3235) j!176) mask!3524))))

(assert (=> b!511963 (= lt!234374 (Found!4282 j!176))))

(assert (=> b!511963 (= lt!234374 (seekEntryOrOpen!0 (select (arr!15808 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511963 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15814 0))(
  ( (Unit!15815) )
))
(declare-fun lt!234369 () Unit!15814)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32868 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15814)

(assert (=> b!511963 (= lt!234369 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511964 () Bool)

(declare-fun res!312775 () Bool)

(assert (=> b!511964 (=> (not res!312775) (not e!299043))))

(assert (=> b!511964 (= res!312775 (validKeyInArray!0 k0!2280))))

(assert (= (and start!46254 res!312771) b!511958))

(assert (= (and b!511958 res!312770) b!511959))

(assert (= (and b!511959 res!312776) b!511964))

(assert (= (and b!511964 res!312775) b!511961))

(assert (= (and b!511961 res!312768) b!511956))

(assert (= (and b!511956 res!312773) b!511955))

(assert (= (and b!511955 res!312769) b!511962))

(assert (= (and b!511962 res!312774) b!511963))

(assert (= (and b!511963 (not res!312772)) b!511960))

(assert (= (and b!511960 (not res!312767)) b!511957))

(declare-fun m!493591 () Bool)

(assert (=> b!511959 m!493591))

(assert (=> b!511959 m!493591))

(declare-fun m!493593 () Bool)

(assert (=> b!511959 m!493593))

(declare-fun m!493595 () Bool)

(assert (=> b!511961 m!493595))

(declare-fun m!493597 () Bool)

(assert (=> b!511956 m!493597))

(declare-fun m!493599 () Bool)

(assert (=> b!511964 m!493599))

(declare-fun m!493601 () Bool)

(assert (=> b!511962 m!493601))

(declare-fun m!493603 () Bool)

(assert (=> start!46254 m!493603))

(declare-fun m!493605 () Bool)

(assert (=> start!46254 m!493605))

(declare-fun m!493607 () Bool)

(assert (=> b!511963 m!493607))

(declare-fun m!493609 () Bool)

(assert (=> b!511963 m!493609))

(declare-fun m!493611 () Bool)

(assert (=> b!511963 m!493611))

(declare-fun m!493613 () Bool)

(assert (=> b!511963 m!493613))

(assert (=> b!511963 m!493607))

(assert (=> b!511963 m!493591))

(declare-fun m!493615 () Bool)

(assert (=> b!511963 m!493615))

(assert (=> b!511963 m!493591))

(assert (=> b!511963 m!493591))

(declare-fun m!493617 () Bool)

(assert (=> b!511963 m!493617))

(declare-fun m!493619 () Bool)

(assert (=> b!511963 m!493619))

(assert (=> b!511963 m!493591))

(declare-fun m!493621 () Bool)

(assert (=> b!511963 m!493621))

(assert (=> b!511963 m!493607))

(declare-fun m!493623 () Bool)

(assert (=> b!511963 m!493623))

(declare-fun m!493625 () Bool)

(assert (=> b!511955 m!493625))

(check-sat (not b!511955) (not b!511959) (not b!511961) (not b!511963) (not b!511964) (not b!511962) (not start!46254) (not b!511956))
(check-sat)
