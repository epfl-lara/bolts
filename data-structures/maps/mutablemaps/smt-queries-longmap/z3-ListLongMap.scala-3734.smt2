; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51418 () Bool)

(assert start!51418)

(declare-fun b!561296 () Bool)

(declare-fun res!352602 () Bool)

(declare-fun e!323449 () Bool)

(assert (=> b!561296 (=> (not res!352602) (not e!323449))))

(declare-datatypes ((array!35237 0))(
  ( (array!35238 (arr!16915 (Array (_ BitVec 32) (_ BitVec 64))) (size!17279 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35237)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561296 (= res!352602 (validKeyInArray!0 (select (arr!16915 a!3118) j!142)))))

(declare-fun b!561298 () Bool)

(declare-fun e!323450 () Bool)

(declare-fun e!323447 () Bool)

(assert (=> b!561298 (= e!323450 e!323447)))

(declare-fun res!352607 () Bool)

(assert (=> b!561298 (=> (not res!352607) (not e!323447))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5371 0))(
  ( (MissingZero!5371 (index!23711 (_ BitVec 32))) (Found!5371 (index!23712 (_ BitVec 32))) (Intermediate!5371 (undefined!6183 Bool) (index!23713 (_ BitVec 32)) (x!52645 (_ BitVec 32))) (Undefined!5371) (MissingVacant!5371 (index!23714 (_ BitVec 32))) )
))
(declare-fun lt!255507 () SeekEntryResult!5371)

(declare-fun lt!255512 () SeekEntryResult!5371)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35237 (_ BitVec 32)) SeekEntryResult!5371)

(assert (=> b!561298 (= res!352607 (= lt!255507 (seekKeyOrZeroReturnVacant!0 (x!52645 lt!255512) (index!23713 lt!255512) (index!23713 lt!255512) (select (arr!16915 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561299 () Bool)

(declare-fun res!352599 () Bool)

(declare-fun e!323446 () Bool)

(assert (=> b!561299 (=> (not res!352599) (not e!323446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35237 (_ BitVec 32)) Bool)

(assert (=> b!561299 (= res!352599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561300 () Bool)

(declare-fun lt!255515 () (_ BitVec 64))

(declare-fun lt!255508 () array!35237)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35237 (_ BitVec 32)) SeekEntryResult!5371)

(assert (=> b!561300 (= e!323447 (= (seekEntryOrOpen!0 lt!255515 lt!255508 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52645 lt!255512) (index!23713 lt!255512) (index!23713 lt!255512) lt!255515 lt!255508 mask!3119)))))

(declare-fun b!561301 () Bool)

(declare-fun res!352600 () Bool)

(assert (=> b!561301 (=> (not res!352600) (not e!323449))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561301 (= res!352600 (and (= (size!17279 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17279 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17279 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561302 () Bool)

(declare-fun res!352608 () Bool)

(assert (=> b!561302 (=> (not res!352608) (not e!323449))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!561302 (= res!352608 (validKeyInArray!0 k0!1914))))

(declare-fun b!561303 () Bool)

(declare-fun e!323451 () Bool)

(assert (=> b!561303 (= e!323446 e!323451)))

(declare-fun res!352610 () Bool)

(assert (=> b!561303 (=> (not res!352610) (not e!323451))))

(declare-fun lt!255513 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35237 (_ BitVec 32)) SeekEntryResult!5371)

(assert (=> b!561303 (= res!352610 (= lt!255512 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255513 lt!255515 lt!255508 mask!3119)))))

(declare-fun lt!255510 () (_ BitVec 32))

(assert (=> b!561303 (= lt!255512 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255510 (select (arr!16915 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561303 (= lt!255513 (toIndex!0 lt!255515 mask!3119))))

(assert (=> b!561303 (= lt!255515 (select (store (arr!16915 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!561303 (= lt!255510 (toIndex!0 (select (arr!16915 a!3118) j!142) mask!3119))))

(assert (=> b!561303 (= lt!255508 (array!35238 (store (arr!16915 a!3118) i!1132 k0!1914) (size!17279 a!3118)))))

(declare-fun b!561304 () Bool)

(declare-fun e!323448 () Bool)

(declare-fun e!323445 () Bool)

(assert (=> b!561304 (= e!323448 e!323445)))

(declare-fun res!352605 () Bool)

(assert (=> b!561304 (=> res!352605 e!323445)))

(get-info :version)

(assert (=> b!561304 (= res!352605 (or (undefined!6183 lt!255512) (not ((_ is Intermediate!5371) lt!255512))))))

(declare-fun b!561305 () Bool)

(assert (=> b!561305 (= e!323451 (not true))))

(assert (=> b!561305 e!323448))

(declare-fun res!352606 () Bool)

(assert (=> b!561305 (=> (not res!352606) (not e!323448))))

(assert (=> b!561305 (= res!352606 (= lt!255507 (Found!5371 j!142)))))

(assert (=> b!561305 (= lt!255507 (seekEntryOrOpen!0 (select (arr!16915 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!561305 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17516 0))(
  ( (Unit!17517) )
))
(declare-fun lt!255511 () Unit!17516)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35237 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17516)

(assert (=> b!561305 (= lt!255511 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561306 () Bool)

(declare-fun res!352601 () Bool)

(assert (=> b!561306 (=> (not res!352601) (not e!323449))))

(declare-fun arrayContainsKey!0 (array!35237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561306 (= res!352601 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561297 () Bool)

(assert (=> b!561297 (= e!323449 e!323446)))

(declare-fun res!352603 () Bool)

(assert (=> b!561297 (=> (not res!352603) (not e!323446))))

(declare-fun lt!255509 () SeekEntryResult!5371)

(assert (=> b!561297 (= res!352603 (or (= lt!255509 (MissingZero!5371 i!1132)) (= lt!255509 (MissingVacant!5371 i!1132))))))

(assert (=> b!561297 (= lt!255509 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!352598 () Bool)

(assert (=> start!51418 (=> (not res!352598) (not e!323449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51418 (= res!352598 (validMask!0 mask!3119))))

(assert (=> start!51418 e!323449))

(assert (=> start!51418 true))

(declare-fun array_inv!12689 (array!35237) Bool)

(assert (=> start!51418 (array_inv!12689 a!3118)))

(declare-fun b!561307 () Bool)

(declare-fun res!352604 () Bool)

(assert (=> b!561307 (=> (not res!352604) (not e!323446))))

(declare-datatypes ((List!11048 0))(
  ( (Nil!11045) (Cons!11044 (h!12047 (_ BitVec 64)) (t!17284 List!11048)) )
))
(declare-fun arrayNoDuplicates!0 (array!35237 (_ BitVec 32) List!11048) Bool)

(assert (=> b!561307 (= res!352604 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11045))))

(declare-fun b!561308 () Bool)

(assert (=> b!561308 (= e!323445 e!323450)))

(declare-fun res!352609 () Bool)

(assert (=> b!561308 (=> res!352609 e!323450)))

(declare-fun lt!255514 () (_ BitVec 64))

(assert (=> b!561308 (= res!352609 (or (= lt!255514 (select (arr!16915 a!3118) j!142)) (= lt!255514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561308 (= lt!255514 (select (arr!16915 a!3118) (index!23713 lt!255512)))))

(assert (= (and start!51418 res!352598) b!561301))

(assert (= (and b!561301 res!352600) b!561296))

(assert (= (and b!561296 res!352602) b!561302))

(assert (= (and b!561302 res!352608) b!561306))

(assert (= (and b!561306 res!352601) b!561297))

(assert (= (and b!561297 res!352603) b!561299))

(assert (= (and b!561299 res!352599) b!561307))

(assert (= (and b!561307 res!352604) b!561303))

(assert (= (and b!561303 res!352610) b!561305))

(assert (= (and b!561305 res!352606) b!561304))

(assert (= (and b!561304 (not res!352605)) b!561308))

(assert (= (and b!561308 (not res!352609)) b!561298))

(assert (= (and b!561298 res!352607) b!561300))

(declare-fun m!539235 () Bool)

(assert (=> start!51418 m!539235))

(declare-fun m!539237 () Bool)

(assert (=> start!51418 m!539237))

(declare-fun m!539239 () Bool)

(assert (=> b!561302 m!539239))

(declare-fun m!539241 () Bool)

(assert (=> b!561297 m!539241))

(declare-fun m!539243 () Bool)

(assert (=> b!561298 m!539243))

(assert (=> b!561298 m!539243))

(declare-fun m!539245 () Bool)

(assert (=> b!561298 m!539245))

(assert (=> b!561308 m!539243))

(declare-fun m!539247 () Bool)

(assert (=> b!561308 m!539247))

(declare-fun m!539249 () Bool)

(assert (=> b!561299 m!539249))

(assert (=> b!561303 m!539243))

(declare-fun m!539251 () Bool)

(assert (=> b!561303 m!539251))

(assert (=> b!561303 m!539243))

(declare-fun m!539253 () Bool)

(assert (=> b!561303 m!539253))

(declare-fun m!539255 () Bool)

(assert (=> b!561303 m!539255))

(declare-fun m!539257 () Bool)

(assert (=> b!561303 m!539257))

(declare-fun m!539259 () Bool)

(assert (=> b!561303 m!539259))

(assert (=> b!561303 m!539243))

(declare-fun m!539261 () Bool)

(assert (=> b!561303 m!539261))

(declare-fun m!539263 () Bool)

(assert (=> b!561306 m!539263))

(assert (=> b!561305 m!539243))

(assert (=> b!561305 m!539243))

(declare-fun m!539265 () Bool)

(assert (=> b!561305 m!539265))

(declare-fun m!539267 () Bool)

(assert (=> b!561305 m!539267))

(declare-fun m!539269 () Bool)

(assert (=> b!561305 m!539269))

(assert (=> b!561296 m!539243))

(assert (=> b!561296 m!539243))

(declare-fun m!539271 () Bool)

(assert (=> b!561296 m!539271))

(declare-fun m!539273 () Bool)

(assert (=> b!561307 m!539273))

(declare-fun m!539275 () Bool)

(assert (=> b!561300 m!539275))

(declare-fun m!539277 () Bool)

(assert (=> b!561300 m!539277))

(check-sat (not b!561297) (not b!561305) (not start!51418) (not b!561298) (not b!561303) (not b!561302) (not b!561299) (not b!561307) (not b!561306) (not b!561300) (not b!561296))
(check-sat)
