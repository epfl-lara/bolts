; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51364 () Bool)

(assert start!51364)

(declare-fun b!560243 () Bool)

(declare-fun e!322800 () Bool)

(declare-fun e!322804 () Bool)

(assert (=> b!560243 (= e!322800 e!322804)))

(declare-fun res!351553 () Bool)

(assert (=> b!560243 (=> (not res!351553) (not e!322804))))

(declare-datatypes ((SeekEntryResult!5344 0))(
  ( (MissingZero!5344 (index!23603 (_ BitVec 32))) (Found!5344 (index!23604 (_ BitVec 32))) (Intermediate!5344 (undefined!6156 Bool) (index!23605 (_ BitVec 32)) (x!52546 (_ BitVec 32))) (Undefined!5344) (MissingVacant!5344 (index!23606 (_ BitVec 32))) )
))
(declare-fun lt!254786 () SeekEntryResult!5344)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560243 (= res!351553 (or (= lt!254786 (MissingZero!5344 i!1132)) (= lt!254786 (MissingVacant!5344 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35183 0))(
  ( (array!35184 (arr!16888 (Array (_ BitVec 32) (_ BitVec 64))) (size!17252 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35183)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35183 (_ BitVec 32)) SeekEntryResult!5344)

(assert (=> b!560243 (= lt!254786 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!560244 () Bool)

(declare-fun res!351554 () Bool)

(assert (=> b!560244 (=> (not res!351554) (not e!322800))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560244 (= res!351554 (validKeyInArray!0 (select (arr!16888 a!3118) j!142)))))

(declare-fun b!560245 () Bool)

(declare-fun e!322799 () Bool)

(declare-fun e!322801 () Bool)

(assert (=> b!560245 (= e!322799 e!322801)))

(declare-fun res!351552 () Bool)

(assert (=> b!560245 (=> (not res!351552) (not e!322801))))

(declare-fun lt!254783 () SeekEntryResult!5344)

(declare-fun lt!254784 () SeekEntryResult!5344)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35183 (_ BitVec 32)) SeekEntryResult!5344)

(assert (=> b!560245 (= res!351552 (= lt!254783 (seekKeyOrZeroReturnVacant!0 (x!52546 lt!254784) (index!23605 lt!254784) (index!23605 lt!254784) (select (arr!16888 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560246 () Bool)

(declare-fun e!322798 () Bool)

(assert (=> b!560246 (= e!322798 (not true))))

(declare-fun e!322803 () Bool)

(assert (=> b!560246 e!322803))

(declare-fun res!351550 () Bool)

(assert (=> b!560246 (=> (not res!351550) (not e!322803))))

(assert (=> b!560246 (= res!351550 (= lt!254783 (Found!5344 j!142)))))

(assert (=> b!560246 (= lt!254783 (seekEntryOrOpen!0 (select (arr!16888 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35183 (_ BitVec 32)) Bool)

(assert (=> b!560246 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17462 0))(
  ( (Unit!17463) )
))
(declare-fun lt!254785 () Unit!17462)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35183 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17462)

(assert (=> b!560246 (= lt!254785 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560247 () Bool)

(declare-fun lt!254778 () array!35183)

(declare-fun lt!254780 () (_ BitVec 64))

(assert (=> b!560247 (= e!322801 (= (seekEntryOrOpen!0 lt!254780 lt!254778 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52546 lt!254784) (index!23605 lt!254784) (index!23605 lt!254784) lt!254780 lt!254778 mask!3119)))))

(declare-fun b!560249 () Bool)

(declare-fun res!351551 () Bool)

(assert (=> b!560249 (=> (not res!351551) (not e!322800))))

(assert (=> b!560249 (= res!351551 (and (= (size!17252 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17252 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17252 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560250 () Bool)

(declare-fun res!351547 () Bool)

(assert (=> b!560250 (=> (not res!351547) (not e!322800))))

(assert (=> b!560250 (= res!351547 (validKeyInArray!0 k0!1914))))

(declare-fun b!560251 () Bool)

(declare-fun e!322802 () Bool)

(assert (=> b!560251 (= e!322803 e!322802)))

(declare-fun res!351549 () Bool)

(assert (=> b!560251 (=> res!351549 e!322802)))

(get-info :version)

(assert (=> b!560251 (= res!351549 (or (undefined!6156 lt!254784) (not ((_ is Intermediate!5344) lt!254784))))))

(declare-fun b!560252 () Bool)

(assert (=> b!560252 (= e!322802 e!322799)))

(declare-fun res!351546 () Bool)

(assert (=> b!560252 (=> res!351546 e!322799)))

(declare-fun lt!254781 () (_ BitVec 64))

(assert (=> b!560252 (= res!351546 (or (= lt!254781 (select (arr!16888 a!3118) j!142)) (= lt!254781 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560252 (= lt!254781 (select (arr!16888 a!3118) (index!23605 lt!254784)))))

(declare-fun b!560253 () Bool)

(assert (=> b!560253 (= e!322804 e!322798)))

(declare-fun res!351548 () Bool)

(assert (=> b!560253 (=> (not res!351548) (not e!322798))))

(declare-fun lt!254782 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35183 (_ BitVec 32)) SeekEntryResult!5344)

(assert (=> b!560253 (= res!351548 (= lt!254784 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254782 lt!254780 lt!254778 mask!3119)))))

(declare-fun lt!254779 () (_ BitVec 32))

(assert (=> b!560253 (= lt!254784 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254779 (select (arr!16888 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560253 (= lt!254782 (toIndex!0 lt!254780 mask!3119))))

(assert (=> b!560253 (= lt!254780 (select (store (arr!16888 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!560253 (= lt!254779 (toIndex!0 (select (arr!16888 a!3118) j!142) mask!3119))))

(assert (=> b!560253 (= lt!254778 (array!35184 (store (arr!16888 a!3118) i!1132 k0!1914) (size!17252 a!3118)))))

(declare-fun res!351555 () Bool)

(assert (=> start!51364 (=> (not res!351555) (not e!322800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51364 (= res!351555 (validMask!0 mask!3119))))

(assert (=> start!51364 e!322800))

(assert (=> start!51364 true))

(declare-fun array_inv!12662 (array!35183) Bool)

(assert (=> start!51364 (array_inv!12662 a!3118)))

(declare-fun b!560248 () Bool)

(declare-fun res!351556 () Bool)

(assert (=> b!560248 (=> (not res!351556) (not e!322800))))

(declare-fun arrayContainsKey!0 (array!35183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560248 (= res!351556 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560254 () Bool)

(declare-fun res!351545 () Bool)

(assert (=> b!560254 (=> (not res!351545) (not e!322804))))

(declare-datatypes ((List!11021 0))(
  ( (Nil!11018) (Cons!11017 (h!12020 (_ BitVec 64)) (t!17257 List!11021)) )
))
(declare-fun arrayNoDuplicates!0 (array!35183 (_ BitVec 32) List!11021) Bool)

(assert (=> b!560254 (= res!351545 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11018))))

(declare-fun b!560255 () Bool)

(declare-fun res!351557 () Bool)

(assert (=> b!560255 (=> (not res!351557) (not e!322804))))

(assert (=> b!560255 (= res!351557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51364 res!351555) b!560249))

(assert (= (and b!560249 res!351551) b!560244))

(assert (= (and b!560244 res!351554) b!560250))

(assert (= (and b!560250 res!351547) b!560248))

(assert (= (and b!560248 res!351556) b!560243))

(assert (= (and b!560243 res!351553) b!560255))

(assert (= (and b!560255 res!351557) b!560254))

(assert (= (and b!560254 res!351545) b!560253))

(assert (= (and b!560253 res!351548) b!560246))

(assert (= (and b!560246 res!351550) b!560251))

(assert (= (and b!560251 (not res!351549)) b!560252))

(assert (= (and b!560252 (not res!351546)) b!560245))

(assert (= (and b!560245 res!351552) b!560247))

(declare-fun m!538047 () Bool)

(assert (=> b!560247 m!538047))

(declare-fun m!538049 () Bool)

(assert (=> b!560247 m!538049))

(declare-fun m!538051 () Bool)

(assert (=> b!560246 m!538051))

(assert (=> b!560246 m!538051))

(declare-fun m!538053 () Bool)

(assert (=> b!560246 m!538053))

(declare-fun m!538055 () Bool)

(assert (=> b!560246 m!538055))

(declare-fun m!538057 () Bool)

(assert (=> b!560246 m!538057))

(declare-fun m!538059 () Bool)

(assert (=> b!560255 m!538059))

(declare-fun m!538061 () Bool)

(assert (=> b!560243 m!538061))

(assert (=> b!560253 m!538051))

(declare-fun m!538063 () Bool)

(assert (=> b!560253 m!538063))

(assert (=> b!560253 m!538051))

(declare-fun m!538065 () Bool)

(assert (=> b!560253 m!538065))

(declare-fun m!538067 () Bool)

(assert (=> b!560253 m!538067))

(declare-fun m!538069 () Bool)

(assert (=> b!560253 m!538069))

(declare-fun m!538071 () Bool)

(assert (=> b!560253 m!538071))

(assert (=> b!560253 m!538051))

(declare-fun m!538073 () Bool)

(assert (=> b!560253 m!538073))

(declare-fun m!538075 () Bool)

(assert (=> b!560250 m!538075))

(assert (=> b!560252 m!538051))

(declare-fun m!538077 () Bool)

(assert (=> b!560252 m!538077))

(declare-fun m!538079 () Bool)

(assert (=> b!560248 m!538079))

(declare-fun m!538081 () Bool)

(assert (=> start!51364 m!538081))

(declare-fun m!538083 () Bool)

(assert (=> start!51364 m!538083))

(assert (=> b!560244 m!538051))

(assert (=> b!560244 m!538051))

(declare-fun m!538085 () Bool)

(assert (=> b!560244 m!538085))

(declare-fun m!538087 () Bool)

(assert (=> b!560254 m!538087))

(assert (=> b!560245 m!538051))

(assert (=> b!560245 m!538051))

(declare-fun m!538089 () Bool)

(assert (=> b!560245 m!538089))

(check-sat (not b!560245) (not b!560244) (not start!51364) (not b!560255) (not b!560253) (not b!560250) (not b!560247) (not b!560254) (not b!560248) (not b!560246) (not b!560243))
(check-sat)
