; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50668 () Bool)

(assert start!50668)

(declare-fun b!553478 () Bool)

(declare-fun e!319251 () Bool)

(declare-fun e!319252 () Bool)

(assert (=> b!553478 (= e!319251 e!319252)))

(declare-fun res!346044 () Bool)

(assert (=> b!553478 (=> (not res!346044) (not e!319252))))

(declare-datatypes ((SeekEntryResult!5185 0))(
  ( (MissingZero!5185 (index!22967 (_ BitVec 32))) (Found!5185 (index!22968 (_ BitVec 32))) (Intermediate!5185 (undefined!5997 Bool) (index!22969 (_ BitVec 32)) (x!51918 (_ BitVec 32))) (Undefined!5185) (MissingVacant!5185 (index!22970 (_ BitVec 32))) )
))
(declare-fun lt!251522 () SeekEntryResult!5185)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553478 (= res!346044 (or (= lt!251522 (MissingZero!5185 i!1132)) (= lt!251522 (MissingVacant!5185 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!34847 0))(
  ( (array!34848 (arr!16729 (Array (_ BitVec 32) (_ BitVec 64))) (size!17093 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34847)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34847 (_ BitVec 32)) SeekEntryResult!5185)

(assert (=> b!553478 (= lt!251522 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!553479 () Bool)

(declare-fun res!346040 () Bool)

(assert (=> b!553479 (=> (not res!346040) (not e!319252))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34847 (_ BitVec 32)) SeekEntryResult!5185)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553479 (= res!346040 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16729 a!3118) j!142) mask!3119) (select (arr!16729 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16729 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16729 a!3118) i!1132 k0!1914) j!142) (array!34848 (store (arr!16729 a!3118) i!1132 k0!1914) (size!17093 a!3118)) mask!3119)))))

(declare-fun b!553480 () Bool)

(assert (=> b!553480 (= e!319252 (not true))))

(declare-fun e!319249 () Bool)

(assert (=> b!553480 e!319249))

(declare-fun res!346046 () Bool)

(assert (=> b!553480 (=> (not res!346046) (not e!319249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34847 (_ BitVec 32)) Bool)

(assert (=> b!553480 (= res!346046 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17144 0))(
  ( (Unit!17145) )
))
(declare-fun lt!251521 () Unit!17144)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34847 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17144)

(assert (=> b!553480 (= lt!251521 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553481 () Bool)

(declare-fun res!346047 () Bool)

(assert (=> b!553481 (=> (not res!346047) (not e!319252))))

(assert (=> b!553481 (= res!346047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553482 () Bool)

(declare-fun res!346042 () Bool)

(assert (=> b!553482 (=> (not res!346042) (not e!319252))))

(declare-datatypes ((List!10862 0))(
  ( (Nil!10859) (Cons!10858 (h!11843 (_ BitVec 64)) (t!17098 List!10862)) )
))
(declare-fun arrayNoDuplicates!0 (array!34847 (_ BitVec 32) List!10862) Bool)

(assert (=> b!553482 (= res!346042 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10859))))

(declare-fun b!553484 () Bool)

(declare-fun res!346041 () Bool)

(assert (=> b!553484 (=> (not res!346041) (not e!319251))))

(assert (=> b!553484 (= res!346041 (and (= (size!17093 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17093 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17093 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553485 () Bool)

(declare-fun res!346049 () Bool)

(assert (=> b!553485 (=> (not res!346049) (not e!319251))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553485 (= res!346049 (validKeyInArray!0 (select (arr!16729 a!3118) j!142)))))

(declare-fun b!553486 () Bool)

(declare-fun res!346045 () Bool)

(assert (=> b!553486 (=> (not res!346045) (not e!319251))))

(declare-fun arrayContainsKey!0 (array!34847 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553486 (= res!346045 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553487 () Bool)

(assert (=> b!553487 (= e!319249 (= (seekEntryOrOpen!0 (select (arr!16729 a!3118) j!142) a!3118 mask!3119) (Found!5185 j!142)))))

(declare-fun res!346048 () Bool)

(assert (=> start!50668 (=> (not res!346048) (not e!319251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50668 (= res!346048 (validMask!0 mask!3119))))

(assert (=> start!50668 e!319251))

(assert (=> start!50668 true))

(declare-fun array_inv!12503 (array!34847) Bool)

(assert (=> start!50668 (array_inv!12503 a!3118)))

(declare-fun b!553483 () Bool)

(declare-fun res!346043 () Bool)

(assert (=> b!553483 (=> (not res!346043) (not e!319251))))

(assert (=> b!553483 (= res!346043 (validKeyInArray!0 k0!1914))))

(assert (= (and start!50668 res!346048) b!553484))

(assert (= (and b!553484 res!346041) b!553485))

(assert (= (and b!553485 res!346049) b!553483))

(assert (= (and b!553483 res!346043) b!553486))

(assert (= (and b!553486 res!346045) b!553478))

(assert (= (and b!553478 res!346044) b!553481))

(assert (= (and b!553481 res!346047) b!553482))

(assert (= (and b!553482 res!346042) b!553479))

(assert (= (and b!553479 res!346040) b!553480))

(assert (= (and b!553480 res!346046) b!553487))

(declare-fun m!530647 () Bool)

(assert (=> b!553486 m!530647))

(declare-fun m!530649 () Bool)

(assert (=> b!553480 m!530649))

(declare-fun m!530651 () Bool)

(assert (=> b!553480 m!530651))

(declare-fun m!530653 () Bool)

(assert (=> b!553478 m!530653))

(declare-fun m!530655 () Bool)

(assert (=> b!553482 m!530655))

(declare-fun m!530657 () Bool)

(assert (=> b!553483 m!530657))

(declare-fun m!530659 () Bool)

(assert (=> start!50668 m!530659))

(declare-fun m!530661 () Bool)

(assert (=> start!50668 m!530661))

(declare-fun m!530663 () Bool)

(assert (=> b!553487 m!530663))

(assert (=> b!553487 m!530663))

(declare-fun m!530665 () Bool)

(assert (=> b!553487 m!530665))

(assert (=> b!553479 m!530663))

(declare-fun m!530667 () Bool)

(assert (=> b!553479 m!530667))

(assert (=> b!553479 m!530663))

(declare-fun m!530669 () Bool)

(assert (=> b!553479 m!530669))

(declare-fun m!530671 () Bool)

(assert (=> b!553479 m!530671))

(assert (=> b!553479 m!530669))

(declare-fun m!530673 () Bool)

(assert (=> b!553479 m!530673))

(assert (=> b!553479 m!530667))

(assert (=> b!553479 m!530663))

(declare-fun m!530675 () Bool)

(assert (=> b!553479 m!530675))

(declare-fun m!530677 () Bool)

(assert (=> b!553479 m!530677))

(assert (=> b!553479 m!530669))

(assert (=> b!553479 m!530671))

(assert (=> b!553485 m!530663))

(assert (=> b!553485 m!530663))

(declare-fun m!530679 () Bool)

(assert (=> b!553485 m!530679))

(declare-fun m!530681 () Bool)

(assert (=> b!553481 m!530681))

(check-sat (not b!553481) (not b!553479) (not b!553483) (not b!553482) (not b!553480) (not start!50668) (not b!553486) (not b!553485) (not b!553478) (not b!553487))
(check-sat)
