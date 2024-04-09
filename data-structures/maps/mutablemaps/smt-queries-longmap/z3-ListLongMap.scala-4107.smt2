; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56150 () Bool)

(assert start!56150)

(declare-fun b!620391 () Bool)

(declare-fun res!399884 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!620391 (= res!399884 (bvsge j!136 index!984))))

(declare-fun e!355835 () Bool)

(assert (=> b!620391 (=> res!399884 e!355835)))

(declare-fun e!355826 () Bool)

(assert (=> b!620391 (= e!355826 e!355835)))

(declare-fun b!620392 () Bool)

(declare-fun e!355829 () Bool)

(declare-fun e!355827 () Bool)

(assert (=> b!620392 (= e!355829 e!355827)))

(declare-fun res!399883 () Bool)

(assert (=> b!620392 (=> (not res!399883) (not e!355827))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37583 0))(
  ( (array!37584 (arr!18034 (Array (_ BitVec 32) (_ BitVec 64))) (size!18398 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37583)

(assert (=> b!620392 (= res!399883 (= (select (store (arr!18034 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!286819 () array!37583)

(assert (=> b!620392 (= lt!286819 (array!37584 (store (arr!18034 a!2986) i!1108 k0!1786) (size!18398 a!2986)))))

(declare-fun b!620393 () Bool)

(declare-datatypes ((Unit!20630 0))(
  ( (Unit!20631) )
))
(declare-fun e!355834 () Unit!20630)

(declare-fun Unit!20632 () Unit!20630)

(assert (=> b!620393 (= e!355834 Unit!20632)))

(declare-fun b!620394 () Bool)

(declare-fun res!399877 () Bool)

(declare-fun e!355824 () Bool)

(assert (=> b!620394 (=> (not res!399877) (not e!355824))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620394 (= res!399877 (validKeyInArray!0 (select (arr!18034 a!2986) j!136)))))

(declare-fun b!620396 () Bool)

(declare-fun res!399872 () Bool)

(assert (=> b!620396 (=> (not res!399872) (not e!355824))))

(declare-fun arrayContainsKey!0 (array!37583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620396 (= res!399872 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620397 () Bool)

(declare-fun e!355832 () Bool)

(assert (=> b!620397 (= e!355827 e!355832)))

(declare-fun res!399869 () Bool)

(assert (=> b!620397 (=> (not res!399869) (not e!355832))))

(declare-datatypes ((SeekEntryResult!6481 0))(
  ( (MissingZero!6481 (index!28207 (_ BitVec 32))) (Found!6481 (index!28208 (_ BitVec 32))) (Intermediate!6481 (undefined!7293 Bool) (index!28209 (_ BitVec 32)) (x!57010 (_ BitVec 32))) (Undefined!6481) (MissingVacant!6481 (index!28210 (_ BitVec 32))) )
))
(declare-fun lt!286833 () SeekEntryResult!6481)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!620397 (= res!399869 (and (= lt!286833 (Found!6481 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18034 a!2986) index!984) (select (arr!18034 a!2986) j!136))) (not (= (select (arr!18034 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37583 (_ BitVec 32)) SeekEntryResult!6481)

(assert (=> b!620397 (= lt!286833 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18034 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620398 () Bool)

(declare-fun e!355833 () Unit!20630)

(declare-fun Unit!20633 () Unit!20630)

(assert (=> b!620398 (= e!355833 Unit!20633)))

(declare-fun b!620399 () Bool)

(assert (=> b!620399 (= e!355824 e!355829)))

(declare-fun res!399882 () Bool)

(assert (=> b!620399 (=> (not res!399882) (not e!355829))))

(declare-fun lt!286823 () SeekEntryResult!6481)

(assert (=> b!620399 (= res!399882 (or (= lt!286823 (MissingZero!6481 i!1108)) (= lt!286823 (MissingVacant!6481 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37583 (_ BitVec 32)) SeekEntryResult!6481)

(assert (=> b!620399 (= lt!286823 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!620400 () Bool)

(declare-fun res!399876 () Bool)

(assert (=> b!620400 (=> (not res!399876) (not e!355824))))

(assert (=> b!620400 (= res!399876 (and (= (size!18398 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18398 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18398 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!620401 () Bool)

(assert (=> b!620401 (= e!355832 (not true))))

(declare-fun lt!286831 () Unit!20630)

(assert (=> b!620401 (= lt!286831 e!355834)))

(declare-fun c!70629 () Bool)

(declare-fun lt!286824 () SeekEntryResult!6481)

(assert (=> b!620401 (= c!70629 (= lt!286824 (Found!6481 index!984)))))

(declare-fun lt!286827 () Unit!20630)

(assert (=> b!620401 (= lt!286827 e!355833)))

(declare-fun c!70628 () Bool)

(assert (=> b!620401 (= c!70628 (= lt!286824 Undefined!6481))))

(declare-fun lt!286828 () (_ BitVec 64))

(assert (=> b!620401 (= lt!286824 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286828 lt!286819 mask!3053))))

(declare-fun e!355830 () Bool)

(assert (=> b!620401 e!355830))

(declare-fun res!399875 () Bool)

(assert (=> b!620401 (=> (not res!399875) (not e!355830))))

(declare-fun lt!286834 () SeekEntryResult!6481)

(declare-fun lt!286835 () (_ BitVec 32))

(assert (=> b!620401 (= res!399875 (= lt!286834 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286835 vacantSpotIndex!68 lt!286828 lt!286819 mask!3053)))))

(assert (=> b!620401 (= lt!286834 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286835 vacantSpotIndex!68 (select (arr!18034 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620401 (= lt!286828 (select (store (arr!18034 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!286836 () Unit!20630)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37583 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20630)

(assert (=> b!620401 (= lt!286836 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286835 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620401 (= lt!286835 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620402 () Bool)

(assert (=> b!620402 false))

(declare-fun lt!286822 () Unit!20630)

(declare-datatypes ((List!12128 0))(
  ( (Nil!12125) (Cons!12124 (h!13169 (_ BitVec 64)) (t!18364 List!12128)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37583 (_ BitVec 64) (_ BitVec 32) List!12128) Unit!20630)

(assert (=> b!620402 (= lt!286822 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286819 (select (arr!18034 a!2986) j!136) index!984 Nil!12125))))

(declare-fun arrayNoDuplicates!0 (array!37583 (_ BitVec 32) List!12128) Bool)

(assert (=> b!620402 (arrayNoDuplicates!0 lt!286819 index!984 Nil!12125)))

(declare-fun lt!286830 () Unit!20630)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37583 (_ BitVec 32) (_ BitVec 32)) Unit!20630)

(assert (=> b!620402 (= lt!286830 (lemmaNoDuplicateFromThenFromBigger!0 lt!286819 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620402 (arrayNoDuplicates!0 lt!286819 #b00000000000000000000000000000000 Nil!12125)))

(declare-fun lt!286817 () Unit!20630)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37583 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12128) Unit!20630)

(assert (=> b!620402 (= lt!286817 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12125))))

(assert (=> b!620402 (arrayContainsKey!0 lt!286819 (select (arr!18034 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286820 () Unit!20630)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37583 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20630)

(assert (=> b!620402 (= lt!286820 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286819 (select (arr!18034 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!355825 () Bool)

(assert (=> b!620402 e!355825))

(declare-fun res!399874 () Bool)

(assert (=> b!620402 (=> (not res!399874) (not e!355825))))

(assert (=> b!620402 (= res!399874 (arrayContainsKey!0 lt!286819 (select (arr!18034 a!2986) j!136) j!136))))

(declare-fun e!355828 () Unit!20630)

(declare-fun Unit!20634 () Unit!20630)

(assert (=> b!620402 (= e!355828 Unit!20634)))

(declare-fun b!620403 () Bool)

(assert (=> b!620403 (= e!355825 (arrayContainsKey!0 lt!286819 (select (arr!18034 a!2986) j!136) index!984))))

(declare-fun b!620404 () Bool)

(declare-fun res!399880 () Bool)

(assert (=> b!620404 (=> (not res!399880) (not e!355829))))

(assert (=> b!620404 (= res!399880 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18034 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620405 () Bool)

(assert (=> b!620405 (= e!355830 (= lt!286833 lt!286834))))

(declare-fun b!620406 () Bool)

(declare-fun res!399881 () Bool)

(assert (=> b!620406 (=> (not res!399881) (not e!355829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37583 (_ BitVec 32)) Bool)

(assert (=> b!620406 (= res!399881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620407 () Bool)

(declare-fun Unit!20635 () Unit!20630)

(assert (=> b!620407 (= e!355834 Unit!20635)))

(declare-fun res!399870 () Bool)

(assert (=> b!620407 (= res!399870 (= (select (store (arr!18034 a!2986) i!1108 k0!1786) index!984) (select (arr!18034 a!2986) j!136)))))

(assert (=> b!620407 (=> (not res!399870) (not e!355826))))

(assert (=> b!620407 e!355826))

(declare-fun c!70631 () Bool)

(assert (=> b!620407 (= c!70631 (bvslt j!136 index!984))))

(declare-fun lt!286829 () Unit!20630)

(declare-fun e!355836 () Unit!20630)

(assert (=> b!620407 (= lt!286829 e!355836)))

(declare-fun c!70630 () Bool)

(assert (=> b!620407 (= c!70630 (bvslt index!984 j!136))))

(declare-fun lt!286821 () Unit!20630)

(assert (=> b!620407 (= lt!286821 e!355828)))

(assert (=> b!620407 false))

(declare-fun b!620408 () Bool)

(declare-fun res!399879 () Bool)

(assert (=> b!620408 (=> (not res!399879) (not e!355829))))

(assert (=> b!620408 (= res!399879 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12125))))

(declare-fun b!620395 () Bool)

(declare-fun Unit!20636 () Unit!20630)

(assert (=> b!620395 (= e!355828 Unit!20636)))

(declare-fun res!399873 () Bool)

(assert (=> start!56150 (=> (not res!399873) (not e!355824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56150 (= res!399873 (validMask!0 mask!3053))))

(assert (=> start!56150 e!355824))

(assert (=> start!56150 true))

(declare-fun array_inv!13808 (array!37583) Bool)

(assert (=> start!56150 (array_inv!13808 a!2986)))

(declare-fun b!620409 () Bool)

(assert (=> b!620409 false))

(declare-fun lt!286826 () Unit!20630)

(assert (=> b!620409 (= lt!286826 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286819 (select (arr!18034 a!2986) j!136) j!136 Nil!12125))))

(assert (=> b!620409 (arrayNoDuplicates!0 lt!286819 j!136 Nil!12125)))

(declare-fun lt!286832 () Unit!20630)

(assert (=> b!620409 (= lt!286832 (lemmaNoDuplicateFromThenFromBigger!0 lt!286819 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620409 (arrayNoDuplicates!0 lt!286819 #b00000000000000000000000000000000 Nil!12125)))

(declare-fun lt!286825 () Unit!20630)

(assert (=> b!620409 (= lt!286825 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12125))))

(assert (=> b!620409 (arrayContainsKey!0 lt!286819 (select (arr!18034 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286818 () Unit!20630)

(assert (=> b!620409 (= lt!286818 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286819 (select (arr!18034 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20637 () Unit!20630)

(assert (=> b!620409 (= e!355836 Unit!20637)))

(declare-fun b!620410 () Bool)

(declare-fun res!399871 () Bool)

(assert (=> b!620410 (=> (not res!399871) (not e!355824))))

(assert (=> b!620410 (= res!399871 (validKeyInArray!0 k0!1786))))

(declare-fun b!620411 () Bool)

(declare-fun Unit!20638 () Unit!20630)

(assert (=> b!620411 (= e!355836 Unit!20638)))

(declare-fun e!355837 () Bool)

(declare-fun b!620412 () Bool)

(assert (=> b!620412 (= e!355837 (arrayContainsKey!0 lt!286819 (select (arr!18034 a!2986) j!136) index!984))))

(declare-fun res!399878 () Bool)

(declare-fun b!620413 () Bool)

(assert (=> b!620413 (= res!399878 (arrayContainsKey!0 lt!286819 (select (arr!18034 a!2986) j!136) j!136))))

(assert (=> b!620413 (=> (not res!399878) (not e!355837))))

(assert (=> b!620413 (= e!355835 e!355837)))

(declare-fun b!620414 () Bool)

(declare-fun Unit!20639 () Unit!20630)

(assert (=> b!620414 (= e!355833 Unit!20639)))

(assert (=> b!620414 false))

(assert (= (and start!56150 res!399873) b!620400))

(assert (= (and b!620400 res!399876) b!620394))

(assert (= (and b!620394 res!399877) b!620410))

(assert (= (and b!620410 res!399871) b!620396))

(assert (= (and b!620396 res!399872) b!620399))

(assert (= (and b!620399 res!399882) b!620406))

(assert (= (and b!620406 res!399881) b!620408))

(assert (= (and b!620408 res!399879) b!620404))

(assert (= (and b!620404 res!399880) b!620392))

(assert (= (and b!620392 res!399883) b!620397))

(assert (= (and b!620397 res!399869) b!620401))

(assert (= (and b!620401 res!399875) b!620405))

(assert (= (and b!620401 c!70628) b!620414))

(assert (= (and b!620401 (not c!70628)) b!620398))

(assert (= (and b!620401 c!70629) b!620407))

(assert (= (and b!620401 (not c!70629)) b!620393))

(assert (= (and b!620407 res!399870) b!620391))

(assert (= (and b!620391 (not res!399884)) b!620413))

(assert (= (and b!620413 res!399878) b!620412))

(assert (= (and b!620407 c!70631) b!620409))

(assert (= (and b!620407 (not c!70631)) b!620411))

(assert (= (and b!620407 c!70630) b!620402))

(assert (= (and b!620407 (not c!70630)) b!620395))

(assert (= (and b!620402 res!399874) b!620403))

(declare-fun m!596359 () Bool)

(assert (=> b!620392 m!596359))

(declare-fun m!596361 () Bool)

(assert (=> b!620392 m!596361))

(declare-fun m!596363 () Bool)

(assert (=> b!620401 m!596363))

(declare-fun m!596365 () Bool)

(assert (=> b!620401 m!596365))

(declare-fun m!596367 () Bool)

(assert (=> b!620401 m!596367))

(assert (=> b!620401 m!596359))

(declare-fun m!596369 () Bool)

(assert (=> b!620401 m!596369))

(declare-fun m!596371 () Bool)

(assert (=> b!620401 m!596371))

(assert (=> b!620401 m!596367))

(declare-fun m!596373 () Bool)

(assert (=> b!620401 m!596373))

(declare-fun m!596375 () Bool)

(assert (=> b!620401 m!596375))

(assert (=> b!620413 m!596367))

(assert (=> b!620413 m!596367))

(declare-fun m!596377 () Bool)

(assert (=> b!620413 m!596377))

(declare-fun m!596379 () Bool)

(assert (=> b!620406 m!596379))

(declare-fun m!596381 () Bool)

(assert (=> b!620396 m!596381))

(assert (=> b!620403 m!596367))

(assert (=> b!620403 m!596367))

(declare-fun m!596383 () Bool)

(assert (=> b!620403 m!596383))

(declare-fun m!596385 () Bool)

(assert (=> start!56150 m!596385))

(declare-fun m!596387 () Bool)

(assert (=> start!56150 m!596387))

(declare-fun m!596389 () Bool)

(assert (=> b!620399 m!596389))

(assert (=> b!620412 m!596367))

(assert (=> b!620412 m!596367))

(assert (=> b!620412 m!596383))

(declare-fun m!596391 () Bool)

(assert (=> b!620408 m!596391))

(declare-fun m!596393 () Bool)

(assert (=> b!620402 m!596393))

(assert (=> b!620402 m!596367))

(declare-fun m!596395 () Bool)

(assert (=> b!620402 m!596395))

(assert (=> b!620402 m!596367))

(declare-fun m!596397 () Bool)

(assert (=> b!620402 m!596397))

(declare-fun m!596399 () Bool)

(assert (=> b!620402 m!596399))

(assert (=> b!620402 m!596367))

(assert (=> b!620402 m!596377))

(declare-fun m!596401 () Bool)

(assert (=> b!620402 m!596401))

(assert (=> b!620402 m!596367))

(declare-fun m!596403 () Bool)

(assert (=> b!620402 m!596403))

(assert (=> b!620402 m!596367))

(declare-fun m!596405 () Bool)

(assert (=> b!620402 m!596405))

(declare-fun m!596407 () Bool)

(assert (=> b!620397 m!596407))

(assert (=> b!620397 m!596367))

(assert (=> b!620397 m!596367))

(declare-fun m!596409 () Bool)

(assert (=> b!620397 m!596409))

(assert (=> b!620409 m!596367))

(declare-fun m!596411 () Bool)

(assert (=> b!620409 m!596411))

(assert (=> b!620409 m!596399))

(declare-fun m!596413 () Bool)

(assert (=> b!620409 m!596413))

(assert (=> b!620409 m!596401))

(assert (=> b!620409 m!596367))

(assert (=> b!620409 m!596367))

(declare-fun m!596415 () Bool)

(assert (=> b!620409 m!596415))

(assert (=> b!620409 m!596367))

(declare-fun m!596417 () Bool)

(assert (=> b!620409 m!596417))

(declare-fun m!596419 () Bool)

(assert (=> b!620409 m!596419))

(declare-fun m!596421 () Bool)

(assert (=> b!620410 m!596421))

(assert (=> b!620407 m!596359))

(declare-fun m!596423 () Bool)

(assert (=> b!620407 m!596423))

(assert (=> b!620407 m!596367))

(assert (=> b!620394 m!596367))

(assert (=> b!620394 m!596367))

(declare-fun m!596425 () Bool)

(assert (=> b!620394 m!596425))

(declare-fun m!596427 () Bool)

(assert (=> b!620404 m!596427))

(check-sat (not b!620409) (not b!620406) (not b!620401) (not b!620413) (not b!620408) (not b!620399) (not b!620397) (not b!620403) (not b!620396) (not b!620410) (not start!56150) (not b!620402) (not b!620412) (not b!620394))
(check-sat)
