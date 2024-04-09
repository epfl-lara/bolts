; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51742 () Bool)

(assert start!51742)

(declare-fun b!565658 () Bool)

(declare-fun res!356779 () Bool)

(declare-fun e!325619 () Bool)

(assert (=> b!565658 (=> (not res!356779) (not e!325619))))

(declare-datatypes ((array!35504 0))(
  ( (array!35505 (arr!17047 (Array (_ BitVec 32) (_ BitVec 64))) (size!17411 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35504)

(declare-datatypes ((List!11180 0))(
  ( (Nil!11177) (Cons!11176 (h!12182 (_ BitVec 64)) (t!17416 List!11180)) )
))
(declare-fun arrayNoDuplicates!0 (array!35504 (_ BitVec 32) List!11180) Bool)

(assert (=> b!565658 (= res!356779 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11177))))

(declare-fun b!565659 () Bool)

(declare-fun res!356780 () Bool)

(assert (=> b!565659 (=> (not res!356780) (not e!325619))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5503 0))(
  ( (MissingZero!5503 (index!24239 (_ BitVec 32))) (Found!5503 (index!24240 (_ BitVec 32))) (Intermediate!5503 (undefined!6315 Bool) (index!24241 (_ BitVec 32)) (x!53135 (_ BitVec 32))) (Undefined!5503) (MissingVacant!5503 (index!24242 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35504 (_ BitVec 32)) SeekEntryResult!5503)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565659 (= res!356780 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17047 a!3118) j!142) mask!3119) (select (arr!17047 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17047 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17047 a!3118) i!1132 k0!1914) j!142) (array!35505 (store (arr!17047 a!3118) i!1132 k0!1914) (size!17411 a!3118)) mask!3119)))))

(declare-fun e!325621 () Bool)

(declare-fun b!565660 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35504 (_ BitVec 32)) SeekEntryResult!5503)

(assert (=> b!565660 (= e!325621 (= (seekEntryOrOpen!0 (select (arr!17047 a!3118) j!142) a!3118 mask!3119) (Found!5503 j!142)))))

(declare-fun b!565661 () Bool)

(declare-fun e!325620 () Bool)

(assert (=> b!565661 (= e!325620 e!325619)))

(declare-fun res!356784 () Bool)

(assert (=> b!565661 (=> (not res!356784) (not e!325619))))

(declare-fun lt!257933 () SeekEntryResult!5503)

(assert (=> b!565661 (= res!356784 (or (= lt!257933 (MissingZero!5503 i!1132)) (= lt!257933 (MissingVacant!5503 i!1132))))))

(assert (=> b!565661 (= lt!257933 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!565662 () Bool)

(declare-fun res!356783 () Bool)

(assert (=> b!565662 (=> (not res!356783) (not e!325620))))

(declare-fun arrayContainsKey!0 (array!35504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565662 (= res!356783 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!356786 () Bool)

(assert (=> start!51742 (=> (not res!356786) (not e!325620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51742 (= res!356786 (validMask!0 mask!3119))))

(assert (=> start!51742 e!325620))

(assert (=> start!51742 true))

(declare-fun array_inv!12821 (array!35504) Bool)

(assert (=> start!51742 (array_inv!12821 a!3118)))

(declare-fun b!565663 () Bool)

(declare-fun res!356777 () Bool)

(assert (=> b!565663 (=> (not res!356777) (not e!325619))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35504 (_ BitVec 32)) Bool)

(assert (=> b!565663 (= res!356777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565664 () Bool)

(declare-fun res!356785 () Bool)

(assert (=> b!565664 (=> (not res!356785) (not e!325620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565664 (= res!356785 (validKeyInArray!0 (select (arr!17047 a!3118) j!142)))))

(declare-fun b!565665 () Bool)

(declare-fun res!356782 () Bool)

(assert (=> b!565665 (=> (not res!356782) (not e!325620))))

(assert (=> b!565665 (= res!356782 (validKeyInArray!0 k0!1914))))

(declare-fun b!565666 () Bool)

(assert (=> b!565666 (= e!325619 (not true))))

(assert (=> b!565666 e!325621))

(declare-fun res!356781 () Bool)

(assert (=> b!565666 (=> (not res!356781) (not e!325621))))

(assert (=> b!565666 (= res!356781 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17708 0))(
  ( (Unit!17709) )
))
(declare-fun lt!257932 () Unit!17708)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17708)

(assert (=> b!565666 (= lt!257932 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565667 () Bool)

(declare-fun res!356778 () Bool)

(assert (=> b!565667 (=> (not res!356778) (not e!325620))))

(assert (=> b!565667 (= res!356778 (and (= (size!17411 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17411 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17411 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51742 res!356786) b!565667))

(assert (= (and b!565667 res!356778) b!565664))

(assert (= (and b!565664 res!356785) b!565665))

(assert (= (and b!565665 res!356782) b!565662))

(assert (= (and b!565662 res!356783) b!565661))

(assert (= (and b!565661 res!356784) b!565663))

(assert (= (and b!565663 res!356777) b!565658))

(assert (= (and b!565658 res!356779) b!565659))

(assert (= (and b!565659 res!356780) b!565666))

(assert (= (and b!565666 res!356781) b!565660))

(declare-fun m!544237 () Bool)

(assert (=> b!565666 m!544237))

(declare-fun m!544239 () Bool)

(assert (=> b!565666 m!544239))

(declare-fun m!544241 () Bool)

(assert (=> b!565664 m!544241))

(assert (=> b!565664 m!544241))

(declare-fun m!544243 () Bool)

(assert (=> b!565664 m!544243))

(declare-fun m!544245 () Bool)

(assert (=> b!565661 m!544245))

(assert (=> b!565660 m!544241))

(assert (=> b!565660 m!544241))

(declare-fun m!544247 () Bool)

(assert (=> b!565660 m!544247))

(declare-fun m!544249 () Bool)

(assert (=> b!565663 m!544249))

(assert (=> b!565659 m!544241))

(declare-fun m!544251 () Bool)

(assert (=> b!565659 m!544251))

(assert (=> b!565659 m!544241))

(declare-fun m!544253 () Bool)

(assert (=> b!565659 m!544253))

(declare-fun m!544255 () Bool)

(assert (=> b!565659 m!544255))

(assert (=> b!565659 m!544253))

(declare-fun m!544257 () Bool)

(assert (=> b!565659 m!544257))

(assert (=> b!565659 m!544251))

(assert (=> b!565659 m!544241))

(declare-fun m!544259 () Bool)

(assert (=> b!565659 m!544259))

(declare-fun m!544261 () Bool)

(assert (=> b!565659 m!544261))

(assert (=> b!565659 m!544253))

(assert (=> b!565659 m!544255))

(declare-fun m!544263 () Bool)

(assert (=> b!565658 m!544263))

(declare-fun m!544265 () Bool)

(assert (=> b!565662 m!544265))

(declare-fun m!544267 () Bool)

(assert (=> start!51742 m!544267))

(declare-fun m!544269 () Bool)

(assert (=> start!51742 m!544269))

(declare-fun m!544271 () Bool)

(assert (=> b!565665 m!544271))

(check-sat (not b!565658) (not b!565662) (not start!51742) (not b!565666) (not b!565659) (not b!565660) (not b!565663) (not b!565661) (not b!565664) (not b!565665))
(check-sat)
