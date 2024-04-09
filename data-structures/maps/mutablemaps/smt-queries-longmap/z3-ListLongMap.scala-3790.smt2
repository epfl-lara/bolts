; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51934 () Bool)

(assert start!51934)

(declare-fun b!567338 () Bool)

(declare-fun res!358073 () Bool)

(declare-fun e!326450 () Bool)

(assert (=> b!567338 (=> (not res!358073) (not e!326450))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35582 0))(
  ( (array!35583 (arr!17083 (Array (_ BitVec 32) (_ BitVec 64))) (size!17447 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35582)

(assert (=> b!567338 (= res!358073 (and (= (size!17447 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17447 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17447 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567339 () Bool)

(declare-fun res!358082 () Bool)

(assert (=> b!567339 (=> (not res!358082) (not e!326450))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567339 (= res!358082 (validKeyInArray!0 k0!1914))))

(declare-fun res!358080 () Bool)

(assert (=> start!51934 (=> (not res!358080) (not e!326450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51934 (= res!358080 (validMask!0 mask!3119))))

(assert (=> start!51934 e!326450))

(assert (=> start!51934 true))

(declare-fun array_inv!12857 (array!35582) Bool)

(assert (=> start!51934 (array_inv!12857 a!3118)))

(declare-fun b!567340 () Bool)

(declare-fun res!358075 () Bool)

(declare-fun e!326451 () Bool)

(assert (=> b!567340 (=> (not res!358075) (not e!326451))))

(declare-datatypes ((SeekEntryResult!5539 0))(
  ( (MissingZero!5539 (index!24383 (_ BitVec 32))) (Found!5539 (index!24384 (_ BitVec 32))) (Intermediate!5539 (undefined!6351 Bool) (index!24385 (_ BitVec 32)) (x!53279 (_ BitVec 32))) (Undefined!5539) (MissingVacant!5539 (index!24386 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35582 (_ BitVec 32)) SeekEntryResult!5539)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567340 (= res!358075 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17083 a!3118) j!142) mask!3119) (select (arr!17083 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17083 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17083 a!3118) i!1132 k0!1914) j!142) (array!35583 (store (arr!17083 a!3118) i!1132 k0!1914) (size!17447 a!3118)) mask!3119)))))

(declare-fun b!567341 () Bool)

(declare-fun res!358074 () Bool)

(assert (=> b!567341 (=> (not res!358074) (not e!326451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35582 (_ BitVec 32)) Bool)

(assert (=> b!567341 (= res!358074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567342 () Bool)

(declare-fun res!358079 () Bool)

(assert (=> b!567342 (=> (not res!358079) (not e!326450))))

(declare-fun arrayContainsKey!0 (array!35582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567342 (= res!358079 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567343 () Bool)

(declare-fun e!326449 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35582 (_ BitVec 32)) SeekEntryResult!5539)

(assert (=> b!567343 (= e!326449 (= (seekEntryOrOpen!0 (select (arr!17083 a!3118) j!142) a!3118 mask!3119) (Found!5539 j!142)))))

(declare-fun b!567344 () Bool)

(assert (=> b!567344 (= e!326450 e!326451)))

(declare-fun res!358078 () Bool)

(assert (=> b!567344 (=> (not res!358078) (not e!326451))))

(declare-fun lt!258496 () SeekEntryResult!5539)

(assert (=> b!567344 (= res!358078 (or (= lt!258496 (MissingZero!5539 i!1132)) (= lt!258496 (MissingVacant!5539 i!1132))))))

(assert (=> b!567344 (= lt!258496 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!567345 () Bool)

(declare-fun res!358081 () Bool)

(assert (=> b!567345 (=> (not res!358081) (not e!326451))))

(declare-datatypes ((List!11216 0))(
  ( (Nil!11213) (Cons!11212 (h!12224 (_ BitVec 64)) (t!17452 List!11216)) )
))
(declare-fun arrayNoDuplicates!0 (array!35582 (_ BitVec 32) List!11216) Bool)

(assert (=> b!567345 (= res!358081 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11213))))

(declare-fun b!567346 () Bool)

(assert (=> b!567346 (= e!326451 (not true))))

(assert (=> b!567346 e!326449))

(declare-fun res!358076 () Bool)

(assert (=> b!567346 (=> (not res!358076) (not e!326449))))

(assert (=> b!567346 (= res!358076 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17780 0))(
  ( (Unit!17781) )
))
(declare-fun lt!258497 () Unit!17780)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35582 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17780)

(assert (=> b!567346 (= lt!258497 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567347 () Bool)

(declare-fun res!358077 () Bool)

(assert (=> b!567347 (=> (not res!358077) (not e!326450))))

(assert (=> b!567347 (= res!358077 (validKeyInArray!0 (select (arr!17083 a!3118) j!142)))))

(assert (= (and start!51934 res!358080) b!567338))

(assert (= (and b!567338 res!358073) b!567347))

(assert (= (and b!567347 res!358077) b!567339))

(assert (= (and b!567339 res!358082) b!567342))

(assert (= (and b!567342 res!358079) b!567344))

(assert (= (and b!567344 res!358078) b!567341))

(assert (= (and b!567341 res!358074) b!567345))

(assert (= (and b!567345 res!358081) b!567340))

(assert (= (and b!567340 res!358075) b!567346))

(assert (= (and b!567346 res!358076) b!567343))

(declare-fun m!545983 () Bool)

(assert (=> b!567340 m!545983))

(declare-fun m!545985 () Bool)

(assert (=> b!567340 m!545985))

(assert (=> b!567340 m!545983))

(declare-fun m!545987 () Bool)

(assert (=> b!567340 m!545987))

(declare-fun m!545989 () Bool)

(assert (=> b!567340 m!545989))

(assert (=> b!567340 m!545987))

(declare-fun m!545991 () Bool)

(assert (=> b!567340 m!545991))

(assert (=> b!567340 m!545985))

(assert (=> b!567340 m!545983))

(declare-fun m!545993 () Bool)

(assert (=> b!567340 m!545993))

(declare-fun m!545995 () Bool)

(assert (=> b!567340 m!545995))

(assert (=> b!567340 m!545987))

(assert (=> b!567340 m!545989))

(declare-fun m!545997 () Bool)

(assert (=> b!567342 m!545997))

(declare-fun m!545999 () Bool)

(assert (=> b!567339 m!545999))

(assert (=> b!567347 m!545983))

(assert (=> b!567347 m!545983))

(declare-fun m!546001 () Bool)

(assert (=> b!567347 m!546001))

(assert (=> b!567343 m!545983))

(assert (=> b!567343 m!545983))

(declare-fun m!546003 () Bool)

(assert (=> b!567343 m!546003))

(declare-fun m!546005 () Bool)

(assert (=> start!51934 m!546005))

(declare-fun m!546007 () Bool)

(assert (=> start!51934 m!546007))

(declare-fun m!546009 () Bool)

(assert (=> b!567345 m!546009))

(declare-fun m!546011 () Bool)

(assert (=> b!567341 m!546011))

(declare-fun m!546013 () Bool)

(assert (=> b!567344 m!546013))

(declare-fun m!546015 () Bool)

(assert (=> b!567346 m!546015))

(declare-fun m!546017 () Bool)

(assert (=> b!567346 m!546017))

(check-sat (not b!567347) (not b!567343) (not b!567339) (not b!567344) (not b!567340) (not start!51934) (not b!567342) (not b!567345) (not b!567341) (not b!567346))
(check-sat)
