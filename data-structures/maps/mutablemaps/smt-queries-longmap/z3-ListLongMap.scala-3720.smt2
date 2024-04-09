; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51268 () Bool)

(assert start!51268)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5329 0))(
  ( (MissingZero!5329 (index!23543 (_ BitVec 32))) (Found!5329 (index!23544 (_ BitVec 32))) (Intermediate!5329 (undefined!6141 Bool) (index!23545 (_ BitVec 32)) (x!52482 (_ BitVec 32))) (Undefined!5329) (MissingVacant!5329 (index!23546 (_ BitVec 32))) )
))
(declare-fun lt!254252 () SeekEntryResult!5329)

(declare-fun b!559321 () Bool)

(declare-fun lt!254250 () SeekEntryResult!5329)

(declare-datatypes ((array!35150 0))(
  ( (array!35151 (arr!16873 (Array (_ BitVec 32) (_ BitVec 64))) (size!17237 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35150)

(declare-fun e!322237 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35150 (_ BitVec 32)) SeekEntryResult!5329)

(assert (=> b!559321 (= e!322237 (= lt!254252 (seekKeyOrZeroReturnVacant!0 (x!52482 lt!254250) (index!23545 lt!254250) (index!23545 lt!254250) (select (arr!16873 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!559322 () Bool)

(declare-fun res!350870 () Bool)

(declare-fun e!322235 () Bool)

(assert (=> b!559322 (=> (not res!350870) (not e!322235))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!559322 (= res!350870 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!559323 () Bool)

(declare-fun e!322236 () Bool)

(assert (=> b!559323 (= e!322236 (not true))))

(declare-fun e!322233 () Bool)

(assert (=> b!559323 e!322233))

(declare-fun res!350865 () Bool)

(assert (=> b!559323 (=> (not res!350865) (not e!322233))))

(assert (=> b!559323 (= res!350865 (= lt!254252 (Found!5329 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35150 (_ BitVec 32)) SeekEntryResult!5329)

(assert (=> b!559323 (= lt!254252 (seekEntryOrOpen!0 (select (arr!16873 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35150 (_ BitVec 32)) Bool)

(assert (=> b!559323 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17432 0))(
  ( (Unit!17433) )
))
(declare-fun lt!254247 () Unit!17432)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35150 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17432)

(assert (=> b!559323 (= lt!254247 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!559324 () Bool)

(declare-fun res!350861 () Bool)

(declare-fun e!322232 () Bool)

(assert (=> b!559324 (=> (not res!350861) (not e!322232))))

(declare-datatypes ((List!11006 0))(
  ( (Nil!11003) (Cons!11002 (h!12002 (_ BitVec 64)) (t!17242 List!11006)) )
))
(declare-fun arrayNoDuplicates!0 (array!35150 (_ BitVec 32) List!11006) Bool)

(assert (=> b!559324 (= res!350861 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11003))))

(declare-fun b!559325 () Bool)

(assert (=> b!559325 (= e!322235 e!322232)))

(declare-fun res!350864 () Bool)

(assert (=> b!559325 (=> (not res!350864) (not e!322232))))

(declare-fun lt!254249 () SeekEntryResult!5329)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!559325 (= res!350864 (or (= lt!254249 (MissingZero!5329 i!1132)) (= lt!254249 (MissingVacant!5329 i!1132))))))

(assert (=> b!559325 (= lt!254249 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!559326 () Bool)

(declare-fun res!350866 () Bool)

(assert (=> b!559326 (=> (not res!350866) (not e!322235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!559326 (= res!350866 (validKeyInArray!0 (select (arr!16873 a!3118) j!142)))))

(declare-fun b!559327 () Bool)

(declare-fun res!350863 () Bool)

(assert (=> b!559327 (=> (not res!350863) (not e!322235))))

(assert (=> b!559327 (= res!350863 (validKeyInArray!0 k0!1914))))

(declare-fun res!350869 () Bool)

(assert (=> start!51268 (=> (not res!350869) (not e!322235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51268 (= res!350869 (validMask!0 mask!3119))))

(assert (=> start!51268 e!322235))

(assert (=> start!51268 true))

(declare-fun array_inv!12647 (array!35150) Bool)

(assert (=> start!51268 (array_inv!12647 a!3118)))

(declare-fun b!559328 () Bool)

(assert (=> b!559328 (= e!322233 e!322237)))

(declare-fun res!350860 () Bool)

(assert (=> b!559328 (=> res!350860 e!322237)))

(get-info :version)

(assert (=> b!559328 (= res!350860 (or (undefined!6141 lt!254250) (not ((_ is Intermediate!5329) lt!254250)) (= (select (arr!16873 a!3118) (index!23545 lt!254250)) (select (arr!16873 a!3118) j!142)) (= (select (arr!16873 a!3118) (index!23545 lt!254250)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559329 () Bool)

(assert (=> b!559329 (= e!322232 e!322236)))

(declare-fun res!350868 () Bool)

(assert (=> b!559329 (=> (not res!350868) (not e!322236))))

(declare-fun lt!254251 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35150 (_ BitVec 32)) SeekEntryResult!5329)

(assert (=> b!559329 (= res!350868 (= lt!254250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254251 (select (store (arr!16873 a!3118) i!1132 k0!1914) j!142) (array!35151 (store (arr!16873 a!3118) i!1132 k0!1914) (size!17237 a!3118)) mask!3119)))))

(declare-fun lt!254248 () (_ BitVec 32))

(assert (=> b!559329 (= lt!254250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254248 (select (arr!16873 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559329 (= lt!254251 (toIndex!0 (select (store (arr!16873 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!559329 (= lt!254248 (toIndex!0 (select (arr!16873 a!3118) j!142) mask!3119))))

(declare-fun b!559330 () Bool)

(declare-fun res!350862 () Bool)

(assert (=> b!559330 (=> (not res!350862) (not e!322232))))

(assert (=> b!559330 (= res!350862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!559331 () Bool)

(declare-fun res!350867 () Bool)

(assert (=> b!559331 (=> (not res!350867) (not e!322235))))

(assert (=> b!559331 (= res!350867 (and (= (size!17237 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17237 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17237 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51268 res!350869) b!559331))

(assert (= (and b!559331 res!350867) b!559326))

(assert (= (and b!559326 res!350866) b!559327))

(assert (= (and b!559327 res!350863) b!559322))

(assert (= (and b!559322 res!350870) b!559325))

(assert (= (and b!559325 res!350864) b!559330))

(assert (= (and b!559330 res!350862) b!559324))

(assert (= (and b!559324 res!350861) b!559329))

(assert (= (and b!559329 res!350868) b!559323))

(assert (= (and b!559323 res!350865) b!559328))

(assert (= (and b!559328 (not res!350860)) b!559321))

(declare-fun m!537173 () Bool)

(assert (=> b!559330 m!537173))

(declare-fun m!537175 () Bool)

(assert (=> b!559323 m!537175))

(assert (=> b!559323 m!537175))

(declare-fun m!537177 () Bool)

(assert (=> b!559323 m!537177))

(declare-fun m!537179 () Bool)

(assert (=> b!559323 m!537179))

(declare-fun m!537181 () Bool)

(assert (=> b!559323 m!537181))

(assert (=> b!559321 m!537175))

(assert (=> b!559321 m!537175))

(declare-fun m!537183 () Bool)

(assert (=> b!559321 m!537183))

(declare-fun m!537185 () Bool)

(assert (=> b!559328 m!537185))

(assert (=> b!559328 m!537175))

(declare-fun m!537187 () Bool)

(assert (=> start!51268 m!537187))

(declare-fun m!537189 () Bool)

(assert (=> start!51268 m!537189))

(declare-fun m!537191 () Bool)

(assert (=> b!559322 m!537191))

(declare-fun m!537193 () Bool)

(assert (=> b!559324 m!537193))

(declare-fun m!537195 () Bool)

(assert (=> b!559325 m!537195))

(declare-fun m!537197 () Bool)

(assert (=> b!559327 m!537197))

(assert (=> b!559326 m!537175))

(assert (=> b!559326 m!537175))

(declare-fun m!537199 () Bool)

(assert (=> b!559326 m!537199))

(declare-fun m!537201 () Bool)

(assert (=> b!559329 m!537201))

(declare-fun m!537203 () Bool)

(assert (=> b!559329 m!537203))

(assert (=> b!559329 m!537175))

(declare-fun m!537205 () Bool)

(assert (=> b!559329 m!537205))

(assert (=> b!559329 m!537175))

(assert (=> b!559329 m!537175))

(declare-fun m!537207 () Bool)

(assert (=> b!559329 m!537207))

(assert (=> b!559329 m!537201))

(declare-fun m!537209 () Bool)

(assert (=> b!559329 m!537209))

(assert (=> b!559329 m!537201))

(declare-fun m!537211 () Bool)

(assert (=> b!559329 m!537211))

(check-sat (not b!559325) (not b!559330) (not b!559327) (not b!559326) (not b!559324) (not b!559323) (not b!559329) (not b!559321) (not b!559322) (not start!51268))
(check-sat)
