; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51556 () Bool)

(assert start!51556)

(declare-fun b!563725 () Bool)

(declare-fun res!355033 () Bool)

(declare-fun e!324794 () Bool)

(assert (=> b!563725 (=> (not res!355033) (not e!324794))))

(declare-datatypes ((array!35375 0))(
  ( (array!35376 (arr!16984 (Array (_ BitVec 32) (_ BitVec 64))) (size!17348 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35375)

(declare-datatypes ((List!11117 0))(
  ( (Nil!11114) (Cons!11113 (h!12116 (_ BitVec 64)) (t!17353 List!11117)) )
))
(declare-fun arrayNoDuplicates!0 (array!35375 (_ BitVec 32) List!11117) Bool)

(assert (=> b!563725 (= res!355033 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11114))))

(declare-fun b!563726 () Bool)

(declare-fun e!324795 () Bool)

(assert (=> b!563726 (= e!324795 e!324794)))

(declare-fun res!355036 () Bool)

(assert (=> b!563726 (=> (not res!355036) (not e!324794))))

(declare-datatypes ((SeekEntryResult!5440 0))(
  ( (MissingZero!5440 (index!23987 (_ BitVec 32))) (Found!5440 (index!23988 (_ BitVec 32))) (Intermediate!5440 (undefined!6252 Bool) (index!23989 (_ BitVec 32)) (x!52898 (_ BitVec 32))) (Undefined!5440) (MissingVacant!5440 (index!23990 (_ BitVec 32))) )
))
(declare-fun lt!257347 () SeekEntryResult!5440)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563726 (= res!355036 (or (= lt!257347 (MissingZero!5440 i!1132)) (= lt!257347 (MissingVacant!5440 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35375 (_ BitVec 32)) SeekEntryResult!5440)

(assert (=> b!563726 (= lt!257347 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!563727 () Bool)

(declare-fun res!355028 () Bool)

(assert (=> b!563727 (=> (not res!355028) (not e!324795))))

(declare-fun arrayContainsKey!0 (array!35375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563727 (= res!355028 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563728 () Bool)

(declare-fun e!324797 () Bool)

(declare-fun e!324796 () Bool)

(assert (=> b!563728 (= e!324797 (not e!324796))))

(declare-fun res!355032 () Bool)

(assert (=> b!563728 (=> res!355032 e!324796)))

(declare-fun lt!257351 () Bool)

(declare-fun lt!257346 () SeekEntryResult!5440)

(assert (=> b!563728 (= res!355032 (or (and (not lt!257351) (undefined!6252 lt!257346)) (and (not lt!257351) (not (undefined!6252 lt!257346))) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!563728 (= lt!257351 (not ((_ is Intermediate!5440) lt!257346)))))

(declare-fun e!324798 () Bool)

(assert (=> b!563728 e!324798))

(declare-fun res!355035 () Bool)

(assert (=> b!563728 (=> (not res!355035) (not e!324798))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35375 (_ BitVec 32)) Bool)

(assert (=> b!563728 (= res!355035 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17654 0))(
  ( (Unit!17655) )
))
(declare-fun lt!257349 () Unit!17654)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35375 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17654)

(assert (=> b!563728 (= lt!257349 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563729 () Bool)

(assert (=> b!563729 (= e!324794 e!324797)))

(declare-fun res!355029 () Bool)

(assert (=> b!563729 (=> (not res!355029) (not e!324797))))

(declare-fun lt!257348 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35375 (_ BitVec 32)) SeekEntryResult!5440)

(assert (=> b!563729 (= res!355029 (= lt!257346 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257348 (select (store (arr!16984 a!3118) i!1132 k0!1914) j!142) (array!35376 (store (arr!16984 a!3118) i!1132 k0!1914) (size!17348 a!3118)) mask!3119)))))

(declare-fun lt!257350 () (_ BitVec 32))

(assert (=> b!563729 (= lt!257346 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257350 (select (arr!16984 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563729 (= lt!257348 (toIndex!0 (select (store (arr!16984 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!563729 (= lt!257350 (toIndex!0 (select (arr!16984 a!3118) j!142) mask!3119))))

(declare-fun b!563731 () Bool)

(declare-fun res!355031 () Bool)

(assert (=> b!563731 (=> (not res!355031) (not e!324795))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563731 (= res!355031 (validKeyInArray!0 k0!1914))))

(declare-fun b!563732 () Bool)

(assert (=> b!563732 (= e!324796 (validKeyInArray!0 (select (store (arr!16984 a!3118) i!1132 k0!1914) j!142)))))

(declare-fun b!563730 () Bool)

(declare-fun res!355037 () Bool)

(assert (=> b!563730 (=> (not res!355037) (not e!324795))))

(assert (=> b!563730 (= res!355037 (and (= (size!17348 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17348 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17348 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!355034 () Bool)

(assert (=> start!51556 (=> (not res!355034) (not e!324795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51556 (= res!355034 (validMask!0 mask!3119))))

(assert (=> start!51556 e!324795))

(assert (=> start!51556 true))

(declare-fun array_inv!12758 (array!35375) Bool)

(assert (=> start!51556 (array_inv!12758 a!3118)))

(declare-fun b!563733 () Bool)

(declare-fun res!355030 () Bool)

(assert (=> b!563733 (=> (not res!355030) (not e!324795))))

(assert (=> b!563733 (= res!355030 (validKeyInArray!0 (select (arr!16984 a!3118) j!142)))))

(declare-fun b!563734 () Bool)

(declare-fun res!355027 () Bool)

(assert (=> b!563734 (=> (not res!355027) (not e!324794))))

(assert (=> b!563734 (= res!355027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563735 () Bool)

(assert (=> b!563735 (= e!324798 (= (seekEntryOrOpen!0 (select (arr!16984 a!3118) j!142) a!3118 mask!3119) (Found!5440 j!142)))))

(assert (= (and start!51556 res!355034) b!563730))

(assert (= (and b!563730 res!355037) b!563733))

(assert (= (and b!563733 res!355030) b!563731))

(assert (= (and b!563731 res!355031) b!563727))

(assert (= (and b!563727 res!355028) b!563726))

(assert (= (and b!563726 res!355036) b!563734))

(assert (= (and b!563734 res!355027) b!563725))

(assert (= (and b!563725 res!355033) b!563729))

(assert (= (and b!563729 res!355029) b!563728))

(assert (= (and b!563728 res!355035) b!563735))

(assert (= (and b!563728 (not res!355032)) b!563732))

(declare-fun m!542199 () Bool)

(assert (=> b!563731 m!542199))

(declare-fun m!542201 () Bool)

(assert (=> b!563728 m!542201))

(declare-fun m!542203 () Bool)

(assert (=> b!563728 m!542203))

(declare-fun m!542205 () Bool)

(assert (=> b!563733 m!542205))

(assert (=> b!563733 m!542205))

(declare-fun m!542207 () Bool)

(assert (=> b!563733 m!542207))

(declare-fun m!542209 () Bool)

(assert (=> b!563726 m!542209))

(assert (=> b!563729 m!542205))

(declare-fun m!542211 () Bool)

(assert (=> b!563729 m!542211))

(assert (=> b!563729 m!542205))

(declare-fun m!542213 () Bool)

(assert (=> b!563729 m!542213))

(declare-fun m!542215 () Bool)

(assert (=> b!563729 m!542215))

(assert (=> b!563729 m!542205))

(declare-fun m!542217 () Bool)

(assert (=> b!563729 m!542217))

(assert (=> b!563729 m!542213))

(declare-fun m!542219 () Bool)

(assert (=> b!563729 m!542219))

(assert (=> b!563729 m!542213))

(declare-fun m!542221 () Bool)

(assert (=> b!563729 m!542221))

(declare-fun m!542223 () Bool)

(assert (=> b!563725 m!542223))

(assert (=> b!563732 m!542215))

(assert (=> b!563732 m!542213))

(assert (=> b!563732 m!542213))

(declare-fun m!542225 () Bool)

(assert (=> b!563732 m!542225))

(declare-fun m!542227 () Bool)

(assert (=> start!51556 m!542227))

(declare-fun m!542229 () Bool)

(assert (=> start!51556 m!542229))

(declare-fun m!542231 () Bool)

(assert (=> b!563734 m!542231))

(declare-fun m!542233 () Bool)

(assert (=> b!563727 m!542233))

(assert (=> b!563735 m!542205))

(assert (=> b!563735 m!542205))

(declare-fun m!542235 () Bool)

(assert (=> b!563735 m!542235))

(check-sat (not b!563733) (not b!563729) (not b!563735) (not b!563734) (not b!563728) (not b!563726) (not start!51556) (not b!563727) (not b!563731) (not b!563725) (not b!563732))
(check-sat)
