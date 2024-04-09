; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65148 () Bool)

(assert start!65148)

(declare-fun b!735330 () Bool)

(declare-fun e!411445 () Bool)

(declare-fun e!411446 () Bool)

(assert (=> b!735330 (= e!411445 e!411446)))

(declare-fun res!494204 () Bool)

(assert (=> b!735330 (=> (not res!494204) (not e!411446))))

(declare-datatypes ((SeekEntryResult!7354 0))(
  ( (MissingZero!7354 (index!31783 (_ BitVec 32))) (Found!7354 (index!31784 (_ BitVec 32))) (Intermediate!7354 (undefined!8166 Bool) (index!31785 (_ BitVec 32)) (x!62817 (_ BitVec 32))) (Undefined!7354) (MissingVacant!7354 (index!31786 (_ BitVec 32))) )
))
(declare-fun lt!325997 () SeekEntryResult!7354)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!735330 (= res!494204 (or (= lt!325997 (MissingZero!7354 i!1173)) (= lt!325997 (MissingVacant!7354 i!1173))))))

(declare-datatypes ((array!41274 0))(
  ( (array!41275 (arr!19747 (Array (_ BitVec 32) (_ BitVec 64))) (size!20168 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41274)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41274 (_ BitVec 32)) SeekEntryResult!7354)

(assert (=> b!735330 (= lt!325997 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!494218 () Bool)

(assert (=> start!65148 (=> (not res!494218) (not e!411445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65148 (= res!494218 (validMask!0 mask!3328))))

(assert (=> start!65148 e!411445))

(assert (=> start!65148 true))

(declare-fun array_inv!15521 (array!41274) Bool)

(assert (=> start!65148 (array_inv!15521 a!3186)))

(declare-fun b!735331 () Bool)

(declare-fun e!411438 () Bool)

(declare-fun e!411440 () Bool)

(assert (=> b!735331 (= e!411438 e!411440)))

(declare-fun res!494220 () Bool)

(assert (=> b!735331 (=> (not res!494220) (not e!411440))))

(declare-fun lt!325990 () SeekEntryResult!7354)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!735331 (= res!494220 (= (seekEntryOrOpen!0 (select (arr!19747 a!3186) j!159) a!3186 mask!3328) lt!325990))))

(assert (=> b!735331 (= lt!325990 (Found!7354 j!159))))

(declare-fun b!735332 () Bool)

(declare-fun res!494212 () Bool)

(assert (=> b!735332 (=> (not res!494212) (not e!411445))))

(declare-fun arrayContainsKey!0 (array!41274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735332 (= res!494212 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!735333 () Bool)

(declare-fun e!411436 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!325994 () SeekEntryResult!7354)

(declare-fun lt!326000 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41274 (_ BitVec 32)) SeekEntryResult!7354)

(assert (=> b!735333 (= e!411436 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326000 resIntermediateIndex!5 (select (arr!19747 a!3186) j!159) a!3186 mask!3328) lt!325994)))))

(declare-fun b!735334 () Bool)

(declare-fun e!411447 () Bool)

(declare-fun e!411442 () Bool)

(assert (=> b!735334 (= e!411447 e!411442)))

(declare-fun res!494215 () Bool)

(assert (=> b!735334 (=> res!494215 e!411442)))

(assert (=> b!735334 (= res!494215 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326000 #b00000000000000000000000000000000) (bvsge lt!326000 (size!20168 a!3186))))))

(declare-datatypes ((Unit!25034 0))(
  ( (Unit!25035) )
))
(declare-fun lt!325996 () Unit!25034)

(declare-fun e!411444 () Unit!25034)

(assert (=> b!735334 (= lt!325996 e!411444)))

(declare-fun c!80946 () Bool)

(declare-fun lt!325998 () Bool)

(assert (=> b!735334 (= c!80946 lt!325998)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735334 (= lt!325998 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735334 (= lt!326000 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735335 () Bool)

(declare-fun Unit!25036 () Unit!25034)

(assert (=> b!735335 (= e!411444 Unit!25036)))

(declare-fun lt!325999 () SeekEntryResult!7354)

(assert (=> b!735335 (= lt!325999 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19747 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!735335 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326000 resIntermediateIndex!5 (select (arr!19747 a!3186) j!159) a!3186 mask!3328) lt!325994)))

(declare-fun b!735336 () Bool)

(declare-fun Unit!25037 () Unit!25034)

(assert (=> b!735336 (= e!411444 Unit!25037)))

(declare-fun lt!325987 () SeekEntryResult!7354)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41274 (_ BitVec 32)) SeekEntryResult!7354)

(assert (=> b!735336 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326000 (select (arr!19747 a!3186) j!159) a!3186 mask!3328) lt!325987)))

(declare-fun b!735337 () Bool)

(declare-fun e!411437 () Bool)

(declare-fun e!411443 () Bool)

(assert (=> b!735337 (= e!411437 e!411443)))

(declare-fun res!494210 () Bool)

(assert (=> b!735337 (=> (not res!494210) (not e!411443))))

(declare-fun lt!325988 () SeekEntryResult!7354)

(declare-fun lt!325992 () SeekEntryResult!7354)

(assert (=> b!735337 (= res!494210 (= lt!325988 lt!325992))))

(declare-fun lt!325991 () array!41274)

(declare-fun lt!325989 () (_ BitVec 64))

(assert (=> b!735337 (= lt!325992 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325989 lt!325991 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735337 (= lt!325988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325989 mask!3328) lt!325989 lt!325991 mask!3328))))

(assert (=> b!735337 (= lt!325989 (select (store (arr!19747 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!735337 (= lt!325991 (array!41275 (store (arr!19747 a!3186) i!1173 k0!2102) (size!20168 a!3186)))))

(declare-fun b!735338 () Bool)

(declare-fun res!494205 () Bool)

(assert (=> b!735338 (=> (not res!494205) (not e!411446))))

(declare-datatypes ((List!13802 0))(
  ( (Nil!13799) (Cons!13798 (h!14870 (_ BitVec 64)) (t!20125 List!13802)) )
))
(declare-fun arrayNoDuplicates!0 (array!41274 (_ BitVec 32) List!13802) Bool)

(assert (=> b!735338 (= res!494205 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13799))))

(declare-fun b!735339 () Bool)

(declare-fun res!494211 () Bool)

(assert (=> b!735339 (=> (not res!494211) (not e!411445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735339 (= res!494211 (validKeyInArray!0 (select (arr!19747 a!3186) j!159)))))

(declare-fun b!735340 () Bool)

(declare-fun res!494214 () Bool)

(assert (=> b!735340 (=> (not res!494214) (not e!411446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41274 (_ BitVec 32)) Bool)

(assert (=> b!735340 (= res!494214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!735341 () Bool)

(declare-fun res!494208 () Bool)

(assert (=> b!735341 (=> (not res!494208) (not e!411437))))

(declare-fun e!411439 () Bool)

(assert (=> b!735341 (= res!494208 e!411439)))

(declare-fun c!80945 () Bool)

(assert (=> b!735341 (= c!80945 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!735342 () Bool)

(declare-fun res!494217 () Bool)

(assert (=> b!735342 (=> (not res!494217) (not e!411437))))

(assert (=> b!735342 (= res!494217 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19747 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735343 () Bool)

(declare-fun res!494203 () Bool)

(assert (=> b!735343 (=> (not res!494203) (not e!411445))))

(assert (=> b!735343 (= res!494203 (and (= (size!20168 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20168 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20168 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!735344 () Bool)

(assert (=> b!735344 (= e!411440 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19747 a!3186) j!159) a!3186 mask!3328) lt!325990))))

(declare-fun b!735345 () Bool)

(assert (=> b!735345 (= e!411436 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326000 (select (arr!19747 a!3186) j!159) a!3186 mask!3328) lt!325987)))))

(declare-fun b!735346 () Bool)

(assert (=> b!735346 (= e!411446 e!411437)))

(declare-fun res!494219 () Bool)

(assert (=> b!735346 (=> (not res!494219) (not e!411437))))

(assert (=> b!735346 (= res!494219 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19747 a!3186) j!159) mask!3328) (select (arr!19747 a!3186) j!159) a!3186 mask!3328) lt!325987))))

(assert (=> b!735346 (= lt!325987 (Intermediate!7354 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!735347 () Bool)

(declare-fun res!494216 () Bool)

(assert (=> b!735347 (=> (not res!494216) (not e!411445))))

(assert (=> b!735347 (= res!494216 (validKeyInArray!0 k0!2102))))

(declare-fun b!735348 () Bool)

(declare-fun res!494206 () Bool)

(assert (=> b!735348 (=> (not res!494206) (not e!411446))))

(assert (=> b!735348 (= res!494206 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20168 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20168 a!3186))))))

(declare-fun b!735349 () Bool)

(assert (=> b!735349 (= e!411442 true)))

(declare-fun lt!325995 () SeekEntryResult!7354)

(assert (=> b!735349 (= lt!325995 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326000 lt!325989 lt!325991 mask!3328))))

(declare-fun b!735350 () Bool)

(assert (=> b!735350 (= e!411439 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19747 a!3186) j!159) a!3186 mask!3328) (Found!7354 j!159)))))

(declare-fun b!735351 () Bool)

(assert (=> b!735351 (= e!411439 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19747 a!3186) j!159) a!3186 mask!3328) lt!325987))))

(declare-fun b!735352 () Bool)

(declare-fun res!494207 () Bool)

(assert (=> b!735352 (=> res!494207 e!411442)))

(assert (=> b!735352 (= res!494207 e!411436)))

(declare-fun c!80944 () Bool)

(assert (=> b!735352 (= c!80944 lt!325998)))

(declare-fun b!735353 () Bool)

(assert (=> b!735353 (= e!411443 (not e!411447))))

(declare-fun res!494209 () Bool)

(assert (=> b!735353 (=> res!494209 e!411447)))

(get-info :version)

(assert (=> b!735353 (= res!494209 (or (not ((_ is Intermediate!7354) lt!325992)) (bvsge x!1131 (x!62817 lt!325992))))))

(assert (=> b!735353 (= lt!325994 (Found!7354 j!159))))

(assert (=> b!735353 e!411438))

(declare-fun res!494213 () Bool)

(assert (=> b!735353 (=> (not res!494213) (not e!411438))))

(assert (=> b!735353 (= res!494213 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!325993 () Unit!25034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41274 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25034)

(assert (=> b!735353 (= lt!325993 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65148 res!494218) b!735343))

(assert (= (and b!735343 res!494203) b!735339))

(assert (= (and b!735339 res!494211) b!735347))

(assert (= (and b!735347 res!494216) b!735332))

(assert (= (and b!735332 res!494212) b!735330))

(assert (= (and b!735330 res!494204) b!735340))

(assert (= (and b!735340 res!494214) b!735338))

(assert (= (and b!735338 res!494205) b!735348))

(assert (= (and b!735348 res!494206) b!735346))

(assert (= (and b!735346 res!494219) b!735342))

(assert (= (and b!735342 res!494217) b!735341))

(assert (= (and b!735341 c!80945) b!735351))

(assert (= (and b!735341 (not c!80945)) b!735350))

(assert (= (and b!735341 res!494208) b!735337))

(assert (= (and b!735337 res!494210) b!735353))

(assert (= (and b!735353 res!494213) b!735331))

(assert (= (and b!735331 res!494220) b!735344))

(assert (= (and b!735353 (not res!494209)) b!735334))

(assert (= (and b!735334 c!80946) b!735336))

(assert (= (and b!735334 (not c!80946)) b!735335))

(assert (= (and b!735334 (not res!494215)) b!735352))

(assert (= (and b!735352 c!80944) b!735345))

(assert (= (and b!735352 (not c!80944)) b!735333))

(assert (= (and b!735352 (not res!494207)) b!735349))

(declare-fun m!687805 () Bool)

(assert (=> b!735332 m!687805))

(declare-fun m!687807 () Bool)

(assert (=> b!735346 m!687807))

(assert (=> b!735346 m!687807))

(declare-fun m!687809 () Bool)

(assert (=> b!735346 m!687809))

(assert (=> b!735346 m!687809))

(assert (=> b!735346 m!687807))

(declare-fun m!687811 () Bool)

(assert (=> b!735346 m!687811))

(assert (=> b!735350 m!687807))

(assert (=> b!735350 m!687807))

(declare-fun m!687813 () Bool)

(assert (=> b!735350 m!687813))

(assert (=> b!735336 m!687807))

(assert (=> b!735336 m!687807))

(declare-fun m!687815 () Bool)

(assert (=> b!735336 m!687815))

(declare-fun m!687817 () Bool)

(assert (=> b!735330 m!687817))

(declare-fun m!687819 () Bool)

(assert (=> b!735338 m!687819))

(assert (=> b!735339 m!687807))

(assert (=> b!735339 m!687807))

(declare-fun m!687821 () Bool)

(assert (=> b!735339 m!687821))

(declare-fun m!687823 () Bool)

(assert (=> b!735347 m!687823))

(declare-fun m!687825 () Bool)

(assert (=> b!735334 m!687825))

(declare-fun m!687827 () Bool)

(assert (=> start!65148 m!687827))

(declare-fun m!687829 () Bool)

(assert (=> start!65148 m!687829))

(assert (=> b!735345 m!687807))

(assert (=> b!735345 m!687807))

(assert (=> b!735345 m!687815))

(assert (=> b!735333 m!687807))

(assert (=> b!735333 m!687807))

(declare-fun m!687831 () Bool)

(assert (=> b!735333 m!687831))

(declare-fun m!687833 () Bool)

(assert (=> b!735340 m!687833))

(declare-fun m!687835 () Bool)

(assert (=> b!735353 m!687835))

(declare-fun m!687837 () Bool)

(assert (=> b!735353 m!687837))

(assert (=> b!735335 m!687807))

(assert (=> b!735335 m!687807))

(assert (=> b!735335 m!687813))

(assert (=> b!735335 m!687807))

(assert (=> b!735335 m!687831))

(declare-fun m!687839 () Bool)

(assert (=> b!735349 m!687839))

(declare-fun m!687841 () Bool)

(assert (=> b!735342 m!687841))

(assert (=> b!735344 m!687807))

(assert (=> b!735344 m!687807))

(declare-fun m!687843 () Bool)

(assert (=> b!735344 m!687843))

(assert (=> b!735331 m!687807))

(assert (=> b!735331 m!687807))

(declare-fun m!687845 () Bool)

(assert (=> b!735331 m!687845))

(declare-fun m!687847 () Bool)

(assert (=> b!735337 m!687847))

(declare-fun m!687849 () Bool)

(assert (=> b!735337 m!687849))

(declare-fun m!687851 () Bool)

(assert (=> b!735337 m!687851))

(assert (=> b!735337 m!687847))

(declare-fun m!687853 () Bool)

(assert (=> b!735337 m!687853))

(declare-fun m!687855 () Bool)

(assert (=> b!735337 m!687855))

(assert (=> b!735351 m!687807))

(assert (=> b!735351 m!687807))

(declare-fun m!687857 () Bool)

(assert (=> b!735351 m!687857))

(check-sat (not b!735330) (not b!735337) (not b!735347) (not b!735338) (not b!735349) (not b!735351) (not b!735334) (not b!735336) (not b!735331) (not b!735344) (not b!735340) (not b!735350) (not b!735345) (not b!735333) (not b!735339) (not b!735346) (not start!65148) (not b!735353) (not b!735335) (not b!735332))
(check-sat)
