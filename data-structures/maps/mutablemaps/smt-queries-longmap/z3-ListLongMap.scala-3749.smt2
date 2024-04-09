; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51508 () Bool)

(assert start!51508)

(declare-fun b!562988 () Bool)

(declare-fun e!324465 () Bool)

(declare-fun e!324463 () Bool)

(assert (=> b!562988 (= e!324465 e!324463)))

(declare-fun res!354292 () Bool)

(assert (=> b!562988 (=> res!354292 e!324463)))

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!562988 (= res!354292 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!5416 0))(
  ( (MissingZero!5416 (index!23891 (_ BitVec 32))) (Found!5416 (index!23892 (_ BitVec 32))) (Intermediate!5416 (undefined!6228 Bool) (index!23893 (_ BitVec 32)) (x!52810 (_ BitVec 32))) (Undefined!5416) (MissingVacant!5416 (index!23894 (_ BitVec 32))) )
))
(declare-fun lt!257063 () SeekEntryResult!5416)

(declare-fun lt!257070 () SeekEntryResult!5416)

(assert (=> b!562988 (= lt!257063 lt!257070)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35327 0))(
  ( (array!35328 (arr!16960 (Array (_ BitVec 32) (_ BitVec 64))) (size!17324 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35327)

(declare-datatypes ((Unit!17606 0))(
  ( (Unit!17607) )
))
(declare-fun lt!257068 () Unit!17606)

(declare-fun lt!257073 () SeekEntryResult!5416)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35327 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17606)

(assert (=> b!562988 (= lt!257068 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!52810 lt!257073) (index!23893 lt!257073) (index!23893 lt!257073) mask!3119))))

(declare-fun b!562989 () Bool)

(declare-fun res!354301 () Bool)

(declare-fun e!324462 () Bool)

(assert (=> b!562989 (=> (not res!354301) (not e!324462))))

(assert (=> b!562989 (= res!354301 (and (= (size!17324 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17324 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17324 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562990 () Bool)

(declare-fun e!324464 () Bool)

(declare-fun e!324469 () Bool)

(assert (=> b!562990 (= e!324464 e!324469)))

(declare-fun res!354298 () Bool)

(assert (=> b!562990 (=> (not res!354298) (not e!324469))))

(declare-fun lt!257065 () array!35327)

(declare-fun lt!257062 () (_ BitVec 64))

(declare-fun lt!257074 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35327 (_ BitVec 32)) SeekEntryResult!5416)

(assert (=> b!562990 (= res!354298 (= lt!257073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257074 lt!257062 lt!257065 mask!3119)))))

(declare-fun lt!257071 () (_ BitVec 32))

(assert (=> b!562990 (= lt!257073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257071 (select (arr!16960 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562990 (= lt!257074 (toIndex!0 lt!257062 mask!3119))))

(assert (=> b!562990 (= lt!257062 (select (store (arr!16960 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!562990 (= lt!257071 (toIndex!0 (select (arr!16960 a!3118) j!142) mask!3119))))

(assert (=> b!562990 (= lt!257065 (array!35328 (store (arr!16960 a!3118) i!1132 k0!1914) (size!17324 a!3118)))))

(declare-fun b!562991 () Bool)

(declare-fun e!324468 () Bool)

(assert (=> b!562991 (= e!324468 e!324465)))

(declare-fun res!354302 () Bool)

(assert (=> b!562991 (=> res!354302 e!324465)))

(declare-fun lt!257064 () SeekEntryResult!5416)

(declare-fun lt!257067 () (_ BitVec 64))

(assert (=> b!562991 (= res!354302 (or (bvslt (index!23893 lt!257073) #b00000000000000000000000000000000) (bvsge (index!23893 lt!257073) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52810 lt!257073) #b01111111111111111111111111111110) (bvslt (x!52810 lt!257073) #b00000000000000000000000000000000) (not (= lt!257067 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16960 a!3118) i!1132 k0!1914) (index!23893 lt!257073)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!257063 lt!257064))))))

(declare-fun lt!257072 () SeekEntryResult!5416)

(assert (=> b!562991 (= lt!257072 lt!257070)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35327 (_ BitVec 32)) SeekEntryResult!5416)

(assert (=> b!562991 (= lt!257070 (seekKeyOrZeroReturnVacant!0 (x!52810 lt!257073) (index!23893 lt!257073) (index!23893 lt!257073) lt!257062 lt!257065 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35327 (_ BitVec 32)) SeekEntryResult!5416)

(assert (=> b!562991 (= lt!257072 (seekEntryOrOpen!0 lt!257062 lt!257065 mask!3119))))

(declare-fun lt!257075 () SeekEntryResult!5416)

(assert (=> b!562991 (= lt!257075 lt!257063)))

(assert (=> b!562991 (= lt!257063 (seekKeyOrZeroReturnVacant!0 (x!52810 lt!257073) (index!23893 lt!257073) (index!23893 lt!257073) (select (arr!16960 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562992 () Bool)

(declare-fun e!324467 () Bool)

(assert (=> b!562992 (= e!324467 e!324468)))

(declare-fun res!354294 () Bool)

(assert (=> b!562992 (=> res!354294 e!324468)))

(assert (=> b!562992 (= res!354294 (or (= lt!257067 (select (arr!16960 a!3118) j!142)) (= lt!257067 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562992 (= lt!257067 (select (arr!16960 a!3118) (index!23893 lt!257073)))))

(declare-fun b!562993 () Bool)

(assert (=> b!562993 (= e!324462 e!324464)))

(declare-fun res!354296 () Bool)

(assert (=> b!562993 (=> (not res!354296) (not e!324464))))

(declare-fun lt!257069 () SeekEntryResult!5416)

(assert (=> b!562993 (= res!354296 (or (= lt!257069 (MissingZero!5416 i!1132)) (= lt!257069 (MissingVacant!5416 i!1132))))))

(assert (=> b!562993 (= lt!257069 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!562994 () Bool)

(declare-fun res!354291 () Bool)

(assert (=> b!562994 (=> (not res!354291) (not e!324462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562994 (= res!354291 (validKeyInArray!0 k0!1914))))

(declare-fun b!562995 () Bool)

(declare-fun res!354297 () Bool)

(assert (=> b!562995 (=> (not res!354297) (not e!324464))))

(declare-datatypes ((List!11093 0))(
  ( (Nil!11090) (Cons!11089 (h!12092 (_ BitVec 64)) (t!17329 List!11093)) )
))
(declare-fun arrayNoDuplicates!0 (array!35327 (_ BitVec 32) List!11093) Bool)

(assert (=> b!562995 (= res!354297 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11090))))

(declare-fun b!562996 () Bool)

(declare-fun res!354300 () Bool)

(assert (=> b!562996 (=> (not res!354300) (not e!324462))))

(assert (=> b!562996 (= res!354300 (validKeyInArray!0 (select (arr!16960 a!3118) j!142)))))

(declare-fun b!562997 () Bool)

(declare-fun res!354295 () Bool)

(assert (=> b!562997 (=> (not res!354295) (not e!324464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35327 (_ BitVec 32)) Bool)

(assert (=> b!562997 (= res!354295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562998 () Bool)

(declare-fun res!354290 () Bool)

(assert (=> b!562998 (=> (not res!354290) (not e!324462))))

(declare-fun arrayContainsKey!0 (array!35327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562998 (= res!354290 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!354299 () Bool)

(assert (=> start!51508 (=> (not res!354299) (not e!324462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51508 (= res!354299 (validMask!0 mask!3119))))

(assert (=> start!51508 e!324462))

(assert (=> start!51508 true))

(declare-fun array_inv!12734 (array!35327) Bool)

(assert (=> start!51508 (array_inv!12734 a!3118)))

(declare-fun b!562999 () Bool)

(assert (=> b!562999 (= e!324463 (validKeyInArray!0 lt!257062))))

(declare-fun b!563000 () Bool)

(assert (=> b!563000 (= e!324469 (not e!324467))))

(declare-fun res!354293 () Bool)

(assert (=> b!563000 (=> res!354293 e!324467)))

(get-info :version)

(assert (=> b!563000 (= res!354293 (or (undefined!6228 lt!257073) (not ((_ is Intermediate!5416) lt!257073))))))

(assert (=> b!563000 (= lt!257075 lt!257064)))

(assert (=> b!563000 (= lt!257064 (Found!5416 j!142))))

(assert (=> b!563000 (= lt!257075 (seekEntryOrOpen!0 (select (arr!16960 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!563000 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!257066 () Unit!17606)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35327 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17606)

(assert (=> b!563000 (= lt!257066 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51508 res!354299) b!562989))

(assert (= (and b!562989 res!354301) b!562996))

(assert (= (and b!562996 res!354300) b!562994))

(assert (= (and b!562994 res!354291) b!562998))

(assert (= (and b!562998 res!354290) b!562993))

(assert (= (and b!562993 res!354296) b!562997))

(assert (= (and b!562997 res!354295) b!562995))

(assert (= (and b!562995 res!354297) b!562990))

(assert (= (and b!562990 res!354298) b!563000))

(assert (= (and b!563000 (not res!354293)) b!562992))

(assert (= (and b!562992 (not res!354294)) b!562991))

(assert (= (and b!562991 (not res!354302)) b!562988))

(assert (= (and b!562988 (not res!354292)) b!562999))

(declare-fun m!541305 () Bool)

(assert (=> b!563000 m!541305))

(assert (=> b!563000 m!541305))

(declare-fun m!541307 () Bool)

(assert (=> b!563000 m!541307))

(declare-fun m!541309 () Bool)

(assert (=> b!563000 m!541309))

(declare-fun m!541311 () Bool)

(assert (=> b!563000 m!541311))

(declare-fun m!541313 () Bool)

(assert (=> b!562997 m!541313))

(declare-fun m!541315 () Bool)

(assert (=> b!562991 m!541315))

(assert (=> b!562991 m!541305))

(declare-fun m!541317 () Bool)

(assert (=> b!562991 m!541317))

(assert (=> b!562991 m!541305))

(declare-fun m!541319 () Bool)

(assert (=> b!562991 m!541319))

(declare-fun m!541321 () Bool)

(assert (=> b!562991 m!541321))

(declare-fun m!541323 () Bool)

(assert (=> b!562991 m!541323))

(declare-fun m!541325 () Bool)

(assert (=> b!562988 m!541325))

(declare-fun m!541327 () Bool)

(assert (=> b!562995 m!541327))

(declare-fun m!541329 () Bool)

(assert (=> start!51508 m!541329))

(declare-fun m!541331 () Bool)

(assert (=> start!51508 m!541331))

(assert (=> b!562990 m!541305))

(declare-fun m!541333 () Bool)

(assert (=> b!562990 m!541333))

(assert (=> b!562990 m!541305))

(declare-fun m!541335 () Bool)

(assert (=> b!562990 m!541335))

(declare-fun m!541337 () Bool)

(assert (=> b!562990 m!541337))

(assert (=> b!562990 m!541305))

(assert (=> b!562990 m!541323))

(declare-fun m!541339 () Bool)

(assert (=> b!562990 m!541339))

(declare-fun m!541341 () Bool)

(assert (=> b!562990 m!541341))

(assert (=> b!562992 m!541305))

(declare-fun m!541343 () Bool)

(assert (=> b!562992 m!541343))

(declare-fun m!541345 () Bool)

(assert (=> b!562998 m!541345))

(assert (=> b!562996 m!541305))

(assert (=> b!562996 m!541305))

(declare-fun m!541347 () Bool)

(assert (=> b!562996 m!541347))

(declare-fun m!541349 () Bool)

(assert (=> b!562994 m!541349))

(declare-fun m!541351 () Bool)

(assert (=> b!562993 m!541351))

(declare-fun m!541353 () Bool)

(assert (=> b!562999 m!541353))

(check-sat (not b!562999) (not b!562991) (not b!562995) (not b!562988) (not b!562996) (not b!562994) (not b!562997) (not b!563000) (not b!562998) (not start!51508) (not b!562993) (not b!562990))
(check-sat)
