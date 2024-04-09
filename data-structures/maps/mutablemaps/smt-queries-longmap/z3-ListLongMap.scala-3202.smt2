; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44970 () Bool)

(assert start!44970)

(declare-fun b!492873 () Bool)

(declare-fun res!295596 () Bool)

(declare-fun e!289513 () Bool)

(assert (=> b!492873 (=> (not res!295596) (not e!289513))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31875 0))(
  ( (array!31876 (arr!15319 (Array (_ BitVec 32) (_ BitVec 64))) (size!15683 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31875)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!492873 (= res!295596 (and (= (size!15683 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15683 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15683 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492874 () Bool)

(declare-fun e!289511 () Bool)

(assert (=> b!492874 (= e!289511 (not true))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!222906 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3793 0))(
  ( (MissingZero!3793 (index!17351 (_ BitVec 32))) (Found!3793 (index!17352 (_ BitVec 32))) (Intermediate!3793 (undefined!4605 Bool) (index!17353 (_ BitVec 32)) (x!46466 (_ BitVec 32))) (Undefined!3793) (MissingVacant!3793 (index!17354 (_ BitVec 32))) )
))
(declare-fun lt!222908 () SeekEntryResult!3793)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31875 (_ BitVec 32)) SeekEntryResult!3793)

(assert (=> b!492874 (= lt!222908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222906 (select (store (arr!15319 a!3235) i!1204 k0!2280) j!176) (array!31876 (store (arr!15319 a!3235) i!1204 k0!2280) (size!15683 a!3235)) mask!3524))))

(declare-fun lt!222907 () (_ BitVec 32))

(declare-fun lt!222910 () SeekEntryResult!3793)

(assert (=> b!492874 (= lt!222910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222907 (select (arr!15319 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492874 (= lt!222906 (toIndex!0 (select (store (arr!15319 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!492874 (= lt!222907 (toIndex!0 (select (arr!15319 a!3235) j!176) mask!3524))))

(declare-fun e!289512 () Bool)

(assert (=> b!492874 e!289512))

(declare-fun res!295601 () Bool)

(assert (=> b!492874 (=> (not res!295601) (not e!289512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31875 (_ BitVec 32)) Bool)

(assert (=> b!492874 (= res!295601 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14524 0))(
  ( (Unit!14525) )
))
(declare-fun lt!222911 () Unit!14524)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31875 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14524)

(assert (=> b!492874 (= lt!222911 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492875 () Bool)

(declare-fun res!295597 () Bool)

(assert (=> b!492875 (=> (not res!295597) (not e!289511))))

(assert (=> b!492875 (= res!295597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492876 () Bool)

(declare-fun res!295599 () Bool)

(assert (=> b!492876 (=> (not res!295599) (not e!289511))))

(declare-datatypes ((List!9530 0))(
  ( (Nil!9527) (Cons!9526 (h!10394 (_ BitVec 64)) (t!15766 List!9530)) )
))
(declare-fun arrayNoDuplicates!0 (array!31875 (_ BitVec 32) List!9530) Bool)

(assert (=> b!492876 (= res!295599 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9527))))

(declare-fun b!492877 () Bool)

(declare-fun res!295593 () Bool)

(assert (=> b!492877 (=> (not res!295593) (not e!289513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492877 (= res!295593 (validKeyInArray!0 k0!2280))))

(declare-fun b!492878 () Bool)

(declare-fun res!295595 () Bool)

(assert (=> b!492878 (=> (not res!295595) (not e!289513))))

(declare-fun arrayContainsKey!0 (array!31875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492878 (= res!295595 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!295598 () Bool)

(assert (=> start!44970 (=> (not res!295598) (not e!289513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44970 (= res!295598 (validMask!0 mask!3524))))

(assert (=> start!44970 e!289513))

(assert (=> start!44970 true))

(declare-fun array_inv!11093 (array!31875) Bool)

(assert (=> start!44970 (array_inv!11093 a!3235)))

(declare-fun b!492879 () Bool)

(assert (=> b!492879 (= e!289513 e!289511)))

(declare-fun res!295594 () Bool)

(assert (=> b!492879 (=> (not res!295594) (not e!289511))))

(declare-fun lt!222909 () SeekEntryResult!3793)

(assert (=> b!492879 (= res!295594 (or (= lt!222909 (MissingZero!3793 i!1204)) (= lt!222909 (MissingVacant!3793 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31875 (_ BitVec 32)) SeekEntryResult!3793)

(assert (=> b!492879 (= lt!222909 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!492880 () Bool)

(declare-fun res!295600 () Bool)

(assert (=> b!492880 (=> (not res!295600) (not e!289513))))

(assert (=> b!492880 (= res!295600 (validKeyInArray!0 (select (arr!15319 a!3235) j!176)))))

(declare-fun b!492881 () Bool)

(assert (=> b!492881 (= e!289512 (= (seekEntryOrOpen!0 (select (arr!15319 a!3235) j!176) a!3235 mask!3524) (Found!3793 j!176)))))

(assert (= (and start!44970 res!295598) b!492873))

(assert (= (and b!492873 res!295596) b!492880))

(assert (= (and b!492880 res!295600) b!492877))

(assert (= (and b!492877 res!295593) b!492878))

(assert (= (and b!492878 res!295595) b!492879))

(assert (= (and b!492879 res!295594) b!492875))

(assert (= (and b!492875 res!295597) b!492876))

(assert (= (and b!492876 res!295599) b!492874))

(assert (= (and b!492874 res!295601) b!492881))

(declare-fun m!473653 () Bool)

(assert (=> b!492876 m!473653))

(declare-fun m!473655 () Bool)

(assert (=> b!492877 m!473655))

(declare-fun m!473657 () Bool)

(assert (=> b!492880 m!473657))

(assert (=> b!492880 m!473657))

(declare-fun m!473659 () Bool)

(assert (=> b!492880 m!473659))

(declare-fun m!473661 () Bool)

(assert (=> b!492874 m!473661))

(declare-fun m!473663 () Bool)

(assert (=> b!492874 m!473663))

(declare-fun m!473665 () Bool)

(assert (=> b!492874 m!473665))

(assert (=> b!492874 m!473657))

(declare-fun m!473667 () Bool)

(assert (=> b!492874 m!473667))

(assert (=> b!492874 m!473657))

(assert (=> b!492874 m!473657))

(declare-fun m!473669 () Bool)

(assert (=> b!492874 m!473669))

(assert (=> b!492874 m!473665))

(declare-fun m!473671 () Bool)

(assert (=> b!492874 m!473671))

(assert (=> b!492874 m!473665))

(declare-fun m!473673 () Bool)

(assert (=> b!492874 m!473673))

(declare-fun m!473675 () Bool)

(assert (=> b!492874 m!473675))

(declare-fun m!473677 () Bool)

(assert (=> b!492878 m!473677))

(declare-fun m!473679 () Bool)

(assert (=> b!492875 m!473679))

(assert (=> b!492881 m!473657))

(assert (=> b!492881 m!473657))

(declare-fun m!473681 () Bool)

(assert (=> b!492881 m!473681))

(declare-fun m!473683 () Bool)

(assert (=> b!492879 m!473683))

(declare-fun m!473685 () Bool)

(assert (=> start!44970 m!473685))

(declare-fun m!473687 () Bool)

(assert (=> start!44970 m!473687))

(check-sat (not b!492874) (not b!492878) (not b!492877) (not start!44970) (not b!492876) (not b!492881) (not b!492879) (not b!492875) (not b!492880))
(check-sat)
