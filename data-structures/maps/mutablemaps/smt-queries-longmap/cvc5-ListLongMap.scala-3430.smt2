; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47710 () Bool)

(assert start!47710)

(declare-fun b!524296 () Bool)

(declare-fun e!305778 () Bool)

(declare-fun e!305773 () Bool)

(assert (=> b!524296 (= e!305778 e!305773)))

(declare-fun res!321354 () Bool)

(assert (=> b!524296 (=> (not res!321354) (not e!305773))))

(declare-datatypes ((SeekEntryResult!4476 0))(
  ( (MissingZero!4476 (index!20116 (_ BitVec 32))) (Found!4476 (index!20117 (_ BitVec 32))) (Intermediate!4476 (undefined!5288 Bool) (index!20118 (_ BitVec 32)) (x!49132 (_ BitVec 32))) (Undefined!4476) (MissingVacant!4476 (index!20119 (_ BitVec 32))) )
))
(declare-fun lt!240687 () SeekEntryResult!4476)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524296 (= res!321354 (or (= lt!240687 (MissingZero!4476 i!1204)) (= lt!240687 (MissingVacant!4476 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33307 0))(
  ( (array!33308 (arr!16002 (Array (_ BitVec 32) (_ BitVec 64))) (size!16366 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33307)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33307 (_ BitVec 32)) SeekEntryResult!4476)

(assert (=> b!524296 (= lt!240687 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524297 () Bool)

(declare-fun e!305777 () Bool)

(assert (=> b!524297 (= e!305777 false)))

(declare-fun b!524298 () Bool)

(declare-fun res!321350 () Bool)

(assert (=> b!524298 (=> (not res!321350) (not e!305778))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524298 (= res!321350 (validKeyInArray!0 (select (arr!16002 a!3235) j!176)))))

(declare-fun b!524299 () Bool)

(declare-fun res!321353 () Bool)

(declare-fun e!305776 () Bool)

(assert (=> b!524299 (=> res!321353 e!305776)))

(declare-fun lt!240690 () SeekEntryResult!4476)

(assert (=> b!524299 (= res!321353 (or (undefined!5288 lt!240690) (not (is-Intermediate!4476 lt!240690))))))

(declare-fun b!524300 () Bool)

(declare-fun res!321351 () Bool)

(assert (=> b!524300 (=> (not res!321351) (not e!305778))))

(assert (=> b!524300 (= res!321351 (validKeyInArray!0 k!2280))))

(declare-fun b!524302 () Bool)

(declare-fun res!321348 () Bool)

(assert (=> b!524302 (=> (not res!321348) (not e!305778))))

(assert (=> b!524302 (= res!321348 (and (= (size!16366 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16366 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16366 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524303 () Bool)

(declare-fun res!321345 () Bool)

(assert (=> b!524303 (=> (not res!321345) (not e!305773))))

(declare-datatypes ((List!10213 0))(
  ( (Nil!10210) (Cons!10209 (h!11140 (_ BitVec 64)) (t!16449 List!10213)) )
))
(declare-fun arrayNoDuplicates!0 (array!33307 (_ BitVec 32) List!10213) Bool)

(assert (=> b!524303 (= res!321345 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10210))))

(declare-fun b!524304 () Bool)

(assert (=> b!524304 (= e!305776 true)))

(assert (=> b!524304 (and (or (= (select (arr!16002 a!3235) (index!20118 lt!240690)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16002 a!3235) (index!20118 lt!240690)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16002 a!3235) (index!20118 lt!240690)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16002 a!3235) (index!20118 lt!240690)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16370 0))(
  ( (Unit!16371) )
))
(declare-fun lt!240688 () Unit!16370)

(declare-fun e!305774 () Unit!16370)

(assert (=> b!524304 (= lt!240688 e!305774)))

(declare-fun c!61781 () Bool)

(assert (=> b!524304 (= c!61781 (= (select (arr!16002 a!3235) (index!20118 lt!240690)) (select (arr!16002 a!3235) j!176)))))

(assert (=> b!524304 (and (bvslt (x!49132 lt!240690) #b01111111111111111111111111111110) (or (= (select (arr!16002 a!3235) (index!20118 lt!240690)) (select (arr!16002 a!3235) j!176)) (= (select (arr!16002 a!3235) (index!20118 lt!240690)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16002 a!3235) (index!20118 lt!240690)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524305 () Bool)

(declare-fun res!321355 () Bool)

(assert (=> b!524305 (=> (not res!321355) (not e!305778))))

(declare-fun arrayContainsKey!0 (array!33307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524305 (= res!321355 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!321352 () Bool)

(assert (=> start!47710 (=> (not res!321352) (not e!305778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47710 (= res!321352 (validMask!0 mask!3524))))

(assert (=> start!47710 e!305778))

(assert (=> start!47710 true))

(declare-fun array_inv!11776 (array!33307) Bool)

(assert (=> start!47710 (array_inv!11776 a!3235)))

(declare-fun b!524301 () Bool)

(declare-fun Unit!16372 () Unit!16370)

(assert (=> b!524301 (= e!305774 Unit!16372)))

(declare-fun b!524306 () Bool)

(declare-fun Unit!16373 () Unit!16370)

(assert (=> b!524306 (= e!305774 Unit!16373)))

(declare-fun lt!240684 () Unit!16370)

(declare-fun lt!240689 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33307 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16370)

(assert (=> b!524306 (= lt!240684 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240689 #b00000000000000000000000000000000 (index!20118 lt!240690) (x!49132 lt!240690) mask!3524))))

(declare-fun lt!240692 () array!33307)

(declare-fun res!321349 () Bool)

(declare-fun lt!240686 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33307 (_ BitVec 32)) SeekEntryResult!4476)

(assert (=> b!524306 (= res!321349 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240689 lt!240686 lt!240692 mask!3524) (Intermediate!4476 false (index!20118 lt!240690) (x!49132 lt!240690))))))

(assert (=> b!524306 (=> (not res!321349) (not e!305777))))

(assert (=> b!524306 e!305777))

(declare-fun b!524307 () Bool)

(declare-fun res!321346 () Bool)

(assert (=> b!524307 (=> (not res!321346) (not e!305773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33307 (_ BitVec 32)) Bool)

(assert (=> b!524307 (= res!321346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun e!305779 () Bool)

(declare-fun b!524308 () Bool)

(assert (=> b!524308 (= e!305779 (= (seekEntryOrOpen!0 (select (arr!16002 a!3235) j!176) a!3235 mask!3524) (Found!4476 j!176)))))

(declare-fun b!524309 () Bool)

(assert (=> b!524309 (= e!305773 (not e!305776))))

(declare-fun res!321356 () Bool)

(assert (=> b!524309 (=> res!321356 e!305776)))

(declare-fun lt!240691 () (_ BitVec 32))

(assert (=> b!524309 (= res!321356 (= lt!240690 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240691 lt!240686 lt!240692 mask!3524)))))

(assert (=> b!524309 (= lt!240690 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240689 (select (arr!16002 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524309 (= lt!240691 (toIndex!0 lt!240686 mask!3524))))

(assert (=> b!524309 (= lt!240686 (select (store (arr!16002 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524309 (= lt!240689 (toIndex!0 (select (arr!16002 a!3235) j!176) mask!3524))))

(assert (=> b!524309 (= lt!240692 (array!33308 (store (arr!16002 a!3235) i!1204 k!2280) (size!16366 a!3235)))))

(assert (=> b!524309 e!305779))

(declare-fun res!321347 () Bool)

(assert (=> b!524309 (=> (not res!321347) (not e!305779))))

(assert (=> b!524309 (= res!321347 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240685 () Unit!16370)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16370)

(assert (=> b!524309 (= lt!240685 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47710 res!321352) b!524302))

(assert (= (and b!524302 res!321348) b!524298))

(assert (= (and b!524298 res!321350) b!524300))

(assert (= (and b!524300 res!321351) b!524305))

(assert (= (and b!524305 res!321355) b!524296))

(assert (= (and b!524296 res!321354) b!524307))

(assert (= (and b!524307 res!321346) b!524303))

(assert (= (and b!524303 res!321345) b!524309))

(assert (= (and b!524309 res!321347) b!524308))

(assert (= (and b!524309 (not res!321356)) b!524299))

(assert (= (and b!524299 (not res!321353)) b!524304))

(assert (= (and b!524304 c!61781) b!524306))

(assert (= (and b!524304 (not c!61781)) b!524301))

(assert (= (and b!524306 res!321349) b!524297))

(declare-fun m!504967 () Bool)

(assert (=> b!524304 m!504967))

(declare-fun m!504969 () Bool)

(assert (=> b!524304 m!504969))

(declare-fun m!504971 () Bool)

(assert (=> b!524307 m!504971))

(declare-fun m!504973 () Bool)

(assert (=> start!47710 m!504973))

(declare-fun m!504975 () Bool)

(assert (=> start!47710 m!504975))

(declare-fun m!504977 () Bool)

(assert (=> b!524306 m!504977))

(declare-fun m!504979 () Bool)

(assert (=> b!524306 m!504979))

(declare-fun m!504981 () Bool)

(assert (=> b!524309 m!504981))

(declare-fun m!504983 () Bool)

(assert (=> b!524309 m!504983))

(declare-fun m!504985 () Bool)

(assert (=> b!524309 m!504985))

(declare-fun m!504987 () Bool)

(assert (=> b!524309 m!504987))

(declare-fun m!504989 () Bool)

(assert (=> b!524309 m!504989))

(assert (=> b!524309 m!504969))

(declare-fun m!504991 () Bool)

(assert (=> b!524309 m!504991))

(assert (=> b!524309 m!504969))

(declare-fun m!504993 () Bool)

(assert (=> b!524309 m!504993))

(assert (=> b!524309 m!504969))

(declare-fun m!504995 () Bool)

(assert (=> b!524309 m!504995))

(assert (=> b!524298 m!504969))

(assert (=> b!524298 m!504969))

(declare-fun m!504997 () Bool)

(assert (=> b!524298 m!504997))

(declare-fun m!504999 () Bool)

(assert (=> b!524296 m!504999))

(declare-fun m!505001 () Bool)

(assert (=> b!524300 m!505001))

(assert (=> b!524308 m!504969))

(assert (=> b!524308 m!504969))

(declare-fun m!505003 () Bool)

(assert (=> b!524308 m!505003))

(declare-fun m!505005 () Bool)

(assert (=> b!524303 m!505005))

(declare-fun m!505007 () Bool)

(assert (=> b!524305 m!505007))

(push 1)

