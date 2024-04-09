; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52144 () Bool)

(assert start!52144)

(declare-fun b!568665 () Bool)

(declare-fun res!358839 () Bool)

(declare-fun e!327215 () Bool)

(assert (=> b!568665 (=> (not res!358839) (not e!327215))))

(declare-datatypes ((array!35621 0))(
  ( (array!35622 (arr!17098 (Array (_ BitVec 32) (_ BitVec 64))) (size!17462 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35621)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568665 (= res!358839 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568666 () Bool)

(declare-fun res!358840 () Bool)

(assert (=> b!568666 (=> (not res!358840) (not e!327215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568666 (= res!358840 (validKeyInArray!0 k0!1914))))

(declare-fun b!568667 () Bool)

(declare-fun e!327214 () Bool)

(assert (=> b!568667 (= e!327214 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5554 0))(
  ( (MissingZero!5554 (index!24443 (_ BitVec 32))) (Found!5554 (index!24444 (_ BitVec 32))) (Intermediate!5554 (undefined!6366 Bool) (index!24445 (_ BitVec 32)) (x!53352 (_ BitVec 32))) (Undefined!5554) (MissingVacant!5554 (index!24446 (_ BitVec 32))) )
))
(declare-fun lt!259123 () SeekEntryResult!5554)

(declare-fun lt!259122 () SeekEntryResult!5554)

(get-info :version)

(assert (=> b!568667 (and (= lt!259123 (Found!5554 j!142)) (or (undefined!6366 lt!259122) (not ((_ is Intermediate!5554) lt!259122)) (= (select (arr!17098 a!3118) (index!24445 lt!259122)) (select (arr!17098 a!3118) j!142)) (not (= (select (arr!17098 a!3118) (index!24445 lt!259122)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259123 (MissingZero!5554 (index!24445 lt!259122)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35621 (_ BitVec 32)) SeekEntryResult!5554)

(assert (=> b!568667 (= lt!259123 (seekEntryOrOpen!0 (select (arr!17098 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35621 (_ BitVec 32)) Bool)

(assert (=> b!568667 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17810 0))(
  ( (Unit!17811) )
))
(declare-fun lt!259124 () Unit!17810)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35621 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17810)

(assert (=> b!568667 (= lt!259124 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568668 () Bool)

(declare-fun res!358837 () Bool)

(assert (=> b!568668 (=> (not res!358837) (not e!327215))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568668 (= res!358837 (and (= (size!17462 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17462 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17462 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568669 () Bool)

(declare-fun res!358835 () Bool)

(assert (=> b!568669 (=> (not res!358835) (not e!327215))))

(assert (=> b!568669 (= res!358835 (validKeyInArray!0 (select (arr!17098 a!3118) j!142)))))

(declare-fun b!568670 () Bool)

(declare-fun res!358833 () Bool)

(declare-fun e!327217 () Bool)

(assert (=> b!568670 (=> (not res!358833) (not e!327217))))

(assert (=> b!568670 (= res!358833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568671 () Bool)

(assert (=> b!568671 (= e!327215 e!327217)))

(declare-fun res!358838 () Bool)

(assert (=> b!568671 (=> (not res!358838) (not e!327217))))

(declare-fun lt!259120 () SeekEntryResult!5554)

(assert (=> b!568671 (= res!358838 (or (= lt!259120 (MissingZero!5554 i!1132)) (= lt!259120 (MissingVacant!5554 i!1132))))))

(assert (=> b!568671 (= lt!259120 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!568672 () Bool)

(declare-fun res!358834 () Bool)

(assert (=> b!568672 (=> (not res!358834) (not e!327217))))

(declare-datatypes ((List!11231 0))(
  ( (Nil!11228) (Cons!11227 (h!12248 (_ BitVec 64)) (t!17467 List!11231)) )
))
(declare-fun arrayNoDuplicates!0 (array!35621 (_ BitVec 32) List!11231) Bool)

(assert (=> b!568672 (= res!358834 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11228))))

(declare-fun res!358836 () Bool)

(assert (=> start!52144 (=> (not res!358836) (not e!327215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52144 (= res!358836 (validMask!0 mask!3119))))

(assert (=> start!52144 e!327215))

(assert (=> start!52144 true))

(declare-fun array_inv!12872 (array!35621) Bool)

(assert (=> start!52144 (array_inv!12872 a!3118)))

(declare-fun b!568673 () Bool)

(assert (=> b!568673 (= e!327217 e!327214)))

(declare-fun res!358841 () Bool)

(assert (=> b!568673 (=> (not res!358841) (not e!327214))))

(declare-fun lt!259121 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35621 (_ BitVec 32)) SeekEntryResult!5554)

(assert (=> b!568673 (= res!358841 (= lt!259122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259121 (select (store (arr!17098 a!3118) i!1132 k0!1914) j!142) (array!35622 (store (arr!17098 a!3118) i!1132 k0!1914) (size!17462 a!3118)) mask!3119)))))

(declare-fun lt!259119 () (_ BitVec 32))

(assert (=> b!568673 (= lt!259122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259119 (select (arr!17098 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568673 (= lt!259121 (toIndex!0 (select (store (arr!17098 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!568673 (= lt!259119 (toIndex!0 (select (arr!17098 a!3118) j!142) mask!3119))))

(assert (= (and start!52144 res!358836) b!568668))

(assert (= (and b!568668 res!358837) b!568669))

(assert (= (and b!568669 res!358835) b!568666))

(assert (= (and b!568666 res!358840) b!568665))

(assert (= (and b!568665 res!358839) b!568671))

(assert (= (and b!568671 res!358838) b!568670))

(assert (= (and b!568670 res!358833) b!568672))

(assert (= (and b!568672 res!358834) b!568673))

(assert (= (and b!568673 res!358841) b!568667))

(declare-fun m!547197 () Bool)

(assert (=> b!568665 m!547197))

(declare-fun m!547199 () Bool)

(assert (=> start!52144 m!547199))

(declare-fun m!547201 () Bool)

(assert (=> start!52144 m!547201))

(declare-fun m!547203 () Bool)

(assert (=> b!568666 m!547203))

(declare-fun m!547205 () Bool)

(assert (=> b!568671 m!547205))

(declare-fun m!547207 () Bool)

(assert (=> b!568673 m!547207))

(declare-fun m!547209 () Bool)

(assert (=> b!568673 m!547209))

(assert (=> b!568673 m!547207))

(declare-fun m!547211 () Bool)

(assert (=> b!568673 m!547211))

(declare-fun m!547213 () Bool)

(assert (=> b!568673 m!547213))

(assert (=> b!568673 m!547211))

(declare-fun m!547215 () Bool)

(assert (=> b!568673 m!547215))

(assert (=> b!568673 m!547207))

(declare-fun m!547217 () Bool)

(assert (=> b!568673 m!547217))

(assert (=> b!568673 m!547211))

(declare-fun m!547219 () Bool)

(assert (=> b!568673 m!547219))

(assert (=> b!568669 m!547207))

(assert (=> b!568669 m!547207))

(declare-fun m!547221 () Bool)

(assert (=> b!568669 m!547221))

(declare-fun m!547223 () Bool)

(assert (=> b!568670 m!547223))

(assert (=> b!568667 m!547207))

(declare-fun m!547225 () Bool)

(assert (=> b!568667 m!547225))

(assert (=> b!568667 m!547207))

(declare-fun m!547227 () Bool)

(assert (=> b!568667 m!547227))

(declare-fun m!547229 () Bool)

(assert (=> b!568667 m!547229))

(declare-fun m!547231 () Bool)

(assert (=> b!568667 m!547231))

(declare-fun m!547233 () Bool)

(assert (=> b!568672 m!547233))

(check-sat (not b!568669) (not b!568670) (not b!568667) (not b!568672) (not start!52144) (not b!568665) (not b!568673) (not b!568666) (not b!568671))
(check-sat)
