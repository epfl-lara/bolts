; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47712 () Bool)

(assert start!47712)

(declare-fun b!524338 () Bool)

(declare-fun e!305800 () Bool)

(assert (=> b!524338 (= e!305800 true)))

(declare-datatypes ((array!33309 0))(
  ( (array!33310 (arr!16003 (Array (_ BitVec 32) (_ BitVec 64))) (size!16367 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33309)

(declare-datatypes ((SeekEntryResult!4477 0))(
  ( (MissingZero!4477 (index!20120 (_ BitVec 32))) (Found!4477 (index!20121 (_ BitVec 32))) (Intermediate!4477 (undefined!5289 Bool) (index!20122 (_ BitVec 32)) (x!49133 (_ BitVec 32))) (Undefined!4477) (MissingVacant!4477 (index!20123 (_ BitVec 32))) )
))
(declare-fun lt!240717 () SeekEntryResult!4477)

(assert (=> b!524338 (and (or (= (select (arr!16003 a!3235) (index!20122 lt!240717)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16003 a!3235) (index!20122 lt!240717)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16003 a!3235) (index!20122 lt!240717)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16003 a!3235) (index!20122 lt!240717)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16374 0))(
  ( (Unit!16375) )
))
(declare-fun lt!240713 () Unit!16374)

(declare-fun e!305798 () Unit!16374)

(assert (=> b!524338 (= lt!240713 e!305798)))

(declare-fun c!61784 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!524338 (= c!61784 (= (select (arr!16003 a!3235) (index!20122 lt!240717)) (select (arr!16003 a!3235) j!176)))))

(assert (=> b!524338 (and (bvslt (x!49133 lt!240717) #b01111111111111111111111111111110) (or (= (select (arr!16003 a!3235) (index!20122 lt!240717)) (select (arr!16003 a!3235) j!176)) (= (select (arr!16003 a!3235) (index!20122 lt!240717)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16003 a!3235) (index!20122 lt!240717)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!321392 () Bool)

(declare-fun e!305795 () Bool)

(assert (=> start!47712 (=> (not res!321392) (not e!305795))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47712 (= res!321392 (validMask!0 mask!3524))))

(assert (=> start!47712 e!305795))

(assert (=> start!47712 true))

(declare-fun array_inv!11777 (array!33309) Bool)

(assert (=> start!47712 (array_inv!11777 a!3235)))

(declare-fun b!524339 () Bool)

(declare-fun e!305796 () Bool)

(assert (=> b!524339 (= e!305796 false)))

(declare-fun b!524340 () Bool)

(declare-fun e!305797 () Bool)

(assert (=> b!524340 (= e!305797 (not e!305800))))

(declare-fun res!321389 () Bool)

(assert (=> b!524340 (=> res!321389 e!305800)))

(declare-fun lt!240719 () (_ BitVec 32))

(declare-fun lt!240714 () (_ BitVec 64))

(declare-fun lt!240712 () array!33309)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33309 (_ BitVec 32)) SeekEntryResult!4477)

(assert (=> b!524340 (= res!321389 (= lt!240717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240719 lt!240714 lt!240712 mask!3524)))))

(declare-fun lt!240715 () (_ BitVec 32))

(assert (=> b!524340 (= lt!240717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240715 (select (arr!16003 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524340 (= lt!240719 (toIndex!0 lt!240714 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524340 (= lt!240714 (select (store (arr!16003 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!524340 (= lt!240715 (toIndex!0 (select (arr!16003 a!3235) j!176) mask!3524))))

(assert (=> b!524340 (= lt!240712 (array!33310 (store (arr!16003 a!3235) i!1204 k0!2280) (size!16367 a!3235)))))

(declare-fun e!305799 () Bool)

(assert (=> b!524340 e!305799))

(declare-fun res!321384 () Bool)

(assert (=> b!524340 (=> (not res!321384) (not e!305799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33309 (_ BitVec 32)) Bool)

(assert (=> b!524340 (= res!321384 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240718 () Unit!16374)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33309 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16374)

(assert (=> b!524340 (= lt!240718 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524341 () Bool)

(declare-fun res!321391 () Bool)

(assert (=> b!524341 (=> (not res!321391) (not e!305797))))

(declare-datatypes ((List!10214 0))(
  ( (Nil!10211) (Cons!10210 (h!11141 (_ BitVec 64)) (t!16450 List!10214)) )
))
(declare-fun arrayNoDuplicates!0 (array!33309 (_ BitVec 32) List!10214) Bool)

(assert (=> b!524341 (= res!321391 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10211))))

(declare-fun b!524342 () Bool)

(declare-fun res!321388 () Bool)

(assert (=> b!524342 (=> (not res!321388) (not e!305795))))

(assert (=> b!524342 (= res!321388 (and (= (size!16367 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16367 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16367 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524343 () Bool)

(declare-fun Unit!16376 () Unit!16374)

(assert (=> b!524343 (= e!305798 Unit!16376)))

(declare-fun lt!240711 () Unit!16374)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33309 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16374)

(assert (=> b!524343 (= lt!240711 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!240715 #b00000000000000000000000000000000 (index!20122 lt!240717) (x!49133 lt!240717) mask!3524))))

(declare-fun res!321383 () Bool)

(assert (=> b!524343 (= res!321383 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240715 lt!240714 lt!240712 mask!3524) (Intermediate!4477 false (index!20122 lt!240717) (x!49133 lt!240717))))))

(assert (=> b!524343 (=> (not res!321383) (not e!305796))))

(assert (=> b!524343 e!305796))

(declare-fun b!524344 () Bool)

(assert (=> b!524344 (= e!305795 e!305797)))

(declare-fun res!321390 () Bool)

(assert (=> b!524344 (=> (not res!321390) (not e!305797))))

(declare-fun lt!240716 () SeekEntryResult!4477)

(assert (=> b!524344 (= res!321390 (or (= lt!240716 (MissingZero!4477 i!1204)) (= lt!240716 (MissingVacant!4477 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33309 (_ BitVec 32)) SeekEntryResult!4477)

(assert (=> b!524344 (= lt!240716 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!524345 () Bool)

(declare-fun res!321382 () Bool)

(assert (=> b!524345 (=> (not res!321382) (not e!305795))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524345 (= res!321382 (validKeyInArray!0 (select (arr!16003 a!3235) j!176)))))

(declare-fun b!524346 () Bool)

(declare-fun Unit!16377 () Unit!16374)

(assert (=> b!524346 (= e!305798 Unit!16377)))

(declare-fun b!524347 () Bool)

(declare-fun res!321387 () Bool)

(assert (=> b!524347 (=> (not res!321387) (not e!305795))))

(assert (=> b!524347 (= res!321387 (validKeyInArray!0 k0!2280))))

(declare-fun b!524348 () Bool)

(declare-fun res!321386 () Bool)

(assert (=> b!524348 (=> (not res!321386) (not e!305797))))

(assert (=> b!524348 (= res!321386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524349 () Bool)

(declare-fun res!321385 () Bool)

(assert (=> b!524349 (=> res!321385 e!305800)))

(get-info :version)

(assert (=> b!524349 (= res!321385 (or (undefined!5289 lt!240717) (not ((_ is Intermediate!4477) lt!240717))))))

(declare-fun b!524350 () Bool)

(declare-fun res!321381 () Bool)

(assert (=> b!524350 (=> (not res!321381) (not e!305795))))

(declare-fun arrayContainsKey!0 (array!33309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524350 (= res!321381 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524351 () Bool)

(assert (=> b!524351 (= e!305799 (= (seekEntryOrOpen!0 (select (arr!16003 a!3235) j!176) a!3235 mask!3524) (Found!4477 j!176)))))

(assert (= (and start!47712 res!321392) b!524342))

(assert (= (and b!524342 res!321388) b!524345))

(assert (= (and b!524345 res!321382) b!524347))

(assert (= (and b!524347 res!321387) b!524350))

(assert (= (and b!524350 res!321381) b!524344))

(assert (= (and b!524344 res!321390) b!524348))

(assert (= (and b!524348 res!321386) b!524341))

(assert (= (and b!524341 res!321391) b!524340))

(assert (= (and b!524340 res!321384) b!524351))

(assert (= (and b!524340 (not res!321389)) b!524349))

(assert (= (and b!524349 (not res!321385)) b!524338))

(assert (= (and b!524338 c!61784) b!524343))

(assert (= (and b!524338 (not c!61784)) b!524346))

(assert (= (and b!524343 res!321383) b!524339))

(declare-fun m!505009 () Bool)

(assert (=> b!524347 m!505009))

(declare-fun m!505011 () Bool)

(assert (=> b!524351 m!505011))

(assert (=> b!524351 m!505011))

(declare-fun m!505013 () Bool)

(assert (=> b!524351 m!505013))

(assert (=> b!524345 m!505011))

(assert (=> b!524345 m!505011))

(declare-fun m!505015 () Bool)

(assert (=> b!524345 m!505015))

(declare-fun m!505017 () Bool)

(assert (=> b!524341 m!505017))

(declare-fun m!505019 () Bool)

(assert (=> b!524338 m!505019))

(assert (=> b!524338 m!505011))

(declare-fun m!505021 () Bool)

(assert (=> b!524344 m!505021))

(declare-fun m!505023 () Bool)

(assert (=> b!524340 m!505023))

(declare-fun m!505025 () Bool)

(assert (=> b!524340 m!505025))

(declare-fun m!505027 () Bool)

(assert (=> b!524340 m!505027))

(assert (=> b!524340 m!505011))

(declare-fun m!505029 () Bool)

(assert (=> b!524340 m!505029))

(assert (=> b!524340 m!505011))

(declare-fun m!505031 () Bool)

(assert (=> b!524340 m!505031))

(assert (=> b!524340 m!505011))

(declare-fun m!505033 () Bool)

(assert (=> b!524340 m!505033))

(declare-fun m!505035 () Bool)

(assert (=> b!524340 m!505035))

(declare-fun m!505037 () Bool)

(assert (=> b!524340 m!505037))

(declare-fun m!505039 () Bool)

(assert (=> b!524343 m!505039))

(declare-fun m!505041 () Bool)

(assert (=> b!524343 m!505041))

(declare-fun m!505043 () Bool)

(assert (=> b!524348 m!505043))

(declare-fun m!505045 () Bool)

(assert (=> b!524350 m!505045))

(declare-fun m!505047 () Bool)

(assert (=> start!47712 m!505047))

(declare-fun m!505049 () Bool)

(assert (=> start!47712 m!505049))

(check-sat (not b!524347) (not b!524345) (not b!524340) (not b!524348) (not start!47712) (not b!524344) (not b!524341) (not b!524350) (not b!524343) (not b!524351))
(check-sat)
