; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51928 () Bool)

(assert start!51928)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!567248 () Bool)

(declare-datatypes ((array!35576 0))(
  ( (array!35577 (arr!17080 (Array (_ BitVec 32) (_ BitVec 64))) (size!17444 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35576)

(declare-fun e!326415 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5536 0))(
  ( (MissingZero!5536 (index!24371 (_ BitVec 32))) (Found!5536 (index!24372 (_ BitVec 32))) (Intermediate!5536 (undefined!6348 Bool) (index!24373 (_ BitVec 32)) (x!53268 (_ BitVec 32))) (Undefined!5536) (MissingVacant!5536 (index!24374 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35576 (_ BitVec 32)) SeekEntryResult!5536)

(assert (=> b!567248 (= e!326415 (= (seekEntryOrOpen!0 (select (arr!17080 a!3118) j!142) a!3118 mask!3119) (Found!5536 j!142)))))

(declare-fun b!567249 () Bool)

(declare-fun res!357985 () Bool)

(declare-fun e!326416 () Bool)

(assert (=> b!567249 (=> (not res!357985) (not e!326416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567249 (= res!357985 (validKeyInArray!0 (select (arr!17080 a!3118) j!142)))))

(declare-fun b!567250 () Bool)

(declare-fun res!357992 () Bool)

(assert (=> b!567250 (=> (not res!357992) (not e!326416))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567250 (= res!357992 (and (= (size!17444 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17444 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17444 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567251 () Bool)

(declare-fun res!357991 () Bool)

(declare-fun e!326413 () Bool)

(assert (=> b!567251 (=> (not res!357991) (not e!326413))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35576 (_ BitVec 32)) SeekEntryResult!5536)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567251 (= res!357991 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17080 a!3118) j!142) mask!3119) (select (arr!17080 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17080 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17080 a!3118) i!1132 k0!1914) j!142) (array!35577 (store (arr!17080 a!3118) i!1132 k0!1914) (size!17444 a!3118)) mask!3119)))))

(declare-fun b!567252 () Bool)

(declare-fun res!357989 () Bool)

(assert (=> b!567252 (=> (not res!357989) (not e!326416))))

(declare-fun arrayContainsKey!0 (array!35576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567252 (= res!357989 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!357984 () Bool)

(assert (=> start!51928 (=> (not res!357984) (not e!326416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51928 (= res!357984 (validMask!0 mask!3119))))

(assert (=> start!51928 e!326416))

(assert (=> start!51928 true))

(declare-fun array_inv!12854 (array!35576) Bool)

(assert (=> start!51928 (array_inv!12854 a!3118)))

(declare-fun b!567253 () Bool)

(assert (=> b!567253 (= e!326413 (not true))))

(assert (=> b!567253 e!326415))

(declare-fun res!357987 () Bool)

(assert (=> b!567253 (=> (not res!357987) (not e!326415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35576 (_ BitVec 32)) Bool)

(assert (=> b!567253 (= res!357987 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17774 0))(
  ( (Unit!17775) )
))
(declare-fun lt!258478 () Unit!17774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35576 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17774)

(assert (=> b!567253 (= lt!258478 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567254 () Bool)

(assert (=> b!567254 (= e!326416 e!326413)))

(declare-fun res!357988 () Bool)

(assert (=> b!567254 (=> (not res!357988) (not e!326413))))

(declare-fun lt!258479 () SeekEntryResult!5536)

(assert (=> b!567254 (= res!357988 (or (= lt!258479 (MissingZero!5536 i!1132)) (= lt!258479 (MissingVacant!5536 i!1132))))))

(assert (=> b!567254 (= lt!258479 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!567255 () Bool)

(declare-fun res!357986 () Bool)

(assert (=> b!567255 (=> (not res!357986) (not e!326413))))

(assert (=> b!567255 (= res!357986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567256 () Bool)

(declare-fun res!357990 () Bool)

(assert (=> b!567256 (=> (not res!357990) (not e!326416))))

(assert (=> b!567256 (= res!357990 (validKeyInArray!0 k0!1914))))

(declare-fun b!567257 () Bool)

(declare-fun res!357983 () Bool)

(assert (=> b!567257 (=> (not res!357983) (not e!326413))))

(declare-datatypes ((List!11213 0))(
  ( (Nil!11210) (Cons!11209 (h!12221 (_ BitVec 64)) (t!17449 List!11213)) )
))
(declare-fun arrayNoDuplicates!0 (array!35576 (_ BitVec 32) List!11213) Bool)

(assert (=> b!567257 (= res!357983 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11210))))

(assert (= (and start!51928 res!357984) b!567250))

(assert (= (and b!567250 res!357992) b!567249))

(assert (= (and b!567249 res!357985) b!567256))

(assert (= (and b!567256 res!357990) b!567252))

(assert (= (and b!567252 res!357989) b!567254))

(assert (= (and b!567254 res!357988) b!567255))

(assert (= (and b!567255 res!357986) b!567257))

(assert (= (and b!567257 res!357983) b!567251))

(assert (= (and b!567251 res!357991) b!567253))

(assert (= (and b!567253 res!357987) b!567248))

(declare-fun m!545875 () Bool)

(assert (=> b!567248 m!545875))

(assert (=> b!567248 m!545875))

(declare-fun m!545877 () Bool)

(assert (=> b!567248 m!545877))

(declare-fun m!545879 () Bool)

(assert (=> b!567254 m!545879))

(declare-fun m!545881 () Bool)

(assert (=> b!567255 m!545881))

(declare-fun m!545883 () Bool)

(assert (=> b!567256 m!545883))

(assert (=> b!567249 m!545875))

(assert (=> b!567249 m!545875))

(declare-fun m!545885 () Bool)

(assert (=> b!567249 m!545885))

(declare-fun m!545887 () Bool)

(assert (=> b!567253 m!545887))

(declare-fun m!545889 () Bool)

(assert (=> b!567253 m!545889))

(declare-fun m!545891 () Bool)

(assert (=> b!567252 m!545891))

(declare-fun m!545893 () Bool)

(assert (=> start!51928 m!545893))

(declare-fun m!545895 () Bool)

(assert (=> start!51928 m!545895))

(assert (=> b!567251 m!545875))

(declare-fun m!545897 () Bool)

(assert (=> b!567251 m!545897))

(assert (=> b!567251 m!545875))

(declare-fun m!545899 () Bool)

(assert (=> b!567251 m!545899))

(declare-fun m!545901 () Bool)

(assert (=> b!567251 m!545901))

(assert (=> b!567251 m!545899))

(declare-fun m!545903 () Bool)

(assert (=> b!567251 m!545903))

(assert (=> b!567251 m!545897))

(assert (=> b!567251 m!545875))

(declare-fun m!545905 () Bool)

(assert (=> b!567251 m!545905))

(declare-fun m!545907 () Bool)

(assert (=> b!567251 m!545907))

(assert (=> b!567251 m!545899))

(assert (=> b!567251 m!545901))

(declare-fun m!545909 () Bool)

(assert (=> b!567257 m!545909))

(check-sat (not b!567255) (not b!567253) (not b!567252) (not b!567257) (not b!567256) (not b!567254) (not b!567251) (not b!567249) (not b!567248) (not start!51928))
(check-sat)
