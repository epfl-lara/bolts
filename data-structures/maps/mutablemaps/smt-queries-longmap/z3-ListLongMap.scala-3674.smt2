; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50680 () Bool)

(assert start!50680)

(declare-fun b!553658 () Bool)

(declare-fun res!346222 () Bool)

(declare-fun e!319322 () Bool)

(assert (=> b!553658 (=> (not res!346222) (not e!319322))))

(declare-datatypes ((array!34859 0))(
  ( (array!34860 (arr!16735 (Array (_ BitVec 32) (_ BitVec 64))) (size!17099 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34859)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34859 (_ BitVec 32)) Bool)

(assert (=> b!553658 (= res!346222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553659 () Bool)

(declare-fun res!346226 () Bool)

(declare-fun e!319324 () Bool)

(assert (=> b!553659 (=> (not res!346226) (not e!319324))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553659 (= res!346226 (validKeyInArray!0 (select (arr!16735 a!3118) j!142)))))

(declare-fun b!553660 () Bool)

(declare-fun res!346229 () Bool)

(assert (=> b!553660 (=> (not res!346229) (not e!319324))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!553660 (= res!346229 (validKeyInArray!0 k0!1914))))

(declare-fun b!553661 () Bool)

(declare-fun res!346220 () Bool)

(assert (=> b!553661 (=> (not res!346220) (not e!319322))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5191 0))(
  ( (MissingZero!5191 (index!22991 (_ BitVec 32))) (Found!5191 (index!22992 (_ BitVec 32))) (Intermediate!5191 (undefined!6003 Bool) (index!22993 (_ BitVec 32)) (x!51940 (_ BitVec 32))) (Undefined!5191) (MissingVacant!5191 (index!22994 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34859 (_ BitVec 32)) SeekEntryResult!5191)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553661 (= res!346220 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16735 a!3118) j!142) mask!3119) (select (arr!16735 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16735 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16735 a!3118) i!1132 k0!1914) j!142) (array!34860 (store (arr!16735 a!3118) i!1132 k0!1914) (size!17099 a!3118)) mask!3119)))))

(declare-fun b!553662 () Bool)

(declare-fun res!346221 () Bool)

(assert (=> b!553662 (=> (not res!346221) (not e!319324))))

(assert (=> b!553662 (= res!346221 (and (= (size!17099 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17099 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17099 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553663 () Bool)

(declare-fun res!346225 () Bool)

(assert (=> b!553663 (=> (not res!346225) (not e!319324))))

(declare-fun arrayContainsKey!0 (array!34859 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553663 (= res!346225 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!346228 () Bool)

(assert (=> start!50680 (=> (not res!346228) (not e!319324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50680 (= res!346228 (validMask!0 mask!3119))))

(assert (=> start!50680 e!319324))

(assert (=> start!50680 true))

(declare-fun array_inv!12509 (array!34859) Bool)

(assert (=> start!50680 (array_inv!12509 a!3118)))

(declare-fun b!553664 () Bool)

(declare-fun res!346224 () Bool)

(assert (=> b!553664 (=> (not res!346224) (not e!319322))))

(declare-datatypes ((List!10868 0))(
  ( (Nil!10865) (Cons!10864 (h!11849 (_ BitVec 64)) (t!17104 List!10868)) )
))
(declare-fun arrayNoDuplicates!0 (array!34859 (_ BitVec 32) List!10868) Bool)

(assert (=> b!553664 (= res!346224 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10865))))

(declare-fun b!553665 () Bool)

(declare-fun e!319321 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34859 (_ BitVec 32)) SeekEntryResult!5191)

(assert (=> b!553665 (= e!319321 (= (seekEntryOrOpen!0 (select (arr!16735 a!3118) j!142) a!3118 mask!3119) (Found!5191 j!142)))))

(declare-fun b!553666 () Bool)

(assert (=> b!553666 (= e!319324 e!319322)))

(declare-fun res!346227 () Bool)

(assert (=> b!553666 (=> (not res!346227) (not e!319322))))

(declare-fun lt!251557 () SeekEntryResult!5191)

(assert (=> b!553666 (= res!346227 (or (= lt!251557 (MissingZero!5191 i!1132)) (= lt!251557 (MissingVacant!5191 i!1132))))))

(assert (=> b!553666 (= lt!251557 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!553667 () Bool)

(assert (=> b!553667 (= e!319322 (not true))))

(assert (=> b!553667 e!319321))

(declare-fun res!346223 () Bool)

(assert (=> b!553667 (=> (not res!346223) (not e!319321))))

(assert (=> b!553667 (= res!346223 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17156 0))(
  ( (Unit!17157) )
))
(declare-fun lt!251558 () Unit!17156)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34859 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17156)

(assert (=> b!553667 (= lt!251558 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50680 res!346228) b!553662))

(assert (= (and b!553662 res!346221) b!553659))

(assert (= (and b!553659 res!346226) b!553660))

(assert (= (and b!553660 res!346229) b!553663))

(assert (= (and b!553663 res!346225) b!553666))

(assert (= (and b!553666 res!346227) b!553658))

(assert (= (and b!553658 res!346222) b!553664))

(assert (= (and b!553664 res!346224) b!553661))

(assert (= (and b!553661 res!346220) b!553667))

(assert (= (and b!553667 res!346223) b!553665))

(declare-fun m!530863 () Bool)

(assert (=> b!553658 m!530863))

(declare-fun m!530865 () Bool)

(assert (=> b!553660 m!530865))

(declare-fun m!530867 () Bool)

(assert (=> b!553664 m!530867))

(declare-fun m!530869 () Bool)

(assert (=> b!553666 m!530869))

(declare-fun m!530871 () Bool)

(assert (=> b!553663 m!530871))

(declare-fun m!530873 () Bool)

(assert (=> start!50680 m!530873))

(declare-fun m!530875 () Bool)

(assert (=> start!50680 m!530875))

(declare-fun m!530877 () Bool)

(assert (=> b!553667 m!530877))

(declare-fun m!530879 () Bool)

(assert (=> b!553667 m!530879))

(declare-fun m!530881 () Bool)

(assert (=> b!553659 m!530881))

(assert (=> b!553659 m!530881))

(declare-fun m!530883 () Bool)

(assert (=> b!553659 m!530883))

(assert (=> b!553661 m!530881))

(declare-fun m!530885 () Bool)

(assert (=> b!553661 m!530885))

(assert (=> b!553661 m!530881))

(declare-fun m!530887 () Bool)

(assert (=> b!553661 m!530887))

(declare-fun m!530889 () Bool)

(assert (=> b!553661 m!530889))

(assert (=> b!553661 m!530887))

(declare-fun m!530891 () Bool)

(assert (=> b!553661 m!530891))

(assert (=> b!553661 m!530885))

(assert (=> b!553661 m!530881))

(declare-fun m!530893 () Bool)

(assert (=> b!553661 m!530893))

(declare-fun m!530895 () Bool)

(assert (=> b!553661 m!530895))

(assert (=> b!553661 m!530887))

(assert (=> b!553661 m!530889))

(assert (=> b!553665 m!530881))

(assert (=> b!553665 m!530881))

(declare-fun m!530897 () Bool)

(assert (=> b!553665 m!530897))

(check-sat (not b!553665) (not b!553667) (not b!553658) (not b!553660) (not b!553663) (not start!50680) (not b!553661) (not b!553664) (not b!553659) (not b!553666))
(check-sat)
