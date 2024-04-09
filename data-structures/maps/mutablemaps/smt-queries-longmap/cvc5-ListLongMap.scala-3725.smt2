; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51362 () Bool)

(assert start!51362)

(declare-fun b!560204 () Bool)

(declare-fun e!322773 () Bool)

(declare-fun e!322780 () Bool)

(assert (=> b!560204 (= e!322773 e!322780)))

(declare-fun res!351509 () Bool)

(assert (=> b!560204 (=> (not res!351509) (not e!322780))))

(declare-fun lt!254751 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!254759 () (_ BitVec 64))

(declare-datatypes ((array!35181 0))(
  ( (array!35182 (arr!16887 (Array (_ BitVec 32) (_ BitVec 64))) (size!17251 (_ BitVec 32))) )
))
(declare-fun lt!254755 () array!35181)

(declare-datatypes ((SeekEntryResult!5343 0))(
  ( (MissingZero!5343 (index!23599 (_ BitVec 32))) (Found!5343 (index!23600 (_ BitVec 32))) (Intermediate!5343 (undefined!6155 Bool) (index!23601 (_ BitVec 32)) (x!52545 (_ BitVec 32))) (Undefined!5343) (MissingVacant!5343 (index!23602 (_ BitVec 32))) )
))
(declare-fun lt!254753 () SeekEntryResult!5343)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35181 (_ BitVec 32)) SeekEntryResult!5343)

(assert (=> b!560204 (= res!351509 (= lt!254753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254751 lt!254759 lt!254755 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!254752 () (_ BitVec 32))

(declare-fun a!3118 () array!35181)

(assert (=> b!560204 (= lt!254753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254752 (select (arr!16887 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560204 (= lt!254751 (toIndex!0 lt!254759 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!560204 (= lt!254759 (select (store (arr!16887 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560204 (= lt!254752 (toIndex!0 (select (arr!16887 a!3118) j!142) mask!3119))))

(assert (=> b!560204 (= lt!254755 (array!35182 (store (arr!16887 a!3118) i!1132 k!1914) (size!17251 a!3118)))))

(declare-fun b!560205 () Bool)

(declare-fun e!322776 () Bool)

(declare-fun e!322779 () Bool)

(assert (=> b!560205 (= e!322776 e!322779)))

(declare-fun res!351518 () Bool)

(assert (=> b!560205 (=> res!351518 e!322779)))

(declare-fun lt!254756 () (_ BitVec 64))

(assert (=> b!560205 (= res!351518 (or (= lt!254756 (select (arr!16887 a!3118) j!142)) (= lt!254756 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560205 (= lt!254756 (select (arr!16887 a!3118) (index!23601 lt!254753)))))

(declare-fun b!560206 () Bool)

(declare-fun res!351511 () Bool)

(declare-fun e!322777 () Bool)

(assert (=> b!560206 (=> (not res!351511) (not e!322777))))

(assert (=> b!560206 (= res!351511 (and (= (size!17251 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17251 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17251 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560207 () Bool)

(assert (=> b!560207 (= e!322780 (not true))))

(declare-fun e!322775 () Bool)

(assert (=> b!560207 e!322775))

(declare-fun res!351517 () Bool)

(assert (=> b!560207 (=> (not res!351517) (not e!322775))))

(declare-fun lt!254754 () SeekEntryResult!5343)

(assert (=> b!560207 (= res!351517 (= lt!254754 (Found!5343 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35181 (_ BitVec 32)) SeekEntryResult!5343)

(assert (=> b!560207 (= lt!254754 (seekEntryOrOpen!0 (select (arr!16887 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35181 (_ BitVec 32)) Bool)

(assert (=> b!560207 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17460 0))(
  ( (Unit!17461) )
))
(declare-fun lt!254757 () Unit!17460)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35181 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17460)

(assert (=> b!560207 (= lt!254757 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560208 () Bool)

(declare-fun res!351510 () Bool)

(assert (=> b!560208 (=> (not res!351510) (not e!322777))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560208 (= res!351510 (validKeyInArray!0 (select (arr!16887 a!3118) j!142)))))

(declare-fun b!560209 () Bool)

(declare-fun res!351516 () Bool)

(assert (=> b!560209 (=> (not res!351516) (not e!322777))))

(assert (=> b!560209 (= res!351516 (validKeyInArray!0 k!1914))))

(declare-fun res!351506 () Bool)

(assert (=> start!51362 (=> (not res!351506) (not e!322777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51362 (= res!351506 (validMask!0 mask!3119))))

(assert (=> start!51362 e!322777))

(assert (=> start!51362 true))

(declare-fun array_inv!12661 (array!35181) Bool)

(assert (=> start!51362 (array_inv!12661 a!3118)))

(declare-fun b!560210 () Bool)

(declare-fun res!351507 () Bool)

(assert (=> b!560210 (=> (not res!351507) (not e!322773))))

(declare-datatypes ((List!11020 0))(
  ( (Nil!11017) (Cons!11016 (h!12019 (_ BitVec 64)) (t!17256 List!11020)) )
))
(declare-fun arrayNoDuplicates!0 (array!35181 (_ BitVec 32) List!11020) Bool)

(assert (=> b!560210 (= res!351507 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11017))))

(declare-fun b!560211 () Bool)

(declare-fun res!351513 () Bool)

(assert (=> b!560211 (=> (not res!351513) (not e!322773))))

(assert (=> b!560211 (= res!351513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!322774 () Bool)

(declare-fun b!560212 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35181 (_ BitVec 32)) SeekEntryResult!5343)

(assert (=> b!560212 (= e!322774 (= (seekEntryOrOpen!0 lt!254759 lt!254755 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52545 lt!254753) (index!23601 lt!254753) (index!23601 lt!254753) lt!254759 lt!254755 mask!3119)))))

(declare-fun b!560213 () Bool)

(declare-fun res!351512 () Bool)

(assert (=> b!560213 (=> (not res!351512) (not e!322777))))

(declare-fun arrayContainsKey!0 (array!35181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560213 (= res!351512 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560214 () Bool)

(assert (=> b!560214 (= e!322775 e!322776)))

(declare-fun res!351508 () Bool)

(assert (=> b!560214 (=> res!351508 e!322776)))

(assert (=> b!560214 (= res!351508 (or (undefined!6155 lt!254753) (not (is-Intermediate!5343 lt!254753))))))

(declare-fun b!560215 () Bool)

(assert (=> b!560215 (= e!322777 e!322773)))

(declare-fun res!351515 () Bool)

(assert (=> b!560215 (=> (not res!351515) (not e!322773))))

(declare-fun lt!254758 () SeekEntryResult!5343)

(assert (=> b!560215 (= res!351515 (or (= lt!254758 (MissingZero!5343 i!1132)) (= lt!254758 (MissingVacant!5343 i!1132))))))

(assert (=> b!560215 (= lt!254758 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560216 () Bool)

(assert (=> b!560216 (= e!322779 e!322774)))

(declare-fun res!351514 () Bool)

(assert (=> b!560216 (=> (not res!351514) (not e!322774))))

(assert (=> b!560216 (= res!351514 (= lt!254754 (seekKeyOrZeroReturnVacant!0 (x!52545 lt!254753) (index!23601 lt!254753) (index!23601 lt!254753) (select (arr!16887 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!51362 res!351506) b!560206))

(assert (= (and b!560206 res!351511) b!560208))

(assert (= (and b!560208 res!351510) b!560209))

(assert (= (and b!560209 res!351516) b!560213))

(assert (= (and b!560213 res!351512) b!560215))

(assert (= (and b!560215 res!351515) b!560211))

(assert (= (and b!560211 res!351513) b!560210))

(assert (= (and b!560210 res!351507) b!560204))

(assert (= (and b!560204 res!351509) b!560207))

(assert (= (and b!560207 res!351517) b!560214))

(assert (= (and b!560214 (not res!351508)) b!560205))

(assert (= (and b!560205 (not res!351518)) b!560216))

(assert (= (and b!560216 res!351514) b!560212))

(declare-fun m!538003 () Bool)

(assert (=> b!560204 m!538003))

(declare-fun m!538005 () Bool)

(assert (=> b!560204 m!538005))

(declare-fun m!538007 () Bool)

(assert (=> b!560204 m!538007))

(assert (=> b!560204 m!538003))

(declare-fun m!538009 () Bool)

(assert (=> b!560204 m!538009))

(declare-fun m!538011 () Bool)

(assert (=> b!560204 m!538011))

(assert (=> b!560204 m!538003))

(declare-fun m!538013 () Bool)

(assert (=> b!560204 m!538013))

(declare-fun m!538015 () Bool)

(assert (=> b!560204 m!538015))

(declare-fun m!538017 () Bool)

(assert (=> start!51362 m!538017))

(declare-fun m!538019 () Bool)

(assert (=> start!51362 m!538019))

(declare-fun m!538021 () Bool)

(assert (=> b!560211 m!538021))

(declare-fun m!538023 () Bool)

(assert (=> b!560215 m!538023))

(declare-fun m!538025 () Bool)

(assert (=> b!560212 m!538025))

(declare-fun m!538027 () Bool)

(assert (=> b!560212 m!538027))

(assert (=> b!560207 m!538003))

(assert (=> b!560207 m!538003))

(declare-fun m!538029 () Bool)

(assert (=> b!560207 m!538029))

(declare-fun m!538031 () Bool)

(assert (=> b!560207 m!538031))

(declare-fun m!538033 () Bool)

(assert (=> b!560207 m!538033))

(declare-fun m!538035 () Bool)

(assert (=> b!560210 m!538035))

(assert (=> b!560205 m!538003))

(declare-fun m!538037 () Bool)

(assert (=> b!560205 m!538037))

(declare-fun m!538039 () Bool)

(assert (=> b!560209 m!538039))

(assert (=> b!560208 m!538003))

(assert (=> b!560208 m!538003))

(declare-fun m!538041 () Bool)

(assert (=> b!560208 m!538041))

(declare-fun m!538043 () Bool)

(assert (=> b!560213 m!538043))

(assert (=> b!560216 m!538003))

(assert (=> b!560216 m!538003))

(declare-fun m!538045 () Bool)

(assert (=> b!560216 m!538045))

(push 1)

