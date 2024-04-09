; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57274 () Bool)

(assert start!57274)

(declare-fun b!633483 () Bool)

(declare-fun res!409788 () Bool)

(declare-fun e!362223 () Bool)

(assert (=> b!633483 (=> (not res!409788) (not e!362223))))

(declare-datatypes ((array!38140 0))(
  ( (array!38141 (arr!18296 (Array (_ BitVec 32) (_ BitVec 64))) (size!18660 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38140)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38140 (_ BitVec 32)) Bool)

(assert (=> b!633483 (= res!409788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun e!362229 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!292855 () (_ BitVec 64))

(declare-fun b!633484 () Bool)

(declare-fun lt!292860 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!633484 (= e!362229 (or (not (= (select (arr!18296 a!2986) j!136) lt!292855)) (not (= (select (arr!18296 a!2986) j!136) lt!292860)) (bvsge j!136 index!984) (bvslt index!984 (size!18660 a!2986))))))

(declare-fun e!362227 () Bool)

(assert (=> b!633484 e!362227))

(declare-fun res!409790 () Bool)

(assert (=> b!633484 (=> (not res!409790) (not e!362227))))

(assert (=> b!633484 (= res!409790 (= lt!292860 (select (arr!18296 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!633484 (= lt!292860 (select (store (arr!18296 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!633486 () Bool)

(declare-fun res!409793 () Bool)

(declare-fun e!362224 () Bool)

(assert (=> b!633486 (=> (not res!409793) (not e!362224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633486 (= res!409793 (validKeyInArray!0 k!1786))))

(declare-fun b!633487 () Bool)

(declare-fun e!362225 () Bool)

(declare-datatypes ((SeekEntryResult!6743 0))(
  ( (MissingZero!6743 (index!29270 (_ BitVec 32))) (Found!6743 (index!29271 (_ BitVec 32))) (Intermediate!6743 (undefined!7555 Bool) (index!29272 (_ BitVec 32)) (x!58037 (_ BitVec 32))) (Undefined!6743) (MissingVacant!6743 (index!29273 (_ BitVec 32))) )
))
(declare-fun lt!292854 () SeekEntryResult!6743)

(declare-fun lt!292851 () SeekEntryResult!6743)

(assert (=> b!633487 (= e!362225 (= lt!292854 lt!292851))))

(declare-fun b!633488 () Bool)

(declare-datatypes ((Unit!21330 0))(
  ( (Unit!21331) )
))
(declare-fun e!362230 () Unit!21330)

(declare-fun Unit!21332 () Unit!21330)

(assert (=> b!633488 (= e!362230 Unit!21332)))

(declare-fun b!633489 () Bool)

(declare-fun res!409787 () Bool)

(assert (=> b!633489 (=> (not res!409787) (not e!362223))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!633489 (= res!409787 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18296 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633490 () Bool)

(declare-fun res!409785 () Bool)

(assert (=> b!633490 (=> (not res!409785) (not e!362224))))

(assert (=> b!633490 (= res!409785 (validKeyInArray!0 (select (arr!18296 a!2986) j!136)))))

(declare-fun b!633491 () Bool)

(declare-fun res!409792 () Bool)

(assert (=> b!633491 (=> (not res!409792) (not e!362224))))

(assert (=> b!633491 (= res!409792 (and (= (size!18660 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18660 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18660 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633492 () Bool)

(declare-fun e!362228 () Bool)

(declare-fun e!362232 () Bool)

(assert (=> b!633492 (= e!362228 e!362232)))

(declare-fun res!409783 () Bool)

(assert (=> b!633492 (=> (not res!409783) (not e!362232))))

(assert (=> b!633492 (= res!409783 (and (= lt!292854 (Found!6743 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18296 a!2986) index!984) (select (arr!18296 a!2986) j!136))) (not (= (select (arr!18296 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38140 (_ BitVec 32)) SeekEntryResult!6743)

(assert (=> b!633492 (= lt!292854 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18296 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633485 () Bool)

(assert (=> b!633485 (= e!362223 e!362228)))

(declare-fun res!409795 () Bool)

(assert (=> b!633485 (=> (not res!409795) (not e!362228))))

(assert (=> b!633485 (= res!409795 (= (select (store (arr!18296 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292858 () array!38140)

(assert (=> b!633485 (= lt!292858 (array!38141 (store (arr!18296 a!2986) i!1108 k!1786) (size!18660 a!2986)))))

(declare-fun res!409786 () Bool)

(assert (=> start!57274 (=> (not res!409786) (not e!362224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57274 (= res!409786 (validMask!0 mask!3053))))

(assert (=> start!57274 e!362224))

(assert (=> start!57274 true))

(declare-fun array_inv!14070 (array!38140) Bool)

(assert (=> start!57274 (array_inv!14070 a!2986)))

(declare-fun b!633493 () Bool)

(declare-fun res!409796 () Bool)

(assert (=> b!633493 (=> (not res!409796) (not e!362224))))

(declare-fun arrayContainsKey!0 (array!38140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633493 (= res!409796 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633494 () Bool)

(assert (=> b!633494 (= e!362232 (not e!362229))))

(declare-fun res!409794 () Bool)

(assert (=> b!633494 (=> res!409794 e!362229)))

(declare-fun lt!292859 () SeekEntryResult!6743)

(assert (=> b!633494 (= res!409794 (not (= lt!292859 (Found!6743 index!984))))))

(declare-fun lt!292857 () Unit!21330)

(assert (=> b!633494 (= lt!292857 e!362230)))

(declare-fun c!72218 () Bool)

(assert (=> b!633494 (= c!72218 (= lt!292859 Undefined!6743))))

(assert (=> b!633494 (= lt!292859 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292855 lt!292858 mask!3053))))

(assert (=> b!633494 e!362225))

(declare-fun res!409789 () Bool)

(assert (=> b!633494 (=> (not res!409789) (not e!362225))))

(declare-fun lt!292853 () (_ BitVec 32))

(assert (=> b!633494 (= res!409789 (= lt!292851 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292853 vacantSpotIndex!68 lt!292855 lt!292858 mask!3053)))))

(assert (=> b!633494 (= lt!292851 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292853 vacantSpotIndex!68 (select (arr!18296 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633494 (= lt!292855 (select (store (arr!18296 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292852 () Unit!21330)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38140 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21330)

(assert (=> b!633494 (= lt!292852 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292853 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633494 (= lt!292853 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!633495 () Bool)

(assert (=> b!633495 (= e!362224 e!362223)))

(declare-fun res!409784 () Bool)

(assert (=> b!633495 (=> (not res!409784) (not e!362223))))

(declare-fun lt!292856 () SeekEntryResult!6743)

(assert (=> b!633495 (= res!409784 (or (= lt!292856 (MissingZero!6743 i!1108)) (= lt!292856 (MissingVacant!6743 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38140 (_ BitVec 32)) SeekEntryResult!6743)

(assert (=> b!633495 (= lt!292856 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!633496 () Bool)

(declare-fun res!409791 () Bool)

(assert (=> b!633496 (=> (not res!409791) (not e!362223))))

(declare-datatypes ((List!12390 0))(
  ( (Nil!12387) (Cons!12386 (h!13431 (_ BitVec 64)) (t!18626 List!12390)) )
))
(declare-fun arrayNoDuplicates!0 (array!38140 (_ BitVec 32) List!12390) Bool)

(assert (=> b!633496 (= res!409791 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12387))))

(declare-fun e!362233 () Bool)

(declare-fun b!633497 () Bool)

(assert (=> b!633497 (= e!362233 (arrayContainsKey!0 lt!292858 (select (arr!18296 a!2986) j!136) index!984))))

(declare-fun b!633498 () Bool)

(declare-fun Unit!21333 () Unit!21330)

(assert (=> b!633498 (= e!362230 Unit!21333)))

(assert (=> b!633498 false))

(declare-fun b!633499 () Bool)

(declare-fun e!362226 () Bool)

(assert (=> b!633499 (= e!362227 e!362226)))

(declare-fun res!409781 () Bool)

(assert (=> b!633499 (=> res!409781 e!362226)))

(assert (=> b!633499 (= res!409781 (or (not (= (select (arr!18296 a!2986) j!136) lt!292855)) (not (= (select (arr!18296 a!2986) j!136) lt!292860)) (bvsge j!136 index!984)))))

(declare-fun b!633500 () Bool)

(assert (=> b!633500 (= e!362226 e!362233)))

(declare-fun res!409782 () Bool)

(assert (=> b!633500 (=> (not res!409782) (not e!362233))))

(assert (=> b!633500 (= res!409782 (arrayContainsKey!0 lt!292858 (select (arr!18296 a!2986) j!136) j!136))))

(assert (= (and start!57274 res!409786) b!633491))

(assert (= (and b!633491 res!409792) b!633490))

(assert (= (and b!633490 res!409785) b!633486))

(assert (= (and b!633486 res!409793) b!633493))

(assert (= (and b!633493 res!409796) b!633495))

(assert (= (and b!633495 res!409784) b!633483))

(assert (= (and b!633483 res!409788) b!633496))

(assert (= (and b!633496 res!409791) b!633489))

(assert (= (and b!633489 res!409787) b!633485))

(assert (= (and b!633485 res!409795) b!633492))

(assert (= (and b!633492 res!409783) b!633494))

(assert (= (and b!633494 res!409789) b!633487))

(assert (= (and b!633494 c!72218) b!633498))

(assert (= (and b!633494 (not c!72218)) b!633488))

(assert (= (and b!633494 (not res!409794)) b!633484))

(assert (= (and b!633484 res!409790) b!633499))

(assert (= (and b!633499 (not res!409781)) b!633500))

(assert (= (and b!633500 res!409782) b!633497))

(declare-fun m!608171 () Bool)

(assert (=> b!633496 m!608171))

(declare-fun m!608173 () Bool)

(assert (=> b!633486 m!608173))

(declare-fun m!608175 () Bool)

(assert (=> b!633497 m!608175))

(assert (=> b!633497 m!608175))

(declare-fun m!608177 () Bool)

(assert (=> b!633497 m!608177))

(assert (=> b!633499 m!608175))

(assert (=> b!633500 m!608175))

(assert (=> b!633500 m!608175))

(declare-fun m!608179 () Bool)

(assert (=> b!633500 m!608179))

(declare-fun m!608181 () Bool)

(assert (=> b!633483 m!608181))

(assert (=> b!633484 m!608175))

(declare-fun m!608183 () Bool)

(assert (=> b!633484 m!608183))

(declare-fun m!608185 () Bool)

(assert (=> b!633484 m!608185))

(declare-fun m!608187 () Bool)

(assert (=> b!633493 m!608187))

(declare-fun m!608189 () Bool)

(assert (=> b!633495 m!608189))

(declare-fun m!608191 () Bool)

(assert (=> b!633489 m!608191))

(assert (=> b!633485 m!608183))

(declare-fun m!608193 () Bool)

(assert (=> b!633485 m!608193))

(declare-fun m!608195 () Bool)

(assert (=> start!57274 m!608195))

(declare-fun m!608197 () Bool)

(assert (=> start!57274 m!608197))

(declare-fun m!608199 () Bool)

(assert (=> b!633492 m!608199))

(assert (=> b!633492 m!608175))

(assert (=> b!633492 m!608175))

(declare-fun m!608201 () Bool)

(assert (=> b!633492 m!608201))

(declare-fun m!608203 () Bool)

(assert (=> b!633494 m!608203))

(assert (=> b!633494 m!608175))

(declare-fun m!608205 () Bool)

(assert (=> b!633494 m!608205))

(assert (=> b!633494 m!608183))

(declare-fun m!608207 () Bool)

(assert (=> b!633494 m!608207))

(assert (=> b!633494 m!608175))

(declare-fun m!608209 () Bool)

(assert (=> b!633494 m!608209))

(declare-fun m!608211 () Bool)

(assert (=> b!633494 m!608211))

(declare-fun m!608213 () Bool)

(assert (=> b!633494 m!608213))

(assert (=> b!633490 m!608175))

(assert (=> b!633490 m!608175))

(declare-fun m!608215 () Bool)

(assert (=> b!633490 m!608215))

(push 1)

(assert (not b!633493))

(assert (not b!633496))

(assert (not b!633490))

(assert (not b!633492))

(assert (not b!633497))

(assert (not b!633495))

(assert (not b!633500))

(assert (not b!633494))

(assert (not b!633483))

(assert (not b!633486))

(assert (not start!57274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

